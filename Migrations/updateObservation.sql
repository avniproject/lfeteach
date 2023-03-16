Requirement------------------

"In Observation Segment 1 - Snapshot 1, 2, 3 - Time on Learning - 0.1 and 0.2 - All three snapshots to have 0.1 and 0.2 as mandatory. Since this was not done before, for merging please take steps as per the condition given below - 
    a. If 0.1 is marked as No - Please enter N/A as the input for 0.2
    b. If 0.1 is left blank but 0.2 is either L/M/H - Please mark 0.1 as Yes
    c. If 0.1 is marked Yes but 0.2 is blank - Please mark 0.2 as N/A
    d. If 0.1 and 0.2 both are blank - Please bring the counts of this case to our notice so that we can decide what has to be done.


------------

set role teachap;

update encounter
set observations           = jsonb_set(observations, '{e80db93c-b204-4f28-842c-1b7450631152}',
                                       '"7fcfd8ea-f683-485f-ac40-ee8c303faaef"'),
    last_modified_date_time=now(),
    last_modified_by_id=(select id from users where username = 'sachink@teachap')
where observations ->> '746a1a83-f134-4896-be61-5eadd579e50f' notnull
  and observations ->> 'e80db93c-b204-4f28-842c-1b7450631152' isnull;
  
  26 rows updated 
  
49930
30488
31046
62007
62399
31545
35163
32393
34410
38281
39570
42127
43421
47606
39794
51546
52159
56305
57500
58310
58788
61555
64937
66936
67836
39112





-----------------------------------------------------
update encounter
set observations           = jsonb_set(observations, '{746a1a83-f134-4896-be61-5eadd579e50f}',
                                       '"a2e96c99-dcbf-49c2-8e2b-5955e504eda5"'),
    last_modified_date_time=now(),
    last_modified_by_id=(select id from users where username = 'sachink@teachap')
where observations ->> '746a1a83-f134-4896-be61-5eadd579e50f' isnull
  and observations ->> 'e80db93c-b204-4f28-842c-1b7450631152' ='7fcfd8ea-f683-485f-ac40-ee8c303faaef';
  
  115 rows affected 
  
  
  
37340
31725
29868
30519
29997
30028
61854
61900
62167
68757
34793
31415
31646
39777
31712
33029
36653
32040
32053
32196
32278
32441
35199
35367
32890
32896
37129
33170
33284
39976
35786
36054
37097
37346
37361
41590
37711
40505
38395
38630
38898
38849
40831
40886
49154
42240
42083
42344
42618
42668
48454
47355
43061
43357
43364
44472
44642
44761
44822
48643
44905
48697
48836
48127
48958
46078
46298
49532
55829
57143
50535
51402
52010
52083
56290
53174
56727
53778
63505
54048
54250
54790
57788
57850
68882
59515
69224
37657
53723
59921
60460
69283
69317
70795
65096
67025
69420
51364
54201
65154
64970
65419
65433
65726
65860
65952
66440
66533
66678
67123
66884
68192
68415
34975
64325







