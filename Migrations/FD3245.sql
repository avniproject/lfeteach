-- As part of an earlier migration (https://gist.github.com/sachsk/7646693180ac623ebaca916985f3ca3e), we updated the addresses of a few individuals, but did not create a subject_migration entry. 
-- This means that for people who are migrating out, there is the chance of having older records in their device that needs to be deleted out. This script achieves this purpose. 
set role teachap;
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 68142, 145191, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145191 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 123103, 145185, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145185 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 60795, 145186, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145186 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 60797, 145188, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145188 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 60798, 145189, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145189 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 123104, 145190, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145190 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 127024, 145193, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145193 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 127027, 145194, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145194 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 127032, 145195, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145195 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 127038, 145199, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145199 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 127042, 145200, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145200 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 127046, 145202, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145202 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 54124, 145204, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145204 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 127054, 145212, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145212 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 62243, 145219, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145219 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 130596, 145223, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145223 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 130618, 145229, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145229 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 130626, 145231, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145231 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 130749, 145222, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145222 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';
insert into subject_migration (uuid, subject_type_id, individual_id, old_address_level_id, new_address_level_id, organisation_id, is_voided, version, created_by_id, last_modified_by_id, created_date_time, last_modified_date_time, manual_update_history) select uuid_generate_v4(), 4, id, 131184, 145234, 4, false, 0,  10267, 10267, current_timestamp, current_timestamp, 'FD-3245' from individual where address_id = 145234 and manual_update_history = 'Updating individuals address id from old one to new one as per client request';

commit;
