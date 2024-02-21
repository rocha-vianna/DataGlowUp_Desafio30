SELECT * FROM december;

SELECT MIN(data), MAX(data) FROM december;
-- 01/12/2019 a 31/12/2019

SELECT MIN(hora), MAX(hora) FROM december;
-- 00:00:00 a 23:59:59

SELECT event_type, COUNT(*) AS QTD
FROM december
GROUP BY event_type
ORDER BY QTD DESC;
--"view"				1728331
--"cart"				 927124
--"remove_from_cart"	 664655
--"purchase"			 213176

SELECT COUNT(DISTINCT product_id) AS QTD_PRODUTOS, 
COUNT(DISTINCT category_id) AS QTD_CATEGORIAS_ID,
COUNT(DISTINCT category_code) AS QTD_CATEGORIAS_CODE,
COUNT(DISTINCT brand) AS QTD_MARCAS,
COUNT(DISTINCT user_id) AS QTD_USERS,
COUNT(DISTINCT user_session) AS QTD_SESSIONS
FROM december;
--QTD_PRODUTOS 			 44624
--QTD_CATEGORIAS_ID 	   482
--QTD_CATEGORIAS_CODE 		10
--QTD_MARCAS 			   252
--QTD_USERS 			370154
--QTD_SESSIONS 			839812

SELECT category_code, COUNT(*) AS QTD
FROM december
GROUP BY category_code
ORDER BY QTD DESC;
--null									3474821
--"appliances.environment.vacuum"		  25818
--"stationery.cartrige"					   9500
--"apparel.glove"						   8295
--"accessories.bag"						   4938
--"furniture.living_room.cabinet"		   4478
--"furniture.bathroom.bath"				   3529
--"appliances.personal.hair_cutter"		   1102
--"accessories.cosmetic_bag"				693
--"appliances.environment.air_conditioner"	 92
--"furniture.living_room.chair"				 20

-----------------UPDATED----------

SELECT MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM december;
-- MIN 	  0,00
-- MAX 	327,78
-- AVG    8,87

SELECT event_type, 
MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM december
GROUP BY event_type;
-- CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,26
-- PURCHASE
	-- MIN 	  0,05
	-- MAX 	327,78
	-- AVG    5,06
-- REMOVE_FROM_CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,32
-- VIEW
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG   12,64

-----------------BEFORE UPDATE--------------
SELECT MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM december;
-- MIN 	-79,37
-- MAX 	327,78
-- AVG    8,87

SELECT event_type, 
MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM december
GROUP BY event_type;
-- CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,26
-- PURCHASE
	-- MIN 	-79,37
	-- MAX 	327,78
	-- AVG    5,06
-- REMOVE_FROM_CART
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG    5,32
-- VIEW
	-- MIN 	  0,00
	-- MAX 	327,78
	-- AVG   12,64