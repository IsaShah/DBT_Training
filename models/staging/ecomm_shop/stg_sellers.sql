
with source as (
    select * from {{ source('ecommshop', 'sellers') }}
)
select * from source