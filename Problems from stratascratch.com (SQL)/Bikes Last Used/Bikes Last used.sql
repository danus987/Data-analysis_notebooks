select bike_number,max(end_time) as last_time_used
from dc_bikeshare_q1_2012
group by bike_number
order by last_time_used desc