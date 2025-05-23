select round(avg(bike_price),2)
from inventory
where bike_sold = 'Y' and bike_price is not NULL
