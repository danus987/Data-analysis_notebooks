with cte as (
select * , concat(round(((new_size-original_size)/original_size) * 100,0),'%') as Size_Change_Percentage,concat(round(((new_price-original_price)/original_price) * 100,0),'%') as Price_Change_Percentage
from products
)
select product_name,size_change_percentage,price_change_percentage , (case when Size_Change_Percentage < 0 and Price_Change_Percentage >= 0 then True else False end)  as ShrinkFlation_flag
from cte
order by product_name