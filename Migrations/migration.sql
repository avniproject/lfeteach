
-- Remove all observations before 16th.
select count(*)
from encounter
where encounter_date_time < '2022-08-16'::date;--1936

update encounter
set is_voided= true,
    last_modified_date_time=current_timestamp + ((id % 4000) * interval '1 millisecond'),
    last_modified_by_id=(select id from users where username = 'sachin@apteach')
where encounter_date_time < '2022-08-16'::date;



-------------------------------------------
-----Total teacher 20690

-----all teachers who have encounters after 15th august---9015
select distinct i.id
from individual i
         inner join encounter enc on enc.individual_id = i.id
where subject_type_id = 2
  and encounter_date_time > '2022-08-15'::date;

--Remove all teachers for whom no observation was done after 15th

update individual
set is_voided= true,
    last_modified_date_time=current_timestamp + ((id % 4000) * interval '1 millisecond'),
    last_modified_by_id=(select id from users where username = 'sachin@apteach')
where id not in (
    select distinct i.id
    from individual i
             inner join encounter enc on enc.individual_id = i.id
    where subject_type_id = 2
      and encounter_date_time > '2022-08-15'::date
);


---------------------------------------------------------------------------
--  Delete all observations done by observations done by observers that did not pass the exam
--  Delete all teachers exclusively assigned to them (verify if this is fine)
--  Delete all observers who have not passed both exams"


-------------------for primary----------------
select
    -- count(distinct enc.id)--236
    u.username,
    ud.avni_username,
    primary_status,
    enc.observations ->> '5e37269c-1b30-4766-b48a-893b77fd9a1a',
    *
from encounter enc
         left join users u on u.id = enc.created_by_id
         left join user_details ud on ud.avni_username = u.username

where enc.encounter_date_time notnull
  and ud.primary_status = false
  and enc.observations ->> '5e37269c-1b30-4766-b48a-893b77fd9a1a' = 'ad12fc9b-cbdf-4ba4-ab27-e03e89a9af23'
;

update encounter
set is_voided= true,
    last_modified_date_time=current_timestamp + ((id % 4000) * interval '1 millisecond'),
    last_modified_by_id=(select id from users where username = 'sachin@apteach')
where id in (
    select enc.id
    from encounter enc
             left join users u on u.id = enc.created_by_id
             left join user_details ud on ud.avni_username = u.username
    where enc.encounter_date_time notnull
      and ud.primary_status = false
      and enc.observations ->> '5e37269c-1b30-4766-b48a-893b77fd9a1a' = 'ad12fc9b-cbdf-4ba4-ab27-e03e89a9af23'
);

-------------------For secondary-------------------------------------------

select *
from concept
where uuid = '9a2bf64b-41b1-485e-a6dd-ceb1b75a8397';

select *
from users
where username = 'sachin@apteach';

select
--     count(distinct enc.id)--359
u.username,
ud.avni_username,
secondary_status,
enc.observations ->> '5e37269c-1b30-4766-b48a-893b77fd9a1a',
*
from encounter enc
         left join users u on u.id = enc.created_by_id
         left join user_details ud on ud.avni_username = u.username

where enc.encounter_date_time notnull
  and ud.secondary_status = false
  and enc.observations ->> '5e37269c-1b30-4766-b48a-893b77fd9a1a' = '9a2bf64b-41b1-485e-a6dd-ceb1b75a8397'
;



update encounter
set is_voided= true,
    last_modified_date_time=current_timestamp + ((id % 4000) * interval '1 millisecond'),
    last_modified_by_id=(select id from users where username = 'sachin@apteach')
where id in (
    select enc.id
    from encounter enc
             left join users u on u.id = enc.created_by_id
             left join user_details ud on ud.avni_username = u.username

    where enc.encounter_date_time notnull
      and ud.secondary_status = false
      and enc.observations ->> '5e37269c-1b30-4766-b48a-893b77fd9a1a' = '9a2bf64b-41b1-485e-a6dd-ceb1b75a8397'
);


-- -------------------Delete all observers who have not passed both exams---------------------------
select *
from users u
         inner join user_details ud on u.username = ud.avni_username
    and ud.primary_status = false
    and ud.secondary_status = false;
;---94


update users
set is_voided= true,
    last_modified_date_time=current_timestamp + ((users.id % 4000) * interval '1 millisecond'),
    last_modified_by_id=(select id from users where username = 'sachin@apteach')
from user_details ud
where ud.avni_username = users.username
  and ud.primary_status = false
  and ud.secondary_status = false;

