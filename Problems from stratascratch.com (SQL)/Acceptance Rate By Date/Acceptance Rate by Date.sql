with accepted as (
select *
from fb_friend_requests
where action = 'accepted'
),
sent as(
select *
from fb_friend_requests
where action = 'sent'
)
select sent.date,count(accepted.user_id_sender)/count(sent.user_id_sender) * 100  as pct_acceptence_rate
from sent  
left join accepted
	on accepted.user_id_sender=sent.user_id_sender
group by sent.date
