select id,first_name,max(salary)
from employee
group by id,first_name
order by max(salary) desc
limit 1 offset 1

