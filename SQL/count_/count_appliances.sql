SELECT category_code, COUNT(*) AS QTD
FROM october
WHERE category_code LIKE '%appliances%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 28721

SELECT category_code, COUNT(*) AS QTD
FROM november
WHERE category_code LIKE '%appliances%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 33015

SELECT category_code, COUNT(*) AS QTD
FROM december
WHERE category_code LIKE '%appliances%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 27012

SELECT category_code, COUNT(*) AS QTD
FROM january
WHERE category_code LIKE '%appliances%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 33626

SELECT category_code, COUNT(*) AS QTD
FROM february
WHERE category_code LIKE '%appliances%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 36182
