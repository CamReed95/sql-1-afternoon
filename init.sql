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
(1, 'john', 'a@email.com', 1, 1, 'Mesa', 'Blue'),
(2, 'Jacob', 'b@email.com', 2, 2, 'Phoenix', 'Red'),
(3, 'Jingle', 'c@email.com', 3, 3, 'Chandler', 'Green'),
(4, 'Heimer', 'd@email.com', 4, 4, 'Tempe', 'Purple'),
(5, 'Schmidt', 'e@email.com', 5, 5, 'Gilbert', 'White')





/*Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color.
id should be an auto-incrementing id/primary key - Use type: SERIAL
Add 5 different people into the person database.
Remember to not include the person_id because it should auto-increment.
List all the people in the person table by height from tallest to shortest.
List all the people in the person table by height from shortest to tallest.
List all the people in the person table by age from oldest to youngest.
List all the people in the person table older than age 20.
List all the people in the person table that are exactly 18.
List all the people in the person table that are less than 20 and older than 30.
List all the people in the person table that are not 27 (Use not equals).
List all the people in the person table where their favorite color is not red.
List all the people in the person table where their favorite color is not red and is not blue.
List all the people in the person table where their favorite color is orange or green.
List all the people in the person table where their favorite color is orange, green or blue (use IN).
List all the people in the person table where their favorite color is yellow or purple (use IN).*/