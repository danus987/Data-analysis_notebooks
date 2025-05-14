-- there is a 'customer' data attached and honestly no idea what for in this problem ;-; --
select cust_id,count(order_details) as n_of_orders
from orders
group by cust_id
order by n_of_orders desc
limit 1;
