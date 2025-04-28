select  location,ROUNd(AVG(popularity),2) as AvgPopularity
from facebook_employees as emp
left join facebook_hack_survey as hack
	on emp.id=hack.employee_id
group by location