SELECT COUNT(*) 
FROM october
WHERE brand IS NULL;
-- 1659261

SELECT COUNT(*) 
FROM october
WHERE brand IS NOT NULL;
-- 2443022
----------------------------------------

SELECT COUNT(*) 
FROM november
WHERE brand IS NULL;
-- 1986029

SELECT COUNT(*) 
FROM november
WHERE brand IS NOT NULL;
-- 2649808
----------------------------------------

SELECT COUNT(*) 
FROM december
WHERE brand IS NULL;
-- 1510289

SELECT COUNT(*) 
FROM december
WHERE brand IS NOT NULL;
-- 2022997
----------------------------------------

SELECT COUNT(*) 
FROM january
WHERE brand IS NULL;
-- 1775630

SELECT COUNT(*) 
FROM january
WHERE brand IS NOT NULL;
-- 2489122
----------------------------------------

SELECT COUNT(*) 
FROM february
WHERE brand IS NULL;
-- 1825908

SELECT COUNT(*) 
FROM february
WHERE brand IS NOT NULL;
-- 2330774
----------------------------------------