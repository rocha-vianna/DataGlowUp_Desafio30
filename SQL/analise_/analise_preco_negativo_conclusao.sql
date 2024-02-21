SELECT product_id, COUNT(*)
FROM october
WHERE price < 0
GROUP BY product_id;
--"5670257"	6
--"5716855"	3
--"5716857"	5
--"5716859"	5
--"5716861"	1

SELECT user_id, COUNT(*)
FROM october
WHERE price < 0
GROUP BY user_id;
-- 20 clientes

--------------------------------------

SELECT product_id, COUNT(*)
FROM november
WHERE price < 0
GROUP BY product_id;
--"5670257"	4
--"5716855"	2
--"5716857"	6
--"5716859"	4
--"5716861"	1

SELECT user_id, COUNT(*)
FROM november
WHERE price < 0
GROUP BY user_id;
-- 14 clientes

--------------------------------------

SELECT product_id, COUNT(*)
FROM december
WHERE price < 0
GROUP BY product_id;
--"5670257"	8
--"5716855"	2
--"5716857"	2
--"5716859"	4
--"5716861"	2

SELECT user_id, COUNT(*)
FROM december
WHERE price < 0
GROUP BY user_id;
-- 15 clientes
--------------------------------------

SELECT product_id, COUNT(*)
FROM january
WHERE price < 0
GROUP BY product_id;
--"5670257"	10
--"5716855"	 2
--"5716857"	13
--"5716859"	 9
--"5716861"	 5

SELECT user_id, COUNT(*)
FROM january
WHERE price < 0
GROUP BY user_id;
-- 37 clientes
--------------------------------------

SELECT product_id, COUNT(*)
FROM february
WHERE price < 0
GROUP BY product_id;
--"5670257"	11
--"5716855"	 3
--"5716857"	11
--"5716859"	 9
--"5716861"	 3

SELECT user_id, COUNT(*)
FROM february
WHERE price < 0
GROUP BY user_id;
-- 29 clientes

SELECT *
FROM february
WHERE user_id = '548835804'
--and price < 0
and data = '2020-02-22'
order by hora;
-- FORAM 4 COMPRAS DO PRODUTO "5670257" COM PREÇO -15,87 PELO MESMO CLIENTE, NO MESMO DIA E HORA
-- SOMANDO TUDO, DÁ 0,60
-- FORAM 9 PRODUTOS NO TOTAL
-- SE '5670257' FOR DESCONTO, CLIENTE LEVOU 5 PRODUTOS QUE SAIRIAM A 64,08 POR 0,60 - LOGO NÃO DEVE SER DESCONTO

SELECT product_id, AVG(price)
FROM january
WHERE product_id IN (SELECT product_id FROM january WHERE price < 0)
GROUP BY product_id
ORDER BY product_id;
-- SOMENTE 5 PRODUTOS POSSUEM PREÇO NEGATIVO EM TODOS OS MESES
-- 5670257			-15,87
-- 5716855			- 7,94
-- 5716857			-23,81
-- 5716859			-47,62
-- 5716861			-79,37
-- PORTANTO, CONCLUO QUE ESSES PRODUTOS FORAM INSERIDOS COM ERRO DE DIGITAÇÃO - NÃO DEVERIAM TER O SINAL NEGATIVO