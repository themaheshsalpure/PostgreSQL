'''
dow is used to select the day from the data
1 = Monday
2 = Tuesday 
3 = .....
 like this 
'''

-- finding Modays from the data - 
select count(*) from payment
where extract(dow from payment_date) = 1;


-- finding tuesdays from the data - 
select count(*) from payment
where extract(dow from payment_date) = 0;


select rental_rate/replacement_cost from film;

select rental_rate - replacement_cost from film;

select rental_rate + replacement_cost from film;

select rental_rate / replacement_cost from film;

select rental_rate * replacement_cost from film;

select |/rental_rate from film;

select ||/rental_rate from film;

select round(rental_rate/replacement_cost, 2) from film;

select round(rental_rate/replacement_cost, 4)*100 as percent_cost from film;

select 0.1 * replacement_cost as deposit
from film;

select * from customer;

select length(first_name) from customer;


select first_name ||' '|| last_name as full_name from custome

select first_name ||' '|| last_name as full_name from custome
r;

select first_name from customer;

select left(first_name,1) || last_name || '@gmail.com' from customer;
select lower(left(first_name, 1)) || lower(last_name) || '@gmail.com' as customer_mail
from customer;


'''
subqueries part - 
'''

select * from film;

select avg(rental_rate) from film;

select rental_rate, title
from film
where rental_rate >(select avg(rental_rate) from film);

select * from rental;

select * from inventory;

select * from rental
where return_date between'2005-05-29' and '2005-05-30';

select inventory.film_id 
from rental
inner join inventory on inventory.inventory_id = rental.inventory_id
where return_date between '2005-05-29' and '2005-05-30';

select film_id, title
from film 
where film_id in (select inventory.film_id
from rental
inner join inventory 
on inventory.inventory_id = rental.inventory_id
where return_date between '2005-05-29' and '2005-05-30');





























