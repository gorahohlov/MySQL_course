#
# TABLE STRUCTURE FOR: contractors
#

DROP TABLE IF EXISTS `contractors`;

CREATE TABLE `contractors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Наименование контрагента',
  `partner_type` char(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Тип контрагента Supplier|Client|Agent',
  `country` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна контрагента',
  `city` char(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город контрагента',
  `discount_status` int(11) DEFAULT NULL COMMENT 'Размер скидки в %',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Справочник контрагентов';

INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('1', 'Olson and Sons', NULL, 'd', 'Langbury', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('2', 'Bednar, Jacobs and Senger', NULL, 'g', 'North Susieborough', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('3', 'Moore, Legros and McCullough', NULL, 'p', 'Vanessahaven', 2);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('4', 'Stehr-Rosenbaum', NULL, 'f', 'South Jarvisborough', 4);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('5', 'Champlin, Miller and Rath', NULL, 'x', 'Ullrichfort', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('6', 'Murray-Beahan', NULL, 'n', 'South Donatoberg', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('7', 'Sipes, Wolf and Schowalter', NULL, 'm', 'Port Jillianville', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('8', 'Schultz LLC', NULL, 'i', 'North Freidaview', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('9', 'Kreiger, Swaniawski and Bins', NULL, 'v', 'Yolandamouth', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('10', 'Corwin PLC', NULL, 'v', 'Sabrynabury', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('11', 'McKenzie-Runolfsdottir', NULL, 'v', 'West Niafurt', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('12', 'Hauck-Torp', NULL, 'u', 'West Monica', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('13', 'Buckridge, Lind and Rosenbaum', NULL, 'k', 'Fritschchester', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('14', 'Price, McClure and Reynolds', NULL, 'i', 'Willchester', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('15', 'Nader, Dicki and Willms', NULL, 'b', 'Lake Emeryview', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('16', 'Tromp Inc', NULL, 'f', 'Kingmouth', 6);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('17', 'Marks Group', NULL, 'a', 'Port Katharinaberg', 2);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('18', 'Hartmann PLC', NULL, 'e', 'Lake Anastasiahaven', 2);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('19', 'Nicolas, Murray and Stroman', NULL, 'i', 'Prosaccoland', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('20', 'Casper, Kovacek and Johnston', NULL, 'q', 'Elenatown', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('21', 'Klocko Ltd', NULL, 'l', 'North Delilah', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('22', 'Daniel, Bechtelar and Medhurst', NULL, 'b', 'Port Maymieport', 2);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('23', 'Toy, Hegmann and Klein', NULL, 'w', 'Shanonville', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('24', 'Gleason Group', NULL, 'x', 'East Clairefurt', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('25', 'Kub Ltd', NULL, 'k', 'South Lornatown', 6);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('26', 'Metz-O\'Connell', NULL, 'v', 'Itzelchester', 4);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('27', 'Koch, Kunde and Weissnat', NULL, 'q', 'Kaleton', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('28', 'Paucek Inc', NULL, 'd', 'Lake Edyth', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('29', 'Bergstrom-Durgan', NULL, 'w', 'Pricemouth', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('30', 'Hermiston, Davis and Schmidt', NULL, 'b', 'Rhodashire', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('31', 'Leffler LLC', NULL, 'f', 'Gaylordfort', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('32', 'Murazik, Boehm and Mueller', NULL, 'd', 'West Hesterberg', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('33', 'Buckridge-Weimann', NULL, 'q', 'North Jaquan', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('34', 'Stark Inc', NULL, 's', 'Lake Carrollton', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('35', 'Swift LLC', NULL, 't', 'East Aiyanamouth', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('36', 'Hayes, Gibson and Robel', NULL, 'a', 'New Jamie', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('37', 'Padberg Ltd', NULL, 'i', 'Hettingermouth', 4);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('38', 'Wehner, McCullough and Raynor', NULL, 'u', 'South Rubiebury', 2);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('39', 'Greenfelder PLC', NULL, 'h', 'Bellside', 6);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('40', 'Boyer, Medhurst and Lakin', NULL, 'o', 'Wiegandborough', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('41', 'Robel, Osinski and VonRueden', NULL, 'p', 'Connton', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('42', 'Hodkiewicz and Sons', NULL, 'l', 'New Kamryn', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('43', 'Witting Inc', NULL, 'v', 'Hodkiewiczberg', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('44', 'Kshlerin-Padberg', NULL, 'o', 'North Jewell', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('45', 'Cruickshank-Dach', NULL, 'n', 'South Randalside', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('46', 'Schaden, Lindgren and Barton', NULL, 'r', 'South Daphneychester', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('47', 'Weimann-Rutherford', NULL, 'd', 'Lake Kathleenfurt', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('48', 'Braun Inc', NULL, 'e', 'Shaniyafort', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('49', 'Weimann, McCullough and Funk', NULL, 'n', 'Port Fabianfort', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('50', 'Auer-Bode', NULL, 'm', 'Willieborough', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('51', 'Hayes, Donnelly and Hahn', NULL, 'o', 'Rosamondborough', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('52', 'Zboncak and Sons', NULL, 's', 'Hettingertown', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('53', 'Ebert, Lubowitz and Gleichner', NULL, 'w', 'Maybury', 6);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('54', 'Ratke, Berge and Upton', NULL, 'c', 'Lake Keaganmouth', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('55', 'Cronin, Mills and Weber', NULL, 'y', 'Schulistton', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('56', 'Cummerata-Monahan', NULL, 'q', 'East Alexane', 2);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('57', 'Kilback, Yost and Hodkiewicz', NULL, 'f', 'South Kenyaburgh', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('58', 'Cassin-Ernser', NULL, 'c', 'Ibrahimstad', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('59', 'Mann Inc', NULL, 'h', 'Stephanieton', 6);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('60', 'Gibson Ltd', NULL, 'p', 'New Joel', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('61', 'Becker, Lynch and Skiles', NULL, 't', 'Lake Travon', 2);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('62', 'Bahringer-Sipes', NULL, 'c', 'Boyletown', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('63', 'Murphy, Davis and Klein', NULL, 'k', 'Liamland', 2);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('64', 'Corwin, Lubowitz and Schowalter', NULL, 'a', 'South Luciano', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('65', 'Conn, King and Kuhic', NULL, 'x', 'New Anibalchester', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('66', 'Zieme-Jenkins', NULL, 'g', 'South Federico', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('67', 'West-Lemke', NULL, 'd', 'Stromanburgh', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('68', 'Anderson, Murazik and Fadel', NULL, 'q', 'Francohaven', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('69', 'Stanton, Wisoky and Bogan', NULL, 'a', 'Port Providenci', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('70', 'Bergstrom, Stark and Schuppe', NULL, 'u', 'West Ambrosefurt', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('71', 'Parker-Stamm', NULL, 'c', 'North Verdieshire', 4);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('72', 'Prosacco Group', NULL, 't', 'Flossietown', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('73', 'Stiedemann, Morar and O\'Reilly', NULL, 'k', 'West Saige', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('74', 'Mosciski Inc', NULL, 'e', 'New Brownfort', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('75', 'Crooks Group', NULL, 'd', 'Port Elisabethstad', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('76', 'Gerlach LLC', NULL, 'n', 'North Tobin', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('77', 'Haag, Casper and Bayer', NULL, 'd', 'East Meredithshire', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('78', 'Blanda and Sons', NULL, 'z', 'Hiltonchester', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('79', 'Cummings-Bruen', NULL, 'j', 'Port Oranside', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('80', 'Hoeger, Lind and Jacobi', NULL, 'x', 'New Marjolaine', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('81', 'Towne Inc', NULL, 'z', 'New Alaynaville', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('82', 'Nienow Group', NULL, 'g', 'Tatebury', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('83', 'Price Inc', NULL, 'o', 'New Americamouth', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('84', 'Miller and Sons', NULL, 'r', 'South Ezequielfurt', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('85', 'Powlowski, Murray and Carter', NULL, 'p', 'West Sharonmouth', 2);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('86', 'Frami and Sons', NULL, 't', 'North Robbshire', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('87', 'Hackett-Kuphal', NULL, 'x', 'Lake Mauriceborough', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('88', 'Wiegand Ltd', NULL, 'g', 'Pfefferstad', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('89', 'Hackett LLC', NULL, 'k', 'South Soledadbury', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('90', 'Gutmann, Kub and Cruickshank', NULL, 'b', 'Edaton', 4);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('91', 'Trantow-Brekke', NULL, 'b', 'Hackettview', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('92', 'Walsh, Feest and Schinner', NULL, 'i', 'South Hilbert', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('93', 'Feil-Hansen', NULL, 'j', 'Stoltenbergton', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('94', 'Koepp, Lang and Hoppe', NULL, 'm', 'New Dameonchester', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('95', 'Miller Group', NULL, 'v', 'Lake Aminaton', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('96', 'Funk PLC', NULL, 'f', 'New Dora', 6);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('97', 'O\'Hara-Waelchi', NULL, 'd', 'Wolffton', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('98', 'Wehner, Heller and Bashirian', NULL, 'o', 'Harbermouth', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('99', 'Lockman, Barrows and Jacobs', NULL, 'm', 'Pabloville', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('100', 'Emmerich PLC', NULL, 'm', 'Reannaborough', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('101', 'Stamm PLC', NULL, 'k', 'Haneland', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('102', 'Jakubowski-Tromp', NULL, 'x', 'Port Niamouth', 2);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('103', 'Kris-Christiansen', NULL, 'z', 'Dorrisside', 1);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('104', 'O\'Connell, Hirthe and Windler', NULL, 'l', 'Port Anabelleville', 4);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('105', 'Koch-Bode', NULL, 'o', 'New Pedro', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('106', 'Jones LLC', NULL, 'l', 'South Reba', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('107', 'Emmerich Ltd', NULL, 'k', 'Kuhnside', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('108', 'Johns-Gislason', NULL, 'o', 'Osinskitown', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('109', 'Ruecker-Bernhard', NULL, 'b', 'Aniyastad', 6);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('110', 'Toy-Mills', NULL, 'm', 'Lake Guiseppechester', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('111', 'Macejkovic-Schimmel', NULL, 'u', 'North Emmy', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('112', 'Hoppe Ltd', NULL, 'v', 'Alexandriabury', 8);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('113', 'Kuphal, Senger and Lubowitz', NULL, 'p', 'South Burdette', 6);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('114', 'Green, Hammes and Murray', NULL, 'z', 'West Eusebiohaven', 9);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('115', 'Rath and Sons', NULL, 'x', 'North Jennyfer', 3);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('116', 'Bartell-Gusikowski', NULL, 'e', 'Treutelview', 7);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('117', 'Kling, Walter and Frami', NULL, 'm', 'North Friedrichtown', 5);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('118', 'Ratke and Sons', NULL, 'e', 'Runtestad', 6);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('119', 'Ondricka Ltd', NULL, 'k', 'Raynorland', 0);
INSERT INTO `contractors` (`id`, `company_name`, `partner_type`, `country`, `city`, `discount_status`) VALUES ('120', 'Predovic Inc', NULL, 'e', 'Elseport', 1);


