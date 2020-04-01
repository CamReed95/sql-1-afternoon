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

