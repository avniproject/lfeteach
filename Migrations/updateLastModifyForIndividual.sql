set role lfeteach;
update individual
set last_modified_date_time=current_timestamp + ((id % 4000) * interval '1 millisecond'),
    last_modified_by_id=(select id from users where username = 'sachin@apteach')
where id not in (select id from lfeteach.teacher where teacher.is_voided = true)
  and individual.is_voided = true;
  ---10486