SELECT category_code, COUNT(*) AS QTD
FROM october
WHERE category_code LIKE '%furniture%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 11375

SELECT category_code, COUNT(*) AS QTD
FROM november
WHERE category_code LIKE '%furniture%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 12229

SELECT category_code, COUNT(*) AS QTD
FROM december
WHERE category_code LIKE '%furniture%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 8027

SELECT category_code, COUNT(*) AS QTD
FROM january
WHERE category_code LIKE '%furniture%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 11258

SELECT category_code, COUNT(*) AS QTD
FROM february
WHERE category_code LIKE '%furniture%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 11945
