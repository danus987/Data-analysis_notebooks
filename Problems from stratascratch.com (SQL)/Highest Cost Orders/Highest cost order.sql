-- update `orders` 
-- set order_date=  str_to_date(order_date,'%m/%d/%Y');

select first_name,order_date,sum(total_order_cost) as total_order_cost
from orders o 
join customers c
	on c.id = o.cust_id
where  order_date between '2019-02-01' and '2019-05-01'
group by first_name,order_date
order by sum(total_order_cost) desc
limit 1
