select *,(case when pay_level =1 then salary * 1.1
		when pay_level = 2 then salary * 1.15
		when pay_level=3 then salary * 2 end) as new_salary
from employees