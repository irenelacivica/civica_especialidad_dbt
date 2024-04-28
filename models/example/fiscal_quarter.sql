-- models/fiscal_quarter.sql
select
    date,
    case when month >= 4 and month < 7 then 'Q1'
         when month >= 7 and month < 10 then 'Q2'
         when month >= 10 and month < 1 then 'Q3'
         when month >= 1 and month < 4 then 'Q4'
         else null end as fiscal_quarter
from {{ ref('date_dimension') }}
