update `airbnb_search_details` 
set host_since=  str_to_date(host_since,'%m/%d/%Y');


select city
from airbnb_search_details
group by city
order by sum(length(amenities)) desc