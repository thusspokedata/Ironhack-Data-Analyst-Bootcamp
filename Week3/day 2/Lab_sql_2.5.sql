USE sakila;

# 1 Select all the actors with the first name ‘Scarlett’.
select * 
from actor
where first_name = 'Scarlett';

# 2 How many films (movies) are available for rent and how many films have been rented?

select COUNT(film_id)
from inventory;

select COUNT(rental_id)
from rental;

# 3  What are the shortest and longest movie duration? Return the results as columns with the names  max_duration and min_duration.
select *, length as max_duration
from film
order by max_duration desc;

select title, length as min_duration
from film
order by length asc;

# 4 * What's the average movie duration expressed in format (hours, minutes) Return the result as columns with the names hours and minutes?

SELECT
floor(AVG(f.length)/60) as hours,
floor(AVG(f.length)%60) as min
FROM film f;

# 5 How many distinct (different) actors' last names are there?
select count(distinct last_name)
from actor;

# 6  Since how many days has the company been operating (check the DATEDIFF() function)? Hint: rental table

select DATEDIFF(CURDATE(), rental_date) as days_open
from rental;

SELECT DATEDIFF(MAX(rental_date),MIN(rental_date)) as diff FROM rental;
# 7 Show rental info with additional columns month and weekday. Get 20 results.
select *,
date_format(convert(rental_date,datetime) , "%M") as month,
date_format(convert(rental_date,datetime) , "%W") as day
from rental
limit 20;

# 8 Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
select *, 
case 
  when date_format(convert(rental_date,datetime) , "%W")='Sunday' OR 'Saturday' then 'weekend'  
  else 'workday'  
end as day_type
from rental;

# 9 How many rentals were in the last month of activity?

select
COUNT(RENTAL_ID)
from rental
WHERE MONTH(rental_date)= 2;









