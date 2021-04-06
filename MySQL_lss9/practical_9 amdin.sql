/*1) Создайте двух пользователей которые имеют доступ к базе данных shop. 
Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
второму пользователю shop — любые операции в пределах базы данных shop.*/

CREATE USER shp_rd, shp;
GRANT SELECT ON shop.* TO shp_rd;
GRANT ALL ON shop.* TO shp;
SHOW GRANTS FOR shp_rd;
SHOW GRANTS FOR shp;

CREATE USER 'shop_read'@'localhost' identified BY 'pass';
GRANT SELECT, SHOW VIEW ON shop.* TO 'shop_read'@'localhost';

CREATE USER 'shop'@'localhost'identified BY 'pass';
GRANT ALL ON shop.* TO 'shop'@'localhost';

SHOW GRANTS FOR 'shop_read'@'localhost';
SHOW GRANTS FOR 'shop'@'localhost';

/*2) Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, 
имя пользователя и его пароль. Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. 
Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, 
мог бы извлекать записи из представления username.*/


CREATE TABLE shop.accounts (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
	name VARCHAR(255) comment 'Имя пользователя',
	PASSWORD VARCHAR(20) comment 'Пароль пользователя'
	) Comment='Таблица accounts';
	
SELECT * FROM shop.accounts;

INSERT INTO shop.accounts (name, password) VALUES 
	('Peter', FLOOR(RAND()*(999999-100000)+100000)),
	('Sarah', FLOOR(RAND()*(999999-100000)+100000)),
	('James', FLOOR(RAND()*(999999-100000)+100000)),
	('Paul', FLOOR(RAND()*(999999-100000)+100000)),
	('Jack', FLOOR(RAND()*(999999-100000)+100000)),
	('Miriam', FLOOR(RAND()*(999999-100000)+100000)),
	('Eve', FLOOR(RAND()*(999999-100000)+100000)),
	('David', FLOOR(RAND()*(999999-100000)+100000)),
	('Eli', FLOOR(RAND()*(999999-100000)+100000)),
	('Adam', FLOOR(RAND()*(999999-100000)+100000))
	
CREATE VIEW shop.username AS SELECT id, name FROM shop.accounts;	

SELECT * FROM shop.username;

SHOW tables FROM shop;

CREATE USER user_read;

GRANT SELECT ON shop.username TO user_read;

SHOW grants FOR user_read;

-- проверил из консоли права и ограничения доступа работают корректно.