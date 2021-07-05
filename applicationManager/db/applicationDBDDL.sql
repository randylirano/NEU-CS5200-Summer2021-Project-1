PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Decision" (
	"decision_id"	INTEGER NOT NULL,
	"decision_desc"	TEXT NOT NULL,
	PRIMARY KEY("decision_id" AUTOINCREMENT)
);
INSERT INTO Decision VALUES(1,'hired');
INSERT INTO Decision VALUES(2,'rejected');
CREATE TABLE IF NOT EXISTS "Application" (
	"application_id"	INTEGER NOT NULL,
	"submission_date"	TEXT NOT NULL,
	"applicant_qualification"	TEXT NOT NULL,
	"decision_id"	INTEGER NOT NULL,
	"applicant_id"	INTEGER NOT NULL,
	PRIMARY KEY("application_id" AUTOINCREMENT),
	FOREIGN KEY("applicant_id") REFERENCES "Applicant"("applicant_id"),
	FOREIGN KEY("decision_id") REFERENCES "Decision"("decision_id")
);
INSERT INTO Application VALUES(1,'07/04/2021','Java',1,1);
INSERT INTO Application VALUES(2,'07/05/2021','Java',1,2);
INSERT INTO Application VALUES(3,'07/04/2021','Java',1,3);
INSERT INTO Application VALUES(4,'07/06/2021','Python',2,3);
INSERT INTO Application VALUES(5,'07/06/2021','SQL',1,3);
CREATE TABLE IF NOT EXISTS "Applicant" (
	"applicant_id"	INTEGER NOT NULL,
	"first_name"	TEXT NOT NULL,
	"last_name"	TEXT NOT NULL,
	"email"	TEXT NOT NULL,
	"phone_number"	TEXT,
	PRIMARY KEY("applicant_id" AUTOINCREMENT)
);
INSERT INTO Applicant VALUES(1,'Faunie','Blaxlande','fblaxlande0@ebay.com','128-455-6151');
INSERT INTO Applicant VALUES(2,'Kissie','Fanstone','kfanstone1@bandcamp.com','590-334-0838');
INSERT INTO Applicant VALUES(3,'Bryn','Caffrey','bcaffrey2@deviantart.com','692-510-5995');
INSERT INTO Applicant VALUES(4,'Royall','Elnor','relnor3@pbs.org','293-638-8333');
INSERT INTO Applicant VALUES(5,'Garfield','MacColm','gmaccolm4@ftc.gov','749-858-1031');
INSERT INTO Applicant VALUES(6,'Nolana','Rekes','nrekes5@businesswire.com','349-536-8261');
INSERT INTO Applicant VALUES(7,'Griselda','Middlebrook','gmiddlebrook6@miibeian.gov.cn','998-295-5913');
INSERT INTO Applicant VALUES(8,'Calhoun','Barroux','cbarroux7@cam.ac.uk','144-756-1643');
INSERT INTO Applicant VALUES(9,'Domenico','Pimlett','dpimlett8@dagondesign.com','578-332-7652');
INSERT INTO Applicant VALUES(10,'Alvinia','Thew','athew9@adobe.com','436-252-8898');
INSERT INTO Applicant VALUES(11,'Raina','Benfield','rbenfielda@youtu.be','874-979-7137');
INSERT INTO Applicant VALUES(12,'Rosalie','Newgrosh','rnewgroshb@hostgator.com','398-289-7453');
INSERT INTO Applicant VALUES(13,'Hope','Castle','hcastlec@weather.com','976-803-5470');
INSERT INTO Applicant VALUES(14,'Barbi','Terney','bterneyd@blogs.com','110-978-0931');
INSERT INTO Applicant VALUES(15,'Glenden','Boniface','gbonifacee@t.co','924-469-7086');
INSERT INTO Applicant VALUES(16,'Lucina','Mudie','lmudief@cmu.edu','499-825-4363');
INSERT INTO Applicant VALUES(17,'Reynard','Petty','rpettyg@technorati.com','687-352-0328');
INSERT INTO Applicant VALUES(18,'Sibella','Squier','ssquierh@cnn.com','657-995-5713');
INSERT INTO Applicant VALUES(19,'Danell','Chippendale','dchippendalei@amazon.co.jp','620-704-4171');
INSERT INTO Applicant VALUES(20,'Guillermo','Domenichelli','gdomenichellij@rambler.ru','677-801-4815');
INSERT INTO Applicant VALUES(21,'Jeannine','Casoni','jcasonik@blogspot.com','314-644-5546');
INSERT INTO Applicant VALUES(22,'Thomasina','Count','tcountl@army.mil','591-295-3100');
INSERT INTO Applicant VALUES(23,'Maximilian','Farres','mfarresm@microsoft.com','704-261-5003');
INSERT INTO Applicant VALUES(24,'Rozelle','Mingardo','rmingardon@army.mil','625-947-7957');
INSERT INTO Applicant VALUES(25,'Lin','MacGall','lmacgallo@dot.gov','485-641-9407');
INSERT INTO Applicant VALUES(26,'Lyndsey','Levecque','llevecquep@irs.gov','760-417-2206');
INSERT INTO Applicant VALUES(27,'Germain','Chree','gchreeq@psu.edu','252-902-2075');
INSERT INTO Applicant VALUES(28,'Lazar','Justun','ljustunr@nationalgeographic.com','765-162-0794');
INSERT INTO Applicant VALUES(29,'Maria','McGilvray','mmcgilvrays@ow.ly','577-744-6958');
INSERT INTO Applicant VALUES(30,'Stefanie','Etheridge','setheridget@goo.gl','795-537-4479');
INSERT INTO Applicant VALUES(31,'Dalt','Gon','dgonu@nationalgeographic.com','878-870-8279');
INSERT INTO Applicant VALUES(32,'Rickert','Gilliland','rgillilandv@privacy.gov.au','511-336-8090');
INSERT INTO Applicant VALUES(33,'Douglas','Bolger','dbolgerw@webs.com','780-620-1353');
INSERT INTO Applicant VALUES(34,'Fiona','Livingston','flivingstonx@msn.com','769-800-4746');
INSERT INTO Applicant VALUES(35,'Faith','Manders','fmandersy@dailymail.co.uk','241-145-7513');
INSERT INTO Applicant VALUES(36,'Adelbert','Patullo','apatulloz@merriam-webster.com','759-375-9989');
INSERT INTO Applicant VALUES(37,'Yule','Broggelli','ybroggelli10@guardian.co.uk','974-142-5373');
INSERT INTO Applicant VALUES(38,'Troy','Potbury','tpotbury11@hibu.com','299-696-1910');
INSERT INTO Applicant VALUES(39,'Karylin','Kalvin','kkalvin12@ft.com','584-123-5442');
INSERT INTO Applicant VALUES(40,'Dickie','Pigdon','dpigdon13@howstuffworks.com','686-933-9256');
INSERT INTO Applicant VALUES(41,'Petronille','Golda','pgolda14@odnoklassniki.ru','161-171-2341');
INSERT INTO Applicant VALUES(42,'Mead','Dignan','mdignan15@google.it','673-244-3198');
INSERT INTO Applicant VALUES(43,'Stan','Addlestone','saddlestone16@liveinternet.ru','761-269-3049');
INSERT INTO Applicant VALUES(44,'Ariella','Tregoning','atregoning17@themeforest.net','631-158-2965');
INSERT INTO Applicant VALUES(45,'Erik','Skoughman','eskoughman18@cbsnews.com','727-838-3563');
INSERT INTO Applicant VALUES(46,'Roley','Chadbourne','rchadbourne19@rambler.ru','954-583-0158');
INSERT INTO Applicant VALUES(47,'Grace','Allso','gallso1a@dedecms.com','878-933-9277');
INSERT INTO Applicant VALUES(48,'Brendon','Ivey','bivey1b@unesco.org','404-111-2766');
INSERT INTO Applicant VALUES(49,'Roch','Klagges','rklagges1c@slate.com','934-913-8163');
INSERT INTO Applicant VALUES(50,'Kingsley','Medwell','kmedwell1d@dailymail.co.uk','334-147-5837');
INSERT INTO Applicant VALUES(51,'Britta','Renyard','brenyard1e@tumblr.com','122-100-5852');
INSERT INTO Applicant VALUES(52,'Georgiana','Colten','gcolten1f@google.it','171-432-6829');
INSERT INTO Applicant VALUES(53,'Durand','Rapps','drapps1g@earthlink.net','958-540-1060');
INSERT INTO Applicant VALUES(54,'Ximenez','Fedder','xfedder1h@eepurl.com','462-693-8205');
INSERT INTO Applicant VALUES(55,'Micheal','Whiteley','mwhiteley1i@zimbio.com','601-585-3860');
INSERT INTO Applicant VALUES(56,'Papageno','Wilstead','pwilstead1j@webmd.com','435-722-6576');
INSERT INTO Applicant VALUES(57,'Garrott','Emm','gemm1k@dedecms.com','311-139-6907');
INSERT INTO Applicant VALUES(58,'Johanna','Strathe','jstrathe1l@seattletimes.com','782-213-0572');
INSERT INTO Applicant VALUES(59,'Lorianne','Ranahan','lranahan1m@hubpages.com','423-696-5065');
INSERT INTO Applicant VALUES(60,'Mommy','Dufore','mdufore1n@zimbio.com','587-569-1775');
INSERT INTO Applicant VALUES(61,'Killy','Baynon','kbaynon1o@adobe.com','957-428-2014');
INSERT INTO Applicant VALUES(62,'Berthe','Vondra','bvondra1p@themeforest.net','716-307-1424');
INSERT INTO Applicant VALUES(63,'Windy','Mathonnet','wmathonnet1q@eepurl.com','311-355-7838');
INSERT INTO Applicant VALUES(64,'Eba','Lean','elean1r@toplist.cz','396-381-9185');
INSERT INTO Applicant VALUES(65,'Fredra','Reide','freide1s@npr.org','431-106-7116');
INSERT INTO Applicant VALUES(66,'Lana','Balazot','lbalazot1t@mit.edu','707-986-3275');
INSERT INTO Applicant VALUES(67,'Moishe','Fraczkiewicz','mfraczkiewicz1u@cafepress.com','980-414-7543');
INSERT INTO Applicant VALUES(68,'Gannie','Empson','gempson1v@census.gov','899-858-9475');
INSERT INTO Applicant VALUES(69,'Moria','Bru','mbru1w@cbslocal.com','490-823-1235');
INSERT INTO Applicant VALUES(70,'Chilton','Brine','cbrine1x@mysql.com','705-612-1979');
INSERT INTO Applicant VALUES(71,'Judith','Oiseau','joiseau1y@time.com','745-248-4566');
INSERT INTO Applicant VALUES(72,'Charmain','Boulton','cboulton1z@liveinternet.ru','403-870-5683');
INSERT INTO Applicant VALUES(73,'Libbi','Tommis','ltommis20@discovery.com','198-695-6452');
INSERT INTO Applicant VALUES(74,'Leila','Haggerwood','lhaggerwood21@etsy.com','526-729-3027');
INSERT INTO Applicant VALUES(75,'Johnette','Armin','jarmin22@t-online.de','895-729-1753');
INSERT INTO Applicant VALUES(76,'Walden','Gittis','wgittis23@berkeley.edu','789-858-7401');
INSERT INTO Applicant VALUES(77,'Leann','Hassen','lhassen24@canalblog.com','176-502-1936');
INSERT INTO Applicant VALUES(78,'Fanya','Honisch','fhonisch25@google.co.jp','224-595-2668');
INSERT INTO Applicant VALUES(79,'Odelinda','Aizlewood','oaizlewood26@dyndns.org','806-977-4523');
INSERT INTO Applicant VALUES(80,'Nadya','Matschek','nmatschek27@acquirethisname.com','325-204-0963');
INSERT INTO Applicant VALUES(81,'Mordy','Grigorushkin','mgrigorushkin28@opera.com','315-278-1920');
INSERT INTO Applicant VALUES(82,'Ragnar','Kolodziejski','rkolodziejski29@livejournal.com','615-441-8168');
INSERT INTO Applicant VALUES(83,'Roseanna','Ranyelld','rranyelld2a@ucla.edu','621-117-4783');
INSERT INTO Applicant VALUES(84,'Fairlie','Dear','fdear2b@wunderground.com','244-961-9183');
INSERT INTO Applicant VALUES(85,'Anders','Tume','atume2c@sphinn.com','501-555-0613');
INSERT INTO Applicant VALUES(86,'Babbette','DeSousa','bdesousa2d@house.gov','781-737-2871');
INSERT INTO Applicant VALUES(87,'Zebedee','Menicomb','zmenicomb2e@ezinearticles.com','141-207-5406');
INSERT INTO Applicant VALUES(88,'Franz','Hoonahan','fhoonahan2f@symantec.com','407-690-0948');
INSERT INTO Applicant VALUES(89,'Harbert','Burchess','hburchess2g@github.io','406-141-8623');
INSERT INTO Applicant VALUES(90,'Mandie','Maddra','mmaddra2h@4shared.com','867-515-2015');
INSERT INTO Applicant VALUES(91,'Bay','Bullar','bbullar2i@bandcamp.com','476-405-1028');
INSERT INTO Applicant VALUES(92,'Dixie','Tulley','dtulley2j@oracle.com','135-864-9705');
INSERT INTO Applicant VALUES(93,'Wynn','Luggar','wluggar2k@webeden.co.uk','610-999-8736');
INSERT INTO Applicant VALUES(94,'Peadar','Chanson','pchanson2l@ehow.com','644-870-0347');
INSERT INTO Applicant VALUES(95,'Jo','Scourfield','jscourfield2m@youku.com','308-326-6685');
INSERT INTO Applicant VALUES(96,'Vladamir','Sorton','vsorton2n@is.gd','840-356-6833');
INSERT INTO Applicant VALUES(97,'Delmor','Jaouen','djaouen2o@yahoo.com','363-645-4325');
INSERT INTO Applicant VALUES(98,'Rhianna','Sleightholm','rsleightholm2p@mashable.com','121-715-0358');
INSERT INTO Applicant VALUES(99,'Adolphe','Rosenschein','arosenschein2q@plala.or.jp','409-565-7020');
INSERT INTO Applicant VALUES(100,'Craggy','Stormouth','cstormouth2r@biblegateway.com','749-663-4396');
CREATE TABLE IF NOT EXISTS "Posting" (
	"posting_id"	INTEGER NOT NULL,
	"position"	TEXT NOT NULL,
	"posting_date"	TEXT NOT NULL,
	"job_description"	TEXT NOT NULL,
	"annual_salary"	TEXT NOT NULL,
	"minimum_qualification"	TEXT NOT NULL,
	PRIMARY KEY("posting_id" AUTOINCREMENT)
);
INSERT INTO Posting VALUES(1,'Senior Financial Analyst','11/27/2020','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','$94758.03','WLM');
INSERT INTO Posting VALUES(2,'Human Resources Assistant II','01/27/2021','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','$96175.92','Aerospace');
INSERT INTO Posting VALUES(3,'Professor','08/06/2020','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','$108127.77','KRAs');
INSERT INTO Posting VALUES(4,'Assistant Manager','11/14/2020','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','$119813.15','EIFS');
INSERT INTO Posting VALUES(5,'Quality Control Specialist','11/26/2020','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','$124047.51','iVantage');
INSERT INTO Posting VALUES(6,'Data Coordiator','12/05/2020','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','$112839.43','Ethnography');
INSERT INTO Posting VALUES(7,'Programmer II','12/23/2020','Phasellus in felis. Donec semper sapien a libero. Nam dui.','$118084.73','NDF');
INSERT INTO Posting VALUES(8,'Office Assistant III','08/16/2020','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','$111078.14','PowerPoint');
INSERT INTO Posting VALUES(9,'Quality Control Specialist','06/05/2021','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','$115681.61','DTI');
INSERT INTO Posting VALUES(10,'Biostatistician II','06/10/2021','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','$114159.32','FP-C');
INSERT INTO Posting VALUES(11,'Librarian','01/20/2021','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','$114943.73','Banking');
INSERT INTO Posting VALUES(12,'Senior Developer','06/26/2021','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','$93661.32','Private Piloting');
INSERT INTO Posting VALUES(13,'Nuclear Power Engineer','02/02/2021','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','$99505.01','NICET');
INSERT INTO Posting VALUES(14,'Automation Specialist II','01/14/2021','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','$90348.27','BSI Tax Factory');
INSERT INTO Posting VALUES(15,'Executive Secretary','06/23/2021','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','$116301.98','SBMS');
INSERT INTO Posting VALUES(16,'Food Chemist','08/27/2020','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','$120506.87','Family Law');
INSERT INTO Posting VALUES(17,'VP Quality Control','07/03/2021','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','$104408.23','JCL');
INSERT INTO Posting VALUES(18,'Senior Cost Accountant','10/17/2020','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','$93771.30','Influence Others');
INSERT INTO Posting VALUES(19,'Staff Scientist','05/02/2021','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','$96021.40','EEOC');
INSERT INTO Posting VALUES(20,'Structural Engineer','07/17/2020','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','$101701.36','IT Transformation');
INSERT INTO Posting VALUES(21,'Executive Secretary','04/23/2021','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','$105740.48','CCNP');
INSERT INTO Posting VALUES(22,'Statistician III','07/26/2020','Fusce consequat. Nulla nisl. Nunc nisl.','$108224.53','JPA');
INSERT INTO Posting VALUES(23,'Occupational Therapist','05/07/2021','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','$100928.91','IABP');
INSERT INTO Posting VALUES(24,'Nuclear Power Engineer','08/05/2020','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','$115072.74','Access');
INSERT INTO Posting VALUES(25,'VP Product Management','08/24/2020','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','$108910.08','RNA Biology');
INSERT INTO Posting VALUES(26,'Marketing Manager','07/24/2020','In congue. Etiam justo. Etiam pretium iaculis justo.','$112926.71','CMC Regulatory Affairs');
INSERT INTO Posting VALUES(27,'Biostatistician I','07/08/2020','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','$128278.97','HCS12');
INSERT INTO Posting VALUES(28,'Health Coach IV','10/12/2020','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','$112609.03','JPEG2000');
INSERT INTO Posting VALUES(29,'Operator','10/15/2020','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','$125523.23','FxCop');
INSERT INTO Posting VALUES(30,'Accounting Assistant I','09/29/2020','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','$114404.02','Zend Studio');
INSERT INTO Posting VALUES(31,'Tax Accountant','03/28/2021','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','$117895.77','Yacht Racing');
INSERT INTO Posting VALUES(32,'Business Systems Development Analyst','11/15/2020','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','$92523.03','Eyebrow');
INSERT INTO Posting VALUES(33,'Analog Circuit Design manager','07/12/2020','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','$128828.71','CTM');
INSERT INTO Posting VALUES(34,'Programmer Analyst I','09/25/2020','In congue. Etiam justo. Etiam pretium iaculis justo.','$95835.05','Airport Management');
INSERT INTO Posting VALUES(35,'Human Resources Manager','05/13/2021','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','$125242.23','FTPS');
INSERT INTO Posting VALUES(36,'Information Systems Manager','02/13/2021','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','$96478.18','Culinary Skills');
INSERT INTO Posting VALUES(37,'Assistant Media Planner','10/10/2020','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','$126456.77','MPLS-TP');
INSERT INTO Posting VALUES(38,'Research Assistant IV','03/10/2021','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','$117886.32','UED');
INSERT INTO Posting VALUES(39,'Data Coordiator','09/28/2020','Fusce consequat. Nulla nisl. Nunc nisl.','$122058.80','TIBCO');
INSERT INTO Posting VALUES(40,'Marketing Assistant','01/03/2021','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','$127947.33','Electronics');
INSERT INTO Posting VALUES(41,'Senior Developer','01/23/2021','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','$113052.55','PDS');
INSERT INTO Posting VALUES(42,'Electrical Engineer','08/25/2020','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.','$99998.17','GNU Radio');
INSERT INTO Posting VALUES(43,'Human Resources Manager','11/28/2020','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','$107745.88','Guardianship');
INSERT INTO Posting VALUES(44,'Human Resources Manager','02/02/2021','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','$120175.05','Vegetables');
INSERT INTO Posting VALUES(45,'Software Test Engineer II','02/01/2021','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','$134211.64','Gemba Kaizen');
INSERT INTO Posting VALUES(46,'Mechanical Systems Engineer','08/19/2020','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','$111467.54','Rooms Division');
INSERT INTO Posting VALUES(47,'Actuary','11/04/2020','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','$91126.46','HP XP');
INSERT INTO Posting VALUES(48,'Senior Quality Engineer','06/01/2021','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','$111930.47','Facilitation');
INSERT INTO Posting VALUES(49,'Financial Advisor','05/30/2021','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','$134033.36','RMS');
INSERT INTO Posting VALUES(50,'Graphic Designer','07/05/2020','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','$119769.73','Legal Liability');
INSERT INTO Posting VALUES(51,'Quality Engineer','11/23/2020','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','$114977.44','PE');
INSERT INTO Posting VALUES(52,'Community Outreach Specialist','09/08/2020','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','$92097.49','Nutrition');
INSERT INTO Posting VALUES(53,'Statistician III','08/27/2020','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','$120096.29','Sustainable Design');
INSERT INTO Posting VALUES(54,'Chemical Engineer','05/26/2021','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','$99328.02','Organizational Behavior');
INSERT INTO Posting VALUES(55,'Community Outreach Specialist','09/12/2020','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','$91373.77','Data Modeling');
INSERT INTO Posting VALUES(56,'Social Worker','09/07/2020','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','$95185.86','NCQA');
INSERT INTO Posting VALUES(57,'Technical Writer','11/28/2020','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','$109721.28','GUI development');
INSERT INTO Posting VALUES(58,'Assistant Professor','10/29/2020','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','$98856.92','ZoomInfo');
INSERT INTO Posting VALUES(59,'Nurse','04/14/2021','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','$105210.67','Djembe');
INSERT INTO Posting VALUES(60,'Internal Auditor','08/07/2020','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','$94370.49','HDMI');
INSERT INTO Posting VALUES(61,'Operator','12/03/2020','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','$131153.41','HLSL');
INSERT INTO Posting VALUES(62,'Design Engineer','06/17/2021','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','$112879.37','SNMP');
INSERT INTO Posting VALUES(63,'VP Product Management','06/24/2021','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','$95929.97','PDF Creator');
INSERT INTO Posting VALUES(64,'Office Assistant II','01/21/2021','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','$116917.52','People-oriented');
INSERT INTO Posting VALUES(65,'Technical Writer','12/11/2020','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','$127877.86','IEEE 802.11');
INSERT INTO Posting VALUES(66,'Dental Hygienist','10/11/2020','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','$107493.99','NX-OS');
INSERT INTO Posting VALUES(67,'Recruiting Manager','02/16/2021','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','$116317.03','OMAP');
INSERT INTO Posting VALUES(68,'Recruiter','03/30/2021','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','$130876.19','XPAC');
INSERT INTO Posting VALUES(69,'Quality Engineer','10/25/2020','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','$108911.68','Change Control');
INSERT INTO Posting VALUES(70,'VP Product Management','02/26/2021','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','$126145.44','Ocean');
INSERT INTO Posting VALUES(71,'Administrative Officer','03/19/2021','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','$103015.50','Tax Preparation');
INSERT INTO Posting VALUES(72,'Professor','02/25/2021','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','$100362.17','JPEG');
INSERT INTO Posting VALUES(73,'Software Consultant','02/04/2021','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','$118969.82','Active-HDL');
INSERT INTO Posting VALUES(74,'Teacher','08/15/2020','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','$133761.67','zLinux');
INSERT INTO Posting VALUES(75,'Food Chemist','04/04/2021','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','$102368.70','DCID 6/3');
INSERT INTO Posting VALUES(76,'VP Accounting','10/26/2020','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','$99245.64','DSO');
INSERT INTO Posting VALUES(77,'VP Quality Control','12/12/2020','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','$134175.07','Business Transformation');
INSERT INTO Posting VALUES(78,'Software Test Engineer I','12/05/2020','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','$127113.14','Snoring');
INSERT INTO Posting VALUES(79,'Administrative Assistant II','09/29/2020','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.','$102720.97','Radio Advertising');
INSERT INTO Posting VALUES(80,'Research Associate','03/26/2021','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','$101879.52','GWT');
INSERT INTO Posting VALUES(81,'Developer I','07/23/2020','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','$100446.00','Broadcast Television');
INSERT INTO Posting VALUES(82,'Actuary','06/06/2021','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','$131152.59','Drug Development');
INSERT INTO Posting VALUES(83,'Human Resources Manager','09/11/2020','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','$96331.29','XRF');
INSERT INTO Posting VALUES(84,'Tax Accountant','01/24/2021','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','$93206.61','OCLC Connexion');
INSERT INTO Posting VALUES(85,'Occupational Therapist','09/04/2020','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','$116778.33','CPR Certified');
INSERT INTO Posting VALUES(86,'Human Resources Assistant II','04/21/2021','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','$107232.90','Chemistry');
INSERT INTO Posting VALUES(87,'Associate Professor','08/29/2020','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','$134008.16','DITA XML');
INSERT INTO Posting VALUES(88,'Safety Technician I','07/24/2020','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','$112999.54','RRC');
INSERT INTO Posting VALUES(89,'Accounting Assistant III','10/08/2020','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','$110094.98','JBuilder');
INSERT INTO Posting VALUES(90,'Help Desk Technician','10/18/2020','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','$133019.41','FP7');
INSERT INTO Posting VALUES(91,'Mechanical Systems Engineer','10/24/2020','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','$122595.36','Wicklander-Zulawski Interview &amp; Interrogation');
INSERT INTO Posting VALUES(92,'Paralegal','12/25/2020','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','$91038.02','VMware Player');
INSERT INTO Posting VALUES(93,'Web Designer IV','02/06/2021','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','$128472.53','Characterization');
INSERT INTO Posting VALUES(94,'Structural Engineer','02/27/2021','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','$102444.30','Vulnerability Scanning');
INSERT INTO Posting VALUES(95,'Analyst Programmer','07/12/2020','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','$125301.39','Crystal Xcelsius');
INSERT INTO Posting VALUES(96,'Staff Accountant IV','11/20/2020','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','$128831.17','PKCS');
INSERT INTO Posting VALUES(97,'Human Resources Assistant I','01/05/2021','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','$102401.05','Apparel');
INSERT INTO Posting VALUES(98,'Director of Sales','10/11/2020','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','$108951.84','CTD');
INSERT INTO Posting VALUES(99,'Account Executive','09/24/2020','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','$106111.36','FDR');
INSERT INTO Posting VALUES(100,'Occupational Therapist','02/08/2021','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','$109430.02','Quality Control');
CREATE TABLE IF NOT EXISTS "PostingApplication" (
	"posting_id"	INTEGER NOT NULL,
	"application_id"	INTEGER NOT NULL,
	FOREIGN KEY("application_id") REFERENCES "Application"("application_id"),
	FOREIGN KEY("posting_id") REFERENCES "Posting"("posting_id"),
	PRIMARY KEY("posting_id","application_id")
);
INSERT INTO PostingApplication VALUES(1,1);
INSERT INTO PostingApplication VALUES(1,2);
INSERT INTO PostingApplication VALUES(1,3);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('Applicant',100);
INSERT INTO sqlite_sequence VALUES('Posting',100);
INSERT INTO sqlite_sequence VALUES('Decision',2);
INSERT INTO sqlite_sequence VALUES('Application',5);
COMMIT;
