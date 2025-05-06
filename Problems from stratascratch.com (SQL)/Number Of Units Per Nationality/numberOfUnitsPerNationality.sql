with cte as (
select distinct nationality , unit_id
from airbnb_units as au
join airbnb_hosts as ah
	on au.host_id=ah.host_id
where age <= 30 and unit_type='apartment'
)
select nationality,count(unit_id)
from cte
group by nationality

