select
    count(*)
from 
    {{ ref('date_dimension') }}
where
    date is null or year is null or month is null or day is null