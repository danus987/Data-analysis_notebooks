update `orders` 
set order_date=  str_to_date(order_date,'%m/%d/%Y');


select *
from orders o 
join customers c
	on c.id = o.cust_id
    