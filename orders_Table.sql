--Table Orders

--NUMBER 1 - Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
	order_id SERIAL,
  person_id INTEGER,
  product_name VARCHAR(30),
  product_price NUMERIC(6,2),
  quantity INTEGER
);


-- NUMBER 2 - Add 5 orders to the orders table.
--Make orders for at least two different people.
--person_id should be different for different people.
--1
INSERT INTO orders (
	person_id, product_name, product_price, quantity
) VALUES (
	101, 'milk', 2.65, 2
);
--2
INSERT INTO orders (
	person_id, product_name, product_price, quantity
) VALUES (
	102, 'eggs', 3.05, 1
);
--3
INSERT INTO orders (
	person_id, product_name, product_price, quantity
) VALUES (
	101, 'bread', 2.75, 1
);
--4
INSERT INTO orders (
	person_id, product_name, product_price, quantity
) VALUES (
	101, 'pasta sauce', 1.35, 3
);
--5
INSERT INTO orders (
	person_id, product_name, product_price, quantity
) VALUES (
	102, 'avacado', 1.15, 3
);

--NUMBER 3 - Select all the records from the orders table.
SELECT * FROM orders;

--NUMBER 4 - Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

--NUMBER 5 - Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;

--NUMBER 6 - Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 102;