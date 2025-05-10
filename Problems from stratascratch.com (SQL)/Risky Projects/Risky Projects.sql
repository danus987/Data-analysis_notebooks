drop temporary table if exists employees;
create temporary table employees aS
 (
select *
from linkedin_employees as LE
join linkedin_emp_projects AS LEP
	on le.id=lep.emp_id
);
select * 
from employees;

select lp.title,budget,ceiling(
		datediff(str_to_date(end_date,'%d.%m.%Y'),str_to_date(start_date,'%d.%m.%Y'))
        *sum(emp.salary)/365) as expenses ,  'over budget' as info
from linkedin_projects as LP
inner join employees as emp
	on emp.project_id=LP.id
GROUP BY LP.title,budget, LP.start_date, LP.end_date
having expenses > budget
order by title asc 
