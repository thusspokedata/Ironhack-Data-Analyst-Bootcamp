use sakila;

# 1  actors whose last names are not repeated
select first_name, last_name
from actor 
group by last_name, first_name
having count(last_name) = 1;

# 2 last names that appear more than once
select first_name, last_name
from actor 
group by last_name, first_name
having count(last_name) > 1;

# 3 how many rentals were processed by each employee
select staff_id, COUNT(rental_id)
from rental
group by staff_id;

#select staff_id, first_name, count(rental_id) as rentals from rental
#inner join staff using (staff_id)
#group by first_name;

# 4 how many films were released each year
select release_year, count(film_id)
from film
group by release_year;

# 5 Using the film table, find out for each rating how many films were there
select rating, count(film_id)
from film
group by rating;

# 6  The mean length of the film for each rating type. Round off the average lengths to two decimal places
select rating, round(avg(length),2)
from film
group by rating;

# 7  movies whit a mean duration of more than two hours divided by rating
select rating, round(avg(length),2) as avg_duration
from film
group by rating
having avg(length) > 120;




