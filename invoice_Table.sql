-- Invoice Table

-- NUMBER 1 - Count how many orders were made from the USA.
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';


-- NUMBER 2 - Find the largest order total amount.
SELECT MAX(total) FROM invoice;


-- NUMBER 3 - Find the smallest order total amount.
SELECT MIN(total) FROM invoice;

-- NUMBER 4 - Find all orders bigger than $5.
SELECT * FROM invoice
WHERE total > 5;


-- NUMBER 5 - Count how many orders were smaller than $5.
SELECT COUNT(*) FROM invoice
WHERE total < 5;


-- NUMBER 6 - Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');


-- NUMBER 7 - Get the average total of the orders.
SELECT AVG(total) FROM invoice;


-- NUMBER 8 - Get the total sum of the orders.
SELECT SUM(total) FROM invoice;