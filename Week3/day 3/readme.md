![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | SQL Queries 7

In this lab, you will be using the [Sakila](https://dev.mysql.com/doc/sakila/en/) database of movie rentals. You have been using this database for a couple labs already, but if you need to get the data again, refer to the official [installation link](https://dev.mysql.com/doc/sakila/en/sakila-installation.html).

The database is structured as follows:
![DB schema](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/database-sakila-schema.png)

### Instructions

1. In the `actor` table, which are the actors whose last names are not repeated? For example if you would sort the data in the table actor by last_name, you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd. These three actors have the same last name. So we do not want to include this last name in our output. Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our output list. 
2. Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once.
3. Using the `rental` table, find out how many rentals were processed by each employee.
4. Using the `film` table, find out how many films were released each year
5. Using the `film` table, find out for each rating how many films were there.
6. What is the average length of films for each rating? Round off the average lengths to two decimal places.
7. Which kind of movies (based on rating) have an average duration of two hours or more?


# Lab | SQL Queries 8


### Instructions

0. Inspect the database structure and find the best-fitting table to analyse for the next task.
1. Use the RANK() and the table of your choice rank films by length (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, and the rank.  
2. Build on top of the previous query and rank films by length within the `rating` category (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, rating and the rank.  
3. How many films are there for each of the categories? Inspect the database structure and use appropriate join to write this query.
4. Which actor has appeared in the most films?
5. Most active customer (the customer that has rented the most number of films)

**Bonus**: Which is the most rented film?
The answer is Bucket Brotherhood
This query might require using more than one join statement. Give it a try. We will talk about queries with multiple join statements later in the lessons.
