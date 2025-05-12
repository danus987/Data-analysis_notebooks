select trackname,count(trackname) as num
from spotify_worldwide_daily_song_ranking as spotify
where position = 1
group by trackname
order by num desc