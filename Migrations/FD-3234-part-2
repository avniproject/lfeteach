begin transaction;

set role teachap;

select count(*)
from public.encounter
where manual_update_history = 'ticket-3234';
-- 714 rows found

update encounter
set last_modified_date_time = current_timestamp + ((id % 4000) * interval '1 millisecond'),
    last_modified_by_id=10267
where manual_update_history = 'ticket-3234';

commit;
