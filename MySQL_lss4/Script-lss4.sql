USE vk;

ALTER TABLE profiles
ADD patronymic_name varchar(100) COMMENT 'Отчество пользователя' AFTER user_id;

ALTER TABLE profiles
ADD first_name varchar(100) NOT NULL comment 'Имя пользователя' AFTER user_id,
ADD last_name varchar(100) NOT NULL comment 'Фамилия пользователя' AFTER first_name;

ALTER TABLE messages
ADD is_read BOOLEAN comment 'Признак прочтения' AFTER is_delivered;

CREATE TABLE user_statuses (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY comment 'Идентификатор строки',
	name varchar(100) NOT NULL comment 'Название статуса',
	created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP comment 'Время создания строки',
	updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment 'Время обновления строки')
COMMENT "Справочник статусов пользователя";

INSERT INTO user_statuses (name) VALUES ('Single'), ('Married');

ALTER TABLE profiles RENAME COLUMN status TO user_status_id;
UPDATE profiles SET user_status_id = NULL;
ALTER TABLE profiles MODIFY COLUMN user_status_id INT UNSIGNED;

CREATE TABLE gender (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY comment "Идентификатор строки",
	gender VARCHAR(25) comment "Название пола",
	gender_info VARCHAR(150) COMMENT "Информация о поле",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP comment "Время создания записи",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления записи")
COMMENT "Варианты полов";

-- Заполнение полей справочника полов
INSERT INTO gender (gender, gender_info) VALUES ('M', 'Male'),('F','Fenmale');

-- Меняем тип поля gender на INT для использования справочника
ALTER TABLE vk.profiles MODIFY COLUMN gender char(1) NULL COMMENT 'Пол';
UPDATE profiles SET gender = NULL;
ALTER TABLE profiles MODIFY COLUMN gender INT UNSIGNED;
ALTER TABLE profiles RENAME COLUMN gender TO gender_id;

SELECT * FROM friendship_statuses;
SELECT * FROM media_types;
SELECT * FROM user_statuses;
SELECT * FROM gender;

SELECT * FROM users;
SELECT * FROM profiles;
SELECT * FROM media;
SELECT * FROM friendship;
SELECT * FROM messages;
SELECT * FROM communities;
SELECT * FROM communities_users;

TRUNCATE TABLE friendship_statuses; 
TRUNCATE TABLE media_types; 

-- Заполнение справочников
INSERT INTO friendship_statuses (name) VALUES ('Requested'), ('Approved'), ('Declined');
INSERT INTO media_types (name) VALUES ('Image'), ('Video'), ('Audio');

UPDATE profiles p
SET
	p.first_name = (SELECT first_name FROM users u WHERE u.id=p.user_id),
	p.last_name = (SELECT u.last_name FROM users u WHERE id=p.user_id),
	p.patronymic_name = (SELECT first_name FROM users u WHERE id=p.user_id);

UPDATE profiles p
SET
	p.gender_id = (SELECT id FROM gender ORDER BY rand() LIMIT 1);

UPDATE profiles p
SET
	p.user_status_id = (SELECT us.id FROM user_statuses us ORDER BY rand() LIMIT 1);

SELECT DISTINCT user_status_id FROM profiles ORDER BY user_status_id;

SELECT * FROM profiles p WHERE YEAR(birthday)>'2007';

SELECT DISTINCT media_type_id FROM media ORDER BY media_type_id;

UPDATE media m
SET
	m.media_type_id = (SELECT mt.id FROM media_types mt ORDER BY rand() LIMIT 1);

SELECT * FROM friendship f;

UPDATE friendship f 
SET
	f.friend_id = (SELECT u.id FROM users u WHERE u.id <> f.user_id ORDER BY rand() LIMIT 1);

SELECT DISTINCT status_id FROM friendship f ORDER BY status_id;

UPDATE friendship f
SET
	f.status_id = (SELECT fs.id FROM friendship_statuses fs ORDER BY rand() LIMIT 1);

SELECT * FROM messages m WHERE is_read is not NULL;

UPDATE messages m
SET
	m.to_user_id = (SELECT u.id FROM users u WHERE u.id <> m.from_user_id ORDER BY rand() LIMIT 1); 

UPDATE messages m
SET
	m.is_read = (SELECT IF(rand()<.6,1,0) WHERE is_delivered = 1);

SELECT * FROM media 
WHERE media_type_id = (SELECT id FROM media_types mt WHERE mt.name = 'Image') 
ORDER BY rand() LIMIT 1;

UPDATE profiles p
SET p.photo_id = (
	SELECT m.id FROM media m
	WHERE m.media_type_id = (SELECT id FROM media_types mt WHERE mt.name = 'Image') 
	AND m.user_id = p.user_id
	ORDER BY rand() LIMIT 1
);

SELECT * FROM profiles p;

ALTER TABLE users DROP COLUMN first_name, DROP COLUMN last_name;
