select * from customer;

select customer_id,
CASE 
	WHEN (customer_id<=100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 and 200) THEN 'Plus'
	ELSE 'Normal'

END 
FROM customer;

SELECT customer_id,
CASE customer_id
	 when 2 THEN 'Winner'
	 when 5 THEN 'Second Place'
	 ELSE 'Normal'
END AS raffle_resultd
from customer;

select * from film;

select rental_rate from film;

select 
CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END
FROM film;

SELECT 
SUM(CASE RENTAL_RATE
    WHEN 0.99 THEN 1
    ELSE 0
    END) AS number_of_bargains
FROM film;


SELECT 
SUM(CASE RENTAL_RATE
    WHEN 0.99 THEN 1
    ELSE 0
END) AS number_of_bargains,

SUM(CASE rental_rate
   WHEN 2.99 THEN 1
   ELSE 0
END) AS regular
FROM film;



SELECT 
SUM(CASE RENTAL_RATE
    WHEN 0.99 THEN 1
    ELSE 0
END) AS number_of_bargains,

SUM(CASE rental_rate
   WHEN 2.99 THEN 1
   ELSE 0
END) AS regular,

SUM(CASE rental_rate
   when 4.99 then 1
   else 0
   end) as premium
FROM film;





