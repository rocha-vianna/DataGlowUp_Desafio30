SELECT COUNT(*) 
FROM october
WHERE category_code IS NULL;
-- 4034806

SELECT COUNT(*) 
FROM october
WHERE category_code IS NOT NULL;
-- 67477
----------------------------------------

SELECT COUNT(*) 
FROM november
WHERE category_code IS NULL;
-- 4560089

SELECT COUNT(*) 
FROM november
WHERE category_code IS NOT NULL;
-- 75748
----------------------------------------

SELECT COUNT(*) 
FROM december
WHERE category_code IS NULL;
-- 3474821

SELECT COUNT(*) 
FROM december
WHERE category_code IS NOT NULL;
-- 58465
----------------------------------------

SELECT COUNT(*) 
FROM january
WHERE category_code IS NULL;
-- 4190033

SELECT COUNT(*) 
FROM january
WHERE category_code IS NOT NULL;
-- 74719
----------------------------------------

SELECT COUNT(*) 
FROM february
WHERE category_code IS NULL;
-- 4079497

SELECT COUNT(*) 
FROM february
WHERE category_code IS NOT NULL;
-- 77185
----------------------------------------