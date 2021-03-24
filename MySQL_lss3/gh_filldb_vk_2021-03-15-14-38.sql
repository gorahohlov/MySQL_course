#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'et', '1970-07-16 10:39:45', '1997-04-08 01:11:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'aspernatur', '1982-05-05 03:52:00', '2010-05-21 01:18:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'aut', '1979-10-15 02:51:19', '2013-08-30 07:28:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'doloremque', '1992-06-29 06:59:23', '1996-11-24 19:33:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'officiis', '1975-08-05 19:48:33', '1997-05-23 14:03:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'quos', '1989-10-31 21:17:29', '1971-05-12 17:17:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'iure', '1989-08-26 05:21:25', '2012-07-13 13:04:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'atque', '2000-05-05 07:11:04', '1971-02-26 21:47:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'dolor', '2019-10-05 16:47:09', '1976-05-11 17:44:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'ut', '2000-09-01 07:08:43', '1999-09-10 14:51:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'ipsa', '2005-06-22 09:28:16', '1981-07-08 20:23:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'saepe', '1981-11-06 15:32:07', '1976-03-27 05:30:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'repudiandae', '1984-05-12 15:58:43', '1991-01-12 08:56:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'qui', '1987-04-04 06:38:49', '1988-01-08 11:43:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'molestias', '2004-01-22 16:22:44', '1972-05-29 17:42:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'quia', '2017-08-07 13:05:31', '2008-10-28 03:48:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'fugiat', '1970-03-05 15:22:13', '2021-01-16 20:53:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'nostrum', '1982-03-01 15:31:33', '2006-01-23 17:39:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'amet', '2017-10-17 16:48:02', '2019-11-13 04:01:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'sed', '2016-03-19 01:02:31', '1970-11-27 15:36:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'quibusdam', '1977-10-15 12:23:06', '1984-08-30 17:19:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'aperiam', '1990-12-02 23:16:53', '2003-09-08 21:09:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'magnam', '2007-06-28 14:53:27', '1973-10-28 20:56:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'deserunt', '2010-05-13 02:42:50', '2002-09-03 05:51:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'ullam', '1979-11-22 13:50:49', '1981-09-07 19:31:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'a', '2015-09-29 13:27:59', '1990-04-17 14:47:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'vel', '2014-01-20 09:49:37', '1995-10-24 08:02:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'maxime', '1970-11-07 17:31:41', '1989-05-13 07:44:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'est', '1979-01-18 11:58:44', '2005-03-04 05:08:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'neque', '2002-09-26 00:32:59', '1993-06-14 03:18:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'temporibus', '2011-06-01 00:17:48', '2012-01-11 22:49:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'error', '1991-02-28 15:40:23', '1995-02-20 08:16:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'laudantium', '2009-11-29 11:40:53', '2002-06-01 00:29:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'quam', '2002-03-16 23:30:40', '2019-06-02 14:27:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'exercitationem', '1977-12-20 00:21:33', '2013-09-20 07:05:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'omnis', '1973-06-20 05:56:12', '1999-01-10 12:23:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'optio', '1999-10-25 22:20:58', '1995-05-11 17:14:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'expedita', '1989-10-11 20:56:04', '2018-10-02 21:21:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'architecto', '2018-11-06 07:03:15', '2015-07-31 18:41:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'dolores', '2018-03-24 00:30:11', '1971-04-20 02:37:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'velit', '2004-10-27 09:38:19', '1994-08-06 21:55:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'quod', '1999-05-01 15:49:41', '1989-04-09 01:29:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'facilis', '1972-09-08 15:17:25', '1983-11-11 01:12:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'eos', '2004-07-31 18:05:20', '1994-01-13 14:41:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'cum', '2015-04-28 06:30:34', '1986-09-09 08:30:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'inventore', '1987-01-26 03:24:40', '2018-07-27 21:22:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'quasi', '2011-04-27 13:29:30', '1973-03-12 08:03:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'voluptas', '1993-06-12 18:11:45', '1994-03-15 05:22:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'corrupti', '1986-07-10 22:33:18', '1983-06-09 11:46:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'tempore', '1986-12-25 01:35:09', '1971-01-22 23:26:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'necessitatibus', '1993-04-05 17:35:21', '1982-02-20 02:47:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'dolorum', '2007-07-11 08:00:18', '1989-02-13 10:55:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'beatae', '2006-05-09 17:17:55', '2000-10-17 18:24:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'animi', '1975-03-01 07:32:58', '1980-11-15 21:00:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'accusantium', '1978-09-27 23:03:34', '1979-01-17 01:58:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'veritatis', '1990-08-07 08:57:21', '1975-11-03 22:04:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'voluptatem', '1986-02-28 01:42:49', '1986-11-04 11:08:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'quae', '2010-03-01 15:19:07', '1975-08-18 06:06:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'modi', '1979-04-13 22:43:56', '2003-07-31 04:26:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'enim', '1978-11-18 03:32:39', '2010-05-22 16:35:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'harum', '1991-06-22 09:40:03', '2013-11-21 05:00:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'hic', '1990-12-16 06:35:14', '2018-03-30 19:07:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'quidem', '2017-11-08 03:13:20', '2002-10-15 02:42:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'quaerat', '1988-03-25 09:56:24', '1996-01-18 03:34:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'facere', '2017-04-14 19:01:12', '1999-07-25 17:36:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'labore', '2016-05-17 06:40:33', '2006-10-10 11:59:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'nulla', '2004-12-28 08:33:05', '2004-08-05 02:17:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'ab', '1972-09-30 00:50:07', '2011-07-04 18:10:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'tenetur', '1986-11-29 01:18:38', '1994-01-08 00:43:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'voluptatum', '1983-08-04 05:28:10', '1971-09-29 01:46:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'incidunt', '2021-01-05 05:24:44', '2006-09-02 04:29:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'iste', '2016-04-05 08:20:00', '2015-11-26 10:38:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'sit', '1996-07-08 12:48:24', '1972-02-13 09:58:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'nihil', '2008-06-11 07:17:48', '1984-10-24 03:58:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'dolore', '2000-07-15 14:59:40', '2006-07-28 22:15:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'id', '2016-12-24 22:50:16', '2000-01-23 08:14:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'rerum', '1982-07-11 20:06:23', '1979-04-04 17:55:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'doloribus', '1983-11-23 11:05:12', '1977-11-17 09:06:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'unde', '2015-05-26 20:41:18', '1981-01-28 16:48:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'reprehenderit', '1975-08-28 04:56:15', '2019-04-14 00:31:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'voluptate', '1987-10-20 15:45:44', '1992-09-25 15:00:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'vero', '2012-09-29 18:44:04', '1994-02-25 13:58:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'consequuntur', '1981-04-22 02:15:16', '2019-06-02 08:22:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'explicabo', '1975-12-06 21:53:23', '1980-09-02 06:42:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'nemo', '1991-09-20 07:58:29', '1970-12-04 03:37:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'eum', '1976-08-01 07:12:18', '1983-06-19 22:15:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'iusto', '2007-01-10 06:06:01', '1980-02-28 20:16:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'numquam', '2013-04-23 10:55:46', '2015-03-08 18:57:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'sunt', '1979-08-23 01:12:32', '1971-01-16 09:22:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'commodi', '1971-10-01 16:42:51', '2004-04-16 21:02:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'nesciunt', '2014-09-14 15:35:01', '1994-06-27 19:56:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'eius', '1976-08-30 07:56:58', '1999-06-03 00:03:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'dicta', '2019-11-01 02:57:14', '2008-08-01 23:39:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'eveniet', '2017-12-05 00:36:53', '1988-07-26 16:26:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'ea', '2008-04-10 10:38:12', '1989-09-09 18:03:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'minus', '2008-04-17 22:58:14', '1979-12-18 18:12:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'at', '2005-08-11 19:10:01', '1976-06-04 22:09:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'asperiores', '2012-07-27 14:33:07', '1989-08-19 18:40:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'similique', '2011-10-06 17:25:10', '1972-03-18 04:24:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'praesentium', '2011-04-28 10:00:03', '2003-03-30 07:14:39');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '1999-12-05 01:45:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1993-08-01 06:53:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '1990-06-17 02:57:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '1996-03-12 14:36:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2002-04-03 21:42:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2012-03-09 09:39:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1997-08-28 22:56:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2017-03-26 12:48:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2020-01-08 21:11:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1990-10-03 13:46:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '1991-12-06 19:15:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '1991-02-04 13:03:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '1997-08-04 11:12:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '1992-12-31 09:47:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '1991-11-04 14:38:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1971-08-06 06:02:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '1980-07-10 14:38:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '1991-10-15 15:06:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '2021-01-31 09:25:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '1998-01-07 04:10:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '1988-02-14 03:44:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2011-05-20 10:55:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '1976-09-16 22:33:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '2005-11-16 06:54:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '1988-01-26 15:25:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '2011-01-10 00:39:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2007-05-30 10:53:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '1980-05-09 17:32:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '1982-08-06 03:20:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2015-10-20 06:17:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '1985-06-04 02:51:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '1976-06-02 19:31:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '1992-05-21 18:12:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '2007-01-20 13:35:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '1987-01-17 03:52:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '2000-08-02 03:40:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '2014-05-11 04:51:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '1972-10-03 21:43:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '2000-07-12 01:25:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '2014-02-06 11:34:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '2020-01-17 07:09:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '1976-03-23 21:32:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '2014-03-25 18:52:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '2005-02-22 00:38:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '1996-01-12 08:58:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '1978-02-22 03:28:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '1972-12-24 14:14:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '2015-01-29 08:53:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '2014-11-16 21:28:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '1984-02-29 11:59:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '2015-05-22 06:21:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '1999-01-04 06:06:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '1982-11-26 10:03:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '1992-12-29 22:29:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '1978-11-20 02:58:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '1983-03-17 14:56:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '2020-08-08 09:32:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '1979-11-15 01:42:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '1971-10-01 08:49:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '1984-02-13 23:04:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '2014-01-04 09:04:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '2013-04-05 19:01:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '2001-06-26 19:28:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '2014-03-27 23:11:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '1992-02-29 10:50:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '1982-02-18 21:28:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '2001-05-18 19:22:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '1977-08-30 02:52:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '2010-01-05 16:57:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '1991-08-09 05:29:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '1994-03-15 02:06:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '1996-02-12 17:10:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '1984-11-02 17:48:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '1995-07-23 19:08:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '2021-01-12 12:56:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '2010-03-04 14:50:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '1985-05-05 16:46:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '2008-04-11 16:11:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '1990-05-26 18:18:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '1985-08-29 13:13:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '1970-05-09 18:27:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '2008-08-10 04:17:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '1971-08-31 09:52:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '2017-04-14 05:20:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '1982-09-06 04:37:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '1996-09-18 04:02:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '1983-11-30 21:13:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '2001-08-14 20:03:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '1998-05-06 12:58:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '1993-01-09 21:09:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '2005-01-01 20:16:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '1985-12-30 09:08:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '1972-01-28 16:43:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '1982-08-04 16:02:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '1992-07-13 16:55:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '1994-05-10 16:46:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '2017-07-30 13:02:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '1982-10-18 02:50:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '1979-11-14 04:15:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '2009-11-29 07:16:20');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2020-12-04 11:49:05', '1997-09-03 05:29:00', '1980-08-01 21:24:20', '1972-12-19 10:43:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '1978-08-01 12:48:28', '1975-11-11 14:50:56', '1983-07-02 04:06:15', '1990-12-20 22:58:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '1980-10-19 08:57:02', '1980-09-12 19:59:35', '2001-03-14 16:42:05', '1971-04-05 14:48:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '2008-07-31 08:30:06', '2007-10-21 02:44:25', '1971-02-21 08:41:52', '1981-08-13 13:47:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '1978-10-02 02:43:12', '2020-03-03 04:14:33', '2017-02-20 10:41:33', '1986-09-19 14:30:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 6, '1981-09-05 03:39:14', '1975-05-15 05:00:10', '2005-08-27 23:20:19', '2019-10-20 01:24:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 7, '1997-10-25 12:43:05', '1990-02-07 09:53:44', '2017-01-23 07:36:06', '2004-06-20 06:39:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 8, '1997-12-18 18:22:51', '2004-01-21 12:34:45', '1989-03-06 00:22:55', '1983-10-01 22:58:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 9, '1988-08-17 11:49:36', '1997-09-13 22:35:15', '2019-11-07 15:44:52', '1988-02-09 10:38:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 10, '1977-10-24 06:27:27', '2001-02-23 17:33:48', '2016-10-27 05:31:21', '2012-08-15 17:13:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 11, '1988-01-12 02:24:01', '2016-12-12 05:22:19', '2014-10-01 05:20:16', '1975-08-07 02:38:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 12, '1993-12-09 12:35:27', '1981-01-31 01:10:58', '2012-04-03 14:31:15', '1980-06-26 20:48:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 13, '1988-04-16 03:58:55', '1979-04-12 08:16:52', '1970-11-08 04:41:46', '2015-06-16 06:12:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 14, '2009-09-27 07:52:29', '1986-04-21 10:01:39', '2016-02-18 00:28:28', '2020-06-18 10:52:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 15, '2005-02-08 17:58:00', '1987-01-09 15:37:08', '1971-02-08 10:38:47', '2015-03-05 12:18:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 16, '1975-02-08 16:34:33', '1993-12-02 02:40:57', '1978-03-09 12:48:04', '1971-08-30 10:20:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 17, '2001-12-20 21:08:40', '2020-07-20 18:47:38', '2021-01-15 02:16:55', '2017-05-06 19:47:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 18, '1973-03-28 07:44:56', '2011-12-08 00:44:01', '1994-01-24 19:38:49', '2017-07-03 05:39:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 19, '1982-09-19 09:53:00', '1981-04-13 02:37:24', '1998-05-27 04:07:57', '2009-02-11 14:27:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 20, '2016-02-22 15:29:49', '1973-01-07 22:26:16', '1994-08-27 18:14:34', '1972-03-07 16:25:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 21, '2014-02-19 03:07:25', '1979-07-04 17:02:53', '1991-02-20 09:46:33', '2002-08-10 10:52:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 22, '1979-02-27 17:35:37', '2018-12-26 11:33:44', '2004-11-16 00:30:32', '2017-12-25 12:32:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 23, '1988-01-20 00:00:14', '2001-11-10 05:10:36', '2002-08-08 00:13:28', '2001-11-28 18:28:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 24, '2009-07-28 08:49:13', '1971-05-01 19:41:54', '1983-02-02 15:13:39', '1984-11-23 21:21:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 25, '2009-01-07 10:48:43', '1986-01-06 07:13:07', '2010-12-25 08:22:59', '1970-09-30 08:54:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 26, '1971-05-30 23:53:21', '2014-02-04 10:57:25', '1998-09-05 23:47:43', '2013-06-22 05:37:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 27, '1973-06-04 03:40:24', '1976-03-27 01:07:51', '2000-04-13 00:40:28', '2003-12-04 21:15:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 28, '1972-09-02 15:56:54', '1990-09-04 12:41:36', '1997-06-15 17:06:53', '1977-01-17 00:18:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 29, '1974-12-11 07:07:10', '1983-04-07 08:14:30', '2001-05-23 22:59:27', '2012-08-11 20:39:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 30, '2014-10-04 10:37:20', '1984-01-08 19:15:40', '1978-11-08 21:37:30', '2016-03-13 04:20:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 31, '1997-02-06 11:24:18', '2004-05-21 06:57:50', '1991-04-17 23:00:23', '1995-10-06 05:40:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 32, '2009-05-12 11:02:57', '2020-05-10 07:10:43', '1979-07-02 09:01:11', '1985-08-18 18:33:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 33, '1977-03-27 05:48:09', '2017-10-21 05:41:26', '1999-12-22 16:21:43', '2018-02-21 11:01:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 34, '2019-12-12 01:24:01', '2000-06-26 14:13:48', '2016-11-04 00:03:47', '2020-08-25 17:52:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 35, '1984-11-28 16:06:59', '1992-08-02 23:22:02', '2020-12-13 15:35:47', '2002-07-17 04:57:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 36, '1975-01-06 18:06:19', '1975-01-15 18:41:29', '1994-10-27 02:25:24', '1995-11-08 20:47:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 37, '2009-09-15 04:56:07', '2010-05-31 18:59:40', '2017-02-08 00:23:03', '1991-06-17 00:33:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 38, '1999-08-14 02:01:53', '1971-04-01 03:50:37', '1992-04-23 17:52:43', '2014-04-18 09:23:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 39, '1986-04-19 11:11:55', '1982-03-16 12:33:10', '1978-06-15 09:39:25', '2001-10-16 14:21:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 40, '1986-08-29 08:08:50', '1993-10-28 03:38:47', '2002-05-16 08:55:25', '1989-12-23 14:13:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 41, '2013-08-13 12:28:03', '2009-07-20 00:10:54', '2016-05-08 04:48:09', '1985-11-20 23:11:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 42, '1976-03-18 10:59:37', '2012-11-20 01:40:10', '1978-11-19 08:19:12', '1975-12-08 05:47:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 43, '1988-04-02 13:39:06', '2007-12-09 19:37:40', '2012-04-23 03:58:22', '1981-09-29 05:58:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 44, '1975-11-22 05:59:11', '1998-01-26 02:04:33', '1994-08-26 03:49:40', '1982-02-17 03:27:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 45, '2014-02-27 05:15:31', '2008-04-20 13:59:08', '2008-08-24 02:33:18', '2012-09-04 09:41:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 46, '2016-11-08 09:10:49', '1978-03-26 12:44:00', '1972-05-30 04:58:53', '1999-03-19 23:31:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 47, '1971-12-31 07:13:29', '2018-04-11 06:57:46', '1970-03-30 08:43:28', '1986-05-09 22:49:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 48, '1994-07-12 20:18:39', '2010-07-28 16:26:20', '1981-04-21 08:08:46', '2017-12-19 18:48:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 49, '2007-10-04 18:32:29', '1990-12-02 21:38:41', '1977-05-02 00:22:00', '1976-09-18 00:07:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 50, '1971-06-06 19:27:33', '1978-05-13 01:49:52', '1993-01-02 03:30:44', '1996-05-27 00:27:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 51, '1971-07-08 20:47:07', '1982-11-04 06:28:51', '2006-05-13 11:08:25', '1982-02-10 14:58:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 52, '2018-11-29 11:11:07', '2004-10-01 16:51:41', '2014-10-08 00:06:05', '2010-01-21 12:12:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 53, '1982-08-31 10:07:55', '1993-07-06 08:29:15', '2005-12-23 06:51:40', '2012-10-23 07:31:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 54, '1980-02-16 05:14:18', '2003-01-19 11:28:35', '2014-01-10 06:55:23', '1991-12-04 18:35:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 55, '1996-09-22 21:07:41', '2002-06-19 06:14:52', '2006-03-16 09:18:38', '2000-03-03 13:33:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 56, '2016-08-16 05:27:35', '1975-03-10 15:54:57', '2018-08-15 06:03:45', '2009-04-04 11:56:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 57, '1994-11-23 06:29:14', '1989-04-14 06:12:11', '2017-09-10 05:24:45', '2000-03-25 03:21:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 58, '2002-04-05 01:53:31', '2001-10-17 16:47:31', '2000-06-11 07:38:44', '1970-06-05 14:20:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 59, '1993-01-10 17:06:19', '1974-10-15 06:35:36', '2001-09-21 02:35:28', '2014-06-18 18:12:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 60, '2009-01-09 12:21:37', '2016-12-13 06:24:46', '2009-04-26 10:10:47', '1997-05-02 21:45:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 61, '2003-04-07 04:45:38', '1976-03-16 19:02:43', '1970-01-27 23:39:13', '1987-08-05 04:12:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 62, '1995-07-10 12:11:10', '1983-01-21 10:35:50', '2016-01-07 15:37:25', '1977-10-16 05:24:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 63, '2019-07-16 15:02:24', '2014-12-16 05:49:56', '1997-06-05 00:15:27', '1979-12-13 01:53:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 64, '1973-10-13 03:15:35', '1999-09-06 22:59:26', '1976-10-16 11:03:12', '2011-06-11 00:33:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 65, '1991-04-11 10:54:42', '2015-02-24 15:39:50', '1972-07-23 04:28:09', '2010-10-20 17:02:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 66, '1991-06-03 18:36:12', '1977-09-13 21:59:00', '2011-05-05 10:19:45', '1987-11-25 06:06:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 67, '1986-05-05 06:49:48', '2015-02-15 04:17:33', '1991-09-24 17:44:46', '1980-02-17 23:24:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 68, '1998-11-30 08:20:16', '1975-10-31 03:38:17', '1980-04-25 02:17:05', '2020-08-07 19:34:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 69, '1972-12-09 18:01:44', '2001-08-21 12:59:36', '1972-05-03 21:15:16', '2011-06-02 17:38:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 70, '2020-02-09 23:41:56', '2017-02-20 10:58:21', '1985-06-05 22:20:18', '1998-02-21 10:37:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 71, '2001-04-06 12:39:13', '1997-09-01 11:53:29', '1989-06-28 12:08:25', '2005-12-14 14:44:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 72, '1982-03-21 14:11:01', '1992-07-27 14:54:20', '1990-04-10 09:10:58', '2011-06-12 12:08:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 73, '1995-06-14 10:26:51', '1978-04-21 09:19:50', '2005-08-08 04:38:52', '2017-08-05 22:29:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 74, '2001-06-23 06:14:29', '1979-06-10 08:30:23', '1971-08-29 10:55:26', '2017-12-12 15:36:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 75, '1979-12-28 07:59:24', '1984-02-06 15:37:52', '2012-06-17 02:28:14', '1984-02-08 05:57:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 76, '1982-01-01 13:07:24', '1999-01-10 09:09:31', '2017-10-02 18:29:23', '1981-12-22 00:59:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 77, '1991-10-31 18:47:10', '1992-01-21 10:24:30', '2001-07-11 13:10:15', '2007-05-18 13:04:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 78, '1972-02-16 06:22:41', '1970-10-09 11:26:54', '1987-07-29 11:07:23', '2019-03-28 02:13:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 79, '1986-09-09 00:18:32', '1980-10-13 23:38:55', '1973-01-03 06:47:06', '1976-11-12 15:50:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 80, '1998-02-23 15:08:05', '2009-02-16 03:53:58', '2014-07-29 13:59:44', '1999-06-02 06:48:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 81, '1997-08-01 03:47:54', '1999-12-19 12:48:46', '2008-02-21 10:44:43', '2001-04-19 11:18:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 82, '2011-01-08 06:26:52', '1974-10-12 02:02:02', '2011-12-06 19:07:07', '1986-09-02 19:03:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 83, '2010-05-08 02:01:07', '1992-07-26 15:42:22', '1999-03-05 13:45:44', '1976-10-07 16:56:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 84, '1981-03-29 09:19:19', '2003-05-03 20:19:37', '1982-12-26 02:49:18', '1998-03-20 10:31:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 85, '1992-09-21 15:03:21', '2003-04-17 20:31:52', '2020-11-27 22:58:28', '1982-02-18 10:49:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 86, '1996-11-12 14:33:15', '2018-12-06 23:03:10', '1983-02-09 12:01:15', '1990-05-03 23:22:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 87, '2006-02-28 19:47:16', '2020-03-04 23:18:23', '2002-10-02 21:59:51', '1991-08-31 12:41:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 88, '1993-04-05 21:27:28', '2020-10-24 15:27:53', '2018-09-03 22:07:05', '1975-09-12 15:26:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 89, '1982-01-31 08:27:50', '2007-06-25 05:50:54', '1973-12-16 02:50:38', '1979-05-10 10:58:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 90, '1991-08-09 02:48:35', '1993-07-25 15:27:24', '2012-02-05 14:27:32', '1995-12-21 01:52:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 91, '2015-03-17 07:14:09', '1995-04-10 17:55:48', '1981-03-07 17:02:44', '2018-08-09 02:03:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 92, '1986-04-25 13:45:40', '1987-05-12 01:09:03', '2010-01-01 10:45:06', '2012-05-18 19:36:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 93, '1990-11-09 15:00:40', '1995-05-03 04:40:23', '1977-01-09 14:00:56', '1975-02-02 13:57:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 94, '2005-08-20 03:34:45', '1984-06-13 22:00:52', '1973-03-01 18:59:21', '2017-02-02 02:14:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 95, '1996-05-19 13:04:49', '1976-11-29 04:11:26', '1971-10-27 23:57:45', '1971-11-08 23:34:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 96, '1997-10-21 12:38:00', '2008-02-28 09:35:03', '2010-04-15 02:56:30', '2017-05-13 10:41:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 97, '2014-03-14 21:50:03', '1972-09-20 04:19:53', '2018-01-03 12:38:53', '2016-09-29 11:03:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 98, '2006-05-23 16:22:22', '1991-07-03 07:54:05', '2007-04-06 16:08:42', '1981-12-13 09:00:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 99, '2001-03-22 05:22:52', '2012-03-24 19:53:06', '2003-06-14 18:09:05', '2017-02-26 00:58:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 100, '2018-11-26 22:38:56', '1991-12-15 01:31:17', '2016-02-12 14:40:10', '2000-02-01 12:38:06');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статус дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Reprehenderit inventore nihil tenetur omnis rem illo.', '1994-08-30 16:40:11', '1996-10-02 07:00:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Ea ab est culpa nobis nulla sed architecto.', '1986-05-03 19:28:06', '1989-08-12 23:46:58');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Hic exercitationem ut non ut magnam dolor.', '1992-08-06 23:53:34', '2003-07-15 22:11:10');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Vel quod corporis alias voluptatum incidunt eos eum provident.', '2019-05-06 01:53:33', '1976-10-07 10:39:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Sunt eius est placeat est facere et est.', '1978-02-16 10:53:11', '2006-07-24 07:52:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Quo et deleniti vero aliquid et.', '2002-11-24 06:04:49', '1990-11-29 23:34:53');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Dolor rem illum optio.', '1984-12-31 12:37:39', '2005-01-24 04:35:08');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Beatae error sed odio dolor animi est error.', '1970-11-01 18:26:58', '2017-04-02 09:46:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Commodi fuga aut reprehenderit maxime porro occaecati aliquam.', '2000-12-14 03:34:39', '1987-09-14 17:34:18');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Fuga qui error quis amet veritatis qui libero et.', '1977-09-08 00:00:11', '2002-01-31 23:54:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'Natus qui nam nihil.', '2014-12-29 17:32:57', '1979-02-04 23:37:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'Earum at dolore inventore magnam beatae quo reprehenderit.', '1982-03-05 17:19:52', '1971-07-02 01:25:33');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'Et vel autem et quo fuga nam sit.', '1998-04-17 21:59:51', '2000-01-28 15:56:38');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'Voluptatem officia consequatur velit eum in.', '2015-07-04 20:18:53', '1982-08-10 17:45:31');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'Sit earum maxime id laudantium dolores quis velit.', '1970-09-26 11:09:04', '2015-04-27 10:46:59');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'Odit voluptatem laboriosam quibusdam molestiae non voluptate a.', '1990-04-18 05:30:14', '2006-07-13 17:44:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'Maiores quia dolorum illo exercitationem ipsam.', '2018-08-07 22:17:46', '1985-03-08 03:01:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'Ratione beatae assumenda rerum.', '1981-11-05 15:23:36', '2001-03-22 11:00:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'Voluptatem ut aut sequi voluptates est.', '1972-10-24 23:15:15', '2015-02-12 17:01:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'Deleniti id vel incidunt deleniti molestiae debitis.', '1982-08-31 02:31:58', '2003-11-10 07:52:59');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'Velit in numquam soluta.', '2003-09-11 17:15:00', '1991-06-03 20:27:51');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'Eos omnis est commodi quia.', '1999-09-11 00:55:58', '2009-02-05 13:43:27');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'Commodi vel possimus qui impedit consequuntur delectus et sed.', '1987-11-24 13:41:06', '1971-08-23 06:10:52');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'Dolores dolorum et tempora aut et.', '2021-03-08 19:50:36', '2007-10-26 13:09:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'Sit autem qui voluptate est eveniet quo nihil.', '2003-04-20 07:18:54', '1991-04-13 02:52:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'Dignissimos iste commodi voluptas id incidunt corrupti quidem.', '2014-05-05 03:36:08', '1997-05-17 13:18:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'Sunt soluta nobis eaque explicabo cumque.', '2018-09-05 03:14:41', '1995-12-21 01:46:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'Qui enim tenetur voluptas sit.', '2009-06-13 05:33:07', '2010-11-27 22:14:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'Odit repellendus ad est et sit molestiae enim.', '1996-08-11 01:00:58', '1991-02-20 17:01:53');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'Voluptatem placeat odit odit voluptatem est.', '2017-12-04 05:59:56', '2011-06-14 17:58:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'Aut voluptas voluptatibus autem et officiis.', '1994-03-25 08:32:55', '2009-03-09 20:55:36');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'Quidem dolore rerum tenetur consequuntur voluptates nihil minima.', '1989-09-27 14:52:26', '2016-09-09 05:51:53');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'Molestiae animi sunt ipsam repellat provident.', '1970-10-31 21:38:33', '1973-07-03 03:13:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'Dignissimos quos ut quae ut voluptate.', '1986-12-20 19:42:07', '1990-12-10 07:35:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'Fugiat fuga iure aut.', '1986-03-02 11:17:23', '2008-05-04 22:44:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'Possimus voluptatibus suscipit vero qui doloremque vitae explicabo.', '1975-11-28 08:10:31', '2006-08-22 17:52:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'Optio beatae adipisci aliquid rerum ut aliquid aliquam ipsam.', '1972-04-21 16:16:41', '1981-10-30 19:16:08');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'Modi et aut rerum.', '1975-04-24 21:12:35', '2017-03-26 02:16:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'Quasi aut molestias eos doloribus autem nihil.', '1971-07-22 19:15:45', '1998-04-01 15:27:19');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'Libero aspernatur fugiat nam ut.', '1994-03-11 22:11:06', '2018-03-27 14:38:38');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'Exercitationem voluptates voluptas est nemo.', '1995-11-19 19:54:49', '1989-01-30 08:03:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'Tempora consequuntur perferendis et nihil.', '2004-07-07 05:19:54', '2019-02-03 04:55:19');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'Et impedit architecto corporis sed perspiciatis.', '2015-01-21 08:15:23', '2005-07-13 14:49:10');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'Veniam non perferendis omnis atque minima velit.', '2020-02-27 00:38:52', '2002-03-28 00:22:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'Aut rerum expedita sint velit rerum ipsa et fugiat.', '1991-04-06 16:29:25', '1998-10-17 13:29:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'Placeat adipisci natus et et non.', '1980-07-23 06:26:08', '1970-11-12 02:00:04');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'Repellat vitae facere quo sunt cum eaque.', '2007-04-29 22:51:30', '2017-09-20 18:29:38');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'Alias pariatur assumenda velit iste voluptas.', '2011-08-28 16:31:47', '1983-09-11 18:23:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'Dicta soluta veniam laborum in enim rem dolorem rem.', '2002-10-30 06:53:43', '1992-01-07 10:23:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'Sed veritatis corrupti tenetur vel.', '2013-09-05 18:18:13', '1999-06-21 04:58:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'Animi ab quia ullam voluptatem nihil at.', '1980-07-18 04:36:29', '1996-05-31 00:18:40');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'Ratione soluta quisquam laboriosam minus.', '1979-11-12 13:32:02', '1985-08-31 09:53:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'Suscipit est sint corrupti doloremque qui ipsum in.', '2015-08-19 11:13:59', '1979-06-01 22:35:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'Voluptatibus sit cumque eum vel.', '1994-03-01 05:45:21', '2013-10-16 03:18:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'Voluptate accusamus et occaecati velit.', '1979-02-24 03:15:39', '1971-10-22 11:09:07');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'Quibusdam omnis earum quos accusantium.', '1972-05-22 23:01:48', '1980-01-06 07:20:31');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'Voluptatem quis est id reiciendis.', '1985-05-11 02:13:41', '1971-04-30 15:58:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'Omnis voluptates quam veniam et aut a veniam.', '1984-08-30 18:56:20', '1977-11-18 08:24:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'Voluptates ut est voluptates nobis aut vitae consequuntur amet.', '2018-06-15 17:53:33', '1971-06-09 10:46:36');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'Vel sed aut eaque veritatis molestiae.', '1996-03-20 06:35:00', '2009-07-20 03:33:42');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'Saepe quaerat dolore pariatur voluptatem soluta sit.', '1974-09-17 10:01:13', '1997-05-09 05:12:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'Dolor id illum neque iste eligendi.', '1972-07-20 14:52:54', '1985-05-20 22:00:33');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'Non enim placeat atque.', '2019-10-13 07:06:22', '2009-06-07 02:53:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'Et assumenda dolores enim ullam et.', '2019-09-10 10:42:09', '1995-03-06 21:16:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'Qui eum nostrum accusantium est.', '2007-12-11 11:33:25', '1975-01-08 23:01:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'Officiis non est nostrum quaerat perferendis.', '1995-04-01 09:00:35', '1985-05-07 20:24:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'Perferendis animi iste maxime nemo illo aliquam numquam.', '2019-12-24 08:26:40', '2020-11-01 12:53:10');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'Ut qui iure sunt cumque laborum qui.', '2012-05-03 10:54:44', '2009-04-10 17:05:31');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'Iure non velit omnis hic tempore officiis.', '2008-08-09 10:31:31', '2000-08-14 18:30:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'Enim aperiam eos eaque deserunt praesentium est amet.', '1989-09-17 11:58:59', '1981-10-29 21:17:51');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'Quibusdam eos sint aut voluptatem.', '2002-01-31 07:14:15', '2006-08-07 07:29:38');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'Et facilis eum dicta maiores ullam eos vel.', '2018-07-17 05:35:23', '2004-03-03 15:32:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'Alias eum veniam id debitis quod.', '1986-04-20 04:11:19', '2002-04-19 00:00:38');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'Necessitatibus dolor veniam quae amet nulla.', '1991-10-10 22:15:48', '2014-08-07 09:08:23');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'Quo pariatur illum consequatur fuga.', '1991-07-07 04:41:20', '2015-11-04 18:36:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'Qui similique molestiae modi qui et sit quo repellendus.', '2013-03-06 14:41:49', '1993-05-23 16:50:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'Libero earum eius expedita dolorem eligendi.', '1997-09-29 13:15:23', '1987-04-13 03:53:08');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'Repudiandae perferendis natus quidem ad aperiam expedita nesciunt natus.', '1977-09-30 17:44:17', '2014-10-18 21:58:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'Excepturi assumenda id quaerat adipisci rerum a accusamus.', '1974-10-07 22:50:39', '2000-03-15 23:19:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'Fugiat non id ipsum.', '2002-04-02 09:26:55', '2000-05-07 02:31:42');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'Consequatur cupiditate beatae et aut et.', '1998-08-30 06:32:24', '2020-06-06 09:18:48');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'Nisi dolore ex et.', '1986-04-29 02:41:49', '1976-05-06 00:37:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'Corrupti modi nulla fuga et ut est est.', '1977-08-17 05:25:20', '1972-01-15 13:34:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'Voluptatem et esse magni enim.', '2015-02-26 16:29:55', '2007-04-09 22:32:28');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'Quia est sit similique autem modi officia quo.', '2004-08-08 19:40:50', '1990-12-31 11:03:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'Iusto magnam animi praesentium aperiam.', '1974-05-16 10:56:08', '1984-10-18 11:16:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'Similique earum molestiae voluptatem quia laborum.', '1987-06-23 10:31:24', '2013-06-08 17:57:24');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'Dolores impedit harum voluptas illum reprehenderit provident.', '1981-05-15 13:04:09', '2017-01-24 18:06:33');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'Autem cum at sint recusandae recusandae sit.', '1992-01-06 11:09:08', '2011-06-24 02:31:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'Porro nulla nam officiis consequatur autem occaecati quidem deserunt.', '1998-07-15 14:40:46', '1986-11-11 12:17:40');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'Et ut rem in autem velit qui rem.', '1975-09-27 01:52:59', '2007-08-13 10:09:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'Odit vero id et omnis dolorum ipsam culpa qui.', '1980-05-19 13:11:22', '2017-12-04 21:15:28');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'Tempore amet distinctio et laudantium.', '2001-04-12 02:32:27', '1991-05-26 10:16:58');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'Odio aliquid quis nihil saepe et earum quia.', '2015-11-23 02:37:47', '2017-12-15 12:47:42');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'Et doloribus velit sapiente aliquid.', '1974-08-11 21:01:14', '2017-11-20 19:14:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'Sunt iste excepturi dicta temporibus non quis.', '1993-02-23 06:58:57', '2001-07-26 16:11:08');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'Eveniet provident inventore sint ut repellat amet.', '1986-06-18 06:10:47', '1989-08-23 21:02:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'Dolorem quisquam id labore similique et.', '2010-10-08 23:17:10', '2018-12-21 04:01:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'Rem et consequatur molestiae.', '2003-04-05 04:06:57', '2004-11-23 09:42:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'Ad possimus voluptatibus hic repellat.', '1988-05-28 06:30:35', '2005-03-18 14:53:07');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'expedita', 35, NULL, 1, '1981-05-26 14:59:13', '1993-09-23 12:38:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'dolorum', 0, NULL, 2, '1997-03-26 03:34:54', '1976-06-12 22:53:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'quia', 911812, NULL, 3, '1994-08-10 12:19:38', '1983-12-27 18:35:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'et', 693, NULL, 4, '1981-08-19 15:38:05', '1994-09-10 19:40:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'soluta', 5228, NULL, 5, '1981-10-12 20:30:01', '2001-06-23 18:37:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'error', 855, NULL, 6, '2018-10-26 08:26:38', '1980-08-03 01:55:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'est', 19176, NULL, 7, '2019-07-13 02:25:14', '1997-04-04 00:11:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'perferendis', 0, NULL, 8, '1981-09-10 20:14:35', '1993-10-20 22:17:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'magnam', 315, NULL, 9, '1987-05-14 13:47:07', '1989-04-22 14:40:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'beatae', 62966057, NULL, 10, '2003-12-10 10:03:54', '1991-08-01 22:34:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'dignissimos', 6540, NULL, 11, '1984-11-15 01:34:06', '2017-01-28 04:05:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'voluptate', 19112, NULL, 12, '1994-12-25 20:36:08', '1988-10-16 02:02:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'temporibus', 0, NULL, 13, '1980-12-09 11:22:05', '1972-04-23 23:25:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'ut', 430691, NULL, 14, '2010-05-10 22:55:30', '2018-03-02 15:19:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'eos', 24189045, NULL, 15, '2017-11-18 04:36:58', '1973-09-01 23:16:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'et', 44337, NULL, 16, '2007-07-14 07:16:50', '2005-01-15 17:38:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'omnis', 6, NULL, 17, '1993-09-07 07:17:47', '2000-11-21 17:25:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'esse', 0, NULL, 18, '2002-08-30 02:02:14', '2011-01-22 11:23:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'ratione', 21, NULL, 19, '1988-07-11 19:54:27', '2019-10-15 03:40:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'aliquam', 0, NULL, 20, '1990-05-28 12:26:31', '1984-10-19 13:19:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'mollitia', 90108241, NULL, 21, '1999-09-09 15:02:12', '1997-09-26 17:59:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'ipsa', 241593, NULL, 22, '2003-09-21 23:52:05', '1980-06-22 02:53:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'et', 47815, NULL, 23, '1986-03-05 00:13:12', '1996-07-13 02:26:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'dolores', 17268028, NULL, 24, '1995-01-12 00:20:34', '2003-11-01 21:33:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'et', 130456, NULL, 25, '1995-12-26 22:32:53', '1985-12-01 00:33:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'et', 48380701, NULL, 26, '1972-08-28 17:01:10', '1981-09-29 12:27:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'at', 357, NULL, 27, '2006-06-01 05:10:27', '1993-03-02 22:00:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'sed', 55649308, NULL, 28, '2004-07-23 02:07:33', '1983-08-29 00:53:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'iure', 461414, NULL, 29, '1987-11-16 00:54:07', '1998-09-08 13:42:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'repudiandae', 53929, NULL, 30, '2006-07-02 07:13:18', '1996-11-03 20:52:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'ducimus', 10819476, NULL, 31, '2013-01-27 06:57:32', '1973-04-06 16:04:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'totam', 29, NULL, 32, '2008-01-09 22:31:30', '2001-10-06 15:18:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'quia', 0, NULL, 33, '1972-09-10 10:00:45', '2012-12-18 12:24:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'nisi', 94532426, NULL, 34, '1998-06-30 18:02:36', '2007-11-27 11:23:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'in', 89428532, NULL, 35, '2014-08-16 04:28:03', '1996-04-02 23:06:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'consequatur', 421, NULL, 36, '2011-10-12 22:17:49', '1987-02-12 19:41:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'velit', 39400904, NULL, 37, '2013-04-22 15:19:33', '2015-01-02 05:52:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'deserunt', 32, NULL, 38, '1995-11-18 21:25:41', '2006-11-07 07:34:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'dolorem', 399749068, NULL, 39, '2019-11-16 10:38:04', '2000-11-14 00:33:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'similique', 64685, NULL, 40, '2019-08-26 08:42:11', '2011-02-22 23:18:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'quia', 18496296, NULL, 41, '2016-04-11 12:33:36', '1970-09-02 10:26:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'cum', 26898, NULL, 42, '2007-11-30 14:00:22', '1980-05-24 10:15:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'consectetur', 8496093, NULL, 43, '1994-07-12 07:39:29', '1975-06-23 07:12:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'mollitia', 8, NULL, 44, '1973-06-21 05:15:55', '2014-12-30 05:21:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'ut', 46739, NULL, 45, '1998-10-27 04:57:21', '2002-06-12 20:48:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'ut', 22113, NULL, 46, '1980-07-26 21:07:40', '2014-01-13 22:15:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'assumenda', 34173, NULL, 47, '2014-04-27 19:49:36', '2000-10-18 19:56:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'quo', 50765988, NULL, 48, '2018-12-25 03:54:49', '1985-03-22 17:13:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'suscipit', 817633294, NULL, 49, '1997-05-19 00:43:48', '2005-06-03 07:15:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'amet', 0, NULL, 50, '1971-04-18 15:55:44', '1988-08-21 04:15:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'ut', 75949177, NULL, 51, '1994-07-27 05:48:47', '1988-06-17 05:09:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'voluptas', 0, NULL, 52, '2017-11-26 03:54:23', '2008-05-04 22:47:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'corrupti', 87, NULL, 53, '1980-05-13 16:15:33', '1989-11-02 16:46:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'omnis', 333279, NULL, 54, '2020-05-12 03:51:23', '1996-08-29 22:01:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'qui', 58979, NULL, 55, '2006-09-05 23:11:04', '2020-11-18 17:14:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'minima', 505905, NULL, 56, '1988-11-28 08:19:57', '2000-04-03 01:40:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'reprehenderit', 909964, NULL, 57, '1970-11-22 04:46:29', '1971-01-08 07:21:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'aut', 344, NULL, 58, '2020-03-13 22:13:47', '1991-04-18 23:19:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'iure', 640872604, NULL, 59, '1997-05-26 15:06:54', '1999-12-30 12:36:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'rem', 6, NULL, 60, '2001-06-06 09:29:45', '2007-11-07 16:10:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'ut', 0, NULL, 61, '1986-02-01 04:27:35', '2010-08-05 05:36:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'minima', 356, NULL, 62, '2003-12-06 16:09:20', '1981-01-30 05:03:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'asperiores', 0, NULL, 63, '1989-01-28 17:40:12', '2021-01-20 05:38:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'culpa', 675844123, NULL, 64, '1983-07-07 23:22:36', '2002-11-12 07:46:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'id', 2, NULL, 65, '1988-10-16 06:07:41', '2015-12-24 04:37:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'excepturi', 16078, NULL, 66, '2005-04-30 20:39:38', '2005-08-26 13:02:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'maxime', 35632, NULL, 67, '2002-09-01 01:28:46', '1977-11-19 18:14:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'id', 18351, NULL, 68, '1980-12-23 00:35:27', '1995-05-24 05:52:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'autem', 602, NULL, 69, '1988-08-05 14:02:05', '1982-05-25 09:09:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'ut', 417056789, NULL, 70, '2003-07-30 01:50:49', '2018-11-02 20:42:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'et', 0, NULL, 71, '2003-04-25 13:32:44', '1972-04-23 01:20:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'quia', 7864108, NULL, 72, '2019-11-17 13:06:27', '1983-01-31 13:30:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'voluptas', 12380284, NULL, 73, '2009-07-15 07:09:39', '1991-01-14 00:36:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'sunt', 6, NULL, 74, '1971-07-07 17:19:14', '2000-12-15 18:30:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'fugit', 829981, NULL, 75, '2010-09-13 09:44:51', '1986-06-30 23:36:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'voluptatem', 60838164, NULL, 76, '2001-03-02 19:13:51', '2015-03-16 16:04:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'nisi', 86179, NULL, 77, '2016-08-06 16:33:27', '1997-10-17 19:34:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'qui', 51987164, NULL, 78, '2010-11-10 16:17:56', '2017-04-13 07:00:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'sunt', 67, NULL, 79, '1973-01-19 15:42:19', '1989-09-30 21:44:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'eaque', 95415798, NULL, 80, '1992-09-25 11:54:58', '1974-06-16 19:16:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'autem', 1993, NULL, 81, '2004-02-20 17:02:47', '1979-10-29 09:35:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'enim', 72006, NULL, 82, '2016-02-01 10:20:41', '1986-06-21 20:51:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'deserunt', 2074, NULL, 83, '2017-12-16 15:03:12', '1996-02-17 06:55:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'fugiat', 344393436, NULL, 84, '1981-07-05 02:21:04', '1991-07-29 16:27:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'totam', 6328, NULL, 85, '1978-12-29 23:39:38', '1975-05-11 18:55:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'voluptatem', 29194113, NULL, 86, '2016-03-23 23:13:35', '1998-05-19 06:11:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'perspiciatis', 9107, NULL, 87, '1981-10-17 02:28:58', '2003-06-18 18:58:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'distinctio', 53814590, NULL, 88, '2005-10-23 09:06:28', '1986-06-24 21:51:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'molestias', 70, NULL, 89, '2016-12-12 10:33:07', '2019-12-29 03:07:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'unde', 858, NULL, 90, '1970-06-09 01:54:50', '1988-09-16 18:29:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'neque', 34360, NULL, 91, '1978-08-08 09:31:33', '1996-11-26 09:16:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'voluptates', 416, NULL, 92, '2009-07-03 10:59:23', '1977-05-02 22:37:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'fuga', 674714517, NULL, 93, '1985-09-03 13:52:29', '2012-01-21 23:59:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'fugit', 555, NULL, 94, '2015-06-05 03:46:33', '1998-12-29 03:30:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'ad', 33393, NULL, 95, '1983-11-12 00:54:34', '2002-10-21 19:14:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'ducimus', 378646685, NULL, 96, '2003-01-06 11:58:01', '1995-06-27 02:28:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'soluta', 0, NULL, 97, '2002-06-30 05:08:45', '1977-12-27 14:48:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'necessitatibus', 53163215, NULL, 98, '2013-10-31 09:05:17', '1987-03-02 08:25:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'distinctio', 40005, NULL, 99, '1979-11-23 21:29:20', '1973-01-16 15:07:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'deleniti', 268411971, NULL, 100, '2017-10-17 03:43:33', '2013-10-18 07:11:41');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'nihil', '1983-07-12 15:19:21', '1985-07-14 21:44:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'sint', '2016-09-19 19:31:05', '1991-12-23 09:25:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'et', '2005-08-19 21:17:22', '1990-01-15 05:40:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'magni', '2016-08-10 04:09:17', '1994-08-22 17:21:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'impedit', '2017-08-18 18:51:00', '1992-03-18 19:39:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'ut', '1982-08-25 06:25:01', '1976-10-07 20:41:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'explicabo', '1975-10-17 20:35:53', '1984-09-17 15:16:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'odit', '2003-07-29 23:30:12', '1982-04-06 16:43:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'blanditiis', '2014-03-23 18:51:18', '2006-02-05 16:19:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'dolorum', '2001-11-26 14:54:28', '2019-03-21 10:18:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'itaque', '1992-08-22 20:03:31', '1977-04-10 15:39:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'possimus', '2002-04-01 15:28:39', '2000-08-02 18:25:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'id', '2000-05-22 18:33:54', '2004-11-23 09:08:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'autem', '1994-02-15 23:44:01', '1992-03-08 18:00:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'ipsa', '1989-01-16 01:30:17', '1998-09-09 15:06:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'provident', '2014-09-06 05:49:59', '2019-10-20 10:16:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'velit', '2014-12-03 04:48:12', '1991-08-31 20:33:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'quis', '2008-12-11 10:12:23', '2001-05-29 02:47:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'eius', '2006-11-03 07:25:52', '1997-06-08 20:58:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'ex', '2004-09-05 17:47:09', '2018-03-02 22:22:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'voluptate', '1989-04-02 11:43:11', '2012-01-30 07:53:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'minus', '1976-04-10 11:19:05', '1980-09-09 08:05:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'aut', '1999-04-13 11:16:15', '2005-06-27 00:40:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'vel', '2018-04-08 09:24:10', '1981-04-27 22:24:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'voluptates', '2018-11-26 06:33:10', '1971-08-10 17:54:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'quidem', '1981-09-27 23:02:57', '1991-04-01 12:57:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'praesentium', '2010-12-05 04:51:44', '1979-12-24 15:19:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'occaecati', '1992-07-30 04:52:01', '2015-06-21 16:58:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'est', '2001-03-11 20:07:27', '1972-08-26 22:48:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'culpa', '1994-12-13 20:28:14', '1987-05-16 22:02:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'unde', '1996-04-24 20:37:45', '2015-04-04 13:03:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'cum', '2005-12-07 16:03:14', '2017-05-23 00:20:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'voluptatibus', '1995-02-21 20:17:09', '1980-03-03 02:57:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'alias', '1974-05-19 07:28:09', '1980-10-02 03:03:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'hic', '2017-03-23 06:25:16', '1994-12-30 00:09:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'quibusdam', '2007-08-22 11:31:36', '1975-02-27 03:58:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'voluptas', '2004-06-15 09:32:15', '1973-11-06 17:21:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'perferendis', '1991-09-13 12:40:39', '1998-08-10 05:52:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'nostrum', '1998-04-11 14:04:17', '1993-10-14 04:21:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'quia', '2009-02-23 07:23:47', '2016-03-13 21:54:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'similique', '1994-11-17 19:57:48', '2003-10-25 18:34:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'perspiciatis', '2013-06-24 22:52:19', '2001-01-28 09:34:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'at', '1981-03-02 06:49:45', '2015-06-10 22:57:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'eligendi', '1971-02-20 03:27:37', '2016-03-20 19:56:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'commodi', '1979-04-04 17:18:03', '2007-06-28 02:46:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'asperiores', '1990-08-20 00:55:46', '1987-02-02 05:24:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'consequatur', '2011-03-02 13:01:06', '2014-12-13 13:51:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'in', '2011-02-14 14:32:41', '2015-06-12 15:28:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'enim', '1996-09-23 04:57:47', '1989-04-06 14:32:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'exercitationem', '1976-11-30 14:46:36', '1997-08-18 17:09:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'distinctio', '2002-01-06 10:43:21', '1982-10-27 02:56:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'officiis', '1971-08-03 04:38:47', '1995-06-15 21:03:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'incidunt', '2003-03-19 06:04:31', '1992-03-05 01:45:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'molestiae', '2018-08-21 19:00:57', '1986-03-10 23:49:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'ea', '1972-06-08 15:12:07', '1996-10-11 04:32:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'non', '1970-05-12 21:59:39', '1981-10-29 17:39:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'fugit', '2012-11-16 19:53:56', '1971-01-08 19:31:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'laudantium', '2015-05-08 07:05:00', '2013-11-18 04:12:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'reiciendis', '2004-03-30 17:39:19', '2006-07-13 00:27:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'sequi', '2000-02-24 12:52:30', '1993-02-20 15:28:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'sapiente', '1997-09-27 20:40:45', '2002-03-20 22:43:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'nam', '1985-01-09 20:39:30', '1993-08-29 17:47:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'modi', '1977-07-13 15:46:42', '2008-05-11 11:44:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'atque', '1992-08-06 16:04:57', '2014-12-12 04:13:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'sit', '2001-11-13 16:48:55', '1974-01-17 17:19:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'dicta', '1994-01-29 15:51:48', '2015-10-13 11:17:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'omnis', '1998-12-24 05:08:49', '2005-06-05 13:50:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'quod', '2010-08-20 17:26:07', '2012-01-27 04:56:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'ab', '1970-04-01 03:20:53', '1991-02-05 05:01:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'amet', '1987-10-28 07:45:09', '1971-06-21 01:23:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'mollitia', '2016-10-26 11:58:53', '2013-01-13 10:54:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'consequuntur', '1988-07-28 13:21:57', '2002-05-18 06:34:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'ipsum', '1994-05-15 08:44:50', '1983-07-22 10:45:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'suscipit', '2012-08-14 20:16:21', '1997-09-02 18:53:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'sunt', '2013-05-28 14:25:31', '1986-12-28 17:10:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'natus', '1991-10-18 00:31:00', '1994-05-24 17:42:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'qui', '1975-09-23 02:52:34', '1978-03-13 19:41:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'dolorem', '1975-03-26 06:49:17', '2020-01-25 10:34:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'aspernatur', '2004-07-06 05:41:02', '2006-04-10 07:43:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'earum', '1986-09-28 19:01:43', '2004-08-28 09:21:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'recusandae', '2014-09-26 17:35:04', '2016-08-02 05:06:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'sed', '2010-10-18 13:58:29', '1971-12-01 07:40:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'dolores', '1997-07-20 17:47:00', '1997-03-24 12:05:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'eaque', '1981-12-18 15:15:39', '1994-02-05 10:35:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'ratione', '2009-06-25 08:46:04', '2016-01-11 03:33:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'laboriosam', '1987-04-24 04:18:48', '1988-07-31 00:10:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'eos', '1997-09-29 20:12:01', '1988-06-13 00:09:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'repellendus', '1972-11-30 00:15:55', '1990-05-22 07:19:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'eveniet', '1984-05-17 06:06:43', '1991-07-16 20:08:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'rerum', '2008-03-23 00:18:23', '1989-11-08 13:13:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'quam', '2005-05-14 07:21:00', '1970-05-08 21:33:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'voluptatem', '1990-08-31 00:30:55', '2012-09-13 03:15:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'officia', '2001-06-03 19:05:00', '2019-10-26 22:54:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'labore', '2011-07-23 12:21:32', '1982-01-06 20:40:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'quisquam', '1976-02-05 15:06:29', '1987-10-22 01:59:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'debitis', '2019-11-11 17:22:53', '1978-09-05 00:37:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'a', '1974-08-23 04:45:40', '2004-08-25 17:38:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'architecto', '2020-02-21 10:35:08', '1975-02-16 02:57:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'nulla', '1983-07-14 03:24:51', '2011-10-21 13:34:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'aperiam', '2016-09-08 10:07:26', '1990-12-12 04:49:08');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности сообщения',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'Beatae fugiat ullam accusantium expedita quis voluptas ratione. Hic sed possimus iste ipsum voluptatibus. Qui rerum qui nihil veritatis consequuntur optio. Laudantium a eius et.', 0, 0, '1995-04-24 00:20:36', '1984-08-03 21:19:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'In voluptas qui rerum corrupti voluptas officia. Officiis eaque et et similique eos qui. Dolorum consequatur esse velit iste quis aut quia.', 1, 1, '2021-02-11 00:06:34', '2018-06-02 15:42:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'Tenetur dicta quo maiores doloremque sapiente cupiditate maxime. Repellendus distinctio delectus est illo adipisci perspiciatis illum. Repellat voluptas odit odit dolore illum et. Incidunt ut est doloribus et.', 1, 1, '2015-12-09 13:58:51', '2011-08-17 23:12:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'Sed eos molestiae voluptatem nihil numquam error. Reiciendis et blanditiis non iure molestiae. Culpa laborum necessitatibus expedita omnis. Fuga necessitatibus et deleniti et.', 0, 1, '1994-07-23 19:36:57', '2015-07-30 21:27:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'Aliquam porro sit qui voluptatem minus autem et. Quod ipsum ea et et aut aut tenetur qui. Eos expedita non odit quia aut.', 0, 0, '1992-05-15 16:01:27', '2000-05-11 19:42:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'Perferendis ipsum dolor rerum incidunt dolorem corporis eos cumque. Qui officiis voluptatibus dignissimos eum. Aut laudantium nisi perspiciatis quos ullam. Dolorem neque a ut reprehenderit.', 1, 1, '2002-02-23 11:20:02', '2010-10-30 17:52:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 7, 7, 'Excepturi nihil natus excepturi ut error. Ut accusantium aut debitis et inventore excepturi cum sequi. Similique ipsam dolores aut.', 1, 0, '1972-02-22 16:25:30', '1991-06-28 04:32:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'Et debitis et consequuntur. Blanditiis facere quisquam dolor dignissimos labore. Quidem est minus et asperiores autem omnis excepturi porro.', 1, 0, '2018-11-20 20:30:30', '2007-05-19 15:32:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 9, 9, 'Molestias voluptas aliquid molestiae ut non nesciunt vel. Aut voluptates quis aperiam totam. Nihil dolorem quod odio.', 1, 0, '1986-09-04 12:26:32', '1995-05-16 18:19:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 10, 10, 'Consequuntur qui non voluptatem quia quae et nulla. Corrupti aliquam aut voluptatem aut est. Amet et iste magnam quia. Rerum quam voluptatum et sint.', 0, 1, '1977-05-15 01:37:24', '1975-06-29 08:02:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 11, 'Quis aliquid culpa qui nulla animi enim quas sint. Rerum eum nihil qui eos. Odit sequi necessitatibus rerum voluptatibus. Molestias voluptatem assumenda autem ut recusandae voluptates.', 0, 1, '1993-09-26 18:02:14', '1984-11-15 06:02:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 12, 12, 'Nihil sunt officiis et perferendis. Modi quis eos ut sed ipsa corrupti quos. Illo quasi aliquid praesentium voluptatum deleniti quia eum. Fuga ut molestiae eos libero.', 0, 1, '1974-03-01 00:15:09', '1997-05-07 03:12:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 13, 13, 'Non rem consectetur nobis debitis voluptates. Deserunt aut mollitia repudiandae est praesentium. Maiores quos libero officiis.', 1, 0, '1975-10-13 21:03:30', '1974-12-22 10:14:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 14, 14, 'Non optio itaque totam est possimus iste. Saepe quas veritatis quo. Ut impedit suscipit ut eos.', 1, 0, '2019-10-28 05:18:43', '1976-06-22 13:26:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 15, 15, 'Explicabo aut amet ex. Ullam eum in qui quia aut laboriosam quod. Error perferendis corrupti illum aliquam et enim.', 0, 0, '1986-04-25 16:07:18', '2013-11-11 09:05:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 16, 16, 'Nihil asperiores est velit expedita autem explicabo. Qui cupiditate dolorem nihil dolor rerum molestias. Id suscipit iusto eius.', 0, 1, '1997-09-18 19:51:53', '1989-03-10 07:13:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 17, 17, 'Eius quaerat dolores soluta non commodi cumque tempora. Ipsam est eos dolor assumenda autem. Aut neque ea facere sed saepe amet quisquam. Dolorem veniam velit ea id quae iste perferendis in. Consequuntur distinctio accusantium aut asperiores.', 1, 0, '1998-08-05 12:15:13', '2002-07-02 10:01:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 18, 'Quas assumenda non eum occaecati qui quibusdam et. Quasi dolores perferendis suscipit tempore mollitia inventore. Harum dolor vero voluptas ut. Fugit non quos dolor assumenda ullam qui perferendis.', 1, 0, '2011-04-01 01:38:07', '1977-04-09 06:15:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'Qui vero omnis aut doloribus et saepe. Consequuntur qui dicta optio expedita qui. Quia occaecati modi quia.', 0, 1, '1979-05-19 17:23:43', '1992-01-01 22:16:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 20, 20, 'Consequatur delectus et animi. Quia incidunt quasi ex libero maxime officiis.', 0, 0, '1993-05-27 12:15:34', '1975-07-04 16:00:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 21, 21, 'Qui illo rerum molestiae rerum. Rem temporibus corporis minus aut reprehenderit hic fugiat. Quia eos maiores nam aut.', 1, 1, '1994-05-31 01:30:58', '2003-10-04 16:45:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 22, 22, 'Ut aut omnis rerum. Quibusdam molestiae mollitia rerum in illo perspiciatis et. Nostrum alias iusto quam tenetur ut dignissimos voluptate quae. Impedit iusto itaque alias provident occaecati.', 0, 1, '2009-07-20 05:53:59', '1985-09-26 06:09:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 23, 23, 'Illo dolorum dolorum fugiat molestiae eveniet deserunt impedit. Expedita ea assumenda dolore et harum. Officiis odit officiis perferendis sed sint in consectetur.', 0, 1, '1997-12-16 07:37:56', '1992-10-25 05:52:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 24, 24, 'Quisquam quis necessitatibus a quasi dolores. Ullam facere voluptatibus est ut. Iste quam laudantium quisquam sunt facere alias.', 0, 1, '1989-08-01 16:37:54', '1991-08-20 05:48:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 25, 25, 'Ut inventore ut ea aut repellat rem. Aperiam est nisi voluptas et temporibus itaque ut. Magni voluptas unde quos voluptatem qui harum. Voluptas debitis aut incidunt provident.', 1, 1, '2000-12-15 08:02:32', '2018-08-22 09:00:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 26, 26, 'Veniam fugiat doloremque quas autem ex. Vel corporis molestiae fugit nobis nobis blanditiis. Earum pariatur earum dolorum rerum quod ut.', 0, 1, '1995-06-21 18:53:53', '2009-10-30 20:49:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 27, 27, 'Ab sed iure voluptatem vitae. Ut qui rem nemo repellat. Dolor fugiat consequatur eum omnis magni ipsum aut. Quia repellat qui fugit voluptatum voluptatum quasi maiores.', 0, 0, '1975-07-18 12:16:36', '2004-10-07 01:32:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 28, 28, 'Perspiciatis architecto impedit commodi. Incidunt debitis est id laboriosam maiores possimus.', 1, 1, '1988-11-27 03:37:33', '2011-05-06 02:09:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 29, 29, 'Esse sint voluptas sint dignissimos alias exercitationem ea. Fugiat id natus nulla cum mollitia delectus. Similique dicta veritatis ut ut ut.', 1, 1, '2010-01-01 20:18:45', '1970-01-14 05:56:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 30, 30, 'Facilis et doloremque laborum est corrupti doloribus. Ut nemo veniam unde ut.', 0, 1, '1981-07-27 09:30:23', '1970-09-25 10:14:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 31, 31, 'Eos sequi rerum unde quis commodi odit. Rerum vero esse deleniti atque voluptatem eum eos. In perferendis culpa ab pariatur consequatur est consequuntur. Dolor et quia fugit unde et sit minus.', 1, 1, '2020-11-30 03:58:00', '1990-04-05 16:33:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 32, 32, 'Voluptatem molestiae hic mollitia dolor non. Quia hic voluptas ea nisi excepturi beatae minus. Et saepe exercitationem alias. Beatae aut dolor sunt tempora sapiente ut qui.', 1, 0, '1980-05-20 18:49:22', '2003-02-18 08:27:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 33, 33, 'Aliquid at praesentium et provident quisquam. Provident sint fugiat in amet fugiat. Rem consequuntur placeat eum ducimus cumque animi. Mollitia minus dolor rerum enim.', 1, 0, '1976-07-20 13:31:57', '1994-12-09 04:16:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 34, 34, 'Sit sunt quidem et quia. Inventore corporis quae odit. Dicta officiis enim dicta aut. Cupiditate libero enim alias voluptas in neque voluptatum.', 0, 0, '1983-11-27 22:10:09', '1981-11-30 04:47:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 35, 35, 'Adipisci consequatur voluptate ipsum voluptas ab. Voluptate ea et eligendi ut dolorum. Harum molestiae deleniti et veritatis vero ea. Et reiciendis dolorum et magni. Sunt minima omnis consequatur et voluptas aliquid consequuntur inventore.', 0, 0, '1979-08-06 16:23:58', '1972-09-14 17:55:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 36, 36, 'Quia sunt impedit occaecati officia quia. Doloremque temporibus nostrum illo aspernatur. Animi quod maxime eum atque omnis.', 0, 0, '1999-09-18 01:12:52', '2007-01-01 10:56:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 37, 37, 'Consectetur perferendis ducimus eos. Cum quibusdam sed vitae illum aut aut officia eos. Est dolores et reprehenderit itaque necessitatibus sint optio.', 0, 1, '2010-04-07 03:53:46', '1990-06-06 22:13:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 38, 38, 'Qui ea saepe perferendis unde voluptate dolorem molestiae. Inventore nobis repellat est quam. Ut facilis molestiae soluta ab. Repellendus vel sed voluptatem nostrum.', 0, 1, '1971-08-07 08:41:52', '1977-02-15 16:53:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 39, 39, 'Sed voluptas fuga minima quibusdam dolorem sed. Ut quos aliquam esse et eius culpa repellat. Deserunt magnam accusamus perspiciatis necessitatibus.', 0, 1, '1995-07-18 11:01:47', '1993-10-31 19:14:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 40, 40, 'Quia nihil sapiente molestiae nesciunt. Temporibus dolor blanditiis aut est sed aut illo. Consequatur modi consequatur fugiat sequi minima distinctio esse enim. Sunt porro ut itaque velit nulla praesentium. Voluptatem non in sapiente architecto facilis.', 0, 0, '2005-02-07 17:09:28', '1971-08-17 02:04:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 41, 'Est quos mollitia quasi voluptatem ducimus est quis ea. Ipsam quod quo soluta eaque vel repellendus saepe veritatis. Et dolorum ut fuga consequuntur aut sequi nam voluptatem.', 0, 0, '1993-07-28 10:56:48', '2018-08-16 07:11:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 42, 42, 'Ea aspernatur molestiae debitis facilis corporis similique accusamus. Assumenda rerum libero fugiat. Aut id id ut quibusdam numquam sit.', 0, 0, '1996-08-26 21:50:02', '1999-12-31 06:22:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 43, 43, 'Temporibus quas quas quibusdam at quia velit repellendus. Est aut aut laboriosam voluptatibus aliquid autem aspernatur. Temporibus eius autem rerum nihil optio neque harum. Sequi dolor ut vel amet repellat consequatur.', 0, 1, '1979-09-15 08:12:58', '1977-10-06 05:02:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 44, 44, 'Et velit iste exercitationem ut. Corporis corporis quisquam corrupti omnis. Beatae fugiat autem laboriosam et ut ex omnis.', 1, 0, '1993-09-26 04:51:55', '2010-02-20 03:33:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 45, 45, 'Dolores qui necessitatibus iure. Et excepturi et at nihil minus commodi. Est delectus magni impedit et sint quibusdam ad.', 0, 1, '1985-01-05 03:02:16', '2003-04-12 22:44:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 46, 46, 'Praesentium perferendis ad ut quia error. In quae et odio expedita reprehenderit recusandae sint. Dolor aut et deserunt aut neque qui voluptatibus. Voluptatum quae ducimus molestias occaecati et.', 1, 1, '2002-06-26 05:26:19', '2012-06-07 01:19:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 47, 47, 'Tenetur cumque vel autem est pariatur repellendus impedit. Accusamus soluta ut quasi ut dolores. Vero aut eveniet quo libero optio.', 0, 0, '2006-02-12 13:16:28', '2012-03-06 11:28:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 48, 48, 'Cum mollitia et adipisci voluptatibus doloremque nihil. Quod quos dolorem eveniet porro. Voluptatem et suscipit nesciunt nesciunt recusandae.', 1, 0, '2019-07-21 06:59:34', '1974-06-25 04:57:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 49, 49, 'Dolores suscipit distinctio enim autem doloremque. Velit reprehenderit non et est ut est dolores. Laudantium qui ut atque qui totam id.', 1, 0, '1991-03-17 17:33:57', '1990-09-23 02:17:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 50, 50, 'Odio occaecati libero ut deleniti non et. Architecto dolorum autem sunt. Aut quo deserunt odit quia optio aperiam sint. Dolorem est voluptas qui.', 1, 0, '1985-04-22 05:51:45', '2013-08-24 15:06:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 51, 51, 'Animi aut facilis earum iure. Sit fugit quis labore sed neque iusto cumque.', 1, 0, '1996-04-20 20:58:58', '1978-12-12 19:48:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 52, 52, 'Sed id sequi aliquam quisquam animi doloribus. Est cum voluptatem ea amet animi.', 1, 1, '1981-09-26 09:06:36', '1974-09-08 16:45:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 53, 53, 'Molestias quisquam laborum dolore quidem eius. Minus earum aut illum dolores. Voluptas eligendi qui quos.', 0, 1, '2012-08-23 06:36:30', '1975-07-19 14:05:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 54, 54, 'Perspiciatis quae porro voluptatibus ut non minima. Reprehenderit voluptatem voluptatem ipsum non in debitis non.', 1, 1, '1977-06-01 14:05:35', '1981-11-28 19:00:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 55, 55, 'Aperiam iure alias fugiat omnis impedit. Consequatur consectetur eum minus repellat. Velit inventore labore commodi voluptas voluptatem quisquam. Ea possimus corporis accusantium repellat ea labore accusamus.', 0, 1, '2008-04-29 12:07:49', '2010-03-31 02:21:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 56, 56, 'Enim fugiat perferendis id a vero qui. Occaecati qui quia delectus consequatur illum quia temporibus. Autem facere autem commodi incidunt fuga. Qui quia inventore et voluptatem.', 0, 0, '2002-01-17 22:08:25', '2007-07-12 04:38:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 57, 57, 'Accusamus quia officiis ut quaerat molestiae. Quisquam odio et quas ea adipisci. Incidunt velit est qui facere numquam sunt. Magni fugiat distinctio doloremque dolorum facilis. Dolorem nostrum corporis molestias est sequi quibusdam in.', 1, 0, '1976-05-15 22:28:31', '2008-10-23 21:26:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 58, 'Voluptas ad possimus id neque rerum saepe provident. Eum asperiores sit consequatur voluptatibus facere. Veniam et distinctio ipsum deserunt.', 1, 0, '2007-09-17 06:02:32', '1978-08-29 01:37:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 59, 59, 'Consequatur dolor est facilis sed exercitationem sed necessitatibus. Vel eum provident consequatur ut. Incidunt maxime odit fugit amet esse occaecati temporibus.', 0, 1, '2004-04-09 05:04:21', '2017-10-28 00:40:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 60, 60, 'Praesentium aut delectus possimus dolor. Quia quo aut ut ut aut saepe.', 1, 0, '1994-07-23 16:11:24', '1995-04-22 08:49:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 61, 61, 'Dolorum quibusdam consequuntur sequi dicta. Velit dolorum harum sint consectetur aut numquam vero nihil. Magnam amet ut molestiae ipsam qui cumque quod ducimus. Aut est eius ipsa adipisci facilis possimus sit.', 0, 1, '2005-05-26 22:11:12', '1991-04-11 17:38:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 62, 62, 'Et ut est voluptate. Magni labore totam omnis maxime ea architecto. Sequi totam accusantium qui reprehenderit consectetur nihil dignissimos. Aliquid repudiandae ut molestiae explicabo numquam deleniti.', 0, 1, '1981-06-21 13:27:41', '1974-02-17 14:08:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 63, 63, 'Necessitatibus est tempora quia at voluptatem. Quidem inventore vel repudiandae sit mollitia quae quasi. Nemo explicabo possimus doloremque unde. Vel facilis ipsum dolor.', 0, 1, '1990-03-16 14:32:56', '1982-01-19 19:02:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 64, 64, 'Quis culpa et in porro molestias. Accusantium adipisci voluptatem aut voluptatum dolorem rerum. Animi iusto qui excepturi at animi. Fugiat alias nulla inventore aut amet.', 1, 1, '1986-11-26 11:36:53', '2013-07-11 17:33:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 65, 65, 'Rerum dolor ad corrupti perspiciatis temporibus. Assumenda consequatur ad dignissimos blanditiis hic est magni. Et numquam sed distinctio dignissimos. Nihil earum perspiciatis qui iure tempore velit. Quisquam ea molestiae quo iste et.', 1, 1, '2001-03-26 14:51:56', '2001-01-26 16:08:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 66, 66, 'Vel autem unde ut ad. Ab rerum quidem amet vel magnam. Itaque consequatur ut iste voluptatem ad suscipit ut quod. Porro fuga sit aperiam et et est.', 1, 0, '1987-04-21 19:01:50', '1991-10-19 15:22:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 67, 67, 'Fugit earum in cum atque rerum alias impedit. Non unde voluptatum voluptas reiciendis velit ea quis. Ipsam sit dolorum in qui quidem.', 1, 0, '1997-11-05 01:49:19', '1972-05-22 19:46:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 68, 68, 'Est porro nulla quos voluptate praesentium molestiae architecto. Illum nulla earum autem voluptatem. Autem magni quas est nam sunt ut.', 0, 0, '2019-06-20 22:04:27', '2000-03-21 15:43:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 69, 69, 'Impedit quis corporis et quia voluptas est. Illo temporibus magnam est omnis ut illum. Eum itaque esse ea vel accusamus.', 1, 1, '1987-01-17 08:45:07', '2006-04-01 04:27:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 70, 'Qui quos harum quo eligendi iusto ad voluptatibus. Ipsum qui fuga dolore voluptas eos quis. Aliquid saepe rerum reprehenderit maxime dicta omnis sapiente.', 0, 0, '1991-12-21 20:16:06', '2011-12-31 10:16:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 71, 71, 'Eligendi sit et perspiciatis reiciendis sapiente iste. Temporibus harum rerum consequatur. Est quos sapiente doloremque aperiam ipsam.', 1, 1, '1996-03-05 22:58:50', '2020-04-24 01:54:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 72, 72, 'Nulla quae velit dolorum vel autem placeat. Similique cum quis tempora in rerum. Labore est iste nisi quaerat ut et. Vero quos architecto asperiores rerum tempora et.', 0, 1, '2001-11-21 02:43:52', '1995-09-28 14:56:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 73, 73, 'A illum similique odit ipsa consequatur. Modi enim nesciunt voluptas a iusto. Magni rerum quasi ut omnis consequatur culpa dolor iusto. Corrupti voluptatum et ipsa qui ex vitae.', 0, 1, '1980-07-24 23:15:26', '1993-09-17 05:08:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 74, 74, 'Ipsa consectetur autem animi sint. Accusamus deleniti ut quia asperiores. Ut officia quae nulla reprehenderit harum repudiandae et quae. Rem mollitia consequatur voluptatibus quod rem.', 1, 0, '1978-05-15 13:36:00', '2021-02-17 06:40:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 75, 75, 'Quia ad ut quo odit. Laudantium minima qui accusantium dolores eaque quidem porro. Amet quia tempore odio blanditiis facilis sit odit. Sunt nam vero ipsa officia.', 0, 0, '1986-04-02 10:23:47', '2003-05-10 22:02:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 76, 76, 'Quo est laborum rerum. Ea sequi repellat sit quod sit est quisquam. Ratione voluptate omnis et quia mollitia aliquid. Laudantium provident voluptate molestiae delectus aperiam eos perferendis sit.', 0, 1, '1979-06-06 05:34:59', '2009-03-02 16:35:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 77, 77, 'Et rerum vel delectus voluptatem repellat numquam aut. Velit at omnis eum eum ea quia hic.', 0, 1, '1979-06-06 02:23:18', '2010-07-22 13:23:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 78, 78, 'Et omnis voluptatibus dolor. Et odio possimus in et quis saepe et. Dolores omnis officia pariatur dolorem officiis maiores sit aut. Dicta culpa maiores et omnis eum.', 1, 1, '2005-12-02 07:54:39', '1985-01-24 10:32:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 79, 79, 'Vitae et facere dicta totam. Illo accusantium accusantium quod ut consequatur voluptas. Porro illo quod nam dolores. Architecto sed et maxime dolorem qui.', 1, 0, '1993-09-16 06:57:17', '2008-05-16 13:41:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 80, 80, 'Itaque qui vero beatae officiis. Id similique nesciunt nostrum quia sunt omnis. Amet consequatur dicta dolores.', 0, 1, '1997-06-12 03:35:30', '2002-08-17 15:27:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 81, 81, 'Aliquam expedita sed ea ad ut. Labore odio distinctio pariatur quas provident. Quis ad nostrum voluptas nam alias. Saepe ea doloremque et rerum est id recusandae.', 0, 1, '1990-04-20 08:29:56', '2009-12-02 09:52:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 82, 'Amet quia natus quod. Quod voluptates dicta illum dolores et in. Corrupti est beatae harum repudiandae earum maxime asperiores. Non nemo doloremque mollitia quis adipisci qui. Harum laboriosam quo deleniti voluptatem rerum non id veritatis.', 1, 0, '1982-09-10 21:20:41', '1980-10-27 23:34:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 83, 83, 'Esse quibusdam modi voluptas. Dolor voluptas laboriosam culpa. Omnis porro sint quo aut. Est magni neque at placeat aut sequi eveniet.', 1, 1, '1988-02-02 19:28:13', '1972-11-13 14:31:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 84, 84, 'Nulla est ut voluptas porro fugit et voluptas. Non at voluptatum provident quam.', 0, 0, '1995-07-06 10:38:46', '1998-07-11 14:49:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 85, 85, 'Recusandae reiciendis harum reprehenderit doloremque voluptatum sequi ab. Ullam voluptatem qui quia dolores. Pariatur suscipit rerum officia incidunt nam eum aut beatae. Magnam perferendis repellat deleniti corporis beatae incidunt atque.', 1, 1, '1995-07-17 08:29:49', '1998-10-10 21:34:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 86, 86, 'Tenetur amet placeat a cupiditate laboriosam placeat. Excepturi consectetur temporibus odio ad quia. Voluptate veritatis quae aperiam omnis ut accusamus nostrum. Eum accusantium tenetur ipsum magnam. Et non accusamus minima quibusdam minus quidem aliquid esse.', 0, 0, '1976-11-29 11:53:09', '1978-03-05 01:53:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 87, 87, 'Sed incidunt porro maiores eligendi voluptatem totam dolores. A et dicta occaecati et sed vel. Asperiores ducimus quos eum alias odio.', 1, 0, '1972-02-25 05:07:39', '2003-08-19 02:38:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 88, 88, 'In sed sapiente omnis qui nisi rerum voluptas. Corporis quod qui consequuntur non pariatur. Voluptatem asperiores aliquid quo voluptatum magnam voluptatibus tenetur. Sint sunt placeat accusamus placeat aut est.', 1, 0, '2002-11-29 18:11:16', '1986-12-06 00:44:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 89, 89, 'Ullam eum blanditiis sed autem vero harum. Sit modi dolores laborum dolores minus repellat. Corrupti at accusantium corrupti dolore a minus. Beatae corrupti error ex quia. Voluptatibus neque incidunt impedit velit.', 0, 0, '1995-08-09 05:27:39', '1993-10-22 16:05:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 90, 90, 'Voluptatum est beatae nisi dolore. Qui optio non atque est laudantium. Iusto minus et exercitationem aperiam at ut.', 0, 0, '1986-12-30 20:04:42', '2010-07-10 17:27:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 91, 91, 'Illo qui laboriosam fuga ipsam. Est nostrum doloremque quae praesentium. Unde omnis consequatur amet enim est eos. Harum perferendis autem odit ipsum quia.', 1, 0, '1979-12-04 00:07:57', '2019-06-10 15:46:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 92, 'Fugiat assumenda aut repudiandae. Sint est id accusantium qui eos sit.', 0, 0, '1981-11-03 22:05:34', '1994-10-04 15:06:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 93, 93, 'Dolor voluptate nesciunt enim cum nam id qui odio. Corporis asperiores illum eos et debitis. Perspiciatis praesentium molestias accusantium repellendus aut non. Aut unde non aut. Molestias sit in voluptatum reiciendis debitis est.', 1, 1, '2005-04-11 05:35:48', '1984-11-22 03:33:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 94, 'Deleniti facere sit quam ex enim. Mollitia sapiente enim aspernatur placeat. Amet aut sed consequatur nam doloremque et.', 1, 0, '2000-07-22 07:23:27', '2020-10-25 22:58:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 95, 95, 'Doloribus voluptatem nobis incidunt sit sunt. Dignissimos quis et sequi ea. Animi autem vel porro aut.', 1, 1, '1997-05-01 22:09:07', '1985-12-16 12:25:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 96, 96, 'Magni provident beatae ratione atque qui inventore aliquid quisquam. Minima ut sapiente ipsam omnis rerum voluptatibus voluptatum. Architecto velit assumenda accusamus ut.', 0, 0, '2003-09-25 22:52:47', '2008-10-16 21:33:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 97, 'Id qui ipsum commodi quia voluptatem iste enim. Minus voluptatem molestias dolor assumenda. Quae praesentium tempore dolorum tempore. Eos et eum aut aliquid magni molestias facilis.', 1, 0, '1991-05-18 22:41:30', '1988-08-15 04:51:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 98, 98, 'Qui iste qui quaerat minima quae quo. Delectus alias voluptas nihil sint quos et voluptatem. At minus rerum tempore eligendi. Sapiente qui perferendis rerum alias ipsam sequi.', 0, 1, '1984-12-28 02:30:19', '1976-03-05 10:49:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 99, 99, 'Qui magnam doloribus aut enim quia. Corrupti voluptatem cupiditate voluptatem necessitatibus ut ullam consequatur est. Qui ipsa quaerat illo quam sunt beatae.', 1, 0, '1998-02-25 19:56:23', '1973-08-22 05:17:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 100, 100, 'Doloremque aperiam odit ea ea molestiae qui. Consequuntur quae iusto tempora molestias sint deserunt consequatur. Magni perferendis perspiciatis quisquam sed libero quod molestias omnis.', 1, 0, '1986-07-12 21:11:30', '2010-07-15 06:32:16');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, '', '1971-02-13', 4, 'ipsum', 'Joanabury', 'Cameroon', '1971-02-06 05:58:43', '1994-01-13 16:51:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, '', '1982-03-15', 4, 'totam', 'Kirlinton', 'Saint Barthelemy', '1998-01-09 15:57:11', '1970-04-28 06:10:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, '', '1979-03-08', 1, 'nulla', 'Burleyview', 'Luxembourg', '1988-03-27 15:32:02', '2006-11-02 07:03:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, '', '1982-01-04', 9, 'et', 'Lake Meagan', 'Greenland', '1999-07-20 20:56:51', '2012-02-02 02:01:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, '', '2018-03-30', 2, 'accusantium', 'Port Elmermouth', 'Wallis and Futuna', '1988-08-04 00:07:25', '1972-12-09 13:46:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, '', '1986-12-27', 2, 'magni', 'New Herminio', 'Solomon Islands', '1973-03-07 04:08:07', '2016-10-08 20:25:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, '', '1990-07-11', 8, 'dolores', 'Weissnatmouth', 'Romania', '1998-04-19 12:19:56', '2020-12-01 23:10:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, '', '2010-02-24', 1, 'voluptatibus', 'Lake Mayeton', 'Cyprus', '1979-10-21 02:09:26', '1992-11-19 07:14:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, '', '1982-05-20', 7, 'esse', 'Port Avismouth', 'Argentina', '1999-04-08 01:53:23', '2002-02-17 21:12:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, '', '2020-07-31', 5, 'consectetur', 'East Ulicesport', 'Uganda', '2007-05-31 15:28:41', '2005-04-23 12:42:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, '', '1992-11-11', 4, 'ullam', 'Port Savannah', 'Uganda', '2013-05-22 22:18:08', '2016-11-24 02:14:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, '', '2019-09-13', 6, 'nemo', 'West Nelsonmouth', 'Guernsey', '2010-01-28 12:46:55', '1979-08-09 21:43:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, '', '2014-12-09', 5, 'quam', 'Stokesside', 'Switzerland', '1977-04-11 01:05:07', '2014-03-16 12:07:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, '', '2000-05-03', 9, 'ut', 'Smithamhaven', 'Kiribati', '1981-05-28 06:06:41', '2000-08-23 20:55:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, '', '1974-12-29', 7, 'magni', 'Lake Jacky', 'Maldives', '1979-12-02 17:25:39', '1973-07-06 18:37:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, '', '1980-06-19', 2, 'magnam', 'Robertsville', 'United States Minor Outlying Islands', '1989-07-02 11:36:35', '2007-04-26 17:35:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, '', '1981-09-10', 6, 'maxime', 'Pourosport', 'Montenegro', '2005-01-20 18:47:31', '2012-04-28 14:37:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, '', '2005-06-22', 5, 'rem', 'West Ronaldo', 'British Virgin Islands', '2004-10-12 12:17:39', '1998-01-11 15:01:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, '', '1984-06-13', 3, 'doloribus', 'Keaganview', 'Uganda', '1978-07-20 22:45:17', '1978-11-12 20:28:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, '', '2018-03-15', 1, 'consequatur', 'Lake Wilburn', 'Turkmenistan', '1999-04-25 09:53:10', '2002-10-17 06:43:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, '', '2001-09-19', 1, 'aut', 'North Kristofferfurt', 'Indonesia', '1994-06-25 23:29:11', '1970-01-13 16:06:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, '', '1977-10-05', 3, 'voluptas', 'South Jabarimouth', 'Kyrgyz Republic', '1978-11-07 04:45:45', '2012-04-14 15:12:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, '', '2017-12-31', 2, 'dolores', 'Alexanneborough', 'Togo', '1982-08-08 05:51:26', '1983-01-14 17:55:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, '', '1990-04-22', 1, 'asperiores', 'Port Otha', 'Nauru', '2012-03-30 12:15:05', '1985-06-13 22:24:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, '', '1998-09-06', 5, 'non', 'Lake Letitiastad', 'Poland', '2001-11-14 10:36:30', '1980-07-30 10:59:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, '', '2013-01-28', 1, 'quia', 'New Edborough', 'Suriname', '1992-08-11 11:50:52', '1993-02-10 06:54:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, '', '1983-09-13', 5, 'qui', 'Dickinsonmouth', 'Saudi Arabia', '1993-12-08 08:48:33', '1987-01-15 02:29:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, '', '2012-01-01', 2, 'ut', 'New Jeramyview', 'Albania', '1975-03-09 15:43:33', '1982-02-28 15:02:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, '', '1980-04-17', 8, 'harum', 'Lake Constantin', 'Antarctica (the territory South of 60 deg S)', '1987-03-22 16:59:40', '1984-04-20 01:37:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, '', '1988-06-21', 3, 'beatae', 'Borerfort', 'Lao People\'s Democratic Republic', '1974-12-03 09:55:40', '1979-05-11 22:36:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, '', '2016-05-01', 2, 'repellat', 'South Alycia', 'Australia', '2013-09-27 22:33:18', '2019-05-13 22:43:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, '', '2005-07-09', 5, 'enim', 'Port Arielleville', 'Israel', '2007-11-06 22:28:33', '2007-06-10 07:28:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, '', '2007-03-28', 3, 'ut', 'West Arielberg', 'Lithuania', '1984-07-16 00:23:46', '1984-05-10 17:06:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, '', '1980-11-11', 8, 'non', 'North Rosamondmouth', 'Indonesia', '1985-11-09 22:07:58', '1989-06-20 09:18:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, '', '2020-05-14', 7, 'quia', 'Colemouth', 'Czech Republic', '1973-01-28 19:33:32', '1982-11-06 17:43:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, '', '1982-05-15', 8, 'officiis', 'Mayerthaven', 'Guinea', '1994-02-23 17:54:37', '2010-02-02 16:51:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, '', '2002-08-10', 9, 'blanditiis', 'Fredrickland', 'Denmark', '2020-07-20 20:42:22', '1985-12-07 09:41:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, '', '1985-03-15', 8, 'dolorem', 'Mitchellchester', 'Barbados', '1999-03-04 11:19:59', '2001-07-28 15:44:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, '', '1997-05-28', 8, 'aut', 'Lake Tanyabury', 'Afghanistan', '2004-04-05 16:47:44', '1989-09-06 10:22:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, '', '1986-11-20', 1, 'omnis', 'Maggioburgh', 'Peru', '1973-03-23 10:33:56', '2009-04-06 10:36:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, '', '2007-05-15', 1, 'perferendis', 'Beerburgh', 'Mongolia', '1998-04-22 18:16:47', '2020-01-31 22:21:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, '', '1980-06-19', 2, 'quod', 'Tillmanview', 'Vietnam', '1974-12-23 10:18:16', '2012-03-09 16:58:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, '', '1973-03-04', 1, 'dignissimos', 'Lake Ova', 'Croatia', '2008-09-13 11:48:48', '2015-03-18 03:33:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, '', '1998-04-28', 2, 'corrupti', 'New Madilyn', 'Bouvet Island (Bouvetoya)', '2009-09-17 18:25:20', '1974-07-19 14:34:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, '', '1996-02-26', 1, 'eum', 'DuBuqueborough', 'Austria', '1981-06-27 00:55:26', '2002-12-21 13:42:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, '', '1994-05-05', 4, 'a', 'New Kaelynshire', 'French Polynesia', '1976-01-29 17:42:09', '1979-08-16 18:27:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, '', '1981-09-24', 4, 'ut', 'Aniyahfort', 'Ethiopia', '1983-05-12 03:20:50', '2002-06-27 00:00:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, '', '1970-08-31', 3, 'similique', 'Terryburgh', 'Malawi', '1985-10-28 01:10:26', '1988-05-29 03:06:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, '', '2015-01-18', 8, 'molestiae', 'New Javonte', 'Liberia', '2005-01-07 09:00:57', '1973-04-27 18:50:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, '', '1998-03-10', 6, 'laborum', 'West Annettabury', 'Denmark', '1996-12-09 13:44:48', '2017-06-04 21:31:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, '', '2000-08-14', 2, 'incidunt', 'South Norma', 'Azerbaijan', '2001-12-15 05:58:37', '2018-11-03 21:29:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, '', '2020-06-06', 1, 'nam', 'West Kareemfort', 'Bangladesh', '1998-01-08 15:23:43', '2020-03-10 10:47:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, '', '1982-12-30', 2, 'culpa', 'East Karen', 'Ukraine', '1997-02-13 06:06:24', '1984-01-16 20:32:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, '', '2000-05-03', 7, 'at', 'Flossieton', 'New Caledonia', '1975-07-19 16:55:23', '2004-11-22 21:09:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, '', '1980-08-04', 6, 'aperiam', 'Port Keanu', 'Namibia', '1999-10-29 21:38:52', '1997-10-17 22:51:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, '', '1994-08-14', 2, 'molestiae', 'Orvalside', 'Estonia', '1996-05-17 02:49:32', '1980-05-08 15:47:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, '', '1970-09-01', 1, 'cupiditate', 'West Francesca', 'Lebanon', '1974-05-04 15:08:33', '1987-08-23 22:54:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, '', '1974-05-17', 5, 'placeat', 'Stracketon', 'Guam', '1981-05-16 01:35:52', '1972-10-04 18:01:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, '', '2002-05-17', 1, 'explicabo', 'Samanthaborough', 'Nigeria', '2014-01-16 23:35:09', '1996-01-31 22:07:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, '', '2019-03-26', 3, 'similique', 'Lowemouth', 'Indonesia', '2016-06-24 16:37:26', '2005-07-20 22:00:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, '', '2019-10-11', 5, 'occaecati', 'South Mathew', 'Korea', '1983-11-11 02:01:18', '2014-03-26 13:00:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, '', '2004-08-29', 4, 'omnis', 'Port Bobbie', 'Nepal', '1990-11-02 23:12:48', '2020-12-26 16:37:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, '', '1987-08-10', 3, 'enim', 'McDermottburgh', 'New Zealand', '2016-03-02 21:52:44', '2003-06-16 01:09:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, '', '1987-01-29', 2, 'aliquid', 'Simoniston', 'Switzerland', '2000-07-21 23:31:10', '1991-03-19 21:48:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, '', '2017-03-27', 3, 'officia', 'Missourichester', 'Brunei Darussalam', '1983-12-08 09:54:59', '1986-03-18 18:25:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, '', '1984-10-21', 8, 'eligendi', 'Jermainemouth', 'Grenada', '1981-09-12 23:48:17', '2019-11-14 16:57:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, '', '1986-11-07', 2, 'voluptatem', 'New Emery', 'Oman', '1978-08-16 04:21:07', '1980-11-12 15:53:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, '', '1973-01-28', 3, 'nihil', 'Yasmeenport', 'Colombia', '1991-01-15 22:14:46', '1992-08-08 15:41:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, '', '1971-06-21', 6, 'mollitia', 'South Alejandrin', 'Germany', '2007-03-11 03:59:14', '1995-12-27 19:08:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, '', '2015-11-26', 6, 'harum', 'Abigaleburgh', 'Hong Kong', '1984-02-24 13:18:49', '2012-04-04 04:44:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, '', '1975-12-02', 2, 'dicta', 'South Delmertown', 'Northern Mariana Islands', '1980-08-17 23:12:04', '1981-05-01 12:14:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, '', '1996-03-06', 3, 'vero', 'East Edna', 'Nigeria', '1999-08-24 17:58:26', '2020-05-23 12:22:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, '', '1999-04-12', 7, 'alias', 'North Mya', 'Trinidad and Tobago', '1977-10-12 04:12:19', '1988-03-26 14:40:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, '', '1998-04-25', 4, 'porro', 'New Benedictstad', 'Qatar', '2016-03-30 16:41:40', '2003-12-18 17:45:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, '', '1986-03-08', 1, 'est', 'New Arleneberg', 'Italy', '2018-11-12 09:56:08', '1983-02-22 15:31:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, '', '1980-04-29', 1, 'odit', 'Glennaport', 'Saint Helena', '1973-03-22 12:48:17', '1985-08-18 08:52:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, '', '1996-08-21', 9, 'dolores', 'Lake Moniqueton', 'Samoa', '1991-11-25 04:43:16', '1980-11-09 05:59:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, '', '1986-11-27', 5, 'eveniet', 'Kaileyport', 'Saint Pierre and Miquelon', '1984-11-23 18:30:30', '1983-02-24 03:35:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, '', '1998-08-15', 1, 'omnis', 'New Ivaland', 'Niue', '2007-02-05 14:55:18', '1989-04-03 20:20:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, '', '2014-06-27', 4, 'consequatur', 'Mrazside', 'Turkey', '1999-10-27 05:37:36', '1982-03-20 05:31:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, '', '1984-08-16', 4, 'quam', 'East Americo', 'Norway', '2007-06-25 09:23:17', '1982-09-20 15:59:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, '', '2004-06-24', 2, 'temporibus', 'South Millie', 'Andorra', '1971-03-31 14:06:59', '2000-05-22 03:50:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, '', '2015-02-08', 9, 'perferendis', 'West Noelia', 'India', '1991-02-15 12:06:33', '1975-11-17 06:55:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, '', '1993-12-21', 3, 'illo', 'Ornborough', 'Rwanda', '1989-10-04 05:29:51', '1993-01-13 09:18:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, '', '1982-09-06', 4, 'iusto', 'West Rachelburgh', 'Djibouti', '1996-03-11 17:06:23', '1971-10-24 00:17:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, '', '1981-07-07', 4, 'debitis', 'East Mustafatown', 'Wallis and Futuna', '1982-11-24 20:32:33', '2018-07-28 16:33:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, '', '2000-01-16', 9, 'quia', 'Maximestad', 'Aruba', '1990-06-28 04:56:02', '1987-11-15 02:47:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, '', '2005-06-05', 9, 'nihil', 'Cartwrightside', 'Ukraine', '2018-08-19 12:04:49', '2009-09-18 14:38:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, '', '2020-11-24', 1, 'beatae', 'Guiseppeburgh', 'South Africa', '2011-10-01 17:52:20', '2010-07-05 20:23:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, '', '1987-04-14', 1, 'voluptates', 'Nitzscheside', 'Andorra', '2017-03-17 04:55:02', '1988-07-15 09:43:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, '', '2013-03-16', 7, 'cum', 'Aryannaburgh', 'Myanmar', '2008-06-23 13:46:43', '2001-11-02 17:27:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, '', '1971-02-07', 6, 'qui', 'Trevorhaven', 'Mozambique', '2017-04-21 03:13:40', '1996-05-31 05:48:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, '', '1981-12-30', 9, 'provident', 'North Chelsiestad', 'Taiwan', '2019-07-15 20:26:14', '1996-01-17 04:05:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, '', '1990-07-04', 2, 'fugiat', 'Porterberg', 'Marshall Islands', '1970-01-18 02:10:49', '1993-12-04 19:15:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, '', '1987-07-22', 4, 'maiores', 'South Jacey', 'Taiwan', '1972-01-17 20:38:20', '1980-05-04 02:22:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, '', '2017-10-25', 3, 'et', 'Kemmerfort', 'French Guiana', '1981-06-11 19:45:07', '1975-04-28 18:49:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, '', '2006-11-14', 8, 'soluta', 'West Jaylan', 'Comoros', '1975-12-30 11:08:40', '1983-08-12 01:29:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, '', '2003-02-09', 5, 'quis', 'West Madison', 'Egypt', '1984-04-25 20:34:55', '1976-09-27 01:41:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, '', '2003-12-26', 4, 'voluptatem', 'Edgarmouth', 'Turkmenistan', '1972-11-15 09:34:44', '2009-05-15 06:23:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, '', '1979-03-18', 1, 'veniam', 'New Marcelo', 'Taiwan', '1981-06-03 17:52:04', '1991-07-10 12:34:07');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Электронная почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Lucious', 'Hyatt', 'charlene.mitchell@example.com', '248.330.8466x6780', '1971-05-25 05:20:14', '2016-04-08 01:18:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Kay', 'Williamson', 'jgrant@example.org', '1-983-634-8314', '1994-01-19 04:24:34', '2016-08-05 09:36:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Tyrell', 'Romaguera', 'hjenkins@example.com', '(857)133-4714', '2002-08-26 09:39:54', '1978-10-14 14:24:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Murray', 'Moore', 'elwin.nienow@example.org', '611-099-6631x255', '2010-06-25 04:29:08', '1987-07-26 01:37:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Annamae', 'Vandervort', 'jabernathy@example.net', '04718619085', '2007-09-05 14:18:02', '2020-01-23 17:34:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Daron', 'Beahan', 'marquise82@example.net', '+69(2)5577420604', '1997-05-03 22:44:09', '1994-07-26 18:10:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Kale', 'Mayert', 'jeff81@example.com', '(800)867-1470', '2018-09-19 01:59:25', '1993-06-10 12:19:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Marcus', 'Schamberger', 'marina.brown@example.com', '149-929-9116', '2012-04-11 12:19:55', '1980-05-01 17:47:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Amelia', 'Rau', 'justyn65@example.com', '00043652189', '1982-03-20 00:00:41', '1979-03-31 09:04:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Jayde', 'Price', 'daisha.schultz@example.com', '184.174.1970x6333', '1973-10-05 15:57:12', '1970-02-17 04:42:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Chaim', 'Lind', 'nbruen@example.org', '+69(2)6650984966', '2011-11-25 06:04:56', '1977-05-17 13:00:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Madie', 'Gottlieb', 'bernardo63@example.com', '(066)529-7512x7737', '2019-01-08 13:27:18', '2006-10-09 23:38:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Jarod', 'Lang', 'christop24@example.com', '1-300-010-7752x808', '2003-11-06 21:15:38', '1980-12-26 23:51:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Santina', 'Harris', 'virginia77@example.org', '+69(1)0148536998', '1976-07-20 03:47:44', '1984-08-22 04:48:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Dorian', 'Schiller', 'hlegros@example.com', '(534)503-2350x0954', '1994-01-12 02:37:29', '1974-04-26 21:47:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Rowena', 'Legros', 'fern04@example.net', '(191)578-2715x458', '2002-12-05 05:21:14', '2005-11-15 00:34:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Jada', 'Kuhn', 'trantow.amos@example.org', '09108649281', '2016-12-23 20:15:29', '1985-10-17 15:28:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Nicholaus', 'Crist', 'rleffler@example.net', '03554428946', '1995-08-10 11:03:55', '1988-04-22 00:46:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Rosemary', 'Harber', 'alfonzo.ebert@example.net', '(639)994-0095x344', '1993-03-01 17:34:55', '1970-04-24 00:18:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Randall', 'Goldner', 'fkassulke@example.net', '1-011-621-1967x361', '1979-12-16 03:43:27', '1994-04-15 23:08:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Citlalli', 'Gerhold', 'goldner.micah@example.com', '276.338.6834x78886', '2012-12-25 19:23:16', '2018-10-15 09:57:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Carmel', 'Wiegand', 'gheaney@example.org', '193.025.6828x26452', '1998-04-22 19:37:36', '2018-01-30 00:13:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Joe', 'Senger', 'araceli28@example.net', '164-146-9753', '2014-07-08 03:15:53', '1978-08-06 16:38:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Lelia', 'Will', 'kemmer.idella@example.org', '597-996-2804x54320', '1982-07-10 04:18:26', '1996-06-17 06:55:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Tracey', 'Lynch', 'lucie.hagenes@example.org', '583.201.7302x46642', '2019-10-14 00:11:55', '1996-03-15 23:58:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Verdie', 'Barton', 'edyth67@example.org', '082.201.0923x92938', '1996-09-28 08:16:33', '1993-09-14 20:13:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Susan', 'Treutel', 'loberbrunner@example.net', '237-587-1708', '1991-06-01 08:35:41', '1986-12-02 20:38:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Carson', 'Lind', 'lucy.heller@example.com', '477-530-4843x991', '2014-03-24 07:35:02', '2005-07-24 03:36:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Jaden', 'Eichmann', 'bryon95@example.com', '231.268.6435x81224', '2012-03-24 01:34:28', '2010-04-16 18:25:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Alexie', 'Walter', 'sawayn.dylan@example.org', '01383966926', '2000-12-10 05:04:36', '1983-02-12 20:12:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Diego', 'Dicki', 'kbashirian@example.org', '1-119-895-1128x4976', '1993-10-11 16:33:57', '2009-10-18 06:05:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Geoffrey', 'Franecki', 'folson@example.org', '00037159408', '2008-08-25 18:33:28', '1971-01-15 14:19:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Adolfo', 'Bergstrom', 'eturcotte@example.net', '376-457-0256x91855', '1977-03-30 13:45:22', '2018-07-10 03:26:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Marlene', 'Hudson', 'fdaniel@example.net', '(410)472-3743', '1994-07-07 11:54:24', '1999-08-08 09:22:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Brandyn', 'Beier', 'becker.rose@example.org', '(878)775-8184', '1980-04-20 04:35:14', '2002-10-13 12:55:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Domingo', 'Gutmann', 'adela07@example.net', '(256)633-0995', '2008-09-28 10:05:17', '1982-09-23 21:57:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Zack', 'Sanford', 'hermiston.arnulfo@example.net', '240-589-6903', '1996-12-07 17:07:40', '2014-07-30 12:52:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Agnes', 'Denesik', 'moen.kyla@example.org', '292-458-2402x316', '2007-06-29 21:35:08', '2007-06-19 06:24:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Shannon', 'Reilly', 'anais.wyman@example.com', '03327796983', '1973-12-01 01:04:59', '1983-02-05 04:42:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Brianne', 'Fadel', 'marianne.schinner@example.com', '1-880-888-3205', '2002-04-13 16:37:56', '2012-09-28 09:14:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Eden', 'Beahan', 'littel.flo@example.net', '(763)674-3577', '1994-12-09 11:16:01', '2001-07-29 16:14:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Joan', 'DuBuque', 'janie.heaney@example.net', '1-142-246-4076x989', '1980-06-28 14:39:35', '2012-04-10 23:25:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Delphia', 'Moen', 'smcglynn@example.net', '381.767.0086', '2006-12-08 07:54:25', '1973-08-26 14:16:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Meagan', 'Kunze', 'demond.schmitt@example.net', '1-315-392-5661', '2012-08-28 12:24:50', '1988-12-24 15:54:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Marie', 'Klocko', 'calista.runte@example.org', '(364)340-7364x946', '1977-02-03 13:44:18', '2020-08-15 13:03:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Lennie', 'Watsica', 'stoltenberg.paolo@example.com', '(760)691-4836x346', '1991-11-01 20:00:54', '2011-06-22 09:15:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Gudrun', 'Kreiger', 'giovanny.hintz@example.org', '919-039-0727', '1989-12-10 13:53:09', '1994-01-13 21:16:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Georgette', 'Towne', 'ohickle@example.org', '123.674.4338x5073', '1984-09-13 20:24:34', '2014-02-13 14:36:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Mortimer', 'Kulas', 'chance79@example.com', '00697650828', '2012-05-06 17:27:08', '2014-07-29 07:32:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Clinton', 'Gerlach', 'qbogisich@example.net', '141.984.6192x3163', '2006-01-30 17:12:56', '1984-12-05 07:11:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Elva', 'Crooks', 'xleffler@example.net', '(593)865-4033x809', '1975-09-10 23:05:47', '1994-05-10 07:38:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Brain', 'Romaguera', 'jewell70@example.com', '(370)728-4136x401', '1999-10-20 00:47:57', '2016-05-17 08:14:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Emilia', 'Huels', 'patience.von@example.net', '716-896-2823x90924', '1993-08-16 05:58:00', '1977-03-16 15:18:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Jewel', 'Hoeger', 'eliza58@example.org', '964.597.3742', '1980-03-12 21:09:50', '2014-12-28 04:34:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Vella', 'Watsica', 'bbecker@example.org', '744.263.0663', '1994-09-23 10:22:34', '1987-09-27 15:56:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Delphia', 'Dooley', 'runte.hollie@example.org', '03219564285', '1989-04-12 15:53:38', '1972-02-14 17:21:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Evalyn', 'Johns', 'graham34@example.org', '1-744-396-7328', '2014-04-01 19:52:49', '1971-03-23 01:33:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Margarete', 'Stracke', 'xgottlieb@example.com', '054.600.7540x02951', '2005-11-10 15:52:24', '1976-01-05 12:07:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Anais', 'Jaskolski', 'candace95@example.net', '688-722-7030', '2016-11-05 17:28:07', '2005-01-07 20:39:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Sadye', 'Kling', 'patsy.reichel@example.com', '265-549-7496x102', '1975-07-14 00:59:57', '2018-10-05 09:15:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Delbert', 'Morissette', 'kertzmann.freeman@example.net', '416-322-9312x716', '1985-03-24 02:14:06', '1976-09-06 07:44:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Beverly', 'Klocko', 'olson.sadye@example.org', '(374)648-2005x9500', '2019-06-02 06:45:39', '2020-09-05 02:53:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Zita', 'Wilkinson', 'lenny51@example.com', '575.669.3568', '1972-06-21 14:58:21', '1997-06-20 21:12:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Donna', 'Konopelski', 'eulah53@example.net', '(054)871-6148', '1974-07-31 13:31:28', '1970-08-16 10:27:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Giovanna', 'Walter', 'blanda.jaron@example.com', '(821)709-7649x6658', '1971-07-08 07:05:42', '1972-04-21 03:17:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Daisha', 'Frami', 'guido.heller@example.net', '414-531-8828x460', '1971-03-23 20:57:13', '1991-05-09 19:54:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Vidal', 'Trantow', 'carter.hazle@example.com', '(349)902-9445', '2003-06-16 02:34:32', '1991-02-26 09:09:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'America', 'Abshire', 'mbartoletti@example.org', '360.771.3474', '2000-01-03 12:07:40', '1978-08-06 01:50:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Sasha', 'Mertz', 'pearlie96@example.net', '1-764-386-2615', '2007-06-22 00:13:33', '2010-08-04 05:31:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Gage', 'Lowe', 'ward.gussie@example.com', '084-060-7370', '2016-05-01 18:35:40', '1978-05-29 08:00:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Amara', 'Kautzer', 'antonietta65@example.net', '(970)653-0386', '2020-03-19 09:52:04', '1980-01-29 21:04:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Heather', 'Leuschke', 'eruecker@example.org', '(769)275-1504', '1981-09-28 05:17:34', '1982-01-13 19:22:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Ana', 'Casper', 'wrippin@example.net', '+70(0)8484058915', '1993-01-25 20:16:42', '1971-05-30 10:02:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Dan', 'Zulauf', 'spencer.armstrong@example.org', '775.742.2285x2277', '2000-01-24 21:13:36', '1974-05-20 19:24:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Derek', 'Barton', 'maxie10@example.com', '1-878-352-9516', '2000-12-02 00:13:13', '1993-11-12 14:04:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Lelia', 'Stehr', 'zcassin@example.com', '844-881-0369x6823', '2000-09-03 10:38:47', '1990-04-23 21:53:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Ted', 'Ziemann', 'lstanton@example.org', '1-737-906-3834x997', '1979-07-02 13:23:11', '2007-10-21 23:01:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Charlene', 'Brakus', 'harris.braden@example.org', '711.550.9624', '1987-04-23 23:39:54', '2019-09-29 10:42:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Jerel', 'Kozey', 'korey.gerlach@example.net', '475.566.2563x8581', '1980-09-23 13:06:06', '2014-10-12 20:43:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Dejah', 'Stehr', 'koch.kennedy@example.com', '168.474.9790x51549', '2009-06-27 07:42:40', '1998-11-13 10:37:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Alek', 'Mraz', 'efranecki@example.net', '506.319.5920', '1975-05-25 00:59:29', '1999-04-06 17:52:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Alexys', 'Donnelly', 'lesch.kody@example.org', '780.310.9000', '2005-05-03 13:22:42', '1987-12-02 10:52:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Grace', 'Gutmann', 'eugenia40@example.org', '1-464-614-5295x0217', '2003-05-05 05:23:59', '1987-06-29 12:49:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Stephon', 'Spinka', 'zblanda@example.net', '447.836.7782', '1998-11-02 04:59:05', '1996-12-02 07:14:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Yoshiko', 'Raynor', 'to\'connell@example.com', '(326)705-2424x27677', '2000-02-17 10:16:05', '1988-10-12 13:55:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Matilde', 'Fadel', 'lelia35@example.org', '1-878-688-9267', '2008-02-26 08:24:29', '2000-02-12 22:17:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Dee', 'Renner', 'emard.vivienne@example.com', '1-021-750-5511x299', '1975-05-20 07:56:41', '1996-03-02 23:40:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Jerel', 'Jacobs', 'rory.kovacek@example.com', '(200)434-8615x676', '2015-06-17 01:11:30', '1997-02-10 03:10:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Woodrow', 'Funk', 'kohler.khalil@example.org', '721.213.2556x65629', '1997-11-16 19:35:07', '2013-10-07 10:25:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Joyce', 'Mitchell', 'schaden.nathan@example.org', '(778)150-0695x7660', '2000-05-10 20:12:33', '1994-08-30 02:55:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Gustave', 'Bins', 'rosanna82@example.org', '342.652.0221', '2007-08-11 01:37:58', '2010-08-18 13:35:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Isabella', 'Wehner', 'eshanahan@example.net', '1-013-646-2104x7569', '1989-01-18 22:08:35', '2012-07-09 09:43:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Kylee', 'Gusikowski', 'jbergstrom@example.org', '+26(5)9445407777', '2006-06-03 03:03:17', '2004-06-23 17:52:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Cleve', 'Runte', 'trinity.davis@example.org', '1-289-253-4922', '2015-05-02 00:16:33', '1974-02-20 11:52:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Brycen', 'Predovic', 'austen.miller@example.net', '(105)475-1660', '1988-02-19 12:10:23', '2011-11-02 13:40:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Eileen', 'Kutch', 'fae58@example.net', '438-021-4390', '1979-07-14 14:17:39', '2019-09-19 22:28:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Charlie', 'Quitzon', 'fnicolas@example.com', '(480)028-9835', '2005-05-19 21:40:35', '1975-11-25 05:39:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Rachael', 'Bode', 'kihn.willy@example.org', '(604)088-1744x36523', '1974-07-16 17:58:35', '1979-11-22 08:45:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Faye', 'Block', 'schaden.carolyn@example.net', '(388)509-6206x3287', '1998-04-01 01:07:42', '2013-03-16 01:07:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Golden', 'Daugherty', 'evangeline45@example.net', '1-580-105-7072', '2019-01-28 00:20:12', '2014-05-27 09:15:51');


