SELECT category_code, COUNT(*) AS QTD
FROM october
WHERE category_code LIKE '%accessories%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 6490

SELECT category_code, COUNT(*) AS QTD
FROM november
WHERE category_code LIKE '%accessories%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 6439

SELECT category_code, COUNT(*) AS QTD
FROM december
WHERE category_code LIKE '%accessories%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 5631

SELECT category_code, COUNT(*) AS QTD
FROM january
WHERE category_code LIKE '%accessories%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 4885

SELECT category_code, COUNT(*) AS QTD
FROM february
WHERE category_code LIKE '%accessories%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 4452
