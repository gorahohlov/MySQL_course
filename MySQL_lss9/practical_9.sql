-- Практическое задание по теме “Транзакции, переменные, представления”

-- 1.	В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.


-- СЛУЧАЙНО УДАЛИЛ shop.users пришлось сгенерировать и перезалить записи.

INSERT INTO shop.users (name, birthday_at, created_at, updated_at)
SELECT 	
	(SELECT CONCAT_WS(' ', last_name, first_name) FROM vk.profiles ORDER BY rand() LIMIT 1),
	(SELECT FROM_UNIXTIME(ROUND((RAND() * (UNIX_TIMESTAMP('1970-01-01')-UNIX_TIMESTAMP('2000-12-31')))+UNIX_TIMESTAMP('2000-12-31')))),
	(SELECT FROM_UNIXTIME(ROUND((RAND() * (UNIX_TIMESTAMP('2018-01-01')-UNIX_TIMESTAMP('2019-12-31')))+UNIX_TIMESTAMP('2019-12-31')))),
	(SELECT FROM_UNIXTIME(ROUND((RAND() * (UNIX_TIMESTAMP('2020-01-01')-UNIX_TIMESTAMP('2020-12-31')))+UNIX_TIMESTAMP('2020-12-31'))))
FROM shop.users LIMIT 20;

INSERT INTO
  shop.users (name, birthday_at)
VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '2006-08-29'),
  ('Дмитрий', '1985-12-29'),
  ('Елена', '1990-12-30')
  ;


CREATE TABLE users LIKE shop.users;

START TRANSACTION;
INSERT INTO example.users 
	SELECT * FROM shop.users WHERE id=1;
DELETE FROM shop.users WHERE id=1;
COMMIT;

SELECT * FROM example.users;
SELECT * FROM shop.users ORDER BY id;


/*
CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY comment 'Идентификатор пользователя',
	name VARCHAR(255) DEFAULT NULL comment 'Имя пользователя',
	birthday_at DATE DEFAULT NULL comment 'День рождения пользователя',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP comment 'дата создания записи',
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment 'Дата изменения записи'
	) comment 'Таблица пользователей';
*/

-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.

USE shop;
SELECT * FROM products;
SELECT * FROM catalogs;

CREATE OR REPLACE VIEW prod_cat AS 
	SELECT products.name AS prod_name, catalogs.name AS cat_name 
	FROM products 
	JOIN catalogs ON catalogs.id = products.catalog_id;

SELECT * FROM prod_cat;




/*
3.	(по желанию) Пусть имеется таблица с календарным полем created_at. 
В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и '2018-08-17'. 
Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, 
если дата присутствует в исходном таблице и 0, если она отсутствует.
*/

USE example;
CREATE TABLE tbl1 (
	created_at datetime DEFAULT NULL);
INSERT INTO tbl1 (created_at) VALUES ('2018-08-01'), ('2016-08-04'), ('2018-08-16'), ('2018-08-17');
SELECT date(created_at) FROM tbl1;

SET @vr1='2018-07-31';
SELECT @vr1;
SELECT @vr1 := @vr1 + INTERVAL 1 DAY AS dte, created_at FROM tbl1;

DROP TEMPORARY TABLE IF EXISTS tmp1;
CREATE TEMPORARY TABLE IF NOT EXISTS tmp1 (dte datetime, crtd_at INT);
SELECT date(dte) AS Aug_days, crtd_at AS date_flg FROM tmp1;

DROP PROCEDURE IF EXISTS fill_tmp1//
CREATE PROCEDURE fill_tmp1()
BEGIN
DECLARE dt DATETIME DEFAULT '2018-08-01';
WHILE dt < '2018-09-01' DO
INSERT INTO tmp1 (dte, crtd_at) VALUES (dt, IF((SELECT created_at FROM tbl1 WHERE created_at=dt) IS NULL, 0,1));
SET dt := (dt + INTERVAL 1 DAY);
END WHILE;
SELECT date(dte) AS Aug_days, crtd_at AS date_flg FROM tmp1;
END//



DROP TEMPORARY TABLE IF EXISTS tmp1;
CREATE TEMPORARY TABLE IF NOT EXISTS tmp1 (dte datetime, crtd_at INT);
SELECT date(dte) AS Aug_days, crtd_at AS date_flg FROM tmp1;
SELECT date(created_at) FROM tbl1 ORDER BY created_at;


SELECT R.dt AS Aug_days, IF(tbl1.created_at IS NOT NULL, 1, 0) as flg 
FROM (
WITH RECURSIVE rcrs (n) AS 
		(SELECT 1
		UNION ALL
		SELECT n+1 FROM rcrs WHERE n<31
		) 
	SELECT DATE(DATE('2018-07-31')+ INTERVAL n DAY) AS dt
	FROM rcrs
	) AS R 
	LEFT JOIN tbl1 ON date(tbl1.created_at)=date(R.dt)
	;

WITH RECURSIVE dts AS 
		(SELECT '2018-08-01' AS d
		UNION ALL
		SELECT d + INTERVAL 1 DAY FROM dts WHERE d < '2018-08-31'
		)
		SELECT * FROM dts;




/*
Видимо внутри тела процедуры нельзя выполнять команды CREATE, DROP TABLE, 
					если вставляю инструкции DROP TEMPORARY TABLE, CREATE TEMPORARY TABLE в тело процедуры конструкция не работает!!!
консольный клиент почему-то придирался к двум табам (tab) если они идут подряд.
и почему-то после создания (объявления) временной таблицы - она не отображается с помощью SHOW TABLES
*/





-- 4.	(по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

INSERT INTO tbl1 (created_at)
SELECT 
	(SELECT FROM_UNIXTIME(ROUND((RAND() * (UNIX_TIMESTAMP('1970-01-01')-UNIX_TIMESTAMP('2020-12-31')))+UNIX_TIMESTAMP('2020-12-31'))))
FROM shop.users LIMIT 60;

SELECT date(created_at) FROM tbl1 ORDER BY created_at DESC LIMIT 4, 1;
SELECT date(created_at) FROM tbl1 ORDER BY created_at DESC;

DELETE tbl1 FROM tbl1 
	JOIN 
		(SELECT date(created_at) AS cr_at FROM tbl1 ORDER BY created_at DESC LIMIT 4, 1) AS sl 
	ON tbl1.created_at < sl.cr_at;

WITH sl AS (SELECT date(created_at) AS cr_at FROM tbl1 ORDER BY created_at DESC LIMIT 4, 1)
DELETE tbl1 FROM tbl1 JOIN sl ON tbl1.created_at < sl.cr_at;





 -- 1) с использованием динамического запроса.
PREPARE dlt FROM 'DELETE FROM tbl1 WHERE created_at < ?';
SET @prm1 = (SELECT date(created_at) FROM tbl1 ORDER BY created_at DESC LIMIT 4, 1);
SELECT @prm1;
EXECUTE dlt USING @prm1;

-- EXECUTE dlt USING (SELECT date(created_at) FROM tbl1 ORDER BY created_at DESC LIMIT 4, 1) AS prm2;

-- 2) с использование переменных
SET @prm1 = (SELECT date(created_at) FROM tbl1 ORDER BY created_at DESC LIMIT 4, 1);
SELECT @prm1;
DELETE FROM tbl1 WHERE created_at < @prm1;


-- .Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- 1.	Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 06:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", 
-- с 00:00 до 06:00 — "Доброй ночи".

DROP FUNCTION IF EXISTS hello//

-- в DBeaver выдает ошибку, проверил через консольный клиент - работает корректно;
CREATE FUNCTION hello() 
RETURNS CHAR(12) NO SQL
BEGIN 
	DECLARE strng CHAR(12); 
	CASE 
		WHEN TIME(NOW())>='00:00' AND TIME(NOW())<'06:00' THEN 
		SET strng = 'GOOD NIGHT'; 
		WHEN TIME(NOW())>='06:00' AND TIME(NOW())<'12:00' THEN 
		SET strng = 'Good morning'; 
		WHEN TIME(NOW())>='12:00' AND TIME(NOW())<'18:00' THEN 
		SET strng = 'Good day'; 
		WHEN TIME(NOW())>='18:00' AND TIME(NOW())<'24:00' THEN 
		SET strng = 'Good evening'; 
		ELSE 
		SET strng = 'Passed parameter error'; 
	END CASE; 
	RETURN strng; 
END//

SHOW FUNCTION status LIKE "hello%";
-- функция hello() присутствует в базе данных shop;
SELECT hello();
-- работает корректно;

/* 2.	В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
При попытке присвоить полям NULL-значение необходимо отменить операцию.*/

CREATE TRIGGER trig1 BEFORE UPDATE ON products
FOR EACH ROW BEGIN
	IF NEW.name IS NULL AND NEW.description IS NULL THEN 
		SIGNAL SQLSTATE '45000' SET message_text ='Недопустима вставка двух NULL значений в поля name и description. 
												присвойте значение отличное от NULL хотя бы одному из них';
	END IF;
END//

UPDATE products SET name = NULL, description = NULL;


CREATE TRIGGER trig2 BEFORE INSERT ON products
FOR EACH ROW BEGIN
	IF NEW.name IS NULL AND NEW.description IS NULL THEN 
		SIGNAL SQLSTATE '45000' SET message_text ='Недопустима вставка двух NULL значений в поля name и description. 
												присвойте значение отличное от NULL хотя бы одному из них';
	END IF;
END//

INSERT INTO products (name, description) VALUES (NULL, NULL);

-- вуаля оба триггера работают.


-- 3.	(по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 


-- через рекурентное соотношение.
CREATE FUNCTION FIBONACCI(arg1 BIGINT)
RETURNS int DETERMINISTIC
BEGIN
	DECLARE i,s0,s2 INT DEFAULT 0;
	DECLARE s1 INT DEFAULT 1;
	CASE
	WHEN arg1 = 0 THEN SET s2 = 0;
	WHEN arg1 = 1 THEN SET s2 = 1;
	WHEN arg1 > 1 THEN
	SET i=1;
	cycle1: WHILE i < arg1 DO
		SET i=i+1;
		SET s2=s0+s1;
		SET s0=s1;
		SET s1=s2;
	END WHILE cycle1;
	ELSE SET s2 = 'Ошибка в переданном аргументе функции';
	END CASE;
	RETURN s2;
END//

-- работает!
SELECT FIBONACCI(10);
SELECT FIBONACCI(-1);

-- и аналитически (с помощью формулы Бине)
DROP FUNCTION IF EXISTS FIBONACCI2;
CREATE FUNCTION FIBONACCI2(arg2 BIGINT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE F INT DEFAULT 0;
		SET F = POW(((1+SQRT(5))/2),arg2)/SQRT(5)-POW(((1-SQRT(5)))/2,arg2)/sQRT(5);
	RETURN F;
END//

SELECT FIBONACCI2(4);
