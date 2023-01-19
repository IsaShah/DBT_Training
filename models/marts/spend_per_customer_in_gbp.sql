with order_payment as (
select
    o.customer_id
    ,count(o.order_id) num_orders
    ,sum(p.payment_value) sum_payment
from {{ ref('stg_orders') }} o
join {{ ref('stg_payments') }} p
on o.order_id = p.order_id
group by customer_id
order by num_orders desc
)
SELECT customer_id
    , num_orders
    , {{ real_to_gbp_conversion( 'sum_payment ')}} value_gbp
from order_payment