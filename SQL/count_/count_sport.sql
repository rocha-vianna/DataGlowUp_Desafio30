SELECT category_code, COUNT(*) AS QTD
FROM october
WHERE category_code LIKE '%sport%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 2

SELECT category_code, COUNT(*) AS QTD
FROM november
WHERE category_code LIKE '%sport%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 0

SELECT category_code, COUNT(*) AS QTD
FROM december
WHERE category_code LIKE '%sport%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 0

SELECT category_code, COUNT(*) AS QTD
FROM january
WHERE category_code LIKE '%sport%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 2

SELECT category_code, COUNT(*) AS QTD
FROM february
WHERE category_code LIKE '%sport%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 0
