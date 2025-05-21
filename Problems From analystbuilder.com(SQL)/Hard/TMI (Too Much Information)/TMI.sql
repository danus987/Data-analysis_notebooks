select customer_id,substring_index(full_name," ",1) as first_name
from customers