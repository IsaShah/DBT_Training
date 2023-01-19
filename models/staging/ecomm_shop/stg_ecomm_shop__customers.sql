with source as (
    select * from {{ source('ecommshop', 'customers') }}
)
select * from source