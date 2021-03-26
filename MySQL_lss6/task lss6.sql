USE vk;

-- 1. Создать и заполнить таблицы лайков и постов.

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY comment 'Идентификатор строки',
	user_id INT UNSIGNED NOT NULL comment 'Идентификатор пользователя',
	target_id INT UNSIGNED NOT NULL comment 'Идентификатор объекта',
	target_type_id INT UNSIGNED NOT NULL comment 'Идентификатор типа объекта',
	like_type TINYINT UNSIGNED NOT NULL comment "Идентификатор типа лайка (1 - лайк, 0 - дизлайк)",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP comment "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment "Время обновления строки"
) COMMENT "Лайки";

DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY comment "Идентификатор строки",
	name VARCHAR(255) NOT NULL UNIQUE comment "Название типа",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP comment "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment "Время изменения строки"
	) COMMENT "Типы объектов лайков";
	
INSERT INTO target_types (name) VALUES
	('messages'),
	('users'),
	('media'),
	('posts');
	
SELECT * FROM target_types;
SELECT * FROM messages;

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY comment 'Уникальный идентификатор, первичный ключ',
	user_id INT UNSIGNED NOT NULL comment 'Внешний ключ для связи с таблицей пользователей',
	community_id INT UNSIGNED,
	head VARCHAR(255) comment 'Заголовок сообщения',
	body TEXT NOT NULL comment 'Тело сообщения',
	is_public BOOLEAN DEFAULT TRUE,
	is_archived BOOLEAN DEFAULT FALSE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
	);
	
SELECT * FROM posts;


INSERT INTO posts (user_id, head, body)
	SELECT user_id, SUBSTRING(body, 1, LOCATE(' ', body, 10)- 1), body FROM (
		SELECT
		(SELECT id FROM users ORDER BY rand() LIMIT 1) AS user_id,
		(SELECT body FROM messages ORDER BY rand() LIMIT 1) AS body
		FROM messages
		) p;

INSERT INTO likes (user_id, target_id, target_type_id, like_type)
	  SELECT 
		(SELECT id FROM users ORDER BY rand() LIMIT 1) u_id,
		(SELECT id FROM messages ORDER BY rand() LIMIT 1) m_id,
		(SELECT id FROM target_types WHERE name='messages') ty_id,
		IF(RAND()>.8,0,1) lk_va
	  FROM messages -- генерируемые значения слабо связаны (в общем никак не связаны между собой поэтому в данном случае допустимо использовать любую таблицу с подходящим количеством записей/ 
	  LIMIT 20;

INSERT INTO likes (user_id, target_id, target_type_id, like_type)
   SELECT 
	(SELECT id FROM users ORDER BY rand() LIMIT 1) u_id,
	(SELECT id FROM users ORDER BY rand() LIMIT 1) u_id2,
	(SELECT id FROM target_types WHERE name='users') ty_id,
	IF(rand()>.6,0,1)
   FROM users
   LIMIT 20;

  INSERT INTO likes (user_id, target_id, target_type_id, like_type)
     SELECT
     	(SELECT id FROM users ORDER BY rand() LIMIT 1) u_id,
     	(SELECT id FROM media ORDER BY rand() LIMIT 1) me_id,
     	(SELECT id FROM target_types WHERE name = 'media') me_ty,
     	IF(rand()>.4,0,1)
     FROM media LIMIT 20;
 
INSERT INTO likes (user_id, target_id, target_type_id, like_type)
	SELECT
		(SELECT id FROM users ORDER BY rand() LIMIT 1) u_id,
		(SELECT id FROM posts ORDER BY rand() LIMIT 1) p_id,
		(SELECT id FROM target_types WHERE name ='posts') ty_id,
		IF(rand()>.5,0,1)
	FROM posts LIMIT 20;
  
SELECT * FROM likes;

SELECT * FROM target_types;

DESC profiles;
DESC TABLE profiles;

-- 2. Создать все необходимые внешние ключи и диаграмму отношений.

ALTER TABLE profiles
	ADD CONSTRAINT prof_fk_user_id
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT prof_fk_gend_id
	FOREIGN KEY (gender_id) REFERENCES gender(id) ON DELETE SET NULL,
	ADD CONSTRAINT prof_fk_phot_id
	FOREIGN KEY (photo_id) REFERENCES media(id),
	ADD CONSTRAINT prof_fk_usta_id
	FOREIGN KEY (user_status_id) REFERENCES user_statuses(id);

ALTER TABLE communities_users 
	ADD CONSTRAINT comu_fk_comm_id
	FOREIGN KEY (community_id) REFERENCES communities(id) ON DELETE CASCADE,
	ADD CONSTRAINT comu_fk_user_id
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

ALTER TABLE communities_users DROP FOREIGN KEY comu_fk_comm_id;


DESC messages;

ALTER TABLE messages 
	ADD CONSTRAINT mess_fk_from_usr_id
	FOREIGN KEY (from_user_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT mess_fk_to_usr_id
FOREIGN KEY (to_user_id) REFERENCES users(id) ON DELETE CASCADE;

DESC media;

ALTER TABLE media
	ADD CONSTRAINT media_fk_usr_id
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT media_fk_mtyp_id
	FOREIGN KEY (media_type_id) REFERENCES media_types(id);
	
SELECT * FROM media;

DESC friendship;

ALTER TABLE friendship
	ADD CONSTRAINT fship_fk_usr_id
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT fship_fk_frnd_id
	FOREIGN KEY (friend_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT fship_fk_stat_id
	FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);

DESCRIBE posts;

ALTER TABLE posts
	ADD CONSTRAINT post_fk_usr_id
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
/*
	ADD CONSTRAINT post_fk_comm_id
	FOREIGN KEY (community_id) REFERENCES communities(id) ON DELETE CASCADE;
*/

ALTER TABLE posts DROP FOREIGN KEY post_fk_comm_id;

SELECT * FROM posts;

DESCRIBE likes;

ALTER TABLE likes
	ADD CONSTRAINT like_fk_user_id
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT like_fk_tartyp_id
	FOREIGN KEY (target_type_id) REFERENCES target_types(id);
/*
	ADD CONSTRAINT like_fk_targ_id_media
	FOREIGN KEY (target_id) REFERENCES media(id) ON DELETE CASCADE,
	ADD CONSTRAINT like_fk_targ_id_mess
	FOREIGN KEY (target_id) REFERENCES messages(id) ON DELETE CASCADE,
	ADD CONSTRAINT like_fk_targ_id_usrs
	FOREIGN KEY (target_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT like_fk_targ_id_psts
	FOREIGN KEY (target_id) REFERENCES posts(id) ON DELETE CASCADE
*/
	
-- мы разобрали на семинаре, что создание constraint по типу контента неправильно и будет выдавать ошибку!
-- удаляю ранне созданные constraint

ALTER TABLE likes DROP FOREIGN KEY like_fk_targ_id_media,
				  DROP FOREIGN KEY like_fk_targ_id_mess,
				  DROP FOREIGN KEY like_fk_targ_id_usrs,
				  DROP FOREIGN KEY like_fk_targ_id_psts;

-- SELECT * FROM messages;

-- Примеры запросов на уроке /повтор/.

SELECT 
	id,
	(SELECT first_name FROM profiles WHERE user_id=3) AS F_Name,
	(SELECT last_name FROM profiles WHERE user_id=3) AS L_Name,
	(SELECT city FROM profiles WHERE user_id=3) AS City,
	(SELECT filename FROM media WHERE id = (SELECT photo_id FROM profiles WHERE user_id=3)) AS Photo
FROM users WHERE id=3;

SELECT 
	id,
	(SELECT first_name FROM profiles p WHERE p.user_id=u.id) AS F_Name,
	(SELECT last_name FROM profiles p WHERE p.user_id=u.id) AS L_Name,
	(SELECT city FROM profiles p WHERE p.user_id=u.id) AS City,
	(SELECT filename FROM media m WHERE id= (SELECT photo_id FROM profiles p WHERE p.user_id=u.id)) AS Photo
FROM users u WHERE id=3;
	
SELECT *, (SELECT concat(first_name,' ', last_name) FROM profiles WHERE user_id=4) AS User_name FROM media
	WHERE user_id =4 AND media_type_id = (SELECT id FROM media_types WHERE name='Image');

SELECT *, 
	(SELECT first_name FROM profiles WHERE user_id=4) AS F_name,
	(SELECT last_name FROM profiles WHERE user_id=4) AS L_name
FROM media
WHERE user_id =4 AND media_type_id = (SELECT id FROM media_types WHERE name='Image');

SELECT CONCAT('Пользователь ', 
		(SELECT CONCAT(first_name, ' ', last_name) FROM profiles p WHERE user_id=media.user_id),
		' добавил фото ', filename, ' ', created_at) AS news
FROM media WHERE user_id=4 AND media_type_id = (SELECT id FROM media_types WHERE name='Image')
ORDER BY created_at DESC;

SELECT * FROM media ORDER BY size DESC LIMIT 10;
SELECT filename, size, 
	(SELECT CONCAT(first_name, ' ', last_name) FROM profiles WHERE user_id=media.user_id) AS Owner
FROM media ORDER BY size DESC LIMIT 10;

SELECT * FROM friendship WHERE user_id=3 OR friend_id=3;

SELECT user_id FROM friendship WHERE friend_id=3
UNION 
SELECT friend_id FROM friendship WHERE user_id=3;

SELECT * FROM friendship;


SELECT user_id FROM friendship 
WHERE friend_id=3 AND status_id = (SELECT id FROM friendship_statuses WHERE name='Approved')
UNION 
SELECT friend_id FROM friendship 
WHERE user_id=3 AND status_id = (SELECT id FROM friendship_statuses WHERE name='Approved');
SELECT friend_id 
FROM 
	(SELECT friend_id, status_id FROM friendship WHERE user_id=3
	UNION
	SELECT user_id, status_id FROM friendship WHERE friend_id=3) AS F
WHERE status_id = (SELECT id FROM friendship_statuses WHERE name='Approved');

SELECT friend_id, (SELECT first_name FROM profiles WHERE user_id=friend_id) AS Name
FROM 
	(SELECT friend_id, status_id FROM friendship WHERE user_id=3
	UNION 
	SELECT user_id, status_id FROM friendship WHERE friend_id=3) AS F
WHERE status_id = (SELECT id FROM friendship_statuses WHERE name = 'Approved');

SELECT first_name FROM profiles WHERE user_id IN (
	SELECT friend_id
	FROM 
		(SELECT friend_id, status_id FROM friendship WHERE user_id=3
		UNION 
		SELECT user_id, status_id FROM friendship WHERE friend_id=3) AS F
	WHERE status_id = (SELECT id FROM friendship_statuses WHERE name = 'Approved')
);

-- медиафайлы друзей
SELECT filename FROM media WHERE user_id IN (
	SELECT friend_id
	FROM 
		(SELECT friend_id, status_id FROM friendship WHERE user_id=3
		UNION 
		SELECT user_id, status_id FROM friendship WHERE friend_id=3) AS F
	WHERE status_id = (SELECT id FROM friendship_statuses WHERE name = 'Approved')
);


-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT user_id, like_type,
	(SELECT 
		(SELECT gender_info FROM gender WHERE id=profiles.gender_id) 
	FROM profiles WHERE user_id=likes.user_id) AS Gen_name,
	(SELECT concat(first_name, ' ', last_name) FROM profiles WHERE user_id=likes.user_id) AS Usr_name,
	(SELECT DATE(birthday) FROM profiles WHERE user_id=likes.user_id) AS BirD
FROM likes;
-- ^--- промежуточный select

SELECT 
	count(like_type) AS cnt, 
	(SELECT 
		(SELECT gender_info FROM gender WHERE id=profiles.gender_id)
	FROM profiles WHERE user_id=l.user_id) AS Gen_name
--	,(SELECT concat(first_name, ' ', last_name) FROM profiles WHERE user_id=l.user_id) AS usr_name,
--	(SELECT DATE(birthday) FROM profiles WHERE user_id=l.user_id) AS BirD
FROM likes l GROUP BY Gen_name ORDER BY cnt DESC;

-- Ответ: Male 41 records, Female 39 records /в моих данных/;

SELECT (SELECT (SELECT gender_info FROM gender WHERE id=profiles.gender_id) FROM profiles WHERE user_id=likes.user_id) AS gen_nm, 
	count(*) AS cnt
FROM likes
GROUP BY gen_nm
ORDER BY cnt DESC;


-- Этот запрос на ответ каким пользователям было поставлено больше лайкой/дизлайков - мужчинам или женщинам;
/*вложенные запросы пошли с трудом (раньше когда нужно было выбрать данные из нескольких таблиц пользовался JOIN - мне казалось 
это более естественной конструкцией) а вложенные запросы делать не приходилось; поэтому практикуюсь)) */

SELECT (SELECT 
			(SELECT gender_info FROM gender WHERE id=profiles.gender_id) 
		FROM profiles 
		WHERE user_id=likes.user_id) AS Gen_id, 
		count(like_type) AS qty_lks
FROM likes 
WHERE target_type_id=(SELECT id FROM target_types WHERE name='users')
GROUP BY Gen_id;

-- по данным из моей базы Male: 12, Female: 8 (всего мы создали 20 записей в таблице Likes для таблицы пользователей (users)//

-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей.

SELECT user_id, concat(first_name, ' ', last_name) AS Name, (SELECT count(*) FROM likes WHERE target_type_id=2 AND target_id=profiles.user_id) AS cnt_lk FROM profiles ORDER BY cnt_lk DESC;

SELECT target_id, count(like_type) FROM likes WHERE target_type_id=2 GROUP BY target_id ORDER BY target_id;

SELECT count(*) FROM likes WHERE target_type_id=2 AND target_id IN (SELECT * FROM (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS sorted);
--													вопрос: зачем здесь ^----------^ два вложенных запроса SELECT? почему не получается обойтись одним selectом?
													разобрался - потому что IN & LIMIT по синтаксису не сочетаются.

SELECT sum(likes_total) FROM 
(SELECT SELECT count(*) FROM likes WHERE target_type_id=2 AND target_id IN (SELECT * FROM (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS sorted);
		(SELECT count(*) FROM likes WHERE target_id=profiles.user_id AND target_type_id=2) AS likes_total
FROM profiles
ORDER BY birthday DESC LIMIT 10) AS userlikes
;

SELECT sum(lk_cnt) FROM 
(
SELECT count(like_type) lk_cnt, user_id,
		(SELECT CONCAT(first_name, ' ', last_name) FROM profiles WHERE user_id=likes.user_id) as name,
		(SELECT DATE(birthday) FROM profiles WHERE user_id=likes.user_id) AS DB
FROM likes 
GROUP BY user_id
) AS subslct
ORDER BY DB DESC LIMIT 10

GROUP BY lk_cnt WITH ROLLUP;

SELECT sum(lt) FROM (
		SELECT 
		count(like_type) AS lt,
-- 		count(*),
--		like_type,
--		user_id,
--		(SELECT CONCAT(first_name, ' ', last_name) FROM profiles WHERE user_id=likes.user_id) as name,
		(SELECT DATE(birthday) FROM profiles WHERE user_id=likes.user_id) AS DB
FROM likes 
GROUP BY DB WITH ROLLUP 
ORDER BY DB DESC LIMIT 10
) LK
GROUP BY lt WITH ROLLUP;


SELECT count(like_type), 
		(SELECT concat(first_name, ' ', last_name) FROM profiles WHERE user_id=likes.user_id) AS Name, 
		(SELECT birthday FROM profiles WHERE user_id=likes.user_id) AS birt 
FROM likes
GROUP BY Name, birt WITH ROLLUP 
ORDER BY birt DESC LIMIT 10;


SELECT IF(GROUPING(lk), 'Total sum:', lk), sum(lk) 
FROM
	(SELECT
	user_id, 
	concat(first_name, ' ', last_name) AS Name, 
	birthday, 
	(SELECT count(like_type) FROM likes WHERE user_id=profiles.user_id AND target_type_id = 2 GROUP BY likes.user_id) AS lk
	FROM profiles
	-- GROUP BY birthday
	ORDER BY birthday DESC LIMIT 10) AS L
WHERE L.lk IS NOT NULL
GROUP BY lk WITH ROLLUP;

/*
Вот этот запрос ниже похоже правильный; Выбрали из таблицы likes пользователей которым были поставлены лайки, 
подтянули из profiles сведения о рождении, отсекли 10 самых молодых пользователей.
Запросы выше это тренировка, их ответы неправильные, но я не стал их удалять))
*/

SELECT IF(GROUPING(subslct.pf_name), 'Всего', subslct.pf_name) AS Nam, sum(cnt) FROM 
	(SELECT 
		(SELECT concat(first_name, ' ', last_name) FROM profiles WHERE user_id=likes.target_id) AS pf_name, 
		(SELECT birthday FROM profiles WHERE user_id=likes.target_id) AS pf_birt,
		count(like_type) AS cnt
	FROM likes 
	WHERE target_type_id = (SELECT id FROM target_types WHERE name='users')
	GROUP BY pf_name, pf_birt
	ORDER BY pf_birt DESC LIMIT 10) AS subslct
GROUP BY subslct.pf_name WITH ROLLUP 
;

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

SELECT * FROM users ORDER BY updated_at ASC LIMIT 10;

-- пользователи, которые ставили likes/dislikes в порядке убывания количества поставленных отметок;
SELECT 
	(SELECT concat(first_name, ' ', last_name) FROM profiles WHERE user_id=likes.user_id) AS Nam, 
	count(like_type) AS cnt
FROM likes
GROUP BY user_id
ORDER BY cnt ASC;

SELECT concat(first_name, ' ', last_name) AS Name, 
		(SELECT count(*) FROM likes WHERE user_id=profiles.user_id) +
		(SELECT count(*) FROM posts WHERE user_id=profiles.user_id) +
		(SELECT count(*) FROM messages WHERE from_user_id=profiles.user_id) AS overall_activities
FROM profiles ORDER BY overall_activities LIMIT 10;
