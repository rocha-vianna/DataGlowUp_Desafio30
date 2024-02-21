SELECT * FROM january;

SELECT MIN(data), MAX(data) FROM january;
-- 01/01/2020 a 31/01/2020

SELECT MIN(hora), MAX(hora) FROM january;
-- 00:00:00 a 23:59:59

SELECT event_type, COUNT(*) AS QTD
FROM january
GROUP BY event_type
ORDER BY QTD DESC;
--"view"				2037608
--"cart"				1148323
--"remove_from_cart"	 815024
--"purchase"			 263797

SELECT COUNT(DISTINCT product_id) AS QTD_PRODUTOS, 
COUNT(DISTINCT category_id) AS QTD_CATEGORIAS_ID,
COUNT(DISTINCT category_code) AS QTD_CATEGORIAS_CODE,
COUNT(DISTINCT brand) AS QTD_MARCAS,
COUNT(DISTINCT user_id) AS QTD_USERS,
COUNT(DISTINCT user_session) AS QTD_SESSIONS
FROM january;
--QTD_PRODUTOS 			 45484
--QTD_CATEGORIAS_ID 	   482
--QTD_CATEGORIAS_CODE 		12
--QTD_MARCAS 			   256
--QTD_USERS 			410073
--QTD_SESSIONS 			965351

SELECT category_code, COUNT(*) AS QTD
FROM january
GROUP BY category_code
ORDER BY QTD DESC;
-- null 									4190033
--"appliances.environment.vacuum"			  32104
--"apparel.glove"							  13479
--"stationery.cartrige"						  11469
--"furniture.living_room.cabinet"			   6114
--"furniture.bathroom.bath"				       5139
--"accessories.bag"							   4076
--"appliances.personal.hair_cutter"			   1225
--"accessories.cosmetic_bag"					809
--"appliances.personal.massager"				169
--"appliances.environment.air_conditioner"		128
--"furniture.living_room.chair"					  5
--"sport.diving"								  2

-----------------UPDATED----------

SELECT MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM january;
-- MIN 	  0,00
-- MAX 	327,78
-- AVG    8,71

SELECT event_type, 
MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM january
GROUP BY event_type;
-- CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,25
-- PURCHASE
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,01
-- REMOVE_FROM_CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,35
-- VIEW
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG   12,49

-----------------BEFORE UPDATE--------------

SELECT MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM january;
-- MIN 	-79,37
-- MAX 	327,78
-- AVG    8,71

SELECT event_type, 
MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM january
GROUP BY event_type;
-- CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,25
-- PURCHASE
	-- MIN 	-79,37
	-- MAX 	327,78
	-- AVG    5,01
-- REMOVE_FROM_CART
	-- MIN 	-47,62
	-- MAX 	327,78
	-- AVG    5,35
-- VIEW
	-- MIN 	-79,37
	-- MAX 	327,78
	-- AVG   12,49

