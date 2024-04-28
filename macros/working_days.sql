-- macros/working_days.sql
{% macro calculate_working_days(start_date, end_date) %}
select
    count(*) as working_days
from {{ ref('date_dimension') }}
where
    date between {{ start_date }} and {{ end_date }}
and extract(isodow from date) between 1 and 5
{% endmacro %}
