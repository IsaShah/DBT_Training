{% set products_table = 'products' %}

with source as (
    select * from {{ source('ecommshop', products_table) }}
)
select * from source