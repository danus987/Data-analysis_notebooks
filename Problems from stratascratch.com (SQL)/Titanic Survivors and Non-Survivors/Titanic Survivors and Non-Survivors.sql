with all_passengers as (
select distinct pclass,count(*) over(partition by pclass) as all_passengers
from titanic
),
survivors as(
select distinct t.pclass,count(case when survived = 1 then 1 end) over (partition by pclass) as survivors_per_pclass , all_passengers 
from titanic t 
join all_passengers ap
	on t.pclass = ap.pclass
)
select pclass,survivors_per_pclass, abs(survivors_per_pclass - all_passengers) as non_survivors , all_passengers
from survivors