select distinct post.*
from facebook_posts as post
join facebook_reactions as react
	on post.post_id = react.post_id AND 
    react.reaction = 'heart'
	