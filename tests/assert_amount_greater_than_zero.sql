{{ config(enabled = false) }}

select
    amount
from
    {{ ref('fct_orders') }}
where
    amount > 0