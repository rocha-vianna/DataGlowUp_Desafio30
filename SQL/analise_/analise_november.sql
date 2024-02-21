SELECT * FROM november;

SELECT MIN(data), MAX(data) FROM november;
-- 01/11/2019 a 30/11/2019

SELECT MIN(hora), MAX(hora) FROM november;
-- 00:00:00 a 23:59:59

SELECT event_type, COUNT(*) AS QTD
FROM november
GROUP BY event_type
ORDER BY QTD DESC;
--"view"				2076132
--"cart"				1311807
--"remove_from_cart"	 925481
--"purchase"			 322417

SELECT COUNT(DISTINCT product_id) AS QTD_PRODUTOS, 
COUNT(DISTINCT category_id) AS QTD_CATEGORIAS_ID,
COUNT(DISTINCT category_code) AS QTD_CATEGORIAS_CODE,
COUNT(DISTINCT brand) AS QTD_MARCAS,
COUNT(DISTINCT user_id) AS QTD_USERS,
COUNT(DISTINCT user_session) AS QTD_SESSIONS
FROM november;
--QTD_PRODUTOS 			 43419
--QTD_CATEGORIAS_ID 	   491
--QTD_CATEGORIAS_CODE 		10
--QTD_MARCAS 			   239
--QTD_USERS 			368232
--QTD_SESSIONS 			942022

SELECT category_code, COUNT(*) AS QTD
FROM november
GROUP BY category_code
ORDER BY QTD DESC;
-- null										4560089
--"appliances.environment.vacuum"			  32029
--"stationery.cartrige"						  13263
--"apparel.glove"							  10802
--"furniture.living_room.cabinet"			   7205
--"accessories.bag"							   5833
--"furniture.bathroom.bath"					   4839
--"appliances.personal.hair_cutter"				815
--"accessories.cosmetic_bag"					606
--"furniture.living_room.chair"					185
--"appliances.environment.air_conditioner"		171

-----------------UPDATED----------

SELECT MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM november;
-- MIN 	  0,00
-- MAX 	327,78
-- AVG    8,12

SELECT event_type, 
MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM november
GROUP BY event_type;
-- CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    4,99
-- PURCHASE
	-- MIN 	  0,05
	-- MAX 	311,38
	-- AVG    4,75
-- REMOVE_FROM_CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,09
-- VIEW
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG   11,97

-----------------BEFORE UPDATE--------------
SELECT MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM november;
-- MIN 	-79,37
-- MAX 	327,78
-- AVG    8,12

SELECT event_type, 
MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM november
GROUP BY event_type;
-- CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    4,99
-- PURCHASE
	-- MIN 	-79,37
	-- MAX 	311,38
	-- AVG    4,75
-- REMOVE_FROM_CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,09
-- VIEW
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG   11,97