set role teachap;
update individual set is_voided=true,
                      last_modified_date_time=current_timestamp + ((id % 4000) * interval '1 millisecond'),
                      last_modified_by_id=(select id from users where username = 'vedantr@teachap')
 where id in (

             107231,
             70385,
             110849,
             110861,
             70436,
             70433,
             70432,
             112006,
             30600,
             30599,
             30594,
             107856,
             30602,
             108146,
             85136,
             70542,
             107396,
             70535,
             107395,
             70530,
             70538,
             107397,
             70536,
             70522,
             70524,
             70539,
             70532,
             70519,
             70521,
             108304,
             108305,
             108306,
             108211,
             107900,
             108216,
             108212,
             108213,
             108218,
             108214,
             108215,
             107901,
             107390,
             107438,
             70745,
             30735,
             85355,
             107487,
             107492,
             85357,
             85358,
             85359,
             30749,
             85361,
             30764,
             85387,
             70831,
             70840,
             70833,
             70834,
             70838,
             70846,
             70844,
             70843,
             70837,
             70873,
             70855,
             70896,
             70900,
             70894,
             112118,
             112253,
             112317,
             30843,
             30839,
             30840,
             30844,
             30838,
             111887,
             111897,
             111898,
             111920,
             111929,
             112039,
             112031,
             71074,
             71104,
             106733,
             71177,
             45241,
             45245,
             45255,
             71694,
             71745,
             31180,
             109871,
             111053,
             111486,
             31389,
             31390,
             111378,
             31424,
             31425,
             31417,
             31421,
             72334,
             86616,
             86727,
             86760,
             86777,
             86778,
             86779,
             86781,
             86783,
             86785,
             86787,
             31562,
             31557,
             31565,
             31567,
             31610,
             109883,
             86860,
             86866,
             31692,
             86880,
             31711,
             31715,
             31713,
             31755,
             72941,
             72934,
             72942,
             72936,
             86961,
             86959,
             86976,
             86977,
             86966,
             86969,
             108405,
             86979,
             87000,
             87008,
             73037,
             73036,
             73028,
             73033,
             73032,
             73027,
             73038,
             73039,
             73026,
             73035,
             73029,
             73170,
             108764,
             31924,
             31928,
             31925,
             87239,
             31982,
             87394,
             73583,
             111614,
             73677,
             73823,
             111467,
             32061,
             32062,
             32060,
             32063,
             73836,
             73841,
             73858,
             73854,
             73853,
             73856,
             73881,
             73872,
             32093,
             73922,
             73923,
             73921,
             73960,
             73959,
             73958,
             73951,
             73954,
             73953,
             73952,
             73955,
             73957,
             87816,
             87861,
             74097,
             74096,
             74099,
             74093,
             74091,
             74098,
             74095,
             74094,
             74108,
             74102,
             74106,
             74105,
             74100,
             74101,
             74109,
             74126,
             74119,
             74122,
             74127,
             74125,
             32234,
             88120,
             88121,
             88122,
             88123,
             88136,
             88138,
             32286,
             88149,
             74359,
             32301,
             32352,
             111660,
             111990,
             112315,
             112316,
             32351,
             110828,
             111086,
             32353,
             111247,
             111248,
             74527,
             107798,
             107858,
             88531,
             32386,
             32398,
             32401,
             32397,
             32400,
             32387,
             32391,
             32394,
             32392,
             32390,
             32404,
             32402,
             32396,
             32389,
             32393,
             32385,
             32395,
             46466,
             46465,
             46471,
             46472,
             46474,
             88560,
             74623,
             46522,
             111150,
             46523,
             111151,
             74674,
             74703,
             74741,
             74740,
             74745,
             74731,
             74732,
             74738,
             74742,
             74729,
             74737,
             74744,
             74736,
             74739,
             74733,
             74727,
             74728,
             46583,
             88639,
             88640,
             111958,
             74771,
             74769,
             74772,
             74770,
             74778,
             74776,
             74773,
             74779,
             111956,
             111959,
             88643,
             88645,
             88646,
             88653,
             88651,
             88654,
             74794,
             74790,
             74795,
             74786,
             74796,
             74793,
             74803,
             74782,
             74805,
             74788,
             74784,
             74800,
             74797,
             74802,
             74798,
             74783,
             74804,
             74799,
             74780,
             88656,
             88657,
             32498,
             46617,
             46618,
             74833,
             108334,
             74836,
             74837,
             74835,
             46623,
             74841,
             74848,
             74876,
             88754,
             30442,
             88764,
             88763,
             88765,
             88767,
             88768,
             88766,
             88770,
             88771,
             88772,
             88774,
             88794,
             74991,
             75001,
             88847,
             111371,
             111121,
             88849,
             107172,
             88855,
             107147,
             88858,
             88862,
             107174,
             88861,
             88864,
             88863,
             108316,
             75043,
             75044,
             75041,
             75037,
             75038,
             107144,
             107173,
             88865,
             107146,
             88866,
             107145,
             88867,
             88943,
             88942,
             88941,
             46682,
             46711,
             111911,
             111934,
             46720,
             112239,
             75268,
             89085,
             89091,
             110816,
             110817,
             75331,
             75328,
             75329,
             75330,
             75332,
             107287,
             107202,
             75336,
             75368,
             75376,
             75372,
             111770,
             112076,
             46832,
             46833,
             107359,
             46834,
             107358,
             46944,
             32803,
             89238,
             89267,
             46973,
             46974,
             111927,
             112034,
             46993,
             46998,
             89390,
             89488,
             75951,
             75948,
             75950,
             75949,
             75952,
             75943,
             75954,
             75944,
             75953,
             89630,
             89649,
             76306,
             89750,
             76520,
             76515,
             76517,
             76518,
             111935,
             76529,
             89991,
             76644,
             90104,
             106553,
             57370,
             57369,
             57372,
             57368,
             57395,
             107941,
             76689,
             107942,
             76690,
             76694,
             90394,
             90395,
             106978,
             90401,
             106979,
             106982,
             90402,
             106981,
             76744,
             76773,
             57420,
             57466,
             57583,
             57580,
             57585,
             57581,
             57579,
             57578,
             57582,
             57589,
             57587,
             57592,
             57586,
             57593,
             57594,
             57588,
             57591,
             57590,
             57650,
             111230,
             111231,
             57714,
             47202,
             90739,
             90913,
             33355,
             108562,
             33352,
             109905,
             33351,
             108565,
             33349,
             108606,
             33350,
             108563,
             33353,
             108564,
             33357,
             108605,
             33356,
             108607,
             91040,
             58058,
             91144,
             58117,
             106683,
             91240,
             91229,
             91258,
             91285,
             91504,
             47391,
             33476,
             47427,
             47430,
             47429,
             47433,
             47434,
             47439,
             47438,
             47441,
             91718,
             91721,
             91720,
             91724,
             91726,
             91727,
             91732,
             91731,
             91733,
             91738,
             91737,
             91741,
             91740,
             33553,
             91904,
             33594,
             92303,
             111233,
             76895,
             47673,
             77031,
             77032,
             111025,
             77029,
             77033,
             77035,
             77028,
             77034,
             33825,
             33828,
             33823,
             33826,
             33827,
             112063,
             112221,
             77147,
             77150,
             77148,
             77152,
             77149,
             77153,
             33915,
             92641,
             92644,
             92652,
             107522,
             92801,
             59322,
             106890,
             110992,
             107355,
             106892,
             107352,
             59327,
             106894,
             106924,
             107351,
             59325,
             106893,
             107354,
             59323,
             106891,
             59363,
             107109,
             59360,
             107108,
             59388,
             59384,
             59383,
             34148,
             34221,
             48148,
             77346,
             77328,
             77351,
             77416,
             77427,
             77453,
             77455,
             77454,
             77452,
             77518,
             30443,
             77516,
             77513,
             77517,
             77520,
             77514,
             77545,
             77668,
             34508,
             34511,
             34507,
             34502,
             106711,
             34514,
             34506,
             34513,
             34504,
             34517,
             34505,
             34501,
             34516,
             34503,
             77859,
             78055,
             78051,
             93133,
             34883,
             34899,
             78353,
             78356,
             35138,
             35139,
             35155,
             48865,
             48871,
             48870,
             35238,
             35233,
             35247,
             35242,
             35248,
             35246,
             35232,
             35229,
             35231,
             35228,
             35234,
             35244,
             35235,
             35245,
             35237,
             48876,
             48872,
             48873,
             48874,
             48875,
             59579,
             59587,
             59584,
             59583,
             59578,
             59581,
             59582,
             59580,
             59586,
             59588,
             48912,
             59686,
             48966,
             49005,
             93521,
             93519,
             93522,
             59733,
             35360,
             35366,
             35358,
             35365,
             35367,
             35361,
             108497,
             35362,
             35357,
             35364,
             93612,
             93681,
             60015,
             60008,
             107991,
             60110,
             60113,
             60140,
             93785,
             108416,
             60170,
             106604,
             93852,
             93853,
             93883,
             108275,
             60281,
             60310,
             60304,
             60309,
             60311,
             60307,
             60308,
             60305,
             106839,
             106851,
             60321,
             106841,
             60323,
             106852,
             60315,
             106844,
             60317,
             106847,
             60324,
             106849,
             60319,
             106842,
             60322,
             106843,
             60316,
             106840,
             60325,
             106846,
             60320,
             106848,
             60327,
             106845,
             60312,
             106850,
             60313,
             35707,
             35715,
             35721,
             108030,
             35725,
             108080,
             35711,
             108081,
             35720,
             108082,
             35714,
             108079,
             35718,
             35719,
             107998,
             35722,
             35717,
             108083,
             35712,
             35734,
             35729,
             35728,
             35727,
             35733,
             35731,
             60455,
             60458,
             60457,
             60456,
             60459,
             60470,
             60471,
             60467,
             60465,
             78580,
             30441,
             60542,
             60543,
             60549,
             60546,
             60545,
             60544,
             60550,
             60569,
             60580,
             60573,
             60567,
             60579,
             60572,
             60576,
             60578,
             60577,
             60570,
             60571,
             60568,
             60575,
             111669,
             111703,
             112341,
             60618,
             107609,
             60611,
             60612,
             60620,
             60616,
             60614,
             60617,
             107608,
             60615,
             60621,
             60630,
             60639,
             60637,
             60626,
             60633,
             60634,
             60631,
             60636,
             60628,
             60640,
             60632,
             60629,
             60641,
             60652,
             60649,
             60647,
             111449,
             60644,
             60646,
             60667,
             49100,
             94088,
             108919,
             94116,
             94119,
             60738,
             60737,
             60736,
             94120,
             94121,
             94124,
             94122,
             111426,
             94125,
             94127,
             94126,
             49148,
             49150,
             49151,
             49167,
             94129,
             60782,
             107265,
             107263,
             107261,
             60786,
             107274,
             60787,
             107264,
             60783,
             107266,
             60784,
             60789,
             107275,
             60793,
             60794,
             107254,
             60796,
             106651,
             60792,
             107253,
             60795,
             94137,
             94141,
             35945,
             60884,
             94201,
             94208,
             49256,
             60997,
             61055,
             61042,
             61044,
             49363,
             111644,
             94365,
             110147,
             36251,
             36252,
             36256,
             36255,
             36254,
             36293,
             36295,
             36288,
             36298,
             36291,
             36296,
             36290,
             36299,
             36289,
             61159,
             61161,
             36332,
             36333,
             36331,
             36336,
             36337,
             36330,
             36335,
             36338,
             49450,
             61289,
             61285,
             61288,
             107370,
             36513,
             36497,
             36503,
             36501,
             36505,
             36500,
             36502,
             36506,
             36511,
             36508,
             108507,
             61324,
             61321,
             61322,
             61323,
             61348,
             61349,
             61341,
             61346,
             61344,
             61347,
             78678,
             78677,
             78679,
             78684,
             78681,
             78680,
             78688,
             111608,
             111625,
             111626,
             36651,
             78697,
             107243,
             107244,
             78695,
             78696,
             78698,
             36672,
             94559,
             94566,
             94567,
             94574,
             78738,
             78733,
             78740,
             78730,
             78747,
             78734,
             78744,
             78743,
             78736,
             78728,
             78754,
             78746,
             78729,
             78737,
             78749,
             78735,
             111127,
             78731,
             94577,
             94582,
             78758,
             94584,
             78774,
             78773,
             78765,
             78764,
             78771,
             78766,
             78763,
             78768,
             78769,
             78770,
             94603,
             94602,
             78792,
             78793,
             78797,
             78791,
             78790,
             78796,
             78798,
             78794,
             78799,
             36718,
             94608,
             94609,
             94610,
             94611,
             94612,
             94614,
             94615,
             94616,
             94617,
             78863,
             36736,
             36739,
             36738,
             36734,
             36740,
             36733,
             49682,
             49681,
             49692,
             36789,
             106729,
             61444,
             61447,
             49849,
             36937,
             36929,
             36931,
             36941,
             36942,
             36932,
             36934,
             36944,
             36939,
             36933,
             107028,
             61635,
             61636,
             61640,
             61633,
             61639,
             61637,
             61638,
             107022,
             94812,
             94823,
             94825,
             107881,
             94821,
             94824,
             61707,
             61765,
             37041,
             37042,
             37045,
             61808,
             37052,
             37104,
             110199,
             62106,
             37280,
             37320,
             37321,
             37322,
             37325,
             37327,
             37328,
             37326,
             107808,
             37338,
             50305,
             95500,
             95499,
             95502,
             95503,
             95505,
             95504,
             95506,
             95511,
             95510,
             95509,
             95512,
             95513,
             95514,
             95515,
             95516,
             95517,
             95520,
             95519,
             95518,
             95521,
             95522,
             95524,
             95525,
             95527,
             62590,
             109039,
             62656,
             62654,
             62657,
             62845,
             62846,
             62843,
             62844,
             112349,
             95840,
             95839,
             95837,
             95838,
             95842,
             95843,
             95846,
             95851,
             95850,
             95847,
             95853,
             62888,
             62877,
             62880,
             62897,
             62894,
             62881,
             62889,
             111042,
             62899,
             95875,
             95876,
             111814,
             62952,
             62969,
             62979,
             62977,
             62975,
             62980,
             62976,
             62978,
             62972,
             62973,
             62971,
             95914,
             110289,
             110982,
             110288,
             110292,
             110293,
             110303,
             110300,
             111682,
             95958,
             95959,
             63097,
             95962,
             96005,
             96004,
             96006,
             96007,
             107977,
             107971,
             107970,
             96014,
             106988,
             96013,
             106997,
             96016,
             107026,
             107537,
             96017,
             106962,
             96018,
             106976,
             96019,
             106975,
             106961,
             96021,
             107024,
             96023,
             107014,
             63134,
             63131,
             106996,
             107314,
             63130,
             107310,
             63126,
             106992,
             63135,
             107226,
             63137,
             63132,
             107315,
             63127,
             106948,
             111257,
             107312,
             63124,
             106993,
             63136,
             107309,
             63123,
             63129,
             106990,
             63128,
             106989,
             63125,
             106995,
             96035,
             96034,
             96040,
             96049,
             96051,
             107990,
             96053,
             96054,
             63147,
             110349,
             96138,
             96143,
             109111,
             96221,
             96218,
             63355,
             96264,
             109144,
             96299,
             96312,
             37843,
             63459,
             63456,
             63524,
             63520,
             63517,
             63527,
             63526,
             63523,
             63528,
             111319,
             63599,
             63603,
             63604,
             63598,
             63607,
             63601,
             50868,
             108111,
             50871,
             50873,
             108100,
             50874,
             108112,
             50875,
             108113,
             37915,
             37920,
             50879,
             108115,
             108096,
             96604,
             96610,
             96714,
             96720,
             96736,
             96833,
             96834,
             96837,
             50989,
             64448,
             64503,
             112189,
             97294,
             97295,
             97296,
             97299,
             97298,
             64553,
             64555,
             64551,
             97301,
             97303,
             97304,
             97309,
             97307,
             97311,
             64566,
             97322,
             97323,
             97324,
             97327,
             97328,
             107429,
             107430,
             97330,
             97331,
             97333,
             38043,
             38045,
             38040,
             38048,
             38049,
             38047,
             38041,
             38050,
             38044,
             64655,
             64674,
             97453,
             97454,
             108127,
             97468,
             97467,
             97466,
             64727,
             64726,
             64740,
             97473,
             64776,
             64773,
             64772,
             64775,
             64770,
             64774,
             64777,
             64771,
             97555,
             97588,
             97589,
             97594,
             64859,
             64860,
             64858,
             64854,
             64855,
             64862,
             64857,
             97599,
             97598,
             97600,
             97601,
             97604,
             97605,
             97607,
             97764,
             65056,
             65053,
             65054,
             65052,
             65050,
             97825,
             97847,
             51213,
             51222,
             51235,
             51236,
             98105,
             98104,
             98106,
             98108,
             65410,
             98109,
             65415,
             65416,
             65413,
             65414,
             98110,
             98111,
             65641,
             98274,
             98270,
             109303,
             98392,
             65886,
             38477,
             38479,
             98433,
             98443,
             111067,
             111068,
             106885,
             38547,
             38549,
             111966,
             111967,
             111968,
             112016,
             112017,
             112051,
             112052,
             112199,
             112201,
             112202,
             112203,
             38548,
             66178,
             66219,
             51406,
             38642,
             38646,
             38643,
             38731,
             79488,
             79579,
             38868,
             38864,
             79659,
             79770,
             99674,
             80039,
             111546,
             80052,
             80142,
             80113,
             80149,
             51854,
             52139,
             66677,
             39439,
             39435,
             39431,
             39430,
             39426,
             39434,
             39433,
             39432,
             39438,
             39440,
             39441,
             39427,
             39437,
             39436,
             66770,
             66769,
             66768,
             106652,
             100314,
             100315,
             100318,
             100321,
             100322,
             66789,
             100324,
             66784,
             100417,
             52234,
             52419,
             111653,
             80755,
             80750,
             80765,
             80771,
             80763,
             80764,
             80756,
             80774,
             80759,
             80775,
             80760,
             80762,
             80769,
             80768,
             80777,
             80757,
             101021,
             52797,
             52815,
             52878,
             52879,
             112185,
             112187,
             52975,
             53026,
             108249,
             81179,
             81174,
             81175,
             81176,
             81173,
             81177,
             53040,
             53060,
             53063,
             108162,
             40339,
             101466,
             81256,
             107288,
             81262,
             40412,
             53128,
             53127,
             81301,
             81293,
             101547,
             101555,
             101556,
             81692,
             81693,
             81685,
             107125,
             81686,
             81691,
             81687,
             81689,
             81721,
             81743,
             81713,
             81718,
             81719,
             101768,
             101769,
             101770,
             101773,
             101772,
             101775,
             101774,
             101779,
             101778,
             101821,
             66828,
             66843,
             66829,
             66860,
             66865,
             102427,
             67508,
             107469,
             102574,
             67583,
             54347,
             54349,
             67753,
             67789,
             67799,
             67779,
             67856,
             67863,
             67859,
             67864,
             67857,
             67858,
             67862,
             67867,
             68163,
             68162,
             68249,
             68253,
             68248,
             68245,
             68254,
             68251,
             68247,
             103404,
             103402,
             103425,
             103438,
             103443,
             103444,
             68568,
             68670,
             103771,
             68719,
             68721,
             103785,
             103790,
             103789,
             81937,
             109444,
             42109,
             42180,
             42293,
             82276,
             111788,
             82289,
             104301,
             82954,
             82952,
             112192,
             112193,
             112242,
             112243,
             112336,
             82944,
             108171,
             108199,
             107114,
             107115,
             55568,
             55570,
             42754,
             104350,
             104349,
             104351,
             104352,
             42774,
             42768,
             42771,
             83041,
             83043,
             83038,
             83040,
             104361,
             55633,
             55632,
             55653,
             83073,
             42955,
             42983,
             83275,
             83279,
             83272,
             43049,
             104709,
             104708,
             83625,
             83621,
             83618,
             83619,
             83622,
             55872,
             55880,
             55879,
             55881,
             55894,
             106707,
             55893,
             106706,
             106708,
             43205,
             83753,
             43238,
             104935,
             104938,
             104937,
             104939,
             104942,
             104941,
             108349,
             104943,
             104944,
             104946,
             104945,
             104947,
             83952,
             110733,
             43338,
             109689,
             109693,
             109687,
             109685,
             109696,
             109691,
             109692,
             109683,
             109695,
             110935,
             109684,
             109694,
             109686,
             105185,
             105186,
             109717,
             109718,
             43452,
             56139,
             43477,
             43480,
             43479,
             43485,
             43474,
             43478,
             43476,
             43481,
             43470,
             43482,
             43472,
             105398,
             108547,
             43626,
             43629,
             68788,
             68786,
             108074,
             68795,
             107887,
             68792,
             107884,
             68798,
             107885,
             68796,
             107886,
             68793,
             68799,
             107889,
             68797,
             107888,
             43633,
             43634,
             43637,
             43641,
             43644,
             43640,
             107605,
             43645,
             43690,
             43686,
             112155,
             68942,
             68945,
             68944,
             68946,
             68947,
             43730,
             106664,
             105573,
             43872,
             69031,
             69032,
             69028,
             69027,
             56413,
             43906,
             56431,
             56444,
             105599,
             69104,
             69102,
             69101,
             69100,
             111548,
             44009,
             44004,
             44026,
             44024,
             111633,
             111634,
             111661,
             69154,
             44054,
             84743,
             84812,
             105790,
             56593,
             56624,
             69278,
             69280,
             69279,
             69281,
             105868,
             105867,
             105869,
             69284,
             111919,
             69287,
             69298,
             69293,
             69302,
             69301,
             69297,
             69296,
             69300,
             69291,
             69295,
             69304,
             105870,
             105871,
             105872,
             105874,
             105903,
             56631,
             105913,
             112216,
             109729,
             109734,
             109731,
             44224,
             109743,
             109748,
             109737,
             109747,
             109746,
             109745,
             109740,
             109741,
             109742,
             109739,
             109738,
             44261,
             44416,
             69529,
             106073,
             106074,
             106076,
             106077,
             106079,
             106083,
             56765,
             108166,
             106095,
             69544,
             69539,
             69541,
             69540,
             69543,
             44463,
             44481,
             44473,
             44474,
             44476,
             44479,
             44475,
             44480,
             56783,
             112350,
             106115,
             106950,
             106951,
             106953,
             106954,
             106952,
             106955,
             106960,
             106963,
             106957,
             106959,
             106956,
             106958,
             111721,
             111722,
             111723,
             111724,
             111725,
             111726,
             44510,
             44515,
             44511,
             44514,
             44513,
             44512,
             69624,
             56811,
             56813,
             56812,
             56815,
             56814,
             69628,
             69632,
             69627,
             69630,
             69629,
             56816,
             106140,
             69693,
             106186,
             106184,
             106187,
             106188,
             44574,
             108480,
             44567,
             106199,
             44601,
             44604,
             107190,
             112171,
             112173,
             112174,
             112175,
             112176,
             69717,
             69715,
             69716,
             69721,
             69718,
             107495,
             107497,
             107499,
             107493,
             107498,
             107494,
             107496,
             69751,
             69750,
             44645,
             106255,
             106254,
             44700,
             44699,
             44697,
             69817,
             69814,
             69816,
             69815,
             69847,
             69846,
             69852,
             69849,
             69853,
             69854,
             69844,
             106339,
             56954,
             56997,
             106444,
             106443,
             106445,
             69988,
             69986,
             69991,
             69989,
             69987,
             44837,
             44834,
             70025,
             70024,
             70022,
             70023,
             70031,
             106495,
             106498,
             70038,
             70049,
             70044,
             70051,
             70048,
             70046,
             70043,
             70045,
             70047
    )
