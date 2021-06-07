USE sakila;

# Using the tables address and staff and the JOIN command, display the first names, last names, and address of each staff member.
SELECT a.address_id, s.first_name, s.last_name
FROM address as a
JOIN staff as s USING (address_id);

# Using the tables staff and payment and the JOIN command, display the total payment amount by staff member in August of 2005.
SELECT s.staff_id, p.amount, p.payment_date
FROM staff as s
JOIN payment as p USING (staff_id)
WHERE payment_date like '%2005-08%';

# Using the tables film and film_actor and the JOIN command, list each film and the number of actors who are listed for that film.
SELECT f.film_id, f.title, COUNT(fa.actor_id)
FROM film as f
JOIN film_actor as fa USING (film_id)
GROUP BY f.film_id ;

# Using the tables payment and customer and the JOIN command, list the total paid by each customer. Order the customers by last name and alphabetically.
SELECT c.customer_id, c.first_name, c.last_name, SUM(p.amount)
FROM customer as c
JOIN payment as p USING (customer_id)
GROUP BY 1
ORDER BY 3 ASC;







