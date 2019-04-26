INSERT ALL
	INTO ContentType (ContentType_ID,Type_Name,Insurance_Val) VALUES ('I01', 'Electronics', 1)
	INTO ContentType (ContentType_ID,Type_Name,Insurance_Val) VALUES ('I02', 'Jewellery', 2)
	INTO ContentType (ContentType_ID,Type_Name,Insurance_Val) VALUES ('I03', 'Cosmetics', 0)
	INTO ContentType (ContentType_ID,Type_Name,Insurance_Val) VALUES ('I04', 'Toys', 0)
	INTO ContentType (ContentType_ID,Type_Name,Insurance_Val) VALUES ('I05', 'Miscellaneuous', None)
	INTO ContentType (ContentType_ID,Type_Name,Insurance_Val) VALUES ('I06', 'Clothes', None)
	INTO MailType (MailType_ID,Type_Name,Max_Weight,Min_Weight) VALUES ('M001', 'letter mail', 2000, 1)
	INTO MailType (MailType_ID,Type_Name,Max_Weight,Min_Weight) VALUES ('M002', 'post card', 2, 1)
	INTO MailType (MailType_ID,Type_Name,Max_Weight,Min_Weight) VALUES ('M003', 'small packet', 2000, 10)
	INTO MailType (MailType_ID,Type_Name,Max_Weight,Min_Weight) VALUES ('M004', 'domestic parcel', 30000, 100)
	INTO Priority (Priority_ID,Name,Cost) VALUES (01, '1-Day', 350)
	INTO Priority (Priority_ID,Name,Cost) VALUES (02, '3-days ', 150)
	INTO Priority (Priority_ID,Name,Cost) VALUES (03, '3-days express', 200)
	INTO Priority (Priority_ID,Name,Cost) VALUES (04, 'Urgent Same Day', 500)
	INTO Priority (Priority_ID,Name,Cost) VALUES (05, '5-days', 50)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300000, 'Naveed', 'Murtaza', 03335647228, 0211598583)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300001, 'Jai', 'Parisa', 03147989024, None)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300002, 'Zulfaqar', 'Damodar', 03340480183, 0422308768)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300003, 'Shafaqat', 'Bolanle', 03419531055, 0210255946)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300004, 'Akanksha', 'Dagodar', None, 0218781094)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300005, 'Dakarai', 'Naziha', 03446190243, 0219473121)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300006, 'ApoorvaGilta', None, 03311865268, None)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300007, 'Amar ', 'Rasul', 03416183464, 0421853565)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300008, 'Yasamin ', 'Sima', None, 03428848559)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300009, 'Akram ', 'Guda', 03428828559, 0213811215)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300010, 'Masoud ', None, 03111427332, None)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300011, 'Rifat ', 'Riya', None, 0211754243)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300012, 'Ruya ', 'Sumati', 03230686336, 0426466049)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300013, 'Thando ', 'Isa', None, 03017161144)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300014, 'Mubin ', 'Nail', 03029579052, 0212111993)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300015, 'Rahat ', 'Ajita', 03426447062, None)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300016, 'Raja ', 'Awiti', 03022225901, 0511183823)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300017, 'Maqsood', 'Amala', 0517102342, None)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300018, 'Wafula', 'Nkiruka', 03445478793, None)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300019, 'Hisham', 'Firdaus', 03205413251, 0212785049)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300020, 'Apoorva ', 'Shahrazad', 03348124962, None)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300021, 'Apoorva ', 'Shahrazad', None, 051362727)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300022, 'Apoorva ', 'Shahrazad', 03348124990, None)
	INTO Details (Details_ID,FirstName,LastName,MobileNo,TelNo) VALUES (300023, 'Amar', 'Rasul', 03024138351, 0423620657)
	INTO StatusType (Status_ID,Description) VALUES ('ARV', 'Arrived at')
	INTO StatusType (Status_ID,Description) VALUES ('DPT', 'Departed from')
	INTO StatusType (Status_ID,Description) VALUES ('CRR', 'Courier dispatched')
	INTO StatusType (Status_ID,Description) VALUES ('DLV', 'Delivered')
	INTO StatusType (Status_ID,Description) VALUES ('UCL', 'Unclaimed')
	INTO StatusType (Status_ID,Description) VALUES ('BNC', 'Bounced')
	INTO StatusType (Status_ID,Description) VALUES ('STR', 'Second try for delivery')
	INTO StatusType (Status_ID,Description) VALUES ('BRC', 'Bounced Received')
	INTO StatusType (Status_ID,Description) VALUES ('CBL', 'Cannot be located')
	INTO POType (Type_ID,Type_Name) VALUES (01, 'NPO')
	INTO POType (Type_ID,Type_Name) VALUES (02, 'PO')
	INTO POType (Type_ID,Type_Name) VALUES (03, 'SO')
	INTO POType (Type_ID,Type_Name) VALUES (04, 'PO NPO')
	INTO POType (Type_ID,Type_Name) VALUES (05, 'TSO')
	INTO POType (Type_ID,Type_Name) VALUES (06, 'NPO SO')
	INTO POType (Type_ID,Type_Name) VALUES (07, 'HSG')
	INTO POType (Type_ID,Type_Name) VALUES (08, 'LSG')
	INTO POType (Type_ID,Type_Name) VALUES (09, 'GPO NPO')
	INTO POType (Type_ID,Type_Name) VALUES (10, 'EDSO')
	INTO POType (Type_ID,Type_Name) VALUES (11, 'HPO')
	INTO POType (Type_ID,Type_Name) VALUES (12, 'GPO')
	INTO Province (Province_ID,Name) VALUES ('AJAK', 'Azad Jammu & Kashmir')
	INTO Province (Province_ID,Name) VALUES ('BLCH', 'Balochistan')
	INTO Province (Province_ID,Name) VALUES ('FATA', 'Federally Administered Tribal Areas')
	INTO Province (Province_ID,Name) VALUES ('GIBL', 'Gilgit & Baltistan')
	INTO Province (Province_ID,Name) VALUES ('KHPK', 'Khyber Pakhtoon Khoa')
	INTO Province (Province_ID,Name) VALUES ('PNJB', 'Punjab')
	INTO Province (Province_ID,Name) VALUES ('SNDH', 'Sindh')
	INTO Province (Province_ID,Name) VALUES ('FDRL', 'Fedral Capital Territory')
	INTO City (City_ID,Province_ID,Name) VALUES (6, 'AJAK', 'Mirpur')
	INTO City (City_ID,Province_ID,Name) VALUES (7, 'AJAK', 'Muzaffarabad')
	INTO City (City_ID,Province_ID,Name) VALUES (11, 'BLCH', 'Chaman')
	INTO City (City_ID,Province_ID,Name) VALUES (12, 'BLCH', 'Bela')
	INTO City (City_ID,Province_ID,Name) VALUES (13, 'BLCH', 'Lasbela')
	INTO City (City_ID,Province_ID,Name) VALUES (130, 'GIBL', 'Hunza')
	INTO City (City_ID,Province_ID,Name) VALUES (131, 'GIBL', 'Gilgit')
	INTO City (City_ID,Province_ID,Name) VALUES (141, 'FATA', 'Khyber Agency')
	INTO City (City_ID,Province_ID,Name) VALUES (142, 'FATA', 'Kurram Agency')
	INTO City (City_ID,Province_ID,Name) VALUES (143, 'FATA', 'North Waziristan')
	INTO City (City_ID,Province_ID,Name) VALUES (146, 'KHPK', 'Abbottabad')
	INTO City (City_ID,Province_ID,Name) VALUES (147, 'KHPK', 'Ayubia')
	INTO City (City_ID,Province_ID,Name) VALUES (180, 'KHPK', 'Peshawar')
	INTO City (City_ID,Province_ID,Name) VALUES (184, 'KHPK', 'Swabi')
	INTO City (City_ID,Province_ID,Name) VALUES (191, 'PNJB', 'Multan')
	INTO City (City_ID,Province_ID,Name) VALUES (192, 'PNJB', 'Bahawalpur')
	INTO City (City_ID,Province_ID,Name) VALUES (193, 'PNJB', 'Faisalabad')
	INTO City (City_ID,Province_ID,Name) VALUES (194, 'PNJB', 'Lahore')
	INTO City (City_ID,Province_ID,Name) VALUES (178, 'PNJB', 'Rawalpindi')
	INTO City (City_ID,Province_ID,Name) VALUES (195, 'PNJB', 'Rahim Yar Khan')
	INTO City (City_ID,Province_ID,Name) VALUES (299, 'SNDH', 'Karachi')
	INTO City (City_ID,Province_ID,Name) VALUES (300, 'SNDH', 'Dadu')
	INTO City (City_ID,Province_ID,Name) VALUES (301, 'SNDH', 'Hyderabad')
	INTO City (City_ID,Province_ID,Name) VALUES (456, 'FEDR', 'Islamabad')
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (09001, 'INDUSTRIAL AREA HUB', 89100, None, None, 'BLCH', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (08481, 'LORALAI CANTT', 84800, None, None, 'BLCH', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (08734, 'QUETTA CANTT', 87300, None, None, 'BLCH', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (08051, 'DERA ALLAH YAR', 82000, None, None, 'BLCH', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (04482, 'DIRECTORATE GENERAL', 44000, None, None, 'FDRL', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (04401, 'ISLAMABAD', 44000, None, None, 'FDRL', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (04404, 'ISLAMABAD, G-6/1', 44000, None, None, 'FDRL', 03)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (04411, 'ISLAMABAD, S. BLOCK', 44000, None, None, 'FDRL', 03)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (01511, 'GILGIT, CHIEF COURT', 15100, None, None, 'GIBL', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (01514, 'GILGIT', 15100, None, None, 'GIBL', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (01611, 'SKARDU', 16100, None, None, 'GIBL', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02202, 'ABBOTTABAD CANTT', 22010, None, None, 'KHPK', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02811, 'BANNU', 28100, None, None, 'KHPK', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02441, 'CHARSADDA', 24420, None, None, 'KHPK', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02903, 'D.I.KHAN', 29050, None, None, 'KHPK', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02261, 'HARIPUR', 22620, None, None, 'KHPK', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02722, 'KARAK', 27200, None, None, 'KHPK', 03)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02611, 'KOHAT', 26000, None, None, 'KHPK', 09)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02832, 'NOUROZ BHATTANI', 28420, None, None, 'KHPK', 03)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02131, 'MANSEHRA CITY', 21300, None, None, 'KHPK', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02321, 'MARDAN', 23200, None, None, 'KHPK', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02411, 'NOWSHERA', 24100, None, None, 'KHPK', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (02503, 'PESHAWAR CITY', 25000, None, None, 'KHPK', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (01923, 'UNIVERSITY OF SWAT', 19200, None, None, 'KHPK', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (04361, 'ATTOCK', 43600, None, None, 'PNJB', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (06315, 'MODEL TOWN "A"', 63100, None, None, 'PNJB', 05)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (04881, 'CHAKWAL', 48800, None, None, 'PNJB', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (03804, 'CHIBBAN', 38000, None, None, 'PNJB', 03)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (05227, 'COLLEGE ROAD', 52250, None, None, 'PNJB', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (05230, 'JAMIA ASHRAFIA', 52250, None, None, 'PNJB', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (05075, 'A.B.S.HOSPITAL', 50700, None, None, 'PNJB', 05)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (04941, 'DINA', 49600, None, None, 'PNJB', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (04921, 'SOHAWA', 49600, None, None, 'PNJB', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (05459, 'GULBERG', 54000, None, None, 'PNJB', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (05436, 'LAHORE AIRPORT', 54000, None, None, 'PNJB', 08)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (05495, 'SAMANABAD', 54000, None, None, 'PNJB', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (05405, 'ISLAMPURA', 54000, None, None, 'PNJB', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (05041, 'MANDI BAHAUDDIN', 50401, None, None, 'PNJB', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (06421, 'RAHIM YAR KHAN', 64200, None, None, 'PNJB', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (05157, 'NEKAPURA', 51310, None, None, 'PNJB', 05)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (04702, 'NAWABABAD', 47040, None, None, 'PNJB', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (07621, 'DADU', 76200, None, None, 'SNDH', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (07623, 'NEW DISTT JAIL DADU', 76200, None, None, 'SNDH', 10)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (07181, 'LATIFABAD', 71000, None, None, 'SNDH', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (07504, 'GODHRA', 74700, None, None, 'SNDH', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (07511, 'SURJANI TOWN', 74700, None, None, 'SNDH', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (07537, 'LEA QUARTER', 74200, None, None, 'SNDH', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (07561, 'DEFENCE', 74100, None, None, 'SNDH', 02)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (07582, 'MALIR CANTT', 74900, None, None, 'SNDH', 01)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (89100, 'Khuzdar', 89100, None, None, 'BLCH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (84800, 'LORALAI', 84800, None, None, 'BLCH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (87300, 'QUETTA', 87300, None, None, 'BLCH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (82000, 'SIBI', 82000, None, None, 'BLCH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (44000, 'ISLAMABAD', 44000, None, None, 'FDRL', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (15100, 'GILGIT', 15100, None, None, 'GIBL', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (16100, 'SKARDU', 16100, None, None, 'GIBL', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (22010, 'ABBOTTABAD', 22010, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (28100, 'BANNU', 28100, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (24420, 'CHARSADDA', 24420, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (29050, 'D.I.KHAN', 29050, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (22620, 'HARIPUR', 22620, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (27200, 'KARAK', 27200, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (26000, 'KOHAT', 26000, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (28420, 'LAKKI MARWAT', 28420, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (21300, 'MANSEHRA', 21300, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (23200, 'MARDAN', 23200, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (24100, 'NOWSHERA', 24100, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (25000, 'PESHAWAR', 25000, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (19200, 'SAIDU', 19200, None, None, 'KHPK', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (43600, 'ATTOCK', 43600, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (63100, 'BAHAWALPUR', 63100, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (48800, 'CHAKWAL', 48800, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (38000, 'FASIALABAD', 38000, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (52250, 'GUJRANWALA', 52250, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (50700, 'GUJRAT', 50700, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (49600, 'JEHLUM', 49600, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (54000, 'LAHORE', 54000, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (50401, 'MANDI BAHAUDDIN', 50401, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (64200, 'RAHIM YAR KHAN', 64200, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (51310, 'SIALKOT', 51310, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (47040, 'WAH CANTT', 47040, None, None, 'PNJB', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (76200, 'DADU', 76200, None, None, 'SNDH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (71000, 'HYDERABAD', 71000, None, None, 'SNDH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (74700, 'KARACHI ALHYDERI', 74700, None, None, 'SNDH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (74200, 'KARACHI MAIN', 74200, None, None, 'SNDH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (74100, 'KARACHI SADDAR', 74100, None, None, 'SNDH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (62500, 'SUKKUR', 62500, None, None, 'SNDH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (74900, 'KORANGI', 74900, None, None, 'SNDH', 12)
	INTO PostOffice (PostalCode,PostOffice_Name,AccountOffice_ID,Manager_ID,TelNo,Province_ID,Type_ID) VALUES (06521, 'SUKKUR', 62500, None, None, 'SNDH', 01)
	INTO Employee (Emp_ID,FirstName,LastName,MobileNo,TelNo,DOB,CNIC,Join_Date) VALUES (70001, 'Jai', 'Parisa', 03113139889, 0518465899, TO_DATE('1986-11-11 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3201046766462, TO_DATE('2010-01-10 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Employee (Emp_ID,FirstName,LastName,MobileNo,TelNo,DOB,CNIC,Join_Date) VALUES (70002, 'Mubin', 'Nail', 0453414313, 0213517485, TO_DATE('1986-11-11 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3534155312341, TO_DATE('2010-07-18 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Employee (Emp_ID,FirstName,LastName,MobileNo,TelNo,DOB,CNIC,Join_Date) VALUES (70003, 'Rifat', 'Riya', None, 0518569071, TO_DATE('1990-06-10 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3440000423313, TO_DATE('2010-08-07 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Employee (Emp_ID,FirstName,LastName,MobileNo,TelNo,DOB,CNIC,Join_Date) VALUES (70004, 'Janab', 'Muhammad', 03018819201, None, TO_DATE('1975-03-13 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3303575131232, TO_DATE('2011-01-26 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Employee (Emp_ID,FirstName,LastName,MobileNo,TelNo,DOB,CNIC,Join_Date) VALUES (70005, 'Kibria', 'Junaid', 03058210308, 0519813023, TO_DATE('1994-02-28 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3413411005378, TO_DATE('2011-05-21 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Employee (Emp_ID,FirstName,LastName,MobileNo,TelNo,DOB,CNIC,Join_Date) VALUES (70006, 'Faheem', 'Qazi', 03009992837, 0519918239, TO_DATE('1975-06-01 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3525127173516, TO_DATE('2011-10-31 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Employee (Emp_ID,FirstName,LastName,MobileNo,TelNo,DOB,CNIC,Join_Date) VALUES (70007, 'Abdullah', 'Sabri', 03068182930, None, TO_DATE('1980-01-12 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3551430146524, TO_DATE('2011-11-06 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Employee (Emp_ID,FirstName,LastName,MobileNo,TelNo,DOB,CNIC,Join_Date) VALUES (70008, 'Daniyal', 'Muhammad', 03226574891, 0428031081, TO_DATE('1992-12-23 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3441301716235, TO_DATE('2014-11-24 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Employee (Emp_ID,FirstName,LastName,MobileNo,TelNo,DOB,CNIC,Join_Date) VALUES (70009, 'Sadia', 'Shafqat', 03236667982, 0518028130, TO_DATE('1991-08-06 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3251504415353, TO_DATE('2015-02-10 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Employee (Emp_ID,FirstName,LastName,MobileNo,TelNo,DOB,CNIC,Join_Date) VALUES (70010, 'Fariha', 'Jabeen', 03468881920, None, TO_DATE('1992-07-18 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3234045413344, TO_DATE('2015-10-11 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO MailDetail (MailType_ID,SerialNo,Max_Weight,Min_Weight,Cost) VALUES ('M001', 1, 250, 1, 8)
	INTO MailDetail (MailType_ID,SerialNo,Max_Weight,Min_Weight,Cost) VALUES ('M001', 2, 1000, 251, 15)
	INTO MailDetail (MailType_ID,SerialNo,Max_Weight,Min_Weight,Cost) VALUES ('M001', 3, 2000, 1001, 20)
	INTO MailDetail (MailType_ID,SerialNo,Max_Weight,Min_Weight,Cost) VALUES ('M002', 1, 2, 1, 20)
	INTO MailDetail (MailType_ID,SerialNo,Max_Weight,Min_Weight,Cost) VALUES ('M003', 1, 250, 10, 10)
	INTO MailDetail (MailType_ID,SerialNo,Max_Weight,Min_Weight,Cost) VALUES ('M003', 2, 1500, 251, 35)
	INTO MailDetail (MailType_ID,SerialNo,Max_Weight,Min_Weight,Cost) VALUES ('M004', 1, 10000, 100, 100)
	INTO MailDetail (MailType_ID,SerialNo,Max_Weight,Min_Weight,Cost) VALUES ('M004', 2, 20000, 10001, 200)
	INTO MailDetail (MailType_ID,SerialNo,Max_Weight,Min_Weight,Cost) VALUES ('M004', 3, 30000, 20001, 300)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102001, 'House#23, Street 11, E-11/4, Islamabad', 456, 40400)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102002, 'House#2, Street 9, F-7/1, Islamabad', 456, 40400)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102003, 'House 11, Jinnah Road, Lahore', 194, None)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102004, 'House#33, Gulbahar colony, Multan', 191, 9900)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102005, 'Flat No#31, Block A, Eagle Complex, Lahore', 194, 3052)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102006, 'House# 69, F-11/1, Islamabad', 456, 40400)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102007, 'Flat#45, Shara Building, Rawalpindi', 178, 90110)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102008, 'Flat#9, Al-Sahara Building, Lahore', 194, None)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102009, 'House no.90, Al-Kareem Colony, Lahore', 194, 3080)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102010, 'House#49, Gulshan-e-Quaid, RWP', 178, None)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102011, 'House#41, Street#21, G-10/4, Islamabad', 456, 88000)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102012, 'House#92, Street#13, G-10/3, Islamabad', 456, 88000)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102013, 'House#92, Street#13, G-10/3, Islamabad', 456, 88000)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102014, 'House#92, Street#13, G-10/3, Islamabad', 456, None)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102015, 'Flat 34, Block C, C-type Aprt, G-9/1, ISB', 456, 88000)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102016, 'Flat 09, Faisal Tower, Lahore', 194, 4010)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102017, 'Makan 34, Gali 12, Gohar Colony, Hyderabad', 301, None)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102018, 'Villa#45, Sea View colony, Karachi', 299, None)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102019, 'Flat#12, Khan Building, Peshawar', 180, None)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102020, 'House#87, F-11/4, Islamabad', 456, 40400)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102021, 'House#415, Street 488, Block D, Modal Town, Lahore', 194, None)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102022, 'Apartment 401, Floor#4, Abdullah Qasim Towers, Karachi', 299, 74650)
	INTO DomesticAddresses (Address_ID,StreetAddress,City_ID,PostalCode) VALUES (102023, 'Flat#69, Tower#7, E-11/1', 456, 4010)
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10000, 300000, TO_DATE('1976-11-11 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3325143272575, TO_DATE('2018-07-18 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10001, 300001, TO_DATE('1992-09-24 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3311234175013, TO_DATE('2013-07-18 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10002, 300004, TO_DATE('1993-02-28 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3111035314741, TO_DATE('2012-06-08 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10003, 300006, TO_DATE('1987-01-12 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3234045461740, TO_DATE('2010-11-17 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10004, 300007, TO_DATE('1992-04-23 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3252247233414, TO_DATE('2015-01-03 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10005, 300009, TO_DATE('1994-09-21 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3201046766705, TO_DATE('2012-07-18 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10006, 300011, TO_DATE('1995-04-14 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3440000443511, TO_DATE('2015-11-06 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10007, 300012, TO_DATE('1988-04-13 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3303575132033, TO_DATE('2013-01-10 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10008, 300013, TO_DATE('1971-02-22 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3413411005350, TO_DATE('2012-10-11 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10009, 300015, TO_DATE('1985-04-03 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3551430110263, TO_DATE('2017-05-21 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Customer (Customer_ID,Details_ID,DOB,CNIC,RegDate) VALUES (10010, 300017, TO_DATE('1962-08-10 00:00:00','yyyy/mm/dd hh24:mi:ss'), 3251504415423, TO_DATE('2014-11-24 00:00:00','yyyy/mm/dd hh24:mi:ss'))
	INTO Invoice (Invoice_ID,Agent_ID,PostalCode,Invoice_Date,TotalPrice,Qty) VALUES (230002924, 70009, 04881, TO_DATE('2019-06-16 00:00:00','yyyy/mm/dd hh24:mi:ss'), 185, 1)
	INTO Invoice (Invoice_ID,Agent_ID,PostalCode,Invoice_Date,TotalPrice,Qty) VALUES (230002925, 70001, 04411, TO_DATE('2019-08-16 00:00:00','yyyy/mm/dd hh24:mi:ss'), 200, 1)
	INTO Invoice (Invoice_ID,Agent_ID,PostalCode,Invoice_Date,TotalPrice,Qty) VALUES (230002926, 70002, 03804, TO_DATE('2019-08-16 00:00:00','yyyy/mm/dd hh24:mi:ss'), 555, 1)
	INTO Invoice (Invoice_ID,Agent_ID,PostalCode,Invoice_Date,TotalPrice,Qty) VALUES (230002927, 70004, 05041, TO_DATE('2019-01-05 00:00:00','yyyy/mm/dd hh24:mi:ss'), 8, 1)
	INTO Invoice (Invoice_ID,Agent_ID,PostalCode,Invoice_Date,TotalPrice,Qty) VALUES (230002928, 70005, 05405, TO_DATE('2019-06-11 00:00:00','yyyy/mm/dd hh24:mi:ss'), 70, 1)
	INTO Invoice (Invoice_ID,Agent_ID,PostalCode,Invoice_Date,TotalPrice,Qty) VALUES (230002929, 70003, 04404, TO_DATE('2019-10-25 00:00:00','yyyy/mm/dd hh24:mi:ss'), 20, 1)
	INTO Invoice (Invoice_ID,Agent_ID,PostalCode,Invoice_Date,TotalPrice,Qty) VALUES (230002930, 70010, 04361, TO_DATE('2019-03-13 00:00:00','yyyy/mm/dd hh24:mi:ss'), 550, 1)
	INTO Invoice (Invoice_ID,Agent_ID,PostalCode,Invoice_Date,TotalPrice,Qty) VALUES (230002931, 70009, 04881, TO_DATE('2019-06-26 00:00:00','yyyy/mm/dd hh24:mi:ss'), 743, 3)
	INTO Invoice (Invoice_ID,Agent_ID,PostalCode,Invoice_Date,TotalPrice,Qty) VALUES (230002932, 70007, 04401, TO_DATE('2019-06-26 00:00:00','yyyy/mm/dd hh24:mi:ss'), -15, 1)
	INTO Customer_Invoice (Invoice_ID,Customer_ID) VALUES (230002924, 10001)
	INTO Customer_Invoice (Invoice_ID,Customer_ID) VALUES (230002925, 10000)
	INTO Customer_Invoice (Invoice_ID,Customer_ID) VALUES (230002926, 10005)
	INTO Customer_Invoice (Invoice_ID,Customer_ID) VALUES (230002930, 10010)
	INTO Customer_Invoice (Invoice_ID,Customer_ID) VALUES (230002931, 10000)
	INTO Customer_Invoice (Invoice_ID,Customer_ID) VALUES (230002932, 10000)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10000, 102001)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10001, 102002)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10002, 102003)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10003, 102004)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10004, 102006)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10005, 102009)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10006, 102010)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10007, 102011)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10008, 102015)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10009, 102016)
	INTO Customer_Addresses (Customer_ID,Address_ID) VALUES (10010, 102017)
	INTO Mail (Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty) VALUES (40001923, 102002, 300001, 102020, 300003, None, 02, 'M003', 1000, None, 0, 0, 1)
	INTO Mail (Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty) VALUES (40001924, 102001, 300000, 102009, 300009, None, None, 'M004', 20000, None, 0, 0, 1)
	INTO Mail (Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty) VALUES (40001925, 102010, 300009, 102018, 300002, 'I02', 04, 'M003', 500, 10000, 1, 0, 1)
	INTO Mail (Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty) VALUES (40001926, 102021, 300005, 102002, 300001, None, None, 'M001', 250, None, 0, 0, 1)
	INTO Mail (Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty) VALUES (40001927, 102005, 300008, 102007, 300023, 'I05', None, 'M001', 1500, None, 0, 0, 1)
	INTO Mail (Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty) VALUES (40001928, 102013, 300018, 102022, 300019, None, 05, 'M002', 2, None, 0, 0, 1)
	INTO Mail (Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty) VALUES (40001929, 102017, 300017, 102023, 300016, 'I04', 04, 'M004', 17000, 3000, 0, 0, 1)
	INTO Mail (Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty) VALUES (40001930, 102001, 300000, 102016, 300014, 'I01', 01, 'M004', 5600, 6000, 1, 0, 1)
	INTO Mail (Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty) VALUES (40001931, 102001, 300000, 102017, 300017, None, 05, 'M001', 20, None, 0, 0, 1)
	INTO Mail (Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty) VALUES (40001932, 102001, 300000, 102019, 300022, 'I03', None, 'M003', 700, None, 0, 1, 1)
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002924, 40001923, 185, 'Shafqat')
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002925, 40001924, 200, 'Akram')
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002926, 40001925, 555, 'Zulfaqar')
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002927, 40001926, 8, None)
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002928, 40001927, 70, 'Ayesha')
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002929, 40001928, 20, 'Hisham')
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002930, 40001929, 550, None)
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002931, 40001930, 670, 'Mubin')
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002931, 40001931, 58, 'Raza')
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002931, 40001932, 15, 'Apoorva')
	INTO Mail_Invoice (Invoice_ID,Barcode,Price,Signature) VALUES (230002932, 40001932, -15, None)
	INTO PostalEmployee (Emp_ID,PostalOffice) VALUES (70001, 04411)
	INTO PostalEmployee (Emp_ID,PostalOffice) VALUES (70002, 03804)
	INTO PostalEmployee (Emp_ID,PostalOffice) VALUES (70003, 04404)
	INTO PostalEmployee (Emp_ID,PostalOffice) VALUES (70004, 05041)
	INTO PostalEmployee (Emp_ID,PostalOffice) VALUES (70005, 05405)
	INTO PostalEmployee (Emp_ID,PostalOffice) VALUES (70006, 04411)
	INTO PostalEmployee (Emp_ID,PostalOffice) VALUES (70007, 04411)
	INTO PostalEmployee (Emp_ID,PostalOffice) VALUES (70008, 05405)
	INTO PostalEmployee (Emp_ID,PostalOffice) VALUES (70009, 04881)
	INTO PostalEmployee (Emp_ID,PostalOffice) VALUES (70010, 04361)
SELECT * FROM dual;