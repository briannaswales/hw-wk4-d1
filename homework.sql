SELECT COUNT (last_name)
FROM actor
WHERE last_name = 'Wahlberg';
-- Question 1: 2

SELECT COUNT (amount)
FROM payment
WHERE amount > 3.99 AND amount < 5.99;
-- Question 2: 3431

SELECT film_id, title
FROM film
WHERE film_id in(SELECT film_id
	FROM inventory
	GROUP BY film_id
	HAVING COUNT (film_id) = 8);
-- Question 3: 72 movies 

SELECT COUNT (last_name)
FROM customer
WHERE last_name = 'William';
-- Question 4: 0

SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id
HAVING COUNT(*) >= 1;
-- Question 5: 1

SELECT district
FROM address
GROUP BY district;
-- Question 6: 378

SELECT COUNT (actor_id) film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT (actor_id) DESC;
-- Question 7: 17

SELECT COUNT (last_name)
FROM customer
WHERE last_name LIKE '%es'
-- Question 8: 21

SELECT COUNT (amount) customer_id
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount 
HAVING COUNT(*) > 250;
-- Question 9: 3

SELECT rating, COUNT (*)
FROM film
GROUP BY rating;
-- Question 10: 5, PG-13

