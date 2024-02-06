'''
joins --
joins multiple tables together by a specificc column id 
combines multiple tables

1] Inner join -
	takes columns from both the tables and creates new table of only matching once from
	the both tables.
		select * from TableA
		join TableB
		ON TableA.column_name = TableB.column_name;


select reg_id, logins.name, log_id
from registrations
inner join logins
on registration.name = logins.name;





2] Left Join - 
	left join takes all from the left table and only matchin once from the rigth table.
	
3] Right Join -
	right join takes all from the rigth tablle and takes only matching once from the left table.

'''

select * from payment;

select * from customer;

select * from payment
inner join customer
on payment.customer_id = customer.customer_id;


select payment.payment_id, payment.customer_id, customer.first_name
from payment
join customer
on payment.customer_id = customer.customer_id;


--  full outer joinc
Syntax - 

	select * from TableA
	full outer join TableB
	ON TableA.columns_name = TableB.column_name

-- 

select * from customer
full outer join payment
on customer.customer_id = payment.customer_id;


select * from customer
full outer join payment
on customer.customer_id = payment.customer_id
where customer.customer_id is NULL
or payment.payment_id is null


select * from customer
left join payment
on customer.customer_id = payment.customer_id
where payment.customer_id is null;

select film.film_id , title, inventory_id, store_id
from film
left join inventory 
on inventory.film_id = film.film_id;


select customer_id , sum(amount)
from payment
group by customer_id


select * from film;
select * from inventory;

select film.film_id, title, inventory_id, store_id
from film
left join inventory 
on film.film_id = inventory.film_id
where inventory.film_id is null;


select film.film_id , inventory.store_id, inventory.last_update
from inventory
right join film
on film.film_id = inventory.film_id
where inventory.film_id is null;

select * from customer;
select * from address;



select customer.email, address.district
from customer
left join address
on customer.address_id = address.address_id
where address.district = 'California';


select district , email
from address
inner join customer
on address.address_id = customer.customer_id
where district = 'California';


select * from actor;
select * from film;

select * from film_actor;



select film.title, actor.first_name, actor.last_name
from actor
inner join film
on film.film_id = actor.actor_id
inner join 


select * from  actor
inner join film_actor
on actor.actor_id= film_actor.actor_id
inner join film
on film_actor.film_id = film.film_id
where film_actor.actor_id = 2;




show all

select current_date


select * from payment

select extract(year from payment_date) as myyear
from payment

select extract(month from payment_date) as paymonth
from payment

select extract(quarter from payment_date)
as pay_month
from payment

select age(payment_date)
from payment


select TO_CHAR(payment_date,'MM/DD/YYYY')
from payment

select extract(month from payment_date)
from payment

select 
distinct (to_char(payment_date,'Month'))
from payment































































