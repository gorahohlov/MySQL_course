USE shop;

-- 1.

CREATE TABLE IF NOT EXISTS logs (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	tbl_name CHAR(50) NOT NULL,
	fld_id INT UNSIGNED NOT NULL,
	fld_name CHAR(255))
	ENGINE = ARCHIVE;
	
DROP TRIGGER IF EXISTS prod_ins;
CREATE TRIGGER prod_ins 
AFTER INSERT ON products FOR EACH ROW
BEGIN 
	INSERT INTO logs VALUES (NULL, DEFAULT, 'products', NEW.id, NEW.name);
END
//

DROP TRIGGER IF EXISTS catlg_ins;
CREATE TRIGGER catlg_ins
AFTER INSERT ON catalogs FOR EACH ROW
BEGIN
	INSERT INTO logs VALUES (NULL, DEFAULT, 'catalogs', NEW.id, NEW.name);
END
//

DROP TRIGGER IF EXISTS usr_ins;
CREATE TRIGGER usr_ins
AFTER INSERT ON users FOR EACH ROW 
BEGIN 
	INSERT INTO logs VALUES (NULL, DEFAULT, 'users', NEW.id, NEW.name);
END
//

SHOW triggers;

INSERT INTO products (name) VALUES ('Samsung');
INSERT INTO users (name) VALUES ('Михаил');
INSERT INTO catalogs (name) VALUES ('Мониторы');

SELECT * FROM logs;

-- 2.

SET @@cte_max_recursion_depth = 1000000;
WITH RECURSIVE ind AS  
	(SELECT 1 AS n
	 UNION ALL 
	 SELECT n + 1 FROM ind WHERE n < 1000000)
SELECT ind.n, IF(people.id IS NULL, 10, people.id) AS people_id, IF(name IS NULL, 'Eli', name) AS name FROM ind 
	LEFT JOIN people ON MOD(ind.n, (SELECT count(*) FROM people)) = people.id;

USE sample;
CREATE TABLE people (
	id BIGINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
	name CHAR(40)
	);

INSERT INTO people (name) VALUES ('Routh'), ('David'), ('Kain'), 
								 ('Solomon'), ('Rebbeka'), ('Eve'), 
								 ('Aaron'), ('Sarah'), ('Anna'), ('Eli');


/*Если честно не совсем понятно что имелось в виду в задании 1 и 2 про Redis, но я честно
установил пакет на Linux и повторил команды в терминале из текста лекции и разбора домашки
12 урока))*/
								
-- Практическое задание тема "NoSQL"
-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
HINCRBY addresses '127.0.0.1' 1
HGETALL addresses

HINCRBY addresses '127.0.0.2' 1
HGETALL addresses

HGET addresses '127.0.0.1'

-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному
-- адресу и наоборот, поиск электронного адреса пользователя по его имени.
HSET emails 'igor' 'igorsimdyanov@gmail.com'
HSET emails 'sergey' 'sergey@gmail.com'
HSET emails 'olga' 'olga@mail.ru'

HGET emails 'igor'

HSET users 'igorsimdyanov@gmail.com' 'igor'
HSET users 'sergey@gmail.com' 'sergey'
HSET users 'olga@mail.ru' 'olga'

HGET users 'olga@mail.ru'


/*Точно также установил на Ubuntu client и server mongodb, повторил в терминале все команды по тексту лекции и из разобранного 
практического задания. 
PS/ Сам не понял что требовалось сделать по домашке.*/

-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
-- Предлагаемый вариант

show dbs

use shop

db.createCollection('catalogs')
db.createCollection('products')

db.catalogs.insert({name: 'Процессоры'})
db.catalogs.insert({name: 'Мат.платы'})
db.catalogs.insert({name: 'Видеокарты'})

db.products.insert(
  {
    name: 'Intel Core i3-8100',
    description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
    price: 7890.00,
    catalog_id: new ObjectId("5b56c73f88f700498cbdc56b")
  }
);

db.products.insert(
  {
    name: 'Intel Core i5-7400',
    description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
    price: 12700.00,
    catalog_id: new ObjectId("5b56c73f88f700498cbdc56b")
  }
);

db.products.insert(
  {
    name: 'ASUS ROG MAXIMUS X HERO',
    description: 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',
    price: 19310.00,
    catalog_id: new ObjectId("5b56c74788f700498cbdc56c")
  }
);

db.products.find()
db.products.find({catalog_id: ObjectId("5b56c73f88f700498cbdc56b")})

