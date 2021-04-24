USE sakila;

# 1 Get release years.
select distinct(release_year)
from film;

# 2 Get all films with ARMAGEDDON in the title.
select *
from film
where title like "%ARMAGEDDON%";

# 3 Get all films which title ends with APOLLO
select *
from film
where title like "%APOLLO";

# 4 Get 10 the longest films
select *
from film
order by length desc
limit 10;

# 5 How many films include Behind the Scenes content?
select count(special_features)
from film
where special_features like '%Behind the Scenes%';

# 6 Drop column picture from staff
select *
from staff;

# ALTER TABLE staff DROP picture;

# 7 A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

	
INSERT INTO staff (first_name, last_name, address_id, email, store_id, active, username, last_update)
SELECT first_name, last_name, address_id, email, store_id, active, "Tammy", last_update FROM customer 
WHERE address_id = '79';

DELETE FROM staff
WHERE staff_id = 4;

# Add a rental for movie "Academy Dinosaur" by the customer "Charlotte Hunter" from employee Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information in other tables. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:

select * from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER'; 

select * from sakila.inventory
where inventory_id = 1; 

select * from sakila.film
where title = "Academy Dinosaur"; 

select *
from rental;

#INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id)
#SELECT now(), '1', '130', '1'; 


INSERT INTO sakila.rental (rental_date, inventory_id, customer_id, staff_id)
value (curdate(), '1', '130', '1'); 

select *
from rental;