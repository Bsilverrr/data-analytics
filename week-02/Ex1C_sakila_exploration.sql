/*
a) The actor table contains actor_id, first_name, last_name, and last_update. It only stores the identity of each actor, with no connection to any films.

b) The film table contains film_id, title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features, and last_update. It describes each movie but does not list who acted in it.

c) The film_actor table contains both actor_id and film_id. It is a junction table that links actors to the films they appeared in.

d) The rental table contains rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, and last_update. 

e) The inventory table contains inventory_id, film_id, store_id, and last_update. It represents each copy of a film at a specific store, which is what actually gets rented out.

f) To find the names of all films rented on a specific date, I need the rental table for the rental_date, the inventory table to connect that rental to a film_id, and the film table to get the actual title. Rental links to inventory through inventory_id, and inventory links to film through film_id.
*/

SELECT rental_date, inventory_id FROM rental;
SELECT inventory_id, film_id FROM inventory;
SELECT film_id, title FROM film;