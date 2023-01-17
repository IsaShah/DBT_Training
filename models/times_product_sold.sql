select



    oi.product_id,



    p.product_category_name,



    count(order_id) as times_ordered



from raw.ecommshop.order_items oi



join raw.ecommshop.products p



on p.product_id = oi.product_id



group by 1, 2



order by times_ordered desc