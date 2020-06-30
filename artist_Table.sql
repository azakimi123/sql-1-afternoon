--Artist Table 

--NUMBER 1 - Add 3 new artists to the artist table.
--1
INSERT INTO artist(
		name
) VALUES (
	'Bob Marley'
);
--2
INSERT INTO artist(
		name
) VALUES (
	'Fleet Foxes'
);
--3
INSERT INTO artist(
		name
) VALUES (
	'Mike Love'
);


--NUMBER 2 - Select 10 artists in reverse alphabetical order.
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

--NUMBER 3 - Select 5 artists in alphabetical order.
SELECT * FROM artist
ORDER BY name LIMIT 5;

--NUMBER 4 - Select all artists that start with the word 'Black'.
SELECT * FROM artist
ORDER BY name LIMIT 5;

--NUMBER 5 - Select all artists that contain the word 'Black'.
SELECT * FROM artist
WHERE name LIKE '%Black%';