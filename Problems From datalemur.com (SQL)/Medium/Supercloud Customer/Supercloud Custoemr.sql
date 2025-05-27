with cte as (
select customer_id,product_category, count(distinct(product_category)) as categories
from customer_contracts as cust
join products as pr
	on cust.product_id=pr.product_id
group by customer_id,product_category
), categories as (
select count(distinct(product_category)) as n_categories
from products
)
select customer_id,n_categories, sum(categories) as bought_n
from cte , categories
group by customer_id,n_categories
having bought_n >=n_categories