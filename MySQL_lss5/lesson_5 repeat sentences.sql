USE shop;
SHOW TABLES FROM  shop;
SELECT * FROM catalogs;
SELECT * FROM catalogs WHERE id NOT IN (3, 13);
SELECT IF(2 NOT IN (0, NULL, 5, 'wefwf'), 'TRUE', 'FALSE');
SELECT * FROM catalogs WHERE name = 'программ';
SELECT * FROM catalogs;
SELECT 'Программирование' LIKE 'П%е', 'Печенье' LIKE 'П%е';
SELECT 'Программирование' LIKE '%ние', 'Кодирование' LIKE '%ние';
SELECT 'код' LIKE '___', 'рот' LIKE '___', 'абв' LIKE '___';
SELECT '15 %' LIKE '15 \%', 'my_sql' LIKE 'my\_sql';
SELECT '15' LIKE '15 \%', 'my sql' LIKE 'my\_sql';
INSERT INTO catalogs VALUES
	(NULL, 'Процессоры'), (NULL, 'Материнские платы'), (NULL, 'Видеокарты'),
	(NULL, 'Жесткие диски'), (NULL, 'Оперативная память');
SELECT * FROM catalogs;
SELECT * FROM catalogs WHERE name NOT LIKE '%ы';

INSERT INTO catalogs (name) VALUES ('Звуковая карта');

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29'),
  ('Влад', '1977-11-28');
 SELECT * FROM users;
 
SELECT * FROM users WHERE birthday_at BETWEEN '1990-01-01' AND '2000-01-01';
SELECT * FROM users WHERE birthday_at LIKE '198%';

SELECT 'программирование' RLIKE 'вание$';

SELECT 'грампластинка - это вам не программирование' RLIKE '^грампластинка$';
SELECT 'xyz' RLIKE '[abxc]' AS a;
SELECT 's' RLIKE '[а-яё]' AS a;
SELECT '1sdfjlksjf1' RLIKE '[[:digit:]]+$';

SELECT '123.10' RLIKE '^[[:digit:]]*\\.[[:digit:]]{1}$';

SELECT * FROM catalogs ORDER BY name DESC;

SELECT * FROM products;
INSERT INTO products (name, description, price, catalog_id) VALUES
	('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
	('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

SELECT * FROM products ORDER BY catalog_id DESC, id asc, price;

UPDATE products SET price=price*.9 WHERE description LIKE 'Материнская%' AND price > 5000;

SELECT DISTINCT catalog_id FROM products;

SELECT * FROM products;

SELECT Now();

INSERT INTO users VALUES ('Вася', '1986-06-20', NOW(), NOW());

SELECT * FROM users;

ALTER TABLE users MODIFY COLUMN name varchar(255) NULL COMMENT 'Наименование пользователя';
ALTER TABLE users DROP PRIMARY KEY MODIFY COLUMN name varchar(255) NULL 'Имя покупателя';
ALTER TABLE users DROP PRIMARY KEY;
ALTER TABLE users ADD PRIMARY KEY (id);

SHOW COLUMNS FROM users;

SHOW TABLE users;

SELECT id, name, DATE(created_at), DAY (birthday_at) 'День рождения' FROM users;
SELECT DATE_FORMAT(now(), 'Сегодня: %M %D, %Y'); 

SELECT unix_timestamp('2021-03-21 20:55:57') AS timestamp,
from_unixtime(1616000000) AS datetime;

SELECT name, TIMESTAMPDIFF(YEAR, birthday_at, now()) AS age FROM users;

SELECT timestampdiff(second, '1977-11-29 04:35:00', now());

SELECT unix_timestamp(now())-unix_timestamp('1977-11-29 04:35:00');

SELECT rand();

SELECT * FROM catalogs ORDER BY id DESC;

INSERT INTO catalogs VALUES (NULL, 'Процессоры');
INSERT INTO products (name, description, price, CATALOG_ID)
VALUES
  ('Intel Core i3-8100', 'Процессор Intel.', 7890.00, LAST_INSERT_ID()),
  ('Intel Core i5-7400', 'Процессор Intel.', 12700.00, LAST_INSERT_ID()),
  ('AMD FX-8320E', 'Процессор AMD.', 4780.00, LAST_INSERT_ID()),
  ('AMD FX-8320', 'Процессор AMD.', 7120.00, LAST_INSERT_ID());

SELECT * FROM products ORDER BY id DESC;

INSERT INTO catalogs VALUES (NULL, 'Материнские платы');

INSERT INTO products (name, description, price, catalog_id) VALUES
	('ASUS ROG MAXIMUS X HERO', 'Z370, Socket 1151-V2, DDR4, ATX', 19310.00, LAST_INSERT_ID()),
  ('Gigabyte H310M S2H', 'H310, Socket 1151-V2, DDR4, mATX', 4790.00, LAST_INSERT_ID()),
  ('MSI B250M GAMING PRO', 'B250, Socket 1151, DDR4, mATX', 5060.00, LAST_INSERT_ID());

 SELECT LAST_INSERT_ID() 

SELECT DATABASE ();
SELECT user();

DROP TABLE IF EXISTS distances;
CREATE TABLE distances (
  id SERIAL PRIMARY KEY,
  x1 INT NOT NULL,
  y1 INT NOT NULL,
  x2 INT NOT NULL,
  y2 INT NOT NULL,
  distance DOUBLE AS (SQRT(POW(x1 - x2, 2) + POW(y1 - y2, 2)))
) COMMENT = 'Расстояние между двумя точками';

SELECT * FROM distances;

INSERT INTO distances 
 (x1, y1, x2, y2) VALUES
 (1, 1, 4, 5),
 (4, -1, 3, 2),
 (-2, 5, 1, 3);

ALTER TABLE distances DROP PRIMARY KEY;

ALTER TABLE distances ADD PRIMARY KEY (id);

Describe distances;

DROP TABLE IF EXISTS distances;

CREATE TABLE distances (
	id serial PRIMARY KEY,
	a json NOT NULL,
	b json NOT NULL,
	distance double AS (SQRT (POW (a->>'$.x'-b->>'$.x',2)+POW(a->>'$.y'-b->>'$.y',2)))
	) comment = 'Расстояние между двумя точками';

INSERT INTO distances
	(a,b) VALUES 
	('{"x":1,"y":1}', '{"x":4,"y":5}'),
	('{"x":4, "y":-1}', '{"x":3,"y":2}'),
	('{"x":-2, "y":5}', '{"x":1, "y":3}');
SELECT * FROM distances;


SELECT round(2.4), round(2.5), round(2.7);

SELECT round(1.034090,0);

SELECT ceiling(2.9), floor(2.9);

SELECT INET_ATON('192.168.0.107');

SELECT UUID();

SELECT id % 3 AS id_3 FROM products GROUP BY id_3 ORDER BY id_3 DESC;

SELECT count(*), SUBSTRING(birthday_at,1,3) AS decade FROM users GROUP BY decade ORDER BY decade ASC;

SELECT GROUP_CONCAT(name SEPARATOR '/'), substring(birthday_at,1,3) AS decade
FROM users GROUP BY decade;

SELECT group_concat(name ORDER BY name DESC SEPARATOR '/'), substring(birthday_at,1,3) AS decade 
FROM users GROUP BY decade;

SELECT catalog_id FROM products;
SELECT count(*) as total, catalog_id FROM products GROUP BY catalog_id;

DROP TABLE IF EXISTS tbl;

CREATE TABLE tbl (
  id INT NOT NULL,
  value INT DEFAULT NULL);
 
INSERT INTO tbl VALUES (1, 230);
INSERT INTO tbl VALUES (2, NULL);
INSERT INTO tbl VALUES (3, 405);
INSERT INTO tbl VALUES (4, NULL);

SELECT count(id), count(value) FROM tbl;
SELECT count(*) FROM tbl;

SELECT id, catalog_id FROM products;

SELECT count(DISTINCT id) AS ttl_ids, count(DISTINCT catalog_id) AS ttl_ctlg_ids FROM products;

SELECT id, min(price), max(price) FROM products GROUP BY id;

SELECT avg(price) FROM products;
SELECT catalog_id, round(sum(price),0) FROM products GROUP BY catalog_id; 
SELECT sum(price) FROM products;

SELECT
  COUNT(*) AS total,
  SUBSTRING(birthday_at, 1, 3) AS decade
FROM
  users
GROUP BY decade HAVING total>=2;

TRUNCATE products;

INSERT INTO products (name, description, price, catalog_id) VALUES
('Intel Core i3-8100', 'Процессор Intel', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор Intel', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор AMD', 4780.00, 1),
  ('AMD FX-8320', 'Процессор AMD', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'B250, Socket 1151, DDR4, mATX', 5060.00, 2);
SELECT id, name, catalog_id FROM products;

SELECT name, description, price, catalog_id FROM products GROUP BY name, description, price, catalog_id;

CREATE TABLE products_new (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products_new 
SELECT NULL, name, description, price, catalog_id, Now(), Now() FROM products GROUP BY name, description, price, catalog_id;

SELECT id, name, catalog_id FROM products_new;

DROP TABLE products;

ALTER TABLE products_new RENAME products;

SHOW tables;

SELECT id, name, catalog_id FROM products;

SELECT name, birthday_at FROM users ORDER BY birthday_at;
SELECT * FROM users;

INSERT INTO users (name, birthday_at) VALUES
	('Светлана', '1988-02-04'),
  	('Олег', '1998-03-20'),
  	('Юлия', '2006-07-12');

SELECT Year(birthday_at) year_b FROM users GROUP BY year_b ORDER BY year_b DESC;
SELECT YEAR(birthday_at) AS birth FROM users GROUP BY birth ORDER BY birth;
SELECT any_value(name), YEAR(birthday_at) AS birth FROM users GROUP BY birth ORDER BY birth;
SELECT IF(GROUPING(substring(birthday_at, 1,3)),'Total',substring(birthday_at, 1,3)), substring(birthday_at, 1,3) AS decade, count(*) FROM users GROUP BY decade WITH ROLLUP; 
SELECT GROUPING(substring(birthday_at, 1,3)), substring(birthday_at, 1,3)) AS decade, count(*) FROM users GROUP BY decade WITH ROLLUP;
SELECT substring(birthday_at, 1,3) AS decade, GROUPING(decade), count(*) FROM users GROUP BY decade WITH ROLLUP;

SELECT IF(GROUPING(Year(birthday_at)), 'Всего', Year(birthday_at)) AS Yr_b, Year(birthday_at) Year_b,
count(*) FROM users GROUP BY Year_b WITH ROLLUP ORDER BY Year_b DESC;
SELECT GROUPING(Year(birthday_at)) Yr_b, Year(birthday_at) Year_b,
count(*) FROM users GROUP BY Year_b WITH ROLLUP;
