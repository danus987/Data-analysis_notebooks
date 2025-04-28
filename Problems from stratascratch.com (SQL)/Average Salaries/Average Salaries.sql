with AvgSalaries as ( 
select department,avg(salary) as AvgSalary
from employee
group by department )
select emp.department,emp.first_name,emp.salary,AvgSalary
from AvgSalaries
join employee as emp
	on emp.department=AvgSalaries.department