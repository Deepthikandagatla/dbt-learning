{{
    config(
        materialized='table'
    )    
}}



select
productid,
productname,
subcategory,
category,
sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by
productid,
productname,
category,
subcategory