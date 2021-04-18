CREATE DATABASE `analytics`; /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */

USE analytics;

CREATE TABLE `branches` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `dscr_branch` char(40) DEFAULT NULL COMMENT 'Наименование филиала',
  `brief_dscr` char(3) DEFAULT NULL COMMENT 'Краткое наименование филиала',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Справочник филиалов';


CREATE TABLE `contractors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL COMMENT 'Наименование контрагента',
  `partner_type` char(40) DEFAULT NULL COMMENT 'Тип контрагента Supplier|Client|Agent',
  `country` char(2) DEFAULT NULL COMMENT 'Страна контрагента',
  `city` char(40) DEFAULT NULL COMMENT 'Город контрагента',
  `discount_status` int DEFAULT NULL COMMENT 'Размер скидки в %',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Справочник контрагентов';


CREATE TABLE `goods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `article` char(7) NOT NULL COMMENT 'Артикул товара',
  `model` varchar(60) DEFAULT NULL COMMENT 'Модель товара',
  `description` varchar(255) DEFAULT NULL COMMENT 'Описание товара',
  `weight` int DEFAULT NULL COMMENT 'Вес нетто единицы товара в кг',
  `mfg` varchar(90) DEFAULT NULL COMMENT 'Изготовитель товара',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `article` (`article`),
  UNIQUE KEY `article_2` (`article`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Справочник номенклатуры ТМЦ: входные металлические двери различных характеристик';


CREATE TABLE `transit_points` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description_points` char(50) DEFAULT NULL COMMENT 'Наименование транзитных и конечных пунктов',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `description_points` (`description_points`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Справочник транзитных пунктов для построения маршрутов';


CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doc_order` char(10) NOT NULL COMMENT 'номер документа заказа, в одном документе заказа может быть несколько позиций - товаров для разных филиалов, периодов etc',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания заказа',
  `dispatched_at` datetime DEFAULT NULL COMMENT 'дата требуемой/планируемой отгрузки заказа с завода-изготовителя',
  `arrived_at` datetime DEFAULT NULL COMMENT 'дата планируемой доставки, прибытия заказа на склад филиала',
  `supplier_id` bigint unsigned NOT NULL COMMENT 'id поставщика - внешний ключ для связи со справочником contractors',
  `goods_id` bigint unsigned NOT NULL COMMENT 'id товара, внешний ключ для связи со справочником номенклатуры',
  `qty` int unsigned NOT NULL COMMENT 'количество заказанного товара',
  `branch_id` int unsigned NOT NULL COMMENT 'заказ для филиала',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `orders_fk_branch` (`branch_id`),
  KEY `orders_fk_supplier` (`supplier_id`),
  KEY `orders_fk_goods` (`goods_id`),
  CONSTRAINT `orders_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `orders_fk_goods` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `orders_fk_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `contractors` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица заказов поставщику';


CREATE TABLE `shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shpm_doc` char(10) DEFAULT NULL COMMENT 'Номер документа об отгрузе поставщиком',
  `shpm_date` date DEFAULT NULL COMMENT 'Дата документа отгрузки',
  `supplier_id` bigint unsigned NOT NULL COMMENT 'id поставщика - внешний ключ для связи со справочником contractors',
  `cntr_num` char(11) DEFAULT NULL COMMENT 'Номер отгруженного контейнера',
  `dispatched_at` datetime DEFAULT NULL COMMENT 'фактическая (подтвержденная) дата отгрузки заказа с завода-изготовителя',
  `arrived_at` datetime DEFAULT NULL COMMENT 'дата планируемой доставки, прибытия заказа на склад филиала',
  `branch_id` int unsigned NOT NULL COMMENT 'заказ для филиала',
  `order_doc` char(10) NOT NULL COMMENT 'номер документа заказа, в одном документе заказа может быть несколько позиций - товаров для разных филиалов, периодов etc',
  `goods_id` bigint unsigned NOT NULL COMMENT 'id товара, внешний ключ для связи со справочником номенклатуры',
  `qty` int unsigned NOT NULL COMMENT 'количество заказанного товара',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `shipments_fk_branch` (`branch_id`),
  KEY `shipments_fk_supplier` (`supplier_id`),
  KEY `shipments_fk_goods` (`goods_id`),
  CONSTRAINT `shipments_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `shipments_fk_goods` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `shipments_fk_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `contractors` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица подтвежденных и отгруженных заказов';


CREATE TABLE `arrivals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doc_num` char(10) DEFAULT NULL COMMENT 'Номер документа о поступлении товара на склда из базы операционного учета компании',
  `doc_date` date DEFAULT NULL COMMENT 'Дата приходного документа из базы операционного учета',
  `arrived_at` date DEFAULT NULL COMMENT 'Дата фактического прихода товара на склад филиала',
  `supplier_id` bigint unsigned NOT NULL COMMENT 'id поставщика - внешний ключ для связи со справочником contractors',
  `goods_id` bigint unsigned NOT NULL COMMENT 'id товара для связи со справочником товаров',
  `branch_id` int unsigned NOT NULL COMMENT 'id филиала для связи со справочником',
  `cntr_num` char(11) DEFAULT NULL COMMENT 'Номер отгруженного контейнера',
  `order_doc` char(10) NOT NULL COMMENT 'номер документа заказа',
  `qty` int unsigned NOT NULL DEFAULT '0' COMMENT 'количество пришедшего на склад по факту товара',
  `cost` float(12,2) unsigned DEFAULT NULL COMMENT 'Стоимость купленной позиции, т.к. это база аналитики двойная точность не требуется',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `arrivals_fk_branch` (`branch_id`),
  KEY `arrivals_fk_supplier` (`supplier_id`),
  KEY `arrivals_fk_goods` (`goods_id`),
  CONSTRAINT `arrivals_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `arrivals_fk_goods` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `arrivals_fk_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `contractors` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1661 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица приходов товара на клады филиалов';


CREATE TABLE `sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doc_num` char(10) DEFAULT NULL COMMENT 'Номер документа о продаже из базы операционного учета компании',
  `doc_date` date DEFAULT NULL COMMENT 'Дата документа из базы операционного учета',
  `branch_id` int unsigned NOT NULL COMMENT 'заказ для филиала',
  `client_id` bigint unsigned NOT NULL COMMENT 'id клиента из справочника контрагентов',
  `goods_id` bigint unsigned NOT NULL COMMENT 'id товара для связи со справочником товаров',
  `qty` int unsigned NOT NULL COMMENT 'Количество проданного клиенту товара',
  `cost` float(12,2) unsigned DEFAULT NULL COMMENT 'Стоимость купленной позиции, т.к. это база аналитики двойная точность не требуется',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `sales_fk_branch` (`branch_id`),
  KEY `sales_fk_client` (`client_id`),
  KEY `sales_fk_goods` (`goods_id`),
  CONSTRAINT `sales_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `sales_fk_client` FOREIGN KEY (`client_id`) REFERENCES `contractors` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `sales_fk_goods` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1529 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица продаж';


CREATE TABLE `routes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shpm_doc` char(10) DEFAULT NULL COMMENT 'Номер документа отгрузки для связи с таблицей отгрузки',
  `order_doc` char(10) DEFAULT NULL COMMENT 'Номер документа заказа для связи с таблицей заказа',
  `bill_lading` char(10) DEFAULT NULL COMMENT 'Коносамент, накладная перевозимой партии груза - т.е. единицей перевозимой партии здесь может быть несколько контейнеров',
  `arrv_date` date DEFAULT NULL COMMENT 'Дата прибытия в транзитный пункт',
  `trnst1` char(50) DEFAULT NULL COMMENT 'транзитный пункт прибытия',
  `trnst2` char(50) DEFAULT NULL COMMENT 'транзитный пункт отправления',
  `depr_date` date DEFAULT NULL COMMENT 'Дата отправки из транзитного пункта',
  `branch_id` int unsigned NOT NULL COMMENT 'id филиала для связи со справочником',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `routes_fk_branch` (`branch_id`),
  KEY `routes_fk_trnst1` (`trnst1`),
  KEY `routes_fk_trnst2` (`trnst2`),
  CONSTRAINT `routes_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `routes_fk_trnst1` FOREIGN KEY (`trnst1`) REFERENCES `transit_points` (`description_points`) ON DELETE RESTRICT,
  CONSTRAINT `routes_fk_trnst2` FOREIGN KEY (`trnst2`) REFERENCES `transit_points` (`description_points`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица маршрутов';


