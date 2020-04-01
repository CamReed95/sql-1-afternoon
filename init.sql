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




/*Table - orders
Instructions
Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
Add 5 orders to the orders table.
Make orders for at least two different people.
person_id should be different for different people.
Select all the records from the orders table.
Calculate the total number of products ordered.
Calculate the total order price.
Calculate the total order price by a single person_id.*/

