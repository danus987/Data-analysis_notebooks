select first_name,last_name,city,order_details
from problems.customers as cust
left join orders as ord 
	on ord.cust_id=cust.id
order by first_name asc