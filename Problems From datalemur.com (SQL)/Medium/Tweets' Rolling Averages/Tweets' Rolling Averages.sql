select user_id,tweet_date,tweet_count,round(avg(tweet_count) over(partition by user_id order by tweet_date rows between 2 preceding and current row),2) as rolling_average 
from tweets
