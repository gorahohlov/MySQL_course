SELECT * FROM 
	(SELECT goods_id, branch_id, -qty FROM sales
	UNION
	SELECT goods_id, branch_id, qty FROM arrivals) AS mv
	WHERE goods_id = 1 AND branch_id = 1;

PREPARE dinysel FROM 
'SELECT 
s.doc_date, 
-- g.article, g.description, b.dscr_branch, b.brief_dscr, 
sum(s.qty)
FROM sales s 
LEFT JOIN goods g ON g.id=s.goods_id 
LEFT JOIN branches b ON b.id = s.branch_id 
WHERE g.article = ? AND b.brief_dscr = ? AND s.doc_date <= ?
GROUP BY s.doc_date WITH ROLLUP
ORDER BY s.doc_date';
SET @art1 = '9999983', @brn1 = 'msk', @dat1 = '2015-12-31';
EXECUTE dinysel USING @art1, @brn1, @dat1;


-- выборка продаж на дату, по филиалу
SELECT
-- s.doc_date, 
-- g.article, g.description, b.dscr_branch, b.brief_dscr, 
g.article, g.model, g.description,
sum(-s.qty)
FROM sales s 
LEFT JOIN goods g ON g.id=s.goods_id 
LEFT JOIN branches b ON b.id = s.branch_id 
WHERE b.brief_dscr = 'spb' AND s.doc_date <= '2014-12-31' AND g.article = '9999257'
GROUP BY g.article, g.description -- WITH ROLLUP
ORDER BY g.article;

-- выборка приходов на дату, по филиалу
SELECT
-- s.doc_date, 
-- g.article, g.description, b.dscr_branch, b.brief_dscr, 
g.article, g.model, g.description,
sum(a.qty)
FROM arrivals a 
LEFT JOIN goods g ON g.id=a.goods_id 
LEFT JOIN branches b ON b.id = a.branch_id 
WHERE b.brief_dscr = 'spb' AND a.doc_date <= '2014-12-31' AND g.article = '9999257'
-- GROUP BY g.article, g.description -- WITH ROLLUP
ORDER BY g.article;

-- Остатки по всей номенклатуре на дату, по филиалу /Регистр остатков в разрезе номенклатуры/
-- могут быть отрицательные остатки - нонсенс, но таких ситуаций не должно возникать при работе на уровне приложения.
SET @dat2 = '2015-12-31', @brn2 = 'msk';
WITH 
	arrv AS 
(SELECT g.article, g.model, g.description, sum(a.qty) AS s_a_qty
FROM arrivals a 
LEFT JOIN goods g ON g.id=a.goods_id 
LEFT JOIN branches b ON b.id = a.branch_id 
WHERE b.brief_dscr = @brn2 AND a.doc_date <= @dat2 -- AND g.article = '9999101'
GROUP BY g.article, g.model, g.description -- WITH ROLLUP
ORDER BY g.article),
	sls AS 
(SELECT g.article, g.model, g.description, (-sum(s.qty)) AS s_s_qty
FROM sales s 
LEFT JOIN goods g ON g.id=s.goods_id 
LEFT JOIN branches b ON b.id = s.branch_id 
WHERE b.brief_dscr = @brn2 AND s.doc_date <= @dat2 -- AND g.article = '9999101'
GROUP BY g.article, g.model, g.description -- WITH ROLLUP
ORDER BY g.article)
SELECT article AS 'Артикул', model AS 'Модель', descr AS 'Описание', sum(rst_) AS 'Остаток'
FROM (
SELECT arrv.article AS article, arrv.model AS model, arrv.description AS descr, arrv.s_a_qty AS rst_
FROM arrv LEFT JOIN sls ON arrv.article = sls.article
UNION
SELECT sls.article, sls.model, sls.description, sls.s_s_qty
FROM sls LEFT JOIN arrv ON sls.article = arrv.article) AS tbl1
GROUP BY article, model, descr
ORDER BY model, descr;

-- продажи по месяцам
SELECT sum(qty), sum(cost) FROM sales s WHERE s.branch_id =1 AND s.goods_id = 1;

SELECT 
b.brief_dscr,
-- CONCAT(YEAR(s.doc_date), '_', IF(LENGTH(MONTH(s.doc_date))=1, concat('0', MONTH(s.doc_date)), MONTH(s.doc_date))) AS mnth, 
CONCAT(DATE_FORMAT(s.doc_date, '%Y'), '_', DATE_FORMAT(s.doc_date, '%m')) AS mnth,
-- c.company_name, 
-- g.description, 
Sum(s.qty) AS 'Кол-во проданного товара', 
Sum(s.cost) AS 'Стоимость проданного товара'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
WHERE s.goods_id = 1
GROUP BY mnth, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'msk'
ORDER BY mnth DESC;


WITH RECURSIVE dts (doc_date) AS 
	(
	SELECT min(doc_date) FROM sales
	UNION ALL
	SELECT doc_date + INTERVAL 1 YEAR FROM dts
	WHERE doc_date + INTERVAL 1 YEAR <= (SELECT Max(doc_date) FROM sales)
	)
SELECT DATE_FORMAT(dts.doc_date, '%Y') AS yr FROM dts ORDER BY yr DESC;

WITH 
	msk AS
(SELECT 
-- b.brief_dscr,
-- CONCAT(YEAR(s.doc_date), '_', IF(LENGTH(MONTH(s.doc_date))=1, concat('0', MONTH(s.doc_date)), MONTH(s.doc_date))) AS mnth, 
DATE_FORMAT(s.doc_date, '%Y') AS yr,
-- c.company_name, 
-- g.description, 
Sum(s.qty) AS msk_sales -- 'продажи_msk'
-- Sum(s.cost) AS 'Стоимость проданного товара'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
-- WHERE s.goods_id = 1
GROUP BY yr, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'msk'
ORDER BY yr DESC), 
	spb AS 
(SELECT 
DATE_FORMAT(s.doc_date, '%Y') AS yr,
Sum(s.qty) AS spb_sales -- 'продажи_spb'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
-- WHERE s.goods_id = 1
GROUP BY yr, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'spb'
ORDER BY yr DESC),
	ekb AS 
(SELECT DATE_FORMAT(s.doc_date, '%Y') AS yr, Sum(s.qty) AS ekb_sales -- 'продажи_spb'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
GROUP BY yr, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'ekb'
ORDER BY yr DESC),
	nsk AS 
(SELECT DATE_FORMAT(s.doc_date, '%Y') AS yr, Sum(s.qty) AS nsk_sales -- 'продажи_spb'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
GROUP BY yr, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'nsk'
ORDER BY yr DESC),
	krd AS 
(SELECT DATE_FORMAT(s.doc_date, '%Y') AS yr, Sum(s.qty) AS krd_sales -- 'продажи_spb'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
GROUP BY yr, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'krd'
ORDER BY yr DESC)
SELECT msk.yr, msk_sales, spb_sales, ekb_sales, nsk_sales, krd_sales 
FROM msk LEFT JOIN spb ON msk.yr = spb.yr 
		 LEFT JOIN ekb ON ekb.yr = msk.yr 
		 LEFT JOIN nsk ON nsk.yr = msk.yr 
		 LEFT JOIN krd ON krd.yr = msk.yr;


WITH RECURSIVE dts (doc_date) AS 
	(
	SELECT min(doc_date) FROM sales
	UNION ALL
	SELECT doc_date + INTERVAL 1 MONTH FROM dts
	WHERE doc_date + INTERVAL 1 MONTH <= (SELECT Max(doc_date) FROM sales)
	)
SELECT DATE_FORMAT(dts.doc_date, '%Y_%m') AS mnt FROM dts ORDER BY mnt DESC;

SELECT DISTINCT CONCAT(YEAR(doc_date), '_', date_format(doc_date, '%m')) AS mnt FROM sales ORDER BY mnt DESC;

-- -----------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------
WITH RECURSIVE dts (doc_date) AS 
	(
	SELECT Min(doc_date) FROM sales
	UNION ALL
	SELECT doc_date + INTERVAL 1 YEAR FROM dts
	WHERE doc_date + INTERVAL 1 YEAR <= (SELECT Max(doc_date) FROM sales)
	),
-- WITH 
	msk AS
(SELECT 
-- b.brief_dscr,
-- CONCAT(YEAR(s.doc_date), '_', IF(LENGTH(MONTH(s.doc_date))=1, concat('0', MONTH(s.doc_date)), MONTH(s.doc_date))) AS mnth, 
DATE_FORMAT(s.doc_date, '%Y') AS yr,
-- c.company_name, 
-- g.description, 
Sum(s.qty) AS msk_sales -- 'продажи_msk'
-- Sum(s.cost) AS 'Стоимость проданного товара'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
-- WHERE s.goods_id = 1
GROUP BY yr, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'msk'
ORDER BY yr DESC), 
	spb AS 
(SELECT 
DATE_FORMAT(s.doc_date, '%Y') AS yr,
Sum(s.qty) AS spb_sales -- 'продажи_spb'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
-- WHERE s.goods_id = 1
GROUP BY yr, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'spb'
ORDER BY yr DESC),
	ekb AS 
(SELECT DATE_FORMAT(s.doc_date, '%Y') AS yr, Sum(s.qty) AS ekb_sales -- 'продажи_spb'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
GROUP BY yr, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'ekb'
ORDER BY yr DESC),
	nsk AS 
(SELECT DATE_FORMAT(s.doc_date, '%Y') AS yr, Sum(s.qty) AS nsk_sales -- 'продажи_spb'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
GROUP BY yr, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'nsk'
ORDER BY yr DESC),
	krd AS 
(SELECT DATE_FORMAT(s.doc_date, '%Y') AS yr, Sum(s.qty) AS krd_sales -- 'продажи_spb'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
GROUP BY yr, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'krd'
ORDER BY yr DESC)
SELECT DATE_FORMAT(dts.doc_date, '%Y') AS 'Год', COALESCE(msk_sales, 0) AS 'Прод_Msk', 
												 COALESCE(spb_sales, 0) AS 'Прод_Spb', 
												 COALESCE(ekb_sales, 0) AS 'Прод_Ekb', 
												 COALESCE(nsk_sales, 0) AS 'Прод_Nsk', 
												 COALESCE(krd_sales, 0) AS 'Прод_Krd'
FROM dts 
		LEFT JOIN msk ON msk.yr = DATE_FORMAT(dts.doc_date, '%Y')
-- SELECT msk.yr, msk_sales, spb_sales, ekb_sales, nsk_sales, krd_sales 
-- FROM msk 
		LEFT JOIN spb ON spb.yr = DATE_FORMAT(dts.doc_date, '%Y') 
		LEFT JOIN ekb ON ekb.yr = DATE_FORMAT(dts.doc_date, '%Y') 
		LEFT JOIN nsk ON nsk.yr = DATE_FORMAT(dts.doc_date, '%Y')
		LEFT JOIN krd ON krd.yr = DATE_FORMAT(dts.doc_date, '%Y')
ORDER BY 1 DESC;


-- генерация рекурсивной последовательности месяцев в убывающем порядке следования.
WITH RECURSIVE dts (doc_date) AS 
	(
	SELECT min(doc_date) FROM sales
	UNION ALL
	SELECT doc_date + INTERVAL 1 MONTH FROM dts
	WHERE doc_date + INTERVAL 1 MONTH <= (SELECT Max(doc_date) FROM sales)
	)
SELECT DATE_FORMAT(dts.doc_date, '%Y_%m') AS mnt -- CONCAT(DATE_FORMAT(dts.doc_date, '%Y'), '_', DATE_FORMAT(dts.doc_date, '%m')) AS mnt 
/*, 	(SELECT Sum(s.qty) AS 'Кол-во проданного товара'
	FROM sales s 
	JOIN goods g ON g.id = s.goods_id 
	JOIN branches b ON b.id = s.branch_id 
	JOIN contractors c ON c.id = s.client_id
	WHERE s.goods_id = 1 AND b.brief_dscr = 'msk' AND CONCAT(DATE_FORMAT(s.doc_date, '%Y'), '_', DATE_FORMAT(s.doc_date, '%m')) = dts.mnt
	-- GROUP BY CONCAT(DATE_FORMAT(s.doc_date, '%Y'), '_', DATE_FORMAT(s.doc_date, '%m'))
	-- mnth, b.brief_dscr WITH ROLLUP
	-- HAVING b.brief_dscr = 'msk' AND CONCAT(DATE_FORMAT(s.doc_date, '%Y'), '_', DATE_FORMAT(s.doc_date, '%m')) = dts.mnt
	) AS q*/
FROM dts 
ORDER BY mnt DESC;


-- выборка из таблицы sales статистики продаж по филиалу и товару сгруппированных по месяцам
(SELECT 
b.brief_dscr,
-- CONCAT(YEAR(s.doc_date), '_', IF(LENGTH(MONTH(s.doc_date))=1, concat('0', MONTH(s.doc_date)), MONTH(s.doc_date))) AS mnth, 
CONCAT(DATE_FORMAT(s.doc_date, '%Y'), '_', DATE_FORMAT(s.doc_date, '%m')) AS mnth,
-- c.company_name, 
-- g.description, 
Sum(s.qty) AS 'Кол-во проданного товара', 
Sum(s.cost) AS 'Стоимость проданного товара'
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
WHERE s.goods_id = 1
GROUP BY mnth, b.brief_dscr WITH ROLLUP
HAVING b.brief_dscr = 'msk'
ORDER BY mnth DESC)
;

-- попытка связать эти две табицы. вариант 1
WITH RECURSIVE dts (doc_date) AS 
	(
	SELECT min(doc_date) FROM sales
	UNION ALL
	SELECT doc_date + INTERVAL 1 MONTH FROM dts
	WHERE doc_date + INTERVAL 1 MONTH <= (SELECT Max(doc_date) FROM sales)
	)
SELECT DATE_FORMAT(dts.doc_date, '%Y_%m') AS mnt, COALESCE(msk.smq, 0) AS 'Кол-во проданного товара', COALESCE(msk.smc,0) AS 'Стоимость проданного товара' -- msk.smq, msk.smc 
FROM dts
LEFT JOIN 
	(SELECT 
	-- b.brief_dscr, 
	DATE_FORMAT(s.doc_date, '%Y_%m') AS mnth, 
	Sum(s.qty) AS smq, -- 'Кол-во проданного товара', 
	Sum(s.cost) AS smc -- 'Стоимость проданного товара'
	FROM sales s 
	JOIN goods g ON g.id = s.goods_id 
	JOIN branches b ON b.id = s.branch_id 
	JOIN contractors c ON c.id = s.client_id
	WHERE s.goods_id = 1
	GROUP BY mnth, b.brief_dscr WITH ROLLUP
	HAVING b.brief_dscr = 'msk'
	ORDER BY mnth DESC) AS msk 
ON DATE_FORMAT(dts.doc_date, '%Y_%m') = msk.mnth
ORDER BY 1 DESC;

-- попытка связать эти две табицы. вариант 2 
WITH RECURSIVE dts (doc_date) AS 
	(
	SELECT min(doc_date) FROM sales
	UNION ALL
	SELECT doc_date + INTERVAL 1 MONTH FROM dts
	WHERE doc_date + INTERVAL 1 MONTH <= (SELECT Max(doc_date) FROM sales)
	),
	msk AS (SELECT 
	-- b.brief_dscr, 
	DATE_FORMAT(s.doc_date, '%Y_%m') AS mnth, 
	Sum(s.qty) AS smq, -- 'Кол-во проданного товара', 
	Sum(s.cost) AS smc -- 'Стоимость проданного товара'
	FROM sales s 
	JOIN goods g ON g.id = s.goods_id 
	JOIN branches b ON b.id = s.branch_id 
	JOIN contractors c ON c.id = s.client_id
	WHERE s.goods_id = 1
	GROUP BY mnth, b.brief_dscr WITH ROLLUP
	HAVING b.brief_dscr = 'msk'
	ORDER BY mnth DESC)
SELECT DATE_FORMAT(dts.doc_date, '%Y_%m') AS mnt, COALESCE(msk.smq, 0) AS 'Кол-во проданного товара', COALESCE(msk.smc,0) AS 'Стоимость проданного товара' -- msk.smq, msk.smc 
FROM dts
LEFT JOIN msk
ON DATE_FORMAT(dts.doc_date, '%Y_%m') = msk.mnth
ORDER BY 1 DESC;
-- -----------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW agg_sal_cli AS 
SELECT 
b.brief_dscr,
CONCAT(DATE_FORMAT(s.doc_date, '%Y'), '_', DATE_FORMAT(s.doc_date, '%m')) AS mnth,
c.company_name AS comp_name, 
Sum(s.qty) AS s_qty, 
Sum(s.cost) AS s_cst
FROM sales s 
JOIN goods g ON g.id = s.goods_id 
JOIN branches b ON b.id = s.branch_id 
JOIN contractors c ON c.id = s.client_id
-- WHERE c.company_name = 'Stehr-Rosenbaum'
GROUP BY mnth, b.brief_dscr, c.company_name -- WITH ROLLUP
HAVING b.brief_dscr = 'msk'
ORDER BY mnth DESC
;

SELECT * FROM agg_sal_cli WHERE comp_name = 'Stehr-Rosenbaum';

-- выборка сопоставление плана и факта заказов, отгрузок, приходов по филиалу за период
CREATE OR REPLACE VIEW plan_fact AS  
SELECT o.doc_order AS order_no, 
		DATE(o.created_at) AS ord_create, -- дата размещения заказа поставщику
		DATE(o.dispatched_at) AS est_depart, -- ожидаемая дата отправки заказа
		DATE(s.dispatched_at) AS depart_date, -- дата фактической отправки заказа
		DATE(o.arrived_at) AS est_arriv, -- ожидаемая дата прибытия груза
 		DATE(a.arrived_at) AS arr_date, -- дата прибытия груза
-- 		s.cntr_num AS cntr_no, -- номер контейнера
-- 		s.shpm_doc, s.shpm_date,
-- 		a.doc_num, a.arrived_at, 
-- 		g.article, g.description, 
		c.company_name AS mfg_name, -- наименование отправлителя  
		b.brief_dscr AS affiliate  --  филиал назначения груза-заказа
FROM orders o 
	LEFT JOIN contractors c ON c.id = o.supplier_id 
	LEFT JOIN goods g ON g.id = o.goods_id 
	LEFT JOIN branches b ON b.id = o.branch_id 
	LEFT JOIN shipments s ON s.order_doc = o.doc_order AND o.branch_id = s.branch_id AND o.goods_id = s.goods_id 
	LEFT JOIN arrivals a ON a.order_doc = o.doc_order AND o.branch_id = a.branch_id AND o.goods_id = a.goods_id 
WHERE b.brief_dscr = 'msk' AND (a.arrived_at BETWEEN '2014-04-01' AND '2014-06-30') AND o.doc_order = 'ORD0000691'
ORDER BY o.created_at DESC
;

SELECT * FROM plan_fact;

/*SELECT * FROM orders o WHERE o.doc_order = 'ORD0000691' ORDER BY goods_id;
SELECT * FROM shipments s WHERE s.order_doc = 'ORD0000691' ORDER BY branch_id;
SELECT * FROM arrivals a WHERE a.order_doc = 'ORD0000691';*/

-- выборка сопоставление плана и факта заказов, отгрузок, приходов по филиалу за период в разрезе товарной номенклатуры.
CREATE OR REPLACE VIEW plan_fact2 AS  
SELECT o.doc_order AS order_no, g.model, g.description, 
		DATE(o.created_at) AS ord_create, -- дата размещения заказа поставщику
		DATE(o.dispatched_at) AS est_depart, -- ожидаемая дата отправки заказа
		DATE(s.dispatched_at) AS depart_date, -- дата фактической отправки заказа
		DATE(o.arrived_at) AS est_arriv, -- ожидаемая дата прибытия груза
		DATE(a.arrived_at) AS arr_date, -- дата прибытия груза
		c.company_name AS mfg_name, -- наименование отправлителя  
		b.brief_dscr AS affiliate  --  филиал назначения груза-заказа
FROM orders o 
	LEFT JOIN shipments s ON o.doc_order = s.order_doc AND o.branch_id = s.branch_id AND o.goods_id = s.goods_id
	LEFT JOIN arrivals a ON o.doc_order = a.order_doc AND o.branch_id = a.branch_id AND o.goods_id = a.goods_id
	LEFT JOIN contractors c ON c.id = o.supplier_id
	LEFT JOIN branches b ON b.id = o.branch_id 
	LEFT JOIN goods g ON g.id = o.goods_id 
WHERE o.doc_order = 'ORD0000691' AND b.brief_dscr = 'msk'   -- o.branch_id = 1
;

SELECT * FROM plan_fact2;

-- ---------------
-- Triggers

SELECT * FROM shipments s WHERE s.cntr_num = 'SHJX5757625';
SELECT * FROM arrivals a  WHERE a.cntr_num = 'SHJX5757625';
SELECT a.cntr_num, a.order_doc, count(a.doc_num) AS 'Кво документов прихода' FROM arrivals a GROUP BY a.cntr_num, a.order_doc ORDER BY a.cntr_num ;
-- обнаружил некоторую противоречивость в данных (некритическую) - у нас контейнер выходит безразмерным (может вмещать 1000000 шт дверей)
SELECT * FROM arrivals a ORDER BY a.cntr_num ;

SELECT DISTINCT s.shpm_doc, s.shpm_date, s.cntr_num, 
		a.cntr_num
FROM shipments s
	RIGHT JOIN arrivals a ON a.cntr_num = s.cntr_num 
WHERE s.cntr_num IS NOT NULL;

/*поковырял данные - есть идея создать триггер который бы проверял даты 
(например дату прихода груза, которая должна быть не раньше даты отгрузки и документ отгрузки должен существовать!)*/

/*Второй триггер при добавлении записей в таблицу приходов (arrivals) должен проверять что данный контейнер был отправлен 
(присутствует в таблице shipments)*/  

DELIMITER // 

CREATE FUNCTION chck_cntr(cntr_no CHAR(11)) -- проверяем присутствует ли контейнер добавляемый в таблицу arrivals в таблице отгрузок shipments  
RETURNS BOOLEAN READS SQL DATA
BEGIN 
	RETURN EXISTS(SELECT 1 FROM shipments WHERE cntr_num = cntr_no);
END//


CREATE TRIGGER arr_chck_cntr BEFORE INSERT ON arrivals FOR EACH ROW
BEGIN 
	IF !chck_cntr(NEW.cntr_num) THEN 
		SIGNAL SQLSTATE "45000"
    	SET MESSAGE_TEXT = "Контейнер с таким номером не был отгружен. Его нет в таблице Shipments";
  	END IF;
  	IF NEW.doc_date <= (SELECT shpm_date FROM shipments WHERE shipments.cntr_num = NEW.cntr_num) THEN
  		SIGNAL SQLSTATE "45000"
    	SET MESSAGE_TEXT = "Дата отгрузки контейнера позже даты прибытия! Проверьте данные перед добавлением записи!";
    END IF;
END//

DELIMITER ;

DESC arrivals;
SELECT * FROM shipments; 	-- '2012-07-13' 'MUKR2311880'
INSERT INTO arrivals (doc_date, cntr_num, supplier_id, branch_id, goods_id, order_doc) VALUES ('2012-05-13',	'MUKR2311880', 2, 4, 2, '2011-11-11');
-- Триггер отработал штатно!
