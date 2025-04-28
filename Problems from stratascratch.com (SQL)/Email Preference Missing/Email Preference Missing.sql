select distinct home_library_code
from problems.library_usage as lib
where circulation_active_year = '2016' and notice_preference_definition ='email' and provided_email_address = 0