SELECT MD5('');
SELECT MD5(UUID());
SELECT UUID();
SELECT LENGTH(UUID());
SELECT LENGTH(MD5(''));
SELECT SUBSTRING(MD5(UUID()), 1, 5 + rand()*10);
SELECT concat(CHAR(FLOOR(RAND()*26+65)),CHAR(FLOOR(RAND()*26+65)),CHAR(FLOOR(RAND()*26+65)),CHAR(FLOOR(RAND()*26+65)),
	(floor(rand()*(9999999-1000000)+1000000))) AS cntr_num;

SELECT FLOOR(RAND()*6+1); -- [1-6]
-- --------------------------------------------------------------

-- Проанализировать, какие запросы могут выполняться наиболее часто в процессе работы приложения, и добавить необходимые индексы.

CREATE INDEX media_filename_i ON media(filename);

CREATE INDEX profiles_name_i ON profiles(first_name, last_name);

CREATE INDEX communities_name_i ON communities(name);

CREATE INDEX profiles_birthday_i ON profiles(birthday);

CREATE INDEX posts_head_i ON posts(head);

CREATE INDEX profiles_is_archived_i ON posts(is_archived);

CREATE INDEX messages_i ON messages(to_user_id, from_user_id);


CREATE FULLTEXT INDEX messages_body_i ON messages(body);

CREATE FULLTEXT INDEX posts_body_i ON posts(body);

/*Задание на оконные функции. Построить запрос, который будет выводить следующие столбцы:
имя группы
среднее количество пользователей в группах
самый молодой пользователь в группе
самый старший пользователь в группе
общее количество пользователей в группе
всего пользователей в системе
отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100*/

USE vk;
SELECT * FROM communities cm;
SELECT * FROM communities_users cm_u JOIN profiles p ON p.user_id = cm_u.user_id ORDER BY cm_u.community_id ASC, birthday;
SELECT * FROM communities cm LEFT JOIN communities_users cm_u ON cm_u.community_id = cm.id WHERE cm_u.community_id IS NULL;
SELECT * FROM communities cm RIGHT JOIN communities_users cm_u ON cm_u.community_id = cm.id;

-- добавим немного записей
INSERT INTO communities_users (community_id, user_id, created_at)
SELECT cm_id, us_id, cre_dt FROM (
	SELECT 
		(SELECT id FROM communities cm ORDER BY RAND() LIMIT 1) AS cm_id,
		(SELECT user_id FROM profiles pr ORDER BY RAND() limit 1) AS us_id,
		(SELECT DATE_ADD(NOW(), INTERVAL - RAND() * 999999999 - 14 * 365.25 * 24 * 3600 SECOND)) AS cre_dt
	FROM communities_users LIMIT 100) tbl;


-- SELECT DISTINCT community_id, count(user_id) OVER w FROM communities_users cu WINDOW w AS (PARTITION BY community_id);

SELECT DISTINCT cm.id, cm.name, 
				count(cu.user_id) OVER w AS cnt_u 
FROM communities cm 
	LEFT JOIN communities_users cu ON cm.id =cu.community_id 
WINDOW w AS (PARTITION BY cm.id);

-- 1	61	1974-05-05 07:35:25	61	Linnie		Lindgren	Linnie		2	1971-12-22
-- 1	21	1993-09-18 02:32:55	21	Penelope	Schinner	Penelope	2	2014-10-11

-- РЕШЕНИЕ!
SELECT DISTINCT cm.id, cm.name, 
--				(SELECT p.birthday FROM profiles p WHERE p.user_id = cm_u.user_id ORDER BY p.birthday DESC) AS oldest,
				FIRST_VALUE(concat(p.birthday,'_',first_name, ' ', p.last_name)) OVER w2 AS u_youngest,
--				LAST_VALUE(concat(p.birthday,'_',first_name, ' ', p.last_name)) OVER w2 AS u_old,
				FIRST_VALUE(concat(p.birthday, '_', p.first_name, ' ', last_name)) OVER w3 AS u_oldest,
	 			COUNT(cm_u.user_id) OVER win AS cnt, -- общее количество пользователей в группе
	 			COUNT(cm_u.user_id) OVER () / (SELECT count(*) FROM communities) AS avg_, -- среднее количество пользователей в группах (количество записей в communities_users / количество записей в communities)
	 			COUNT(cm_u.user_id) OVER () AS ttl_users, -- всего пользователей в системе /общее количество пользователей (строк) в communities_users/
				(SELECT count(p.user_id) FROM profiles p) AS ttl_users_in_vk, -- Общее количество пользователей в базе (vk)
	 			FORMAT(COUNT(cm_u.user_id) OVER win / (SELECT count(p.user_id) FROM profiles p) *100, 4) AS `ratio_%` -- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
FROM communities cm 
	LEFT JOIN communities_users cm_u ON cm_u.community_id = cm.id
	LEFT JOIN profiles p ON p.user_id = cm_u.user_id
WINDOW win AS (PARTITION BY cm.id), -- ORDER BY p.birthday DESC),
	   w2  AS (PARTITION BY cm.id ORDER BY p.birthday DESC),
	   w3  AS (PARTITION BY cm.id ORDER BY p.birthday ASC )
ORDER BY id;

