select distinct hotel_name,total_number_of_reviews 
from titles.hotel_reviews
order by total_number_of_reviews desc
limit 5