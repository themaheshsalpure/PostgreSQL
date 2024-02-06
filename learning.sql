create table account(
user_id serial primary key,
	username varchar(50) unique not null,
	password varchar(50) unique not null,
	email varchar(250) unique not null,
	created_on timestamp not null,
	last_login timestamp
)

create table job(
job_id serial primary key,
	job_name varchar unique not null
)


create table account_jon(
user_id integer references account(user_id),
	job_id integer references job(job_id),
	hire_date timestamp
)

insert into account(username, password, email,created_on , last_login)
values
('Ram','root','ram@gmail.com',current_timestamp, current_timestamp);


select * from account;

insert into job(job_name )
values ('Data Scientist');


insert into account_job(job_id, user_id, hire_date)
values 
(1,1,current_timestamp);





