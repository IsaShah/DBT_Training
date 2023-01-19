
{{
  config(
    materialized = "view",
  )
}}

with source as (
    select * from {{ source('ecommshop', 'order_items') }}
)
select * from source