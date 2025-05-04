with CTE as(
select first_name, target, dense_RANK() over (partition by manager_id order by target desc) as Ranking
from salesforce_employees
where manager_id = 13)
select first_name,target,
case 
	when Ranking = 1 then 'Highest target reached'
    else NULL
end as Target_info
from CTE