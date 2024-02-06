update account
set last_login = current_timestamp
where last_login is NULL;

------------------


select * from account;


-- joining the two tables -

update account
set password = account_jon.hire_date
from account_jon
where account.user_id = account_jon.user_id;



-- returning the values in sql 
-- return the columns which we want to display : 
update account
set last_login = current_timestamp
returning created_on , last_login;

insert into account values (7457,'mahesh','ms@45722', 'maheshsalpure171@gmail.com', current_timestamp, current_timestamp);

select * from account;

delete from account
where user_id = 7457
returning username, user_id, password, email;


create table information(
info_id serial primary key,
	title varchar(500) not null,
	person varchar(500) not null unique
);


select * from information;


-- renaming the table : 
alter table information
rename to new_info;


select * from new_info;

-- renaming the column from the table :
alter table new_info
rename column person to people;

insert into new_info(title)
values ('some new title');

alter column people
alter table new_info 
drop not null;

select * from new_info;

insert into new_info(title)
values
('some new column')

select * from new_info;

alter table new_info
drop column people;

alter table new_info
drop column if exists people;



















































