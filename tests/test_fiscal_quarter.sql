-- tests/test_fiscal_quarter.sql
select
    count(*)
from 
    {{ ref('fiscal_quarter') }}
where
    fiscal_quarter is null
