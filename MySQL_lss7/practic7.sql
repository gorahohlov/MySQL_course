USE shop;

SELECT * FROM users;

-- добавил 12 записей заказов, чтобы первый user Геннадий не делал ни одного заказа;
INSERT INTO orders (user_id) VALUES
	(round((rand()*5+1),0));
 
-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT (SELECT name FROM users WHERE id=orders.user_id) AS usr_name FROM orders;

-- ВЛОЖЕННЫЕ ЗАПРОСЫ
-- Список пользователей не сдалавших ни одного заказа /Геннадий/
SELECT name, birthday_at, (SELECT count(*) FROM orders WHERE user_id=users.id) AS cnt FROM users 
WHERE (SELECT count(*) FROM orders WHERE user_id=users.id)=0;

-- Список пользователей сделавшие хотя бы один заказ /cnt - количество сделанных заказов/
SELECT name, birthday_at, (SELECT count(*) FROM orders WHERE user_id=users.id) AS cnt FROM users 
WHERE (SELECT count(*) FROM orders WHERE user_id=users.id)>0;


-- JOIN-СОЕДИНЕНИЯ
-- Список пользователей сделавшие хотя бы один заказ
SELECT * FROM users u RIGHT JOIN orders o ON u.id = o.user_id ORDER BY u.id;
SELECT * FROM users u LEFT JOIN orders o ON u.id = o.user_id WHERE o.id IS NOT NULL;
SELECT u.id, u.name, u.birthday_at, count(o.id) FROM users u RIGHT JOIN orders o ON u.id = o.user_id GROUP BY u.id, u.name, u.birthday_at ORDER BY u.id;


-- Список пользователей не сделавших ни одного заказа
SELECT * FROM users u LEFT JOIN orders o ON u.id = o.user_id WHERE o.id IS NULL;

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT *, (SELECT name FROM catalogs WHERE id=products.catalog_id) AS ctlg FROM products;

SELECT * FROM products pr LEFT JOIN catalogs ct ON pr.catalog_id=ct.id;

-- 3. (по желанию)

CREATE TABLE flights (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY comment 'идентификатор рейса',
	from_ char(40) comment 'вылет из',
	to_ char(40) comment 'вылет куда') Comment = 'таблица рейсов';
	
SELECT * FROM flights;

INSERT INTO flights (from_, to_) VALUES 
	('moscow', 'omsk'),
	('novgorod', 'kazan'),
	('irkutsk', 'moscow'),
	('omsk', 'irkutsk'),
	('moscow', 'kazan');
	
CREATE TABLE cities (
	label char(40) comment 'eng_name',
	name char(40) comment 'rus_name');
	
SELECT * FROM cities;

INSERT INTO cities (label, name) VALUES 
	('moscow', 'Москва'),
	('irkutsk', 'Иркутск'),
	('novgorod', 'Новгород'),
	('kazan', 'Казань'),
	('omsk', 'Омск');

-- Решение с помощью вложенных запросов.
SELECT id, 
--	from_, 
--	to_, 
	(SELECT name FROM cities WHERE label=flights.from_) AS rus_from, 
	(SELECT name FROM cities WHERE label=flights.to_) AS rus_to
FROM flights;

-- Решение с помощью jon-соединений.

SELECT f.id, c.name, f.to_ FROM flights f JOIN cities c ON from_=label ORDER BY f.id;

SELECT id, c.name FROM flights f JOIN cities c ON to_=label ORDER BY f.id;

SELECT one.fid, one.cname, two.cname FROM 
(SELECT f.id AS fid, c.name AS cname, f.to_ FROM flights f JOIN cities c ON from_=label ORDER BY f.id) AS one
JOIN
(SELECT id, c.name AS cname FROM flights f JOIN cities c ON to_=label ORDER BY f.id) AS two
ON one.fid=two.id
ORDER BY fid;


-- повтор примера из разбора на 8 уроке.
SELECT f.id, c.name, c2.name FROM flights f JOIN cities c ON f.from_=c.label JOIN cities c2 ON f.to_=c2.label ORDER BY f.id;

SELECT f.id, c.name, c2.name FROM flights f
JOIN cities c ON f.from_=c.label
JOIN cities c2 ON f.to_=c2.label;




















