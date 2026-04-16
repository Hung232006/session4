CREATE TABLE Products(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	category VARCHAR(50),
	price DECIMAL(10,2),
	stock INT
); 
drop table Students;
INSERT INTO Products(name,category,price,stock)
VALUES ('LAPTOP DELL', 'Electronics',1500.00,5),
		('LOGITECH CHUOT', 'Electronics', 25.50, 50),
		('BAN PHIM RAZER', 'Electronics', 120.00, 20),
		('TU LANH LG', 'HOME APPLIANCES', 800.000, 3),
		('MAY GIAT SAMSUNG', 'HOME APPLIANCES', 600.000, 2);
		
SELECT * FROM Products;
INSERT INTO Products(name,category,price,stock)
VALUES ('Điều hòa Panasonic', 'Home Appliances',400.00,10);
UPDATE Products 
SET stock = 7 WHERE name = 'Laptop Dell';
DELETE FROM Products WHERE stock = 0;
SELECT * FROM Products ORDER BY price DESC;
SELECT DISTINCT category FROM Products;
SELECT * FROM Products WHERE price BETWEEN 100 AND 1000;
SELECT * FROM Products WHERE name ILIKE '%LG%' OR name ILIKE '%SAMSUNG%';
SELECT * FROM Products ORDER BY price DESC
LIMIT 2;
