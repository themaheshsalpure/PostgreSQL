select * from film;

select description from film where film_id = 1; 

select description, title from film;

select * from actor;

select * from city;

select UCASE(city) AS Title_UpperCase from city;

select count(category_id) from film_category;

select * from film_category;

select * from rental;
select MAX(inves);

select * from payment;
select MAX(amount) from payment;

select first_name, last_name FROM actor where first_name = 'Nick' and last_name = 'Wahlberg';


select first_name from actor as "FirstName" ;

select * from payment;

select staff_id from payment where amount = 7.99;


select * from film_category;

select * from address;

select address from address where city_id >= 300;

select * from customer;

select count(first_name) from customer where store_id = 1;

select * from customer;

select first_name, last_name, email from customer;

select DISTINCT(amount) from payment;

select DISTINCT amount, rental_id from payment;

select * from film;

select distinct(length) from film;

select * from film;
select rating from film;
select distinct(rating) from film;

select * from film;
select count(distinct(release_year)) from film;
select count(*) from film;
select count(title) ,count(film_id ) from film;


'''
📌
distinct() will be giving the unique and non duplicate values from the coloumn
count() will count the number of entries in the column
'''

select * from payment;
select count(*) from payment;
select count(amount) from payment;
select amount from payment;
select count(distinct(amount)) from payment;

'''
📌
where clause is used when we have to apply any condition to the given column

'''

select * from payment;
select customer_id from payment where amount >= 4;

select 10>20;



select * from actor;
select first_name, last_name from actor where first_name = 'Nick';

select first_name, last_name from actor where first_name='Nick' and last_name = 'Wahlberg';

select * from film;
select * from film where rental_rate > 4;



select * from payment;

select staff_id, payment_id from payment order by staff_id,payment_id ASC;

select first_name, last_name from actor order by first_name ASC;

select * from customer order by first_name ASC;

select * from customer order by first_name desc;


select store_id, first_name, last_name from customer order by first_name, store_id ASC;


select store_id, first_name, last_name from customer order by store_id desc, first_name asc;

select * from payment order by payment_id limit 5;

select * from payment where amount != 0 order by payment_id limit 5;

select * from customer order by customer_id limit 10;

select customer_id from payment order by payment_date limit 10;




'''
customer want to quickly rent a vedio to watch

what are the titles of the 5 shortest movies (in length of runtime)

'''

select * from film;

select title, length from film order by length ASC limit 5;

'''
if the previous customer can watch a movie thats 50 minutes or less in run time how many options 
does he have ?
'''
select count(title) from film where length<=50; 

select * from payment;

select * from payment where amount between 8 and 9;

select count(*) from payment where amount between 8 and 9;

select count(*) from payment where amount not between 8 and 9;


select * from payment where payment_date between '2007-02-01' and '2007-02-15';












































