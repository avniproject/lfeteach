-- Purpose
-- In order to make subject upload faster, there were some changes done.
-- 1. Enable pg_stat_statements to figure out the problem
-- 2. Deploy avni-server with a patch - https://github.com/avniproject/avni-server/tree/lfe-patch-oct13
-- 3. Replace title_lineage_locations_view (This script is a log of the changes done)

-- Enable pg_stat_statements
create extension pg_stat_statements;
select * from pg_stat_statements order by total_time desc; -- postgres db


-- Make the change
drop view title_lineage_locations_view;

create table public.title_lineage_locations_view as
    (select al.id lowestpoint_id, string_agg(alevel_in_lineage.title, ', ' order by lineage.level) title_lineage
     from address_level al
              join regexp_split_to_table(al.lineage :: text, '[.]') with ordinality lineage (point_id, level) ON TRUE
              join address_level alevel_in_lineage on alevel_in_lineage.id = lineage.point_id :: int
     group by al.id);

create index title_lineage_locations_view_lineage_idx on title_lineage_locations_view (title_lineage);

ALTER TABLE title_lineage_locations_view ADD COLUMN organisation_id INTEGER NOT NULL DEFAULT 1 REFERENCES organisation(id);
update title_lineage_locations_view
set organisation_id = al.organisation_id
from address_level al where lowestpoint_id = al.id;

select enable_rls_on_tx_table('title_lineage_locations_view');

select grant_all_on_all('openchs_impl');
select grant_all_on_all('lfeteachuat');
select grant_all_on_all('teachap_uat');
select grant_all_on_all('aptimer');
select grant_all_on_all('apuat');
select grant_all_on_all('aptuat');
select grant_all_on_all('secaudit');
select grant_all_on_all('teachap');
select grant_all_on_all('teachnluat');

-- Roll back the change
drop table title_lineage_locations_view;

CREATE OR REPLACE function title_lineage_locations_function(addressId bigint)
    RETURNS TABLE
            (
                lowestpoint_id integer,
                title_lineage  text
            )
    LANGUAGE sql
    SECURITY INVOKER
AS
$$
select al.id lowestpoint_id, string_agg(alevel_in_lineage.title, ', ' order by lineage.level) title_lineage
from address_level al
         join regexp_split_to_table(al.lineage :: text, '[.]') with ordinality lineage (point_id, level) ON TRUE
         join address_level alevel_in_lineage on alevel_in_lineage.id = lineage.point_id :: int
where case when addressId isnull then true else al.id = addressId end
group by al.id
$$;

CREATE OR REPLACE VIEW title_lineage_locations_view AS
select *
from title_lineage_locations_function(null);

select grant_all_on_all('openchs_impl');
select grant_all_on_all('lfeteachuat');
select grant_all_on_all('teachap_uat');
select grant_all_on_all('aptimer');
select grant_all_on_all('apuat');
select grant_all_on_all('aptuat');
select grant_all_on_all('secaudit');
select grant_all_on_all('teachap');
select grant_all_on_all('teachnluat');
