with CTE_accounts as(
	select*, (case when `status` ='closed' then 1 else 0 end) as closed_count,count(acc_id) over() as n_of_acc
	from fb_account_status
	where status_date = '10/01/2020'
)
select sum(closed_count)/n_of_acc as Ratio
from CTE_accounts
group by n_of_acc