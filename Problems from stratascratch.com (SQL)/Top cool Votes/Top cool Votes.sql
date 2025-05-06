with ranking as(
select business_name,review_text,cool , rank() OVER(order BY cool desc )as cool_rank
from yelp_reviews
)
select business_name,review_text
from ranking 
where cool_rank = 1

