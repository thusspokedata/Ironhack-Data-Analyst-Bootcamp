USE sakila;

# 0. Inspect the database structure and find the best-fitting table to analyse for the next task.
# 1 Using multiple JOIN() clauses display the store ID, city, and country of each store.

SELECT s.store_id, c.city, country FROM store s 
JOIN address a USING  (address_id)
JOIN city c USING (city_id)
JOIN country o USING (country_id);

# 2 Display the total payment amount for each store.

SELECT t.store_id, SUM(p.amount) FROM staff t 
JOIN payment p USING (staff_id)
GROUP BY t.store_id;

# 3 What is the average film length per each category? Which category of films are the longest?

SELECT c.name, AVG(i.length) FROM category c
JOIN film_category f USING (category_id)
JOIN film i USING (film_id)
GROUP BY c.name
ORDER BY AVG(i.length) DESC;

# 4 Display the 2 most frequently rented movies in descending order.

SELECT i.title, count(r.rental_id) FROM rental r
JOIN inventory v USING (inventory_id)
JOIN film i USING (film_id)
GROUP BY i.title
ORDER BY count(r.rental_id) DESC
limit 2;

# 5 Display the top 5 categories with highest revenue (payment amount) in descending order.

SELECT c.name, SUM(p.amount), DENSE_RANK() OVER (order by SUM(p.amount) DESC) from category c
JOIN film_category f USING (category_id)
JOIN film i USING (film_id)
JOIN inventory v USING (film_id)
JOIN rental r USING (inventory_id)
JOIN payment p USING (rental_id)
GROUP BY c.name
LIMIT 5;




# 6 Is the Academy Dinosaur movie available for rent from Store 1? 
# If yes, display the title, store_id and inventory_id of the available copies of that movie.

SELECT i.title, s.store_id, v.inventory_id FROM store s
JOIN inventory v USING (store_id)
JOIN film i USING (film_id)
WHERE store_id=1 AND title='ACADEMY DINOSAUR';




