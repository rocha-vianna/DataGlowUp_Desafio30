SELECT event_type, count(price)
FROM october
WHERE price < 0
GROUP BY event_type;
-- "purchase"	20

SELECT event_type, count(price)
FROM november
WHERE price < 0
GROUP BY event_type;
--"purchase"	17

SELECT event_type, count(price)
FROM december
WHERE price < 0
GROUP BY event_type;
--"purchase"	18

SELECT event_type, count(price)
FROM january
WHERE price < 0
GROUP BY event_type;
--"purchase"			36
--"remove_from_cart"	 1
--"view"				 2

SELECT event_type, count(price)
FROM february
WHERE price < 0
GROUP BY event_type;
--"purchase"			35
--"remove_from_cart"	 2