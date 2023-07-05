-- dd0bc18d-0661-45d5-84cc-45b1e0d4fba6 = Grade
-- c2698021-44dc-4b43-a877-3801d4a8c20b = 6
-- 5e37269c-1b30-4766-b48a-893b77fd9a1a = Type of school
-- ad12fc9b-cbdf-4ba4-ab27-e03e89a9af23 = Primary
-- 9a2bf64b-41b1-485e-a6dd-ceb1b75a8397 = Secondary


-- total count of encounter where grade = 6
select count(*)
from encounter
where observations->'dd0bc18d-0661-45d5-84cc-45b1e0d4fba6' = '["c2698021-44dc-4b43-a877-3801d4a8c20b"]'; -- Grade = 6
-- 4492

-- total count of encounter where grade = 6 and Type of school = Secondary
select count(*)
from encounter where
            observations->'dd0bc18d-0661-45d5-84cc-45b1e0d4fba6' = '["c2698021-44dc-4b43-a877-3801d4a8c20b"]'
                 and observations->>'5e37269c-1b30-4766-b48a-893b77fd9a1a' = '9a2bf64b-41b1-485e-a6dd-ceb1b75a8397';
-- 4492

-- total count of encounter where grade = 6 and Type of school = Primary
select count(*)
from encounter where
            observations->'dd0bc18d-0661-45d5-84cc-45b1e0d4fba6' = '["c2698021-44dc-4b43-a877-3801d4a8c20b"]'
                 and observations->>'5e37269c-1b30-4766-b48a-893b77fd9a1a' = 'ad12fc9b-cbdf-4ba4-ab27-e03e89a9af23';
-- 0

-- update query
update encounter
set observations = observations || '{"5e37269c-1b30-4766-b48a-893b77fd9a1a":"ad12fc9b-cbdf-4ba4-ab27-e03e89a9af23"}',
    last_modified_date_time = current_timestamp + ((random() * 10 + 1) * interval '1 millisecond')
where observations->'dd0bc18d-0661-45d5-84cc-45b1e0d4fba6' = '["c2698021-44dc-4b43-a877-3801d4a8c20b"]';  -- Grade = 6 then Update type of school as Primary
-- 4492

-- total count of encounter where grade = 6 and Type of school = Secondary
select count(*)
from encounter where
            observations->'dd0bc18d-0661-45d5-84cc-45b1e0d4fba6' = '["c2698021-44dc-4b43-a877-3801d4a8c20b"]'
                 and observations->>'5e37269c-1b30-4766-b48a-893b77fd9a1a' = '9a2bf64b-41b1-485e-a6dd-ceb1b75a8397';
-- 0

-- total count of encounter where grade = 6 and Type of school = Primary
select count(*)
from encounter where
            observations->'dd0bc18d-0661-45d5-84cc-45b1e0d4fba6' = '["c2698021-44dc-4b43-a877-3801d4a8c20b"]'
                 and observations->>'5e37269c-1b30-4766-b48a-893b77fd9a1a' = 'ad12fc9b-cbdf-4ba4-ab27-e03e89a9af23';
-- 4492
