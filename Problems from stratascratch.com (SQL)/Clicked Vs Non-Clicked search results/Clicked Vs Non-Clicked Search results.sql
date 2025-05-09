with clicked as (
select count(search_id) as count
from fb_search_events
where search_results_position <= 3 and clicked = 1
),
not_clicked as (
select count(search_id) as count
from fb_search_events
where search_results_position <= 3 and clicked = 0
),
all_clicks as (
select count(search_id) as count
from fb_search_events
)
select
(clicked.count / all_clicks.count) *100 as clicked_count,
(not_clicked.count/all_clicks.count)*100 as not_clicked_count
from clicked,not_clicked,all_clicks



