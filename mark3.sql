select count(*) from customer where customer_id > 2;

--  using as claus to save as a new name. 
select sum(amount) as main from payment;

select customer_id from payment;

select customer_id as rental_price from payment;

select sum(amount) as total_amount from payment;

select count(amount) as new_transaction from payment;

select customer_id, sum(amount) from payment group by customer_id;

select customer_id, sum(amount) as total_spent from payment group by customer_id;

select customer_id, sum(amount) from payment group by customer_id having sum(amount)>100;

select customer_id, sum(amount) 
as total_spent 
from payment 
group by customer_id 
having total_spent > 100;

select customer_id , amount as new_name
from payment 
where amount > 2;

select customer_id, amount as new_name
from payment 
where new_name > 2;


































