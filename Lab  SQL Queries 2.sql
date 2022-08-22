-- Select all the actors with the first name ‘Scarlett’.

select * from actor
where first_name = "Scarlett";

-- Select all the actors with the last name ‘Johansson’.

select * from actor
where last_name = "Johansson";

-- How many films (movies) are available for rent?

select count(film_id) from film;

-- How many films have been rented?

select count(rental_id) from rental;

-- 5 What is the shortest and longest rental period?

SELECT MAX(TIMESTAMPDIFF(day, rental_date, return_date)) as max_rental_duration, MIN(TIMESTAMPDIFF(day, rental_date, return_date)) as min_rental_duration

from rental;

-- or

SELECT max(rental_duration) as max_duration, min(rental_duration) as min_duration
FROM film;

-- 7 & 8 what is the average duration of a movie

SELECT floor(avg(length)/60) as hours, (avg(length))-floor((avg(length)/60))*60 as minutes
FROM film;

-- 9 how many movies longer than 3 hours

SELECT count(*) 
FROM film
WHERE length > 180;

-- 10

SELECT lower(email) as formatted_email 
FROM customer;

-- 11 name of the longest film

SELECT title 
FROM film
Order by length Desc
LIMIT 1;