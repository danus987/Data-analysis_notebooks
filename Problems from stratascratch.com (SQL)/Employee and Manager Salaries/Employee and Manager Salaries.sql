select e2.first_name,e2.salary
from employee e1
join employee e2
	on e1.id = e2.manager_id
where e1.salary < e2.salary
