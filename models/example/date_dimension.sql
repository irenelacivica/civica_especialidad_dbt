-- models/date_dimension.sql
with recursive dates as (
    select 
        dateadd(day, -1, current_date) as date
    union all
    select
        dateadd(day, -1, date)
    from dates
    where date > current_date - 365
)

select
    date,
    extract(year from date) as year,
    extract(month from date) as month,
    extract(day from date) as day,
    case when extract(month from date) between 1 and 3 then 1
         when extract(month from date) between 4 and 6 then 2
         when extract(month from date) between 7 and 9 then 3
         when extract(month from date) between 10 and 12 then 4
         else null end as quarter
from dates;
