select p.product_name , sum(o.unit) as unit  from orders o 
join products p 
on  o.product_id = p.product_id
where month(order_date) = 2  and year(order_date) = 2020
group by p.product_id
having sum(o.unit) >= 100
