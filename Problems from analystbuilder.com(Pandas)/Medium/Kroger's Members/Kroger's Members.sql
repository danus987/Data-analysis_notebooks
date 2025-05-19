with cte as (
	select count(kroger_id) as customers,count(has_member_card ='Y' ) as members
	from customers)
select round((members/customers) * 100,2) as pct_of_members
from cte
