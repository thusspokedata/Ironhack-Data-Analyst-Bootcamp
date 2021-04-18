use sakila;

# 1 Use the RANK() and the table of your choice rank films by length (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, and the rank.
select title, length, rank() over (order by length desc) as "rank"
from sakila.film;


# 2 Build on top of the previous query and rank films by length within the rating category (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, rating and the rank.


select rating, title, length , rank() over (partition by rating order by length desc) 
from film
WHERE length IS NOT NULL or '0';


# 3 How many films are there for each of the categories? Inspect the database structure and use appropriate join to write this query.
select *
from category;

SELECT category_id, count(*) FROM film
JOIN film_category
ON film.film_id = film_category.film_id
group by category_id;

# 4 Which actor has appeared in the most films?

select actor.actor_id, actor.first_name, actor.last_name,
       count(actor_id) as film_count
from actor join film_actor using (actor_id)
group by actor_id
order by film_count desc
limit 1;

# 5 Most active customer (the customer that has rented the most number of films)
select customer.first_name, customer.last_name, count(customer_id) as film_count2 from customer
inner join rental using (customer_id)
group by customer_id
order by film_count2 desc
limit 1;

# 6 Which is the most rented film?
SELECT title, count(film_id) as film_count3 FROM film
    INNER JOIN inventory using(film_id)
    INNER JOIN rental using(inventory_id)
group by film_id
order by film_count3 desc
limit 1;