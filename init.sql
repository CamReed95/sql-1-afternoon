-- Table person
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email VARCHAR(32),
    age INTEGER,
    height INTEGER, 
    city TEXT,
    favorite_color TEXT
)

INSERT INTO person (name, email, age, height, city, favorite_color)
VALUES
('john', 'a@email.com', 1, 1, 'Mesa', 'Blue'),
('Jacob', 'b@email.com', 2, 2, 'Phoenix', 'Red'),
('Jingle', 'c@email.com', 3, 3, 'Chandler', 'Green'),
('Heimer', 'd@email.com', 4, 4, 'Tempe', 'Purple'),
('Schmidt', 'e@email.com', 5, 5, 'Gilbert', 'White')

SELECT * FROM person ORDER BY DESC height;
SELECT * FROM person ORDER BY ASC height;
SELECT * FROM person ORDER BY DESC age;
SELECT * FROM person WHERE age > 20;
SELECT * FROM person WHERE age = 18;
SELECT * FROM person WHERE age < 20 AND age > 30;
SELECT * FROM person WHERE age != 27;
SELECT * FROM person WHERE favorite_color != 'Red';
SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';
SELECT * FROM person WHERE favorite_color = 'Orange' OR 'Green';
SELECT * FROM person WHERE favorite_color IN('Orange', 'Green', 'Blue')
SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple')

--------------------------------
--table instructions

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    person_id TEXT,
    product_name TEXT,
    product_price TEXT, 
    quantity INTEGER
)

INSERT INTO orders (person_id, product_id, product_name, product_price, quantity)
VALUES
('James', 1, 'a', 1, 1),
('Jack', 2, 'b', 2, 2),
('Ann', 3, 'c', 3, 3),
('Jill', 4, 'd', 4, 4),
('Janet', 5, 'e', 5, 5)

SELECT 1 FROM orders;
SELECT 2 FROM orders;
SELECT * FROM orders;
SELECT SUM(quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;

------------------------------------
--table artist

INSERT INTO artist (name)
VALUES ('Jimmy')

SELECT * FROM artist ORDER BY name DESC LIMIT 10;
SELECT * FROM artist ORDER BY ASC LIMIT 5;
SELECT * FROM artist WHERE name LIKE 'Black%';
SELECT * FROM artist WHERE name LIKE '%Black%';

------------------------------------
--table employee
SELECT first_name, last_name, FROM employee WHERE city = 'Calgary';
SELECT MAX(birth_date) FROM employee;
SELECT MIN(birth_date) FROM emplpoyee;
SELECT * FROM employee WHERE reports_to = 2;
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

------------------------------------
--table invoice

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;
SELECT * FROM invoice WHERE total > 5;
SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');
SELECT AVG(total) FROM invoice;
SELECT SUM(total) FROM invoice;
