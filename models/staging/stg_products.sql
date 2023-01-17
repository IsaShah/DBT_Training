with source as (
    select * from {{ source('ecommshop', 'products') }}
)
select * from source