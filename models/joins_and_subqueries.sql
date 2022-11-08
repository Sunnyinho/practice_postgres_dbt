with bookings as (
    select * from cd.bookings
),

facilities as (
    select * from cd.facilities
),

members as (
    select * from cd.members
)

select 