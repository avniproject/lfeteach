--take documentation_id and form_element id from old org
set role lfeteachuat;

select fe.id,fe.documentation_id,fe.uuid,d.id,d.uuid
from form_element fe
join documentation d on fe.documentation_id = d.id
where fe.is_voided = false
  and d.is_voided = false
  and documentation_id notnull ;

-- take count of form_element
select count(*)
from form_element where is_voided = false
and uuid in(
'0efafa1f-2573-43a4-9258-eb93283801ca',
'251117d6-e868-4c64-8d4f-e136dbf0b53a',
'1577faea-399d-4342-a423-87406aa9f7da',
'259735ef-5fb1-4b91-b4bb-03e7976cb24d',
'3dd34395-4757-4da9-8513-0deeff432421',
'5ac00cda-b1c2-4b29-bd11-8eb10a70e7ac',
'3b920f1b-a4b9-46bf-a589-65c90831976d',
'b1e8960a-9fd7-4d68-8c8b-ec8f863dcaef',
'dda4709f-81e7-4ee4-b6c7-e38d734b2802',
'91d468bf-0265-4e62-8be7-8d5e3fa4bd53',
'9f598885-c2eb-49ed-9dce-9f6e9242c0e5',
'5189d402-b11b-4bac-9b54-bd5bb04ec83e',
'88ed20e2-8f13-4abd-b95d-f6bded448107',
'aa408a47-f11c-46ef-a4a7-85536a2cea66',
'190452ed-d325-48d7-acb1-702dd1f8c775',
'41ffdd1d-a903-43c7-bb23-0930ffb771cb',
'e9bed789-4d34-47d8-bea9-e29e7803d1a2',
'ae24fff1-6517-43c0-8fb1-f8bf8e63cbd7',
'c0649d3d-0149-4617-b7e3-6714bf14d542',
'42574152-01d8-416c-8353-1e89d979f8e7',
'60ad9ffb-6973-441b-b14d-781bdbbfc5fe',
'6eeacf28-54d4-480a-8ec4-f84bf19417dd',
'5e93acbd-04ed-42c2-bcc7-bb113109eae5',
'4371c7fa-675f-43ba-8d1c-e7924b337d92',
'ba8bd7fd-4dd9-40ee-b955-2d2471688804',
'dd6a8858-209b-419c-a792-da768a002ac5',
'87cc30d8-967c-4ae5-8ace-7c6c8eab5b27',
'ecec7a86-3e71-4145-8fc5-62b5687fc7e7',
'd8f7a58b-59cc-44b8-9b23-0c637948d72a',
'a3ac3fbd-88d8-4eb6-86e4-e3d9bfab0a75',
'caedbf8d-a68a-4688-8dbc-cf715b22b832',
'6e06fe8d-dbbe-4756-aaf3-6d0bb1e5229f',
'7d3bbe39-ff8c-48bd-b0a8-c1542cd0a48f',
'8645cbf3-7c62-4059-b4af-871ca9f45e47',
'18da69cc-0d2a-48ab-8de6-8d851a9ee992',
'046814bb-aff0-4039-a482-45685e7d7d20',
'1b2f2d93-16a2-429b-8d22-d8cc06655747',
'75f3ca89-5f42-4e17-bdcf-0f855e5fdb46',
'ab8ad7d5-bfcd-4298-b1d2-9347294f969d',
'2efe5ab4-ca0b-4bd3-9633-9c7a901e0464',
'a6093259-2a33-42a7-8f88-156b0e06aa0b',
'b1137da2-773f-465f-ac1a-56cdf1c3c780',
'ada57c50-51cd-4a0d-be38-0aa4f25f428d',
'6fcb7f8a-9a5a-473f-b197-981789f73df2',
'326d336b-a606-4fb1-9918-d530fabadb77',
'8b21a44d-259e-444f-88df-1e1a99432bd2',
'21ef70df-1955-463c-a332-d5cf3139bf4c',
'cfe82731-b3f8-4954-9d53-0fa18eeabac9',
'656b0313-bd95-4c0d-b82e-d5fa9f7e9bcc',
'4fd5209a-539c-4335-8219-cb05b8bfe5de',
'a8d3111d-d158-4cc9-a84a-2f272fbeb3d7',
'12f9d76f-215e-4c1e-8f69-bbb3a28efcba',
'f0c06526-2943-4d18-a08f-2469c4745c79',
'b00a09ae-2486-4df4-b0ae-075c837ceec6',
'e39762bb-20ab-42e8-8f20-5689b7c9be8d',
'880f3a09-5d54-481f-a216-37d859c08a5b',
'8805bc93-b8cd-4a6d-b7c8-c211759c497b',
'33656566-a2a3-429a-b917-59928813e4bd',
'7387e981-d395-4bc6-9ed3-ab4454dd0c5d',
'e6d36a65-9a13-4c4a-b18e-bb4be5ea762f',
'2c1256f7-2b88-4f3e-b497-fc4b7ca6e126',
'93571898-a2c4-4827-be7d-4e6a6a1b2b55',
'348b67a0-4547-417f-9069-ea99df6feb5c',
'763f6f24-da31-4c68-a3b5-9d869e67b1cc',
'c3f19a2e-c795-4ffe-a276-0e5e1e63e332',
'41f3007f-cf3c-43ff-a8c1-6e56a821c9fc',
'fb41c1c1-a912-45ac-9b8f-71eb0d5a5c13',
'db839db4-b322-47a0-bd44-85864b8eef56',
'3b5f20e2-98cd-4909-a6ef-02028b1b4fa6',
'e803c8c4-d60d-4db1-b3f8-d8950dedba3d',
'8b39ad9b-2e81-4bcb-ab33-91ff29cdd2cf',
'67c1e949-7d53-471c-b912-c0d09f1b9f8e',
'cf9e774e-102c-4e62-85e3-d78b280bbe4b',
'0a377f8f-4858-47fa-9bab-e498b215acb4',
'5e872cce-a1dd-4114-9eaf-50bacf71d9af',
'305d26d3-5cbc-4cf1-b5f0-201aa4e1e671',
'4bdf5c3b-24fc-45e5-8858-5738b86f6455',
'da68ca31-dc40-49e2-af11-71c30dec7d02',
'30acd46c-16b5-4ccd-9f42-f8b1c893fe63',
'bb44be2b-f86d-43b8-b85a-8ffe1f35691b',
'a6b2f522-d353-48ad-bcc6-a7a1f083bdef',
'd7c9890d-1d59-404f-8ede-cb515813609a',
'29f792aa-0991-48f3-a6df-5c39a99806e1',
'dc8e44c7-fbd2-4c7a-b503-bde72a090ee4',
'dcb872e9-11ce-41e0-bfe2-90d0d27f8ca0',
'd7c423c9-e993-4e8b-a631-9146f822193d',
'2808fc8a-5eb2-43f3-95e7-d57839c887a9',
'e6d6ea6a-943c-4d44-92cd-71ad3184f683',
'd58ba437-77ff-4b82-a4c6-cddff643a2b1',
'fbb7240f-0138-45e2-bf57-13d70618119a',
'7c227cda-8c51-4d11-9574-387a812e2af7',
'7b01b524-e86f-40c4-857e-b6a934ed125a',
'a1fd50a8-923b-4d64-83ba-9b19f61a6eac',
'a86238cf-8641-4920-87ee-6ea056b0874c',
'4053a58e-c9b1-447e-a96b-2637dcc12bb6',
'4891bd73-99f1-4d40-80b3-a30bb646455b',
'2c8e3fdf-0983-443a-ae75-041a18e79e80',
'1d2fffa3-d0ff-4135-ac16-7d2a3dea77da',
'ddecfaee-4f1a-40bb-9652-6867c8b460ac',
'c1ae7cf3-364b-4019-a30c-ce01ca41f968',
'46d9b38f-b71a-468d-9ff7-1547b1a40a5e',
'9c5f986b-ebf8-4e1a-920f-ff09ec27d66f',
'a5f761bf-5f3e-4767-b80f-b0a672db97a2',
'bec4768a-60c3-4791-8569-d0da54c8d873',
'632c54ce-f4d5-4614-8ce4-6a6976eee728',
'4c552521-ad5e-44a8-8a98-a61d6948efe2',
'b1d9f5e0-bff8-4e32-a449-67fcdf263b45',
'ca8da623-0b74-4b46-854a-496e190dd474',
'010d2de3-c33a-4a9b-83f5-cea55d1e286a',
'ee5a6b53-9580-40a0-97d8-b238abe72dda',
'fcbf789e-5081-414b-9efd-67195f6227fe',
'91ff0f6d-242e-4a1c-be1c-76c211aeb157',
'9ac056f9-01f4-4af1-9574-a35c7089288a',
'da7dc302-a549-42b5-8fdf-bed35ba4a62c',
'4cb379c3-9e06-4454-bc17-5bceaf4aa835',
'302cb29c-ce5e-4dc1-9a9b-4c497e38fd5b',
'ba6b47d3-4d0a-44a0-996b-905585cdfbdc',
'd2bcc8a7-5ada-415e-940c-a8d625efa4ad',
'1be43ba2-8d6b-4dcc-a0e0-70a3d25a9903',
'6b911b28-a145-4e80-98b1-439e3d08eb95',
'a864d4b4-138b-4b7f-9ad3-76a03a9b9e6d',
'45e7f2e0-09e7-4e77-854c-f1c40e0eb83c',
'282cecc4-97d2-4adb-a010-6459d672802d',
'e6b29061-123b-4e43-8d35-220adc4ff3ac',
'aac6e18b-f1b7-42e5-8618-9703f1b87562',
'9d340148-ed78-41e8-a161-30fba301674e',
'45d81b18-49e6-45b6-83db-f98d60aca068',
'9a5bd49c-8866-4e84-a524-0e3e7c378dcb',
'7644050a-1d6b-42fd-9f09-e71ae8d0c365',
'9ae0e3ef-c9fc-4eae-87a0-07def554abb5',
'4162a23d-c715-4258-b77e-9df7a4209f70',
'e0e766f2-0624-4828-a24f-0b8ec9ccd44d',
'fbb5f416-a985-4d65-9ddb-d18091e474dc',
'8516a0ef-1d88-4917-824b-5085fe6bbc20',
'b750e5a1-b6ed-4c05-a1f7-4b140595c6c8',
'0eaf572d-96a1-4d09-bd4a-d8f5c41a2b43',
'f8ba6458-9046-4a06-a9ff-8a490039a45c',
'f9385b1e-39e6-4a3b-b835-eeef416e9c51',
'ebe8c71a-98ad-4a0b-bbba-fce1a0457929',
'c59dee40-1750-411c-a4f0-c1cd56f7f4eb',
'88bfe639-387c-4f4d-9fba-7a2b12f4f834',
'564c9b2b-e118-4e01-afd6-85bf875e30ea',
'2370519a-971c-47a6-8221-af8ce2b12b69',
'0a9a8f61-cb5a-4ab9-88ae-cecc0309ab84',
'53c78a70-cfc9-4eb7-9bf0-36758d308ace',
'98d5e0b1-31b2-4542-b364-931a995d4576',
'4ee551cd-0447-4e13-b3fb-286db4ab035c',
'98bea9d0-169b-469b-a334-a58966abf088',
'3573aa5e-36a9-4926-81d0-5951da401501',
'46ef6354-b53c-441e-8f05-165512897ce4',
'685eb43d-8407-49fa-9fbf-3fec4d0ca705'
);
-- 151

-- take count of documentation
select count(*)
from documentation
where is_voided = false
  and uuid in (
               '3c6c40bd-a99e-4763-8051-168853e08ac4',
               'f2cf076b-0139-4896-b25b-b92473393bf0',
               'f2cf076b-0139-4896-b25b-b92473393bf0',
               '19be156e-f203-43b8-8e71-fd94dde8103b',
               '7366e2ff-a8f0-43a3-bafb-46877a83d15a',
               '3afc3d5d-a3b2-407b-803a-65478a7001ab',
               '3c6c40bd-a99e-4763-8051-168853e08ac4',
               '19be156e-f203-43b8-8e71-fd94dde8103b',
               '3c6c40bd-a99e-4763-8051-168853e08ac4',
               '3c6c40bd-a99e-4763-8051-168853e08ac4',
               '3afc3d5d-a3b2-407b-803a-65478a7001ab',
               '3afc3d5d-a3b2-407b-803a-65478a7001ab',
               '3afc3d5d-a3b2-407b-803a-65478a7001ab',
               '3afc3d5d-a3b2-407b-803a-65478a7001ab',
               '7366e2ff-a8f0-43a3-bafb-46877a83d15a',
               'f2cf076b-0139-4896-b25b-b92473393bf0',
               '18a4d4ff-9187-4e63-9552-9b9063ad0bd2',
               '3db6fadc-16fa-414a-b297-d29d16c28617',
               '3afc3d5d-a3b2-407b-803a-65478a7001ab',
               'd57689ba-8312-4d3f-8aa0-d60513293592',
               '367d72e2-3da8-41b0-b49c-0f4ba2538889',
               'a9c4b50c-2b18-4d5c-b866-537b2a4de666',
               '943b74f0-2e52-4cdc-8ea0-b03742a85a1a',
               'ff4fc795-9d4c-4c61-be72-d1a1e28054a0',
               'b28f8ebd-6803-4b3f-abb8-f9939c79de71',
               'e9156f96-bda5-4a1d-8dd7-58a1775c25ee',
               'b9f90f43-6d28-4aa2-a7af-f9ee1b19fd19',
               '955232f5-6dfc-4cab-a217-121dd86e167c',
               'e9782dfd-0c17-479c-bfe6-15706788e16e',
               '5cd29d08-056e-4f38-857b-ccb5b7517eba',
               'dbd93a79-4d5e-4add-9f94-8cdda67ab519',
               'f3d34774-aa09-47c1-8bad-0f28e42e3757',
               '7eb856ae-6b57-4696-9850-9765aa901521',
               '457c08b0-d5e0-4589-9b18-501001153d55',
               '42920e37-b390-4b2b-b094-d1f0c0780c68',
               '17c119df-1af4-480e-a472-12ed3f32778d',
               'd12f98eb-35e8-4892-a4db-271f2a154fe6',
               '4985ab98-429d-45a1-a0e4-903a19f0460b',
               'f693cd4f-82d9-4d26-9677-dbe9ff7b8fc3',
               'a1b3d273-b76d-4b54-9754-3d9907da669c',
               'c2a6664d-25d4-4694-8b0d-cde3b43e547e',
               'aa25f259-bea6-4b2b-a19f-7f05ac40de44',
               '891f60f4-8002-4232-9d9e-879d49e20d31',
               '212c9cd7-95ed-4559-b805-d242641d0876',
               '3f7bbc01-7c6d-4678-9889-f666d9ed92a8',
               'b2e74f61-3e0a-4610-bfaa-6136f5feb11f',
               'a107a7b0-1514-4341-b1e7-bf55ba859343',
               '42a39041-1922-4026-ae79-584384d184f0',
               'a89f693f-dbb9-41fb-b4e5-3a8858b79329',
               '57161fbd-8385-4f17-8c49-e3d1fdb3445b',
               '3239dddf-a047-4823-a09a-8ef3c6c81161',
               'aaf4809b-7135-4422-9dee-5731cad6f06f',
               '792cfdcc-f96c-4277-b771-7122c81cef09',
               'c2dbd4eb-9acb-4fc6-93ef-2df549e29800',
               '79e41e89-bbea-4e71-b07e-2a537752c6d7',
               'b3b86fd0-0f43-43ef-82c5-0238ac8a7d44',
               'c87a6f4c-c91a-402c-885c-21af2fece1d0',
               'cae8db5c-377c-4b7b-816f-83205bc554c5',
               '1cbee933-6c0f-4411-90ea-99336e3c9c31',
               '2e7c4a85-6095-434b-97ae-ff32d44d9068',
               '644428a8-2e70-4830-9334-b1c83c63a8a0',
               'ed360a7f-1b9a-462f-9963-ee0c0d009167',
               '35efa5fd-07ba-49a9-985c-e2599376e81a',
               '6a68b495-3fad-4683-b81f-29d107bb015a',
               'eab99842-2ef5-4aa8-888b-69fc1f1918f1',
               '8b868dec-0d58-4e6f-83c4-89603336fa21',
               '1849dd31-5f41-4514-901a-bfe6b483ef27',
               '625ce863-19bd-4088-b993-84007704ff4c',
               '55210282-df3e-4be7-8817-bf65374ffe04',
               '99e50efd-9d45-4169-86a8-49a5e8ef6859',
               'b29ac80b-340e-419e-be99-557f8668f316',
               '81b58be6-9318-40a8-a0f7-386b2781bd74',
               '4429520d-cffd-414f-9288-2b7370eba9f2',
               'a77f155d-6e22-4f6d-b288-955719ab6371',
               'bb8c2112-41d9-440a-a5ea-6fa65e11b150',
               'b86e1885-d2a8-4ba1-bc05-ee2262f31532',
               '4454aaba-8008-4190-9b5f-c8a6e67d596a',
               '9195b6ce-8169-4a5b-a9bf-7d505e5b75c9',
               'e9156f96-bda5-4a1d-8dd7-58a1775c25ee',
               '955232f5-6dfc-4cab-a217-121dd86e167c',
               '5cd29d08-056e-4f38-857b-ccb5b7517eba',
               'ff4fc795-9d4c-4c61-be72-d1a1e28054a0',
               '367d72e2-3da8-41b0-b49c-0f4ba2538889',
               'e9782dfd-0c17-479c-bfe6-15706788e16e',
               '943b74f0-2e52-4cdc-8ea0-b03742a85a1a',
               '18a4d4ff-9187-4e63-9552-9b9063ad0bd2',
               'b28f8ebd-6803-4b3f-abb8-f9939c79de71',
               'b9f90f43-6d28-4aa2-a7af-f9ee1b19fd19',
               'a9c4b50c-2b18-4d5c-b866-537b2a4de666',
               '17c119df-1af4-480e-a472-12ed3f32778d',
               '42920e37-b390-4b2b-b094-d1f0c0780c68',
               '7eb856ae-6b57-4696-9850-9765aa901521',
               '457c08b0-d5e0-4589-9b18-501001153d55',
               'dbd93a79-4d5e-4add-9f94-8cdda67ab519',
               'f3d34774-aa09-47c1-8bad-0f28e42e3757',
               'f693cd4f-82d9-4d26-9677-dbe9ff7b8fc3',
               '212c9cd7-95ed-4559-b805-d242641d0876',
               'a1b3d273-b76d-4b54-9754-3d9907da669c',
               '4985ab98-429d-45a1-a0e4-903a19f0460b',
               'aa25f259-bea6-4b2b-a19f-7f05ac40de44',
               '891f60f4-8002-4232-9d9e-879d49e20d31',
               'c2a6664d-25d4-4694-8b0d-cde3b43e547e',
               'd12f98eb-35e8-4892-a4db-271f2a154fe6',
               'a89f693f-dbb9-41fb-b4e5-3a8858b79329',
               '3f7bbc01-7c6d-4678-9889-f666d9ed92a8',
               'a107a7b0-1514-4341-b1e7-bf55ba859343',
               '57161fbd-8385-4f17-8c49-e3d1fdb3445b',
               '42a39041-1922-4026-ae79-584384d184f0',
               'b2e74f61-3e0a-4610-bfaa-6136f5feb11f',
               'aaf4809b-7135-4422-9dee-5731cad6f06f',
               '3239dddf-a047-4823-a09a-8ef3c6c81161',
               '792cfdcc-f96c-4277-b771-7122c81cef09',
               'c2dbd4eb-9acb-4fc6-93ef-2df549e29800',
               '644428a8-2e70-4830-9334-b1c83c63a8a0',
               'cae8db5c-377c-4b7b-816f-83205bc554c5',
               'b3b86fd0-0f43-43ef-82c5-0238ac8a7d44',
               '79e41e89-bbea-4e71-b07e-2a537752c6d7',
               '2e7c4a85-6095-434b-97ae-ff32d44d9068',
               'c87a6f4c-c91a-402c-885c-21af2fece1d0',
               '1cbee933-6c0f-4411-90ea-99336e3c9c31',
               '2b2b053a-41eb-4619-8277-a43cef687f22',
               '35efa5fd-07ba-49a9-985c-e2599376e81a',
               'ed360a7f-1b9a-462f-9963-ee0c0d009167',
               '1849dd31-5f41-4514-901a-bfe6b483ef27',
               'eab99842-2ef5-4aa8-888b-69fc1f1918f1',
               '6a68b495-3fad-4683-b81f-29d107bb015a',
               '81b58be6-9318-40a8-a0f7-386b2781bd74',
               '3db6fadc-16fa-414a-b297-d29d16c28617',
               '55210282-df3e-4be7-8817-bf65374ffe04',
               '625ce863-19bd-4088-b993-84007704ff4c',
               '99e50efd-9d45-4169-86a8-49a5e8ef6859',
               'b29ac80b-340e-419e-be99-557f8668f316',
               '9195b6ce-8169-4a5b-a9bf-7d505e5b75c9',
               'bb8c2112-41d9-440a-a5ea-6fa65e11b150',
               '4454aaba-8008-4190-9b5f-c8a6e67d596a',
               '4429520d-cffd-414f-9288-2b7370eba9f2',
               'a77f155d-6e22-4f6d-b288-955719ab6371',
               'b86e1885-d2a8-4ba1-bc05-ee2262f31532',
               '7366e2ff-a8f0-43a3-bafb-46877a83d15a',
               '19be156e-f203-43b8-8e71-fd94dde8103b',
               '19be156e-f203-43b8-8e71-fd94dde8103b',
               '7366e2ff-a8f0-43a3-bafb-46877a83d15a',
               '7366e2ff-a8f0-43a3-bafb-46877a83d15a',
               'f2cf076b-0139-4896-b25b-b92473393bf0',
               '7366e2ff-a8f0-43a3-bafb-46877a83d15a',
               '7366e2ff-a8f0-43a3-bafb-46877a83d15a',
               '17c119df-1af4-480e-a472-12ed3f32778d',
               '19be156e-f203-43b8-8e71-fd94dde8103b',
               '3c6c40bd-a99e-4763-8051-168853e08ac4',
               'f2cf076b-0139-4896-b25b-b92473393bf0',
               '7366e2ff-a8f0-43a3-bafb-46877a83d15a'

    );



-- check in count with new org
set role aptuat;


-- check count of form element with new org
select count(*)
from form_element where is_voided = false
and uuid in(
'0efafa1f-2573-43a4-9258-eb93283801ca',
'251117d6-e868-4c64-8d4f-e136dbf0b53a',
'1577faea-399d-4342-a423-87406aa9f7da',
'259735ef-5fb1-4b91-b4bb-03e7976cb24d',
'3dd34395-4757-4da9-8513-0deeff432421',
'5ac00cda-b1c2-4b29-bd11-8eb10a70e7ac',
'3b920f1b-a4b9-46bf-a589-65c90831976d',
'b1e8960a-9fd7-4d68-8c8b-ec8f863dcaef',
'dda4709f-81e7-4ee4-b6c7-e38d734b2802',
'91d468bf-0265-4e62-8be7-8d5e3fa4bd53',
'9f598885-c2eb-49ed-9dce-9f6e9242c0e5',
'5189d402-b11b-4bac-9b54-bd5bb04ec83e',
'88ed20e2-8f13-4abd-b95d-f6bded448107',
'aa408a47-f11c-46ef-a4a7-85536a2cea66',
'190452ed-d325-48d7-acb1-702dd1f8c775',
'41ffdd1d-a903-43c7-bb23-0930ffb771cb',
'e9bed789-4d34-47d8-bea9-e29e7803d1a2',
'ae24fff1-6517-43c0-8fb1-f8bf8e63cbd7',
'c0649d3d-0149-4617-b7e3-6714bf14d542',
'42574152-01d8-416c-8353-1e89d979f8e7',
'60ad9ffb-6973-441b-b14d-781bdbbfc5fe',
'6eeacf28-54d4-480a-8ec4-f84bf19417dd',
'5e93acbd-04ed-42c2-bcc7-bb113109eae5',
'4371c7fa-675f-43ba-8d1c-e7924b337d92',
'ba8bd7fd-4dd9-40ee-b955-2d2471688804',
'dd6a8858-209b-419c-a792-da768a002ac5',
'87cc30d8-967c-4ae5-8ace-7c6c8eab5b27',
'ecec7a86-3e71-4145-8fc5-62b5687fc7e7',
'd8f7a58b-59cc-44b8-9b23-0c637948d72a',
'a3ac3fbd-88d8-4eb6-86e4-e3d9bfab0a75',
'caedbf8d-a68a-4688-8dbc-cf715b22b832',
'6e06fe8d-dbbe-4756-aaf3-6d0bb1e5229f',
'7d3bbe39-ff8c-48bd-b0a8-c1542cd0a48f',
'8645cbf3-7c62-4059-b4af-871ca9f45e47',
'18da69cc-0d2a-48ab-8de6-8d851a9ee992',
'046814bb-aff0-4039-a482-45685e7d7d20',
'1b2f2d93-16a2-429b-8d22-d8cc06655747',
'75f3ca89-5f42-4e17-bdcf-0f855e5fdb46',
'ab8ad7d5-bfcd-4298-b1d2-9347294f969d',
'2efe5ab4-ca0b-4bd3-9633-9c7a901e0464',
'a6093259-2a33-42a7-8f88-156b0e06aa0b',
'b1137da2-773f-465f-ac1a-56cdf1c3c780',
'ada57c50-51cd-4a0d-be38-0aa4f25f428d',
'6fcb7f8a-9a5a-473f-b197-981789f73df2',
'326d336b-a606-4fb1-9918-d530fabadb77',
'8b21a44d-259e-444f-88df-1e1a99432bd2',
'21ef70df-1955-463c-a332-d5cf3139bf4c',
'cfe82731-b3f8-4954-9d53-0fa18eeabac9',
'656b0313-bd95-4c0d-b82e-d5fa9f7e9bcc',
'4fd5209a-539c-4335-8219-cb05b8bfe5de',
'a8d3111d-d158-4cc9-a84a-2f272fbeb3d7',
'12f9d76f-215e-4c1e-8f69-bbb3a28efcba',
'f0c06526-2943-4d18-a08f-2469c4745c79',
'b00a09ae-2486-4df4-b0ae-075c837ceec6',
'e39762bb-20ab-42e8-8f20-5689b7c9be8d',
'880f3a09-5d54-481f-a216-37d859c08a5b',
'8805bc93-b8cd-4a6d-b7c8-c211759c497b',
'33656566-a2a3-429a-b917-59928813e4bd',
'7387e981-d395-4bc6-9ed3-ab4454dd0c5d',
'e6d36a65-9a13-4c4a-b18e-bb4be5ea762f',
'2c1256f7-2b88-4f3e-b497-fc4b7ca6e126',
'93571898-a2c4-4827-be7d-4e6a6a1b2b55',
'348b67a0-4547-417f-9069-ea99df6feb5c',
'763f6f24-da31-4c68-a3b5-9d869e67b1cc',
'c3f19a2e-c795-4ffe-a276-0e5e1e63e332',
'41f3007f-cf3c-43ff-a8c1-6e56a821c9fc',
'fb41c1c1-a912-45ac-9b8f-71eb0d5a5c13',
'db839db4-b322-47a0-bd44-85864b8eef56',
'3b5f20e2-98cd-4909-a6ef-02028b1b4fa6',
'e803c8c4-d60d-4db1-b3f8-d8950dedba3d',
'8b39ad9b-2e81-4bcb-ab33-91ff29cdd2cf',
'67c1e949-7d53-471c-b912-c0d09f1b9f8e',
'cf9e774e-102c-4e62-85e3-d78b280bbe4b',
'0a377f8f-4858-47fa-9bab-e498b215acb4',
'5e872cce-a1dd-4114-9eaf-50bacf71d9af',
'305d26d3-5cbc-4cf1-b5f0-201aa4e1e671',
'4bdf5c3b-24fc-45e5-8858-5738b86f6455',
'da68ca31-dc40-49e2-af11-71c30dec7d02',
'30acd46c-16b5-4ccd-9f42-f8b1c893fe63',
'bb44be2b-f86d-43b8-b85a-8ffe1f35691b',
'a6b2f522-d353-48ad-bcc6-a7a1f083bdef',
'd7c9890d-1d59-404f-8ede-cb515813609a',
'29f792aa-0991-48f3-a6df-5c39a99806e1',
'dc8e44c7-fbd2-4c7a-b503-bde72a090ee4',
'dcb872e9-11ce-41e0-bfe2-90d0d27f8ca0',
'd7c423c9-e993-4e8b-a631-9146f822193d',
'2808fc8a-5eb2-43f3-95e7-d57839c887a9',
'e6d6ea6a-943c-4d44-92cd-71ad3184f683',
'd58ba437-77ff-4b82-a4c6-cddff643a2b1',
'fbb7240f-0138-45e2-bf57-13d70618119a',
'7c227cda-8c51-4d11-9574-387a812e2af7',
'7b01b524-e86f-40c4-857e-b6a934ed125a',
'a1fd50a8-923b-4d64-83ba-9b19f61a6eac',
'a86238cf-8641-4920-87ee-6ea056b0874c',
'4053a58e-c9b1-447e-a96b-2637dcc12bb6',
'4891bd73-99f1-4d40-80b3-a30bb646455b',
'2c8e3fdf-0983-443a-ae75-041a18e79e80',
'1d2fffa3-d0ff-4135-ac16-7d2a3dea77da',
'ddecfaee-4f1a-40bb-9652-6867c8b460ac',
'c1ae7cf3-364b-4019-a30c-ce01ca41f968',
'46d9b38f-b71a-468d-9ff7-1547b1a40a5e',
'9c5f986b-ebf8-4e1a-920f-ff09ec27d66f',
'a5f761bf-5f3e-4767-b80f-b0a672db97a2',
'bec4768a-60c3-4791-8569-d0da54c8d873',
'632c54ce-f4d5-4614-8ce4-6a6976eee728',
'4c552521-ad5e-44a8-8a98-a61d6948efe2',
'b1d9f5e0-bff8-4e32-a449-67fcdf263b45',
'ca8da623-0b74-4b46-854a-496e190dd474',
'010d2de3-c33a-4a9b-83f5-cea55d1e286a',
'ee5a6b53-9580-40a0-97d8-b238abe72dda',
'fcbf789e-5081-414b-9efd-67195f6227fe',
'91ff0f6d-242e-4a1c-be1c-76c211aeb157',
'9ac056f9-01f4-4af1-9574-a35c7089288a',
'da7dc302-a549-42b5-8fdf-bed35ba4a62c',
'4cb379c3-9e06-4454-bc17-5bceaf4aa835',
'302cb29c-ce5e-4dc1-9a9b-4c497e38fd5b',
'ba6b47d3-4d0a-44a0-996b-905585cdfbdc',
'd2bcc8a7-5ada-415e-940c-a8d625efa4ad',
'1be43ba2-8d6b-4dcc-a0e0-70a3d25a9903',
'6b911b28-a145-4e80-98b1-439e3d08eb95',
'a864d4b4-138b-4b7f-9ad3-76a03a9b9e6d',
'45e7f2e0-09e7-4e77-854c-f1c40e0eb83c',
'282cecc4-97d2-4adb-a010-6459d672802d',
'e6b29061-123b-4e43-8d35-220adc4ff3ac',
'aac6e18b-f1b7-42e5-8618-9703f1b87562',
'9d340148-ed78-41e8-a161-30fba301674e',
'45d81b18-49e6-45b6-83db-f98d60aca068',
'9a5bd49c-8866-4e84-a524-0e3e7c378dcb',
'7644050a-1d6b-42fd-9f09-e71ae8d0c365',
'9ae0e3ef-c9fc-4eae-87a0-07def554abb5',
'4162a23d-c715-4258-b77e-9df7a4209f70',
'e0e766f2-0624-4828-a24f-0b8ec9ccd44d',
'fbb5f416-a985-4d65-9ddb-d18091e474dc',
'8516a0ef-1d88-4917-824b-5085fe6bbc20',
'b750e5a1-b6ed-4c05-a1f7-4b140595c6c8',
'0eaf572d-96a1-4d09-bd4a-d8f5c41a2b43',
'f8ba6458-9046-4a06-a9ff-8a490039a45c',
'f9385b1e-39e6-4a3b-b835-eeef416e9c51',
'ebe8c71a-98ad-4a0b-bbba-fce1a0457929',
'c59dee40-1750-411c-a4f0-c1cd56f7f4eb',
'88bfe639-387c-4f4d-9fba-7a2b12f4f834',
'564c9b2b-e118-4e01-afd6-85bf875e30ea',
'2370519a-971c-47a6-8221-af8ce2b12b69',
'0a9a8f61-cb5a-4ab9-88ae-cecc0309ab84',
'53c78a70-cfc9-4eb7-9bf0-36758d308ace',
'98d5e0b1-31b2-4542-b364-931a995d4576',
'4ee551cd-0447-4e13-b3fb-286db4ab035c',
'98bea9d0-169b-469b-a334-a58966abf088',
'3573aa5e-36a9-4926-81d0-5951da401501',
'46ef6354-b53c-441e-8f05-165512897ce4',
'685eb43d-8407-49fa-9fbf-3fec4d0ca705'
        )
;

-- check documentation count with new org
select count(*)
from documentation
where is_voided = false
and uuid in (
'3c6c40bd-a99e-4763-8051-168853e08ac4',
'f2cf076b-0139-4896-b25b-b92473393bf0',
'f2cf076b-0139-4896-b25b-b92473393bf0',
'19be156e-f203-43b8-8e71-fd94dde8103b',
'7366e2ff-a8f0-43a3-bafb-46877a83d15a',
'3afc3d5d-a3b2-407b-803a-65478a7001ab',
'3c6c40bd-a99e-4763-8051-168853e08ac4',
'19be156e-f203-43b8-8e71-fd94dde8103b',
'3c6c40bd-a99e-4763-8051-168853e08ac4',
'3c6c40bd-a99e-4763-8051-168853e08ac4',
'3afc3d5d-a3b2-407b-803a-65478a7001ab',
'3afc3d5d-a3b2-407b-803a-65478a7001ab',
'3afc3d5d-a3b2-407b-803a-65478a7001ab',
'3afc3d5d-a3b2-407b-803a-65478a7001ab',
'7366e2ff-a8f0-43a3-bafb-46877a83d15a',
'f2cf076b-0139-4896-b25b-b92473393bf0',
'18a4d4ff-9187-4e63-9552-9b9063ad0bd2',
'3db6fadc-16fa-414a-b297-d29d16c28617',
'3afc3d5d-a3b2-407b-803a-65478a7001ab',
'd57689ba-8312-4d3f-8aa0-d60513293592',
'367d72e2-3da8-41b0-b49c-0f4ba2538889',
'a9c4b50c-2b18-4d5c-b866-537b2a4de666',
'943b74f0-2e52-4cdc-8ea0-b03742a85a1a',
'ff4fc795-9d4c-4c61-be72-d1a1e28054a0',
'b28f8ebd-6803-4b3f-abb8-f9939c79de71',
'e9156f96-bda5-4a1d-8dd7-58a1775c25ee',
'b9f90f43-6d28-4aa2-a7af-f9ee1b19fd19',
'955232f5-6dfc-4cab-a217-121dd86e167c',
'e9782dfd-0c17-479c-bfe6-15706788e16e',
'5cd29d08-056e-4f38-857b-ccb5b7517eba',
'dbd93a79-4d5e-4add-9f94-8cdda67ab519',
'f3d34774-aa09-47c1-8bad-0f28e42e3757',
'7eb856ae-6b57-4696-9850-9765aa901521',
'457c08b0-d5e0-4589-9b18-501001153d55',
'42920e37-b390-4b2b-b094-d1f0c0780c68',
'17c119df-1af4-480e-a472-12ed3f32778d',
'd12f98eb-35e8-4892-a4db-271f2a154fe6',
'4985ab98-429d-45a1-a0e4-903a19f0460b',
'f693cd4f-82d9-4d26-9677-dbe9ff7b8fc3',
'a1b3d273-b76d-4b54-9754-3d9907da669c',
'c2a6664d-25d4-4694-8b0d-cde3b43e547e',
'aa25f259-bea6-4b2b-a19f-7f05ac40de44',
'891f60f4-8002-4232-9d9e-879d49e20d31',
'212c9cd7-95ed-4559-b805-d242641d0876',
'3f7bbc01-7c6d-4678-9889-f666d9ed92a8',
'b2e74f61-3e0a-4610-bfaa-6136f5feb11f',
'a107a7b0-1514-4341-b1e7-bf55ba859343',
'42a39041-1922-4026-ae79-584384d184f0',
'a89f693f-dbb9-41fb-b4e5-3a8858b79329',
'57161fbd-8385-4f17-8c49-e3d1fdb3445b',
'3239dddf-a047-4823-a09a-8ef3c6c81161',
'aaf4809b-7135-4422-9dee-5731cad6f06f',
'792cfdcc-f96c-4277-b771-7122c81cef09',
'c2dbd4eb-9acb-4fc6-93ef-2df549e29800',
'79e41e89-bbea-4e71-b07e-2a537752c6d7',
'b3b86fd0-0f43-43ef-82c5-0238ac8a7d44',
'c87a6f4c-c91a-402c-885c-21af2fece1d0',
'cae8db5c-377c-4b7b-816f-83205bc554c5',
'1cbee933-6c0f-4411-90ea-99336e3c9c31',
'2e7c4a85-6095-434b-97ae-ff32d44d9068',
'644428a8-2e70-4830-9334-b1c83c63a8a0',
'ed360a7f-1b9a-462f-9963-ee0c0d009167',
'35efa5fd-07ba-49a9-985c-e2599376e81a',
'6a68b495-3fad-4683-b81f-29d107bb015a',
'eab99842-2ef5-4aa8-888b-69fc1f1918f1',
'8b868dec-0d58-4e6f-83c4-89603336fa21',
'1849dd31-5f41-4514-901a-bfe6b483ef27',
'625ce863-19bd-4088-b993-84007704ff4c',
'55210282-df3e-4be7-8817-bf65374ffe04',
'99e50efd-9d45-4169-86a8-49a5e8ef6859',
'b29ac80b-340e-419e-be99-557f8668f316',
'81b58be6-9318-40a8-a0f7-386b2781bd74',
'4429520d-cffd-414f-9288-2b7370eba9f2',
'a77f155d-6e22-4f6d-b288-955719ab6371',
'bb8c2112-41d9-440a-a5ea-6fa65e11b150',
'b86e1885-d2a8-4ba1-bc05-ee2262f31532',
'4454aaba-8008-4190-9b5f-c8a6e67d596a',
'9195b6ce-8169-4a5b-a9bf-7d505e5b75c9',
'e9156f96-bda5-4a1d-8dd7-58a1775c25ee',
'955232f5-6dfc-4cab-a217-121dd86e167c',
'5cd29d08-056e-4f38-857b-ccb5b7517eba',
'ff4fc795-9d4c-4c61-be72-d1a1e28054a0',
'367d72e2-3da8-41b0-b49c-0f4ba2538889',
'e9782dfd-0c17-479c-bfe6-15706788e16e',
'943b74f0-2e52-4cdc-8ea0-b03742a85a1a',
'18a4d4ff-9187-4e63-9552-9b9063ad0bd2',
'b28f8ebd-6803-4b3f-abb8-f9939c79de71',
'b9f90f43-6d28-4aa2-a7af-f9ee1b19fd19',
'a9c4b50c-2b18-4d5c-b866-537b2a4de666',
'17c119df-1af4-480e-a472-12ed3f32778d',
'42920e37-b390-4b2b-b094-d1f0c0780c68',
'7eb856ae-6b57-4696-9850-9765aa901521',
'457c08b0-d5e0-4589-9b18-501001153d55',
'dbd93a79-4d5e-4add-9f94-8cdda67ab519',
'f3d34774-aa09-47c1-8bad-0f28e42e3757',
'f693cd4f-82d9-4d26-9677-dbe9ff7b8fc3',
'212c9cd7-95ed-4559-b805-d242641d0876',
'a1b3d273-b76d-4b54-9754-3d9907da669c',
'4985ab98-429d-45a1-a0e4-903a19f0460b',
'aa25f259-bea6-4b2b-a19f-7f05ac40de44',
'891f60f4-8002-4232-9d9e-879d49e20d31',
'c2a6664d-25d4-4694-8b0d-cde3b43e547e',
'd12f98eb-35e8-4892-a4db-271f2a154fe6',
'a89f693f-dbb9-41fb-b4e5-3a8858b79329',
'3f7bbc01-7c6d-4678-9889-f666d9ed92a8',
'a107a7b0-1514-4341-b1e7-bf55ba859343',
'57161fbd-8385-4f17-8c49-e3d1fdb3445b',
'42a39041-1922-4026-ae79-584384d184f0',
'b2e74f61-3e0a-4610-bfaa-6136f5feb11f',
'aaf4809b-7135-4422-9dee-5731cad6f06f',
'3239dddf-a047-4823-a09a-8ef3c6c81161',
'792cfdcc-f96c-4277-b771-7122c81cef09',
'c2dbd4eb-9acb-4fc6-93ef-2df549e29800',
'644428a8-2e70-4830-9334-b1c83c63a8a0',
'cae8db5c-377c-4b7b-816f-83205bc554c5',
'b3b86fd0-0f43-43ef-82c5-0238ac8a7d44',
'79e41e89-bbea-4e71-b07e-2a537752c6d7',
'2e7c4a85-6095-434b-97ae-ff32d44d9068',
'c87a6f4c-c91a-402c-885c-21af2fece1d0',
'1cbee933-6c0f-4411-90ea-99336e3c9c31',
'2b2b053a-41eb-4619-8277-a43cef687f22',
'35efa5fd-07ba-49a9-985c-e2599376e81a',
'ed360a7f-1b9a-462f-9963-ee0c0d009167',
'1849dd31-5f41-4514-901a-bfe6b483ef27',
'eab99842-2ef5-4aa8-888b-69fc1f1918f1',
'6a68b495-3fad-4683-b81f-29d107bb015a',
'81b58be6-9318-40a8-a0f7-386b2781bd74',
'3db6fadc-16fa-414a-b297-d29d16c28617',
'55210282-df3e-4be7-8817-bf65374ffe04',
'625ce863-19bd-4088-b993-84007704ff4c',
'99e50efd-9d45-4169-86a8-49a5e8ef6859',
'b29ac80b-340e-419e-be99-557f8668f316',
'9195b6ce-8169-4a5b-a9bf-7d505e5b75c9',
'bb8c2112-41d9-440a-a5ea-6fa65e11b150',
'4454aaba-8008-4190-9b5f-c8a6e67d596a',
'4429520d-cffd-414f-9288-2b7370eba9f2',
'a77f155d-6e22-4f6d-b288-955719ab6371',
'b86e1885-d2a8-4ba1-bc05-ee2262f31532',
'7366e2ff-a8f0-43a3-bafb-46877a83d15a',
'19be156e-f203-43b8-8e71-fd94dde8103b',
'19be156e-f203-43b8-8e71-fd94dde8103b',
'7366e2ff-a8f0-43a3-bafb-46877a83d15a',
'7366e2ff-a8f0-43a3-bafb-46877a83d15a',
'f2cf076b-0139-4896-b25b-b92473393bf0',
'7366e2ff-a8f0-43a3-bafb-46877a83d15a',
'7366e2ff-a8f0-43a3-bafb-46877a83d15a',
'17c119df-1af4-480e-a472-12ed3f32778d',
'19be156e-f203-43b8-8e71-fd94dde8103b',
'3c6c40bd-a99e-4763-8051-168853e08ac4',
'f2cf076b-0139-4896-b25b-b92473393bf0',
'7366e2ff-a8f0-43a3-bafb-46877a83d15a'
    );

-- if counts are matched then proceed

update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3c6c40bd-a99e-4763-8051-168853e08ac4'),last_modified_date_time = now()  where fe.uuid = '0efafa1f-2573-43a4-9258-eb93283801ca';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'f2cf076b-0139-4896-b25b-b92473393bf0'),last_modified_date_time = now()  where fe.uuid = '251117d6-e868-4c64-8d4f-e136dbf0b53a';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'f2cf076b-0139-4896-b25b-b92473393bf0'),last_modified_date_time = now()  where fe.uuid = '1577faea-399d-4342-a423-87406aa9f7da';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '19be156e-f203-43b8-8e71-fd94dde8103b'),last_modified_date_time = now()  where fe.uuid = '259735ef-5fb1-4b91-b4bb-03e7976cb24d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '7366e2ff-a8f0-43a3-bafb-46877a83d15a'),last_modified_date_time = now()  where fe.uuid = '3dd34395-4757-4da9-8513-0deeff432421';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3afc3d5d-a3b2-407b-803a-65478a7001ab'),last_modified_date_time = now()  where fe.uuid = '5ac00cda-b1c2-4b29-bd11-8eb10a70e7ac';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3c6c40bd-a99e-4763-8051-168853e08ac4'),last_modified_date_time = now()  where fe.uuid = '3b920f1b-a4b9-46bf-a589-65c90831976d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '19be156e-f203-43b8-8e71-fd94dde8103b'),last_modified_date_time = now()  where fe.uuid = 'b1e8960a-9fd7-4d68-8c8b-ec8f863dcaef';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3c6c40bd-a99e-4763-8051-168853e08ac4'),last_modified_date_time = now()  where fe.uuid = 'dda4709f-81e7-4ee4-b6c7-e38d734b2802';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3c6c40bd-a99e-4763-8051-168853e08ac4'),last_modified_date_time = now()  where fe.uuid = '91d468bf-0265-4e62-8be7-8d5e3fa4bd53';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3afc3d5d-a3b2-407b-803a-65478a7001ab'),last_modified_date_time = now()  where fe.uuid = '9f598885-c2eb-49ed-9dce-9f6e9242c0e5';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3afc3d5d-a3b2-407b-803a-65478a7001ab'),last_modified_date_time = now()  where fe.uuid = '5189d402-b11b-4bac-9b54-bd5bb04ec83e';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3afc3d5d-a3b2-407b-803a-65478a7001ab'),last_modified_date_time = now()  where fe.uuid = '88ed20e2-8f13-4abd-b95d-f6bded448107';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3afc3d5d-a3b2-407b-803a-65478a7001ab'),last_modified_date_time = now()  where fe.uuid = 'aa408a47-f11c-46ef-a4a7-85536a2cea66';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '7366e2ff-a8f0-43a3-bafb-46877a83d15a'),last_modified_date_time = now()  where fe.uuid = '190452ed-d325-48d7-acb1-702dd1f8c775';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'f2cf076b-0139-4896-b25b-b92473393bf0'),last_modified_date_time = now()  where fe.uuid = '41ffdd1d-a903-43c7-bb23-0930ffb771cb';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '18a4d4ff-9187-4e63-9552-9b9063ad0bd2'),last_modified_date_time = now()  where fe.uuid = 'e9bed789-4d34-47d8-bea9-e29e7803d1a2';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3db6fadc-16fa-414a-b297-d29d16c28617'),last_modified_date_time = now()  where fe.uuid = 'ae24fff1-6517-43c0-8fb1-f8bf8e63cbd7';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3afc3d5d-a3b2-407b-803a-65478a7001ab'),last_modified_date_time = now()  where fe.uuid = 'c0649d3d-0149-4617-b7e3-6714bf14d542';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'd57689ba-8312-4d3f-8aa0-d60513293592'),last_modified_date_time = now()  where fe.uuid = '42574152-01d8-416c-8353-1e89d979f8e7';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '367d72e2-3da8-41b0-b49c-0f4ba2538889'),last_modified_date_time = now()  where fe.uuid = '60ad9ffb-6973-441b-b14d-781bdbbfc5fe';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'a9c4b50c-2b18-4d5c-b866-537b2a4de666'),last_modified_date_time = now()  where fe.uuid = '6eeacf28-54d4-480a-8ec4-f84bf19417dd';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '943b74f0-2e52-4cdc-8ea0-b03742a85a1a'),last_modified_date_time = now()  where fe.uuid = '5e93acbd-04ed-42c2-bcc7-bb113109eae5';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'ff4fc795-9d4c-4c61-be72-d1a1e28054a0'),last_modified_date_time = now()  where fe.uuid = '4371c7fa-675f-43ba-8d1c-e7924b337d92';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b28f8ebd-6803-4b3f-abb8-f9939c79de71'),last_modified_date_time = now()  where fe.uuid = 'ba8bd7fd-4dd9-40ee-b955-2d2471688804';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'e9156f96-bda5-4a1d-8dd7-58a1775c25ee'),last_modified_date_time = now()  where fe.uuid = 'dd6a8858-209b-419c-a792-da768a002ac5';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b9f90f43-6d28-4aa2-a7af-f9ee1b19fd19'),last_modified_date_time = now()  where fe.uuid = '87cc30d8-967c-4ae5-8ace-7c6c8eab5b27';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '955232f5-6dfc-4cab-a217-121dd86e167c'),last_modified_date_time = now()  where fe.uuid = 'ecec7a86-3e71-4145-8fc5-62b5687fc7e7';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'e9782dfd-0c17-479c-bfe6-15706788e16e'),last_modified_date_time = now()  where fe.uuid = 'd8f7a58b-59cc-44b8-9b23-0c637948d72a';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '5cd29d08-056e-4f38-857b-ccb5b7517eba'),last_modified_date_time = now()  where fe.uuid = 'a3ac3fbd-88d8-4eb6-86e4-e3d9bfab0a75';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'dbd93a79-4d5e-4add-9f94-8cdda67ab519'),last_modified_date_time = now()  where fe.uuid = 'caedbf8d-a68a-4688-8dbc-cf715b22b832';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'f3d34774-aa09-47c1-8bad-0f28e42e3757'),last_modified_date_time = now()  where fe.uuid = '6e06fe8d-dbbe-4756-aaf3-6d0bb1e5229f';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '7eb856ae-6b57-4696-9850-9765aa901521'),last_modified_date_time = now()  where fe.uuid = '7d3bbe39-ff8c-48bd-b0a8-c1542cd0a48f';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '457c08b0-d5e0-4589-9b18-501001153d55'),last_modified_date_time = now()  where fe.uuid = '8645cbf3-7c62-4059-b4af-871ca9f45e47';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '42920e37-b390-4b2b-b094-d1f0c0780c68'),last_modified_date_time = now()  where fe.uuid = '18da69cc-0d2a-48ab-8de6-8d851a9ee992';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '17c119df-1af4-480e-a472-12ed3f32778d'),last_modified_date_time = now()  where fe.uuid = '046814bb-aff0-4039-a482-45685e7d7d20';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'd12f98eb-35e8-4892-a4db-271f2a154fe6'),last_modified_date_time = now()  where fe.uuid = '1b2f2d93-16a2-429b-8d22-d8cc06655747';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '4985ab98-429d-45a1-a0e4-903a19f0460b'),last_modified_date_time = now()  where fe.uuid = '75f3ca89-5f42-4e17-bdcf-0f855e5fdb46';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'f693cd4f-82d9-4d26-9677-dbe9ff7b8fc3'),last_modified_date_time = now()  where fe.uuid = 'ab8ad7d5-bfcd-4298-b1d2-9347294f969d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'a1b3d273-b76d-4b54-9754-3d9907da669c'),last_modified_date_time = now()  where fe.uuid = '2efe5ab4-ca0b-4bd3-9633-9c7a901e0464';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'c2a6664d-25d4-4694-8b0d-cde3b43e547e'),last_modified_date_time = now()  where fe.uuid = 'a6093259-2a33-42a7-8f88-156b0e06aa0b';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'aa25f259-bea6-4b2b-a19f-7f05ac40de44'),last_modified_date_time = now()  where fe.uuid = 'b1137da2-773f-465f-ac1a-56cdf1c3c780';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '891f60f4-8002-4232-9d9e-879d49e20d31'),last_modified_date_time = now()  where fe.uuid = 'ada57c50-51cd-4a0d-be38-0aa4f25f428d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '212c9cd7-95ed-4559-b805-d242641d0876'),last_modified_date_time = now()  where fe.uuid = '6fcb7f8a-9a5a-473f-b197-981789f73df2';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3f7bbc01-7c6d-4678-9889-f666d9ed92a8'),last_modified_date_time = now()  where fe.uuid = '326d336b-a606-4fb1-9918-d530fabadb77';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b2e74f61-3e0a-4610-bfaa-6136f5feb11f'),last_modified_date_time = now()  where fe.uuid = '8b21a44d-259e-444f-88df-1e1a99432bd2';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'a107a7b0-1514-4341-b1e7-bf55ba859343'),last_modified_date_time = now()  where fe.uuid = '21ef70df-1955-463c-a332-d5cf3139bf4c';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '42a39041-1922-4026-ae79-584384d184f0'),last_modified_date_time = now()  where fe.uuid = 'cfe82731-b3f8-4954-9d53-0fa18eeabac9';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'a89f693f-dbb9-41fb-b4e5-3a8858b79329'),last_modified_date_time = now()  where fe.uuid = '656b0313-bd95-4c0d-b82e-d5fa9f7e9bcc';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '57161fbd-8385-4f17-8c49-e3d1fdb3445b'),last_modified_date_time = now()  where fe.uuid = '4fd5209a-539c-4335-8219-cb05b8bfe5de';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3239dddf-a047-4823-a09a-8ef3c6c81161'),last_modified_date_time = now()  where fe.uuid = 'a8d3111d-d158-4cc9-a84a-2f272fbeb3d7';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'aaf4809b-7135-4422-9dee-5731cad6f06f'),last_modified_date_time = now()  where fe.uuid = '12f9d76f-215e-4c1e-8f69-bbb3a28efcba';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '792cfdcc-f96c-4277-b771-7122c81cef09'),last_modified_date_time = now()  where fe.uuid = 'f0c06526-2943-4d18-a08f-2469c4745c79';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'c2dbd4eb-9acb-4fc6-93ef-2df549e29800'),last_modified_date_time = now()  where fe.uuid = 'b00a09ae-2486-4df4-b0ae-075c837ceec6';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '79e41e89-bbea-4e71-b07e-2a537752c6d7'),last_modified_date_time = now()  where fe.uuid = 'e39762bb-20ab-42e8-8f20-5689b7c9be8d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b3b86fd0-0f43-43ef-82c5-0238ac8a7d44'),last_modified_date_time = now()  where fe.uuid = '880f3a09-5d54-481f-a216-37d859c08a5b';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'c87a6f4c-c91a-402c-885c-21af2fece1d0'),last_modified_date_time = now()  where fe.uuid = '8805bc93-b8cd-4a6d-b7c8-c211759c497b';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'cae8db5c-377c-4b7b-816f-83205bc554c5'),last_modified_date_time = now()  where fe.uuid = '33656566-a2a3-429a-b917-59928813e4bd';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '1cbee933-6c0f-4411-90ea-99336e3c9c31'),last_modified_date_time = now()  where fe.uuid = '7387e981-d395-4bc6-9ed3-ab4454dd0c5d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '2e7c4a85-6095-434b-97ae-ff32d44d9068'),last_modified_date_time = now()  where fe.uuid = 'e6d36a65-9a13-4c4a-b18e-bb4be5ea762f';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '644428a8-2e70-4830-9334-b1c83c63a8a0'),last_modified_date_time = now()  where fe.uuid = '2c1256f7-2b88-4f3e-b497-fc4b7ca6e126';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'ed360a7f-1b9a-462f-9963-ee0c0d009167'),last_modified_date_time = now()  where fe.uuid = '93571898-a2c4-4827-be7d-4e6a6a1b2b55';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '35efa5fd-07ba-49a9-985c-e2599376e81a'),last_modified_date_time = now()  where fe.uuid = '348b67a0-4547-417f-9069-ea99df6feb5c';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '6a68b495-3fad-4683-b81f-29d107bb015a'),last_modified_date_time = now()  where fe.uuid = '763f6f24-da31-4c68-a3b5-9d869e67b1cc';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'eab99842-2ef5-4aa8-888b-69fc1f1918f1'),last_modified_date_time = now()  where fe.uuid = 'c3f19a2e-c795-4ffe-a276-0e5e1e63e332';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '8b868dec-0d58-4e6f-83c4-89603336fa21'),last_modified_date_time = now()  where fe.uuid = '41f3007f-cf3c-43ff-a8c1-6e56a821c9fc';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '1849dd31-5f41-4514-901a-bfe6b483ef27'),last_modified_date_time = now()  where fe.uuid = 'fb41c1c1-a912-45ac-9b8f-71eb0d5a5c13';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '625ce863-19bd-4088-b993-84007704ff4c'),last_modified_date_time = now()  where fe.uuid = 'db839db4-b322-47a0-bd44-85864b8eef56';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '55210282-df3e-4be7-8817-bf65374ffe04'),last_modified_date_time = now()  where fe.uuid = '3b5f20e2-98cd-4909-a6ef-02028b1b4fa6';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '99e50efd-9d45-4169-86a8-49a5e8ef6859'),last_modified_date_time = now()  where fe.uuid = 'e803c8c4-d60d-4db1-b3f8-d8950dedba3d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b29ac80b-340e-419e-be99-557f8668f316'),last_modified_date_time = now()  where fe.uuid = '8b39ad9b-2e81-4bcb-ab33-91ff29cdd2cf';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '81b58be6-9318-40a8-a0f7-386b2781bd74'),last_modified_date_time = now()  where fe.uuid = '67c1e949-7d53-471c-b912-c0d09f1b9f8e';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '4429520d-cffd-414f-9288-2b7370eba9f2'),last_modified_date_time = now()  where fe.uuid = 'cf9e774e-102c-4e62-85e3-d78b280bbe4b';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'a77f155d-6e22-4f6d-b288-955719ab6371'),last_modified_date_time = now()  where fe.uuid = '0a377f8f-4858-47fa-9bab-e498b215acb4';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'bb8c2112-41d9-440a-a5ea-6fa65e11b150'),last_modified_date_time = now()  where fe.uuid = '5e872cce-a1dd-4114-9eaf-50bacf71d9af';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b86e1885-d2a8-4ba1-bc05-ee2262f31532'),last_modified_date_time = now()  where fe.uuid = '305d26d3-5cbc-4cf1-b5f0-201aa4e1e671';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '4454aaba-8008-4190-9b5f-c8a6e67d596a'),last_modified_date_time = now()  where fe.uuid = '4bdf5c3b-24fc-45e5-8858-5738b86f6455';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '9195b6ce-8169-4a5b-a9bf-7d505e5b75c9'),last_modified_date_time = now()  where fe.uuid = 'da68ca31-dc40-49e2-af11-71c30dec7d02';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'e9156f96-bda5-4a1d-8dd7-58a1775c25ee'),last_modified_date_time = now()  where fe.uuid = '30acd46c-16b5-4ccd-9f42-f8b1c893fe63';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '955232f5-6dfc-4cab-a217-121dd86e167c'),last_modified_date_time = now()  where fe.uuid = 'bb44be2b-f86d-43b8-b85a-8ffe1f35691b';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '5cd29d08-056e-4f38-857b-ccb5b7517eba'),last_modified_date_time = now()  where fe.uuid = 'a6b2f522-d353-48ad-bcc6-a7a1f083bdef';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'ff4fc795-9d4c-4c61-be72-d1a1e28054a0'),last_modified_date_time = now()  where fe.uuid = 'd7c9890d-1d59-404f-8ede-cb515813609a';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '367d72e2-3da8-41b0-b49c-0f4ba2538889'),last_modified_date_time = now()  where fe.uuid = '29f792aa-0991-48f3-a6df-5c39a99806e1';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'e9782dfd-0c17-479c-bfe6-15706788e16e'),last_modified_date_time = now()  where fe.uuid = 'dc8e44c7-fbd2-4c7a-b503-bde72a090ee4';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '943b74f0-2e52-4cdc-8ea0-b03742a85a1a'),last_modified_date_time = now()  where fe.uuid = 'dcb872e9-11ce-41e0-bfe2-90d0d27f8ca0';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '18a4d4ff-9187-4e63-9552-9b9063ad0bd2'),last_modified_date_time = now()  where fe.uuid = 'd7c423c9-e993-4e8b-a631-9146f822193d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b28f8ebd-6803-4b3f-abb8-f9939c79de71'),last_modified_date_time = now()  where fe.uuid = '2808fc8a-5eb2-43f3-95e7-d57839c887a9';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b9f90f43-6d28-4aa2-a7af-f9ee1b19fd19'),last_modified_date_time = now()  where fe.uuid = 'e6d6ea6a-943c-4d44-92cd-71ad3184f683';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'a9c4b50c-2b18-4d5c-b866-537b2a4de666'),last_modified_date_time = now()  where fe.uuid = 'd58ba437-77ff-4b82-a4c6-cddff643a2b1';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '17c119df-1af4-480e-a472-12ed3f32778d'),last_modified_date_time = now()  where fe.uuid = 'fbb7240f-0138-45e2-bf57-13d70618119a';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '42920e37-b390-4b2b-b094-d1f0c0780c68'),last_modified_date_time = now()  where fe.uuid = '7c227cda-8c51-4d11-9574-387a812e2af7';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '7eb856ae-6b57-4696-9850-9765aa901521'),last_modified_date_time = now()  where fe.uuid = '7b01b524-e86f-40c4-857e-b6a934ed125a';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '457c08b0-d5e0-4589-9b18-501001153d55'),last_modified_date_time = now()  where fe.uuid = 'a1fd50a8-923b-4d64-83ba-9b19f61a6eac';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'dbd93a79-4d5e-4add-9f94-8cdda67ab519'),last_modified_date_time = now()  where fe.uuid = 'a86238cf-8641-4920-87ee-6ea056b0874c';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'f3d34774-aa09-47c1-8bad-0f28e42e3757'),last_modified_date_time = now()  where fe.uuid = '4053a58e-c9b1-447e-a96b-2637dcc12bb6';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'f693cd4f-82d9-4d26-9677-dbe9ff7b8fc3'),last_modified_date_time = now()  where fe.uuid = '4891bd73-99f1-4d40-80b3-a30bb646455b';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '212c9cd7-95ed-4559-b805-d242641d0876'),last_modified_date_time = now()  where fe.uuid = '2c8e3fdf-0983-443a-ae75-041a18e79e80';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'a1b3d273-b76d-4b54-9754-3d9907da669c'),last_modified_date_time = now()  where fe.uuid = '1d2fffa3-d0ff-4135-ac16-7d2a3dea77da';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '4985ab98-429d-45a1-a0e4-903a19f0460b'),last_modified_date_time = now()  where fe.uuid = 'ddecfaee-4f1a-40bb-9652-6867c8b460ac';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'aa25f259-bea6-4b2b-a19f-7f05ac40de44'),last_modified_date_time = now()  where fe.uuid = 'c1ae7cf3-364b-4019-a30c-ce01ca41f968';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '891f60f4-8002-4232-9d9e-879d49e20d31'),last_modified_date_time = now()  where fe.uuid = '46d9b38f-b71a-468d-9ff7-1547b1a40a5e';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'c2a6664d-25d4-4694-8b0d-cde3b43e547e'),last_modified_date_time = now()  where fe.uuid = '9c5f986b-ebf8-4e1a-920f-ff09ec27d66f';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'd12f98eb-35e8-4892-a4db-271f2a154fe6'),last_modified_date_time = now()  where fe.uuid = 'a5f761bf-5f3e-4767-b80f-b0a672db97a2';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'a89f693f-dbb9-41fb-b4e5-3a8858b79329'),last_modified_date_time = now()  where fe.uuid = 'bec4768a-60c3-4791-8569-d0da54c8d873';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3f7bbc01-7c6d-4678-9889-f666d9ed92a8'),last_modified_date_time = now()  where fe.uuid = '632c54ce-f4d5-4614-8ce4-6a6976eee728';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'a107a7b0-1514-4341-b1e7-bf55ba859343'),last_modified_date_time = now()  where fe.uuid = '4c552521-ad5e-44a8-8a98-a61d6948efe2';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '57161fbd-8385-4f17-8c49-e3d1fdb3445b'),last_modified_date_time = now()  where fe.uuid = 'b1d9f5e0-bff8-4e32-a449-67fcdf263b45';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '42a39041-1922-4026-ae79-584384d184f0'),last_modified_date_time = now()  where fe.uuid = 'ca8da623-0b74-4b46-854a-496e190dd474';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b2e74f61-3e0a-4610-bfaa-6136f5feb11f'),last_modified_date_time = now()  where fe.uuid = '010d2de3-c33a-4a9b-83f5-cea55d1e286a';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'aaf4809b-7135-4422-9dee-5731cad6f06f'),last_modified_date_time = now()  where fe.uuid = 'ee5a6b53-9580-40a0-97d8-b238abe72dda';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3239dddf-a047-4823-a09a-8ef3c6c81161'),last_modified_date_time = now()  where fe.uuid = 'fcbf789e-5081-414b-9efd-67195f6227fe';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '792cfdcc-f96c-4277-b771-7122c81cef09'),last_modified_date_time = now()  where fe.uuid = '91ff0f6d-242e-4a1c-be1c-76c211aeb157';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'c2dbd4eb-9acb-4fc6-93ef-2df549e29800'),last_modified_date_time = now()  where fe.uuid = '9ac056f9-01f4-4af1-9574-a35c7089288a';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '644428a8-2e70-4830-9334-b1c83c63a8a0'),last_modified_date_time = now()  where fe.uuid = 'da7dc302-a549-42b5-8fdf-bed35ba4a62c';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'cae8db5c-377c-4b7b-816f-83205bc554c5'),last_modified_date_time = now()  where fe.uuid = '4cb379c3-9e06-4454-bc17-5bceaf4aa835';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b3b86fd0-0f43-43ef-82c5-0238ac8a7d44'),last_modified_date_time = now()  where fe.uuid = '302cb29c-ce5e-4dc1-9a9b-4c497e38fd5b';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '79e41e89-bbea-4e71-b07e-2a537752c6d7'),last_modified_date_time = now()  where fe.uuid = 'ba6b47d3-4d0a-44a0-996b-905585cdfbdc';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '2e7c4a85-6095-434b-97ae-ff32d44d9068'),last_modified_date_time = now()  where fe.uuid = 'd2bcc8a7-5ada-415e-940c-a8d625efa4ad';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'c87a6f4c-c91a-402c-885c-21af2fece1d0'),last_modified_date_time = now()  where fe.uuid = '1be43ba2-8d6b-4dcc-a0e0-70a3d25a9903';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '1cbee933-6c0f-4411-90ea-99336e3c9c31'),last_modified_date_time = now()  where fe.uuid = '6b911b28-a145-4e80-98b1-439e3d08eb95';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '2b2b053a-41eb-4619-8277-a43cef687f22'),last_modified_date_time = now()  where fe.uuid = 'a864d4b4-138b-4b7f-9ad3-76a03a9b9e6d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '35efa5fd-07ba-49a9-985c-e2599376e81a'),last_modified_date_time = now()  where fe.uuid = '45e7f2e0-09e7-4e77-854c-f1c40e0eb83c';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'ed360a7f-1b9a-462f-9963-ee0c0d009167'),last_modified_date_time = now()  where fe.uuid = '282cecc4-97d2-4adb-a010-6459d672802d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '1849dd31-5f41-4514-901a-bfe6b483ef27'),last_modified_date_time = now()  where fe.uuid = 'e6b29061-123b-4e43-8d35-220adc4ff3ac';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'eab99842-2ef5-4aa8-888b-69fc1f1918f1'),last_modified_date_time = now()  where fe.uuid = 'aac6e18b-f1b7-42e5-8618-9703f1b87562';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '6a68b495-3fad-4683-b81f-29d107bb015a'),last_modified_date_time = now()  where fe.uuid = '9d340148-ed78-41e8-a161-30fba301674e';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '81b58be6-9318-40a8-a0f7-386b2781bd74'),last_modified_date_time = now()  where fe.uuid = '45d81b18-49e6-45b6-83db-f98d60aca068';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3db6fadc-16fa-414a-b297-d29d16c28617'),last_modified_date_time = now()  where fe.uuid = '9a5bd49c-8866-4e84-a524-0e3e7c378dcb';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '55210282-df3e-4be7-8817-bf65374ffe04'),last_modified_date_time = now()  where fe.uuid = '7644050a-1d6b-42fd-9f09-e71ae8d0c365';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '625ce863-19bd-4088-b993-84007704ff4c'),last_modified_date_time = now()  where fe.uuid = '9ae0e3ef-c9fc-4eae-87a0-07def554abb5';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '99e50efd-9d45-4169-86a8-49a5e8ef6859'),last_modified_date_time = now()  where fe.uuid = '4162a23d-c715-4258-b77e-9df7a4209f70';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b29ac80b-340e-419e-be99-557f8668f316'),last_modified_date_time = now()  where fe.uuid = 'e0e766f2-0624-4828-a24f-0b8ec9ccd44d';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '9195b6ce-8169-4a5b-a9bf-7d505e5b75c9'),last_modified_date_time = now()  where fe.uuid = 'fbb5f416-a985-4d65-9ddb-d18091e474dc';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'bb8c2112-41d9-440a-a5ea-6fa65e11b150'),last_modified_date_time = now()  where fe.uuid = '8516a0ef-1d88-4917-824b-5085fe6bbc20';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '4454aaba-8008-4190-9b5f-c8a6e67d596a'),last_modified_date_time = now()  where fe.uuid = 'b750e5a1-b6ed-4c05-a1f7-4b140595c6c8';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '4429520d-cffd-414f-9288-2b7370eba9f2'),last_modified_date_time = now()  where fe.uuid = '0eaf572d-96a1-4d09-bd4a-d8f5c41a2b43';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'a77f155d-6e22-4f6d-b288-955719ab6371'),last_modified_date_time = now()  where fe.uuid = 'f8ba6458-9046-4a06-a9ff-8a490039a45c';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'b86e1885-d2a8-4ba1-bc05-ee2262f31532'),last_modified_date_time = now()  where fe.uuid = 'f9385b1e-39e6-4a3b-b835-eeef416e9c51';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '7366e2ff-a8f0-43a3-bafb-46877a83d15a'),last_modified_date_time = now()  where fe.uuid = 'ebe8c71a-98ad-4a0b-bbba-fce1a0457929';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '19be156e-f203-43b8-8e71-fd94dde8103b'),last_modified_date_time = now()  where fe.uuid = 'c59dee40-1750-411c-a4f0-c1cd56f7f4eb';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '19be156e-f203-43b8-8e71-fd94dde8103b'),last_modified_date_time = now()  where fe.uuid = '88bfe639-387c-4f4d-9fba-7a2b12f4f834';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '7366e2ff-a8f0-43a3-bafb-46877a83d15a'),last_modified_date_time = now()  where fe.uuid = '564c9b2b-e118-4e01-afd6-85bf875e30ea';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '7366e2ff-a8f0-43a3-bafb-46877a83d15a'),last_modified_date_time = now()  where fe.uuid = '2370519a-971c-47a6-8221-af8ce2b12b69';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'f2cf076b-0139-4896-b25b-b92473393bf0'),last_modified_date_time = now()  where fe.uuid = '0a9a8f61-cb5a-4ab9-88ae-cecc0309ab84';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '7366e2ff-a8f0-43a3-bafb-46877a83d15a'),last_modified_date_time = now()  where fe.uuid = '53c78a70-cfc9-4eb7-9bf0-36758d308ace';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '7366e2ff-a8f0-43a3-bafb-46877a83d15a'),last_modified_date_time = now()  where fe.uuid = '98d5e0b1-31b2-4542-b364-931a995d4576';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '17c119df-1af4-480e-a472-12ed3f32778d'),last_modified_date_time = now()  where fe.uuid = '4ee551cd-0447-4e13-b3fb-286db4ab035c';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '19be156e-f203-43b8-8e71-fd94dde8103b'),last_modified_date_time = now()  where fe.uuid = '98bea9d0-169b-469b-a334-a58966abf088';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '3c6c40bd-a99e-4763-8051-168853e08ac4'),last_modified_date_time = now()  where fe.uuid = '3573aa5e-36a9-4926-81d0-5951da401501';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = 'f2cf076b-0139-4896-b25b-b92473393bf0'),last_modified_date_time = now()  where fe.uuid = '46ef6354-b53c-441e-8f05-165512897ce4';
update form_element fe set documentation_id = (select id from documentation d where d.uuid = '7366e2ff-a8f0-43a3-bafb-46877a83d15a'),last_modified_date_time = now()  where fe.uuid = '685eb43d-8407-49fa-9fbf-3fec4d0ca705';


--verification query
select fe.id,fe.documentation_id,fe.uuid,d.id,d.uuid
from form_element fe
         join documentation d on fe.documentation_id = d.id
where fe.is_voided = false
  and d.is_voided = false
  and documentation_id notnull ;
