select product_id,avg(stars) as avg_stars,extract(month from submit_date) as month
from reviews
group by product_id,extract(month from submit_date)
order by month , product_id desc
