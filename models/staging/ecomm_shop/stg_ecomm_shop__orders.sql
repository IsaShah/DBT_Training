with source as (
    select * from {{ source('ecommshop', 'orders') }}
)
select * from source