{{
    config(
        materialized='table')
    
}}



select
customerid,
segment,
category,
sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by
customerid,
segment,
category