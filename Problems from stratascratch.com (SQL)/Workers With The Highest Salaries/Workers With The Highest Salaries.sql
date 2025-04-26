select worker_title,MAX(salary) as salary
from worker
join titles.title on worker.worker_id = title.worker_ref_id
group by worker_title
having salary=(
select max(salary)
from worker
)