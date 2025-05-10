


with CTE_max_salary as (
	select department,MAX(salary) as Max_salary
	from db_employee DBe
	join db_dept DBD
		on dbd.id = dbe.department_id
	group by department
    having department = 'marketing' or department ='engineering'
) 
select max(max_salary)-min(max_salary) as difference
from cte_max_salary