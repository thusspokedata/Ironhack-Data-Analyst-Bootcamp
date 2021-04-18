USE sakila;

show full tables;

select * 
from actor;

select * 
from address;

select * 
from category;

select * 
from city;

select * 
from country;

select * 
from customer;

select title
from film;

select language_id as language
from language;

select count(return_date)
from rental;

select count(staff_id)
from staff;
select count(store_id)
from staff;
select first_name
from staff;

SELECT COUNT(DISTINCT DATE(rental_date)) as days
FROM rental;