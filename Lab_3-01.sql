USE sakila;

ALTER TABLE sakila.staff
DROP COLUMN picture;

SELECT * FROM sakila.staff;

SELECT * FROM sakila.customer
WHERE first_name= 'TAMMY' AND last_name = 'SANDERS';

INSERT INTO sakila.staff (first_name, last_name, address_id, email, store_id, active, username, password, last_update)
VALUES
('Tammy','Sanders',79,'TAMMY.SANDERS@sakilacustomer.org', 2,1,'Tammy', '', '2006-02-15 04:57:20' );

#DELETE FROM sakila.staff
#WHERE staff_id =5;

UPDATE sakila.staff
SET password = ''
WHERE password = 'Unknown';

--
SELECT * FROM sakila.rental;

SELECT i.inventory_id, f.title
FROM sakila.film f 
JOIN sakila.inventory i USING(film_id)
WHERE f.title = 'Academy Dinosaur';

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

SELECT staff_id
FROM sakila.staff
WHERE first_name='Mike' AND last_name='Hillyer';


INSERT INTO sakila.rental (rental_date, inventory_id, customer_id, return_date, staff_id, last_update )
VALUES
('2022-06-27 13:02:00', 1, 130, null, 1,'2022-06-27 14:08:00' );

SELECT *
FROM sakila.rental
WHERE customer_id = 130;


-- To improve the Schema of the Database, we could merge the tables address,
-- city and country to one address table
-- We could put name from category_id into the film table as category
-- We could put name from language into the film table as language (no ID
-- necessary)