
with source as (
    select * from {{ source('ecommshop', 'geolocation') }}
)
select * from source