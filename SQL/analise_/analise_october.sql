SELECT * FROM october;

SELECT MIN(data), MAX(data) FROM october;
-- 01/10/2019 a 31/10/2019

SELECT MIN(hora), MAX(hora) FROM october;
-- 00:00:00 a 23:59:59

SELECT event_type, COUNT(*) AS QTD
FROM october
GROUP BY event_type
ORDER BY QTD DESC;
--"view"				1862164
--"cart"				1232385
--"remove_from_cart"	 762110
--"purchase"			 245624

SELECT COUNT(DISTINCT product_id) AS QTD_PRODUTOS, 
COUNT(DISTINCT category_id) AS QTD_CATEGORIAS_ID,
COUNT(DISTINCT category_code) AS QTD_CATEGORIAS_CODE,
COUNT(DISTINCT brand) AS QTD_MARCAS,
COUNT(DISTINCT user_id) AS QTD_USERS,
COUNT(DISTINCT user_session) AS QTD_SESSIONS
FROM october;
--QTD_PRODUTOS 			 41899
--QTD_CATEGORIAS_ID 	   490
--QTD_CATEGORIAS_CODE 		11
--QTD_MARCAS 			   240
--QTD_USERS 			399664
--QTD_SESSIONS 			873960

SELECT category_code, COUNT(*) AS QTD
FROM october
GROUP BY category_code
ORDER BY QTD DESC;
-- null 										4034806
-- "appliances.environment.vacuum"				  27732
-- "stationery.cartrige"						  13459
-- "apparel.glove"								   7430
-- "furniture.living_room.cabinet"				   6234
-- "accessories.bag"							   5848
-- "furniture.bathroom.bath"					   5018
-- "appliances.personal.hair_cutter"			    828
-- "accessories.cosmetic_bag"					    642
-- "appliances.environment.air_conditioner"		    161
-- "furniture.living_room.chair"				    123
-- "sport.diving"								      2

-----------------UPDATED----------

SELECT MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM october;
-- MIN 	  0,00
-- MAX 	307,60
-- AVG    8,53

SELECT event_type, 
MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM october
GROUP BY event_type;
-- CART
	-- MIN 	  0,00
	-- MAX 	299,81
	-- AVG    5,39
-- PURCHASE
	-- MIN 	  0,05
	-- MAX 	299,81
	-- AVG    4,94
-- REMOVE_FROM_CART
	-- MIN 	  0,00
	-- MAX 	299,81
	-- AVG    5,24
-- VIEW
	-- MIN 	  0,00
	-- MAX 	307,60
	-- AVG   12,44

-----------------BEFORE UPDATE--------------
SELECT MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM october;
-- MIN 	-79,37
-- MAX 	307,60
-- AVG    8,53

SELECT event_type, 
MIN(price) AS PRECO_MIN, 
MAX(price) AS PRECO_MAX, 
AVG(price) AS PRECO_AVG 
FROM october
GROUP BY event_type;
-- CART
	-- MIN 	  0,00
	-- MAX 	299,81
	-- AVG    5,39
-- PURCHASE
	-- MIN 	-79,37
	-- MAX 	299,81
	-- AVG    4,93
-- REMOVE_FROM_CART
	-- MIN 	  0,00
	-- MAX 	299,81
	-- AVG    5,24
-- VIEW
	-- MIN 	  0,00
	-- MAX 	307,60
	-- AVG   12,44

