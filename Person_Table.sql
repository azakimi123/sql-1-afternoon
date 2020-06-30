-- TABLE PERSON
-- NUMBER 1 - Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color.
CREATE TABLE person (
  id SERIAL,
  name VARCHAR(30),
  age INTEGER,
  height_cm INTEGER,
  city VARCHAR(50),
  favorite_color VARCHAR(30)
);

-- NUMBER 2 -Add 5 different people into the person database.
--1
INSERT INTO person (
	name, age, height_cm, city, favorite_color
) VALUES (
	'Aaron', 30, 167, 'Honolulu', 'purple'
);
--2
INSERT INTO person (
	name, age, height_cm, city, favorite_color
) VALUES (
	'Pono', 32, 192, 'Kapolei', 'yellow'
);
--3
INSERT INTO person (
	name, age, height_cm, city, favorite_color
) VALUES (
	'Kaeo', 28, 176, 'Kaneohe', 'blue'
);
--4
INSERT INTO person (
	name, age, height_cm, city, favorite_color
) VALUES (
	'Yuto', 33, 170, 'Nara', 'red'
);
--5
INSERT INTO person (
	name, age, height_cm, city, favorite_color
) VALUES (
	'Brendan', 34, 173, 'Mililani', 'blue'
);


--NUMBER 3 - List all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height_cm DESC;


--NUMBER 4 - List all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height_cm ASC;

--NUMBER 5 - List all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC;

--NUMBER 6 - List all the people in the person table older than age 20.
SELECT * FROM person
WHERE age > 20;

--NUMBER 7 - List all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18;

--NUMBER 8 - List all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age < 20 
AND age > 30;
-- not sure about this one. Did they mean "OR"


--NUMBER 9 - List all the people in the person table that are not 27 (Use not equals).
SELECT * FROM person
WHERE age != 27;

--NUMBER 10 - List all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color != 'red';

--NUMBER 11 - List all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color != 'red' 
AND favorite_color != 'blue';

--NUMBER 12 - List all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color = 'orange'
OR favorite_color = 'green';

--NUMBER 13 - List all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

--NUMBER 14 - List all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');