
with src_payment as (
    select *
    from {{ source('paymentsystem', 'payments') }}
)

select * from src_payment

