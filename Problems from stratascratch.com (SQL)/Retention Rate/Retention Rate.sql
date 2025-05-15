with cte as (
select distinct account_id,(case when ecord_date >= '2020/12/01' then 1 else 0 end) as December, (case when ecord_date >= '2021/01/01' then 1 else 0 end) as January,
(case when ecord_date >= '2021/02/01' then 1 else 0 end) as Other 
from sf_events
),
December_retention as (
select distinct account_id , max(floor((December+January)/2 )) as dec_retention
from cte
group by account_id
),
January_retention as (
select distinct account_id , max(floor((December+January+Other)/3 )) as jan_retention
from cte
group by account_id)
select jan.account_id,dec_retention,jan_retention
from January_retention as jan
left join December_retention as dece
	on jan.account_id = dece.account_id
