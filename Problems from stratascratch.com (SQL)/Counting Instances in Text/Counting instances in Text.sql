select sum(((length(contents) -length(replace(contents,'bull',''))) / length('bull'))) as bull_count,
sum(((length(contents) -length(replace(contents,'bear',''))) / length('bear'))) as bear_count
from google_file_store;
