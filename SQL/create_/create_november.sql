CREATE TABLE november(
	data DATE,
	hora TIME,
	event_type VARCHAR(55),
	product_id VARCHAR(55),
	category_id VARCHAR(55),
	category_code VARCHAR(255),
	brand VARCHAR(55),
	price NUMERIC,
	user_id VARCHAR(55),
	user_session VARCHAR(255)
);

COPY november(data, hora, event_type, product_id, category_id, category_code, brand, price, user_id, user_session)
FROM 'C:\Program Files\PostgreSQL\15\temp\2019Nov_SQL.csv'
DELIMITER ','
CSV HEADER
ENCODING 'latin1';

SELECT * FROM november;