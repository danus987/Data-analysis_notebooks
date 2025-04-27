select order_date , first_name ,order_details,total_order_cost
from problems.customers as cust
left join orders as ord
on ord.cust_id=cust.id
where first_name regexp 'Jill|Eva'order by cust.id asc