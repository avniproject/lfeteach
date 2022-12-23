-- All time fields
select fe.name, c.name, c.uuid from form
    join form_element_group feg on form.id = feg.form_id
    join form_element fe on feg.id = fe.form_element_group_id
    join concept c on fe.concept_id = c.id
where form.name = 'Observation Encounter' and c.data_type = 'Time' and fe.is_voided = false and feg.is_voided = false and form.is_voided = false;

-- Metabase alert
select count(id) from encounter
    where length(observations->>'18b87868-afe5-4d60-ba0d-c2bab10da273') > 5 or
            length(observations->>'2cd5c3fd-fcae-4e40-a0bf-c2b991ac7787') > 5 or
            length(observations->>'6aeb8dc2-eab2-4801-acf5-65ad33d7a90f') > 5 or
            length(observations->>'c363886d-1b28-41b1-91e8-d325dcc27311') > 5 or
            length(observations->>'8c3e7182-733f-47d0-9ecf-2d4a9fbd0f3b') > 5 or
            length(observations->>'f40a3776-80fc-47f9-8157-024632103546') > 5;

-- UPDATE
begin transaction;
-- Scheduled Time
update encounter
        set observations = jsonb_set(observations, '{18b87868-afe5-4d60-ba0d-c2bab10da273}'::text[],
                                            ('"' || substr(observations->>'18b87868-afe5-4d60-ba0d-c2bab10da273', 12, 5) || '"')::jsonb, false),
        last_modified_date_time = current_timestamp + ((id % 4000) * interval '1 millisecond'),
        last_modified_by_id = (select id from users where username = 'vinaytest@apteach')
    where length(observations->>'18b87868-afe5-4d60-ba0d-c2bab10da273') > 5;
-- Actual time
update encounter
        set observations = jsonb_set(observations, '{2cd5c3fd-fcae-4e40-a0bf-c2b991ac7787}'::text[],
                                            ('"' || substr(observations->>'2cd5c3fd-fcae-4e40-a0bf-c2b991ac7787', 12, 5) || '"')::jsonb, false),
        last_modified_date_time = current_timestamp + ((id % 4000) * interval '1 millisecond'),
        last_modified_by_id = (select id from users where username = 'vinaytest@apteach')
    where length(observations->>'2cd5c3fd-fcae-4e40-a0bf-c2b991ac7787') > 5;
-- Segment 2 - Segment end time
update encounter
        set observations = jsonb_set(observations, '{6aeb8dc2-eab2-4801-acf5-65ad33d7a90f}'::text[],
                                            ('"' || substr(observations->>'6aeb8dc2-eab2-4801-acf5-65ad33d7a90f', 12, 5) || '"')::jsonb, false),
        last_modified_date_time = current_timestamp + ((id % 4000) * interval '1 millisecond'),
        last_modified_by_id = (select id from users where username = 'vinaytest@apteach')
    where length(observations->>'6aeb8dc2-eab2-4801-acf5-65ad33d7a90f') > 5;
-- Segment 2 - Scheduled Time
update encounter
        set observations = jsonb_set(observations, '{c363886d-1b28-41b1-91e8-d325dcc27311}'::text[],
                                            ('"' || substr(observations->>'c363886d-1b28-41b1-91e8-d325dcc27311', 12, 5) || '"')::jsonb, false),
        last_modified_date_time = current_timestamp + ((id % 4000) * interval '1 millisecond'),
        last_modified_by_id = (select id from users where username = 'vinaytest@apteach')
    where length(observations->>'c363886d-1b28-41b1-91e8-d325dcc27311') > 5;
-- Segment 2 - Actual time
update encounter
        set observations = jsonb_set(observations, '{8c3e7182-733f-47d0-9ecf-2d4a9fbd0f3b}'::text[],
                                            ('"' || substr(observations->>'8c3e7182-733f-47d0-9ecf-2d4a9fbd0f3b', 12, 5) || '"')::jsonb, false),
        last_modified_date_time = current_timestamp + ((id % 4000) * interval '1 millisecond'),
        last_modified_by_id = (select id from users where username = 'vinaytest@apteach')
    where length(observations->>'8c3e7182-733f-47d0-9ecf-2d4a9fbd0f3b') > 5;
-- Segment 1 - Segment end time
update encounter
        set observations = jsonb_set(observations, '{f40a3776-80fc-47f9-8157-024632103546}'::text[],
                                            ('"' || substr(observations->>'f40a3776-80fc-47f9-8157-024632103546', 12, 5) || '"')::jsonb, false),
        last_modified_date_time = current_timestamp + ((id % 4000) * interval '1 millisecond'),
        last_modified_by_id = (select id from users where username = 'vinaytest@apteach')
    where length(observations->>'f40a3776-80fc-47f9-8157-024632103546') > 5;
commit;
