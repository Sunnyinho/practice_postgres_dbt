with members as (
    select * from cd.members
),

bookings as (
    select * from cd.bookings
),

facilities as (
    select * from cd.facilities
)


-- select 
--     starttime
-- from bookings
-- inner join members
--  on bookings.memid = members.memid
-- where members.firstname = 'David' and members.surname = 'Farrell'

-- How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'?
-- Return a list of start time and facility name pairings, ordered by the time.

-- select
--     starttime as start,
--     facilities.name as name
-- from bookings
-- inner join facilities
--   on bookings.facid = facilities.facid
--   where (starttime::date >= '2012-09-21' and starttime::date <= '2012-09-21') and facilities.name like 'Tennis Court%'
--   order by starttime

-- How can you output a list of all members who have recommended another member?
-- Ensure that there are no duplicates in the list, and that results are ordered by (surname, firstname).

-- select
-- *
-- from cd.members m1
-- inner join cd.members m2
--   on m2.memid = m1.recommendedby
--   order by m1.memid
