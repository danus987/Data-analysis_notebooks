with cte as 
(select *
from orders
where order_date like "2019-03%"
)
select cust_id,sum(total_order_cost) as Revenue
from cte
group by cust_id
order by Revenue desc
