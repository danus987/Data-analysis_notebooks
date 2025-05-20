with cte as (
select campaign_id,campaign_name, round((revenue_generated-investment)/investment*100,2) as ROI,percent_rank() over(order by round((revenue_generated-investment)/investment*100,2)desc ) as ranking
from marketing_spend 
)
select campaign_id,campaign_name,ROI
from cte
where ranking <= 0.25
order by ranking,campaign_id desc