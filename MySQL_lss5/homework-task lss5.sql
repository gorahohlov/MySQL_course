USE shop;

-- "Операторы, фильтрация, сортировка и ограничение"
-- 1.
UPDATE users SET created_at=null, updated_at=null;

SELECT created_at, updated_at FROM users;

UPDATE users SET created_at = now(), updated_at = now();

SELECT * FROM users;

-- 2.
ALTER TABLE users ADD COLUMN cr_at VARCHAR(255) AFTER updated_at, ADD COLUMN upd_at VARCHAR(255) AFTER cr_at, ALGORITHM=instant; 

-- SELECT DATE_FORMAT(cr_at, '%Y-%m-%d %h:%m') FROM users;

UPDATE users SET cr_at='20.10.2017 8:52', upd_at='20/11/2018 9:52';

INSERT INTO users (name, cr_at, upd_at) VALUES ('Вася', '1.11.2011 1:52', '4/6/2020 12:31'), ('Вася', '6.1.2011 3:52', '9/6/2020 3:31');

SELECT str_to_date(cr_at, '%e.%c.%Y %H:%i') cr1_at, cr_at FROM users;

ALTER TABLE users ADD COLUMN cr2 DATETIME AFTER upd_at, ADD COLUMN up2 DATETIME AFTER cr2, ALGORITHM=instant;

UPDATE users SET cr2=str_to_date(cr_at, '%e.%c.%Y %H:%i'), up2=str_to_date(upd_at, '%e/%c/%Y %H:%i'); 

ALTER TABLE users RENAME COLUMN cr2 TO create_at2, RENAME COLUMN up2 TO updated_at2;

ALTER TABLE users DROP COLUMN created_at, DROP COLUMN updated_at;

SELECT * FROM users;

-- 3.
SELECT * FROM storehouse_products;


INSERT INTO storehouse_products (id, value, created_at, updated_at) VALUES 
	(1, 0, now(), now()),
	(2, 2500, now(), now()),
	(3, 0, now(), now()),
	(4, 30, now(), now()),
	(5, 500, now(), now() ),
	(6, 1, now(), now());

SELECT value, if(value=0,1,0) AS if_value FROM storehouse_products ORDER BY if_value, value;

SELECT * FROM storehouse_products 
ORDER BY CASE WHEN value=0 THEN 1 ELSE 0 END, value;


-- 4.

SELECT *, date_format(birthday_at,'%M') MNTH, date_format(birthday_at, '%d/%m/%Y') DATE 
	FROM users 
	WHERE date_format(birthday_at,'%M') IN ('October', 'May');

-- 5.

SELECT * FROM catalogs;
UPDATE catalogs SET id = 5 WHERE name = 'Звуковые карты';

SELECT *, IF(id=5,0,id) flg FROM catalogs WHERE id IN (5,1,2) ORDER BY flg;
SELECT * FROM catalogs WHERE id IN (5,1,2) ORDER BY IF(id=5,0,id);
SELECT * FROM catalogs WHERE id IN (5,1,2) ORDER BY field(id, 5,1,2);

-- Практическое задание к теме "Агрегация данных"

-- 1. Посчитать средний возраст. 

SELECT 	name, birthday_at, 
		IF(DATE_FORMAT(birthday_at, '%j')-DATE_FORMAT(now(),'%j')>0, YEAR(NOW())-YEAR(birthday_at)-1, YEAR(NOW())-YEAR(birthday_at)) AGE 
FROM users;

SELECT name, birthday_at, TIMESTAMPDIFF(YEAR, birthday_at, now()) AGE FROM users;

SELECT 
	round(avg(IF(DATE_FORMAT(birthday_at, '%j')-DATE_FORMAT(now(),'%j')>0,
	(YEAR(now()) - YEAR(birthday_at))-1,
	(YEAR(now()) - YEAR(birthday_at)))),0) 'средний возраст'
	--	DATE_FORMAT(birthday_at, '%j')-DATE_FORMAT(now(),'%j')>0 flg -- было в текущем году уже день рождения или нет, полных или неполных лет.  
FROM users;

-- 2 Количество дней рождения <...> по дням недели...
SELECT * FROM users;

DELETE FROM users WHERE birthday_at IS NULL;

SELECT 
-- DATE_FORMAT(str_to_date(CONCAT(YEAR(NOW()),'-',MONTH(birthday_at),'-',DAY(birthday_at)), '%Y-%m-%d'), '%a') bir_wd, COUNT(*),
/*
	CASE 
		WHEN DATE_FORMAT(str_to_date(CONCAT(YEAR(NOW()),'-',MONTH(birthday_at),'-',DAY(birthday_at)), '%Y-%m-%d'), '%a') = 'Mon' THEN 1
		WHEN DATE_FORMAT(str_to_date(CONCAT(YEAR(NOW()),'-',MONTH(birthday_at),'-',DAY(birthday_at)), '%Y-%m-%d'), '%a') = 'Tue' THEN 2
		WHEN DATE_FORMAT(str_to_date(CONCAT(YEAR(NOW()),'-',MONTH(birthday_at),'-',DAY(birthday_at)), '%Y-%m-%d'), '%a') = 'Wed' THEN 3
		WHEN DATE_FORMAT(str_to_date(CONCAT(YEAR(NOW()),'-',MONTH(birthday_at),'-',DAY(birthday_at)), '%Y-%m-%d'), '%a') = 'Thu' THEN 4
		WHEN DATE_FORMAT(str_to_date(CONCAT(YEAR(NOW()),'-',MONTH(birthday_at),'-',DAY(birthday_at)), '%Y-%m-%d'), '%a') = 'Fri' THEN 5 
		WHEN DATE_FORMAT(str_to_date(CONCAT(YEAR(NOW()),'-',MONTH(birthday_at),'-',DAY(birthday_at)), '%Y-%m-%d'), '%a') = 'Sat' THEN 6
		WHEN DATE_FORMAT(str_to_date(CONCAT(YEAR(NOW()),'-',MONTH(birthday_at),'-',DAY(birthday_at)), '%Y-%m-%d'), '%a') = 'Sun' THEN 7
	END AS week_days,
*/ -- не получилось сортировать агрегированные записи по возрастанию дней недели /выдаёт ошибку/
	DATE_FORMAT(str_to_date(CONCAT(YEAR(NOW()),'-',MONTH(birthday_at),'-',DAY(birthday_at)), '%Y-%m-%d'), '%a') bir_wd, COUNT(*)
	FROM users 
GROUP BY bir_wd WITH ROLLUP
;

-- 3. Произведение чисел в столбце.

CREATE TABLE multi_p
	(value TINYINT comment 'Значение') comment='Произведение';
INSERT INTO multi_p VALUES (1), (2), (3), (4), (5);
INSERT INTO multi_p VALUES (1), (2), (3), (4), (5);
DELETE FROM multi_p LIMIT 5;
SELECT POW(10, Sum(LOG(10,value))) summ1 FROM multi_p;
