SELECT * FROM february;

SELECT MIN(data), MAX(data) FROM february;
-- 01/02/2020 a 29/02/2020

SELECT MIN(hora), MAX(hora) FROM february;
-- 00:00:00 a 23:59:59

SELECT event_type, COUNT(*) AS QTD
FROM february
GROUP BY event_type
ORDER BY QTD DESC;
--"view"				1953586
--"cart"				1148694
--"remove_from_cart"	 812409
--"purchase"			 241993

SELECT COUNT(DISTINCT product_id) AS QTD_PRODUTOS, 
COUNT(DISTINCT category_id) AS QTD_CATEGORIAS_ID,
COUNT(DISTINCT category_code) AS QTD_CATEGORIAS_CODE,
COUNT(DISTINCT brand) AS QTD_MARCAS,
COUNT(DISTINCT user_id) AS QTD_USERS,
COUNT(DISTINCT user_session) AS QTD_SESSIONS
FROM february;
--QTD_PRODUTOS 			 48579
--QTD_CATEGORIAS_ID 	   487
--QTD_CATEGORIAS_CODE 		11
--QTD_MARCAS 			   268
--QTD_USERS 			391055
--QTD_SESSIONS 			931668

SELECT category_code, COUNT(*) AS QTD
FROM february
GROUP BY category_code
ORDER BY QTD DESC;
-- null										4079497
--"appliances.environment.vacuum"			  31485
--"apparel.glove"							  12569
--"stationery.cartrige"						  12037
--"furniture.living_room.cabinet"			   6529
--"furniture.bathroom.bath"					   5406
--"accessories.bag"							   3558
--"appliances.personal.massager"			   3127
--"appliances.personal.hair_cutter"			   1414
--"accessories.cosmetic_bag"				    894
--"appliances.environment.air_conditioner"		156
--"furniture.living_room.chair"					 10	

-----------------UPDATED----------

SELECT MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM february;
-- MIN 	  0,00
-- MAX 	327,78
-- AVG    8,52

SELECT event_type, 
MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM february
GROUP BY event_type;
-- CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,05
-- PURCHASE
	-- MIN 	  0,05
	-- MAX 	327,78
	-- AVG    4,99
-- REMOVE_FROM_CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,20
-- VIEW
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG   12,39

-----------------BEFORE UPDATE--------------

SELECT MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM february;
-- MIN 	-79,37
-- MAX 	327,78
-- AVG    8,53

SELECT event_type, 
MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM february
GROUP BY event_type;
-- CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,05
-- PURCHASE
	-- MIN 	-79,37
	-- MAX 	327,78
	-- AVG    4,98
-- REMOVE_FROM_CART
	-- MIN 	-23,81
	-- MAX 	327,78
	-- AVG    5,20
-- VIEW
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG   12,39

