with CTE as (
	select year,company_name,count(case when year = 2019 then 1 end) as 2019_products, count(case when year =2020 then 1 end) as 2020_products
	from car_launches
	group by year,company_name)
select company_name, SUM(2020_products-2019_products) as net_diff
from CTE
group by company_name

