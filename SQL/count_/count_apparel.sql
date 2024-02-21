SELECT category_code, COUNT(*) AS QTD
FROM october
WHERE category_code LIKE '%apparel%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 7430

SELECT category_code, COUNT(*) AS QTD
FROM november
WHERE category_code LIKE '%apparel%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 10802

SELECT category_code, COUNT(*) AS QTD
FROM december
WHERE category_code LIKE '%apparel%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 8295

SELECT category_code, COUNT(*) AS QTD
FROM january
WHERE category_code LIKE '%apparel%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 13479

SELECT category_code, COUNT(*) AS QTD
FROM february
WHERE category_code LIKE '%apparel%'
GROUP BY category_code
ORDER BY QTD DESC;
-- TOTAL: 12569
