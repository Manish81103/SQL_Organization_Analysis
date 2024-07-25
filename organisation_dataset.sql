drop DATABASE if exists ref_employees;
-- ********************************************************************************************************************************************************************
-- CREATING DATABASE
-- ********************************************************************************************************************************************************************

create database ref_employees;
use ref_employees;



-- ********************************************************************************************************************************************************************
-- CREATING TABLES
-- ********************************************************************************************************************************************************************
create table employees_info
(
emp_id int primary key,
firstname varchar(15),
lastname varchar(15),
email varchar(50)
);

create table employees_dept
(
emp_id int primary key REFERENCES employees_info(emp_id),
dept_id int , -- fk to departments.dept_id
manager_id int,-- fk to managers.manager_id
salary decimal(7,2)

);

create table departments
(
dept_id int primary key,
dept_name varchar(20)
);

create table managers
(
manager_id int primary key,
dept_id int,

FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

create table projects
(
project_id int primary key,
project_name varchar(25)
);

create table clients
(
client_id int primary key,
client_name varchar(35),
client_city varchar(30)
);




create table project_details
(
project_key varchar(20) primary key,
project_id int,-- fk projects.project_id
project_lead_id int,-- fk emp_dept.emp_id
manager_id int,-- fk managers.manager_id
client_id int,-- fk clients.client_id
commencement_month varchar(15),
project_status varchar(25),

foreign key (project_id) REFERENCES projects(project_id),
foreign key (project_lead_id) REFERENCES employees_dept(emp_id),
foreign key (manager_id) references managers(manager_id),
foreign key (client_id) REFERENCES clients(client_id)
);

-- ********************************************************************************************************************************************************************
-- INSERTING VALUES
-- ********************************************************************************************************************************************************************

insert into employees_info
values
(1001,'Yashvi','Bhatti','yashvi_bhatti@someorg.com'),
(1002,'Reyansh','Acharya','reyansh_acharya@someorg.com'),
(1003,'Aarna','Mandal','aarna_mandal@someorg.com'),
(1004,'Elakshi','Devi','elakshi_devi@someorg.com'),
(1005,'Yuvaan','Tak','yuvaan_tak@someorg.com'),
(1006,'Ira','Ganesan','ira_ganesan@someorg.com'),
(1007,'Shaan','Chauhan','shaan_chauhan@someorg.com'),
(1008,'Kismat','Sule','kismat_sule@someorg.com'),
(1009,'Rhea','Deep','rhea_deep@someorg.com'),
(1010,'Rati','Anne','rati_anne@someorg.com'),
(1011,'Hridaan','Savant','hridaan_savant@someorg.com'),
(1012,'Ryan','Yohannan','ryan_yohannan@someorg.com'),
(1013,'Myra','Dutta','myra_dutta@someorg.com'),
(1014,'Vihaan','Mammen','vihaan_mammen@someorg.com'),
(1015,'Mishti','Ray','mishti_ray@someorg.com'),
(1016,'Kimaya','Kari','kimaya_kari@someorg.com'),
(1017,'Amira','Rao','amira_rao@someorg.com'),
(1018,'Jayan','Seshadri','jayan_seshadri@someorg.com'),
(1019,'Jayan','Samra','jayan_samra@someorg.com'),
(1020,'Neelofar','Vora','neelofar_vora@someorg.com'),
(1021,'Bhavin','Chanda','bhavin_chanda@someorg.com'),
(1022,'Mannat','Savant','mannat_savant@someorg.com'),
(1023,'Shanaya','Sridhar','shanaya_sridhar@someorg.com'),
(1024,'Sana','Guha','sana_guha@someorg.com'),
(1025,'Amani','Kapur','amani_kapur@someorg.com'),
(1026,'Drishya','Bassi','drishya_bassi@someorg.com'),
(1027,'Farhan','Varughese','farhan_varughese@someorg.com'),
(1028,'Seher','Subramaniam','seher_subramaniam@someorg.com'),
(1029,'Lavanya','Krish','lavanya_krish@someorg.com'),
(1030,'Himmat','Sandal','himmat_sandal@someorg.com'),
(1031,'Kashvi','Sankar','kashvi_sankar@someorg.com'),
(1032,'Urvi','Sandhu','urvi_sandhu@someorg.com'),
(1033,'Ira','Sama','ira_sama@someorg.com'),
(1034,'Eva','Gopal','eva_gopal@someorg.com'),
(1035,'Nayantara','Gupta','nayantara_gupta@someorg.com'),
(1036,'Shayak','Sarraf','shayak_sarraf@someorg.com'),
(1037,'Riaan','Biswas','riaan_biswas@someorg.com'),
(1038,'Bhavin','Bhatnagar','bhavin_bhatnagar@someorg.com'),
(1039,'Yuvaan','Rege','yuvaan_rege@someorg.com'),
(1040,'Vardaniya','Sunder','vardaniya_sunder@someorg.com'),
(1041,'Priyansh','Khalsa','priyansh_khalsa@someorg.com'),
(1042,'Dhruv','Sahni','dhruv_sahni@someorg.com'),
(1043,'Aradhya','Sehgal','aradhya_sehgal@someorg.com'),
(1044,'Anika','Kumar','anika_kumar@someorg.com'),
(1045,'Bhamini','Subramanian','bhamini_subramanian@someorg.com'),
(1046,'Dhanush','Kulkarni','dhanush_kulkarni@someorg.com'),
(1047,'Priyansh','Ranganathan','priyansh_ranganathan@someorg.com'),
(1048,'Shlok','Chaudhuri','shlok_chaudhuri@someorg.com'),
(1049,'Sana','Ratta','sana_ratta@someorg.com'),
(1050,'Amani','Dora','amani_dora@someorg.com'),
(1051,'Pihu','Bedi','pihu_bedi@someorg.com'),
(1052,'Miraan','Deol','miraan_deol@someorg.com'),
(1053,'Ehsaan','Gera','ehsaan_gera@someorg.com'),
(1054,'Shaan','Shukla','shaan_shukla@someorg.com'),
(1055,'Lagan','Mandal','lagan_mandal@someorg.com'),
(1056,'Indranil','Chandra','indranil_chandra@someorg.com'),
(1057,'Khushi','Bhatnagar','khushi_bhatnagar@someorg.com'),
(1058,'Divij','Zachariah','divij_zachariah@someorg.com'),
(1059,'Shanaya','Lanka','shanaya_lanka@someorg.com'),
(1060,'Kaira','Loke','kaira_loke@someorg.com'),
(1061,'Mamooty','Gala','mamooty_gala@someorg.com'),
(1062,'Zain','Baral','zain_baral@someorg.com'),
(1063,'Anay','Mahal','anay_mahal@someorg.com'),
(1064,'Priyansh','Hans','priyansh_hans@someorg.com'),
(1065,'Stuvan','Kala','stuvan_kala@someorg.com'),
(1066,'Priyansh','Kara','priyansh_kara@someorg.com'),
(1067,'Tarini','Thakkar','tarini_thakkar@someorg.com'),
(1068,'Kiaan','Sagar','kiaan_sagar@someorg.com'),
(1069,'Mehul','Hans','mehul_hans@someorg.com'),
(1070,'Aniruddh','Deshmukh','aniruddh_deshmukh@someorg.com'),
(1071,'Prerak','Chakraborty','prerak_chakraborty@someorg.com'),
(1072,'Tara','Chaudhry','tara_chaudhry@someorg.com'),
(1073,'Purab','Aurora','purab_aurora@someorg.com'),
(1074,'Bhamini','Bhakta','bhamini_bhakta@someorg.com'),
(1075,'Miraya','Sidhu','miraya_sidhu@someorg.com'),
(1076,'Miraan','Gala','miraan_gala@someorg.com'),
(1077,'Manikya','Din','manikya_din@someorg.com'),
(1078,'Aniruddh','Gour','aniruddh_gour@someorg.com'),
(1079,'Tara','Tak','tara_tak@someorg.com'),
(1080,'Umang','Mangal','umang_mangal@someorg.com'),
(1081,'Armaan','Bhatt','armaan_bhatt@someorg.com'),
(1082,'Hiran','Balakrishnan','hiran_balakrishnan@someorg.com'),
(1083,'Anvi','Viswanathan','anvi_viswanathan@someorg.com'),
(1084,'Lakshay','Gola','lakshay_gola@someorg.com'),
(1085,'Yuvraj ','Das','yuvraj _das@someorg.com'),
(1086,'Azad','Batra','azad_batra@someorg.com'),
(1087,'Nishith','Chanda','nishith_chanda@someorg.com'),
(1088,'Baiju','Saxena','baiju_saxena@someorg.com'),
(1089,'Riya','Hora','riya_hora@someorg.com'),
(1090,'Hrishita','Kalita','hrishita_kalita@someorg.com'),
(1091,'Zaina','Rau','zaina_rau@someorg.com'),
(1092,'Tiya','Deep','tiya_deep@someorg.com'),
(1093,'Chirag','Rao','chirag_rao@someorg.com'),
(1094,'Eshani','Chaudhuri','eshani_chaudhuri@someorg.com'),
(1095,'Raunak','Raju','raunak_raju@someorg.com'),
(1096,'Vihaan','Subramaniam','vihaan_subramaniam@someorg.com'),
(1097,'Prerak','Dhillon','prerak_dhillon@someorg.com'),
(1098,'Ela','Bala','ela_bala@someorg.com'),
(1099,'Yuvaan','Vyas','yuvaan_vyas@someorg.com'),
(1100,'Zain','Vyas','zain_vyas@someorg.com'),
(1101,'Kartik','Walia','kartik_walia@someorg.com'),
(1102,'Dishani','Boase','dishani_boase@someorg.com'),
(1103,'Lakshay','Bobal','lakshay_bobal@someorg.com'),
(1104,'Amani','Soni','amani_soni@someorg.com'),
(1105,'Lakshit','Thakur','lakshit_thakur@someorg.com'),
(1106,'Miraan','Kadakia','miraan_kadakia@someorg.com'),
(1107,'Rania','Tella','rania_tella@someorg.com'),
(1108,'Reyansh','Bains','reyansh_bains@someorg.com'),
(1109,'Drishya','Atwal','drishya_atwal@someorg.com'),
(1110,'Rhea','Sharaf','rhea_sharaf@someorg.com'),
(1111,'Anahita','Jani','anahita_jani@someorg.com'),
(1112,'Neysa','Singh','neysa_singh@someorg.com'),
(1113,'Amira','Bassi','amira_bassi@someorg.com'),
(1114,'Akarsh','Dayal','akarsh_dayal@someorg.com'),
(1115,'Arhaan','Jaggi','arhaan_jaggi@someorg.com'),
(1116,'Amira','Borra','amira_borra@someorg.com'),
(1117,'Mahika','Krishnan','mahika_krishnan@someorg.com'),
(1118,'Eva','Chada','eva_chada@someorg.com'),
(1119,'Nirvi','Vasa','nirvi_vasa@someorg.com'),
(1120,'Khushi','Deshmukh','khushi_deshmukh@someorg.com'),
(1121,'Mannat','Din','mannat_din@someorg.com'),
(1122,'Myra','Datta','myra_datta@someorg.com'),
(1123,'Taimur','Kala','taimur_kala@someorg.com'),
(1124,'Samarth','Banerjee','samarth_banerjee@someorg.com'),
(1125,'Saanvi','Srinivasan','saanvi_srinivasan@someorg.com'),
(1126,'Nirvaan','Shan','nirvaan_shan@someorg.com'),
(1127,'Aayush','Chand','aayush_chand@someorg.com'),
(1128,'Darshit','Aggarwal','darshit_aggarwal@someorg.com'),
(1129,'Chirag','Sundaram','chirag_sundaram@someorg.com'),
(1130,'Anaya','Mander','anaya_mander@someorg.com'),
(1131,'Nishith','Goswami','nishith_goswami@someorg.com'),
(1132,'Parinaaz','Sagar','parinaaz_sagar@someorg.com'),
(1133,'Aayush','Dass','aayush_dass@someorg.com'),
(1134,'Divij','Sridhar','divij_sridhar@someorg.com'),
(1135,'Samarth','Kala','samarth_kala@someorg.com'),
(1136,'Ishita','Viswanathan','ishita_viswanathan@someorg.com'),
(1137,'Pranay','Bora','pranay_bora@someorg.com'),
(1138,'Aarush','Toor','aarush_toor@someorg.com'),
(1139,'Tarini','Shere','tarini_shere@someorg.com'),
(1140,'Siya','Vora','siya_vora@someorg.com'),
(1141,'Eshani','Subramanian','eshani_subramanian@someorg.com'),
(1142,'Aayush','Barad','aayush_barad@someorg.com'),
(1143,'Priyansh','Tailor','priyansh_tailor@someorg.com'),
(1144,'Alisha','Kala','alisha_kala@someorg.com'),
(1145,'Nakul','Sethi','nakul_sethi@someorg.com'),
(1146,'Nitara','Bhalla','nitara_bhalla@someorg.com'),
(1147,'Rasha','Doctor','rasha_doctor@someorg.com'),
(1148,'Fateh','Shetty','fateh_shetty@someorg.com'),
(1149,'Mamooty','Varkey','mamooty_varkey@someorg.com'),
(1150,'Aniruddh','Sahni','aniruddh_sahni@someorg.com'),
(1151,'Mohanlal','Dasgupta','mohanlal_dasgupta@someorg.com'),
(1152,'Suhana','Verma','suhana_verma@someorg.com'),
(1153,'Neysa','Dhingra','neysa_dhingra@someorg.com'),
(1154,'Kanav','Swaminathan','kanav_swaminathan@someorg.com'),
(1155,'Samaira','Chahal','samaira_chahal@someorg.com'),
(1156,'Kaira','Yogi','kaira_yogi@someorg.com'),
(1157,'Aayush','Halder','aayush_halder@someorg.com'),
(1158,'Ivana','Sankar','ivana_sankar@someorg.com'),
(1159,'Yasmin','Chatterjee','yasmin_chatterjee@someorg.com'),
(1160,'Anika','Yohannan','anika_yohannan@someorg.com'),
(1161,'Shamik','Mander','shamik_mander@someorg.com'),
(1162,'Ela','Madan','ela_madan@someorg.com'),
(1163,'Adah','Bhandari','adah_bhandari@someorg.com'),
(1164,'Navya','Lalla','navya_lalla@someorg.com'),
(1165,'Divyansh','Amble','divyansh_amble@someorg.com'),
(1166,'Nirvaan','Barman','nirvaan_barman@someorg.com'),
(1167,'Dishani','Lall','dishani_lall@someorg.com'),
(1168,'Shalv','Barad','shalv_barad@someorg.com'),
(1169,'Romil','Datta','romil_datta@someorg.com'),
(1170,'Ivan','Cherian','ivan_cherian@someorg.com'),
(1171,'Pranay','Lad','pranay_lad@someorg.com'),
(1172,'Biju','Khatri','biju_khatri@someorg.com'),
(1173,'Mohanlal','Master','mohanlal_master@someorg.com'),
(1174,'Lavanya','Vyas','lavanya_vyas@someorg.com'),
(1175,'Anvi','Hari','anvi_hari@someorg.com'),
(1176,'Shanaya','Aurora','shanaya_aurora@someorg.com'),
(1177,'Jivika','Bhatia','jivika_bhatia@someorg.com'),
(1178,'Nirvaan','Ratta','nirvaan_ratta@someorg.com'),
(1179,'Dhruv','Hegde','dhruv_hegde@someorg.com'),
(1180,'Drishya','Borra','drishya_borra@someorg.com'),
(1181,'Vedika','Gara','vedika_gara@someorg.com'),
(1182,'Yashvi','Wable','yashvi_wable@someorg.com'),
(1183,'Vanya','Joshi','vanya_joshi@someorg.com'),
(1184,'Ishita','Bhatti','ishita_bhatti@someorg.com'),
(1185,'Dishani','Bedi','dishani_bedi@someorg.com'),
(1186,'Mamooty','Sabharwal','mamooty_sabharwal@someorg.com'),
(1187,'Indrajit','Varghese','indrajit_varghese@someorg.com'),
(1188,'Lavanya','Sem','lavanya_sem@someorg.com'),
(1189,'Neelofar','Thaker','neelofar_thaker@someorg.com'),
(1190,'Jivin','Sanghvi','jivin_sanghvi@someorg.com'),
(1191,'Ojas','Batra','ojas_batra@someorg.com'),
(1192,'Biju','Dugar','biju_dugar@someorg.com'),
(1193,'Baiju','Kadakia','baiju_kadakia@someorg.com'),
(1194,'Shalv','Sankar','shalv_sankar@someorg.com'),
(1195,'Anahita','Srinivasan','anahita_srinivasan@someorg.com'),
(1196,'Advika','Ghose','advika_ghose@someorg.com'),
(1197,'Zeeshan','Seshadri','zeeshan_seshadri@someorg.com'),
(1198,'Hiran','Date','hiran_date@someorg.com'),
(1199,'Kashvi','Baral','kashvi_baral@someorg.com'),
(1200,'Amira','Chacko','amira_chacko@someorg.com'),
(1201,'Samar','Garg','samar_garg@someorg.com'),
(1202,'Zaina','Gulati','zaina_gulati@someorg.com'),
(1203,'Himmat','Sheth','himmat_sheth@someorg.com'),
(1204,'Raunak','Hari','raunak_hari@someorg.com'),
(1205,'Yashvi','Kaur','yashvi_kaur@someorg.com'),
(1206,'Indranil','Dara','indranil_dara@someorg.com'),
(1207,'Dharmajan','Mani','dharmajan_mani@someorg.com'),
(1208,'Indrajit','Chanda','indrajit_chanda@someorg.com'),
(1209,'Faiyaz','Luthra','faiyaz_luthra@someorg.com'),
(1210,'Aarav','Chaudhry','aarav_chaudhry@someorg.com'),
(1211,'Dharmajan','Golla','dharmajan_golla@someorg.com'),
(1212,'Dhruv','Master','dhruv_master@someorg.com'),
(1213,'Zeeshan','Sridhar','zeeshan_sridhar@someorg.com'),
(1214,'Shlok','Aurora','shlok_aurora@someorg.com'),
(1215,'Tara','Lad','tara_lad@someorg.com'),
(1216,'Lagan','Saxena','lagan_saxena@someorg.com'),
(1217,'Arnav','Bajaj','arnav_bajaj@someorg.com'),
(1218,'Indrans','Bala','indrans_bala@someorg.com'),
(1219,'Vivaan','Barad','vivaan_barad@someorg.com'),
(1220,'Kanav','Rajagopalan','kanav_rajagopalan@someorg.com'),
(1221,'Pari','Maharaj','pari_maharaj@someorg.com'),
(1222,'Damini','Halder','damini_halder@someorg.com'),
(1223,'Lagan','Sani','lagan_sani@someorg.com'),
(1224,'Kismat','Ramakrishnan','kismat_ramakrishnan@someorg.com'),
(1225,'Ryan','Madan','ryan_madan@someorg.com'),
(1226,'Saksham','Chad','saksham_chad@someorg.com'),
(1227,'Ranbir','Bhatti','ranbir_bhatti@someorg.com'),
(1228,'Bhavin','Dass','bhavin_dass@someorg.com'),
(1229,'Prerak','Bobal','prerak_bobal@someorg.com'),
(1230,'Alisha','Dugal','alisha_dugal@someorg.com'),
(1231,'Kismat','Savant','kismat_savant@someorg.com'),
(1232,'Pari','Divan','pari_divan@someorg.com'),
(1233,'Kiara','Aggarwal','kiara_aggarwal@someorg.com'),
(1234,'Adira','Atwal','adira_atwal@someorg.com'),
(1235,'Myra','Char','myra_char@someorg.com'),
(1236,'Abram','Bera','abram_bera@someorg.com'),
(1237,'Mohanlal','Swaminathan','mohanlal_swaminathan@someorg.com'),
(1238,'Kavya','Tripathi','kavya_tripathi@someorg.com'),
(1239,'Yuvraj ','Bakshi','yuvraj _bakshi@someorg.com'),
(1240,'Chirag','Kapadia','chirag_kapadia@someorg.com'),
(1241,'Aayush','Dube','aayush_dube@someorg.com'),
(1242,'Vanya','Sharaf','vanya_sharaf@someorg.com'),
(1243,'Zoya','Jain','zoya_jain@someorg.com'),
(1244,'Anya','Bhatnagar','anya_bhatnagar@someorg.com'),
(1245,'Mohanlal','Babu','mohanlal_babu@someorg.com'),
(1246,'Nirvi','Choudhary','nirvi_choudhary@someorg.com'),
(1247,'Kaira','Deshmukh','kaira_deshmukh@someorg.com'),
(1248,'Devansh','Kata','devansh_kata@someorg.com'),
(1249,'Kaira','Mani','kaira_mani@someorg.com'),
(1250,'Ahana ','Kohli','ahana _kohli@someorg.com');


insert into employees_dept
values
(1001,202,null,40098),
(1002,203,null,51195),
(1003,202,null,15237),
(1004,203,null,46320),
(1005,204,null,27311),
(1006,205,null,33612),
(1007,205,null,27990),
(1008,204,null,43750),
(1009,202,null,23917),
(1010,203,null,39594),
(1011,204,null,37084),
(1012,201,null,48631),
(1013,201,null,54322),
(1014,201,null,53151),
(1015,203,null,20587),
(1016,204,null,58349),
(1017,204,null,29244),
(1018,201,null,55564),
(1019,204,null,39235),
(1020,203,null,25687),
(1021,205,null,49143),
(1022,202,null,37493),
(1023,201,null,52586),
(1024,202,null,25422),
(1025,202,null,46346),
(1026,202,null,36839),
(1027,201,null,37328),
(1028,201,null,22928),
(1029,205,null,31860),
(1030,204,null,14354),
(1031,202,null,34029),
(1032,204,null,17370),
(1033,202,null,44536),
(1034,201,null,44611),
(1035,203,null,45298),
(1036,201,null,16832),
(1037,205,null,13660),
(1038,205,null,37387),
(1039,202,null,24428),
(1040,205,null,42528),
(1041,202,null,13265),
(1042,201,null,10760),
(1043,202,null,48547),
(1044,205,null,29197),
(1045,204,null,55725),
(1046,201,null,28201),
(1047,202,null,57870),
(1048,201,null,42551),
(1049,202,null,33137),
(1050,205,null,42358),
(1051,201,null,58706),
(1052,202,null,10926),
(1053,204,null,59392),
(1054,203,null,31956),
(1055,202,null,12771),
(1056,204,null,53975),
(1057,201,null,22765),
(1058,201,null,38591),
(1059,203,null,53713),
(1060,202,null,49706),
(1061,202,null,52762),
(1062,203,null,49794),
(1063,204,null,38730),
(1064,202,null,40290),
(1065,203,null,36935),
(1066,204,null,55785),
(1067,204,null,49151),
(1068,201,null,55195),
(1069,203,null,59974),
(1070,204,null,56005),
(1071,203,null,23165),
(1072,201,null,44858),
(1073,201,null,36268),
(1074,201,null,20311),
(1075,205,null,37240),
(1076,204,null,58204),
(1077,203,null,37849),
(1078,204,null,38340),
(1079,202,null,12138),
(1080,205,null,32672),
(1081,205,null,20011),
(1082,203,null,22457),
(1083,205,null,56806),
(1084,202,null,38882),
(1085,201,null,57707),
(1086,202,null,50708),
(1087,202,null,39525),
(1088,202,null,45689),
(1089,202,null,39570),
(1090,202,null,19537),
(1091,203,null,49603),
(1092,203,null,34546),
(1093,205,null,59943),
(1094,205,null,48373),
(1095,202,null,13048),
(1096,204,null,19737),
(1097,204,null,27898),
(1098,204,null,26760),
(1099,205,null,41172),
(1100,205,null,35403),
(1101,202,null,50243),
(1102,205,null,41259),
(1103,201,null,24338),
(1104,205,null,24637),
(1105,204,null,41213),
(1106,202,null,43659),
(1107,202,null,31186),
(1108,205,null,10677),
(1109,204,null,14908),
(1110,204,null,34588),
(1111,201,null,29622),
(1112,202,null,44252),
(1113,204,null,18994),
(1114,203,null,20080),
(1115,204,null,56207),
(1116,202,null,49992),
(1117,202,null,33033),
(1118,203,null,20245),
(1119,205,null,10249),
(1120,202,null,39261),
(1121,203,null,31125),
(1122,202,null,31847),
(1123,205,null,58148),
(1124,203,null,24388),
(1125,205,null,21838),
(1126,202,null,59240),
(1127,204,null,54450),
(1128,203,null,43088),
(1129,203,null,43841),
(1130,201,null,15194),
(1131,204,null,22857),
(1132,203,null,48526),
(1133,204,null,58939),
(1134,205,null,50679),
(1135,204,null,37098),
(1136,202,null,58106),
(1137,202,null,50112),
(1138,202,null,44999),
(1139,202,null,42523),
(1140,202,null,59016),
(1141,203,null,16149),
(1142,204,null,43368),
(1143,204,null,44215),
(1144,205,null,49671),
(1145,203,null,17344),
(1146,205,null,33425),
(1147,204,null,44540),
(1148,203,null,38186),
(1149,203,null,18887),
(1150,201,null,11229),
(1151,204,null,20119),
(1152,205,null,31806),
(1153,205,null,13803),
(1154,204,null,20513),
(1155,201,null,23526),
(1156,203,null,31351),
(1157,205,null,56376),
(1158,204,null,23650),
(1159,205,null,30605),
(1160,205,null,56441),
(1161,205,null,16572),
(1162,204,null,24718),
(1163,204,null,39599),
(1164,201,null,46536),
(1165,204,null,18252),
(1166,204,null,59193),
(1167,201,null,30917),
(1168,204,null,10432),
(1169,205,null,46618),
(1170,201,null,22556),
(1171,202,null,42353),
(1172,205,null,34768),
(1173,201,null,53370),
(1174,201,null,48424),
(1175,205,null,31194),
(1176,204,null,18748),
(1177,205,null,20309),
(1178,201,null,16849),
(1179,201,null,44725),
(1180,202,null,36386),
(1181,205,null,51804),
(1182,202,null,19718),
(1183,201,null,44707),
(1184,201,null,10023),
(1185,202,null,51108),
(1186,204,null,13290),
(1187,203,null,58280),
(1188,203,null,48944),
(1189,202,null,35005),
(1190,205,null,19533),
(1191,201,null,16924),
(1192,204,null,41298),
(1193,202,null,12839),
(1194,205,null,41046),
(1195,205,null,11250),
(1196,205,null,56875),
(1197,201,null,52518),
(1198,203,null,50593),
(1199,205,null,18265),
(1200,202,null,45626),
(1201,205,null,23130),
(1202,201,null,31869),
(1203,201,null,23538),
(1204,205,null,21238),
(1205,202,null,23354),
(1206,204,null,45710),
(1207,204,null,35817),
(1208,205,null,34592),
(1209,204,null,58247),
(1210,202,null,51047),
(1211,205,null,22526),
(1212,201,null,20665),
(1213,203,null,55606),
(1214,202,null,27001),
(1215,201,null,59934),
(1216,204,null,31190),
(1217,204,null,56968),
(1218,205,null,14865),
(1219,201,null,40297),
(1220,203,null,26647),
(1221,203,null,16239),
(1222,202,null,46473),
(1223,204,null,59847),
(1224,203,null,30993),
(1225,202,null,17496),
(1226,201,null,38868),
(1227,201,null,47705),
(1228,204,null,53843),
(1229,205,null,21851),
(1230,202,null,50007),
(1231,205,null,10098),
(1232,203,null,28144),
(1233,201,null,16186),
(1234,205,null,30553),
(1235,202,null,22107),
(1236,202,null,22306),
(1237,201,null,12987),
(1238,204,null,29987),
(1239,202,null,12882),
(1240,201,null,16654),
(1241,204,null,47142),
(1242,204,null,22933),
(1243,201,null,36367),
(1244,202,null,16733),
(1245,201,null,21320),
(1246,202,null,57965),
(1247,203,null,49016),
(1248,201,null,11943),
(1249,203,null,44200),
(1250,201,null,21728);


insert into departments
values
(201,'Accounts'),(202,'Data Analytics'),(203,'Data Science'),(204,'Developers'),(205,'Sales');

insert into managers
values
(1023,201),
(1013,202),
(1079,203),
(1068,204),
(1014,205) ;
-- select distinct dept_id, emp_id from employees_dept
-- order by dept_id;


insert into clients
values
(5000,'Sant-Chand','Phagwara'),
(5001,'Shah PLC','Salem'),
(5002,'Shenoy, Sandhu and Khatri','Hazaribagh'),
(5003,'Roy PLC','Bhiwandi'),
(5004,'Roy, Vala and Singh','Mehsana'),
(5005,'Sehgal PLC','Ozhukarai'),
(5006,'Tailor-Bansal','Nangloi Jat'),
(5007,'Lad, Sangha and Jha','Bhavnagar'),
(5008,'Chauhan-Saha','South Dumdum'),
(5009,'Deep PLC','Dehri'),
(5010,'Viswanathan, Kakar and Bobal','Buxar'),
(5011,'Mani, Sarin and Bala','Kottayam'),
(5012,'Bora, Dewan and Dhawan','Anantapur'),
(5013,'Madan Ltd','Meerut'),
(5014,'Thaman, Dhar and Dugar','Yamunanagar'),
(5015,'Barad Ltd','Pali'),
(5016,'Krish-Chopra','Shimla'),
(5017,'Sachdev PLC','Hajipur'),
(5018,'Reddy Group','Kadapa'),
(5019,'Bhakta Group','Bhatpara'),
(5020,'Ramachandran Ltd','Maheshtala'),
(5021,'Subramaniam, Sastry and Raja','Thrissur'),
(5022,'Luthra PLC','Ongole'),
(5023,'Soni, Lanka and Iyer','Pimpri-Chinchwad'),
(5024,'Buch-Goswami','Coimbatore'),
(5025,'Rana PLC','Danapur'),
(5026,'Jones and Sons','Davanagere'),
(5027,'Hernandez, Murphy and Kim','Solapur'),
(5028,'Olson-Rodgers','Bongaigaon'),
(5029,'Davis, Anderson and Johnson','Vijayanagaram'),
(5030,'Powell Inc','Pune'),
(5031,'Bradshaw and Sons','Sambhal'),
(5032,'Perez, Dunn and Larson','Hospet'),
(5033,'Jones and Sons','Tadipatri'),
(5034,'Martin, Williams and Davis','North Dumdum'),
(5035,'Alvarado, Stephens and Barker','Bidhannagar');

insert into projects
values
(8001,"Software Updates"),
(8002,"Software Development"),
(8003,"AI Integration"),
(8004,"Data Analysis"),
(8005,"Market Analysis"),
(8006,"Survey");

insert into project_details
values
('p-2023-000',8003,1146,1014,5006,'May','Completed'),
('p-2023-001',8003,1249,1014,5003,'October','Initiated'),
('p-2023-002',8004,1172,1068,5002,'July','Completed'),
('p-2023-003',8001,1055,1079,5005,'March','Initiated'),
('p-2023-004',8004,1030,1023,5001,'October','Review'),
('p-2023-005',8005,1078,1068,5028,'January','Stalled'),
('p-2023-006',8004,1205,1014,5025,'March','Handed Over'),
('p-2023-007',8002,1059,1079,5009,'March','Completed'),
('p-2023-008',8005,1016,1023,5002,'October','Review'),
('p-2023-009',8001,1244,1014,5008,'August','Initiated'),
('p-2023-0010',8005,1221,1068,5001,'May','Initiated'),
('p-2023-0011',8004,1008,1023,5012,'January','Approval'),
('p-2023-0012',8001,1083,1013,5009,'June','Initiated'),
('p-2023-0013',8001,1203,1079,5021,'December','Handed Over'),
('p-2023-0014',8004,1107,1013,5015,'November','Review'),
('p-2023-0015',8006,1028,1023,5026,'May','Completed'),
('p-2023-0016',8004,1186,1079,5005,'June','Initiated'),
('p-2023-0017',8003,1134,1014,5024,'November','Stalled'),
('p-2023-0018',8003,1116,1014,5022,'March','Approval'),
('p-2023-0019',8006,1102,1023,5029,'August','Completed'),
('p-2023-0020',8001,1077,1079,5001,'May','Approval'),
('p-2023-0021',8005,1111,1079,5030,'June','Approval'),
('p-2023-0022',8001,1072,1068,5030,'July','Completed'),
('p-2023-0023',8006,1060,1023,5016,'March','Handed Over'),
('p-2023-0024',8002,1138,1079,5007,'August','Initiated'),
('p-2023-0025',8002,1151,1068,5003,'February','Handed Over'),
('p-2023-0026',8001,1031,1023,5026,'February','Completed'),
('p-2023-0027',8002,1161,1013,5001,'June','Initiated'),
('p-2023-0028',8005,1048,1013,5007,'January','Review'),
('p-2023-0029',8001,1081,1013,5031,'March','Initiated'),
('p-2023-0030',8001,1075,1013,5015,'March','Completed'),
('p-2023-0031',8006,1029,1068,5014,'September','Completed'),
('p-2023-0032',8002,1125,1068,5026,'February','Stalled'),
('p-2023-0033',8006,1180,1013,5029,'October','Approval'),
('p-2023-0034',8006,1142,1023,5005,'March','Completed'),
('p-2023-0035',8001,1027,1014,5021,'November','Stalled'),
('p-2023-0036',8001,1190,1013,5031,'March','Initiated'),
('p-2023-0037',8004,1021,1023,5023,'September','Initiated'),
('p-2023-0038',8003,1196,1013,5018,'November','Completed'),
('p-2023-0039',8003,1211,1013,5021,'October','Completed'),
('p-2023-0040',8005,1184,1014,5013,'December','Review'),
('p-2023-0041',8003,1107,1023,5003,'March','Review'),
('p-2023-0042',8002,1247,1068,5030,'May','Review'),
('p-2023-0043',8003,1013,1023,5004,'May','Review'),
('p-2023-0044',8006,1187,1014,5008,'August','Approval'),
('p-2023-0045',8005,1138,1014,5018,'July','Completed'),
('p-2023-0046',8002,1025,1014,5015,'August','Stalled'),
('p-2023-0047',8004,1169,1068,5006,'November','Handed Over'),
('p-2023-0048',8002,1089,1014,5027,'July','Review'),
('p-2023-0049',8005,1170,1068,5023,'October','Review'),
('p-2023-0050',8005,1015,1014,5006,'July','Handed Over'),
('p-2023-0051',8006,1080,1023,5021,'May','Handed Over'),
('p-2023-0052',8003,1020,1014,5009,'August','Handed Over'),
('p-2023-0053',8003,1240,1079,5027,'December','Initiated'),
('p-2023-0054',8002,1107,1023,5014,'May','Initiated'),
('p-2023-0055',8001,1058,1023,5011,'September','Completed'),
('p-2023-0056',8001,1239,1068,5027,'June','Approval'),
('p-2023-0057',8006,1015,1079,5016,'June','Completed'),
('p-2023-0058',8004,1088,1079,5001,'February','Review'),
('p-2023-0059',8004,1247,1023,5018,'February','Stalled'),
('p-2023-0060',8005,1151,1068,5006,'August','Handed Over'),
('p-2023-0061',8002,1064,1013,5029,'June','Handed Over'),
('p-2023-0062',8004,1044,1014,5008,'May','Stalled'),
('p-2023-0063',8002,1062,1014,5013,'February','Completed'),
('p-2023-0064',8005,1022,1023,5002,'January','Handed Over'),
('p-2023-0065',8004,1071,1023,5023,'August','Initiated'),
('p-2023-0066',8005,1224,1079,5002,'May','Completed'),
('p-2023-0067',8006,1056,1023,5017,'May','Stalled'),
('p-2023-0068',8005,1142,1068,5021,'March','Review'),
('p-2023-0069',8006,1035,1023,5013,'May','Handed Over'),
('p-2023-0070',8006,1130,1023,5018,'June','Handed Over'),
('p-2023-0071',8004,1095,1079,5014,'June','Review'),
('p-2023-0072',8005,1243,1013,5028,'September','Approval'),
('p-2023-0073',8004,1115,1079,5006,'May','Handed Over'),
('p-2023-0074',8006,1086,1079,5016,'September','Review'),
('p-2023-0075',8005,1008,1014,5020,'June','Handed Over'),
('p-2023-0076',8005,1160,1014,5025,'August','Approval'),
('p-2023-0077',8003,1232,1023,5002,'September','Completed'),
('p-2023-0078',8003,1124,1014,5028,'December','Handed Over'),
('p-2023-0079',8004,1192,1014,5009,'March','Initiated'),
('p-2023-0080',8004,1113,1023,5016,'September','Completed'),
('p-2023-0081',8002,1102,1023,5028,'June','Initiated'),
('p-2023-0082',8006,1207,1079,5019,'October','Completed'),
('p-2023-0083',8004,1194,1023,5012,'March','Handed Over'),
('p-2023-0084',8001,1143,1023,5006,'November','Approval'),
('p-2023-0085',8003,1078,1023,5004,'March','Approval'),
('p-2023-0086',8001,1206,1014,5008,'December','Handed Over'),
('p-2023-0087',8002,1163,1013,5018,'July','Stalled'),
('p-2023-0088',8001,1028,1079,5013,'August','Approval'),
('p-2023-0089',8002,1110,1068,5028,'August','Completed'),
('p-2023-0090',8003,1075,1023,5016,'September','Handed Over'),
('p-2023-0091',8005,1028,1013,5031,'August','Handed Over'),
('p-2023-0092',8005,1178,1079,5019,'June','Approval'),
('p-2023-0093',8004,1091,1079,5007,'March','Initiated'),
('p-2023-0094',8001,1197,1013,5011,'April','Review'),
('p-2023-0095',8002,1206,1014,5018,'May','Handed Over'),
('p-2023-0096',8005,1188,1079,5022,'December','Completed'),
('p-2023-0097',8004,1155,1079,5023,'February','Completed'),
('p-2023-0098',8001,1180,1023,5023,'December','Completed'),
('p-2023-0099',8004,1036,1023,5024,'June','Review'),
('p-2023-00100',8002,1122,1023,5008,'February','Handed Over'),
('p-2023-00101',8001,1146,1023,5005,'June','Handed Over'),
('p-2023-00102',8004,1071,1014,5001,'October','Stalled'),
('p-2023-00103',8002,1086,1023,5019,'November','Approval'),
('p-2023-00104',8006,1250,1014,5016,'August','Approval'),
('p-2023-00105',8004,1125,1079,5017,'November','Initiated'),
('p-2023-00106',8005,1164,1013,5024,'January','Initiated'),
('p-2023-00107',8004,1248,1079,5017,'November','Stalled'),
('p-2023-00108',8001,1193,1013,5012,'September','Stalled'),
('p-2023-00109',8001,1061,1013,5019,'November','Initiated'),
('p-2023-00110',8005,1162,1079,5020,'August','Approval'),
('p-2023-00111',8006,1055,1079,5024,'November','Handed Over'),
('p-2023-00112',8004,1088,1013,5013,'May','Approval'),
('p-2023-00113',8004,1145,1068,5017,'April','Initiated'),
('p-2023-00114',8003,1008,1013,5014,'October','Review'),
('p-2023-00115',8005,1167,1014,5031,'March','Handed Over'),
('p-2023-00116',8003,1243,1023,5005,'April','Handed Over'),
('p-2023-00117',8001,1206,1013,5003,'June','Initiated'),
('p-2023-00118',8006,1080,1023,5017,'November','Initiated'),
('p-2023-00119',8004,1015,1068,5016,'April','Review'),
('p-2023-00120',8003,1033,1013,5009,'November','Stalled'),
('p-2023-00121',8005,1250,1023,5006,'January','Initiated'),
('p-2023-00122',8005,1159,1014,5029,'April','Completed'),
('p-2023-00123',8003,1149,1014,5016,'August','Initiated'),
('p-2023-00124',8003,1102,1014,5006,'February','Approval'),
('p-2023-00125',8003,1233,1023,5003,'November','Handed Over'),
('p-2023-00126',8006,1127,1079,5019,'November','Handed Over'),
('p-2023-00127',8004,1167,1013,5005,'February','Initiated'),
('p-2023-00128',8002,1167,1014,5017,'March','Completed'),
('p-2023-00129',8001,1140,1079,5019,'February','Approval'),
('p-2023-00130',8005,1125,1023,5015,'May','Completed'),
('p-2023-00131',8004,1246,1068,5002,'January','Initiated'),
('p-2023-00132',8003,1032,1023,5017,'June','Initiated'),
('p-2023-00133',8006,1047,1023,5028,'February','Review'),
('p-2023-00134',8002,1190,1014,5031,'October','Initiated'),
('p-2023-00135',8001,1052,1068,5030,'December','Handed Over'),
('p-2023-00136',8004,1125,1013,5001,'May','Approval'),
('p-2023-00137',8006,1125,1023,5026,'February','Review'),
('p-2023-00138',8005,1080,1079,5015,'November','Approval'),
('p-2023-00139',8001,1176,1023,5023,'September','Initiated'),
('p-2023-00140',8005,1148,1014,5012,'July','Handed Over'),
('p-2023-00141',8001,1010,1023,5010,'November','Approval'),
('p-2023-00142',8003,1043,1079,5026,'May','Review'),
('p-2023-00143',8006,1181,1014,5023,'August','Review'),
('p-2023-00144',8004,1044,1023,5019,'July','Handed Over'),
('p-2023-00145',8005,1030,1068,5003,'December','Review'),
('p-2023-00146',8002,1020,1014,5027,'April','Review'),
('p-2023-00147',8001,1222,1068,5004,'February','Approval'),
('p-2023-00148',8002,1029,1023,5025,'August','Initiated'),
('p-2023-00149',8006,1063,1013,5013,'April','Handed Over'),
('p-2023-00150',8003,1182,1079,5020,'July','Review'),
('p-2023-00151',8003,1146,1014,5024,'March','Approval'),
('p-2023-00152',8002,1134,1023,5015,'May','Stalled'),
('p-2023-00153',8003,1221,1013,5021,'September','Approval'),
('p-2023-00154',8003,1237,1079,5009,'August','Handed Over'),
('p-2023-00155',8006,1062,1023,5008,'January','Review'),
('p-2023-00156',8002,1005,1068,5027,'April','Completed'),
('p-2023-00157',8006,1156,1014,5018,'February','Stalled'),
('p-2023-00158',8005,1067,1014,5025,'June','Approval'),
('p-2023-00159',8006,1219,1068,5004,'July','Handed Over'),
('p-2023-00160',8003,1088,1023,5022,'May','Approval'),
('p-2023-00161',8003,1089,1023,5004,'July','Approval'),
('p-2023-00162',8003,1145,1023,5011,'October','Review'),
('p-2023-00163',8001,1242,1079,5013,'December','Handed Over'),
('p-2023-00164',8002,1245,1079,5012,'August','Approval'),
('p-2023-00165',8005,1039,1023,5022,'April','Approval'),
('p-2023-00166',8003,1162,1023,5005,'May','Review'),
('p-2023-00167',8002,1047,1013,5015,'June','Approval'),
('p-2023-00168',8002,1140,1014,5006,'August','Review'),
('p-2023-00169',8004,1102,1013,5031,'February','Initiated'),
('p-2023-00170',8003,1149,1023,5018,'October','Initiated'),
('p-2023-00171',8001,1057,1023,5006,'December','Completed'),
('p-2023-00172',8004,1247,1079,5027,'March','Review'),
('p-2023-00173',8005,1206,1013,5028,'April','Review'),
('p-2023-00174',8003,1054,1013,5016,'September','Initiated'),
('p-2023-00175',8004,1022,1079,5009,'October','Handed Over'),
('p-2023-00176',8003,1064,1023,5029,'June','Handed Over'),
('p-2023-00177',8003,1045,1023,5029,'December','Review'),
('p-2023-00178',8006,1106,1068,5029,'September','Handed Over'),
('p-2023-00179',8006,1148,1013,5025,'April','Review'),
('p-2023-00180',8004,1034,1023,5002,'April','Approval'),
('p-2023-00181',8002,1060,1013,5002,'March','Review'),
('p-2023-00182',8005,1004,1068,5026,'May','Stalled'),
('p-2023-00183',8001,1237,1023,5007,'July','Handed Over'),
('p-2023-00184',8006,1114,1079,5004,'November','Stalled'),
('p-2023-00185',8005,1145,1013,5013,'April','Completed'),
('p-2023-00186',8001,1224,1023,5026,'June','Stalled'),
('p-2023-00187',8003,1206,1068,5017,'June','Review'),
('p-2023-00188',8005,1245,1079,5024,'January','Initiated'),
('p-2023-00189',8002,1223,1079,5024,'June','Approval'),
('p-2023-00190',8006,1147,1014,5017,'November','Review'),
('p-2023-00191',8001,1173,1079,5022,'November','Stalled'),
('p-2023-00192',8001,1167,1023,5017,'October','Handed Over'),
('p-2023-00193',8006,1190,1079,5010,'March','Review'),
('p-2023-00194',8006,1036,1013,5012,'August','Initiated'),
('p-2023-00195',8002,1111,1068,5008,'June','Approval'),
('p-2023-00196',8002,1143,1023,5014,'July','Completed'),
('p-2023-00197',8006,1181,1079,5022,'October','Handed Over'),
('p-2023-00198',8003,1010,1013,5005,'November','Completed'),
('p-2023-00199',8002,1084,1079,5006,'May','Completed');

-- ********************************************************************************************************************************************************************
-- Setting Values
-- ********************************************************************************************************************************************************************
update employees_dept
set manager_id = case
				when dept_id=201 then 1023
                when dept_id=202 then 1013
                when dept_id=203 then 1079
                when dept_id=204 then 1068
                when dept_id=205 then 1014
                end;


-- ********************************************************************************************************************************************************************
-- ALTERING TABLES
-- ********************************************************************************************************************************************************************

alter table employees_dept
add FOREIGN KEY (dept_id) references departments(dept_id),
add FOREIGN KEY (manager_id) references managers(manager_id);



select * from employees_dept;
select * from employees_info;
select * from managers;
select * from departments;
SELECT * from projects;
select * from clients;
select * from project_details;


