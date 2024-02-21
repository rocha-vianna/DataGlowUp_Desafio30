SELECT category_code, COUNT(*) AS QTD
FROM october
WHERE category_code LIKE '%stationery%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 13459

SELECT category_code, COUNT(*) AS QTD
FROM november
WHERE category_code LIKE '%stationery%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 13263

SELECT category_code, COUNT(*) AS QTD
FROM december
WHERE category_code LIKE '%stationery%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 9500

SELECT category_code, COUNT(*) AS QTD
FROM january
WHERE category_code LIKE '%stationery%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 11469

SELECT category_code, COUNT(*) AS QTD
FROM february
WHERE category_code LIKE '%stationery%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 12037
