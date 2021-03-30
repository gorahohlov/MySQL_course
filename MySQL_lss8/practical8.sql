USE vk;


-- I.
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?


-- Кто больше поставил лайков
SELECT 
-- l.like_type, 
-- l.id, l.user_id, 
-- concat(p.first_name, ' ', p.last_name) AS actor, 
count(like_type) lk_cnt, 
g.gender_info AS actor_gen
-- p.gender_id, l.target_id, 
-- concat(p2.first_name, ' ', p2.last_name) AS lk_recipient, g2.gender_info AS recipient_gen
-- l.target_type_id, tt.name 
FROM likes l LEFT JOIN profiles p ON l.user_id=p.user_id LEFT JOIN gender g ON p.gender_id = g.id
LEFT JOIN target_types tt ON tt.id = l.target_type_id LEFT JOIN profiles p2 ON l.target_id=p2.user_id 
LEFT JOIN gender g2 ON g2.id =p2.gender_id 
WHERE 
-- tt.name='users' AND 
l.like_type=1
GROUP BY actor_gen
ORDER BY lk_cnt DESC LIMIT 1;




-- Кто больше поставил дизлайков
SELECT
-- l.like_type, 
-- l.id, l.user_id, 
-- concat(p.first_name, ' ', p.last_name) AS actor, 
count(like_type) AS dislike_cnt, 
g.gender_info AS actor_gen
-- p.gender_id, l.target_id, 
-- concat(p2.first_name, ' ', p2.last_name) AS lk_recipient, g2.gender_info AS recipient_gen
-- l.target_type_id, tt.name 
FROM likes l LEFT JOIN profiles p ON l.user_id=p.user_id LEFT JOIN gender g ON p.gender_id = g.id
LEFT JOIN target_types tt ON tt.id = l.target_type_id LEFT JOIN profiles p2 ON l.target_id=p2.user_id 
LEFT JOIN gender g2 ON g2.id =p2.gender_id 
WHERE 
-- tt.name='users' AND 
l.like_type=0
GROUP BY actor_gen
ORDER BY dislike_cnt DESC;


-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей.
SELECT 
concat(p.first_name, ' ', p.last_name) AS name,
p.birthday AS birt,
count(l.like_type) AS lk_cnt
-- target_type_id 
FROM profiles p LEFT JOIN likes l ON p.user_id=l.target_id AND target_type_id = 2
WHERE l.like_type =1
GROUP BY name, birt
ORDER BY birthday DESC
LIMIT 10
;


SELECT IF(GROUPING(name), 'Всего лайков:', name) AS Nme, sum(lk_cnt) FROM (
SELECT 
concat(p.first_name, ' ', p.last_name) AS name,
p.birthday AS birt,
count(l.like_type) AS lk_cnt
-- target_type_id 
FROM profiles p LEFT JOIN likes l ON p.user_id=l.target_id AND target_type_id = 2
WHERE l.like_type =1
GROUP BY name, birt
ORDER BY birthday DESC
LIMIT 10) AS tbl
GROUP BY name WITH ROLLUP;

/*
SELECT * FROM likes WHERE target_type_id =2;

INSERT INTO likes (user_id, target_id, target_type_id, like_type)
	SELECT 
		(SELECT id FROM users ORDER BY rand() LIMIT 1),
		(SELECT id FROM users ORDER BY rand() LIMIT 1),
		2,
		If(rand()>.8,0,1)
	FROM users LIMIT 60;	


SELECT * FROM target_types tt ;

SELECT * FROM likes WHERE target_type_id =2;
*/





-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).

-- SELECT concat(first_name, ' ', last_name) AS Name,
-- 		(SELECT count(*) FROM likes WHERE user_id=profiles.user_id) +
-- 		(SELECT count(*) FROM posts WHERE user_id=profiles.user_id) +
-- 		(SELECT count(*) FROM messages WHERE from_user_id=profiles.user_id) AS overall_activities
-- FROM profiles ORDER BY overall_activities LIMIT 10;


-- 10 наиболее активных пользователей
SELECT concat(pr.first_name, ' ', pr.last_name) AS Name,
	   count(l.like_type)+count(ps.user_id)+count(ms.from_user_id) AS overall_activities
FROM profiles pr LEFT JOIN likes l ON pr.user_id=l.user_id 
				 LEFT JOIN posts ps ON ps.user_id=pr.user_id
 				 LEFT JOIN messages ms ON ms.from_user_id=pr.user_id
GROUP BY Name
ORDER BY overall_activities DESC LIMIT 10;

-- 10 наименее активных пользователей
SELECT concat(pr.first_name, ' ', pr.last_name) AS Name,
	   count(l.like_type)+count(ps.user_id)+count(ms.from_user_id) AS overall_activities
FROM profiles pr LEFT JOIN likes l ON pr.user_id=l.user_id 
				 LEFT JOIN posts ps ON ps.user_id=pr.user_id
 				 LEFT JOIN messages ms ON ms.from_user_id=pr.user_id
GROUP BY Name
ORDER BY overall_activities ASC LIMIT 10;

-- II
-- (По желанию) Доработать запрос "Список медиафайлов пользователя с количеством лайков", 
-- чтобы он выводил количество лайков и дизлайков

-- SELECT * FROM media 
-- LEFT JOIN profiles ON profiles.user_id=media.user_id WHERE filename='voluptatum'
-- ;
SELECT * FROM likes WHERE target_type_id = 3 ORDER BY target_id;
SELECT * FROM target_types;

-- Список медиафайлов пользователя с количеством лайков и дизлайков 
-- (намеренно отфильтрован - медиафайлы не имеющие ни лайков ни дизлайков не выводятся).
SELECT concat(p2.first_name, ' ', p2.last_name) AS Usr_name, m.filename AS 'Имя файл', 
		(count(l.like_type) - count(l2.like_type)) AS 'кво лайков', 
		count(l2.like_type) AS 'кво дизлайков'
FROM media m LEFT JOIN likes l ON m.id=l.target_id 
								AND l.target_type_id = (SELECT tt.id FROM target_types tt WHERE tt.name='media')
-- 								AND l.like_type=1
			 LEFT JOIN profiles p2 ON m.user_id=p2.user_id
			 LEFT JOIN likes l2 ON m.id=l2.target_id
			 					AND l2.target_type_id=3 AND l2.like_type=0
WHERE l.like_type IS NOT NULL OR l2.like_type IS NOT NULL
GROUP BY Usr_name, m.filename
ORDER BY Usr_name, m.filename;