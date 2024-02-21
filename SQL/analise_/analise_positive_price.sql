SELECT event_type, count(price)
FROM october
WHERE price > 0
AND event_type = 'purchase'
GROUP BY event_type;
-- "purchase"	245604

SELECT event_type, count(price)
FROM november
WHERE price > 0
AND event_type = 'purchase'
GROUP BY event_type;
--"purchase"	322400

SELECT event_type, count(price)
FROM december
WHERE price > 0
AND event_type = 'purchase'
GROUP BY event_type;
--"purchase"	213158

SELECT event_type, count(price)
FROM january
WHERE price > 0
GROUP BY event_type;
--"purchase"			 263760
--"remove_from_cart"	 814496
--"view"				2032183

SELECT event_type, count(price)
FROM february
WHERE price > 0
GROUP BY event_type;
--"purchase"			241958
--"remove_from_cart"	789810