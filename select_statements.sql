-- Hello World SQL Query, SELECT all records from actor table
SELECT *
FROM actor;

-- Query for first_name and last_name in the actor table
SELECT last_name, first_name
FROM actor;

-- Query for a first_name that equals Nick - using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first_name that is equal to Nick using the LIKE and WHERE clauses
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query for all first_name data that starts with J using the LIKE and WHERE clauses - using the wildcard
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%'

--wildcard is %

-- Query for all first_name data that starts with K and has 2 letters after the K using LIKE and WHERE clauses
-- using the underscore
SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'K__' 

-- Query for all first_name data that starts with K and ends with th and has atleast 2 letters inbetween
-- using the LIKE and WHERE clauses -- using BOTH wildcard and underscore
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%th';

-- Comparing operators are:
-- Greater Than (>) -- Less Than (<)
-- Greater Than or Equal (>=) == Less than or Equal (<=)
-- Not Equal (<>)

-- Explore Data with a SELECT ALL query (Specific to changing into new table)
SELECT *
FROM payment;

-- Query for data that shows customers who paid an amount greater than $2
SELECT customer_id, amount
FROM payment
WHERE amount > '2';

-- Query for data that shows customers who paid less than 7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;

-- Query for data that shows customers who paid an amount greater than or equal to $2
-- display in ascending order by amount
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount;

-- Query for data that shows customers who paid an amount BETWEEN 2.00 and 7.99
-- Using the BETWEEN and AND clause
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99;

-- Query for data that shows customers who paid
-- an amount NOT EQUAL to 0.00
-- Ordered in DESCENDING order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount ASC;

-- SQL Aggregations => SUM(), AVG(), COUNT(), MIN()
-- Query to display the sum of amountns paid that are greater than 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display avg of amounts paid that are greater than 5.99
SELECT AVG (amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the count of amounts paid that are greater that 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to dsiplay the count of DISTINT amounts paid that are greater than 5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the min amount greater than 7.99
SELECT MIN(amount)
FROM payment
WHERE amount > 7.99;

-- 	Query to display the max amount greater than 7.99
SELECT MAX(amount)
FROM payment
WHERE amount < 7.99;

-- Query to display the count of amounts paid that are greater than 5.99 - using the GROUP BY claus
SELECT COUNT(*)
FROM payment
WHERE amount > 5.99
GROUP BY amount;

-- Query to display customer_ids with the summed amount for each customer_id
SELECT customer_id, SUM(amount) as total_paid
FROM payment
GROUP BY customer_id
ORDER BY total_paid DESC;

-- Query to display the count of each amount paid that is more than 10 - using GROUP BY and HAVING
-- clause
SELECT amount, COUNT(*)
FROM payment
GROUP BY amount
HAVING COUNT(*) > 10;

-- Query to display the top 10 customers who spent the most - using GROUP BY
-- and LIMIT
SELECT *
FROM address;