with spam as (
select post_date,sum(case when fbpv.viewer_id is not null then 1 else 0 end) as n_spam
from facebook_posts fbp
left join facebook_post_views fbpv
	on fbp.post_id = fbpv.post_id
where post_keywords LIKE '%spam%'
group by post_date
),
posts as (
select post_date,sum(case when fbpv.viewer_id is not null then 1 else 0 end) as n_post
from facebook_posts fbp
left join facebook_post_views fbpv
	on fbp.post_id = fbpv.post_id
group by post_date
)
select spam.post_date,round((n_spam/n_post) * 100,2) as spam_pct 
from posts
join spam
	on spam.post_date=posts.post_date
