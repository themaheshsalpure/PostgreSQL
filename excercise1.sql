select * from cd.facilities;

select name, membercost from cd.facilities
where membercost > 0;

select * from cd.facilities;


select facid, name, membercost, monthlymaintenance
from cd.facilities
where membercost < (monthlymaintenance/50);

select * from cd.bookings;

select * from cd.facilities


select * from cd.facilities
where name like '%Tennis%';

select * from cd.facilities
where facid in (1,5);

select * from cd.members;

select * from cd.members
where joindate >= '2012-09-01';

select distinct(surname) from cd.members
order by surname;




select joindate from cd.members
order by memid desc
limit 1;

-- or

select min(joindate)
from cd.members;


select * from cd.facilities;

select count(*) from cd.facilities
where guestcost >= 10;

select * from cd.bookings;

select facid, sum(slots) as totalslots
from cd.bookings
where starttime >='2012-09-01' and starttime <= '2012-09-30'
group by facid order by sum(slots);

select facid, sum(slots) from cd.bookings
group by facid
having sum(slots)>=1000
order by facid;


select cd.bookings.starttime, cd.facilities.name from cd.bookings
join cd.facilities
on cd.bookings.facid = cd.facilities.facid
where cd.bookings.starttime >= '2012-09-21' and cd.bookings.starttime < '2012-09-22'
and 
cd.facilities.name in('Tennis Court 1','Tennis Court 2');







































