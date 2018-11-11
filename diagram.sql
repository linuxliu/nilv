SET sql_mode='NO_AUTO_VALUE_ON_ZERO';
DROP  TABLE IF EXISTS `tb_innate_diagram`;
CREATE TABLE `tb_innate_diagram`  (
  `id` TINYINT NOT NULL,
  `name` varchar(1) NOT NULL,
  `nick_name` varchar(1) NOT NULL,
  `mnemanic` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;

insert into tb_innate_diagram values(0, '乾','天','乾三连');
insert into tb_innate_diagram values(1, '兑','泽','兑上缺');
insert into tb_innate_diagram values(2, '离','火','离中虚');
insert into tb_innate_diagram values(3, '震','雷','震仰盂');
insert into tb_innate_diagram values(4, '巽','风','巽下断');
insert into tb_innate_diagram values(5, '坎','水','坎中满');
insert into tb_innate_diagram values(6, '艮','山','艮覆碗');
insert into tb_innate_diagram values(7, '坤','地','坤六断');

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';
DROP TABLE IF EXISTS `tb_normal_diagram`;
CREATE TABLE `tb_normal_diagram` (
  `id` TINYINT NOT NULL,
  `name` varchar(2) NOT NULL,
  `img_url` varchar(128) NOT NULL,
  `words` varchar(128) NOT NULL,
  `xiang_words` varchar(128) NOT NULL,
  `dytj_words` varchar(128) NOT NULL,
  `shaoyong_words` varchar(128) NOT NULL,
  `down_id` TINYINT NOT NULL,
  `up_id` TINYINT NOT NULL,
  `hu_id` TINYINT NOT  NULL,
  `cuo_id` TINYINT NOT NULL ,
  `zong_id` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  foreign key(`down_id`) references tb_innate_diagram(`id`),
  foreign key(`up_id`) references tb_innate_diagram(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into tb_normal_diagram values(0 , '乾','0' ,'元，亨，利，贞。', '象曰：天行健，君子以自强不息。', '乾象征天，六阳爻构成乾卦，为《易经》六十四卦之首。纯阳刚建，其性刚强，其行劲健，大通而至正，兆示大通而有利，但须行正道，方可永远亨通。', '刚健旺盛，发育之功；完事顺利，谨防太强。 得此卦者，天行刚健，自强不息，名利双收之象，宜把握机会，争取成果。女人得此卦则有过于刚直之嫌。',0,0,0,63,0);
insert into tb_normal_diagram values(63, '坤','63','元，亨，利牝马之贞。君子有攸往，先迷后得主。利西南得朋，东北丧朋。安贞，吉。', '象曰：地势坤，君子以厚德载物。', '坤卦坤上坤下，为坤宫本位卦。坤卦为柔顺，为地气舒展之象，具有纯阴之性，先失道而后得主，宜往西南，西南可得到朋友。', '柔顺和静，厚载之功；静守安顺，妄动招损。 得此卦者，宜顺从运势，以静制动，不宜独立谋事，顺从他人，一起合作，可成大事。',7,7,63,0,63);
insert into tb_normal_diagram values(29, '屯','29','元，亨，利，贞。勿用，有攸往，利建侯。', '象曰：云，雷，屯；君子以经纶。', '屯卦坎上震下，为坎宫二世卦。屯说明有困难，又象征动而逢险境，需刚毅果敢方为吉。', '万物始生，开始困难；先劳后逸，苦尽甘来。 得此卦者，身处困境，宜守不宜进，须多加辛苦努力，排除困难，方可通达，有初难后解之象。',3,5,62,34,46);
insert into tb_normal_diagram values(46, '蒙','46','亨。匪我求童蒙，童蒙求我。初筮告，再三渎，渎则不告。利贞。', '象曰：山下出泉，蒙。君子以果行育德。', '蒙卦艮上坎下，为离宫四世卦。蒙即蒙昧，主回还往复，疑惑不前，多忧愁过失，乃是凶卦。', '智慧未开，蒙昧闭塞；犹豫不决，缺乏果断。 得此卦者，智慧犹如童蒙，不辨是非，迷失方向；若能顺贤师良友之教，启其聪明则亨通。',5,6,31,17,29);
insert into tb_normal_diagram values(5 , '需','5' ,'有孚，光亨，贞吉。利涉大川。', '象曰：云上于天，需；君子以饮食宴乐。', '需卦坎上乾下，为坤宫游魂卦。需为踌躇、期待，虽然刚强，但前面有险阻，应当等待，涉大川则利。', '坎陷当前，遇阻不进；大器晚成，收成在后。 得此卦者，时机尚未成熟，需要耐心等待，急进反会见凶。',0,5,10,58,40);
insert into tb_normal_diagram values(40, '讼','40','有孚，窒惕，中吉，终凶。利见大人，不利涉大川。', '象曰：天与水违行，讼。君子以做事谋始。', '讼卦乾上坎下，为离宫游魂卦。上乾为刚，下坎为险，一方刚强，一方阴险，必然产生争论，因此多有不吉。', '天高水深，达远不亲；慎谋退守，敬畏无凶。 得此卦者，身心不安，事多不顺，与他人多争诉之事，宜修身养性，谨慎处事。',5,0,20,23,5);
insert into tb_normal_diagram values(47, '师','47','贞，丈人吉，无咎。', '象曰：地中有水，师。君子以容民畜众。', '师卦坤上坎下，为坎宫归魂卦。师即兵众，只有选择德高望重的长者来统率军队，才能吉祥无咎。', '忧劳动众，变化无穷；公正无私，排除万难。 得此卦者，困难重重，忧心劳众，宜包容别人，艰苦努力，摒除一切困难。',5,7,31,16,61);
insert into tb_normal_diagram values(61, '比','61','吉。原筮，元永贞，无咎。不宁方来，后夫凶。', '象曰：地上有水，比。先王以建万国，亲诸侯。', '比卦坎上坤下，为坤宫归魂卦。比为相亲相依附之意，长期如此，就会无咎，所以吉祥。', '水行地上，亲比欢乐；人情亲顺，百事无忧。 得此卦者，可获朋友之助，众人之力，谋事有成，荣显之极。',7,5,62,2,47);
insert into tb_normal_diagram values(4 , '小畜','4','亨。密云不雨，自我西郊。', '象曰：风行天上，小畜。君子以懿文德。', '小畜卦巽上乾下，为巽宫初世卦。小畜为小的蓄积、小的阻碍，阳盛而阴不足，以致不得不暂时停顿，但终究还能亨通。', '力量寡弱，阻止前进；藏器待时，耐心推进。 得此卦者，力量薄弱，运势反覆，宜蓄养实力，静待时机，急进则有险，凡事须耐心推进。',0,4,10,59,8);
insert into tb_normal_diagram values(8 , '履','8','履虎尾，不咥人，亨。', '象曰：上天下泽，履。君子以辨上下，定民志。', '履卦乾上兑下，为艮宫五世卦。履为履行之意，又寓意礼，提示占筮者要兢兢戒惧，遵守礼节，这样才有惊无险。', '步履不安，困难危险；谦虚自重，敬慎事主。 得此卦者，困难时期，多坎坷不顺，万事不宜急进，须循序渐进，谨慎行事。',1,0,20,55,4);
insert into tb_normal_diagram values(7 , '泰','7','小往大来，吉亨。', '象曰：天地交，泰。后以财（裁）成天地之道，辅相天地之宜，以左右民。', '泰卦坤上乾下，为坤宫三世卦。此卦所失者小，所得者大，若是占得此卦，将会失小而得大。', '小往大来，通泰吉祥；泰极转否，事宜固守。 得此卦者，否极泰来，鸿运当头，诸事皆顺，但须防乐极生悲。',0,7,11,56,56);
insert into tb_normal_diagram values(56, '否','56','否之匪人。不利君子贞。大往小来。', '象曰：天地不交，否。君子以俭德辟难，不可荣以禄。', '否卦乾上坤下，为乾宫三世卦。否象征闭塞不通，是不吉之兆。否卦中，阴阳不交，是一切都不和谐之象。', '大往小来，闭塞不通；否极泰来，修德避难。 得此卦者，万物闭塞之象，上下不合，诸事不顺，凡事宜忍，须待时运好转而有为。',7,0,52,7,7);
insert into tb_normal_diagram values(16, '同人','16', '同人于野，亨。利涉大川，利君子贞。', '象曰：天与火，同人；君子以类族辨物。', '同人卦乾上离下，为离宫归魂卦。同人卦象征交结情深，两人契义，同心断金。主所求皆得，事事称心。', '人类相亲，与人和同；所求皆得，无不称心。 得此卦者，吉祥如意，与人合作共事更佳，上下同心，谋事有成。',2,0,32,47,2);
insert into tb_normal_diagram values(2, '大有','2','元亨。', '象曰：火在天上，大有。君子以遏恶扬善，顺天休命。', '大有卦离上乾下，为乾宫归魂卦。大有卦为柔得尊位，抑恶扬善，丰财利义，象征天命所归，得人心，因此主吉。', '日丽中天，遍照万物；盛大富有，持盈保泰。 得此卦者，正当好运，事事吉祥，大有收获，但需防物极必反，盛极转衰。',0,2,1,61,16);
insert into tb_normal_diagram values(55, '谦','55','亨，君子有终。', '象曰：地中有山，谦。君子以裒多益寡，称物平施。', '谦卦坤上艮下，为兑宫五世卦。谦为谦逊，内卦艮和外卦坤都是谦虚之象，所以为吉利之卦。', '谦和忍让，尊人自卑；利用谦虚，万事可达。 得此卦者，吉利平安，步步高升。谦虚忍让者前途大好，骄横者必招败。谦受益，满招损。',6,7,43,8,59);
insert into tb_normal_diagram values(59, '豫','59','利建侯行师。', '象曰：雷出地奋，豫。先王以作乐崇德，殷荐之上帝，以配祖考。', '豫卦震上坤下，为震宫初世卦。雷出地奋，象征春雷使万物苏醒，君王之威行于子民，因此有利于建候、行师。', '雷出地上，悦服快乐；安乐之中，预防忧患。 得此卦者，顺天应时，事事吉祥，可得长辈之助，但须防色难，切不可沉迷于声色欢场之中。',7,3,53,4,55);
insert into tb_normal_diagram values(25, '随','25','元亨，利贞，无咎。', '象曰：泽中有雷，随。君子以向晦入宴息。', '随卦兑上震下，为震宫归魂卦。随即顺从、随时之意，占得此卦，凡事顺心，吉无不利。', '随顺和同，贞固自持；随从机运，不能专横。 得此卦者，宜随大势，其事可成。凡事与他人多沟通交流，可名利双收。切不可坚持己见，专横者事不成。',3,1,52,38,38);
insert into tb_normal_diagram values(38, '蛊','38','元亨，利涉大川。先甲三日，后甲三日。', '象曰：山下有风，蛊。君子以振民育德。', '蛊卦艮上巽下，为巽宫归魂卦。蛊是指皿中食物因腐败而生虫，筮遇此卦，半凶半吉。', '三蛊在器，事物败坏；辛勤丁宁，转危为安。 得此卦者，艰难迷惑之时，事事不如意；宜大胆革新，奋发图强，艰苦努力，可转危为安。',4,6,11,25,25);
insert into tb_normal_diagram values(15, '临','15','元，亨，利，贞。至于八月有凶。', '象曰：泽上有地，临。君子以教思无穷，客保民无疆。', '临卦坤上兑下，为坤宫二世卦。临卦下兑为悦，上坤为顺，欢悦而顺从，保证可以亨通。', '以上临下，相佐相互；居安思危，时时慎戒。 得此卦者，好运来到，诸事如意，人情和合，但行事不宜过于急进。',1,7,31,48,60);
insert into tb_normal_diagram values(60, '观','60','盥而不荐，有孚顒若。', '象曰：风行地上，观。先王以省方，观民设教。', '观卦巽上坤下，为乾宫四世卦。观卦象征将道义展示于众人面前。观卦风在上而地在下，是春风浩荡、万物滋生之象。', '以下观上，周游观览；平心静气，坚守岗位。 得此卦者，处身于变化之中，心神不宁，宜多观察入微，待机行事，切勿妄进。',7,4,62,3,15);
insert into tb_normal_diagram values(26, '噬嗑','26','亨。利用狱。', '象曰：雷电噬嗑。先王以明罚敕法。', '噬嗑卦离上震下，为巽宫五世卦。噬嗑为咬合之意，象征物品咬碎之后才能通过。此卦于诉讼有利。', '咬碎硬骨，强硬态度；事多困阻，积极谋求。 得此卦者，事不遂心，纷争难免，诸事被阻，宜坚守常规，不为利诱，可保平安。',3,2,53,37,22);
insert into tb_normal_diagram values(22, '贲','22','亨。小利有攸往。', '象曰：山下有火，贲。君子以明庶政，无敢折狱。', '贲卦艮上离下，为艮宫初世卦。贲为装饰之意，离为明，艮为止，表示有文明的制度使人们止于一定的规范，因此多为吉兆。', '文饰光明，外实内需；隐忧之时，量力而为。 得此卦者，表面风光，内在空虚，多虚少实。宜充实自己，稳重行事，量力而为。',2,6,43,21,26);
insert into tb_normal_diagram values(62, '剥','62', '不利有攸往。', '象曰：山附于地，剥。上以厚下，安宅。', '剥卦艮上坤下，为乾宫五世卦。剥卦象征剥落，因山高倾危而剥落。此时为阴气极盛之时，君子宜谨慎隐忍，不可贸然行动。', '剥削蚀烂，灾情之忧；进取难成，顺时而止。 得此卦者，时运不佳，多有损失，前进有阻，宜顺时而止，安份自守。',7,6,63,1,31);
insert into tb_normal_diagram values(31, '复','31','亨。出入无疾，朋来无咎。反复其道，七日来复，利有攸往。', '象曰：雷在地中，复。先王以至日闭关，商旅不行，后不省方。', '复卦坤上震下，为坤宫初世卦。复代表阴阳去而复返，使万物生生不息，预示已逝去的可能会再回来。', '循环往复，生机复萌；成功在望，性急即败。 得此卦者，时运好转，顺势而为，谋事可成，但不宜过于急进。',3,7,63,32,62);
insert into tb_normal_diagram values(24, '无妄','24','元，亨，利，贞。其匪正有眚，不利有攸往。', '象曰：天下雷行，物与无妄。先王以茂对时，育万物。', '无妄卦乾上震下，为巽宫四世卦。无妄卦为天雷震响之象，表示事与愿违，可能会有小的灾祸，但先凶后吉。', '不欺不妄，真实至诚；顺乎自然，福禄深宏。 得此卦者，顺其自然，守正道者，诸事皆宜。但行为不检者，必招灾祸。',3,0,52,39,6);
insert into tb_normal_diagram values(6, '大畜','6','利贞，不家食，吉。利涉大川。', '象曰：天在山中，大畜。君子以多识前言往行，以畜其德。', '大畜卦艮上乾下，为艮宫二世卦。畜为积蓄之意，艮为止，提示人们要停止下来积蓄力量，多主吉。', '以阳畜阴，制止欲进；坚守正道，先凶后吉。 得此卦者，宜坚守正道，脚踏实地，务实行事，方可成就大业。切勿骄傲自满，目空一切。',0,6,11,57,24);
insert into tb_normal_diagram values(30, '颐','30','贞吉。观颐，自求口实。', '象曰：山下有雷，颐。君子以慎言语，节饮食。', '颐卦艮上震下，为巽宫游魂卦。颐为修养、调养，雷震于山，为春来之兆，万物开始生养，因此颐卦为发展之兆，多主吉。', '养正养育，谨言节食；观察实务，自知审慎。 得此卦者，对于言语及饮食，均须谨慎。宜守正道，谨言慎行，心怀阴谋者会招灾祸。',3,6,63,33,30);
insert into tb_normal_diagram values(33, '大过','33','栋桡。利有攸往，亨。', '象曰：泽灭木，大过。君子以独立不惧，遁世无闷。', '大过卦兑上巽下，为震宫游魂卦。大过即太过，事情过头了，但大过卦仍是中庸顺从之象，主其人得协助、能前进。', '阳多阴少，势将颠覆；本未俱弱，量力而为。 得此卦者，身心不安，事不如意，却又强意而行，大有后悔之时，谨防官非及水险。',4,1,0,30,33);
insert into tb_normal_diagram values(45, '坎','45', '习坎，有孚，维心亨，行有尚。', '象曰：水洊至，习坎。君子以常德行，习教事。', '坎卦坎上坎下，为坎宫本位卦。坎为陷入、陷阱，为险难之境。此时应坚持信心，才能豁然贯通。', '艰难危险，重险重陷；事多困阻，谨慎行事。 得此卦者，运气不佳，多难危险，事多困阻，宜谨言慎行，退守保安。',5,5,30,18,45);
insert into tb_normal_diagram values(18, '离','18','利贞，亨。畜牝牛，吉。', '象曰：明两作，离。大人以继明照四方。', '离卦离上离下，为离宫本位卦。离可取光明、美丽、离散之意，利文章而不利出师。', '附丽光明，谦虚缓进；公正柔和，顺守则吉。 得此卦者，宜谦虚谨慎，稳步进取，则前途光明。急进及意气用事者必有所损失。',2,2,33,45,18);
insert into tb_normal_diagram values(49, '咸','49','亨，利贞。取女吉。', '象曰：山上有泽，咸。君子以虚受人。', '咸卦兑上艮下，为兑宫三世卦。咸为感应，万物皆有感应，男女感应，夫妇康宁，感应之事，无有不亨。', '两性交感，正道感应；物击则鸣，识时知机。 得此卦者，宜谦虚待人，则会吉祥如意，谋事可成。但勿为不正当感情而意乱情迷。',6,1,32,14,35);
insert into tb_normal_diagram values(35, '恒','35', '亨，无咎，利贞。利有攸往。', '象曰：雷风，恒。君子以立不易方。', '恒卦震上巽下，为震宫三世卦。恒卦的意思就是要坚持、恒定、有恒心，这样才能获得亨通。', '经常恒久，长久不变；君子以利，不易其方。 得此卦者，须立身正道，坚守不易，持续努力，必能亨通。缺少毅力，朝三暮四者则不会成功。',4,3,1,28,49);
insert into tb_normal_diagram values(48, '遁','48', '亨。小利贞。', '象曰：天下有山，遁。君子以远小人，不恶而严。', '遁卦乾上艮下，为乾宫二世卦。卦下阴爻逐渐生长，是阳道将衰，恶事将起之兆，说明小人欲制君子，此时君子处于退避的状态。', '逃避退隐，盛极必衰；言行严禁，待机再举。 得此卦者，宜退不宜进。退守可以保身，若轻举妄动则会招灾。宜谨言慎行，待机行事。',6,0,11,57,24);
insert into tb_normal_diagram values(3, '大壮','3', '利贞。', '象曰：雷在天上，大壮。君子以非礼弗履。', '大壮卦震上乾下，为坤宫四世卦。此卦中的大壮表示壮大，阳隆盛，象征君子，君子壮大当然亨通。', '光明正大，强盛壮大；容忍和气，切忌冲动。 得此卦者，运势过于强盛，宜心平气和，谨慎行事，否则必生过失。',0,3,1,60,48);
insert into tb_normal_diagram values(58, '晋','58', '康侯用锡马蕃庶，昼日三接。', '象曰：明出地上，晋。君子以自昭明德。', '晋卦离上坤下，为乾宫游魂卦。晋取前进、晋见、晋升之意，上离下坤，为太阳普照大地，万物和顺之象，多主吉。', '日出地上，万物进展；赏赐隆重，百谋皆遂。 得此卦者，如旭日东升，气运旺盛，收入颇丰，谋事可成，百事如意。',7,2,53,5,23);
insert into tb_normal_diagram values(23,  '明夷','23', '利艰贞。', '象曰：明入地中，明夷。君子以莅众，用晦而明。', '明夷卦坤上离下，为坎宫游魂卦。明夷即明德被伤，象征君子受厄，此时百事宜息，静观待变。', '日入地中，光明被伤；万事阻滞，等待时运。 得此卦者，时运不佳，事事劳苦，宜坚守正道，忍耐自重，等待时机。',2,7,43,40,58);
insert into tb_normal_diagram values(20, '家人','20', '利女贞。', '象曰：风自火出，家人。君子以言有物，而行有恒。', '家人卦巽上离下，为巽宫二世卦。家人卦为家庭和睦、和合之象，多主吉。', '人心内向，家道兴隆；严正有恒，不能移心。 得此卦者，与人合作共事者会有利，且多有喜事之象，家庭和睦者，能同心协力，发展事业。',2,4,42,43,10);
insert into tb_normal_diagram values(10, '睽','10', '小事吉。', '象曰：上火下泽，睽。君子以同而异。', '睽卦离上兑下，为艮宫四世卦。睽象征乖离、乖异，筮遇此卦，大事不吉，小事顺利。', '人心外向，背道而驰；难以成事，不宜大举。 得此卦者，运气不佳，水火不容，相互矛盾，诸事难成。',1,2,21,53,20);
insert into tb_normal_diagram values(53, '蹇','53', '利西南，不利东北。利见大人，贞吉。', '象曰：山上有水，蹇。君子以反身修德。', '蹇卦坎上艮下，为兑宫四世卦。此卦利于向西南方向行，不利于向东北方向，又利见大人。', '踏步难行，艰辛万苦；进退维谷，容忍待时。 得此卦者，身心忧苦，举步维艰，宜守正道，不可妄动，涉险境者会有灾难。',6,5,42,10,43);
insert into tb_normal_diagram values(43, '解','43', '利西南。无所往，其来复吉。有攸往，夙吉。', '象曰：雷雨作，解。君子以赦过宥罪。', '解卦震上坎下，为震宫二世卦。震为动，坎为险，遇险而动，为即将脱险走出困境之兆，因此多主吉。', '艰难化散，排难解纷；把握时机，趁早进行。 得此卦者，能解脱先前之困难，宜把握良机，求谋事业，出外谋事者更佳。',5,3, 21,20,53);
insert into tb_normal_diagram values(14, '损','14', '有孚，元吉，无咎，可贞。利有攸往。曷之用？二簋可用享。', '象曰：山下有泽，损。君子以征忿窒欲。', '损卦艮上兑下，为艮宫三世卦。损象征损益、减少，为损己之兆，多主不吉，但只要坚守诚信，就会有利。', '损下益上，损盈益虚；先难后易，量入为出。 得此卦者，损己利人，虽然开始会有所不顺，但付出总会有所回报，因祸得福之象。',1,6,31,49,28);
insert into tb_normal_diagram values(28, '益','28', '利有攸往，利涉大川。', '象曰：风雷，益。君子以见善则迁，有过则改。', '益卦巽上震下，为巽宫三世卦。益卦为损益、收益之意，利有所往，利涉大川，多主吉。', '损上益下，奋发有为；进取成名，商贾获利。 得此卦者，正当好运，奋发图进，得人帮助，能获名利。',3,4,62,35,14);
insert into tb_normal_diagram values(1, '夬','1', '扬于王庭，孚号，有厉。告自邑，不利即戎，利有攸往。', '象曰：泽上于天，夬。君子以施禄及下，居德则忌。', '夬卦兑上乾下，为坤宫五世卦。此卦中的夬为决断、决裂，象征会有危险之事，利有攸往，往前有利。', '排除决去，必须刚断；始吉终凶，谨慎自重。 得此卦者，大运将过，困难将至，宜提高警惕，谨言慎行。',0,1,0,62,32);
insert into tb_normal_diagram values(32, '姤','32', '女壮，勿用取女。', '象曰：天下有风，姤。后以施命诰四方。', '姤卦乾上巽下，一阴五阳，为乾宫初世卦。姤卦以阴遇阳，以柔乘刚，含有不期而遇之意，但不宜娶女。遇此卦适宜谋事，如果遇火，还会有喜事。', '阴长阳消，鸿运中衰；诸多阻滞，谨慎以防。 得此卦者，阴长阳衰，诸事不顺，宜谨慎行事，更应注意桃色纠纷。',4,0,0,31,1);
insert into tb_normal_diagram values(57, '萃','57', '亨，王假有庙。利见大人，亨，利贞。用大牲吉。利有攸往。', '象曰：泽上于地，萃。君子以除戎器，戒不虞。', '萃卦兑上坤下，为兑宫二世卦。此卦指水在地上聚集成泽以滋润万物，造福于民。占得此卦，利于见大人，祭祀用大牲畜则吉利。', '物产丰富，聚合丰盛；得贵接引，无往不利。 得此卦者，运气大好，能得到贵人的帮助，获利丰厚，无往不利。',7,1,52,6,39);
insert into tb_normal_diagram values(39, '升','39', '元亨。用见大人，勿恤，南征吉。', '象曰：地中生木，升。君子以顺德，积小以高大。', '升卦坤上巽下，为震宫四世卦。升卦的意思就是上升、长进，为出暗向明，积小成大的亨达之象。', '升腾上进，畅行其志；出暗向明，遂渐升进。 得此卦者，运气升腾，诸事皆积极向上发展，谋事有成，名利双收。',4,7,1,28,49);
insert into tb_normal_diagram values(41, '困','41', '亨，贞，大人吉，无咎。有言不信。', '象曰：泽无水，困。君子以致命遂志。', '困卦兑上坎下，为兑宫初世卦。此卦君子受困于小人，阳为阴蔽，大人则吉而无咎。所闻之言没有诚信。', '泽上无水，受困穷之；万物不生，修德静守。 得此卦者，陷入困境，事事不如意，宜坚守正道，等待时机。',5,1,20,22,37);
insert into tb_normal_diagram values(37, '井','37', '改邑不改井，无丧无得。往来井井。汔至，亦未繘井，羸其瓶，凶。', '象曰：木上有水，井。君子以劳民劝相。', '井卦坎上巽下，为震宫五世卦。井不可移动，象征静止，此卦也是提示占卦者要安身守道，不可贪求。', '静水通源，气运平静；不变所守，维持现状。 得此卦者，宜修身养性，顺其自然，泰然处之，静有利，动则凶。',4,5,10,26,41);
insert into tb_normal_diagram values(17, '革','17', '己日乃孚。元亨利贞。悔亡。', '象曰：泽中有火，革。君子以治历明时。', '革卦兑上离下，为坎宫四世卦。革就是需要变革，提醒占筮者需要变革才会更进一步。', '事多变动，坚守正道；顺天应人，实施变革。 得此卦者，凡事均在变动之中，宜去旧立新，以应革新之象，则会吉祥。',2,1,32,46,34);
insert into tb_normal_diagram values(34, '鼎','34', '元吉，亨。', '象曰：木上有火，鼎。君子以正位凝命。', '鼎卦离上巽下，为离宫二世卦。鼎为鼎定、和美之意，多主吉，但对诉讼、求官不利。', '因败致功，因人成事；万事通达，平步青云。 得此卦者，时运正佳，能得到朋友的帮助，取得不错的成就。与人合伙共事更佳。',4,2,1,29,17);
insert into tb_normal_diagram values(27, '震','27','亨。震来虩虩，笑言哑哑。震惊百里，不丧匕鬯。', '象曰：洊雷，震。君子以恐惧修省。', '震卦震上震下，为震宫本位卦。震即雷，空闻其响，不见其形。主求谋难遂，官爵难成。', '重雷发响，奋发图强；先难后易，先苦后甜。 得此卦者，奋发振作，大可有为，但表面风光，内恐有难，宜谨言慎行，以免损失。',3,3,53,36,54);
insert into tb_normal_diagram values(54, '艮','54', '艮其背，不获其身。行其庭，不见其人。无咎。', '象曰：兼山，艮。君子以思不出其位。', '艮卦艮上艮下，为艮宫本位卦。艮为停止的意思，为钱财散失之象，需谨慎提防。', '停留阻止，无可再进；随份勿贪，不可强求。 得此卦者，前路受阻，不宜妄进，宜守待机。',6,6,43,9,27);
insert into tb_normal_diagram values(52, '渐','52', '女归吉，利贞。', '象曰：山上有木，渐。君子以居贤德善俗。', '渐卦巽上艮下，为艮宫归魂卦。渐为渐进，筮遇此卦，女嫁则吉，举事有利。', '循序渐进，积少成多；渐进即利，性急即败。 得此卦者，逐步开运，凡事宜循序渐进，则谋事可成，不宜急进，性急则败。',6,4,42,11,11);
insert into tb_normal_diagram values(11, '归妹','11', '征凶，无攸利。', '象曰：泽上有雷，归妹。君子以永终知敝。', '归妹卦震上兑下，为兑宫归魂卦。占得此卦，天地不交，闭塞不通，有殃有咎，无始无终，所作不顺，百事不利。', '违反常理，其道将穷；明察事理，止绝妄念。 得此卦者，困难之时，做事有违常理，灾祸不断。宜明察事理，修身养性，断绝妄念。',1,3,21,52,52);
insert into tb_normal_diagram values(19, '丰','19', '亨。王假之，勿忧，宜日中。', '象曰：雷电皆至，丰。君子以折狱致刑。', '丰卦震上离下，为坎宫五世卦。丰即为盛大，本是吉兆，但盛极必衰，丰盛中也藏着隐忧，需小心谨慎。', '盛大丰满，进财获利；谋望克遂，必有喜庆。 得此卦者，运势正强，谋事可成，名利双收。但不宜过贪，要知足常乐，谨防乐极生悲，损财甚至火险。',2,3,33,44,50);
insert into tb_normal_diagram values(50, '旅','50', '小亨，旅贞吉。', '象曰：山上有火，旅。君子以明慎用刑，而不留狱。', '旅卦离上艮下，为离宫初世卦。旅为做客、旅游之意，先主乐而后悲啼。', '旅途穷困，飘摇不定；小望可成，宏愿难求。 得此卦者，事多变动，如在异乡，小事可成，大事难成，宜谨守常规。',6,2,33,13,19);
insert into tb_normal_diagram values(36, '巽','36', '小亨。利有攸往，利见大人。', '象曰：随风，巽。君子以申命行事。', '巽卦巽上巽下，为巽宫本位卦。巽为顺，谦逊、顺从之意，对君子有利，利见大人。', '顺伏容人，谦虚行事；得贵多助，利在远处。 得此卦者，运势起伏不定，宜随机应变，谦虚行事，则可得意外之收获。',4,4,10,27,9);
insert into tb_normal_diagram values(9, '兑','9','亨，利，贞。', '象曰：丽泽，兑。君子以朋友讲习。', '兑卦兑上兑下，为兑宫本位卦。兑为喜悦、取悦，又为泽，泽中之水可以滋润万物，所占的人会很吉利。', '泽润万物，双重喜悦；和乐群伦，确守正道。 得此卦者，多喜庆之事，人情和合，但应坚守正道，否则犯灾。',1,1,20,54,36);
insert into tb_normal_diagram values(44, '涣','44', '亨，王假有庙。利涉大川，利贞。', '象曰：风行水上，涣。先王以享于帝，立庙。', '涣卦巽上坎下，为离宫五世卦。涣即涣散，表示恶事离身，患难将消，利涉大川，出入无阻，乃是吉卦。', '离散解消，灾害涣散；乘机观变，养威蓄锐。 得此卦者，初有不顺，但终可解困，凡事宜小心则百事亨通，忌任性放纵。',5,4,30,19,13);
insert into tb_normal_diagram values(13, '节','13', '亨，苦节不可贞。', '象曰：泽上有水，节。君子以制数度，议德行。', '节卦坎上兑下，为坎宫初世卦。节说明需节制、节约，停止挥霍，这样才能居家康宁。', '操守节度，适可而止；审时度势，能知变通。 得此卦者，宜安分守己，切忌贪心不足，诸事必须节制，不宜过份，更要戒酒色。',1,5,30,50,44);
insert into tb_normal_diagram values(12, '中孚','12', '豚鱼，吉。利涉大川，利贞。', '象曰：泽上有风，中孚。君子以议狱缓死。', '中孚卦巽上兑下，为艮宫游魂卦。中孚即忠信之意，主利涉大川，厄难消除。', '信而有实，诚恳诚信；知己协助，谋望克遂。 得此卦者，正直诚信者吉利，会得到朋友的帮助，谋事可成；心存邪念者则凶。',1,4,30,51,12);
insert into tb_normal_diagram values(51, '小过','51', '亨，利贞。可小事，不可大事。飞鸟遗之音。不宜上，宜下，大吉。', '象曰：山上有雷，小过。君子以行过乎恭，丧过乎衰，用过乎俭。', '小过卦震上艮下，为兑宫游魂卦。占得此卦，举事有利，可以举小事，不可举大事。', '阴顺阳困，柔软用事；谨慎自持，不宜急进。 得此卦者，诸事不利，宜行小事，不宜成大事，更防因自身的过失惹来是非争讼。',6,3,33,12,51);
insert into tb_normal_diagram values(21, '既济','21', '亨，小利贞，初吉终乱。', '象曰：水在火上，既济。君子以思患而预防之。', '既济卦坎上离下，为坎宫三世卦。既济就是说已经成功，事情已经摆平。但还需谨慎，当心物极必反。', '济助有成，坚忍自重；由大而小，确保盛运。 得此卦者，事业有成，成功之象，但谨防盛极必衰，宜退守为吉，再进则凶。',2,5,42,42,42);
insert into tb_normal_diagram values(42, '未济','42','亨，小狐汔济，濡其尾，无攸利。', '象曰：火在水上，未济。君子以慎辨物居方。', '未济卦离上坎下，为离宫三世卦。未济就是未完成，此卦爻位不正，形象上极端恶劣，但变化在酝酿之中，未来充满希望。', '不能资助，待时而动；由小而大，不可躁进。 得此卦者，运势不通，诸事不能如愿，宜由小及大，稳步进取，要耐心去突破难关，则终可成功。',5,2,21,21,21);



/*
luck 吉(0)平(1)凶(2)
attr 阳(0) 阴(1)
change_id 变卦id
inner_seq [1-6]

*/
SET sql_mode='NO_AUTO_VALUE_ON_ZERO';
DROP TABLE IF EXISTS `tb_yao`;
CREATE TABLE `tb_yao` (
  `id` SMALLINT NOT NULL auto_increment,
  `name` varchar(128) NOT NULL,
  `diagram_id` TINYINT NOT NULL,
  `inner_seq` TINYINT NOT NULL,
  `words` varchar(128) NOT NULL,
  `xiang_words` varchar(128) NOT NULL,
  `shaoyong_words` varchar(128) NOT NULL,
  `luck` TINYINT NOT NULL,
  `attr` TINYINT NOT NULL,
  `change_id` TINYINT NOT  NULL,
  PRIMARY KEY (`id`),
  foreign key(`diagram_id`) references tb_normal_diagram(`id`),
  foreign key(`change_id`) references tb_normal_diagram(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*
插入爻
*/

insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',0,1,'潜龙勿用。','象曰：潜龙勿用，阳在下也。','得此爻者，宜沉稳待机，若一动作即生灾疾，谋事不利，谨防小人。做官的会有阻力。经商的会有阻滞。女命则兴家业，孕生子。', 1, 0, 32);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',0,2,'见龙在田，利见大人。','象曰：见龙在田，德施普也。','得此爻者，会得到贵人的提拔。做官的会遇到明主，身居要职。读书人考试能获得佳绩。经商者获利。女命逢之，则又富又贵。', 0, 0, 16);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',0,3,'君子终日乾乾，夕惕若；厉，无咎。','象曰：终日乾乾，反复道也。','得此爻者，会往来不停，财利难获，凡事不认真计划，躁动者会有损失。做官的会身兼重职，且事多繁冗，如果能保持忧虑和谨慎的态度则没有过失。女命逢之，性躁，难成为贤内助。', 1, 0, 8);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',0,4,'或跃在渊，无咎。','象曰：或跃在渊，进无咎也。','得此爻者，百为艰难。做官的会停缺待职，等待机会。女命逢之，则安乐富贵也。', 1, 0, 4);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',0,5,'飞龙在天，利见大人。','象曰：飞龙在天，大人造也。','得此爻者，会遇到贵人，谋遂志得。做官的会飞黄腾达。女命则兼男权，难免孤独。', 0, 0, 2);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',0,6,'亢龙有悔。','象曰：亢龙有悔，盈不可久也。','得此爻者，有过刚取凶之祸，五十以后者不寿。做官的会退职，或遭贬。女命逢之，其性必悍，难成为贤内助。', 2, 0, 1);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',63,1,'履霜，坚冰至。','象曰：履霜坚冰，阴始凝也。驯致其道，至坚冰也。','得此爻者，宜谨防仇怨引起的纠纷。阴气盛的人则会大兴家业。做官的要谨防小人的谗言而生祸。', 1, 1, 31);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',63,2,'直，方，大，不习无不利。','象曰：六二之动，直以方也；不习无不利，地道光也。','得此爻者，会不愁吃喝，衣食无忧。做官的会升迁，身居高位。女命则为贤良起家。', 0, 1, 47);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',63,3,'含章可贞。或从王事，无成有终。','象曰：含章可贞，以时发也；或从王事，知光大也。','得此爻者，谋望可成，认真经营会有收获。做官的会有升迁的希望。女命则为德妇。', 1, 1, 55);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',63,4,'括囊，无咎，无誉。','象曰：括囊无咎，慎不害也。','得此爻者，经营受阻，大凡谨慎收敛者，则无横来之祸。做官的要谨守常职，可望升迁。女命则贤而起家。', 1, 1, 59);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',63,5,'黄裳，元吉。','象曰：黄裳元吉，文在中也。','得此爻者，将会获得财利，事事安稳，没有灾难。做官的将会升迁，飞黄腾达。女命则为德妇，贤惠之人。', 0, 1, 61);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',63,6,'龙战于野，其血玄黄。','象曰：龙战于野，其道穷也。','得此爻者，有竞争的困扰，会有大的损失。做官的会有被贬之祸。', 2, 1, 62);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',29,1,'盘桓，利居贞，利建侯。','象曰：虽盘桓，志行正也；以贵下贱，大得民也。','得此爻者，安分守己者则无忧，躁动者不利。做官的暂时未受到重用，坚守正道，好运可期。女命则为良妇而兴家。', 1, 0, 61);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',29,2,'屯如邅如，乘马班如。匪寇婚媾，女子贞不字，十年乃字。','象曰：六二之难，乘刚也；十年乃字，反常也。','得此爻者，有婚嫁之喜事。做官的权柄日盛。', 1, 1, 13);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',29,3,'即鹿无虞，惟入于林中。君子几不如舍。往吝。','象曰：即鹿无虞，以纵禽也。君子舍之，往吝，穷也。','得此爻者，须安分守己，否则会有灾难。做官的有贪污之嫌，有被停职降职之忧。', 2, 1, 21);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',29,4,'乘马班如，求婚媾，往吉，无不利。','象曰：求而往，明也。','得此爻者，谋事可成，百事和合，会得到朋友的帮助，大吉大利。做官的将会名声显赫，有升迁之机。', 0, 1, 25);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',29,5,'屯其膏，小贞吉，大贞凶。','象曰：屯其膏，施未光也。','得此爻者，谋事者切勿急躁，小事可成，大事无望，甚至会招来凶祸。', 1, 0, 31);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',29,6,'乘马班如，泣血涟如。','象曰：泣血涟如，何可长也。','得此爻者，家道中落，须防损失。做官的须谨防小人的谗言。', 2, 1, 28);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',46,1,'发蒙，利用刑人，用说桎梏。以往，吝。','象曰：利用刑人，以正法也。','得此爻者，多有官诉，亲朋不和，多争斗，终能脱解。做官的为教育之职，或为司法系统之职。', 2, 1, 14);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',46,2,'包蒙吉。纳妇吉。子克家。','象曰：子克家，刚柔接也。','得此爻者，人情和合，百事有成，或结婚，或生子孙，有财有福。做官的会守住官职。', 0, 0, 62);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',46,3,'勿用娶女，见金夫，不有躬。无攸利。','象曰：勿用娶女，行不顺也。','得此爻者，会生是非，小则破财，大则伤身。做官的会因为贪婪而自取其辱。', 2, 1, 38);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',46,4,'困蒙，吝。','象曰：困蒙之吝，独远实也。','得此爻者，人情淡薄，经营受阻。静无灾，动有损。做官的因为无人赏识而难以晋升。', 2, 1, 42);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',46,5,'童蒙，吉。','象曰：童蒙之吉，顺以巽也。','得此爻者，依附贵人、良师者百事顺遂，谋望可成。', 0, 1, 44);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',46,6,'击蒙。不利为寇，利御寇。','象曰：利用御寇，上下顺也。','得此爻者，宜守旧，须谨防争讼，寇盗之扰。做官的会有司寇之名职。', 1, 0, 47);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',5,1,'需于郊，利用恒，无咎。','象曰：需于郊，不犯难行也；利用恒，无咎，未失常也。','得此爻者，宜守旧，则无灾祸。做官的须守常职，耐心等待机会。', 1, 0, 37);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',5,2,'需于沙，小有言，终吉。','象曰：需于沙，衍在中也；虽小有言，以终吉也。','得此爻者，会受到争诉之扰，若能以宽厚待人，则不辩自明。做官的会受到流言的困扰，但最后吉祥。', 0, 0, 21);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',5,3,'需于泥，致寇至。','象曰：需于泥，灾在外也。自我致寇，敬慎不败也。','得此爻者，须防止窃盗之患，亦要预防水险。做官的会被贬职。', 2, 0, 13);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',5,4,'需于血，出自穴。','象曰：需于血，顺以听也。','得此爻者，坏运逐渐远离，恢复平静。做官的能全身而退。从事国学者可出身成名。', 1, 1, 1);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',5,5,'需于酒食，贞吉。','象曰：酒食贞吉，以中正也。','得此爻者，会物产丰富，衣食不缺，也会有婚嫁之喜。做官的食禄会丰厚。', 0, 0, 7);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',5,6,'入于穴，有不速之客三人来，敬之终吉。','象曰：不速之客，敬之终吉；虽不当位，未大失也。','得此爻者，宜谨慎，则忧愁自散。做官的会有升迁之机会，但须防谗邪之流。', 1, 1, 4);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',40,1,'不永所事，小有言，终吉。','象曰：不永所事，讼不可长也；虽小有言，其辩明也。','得此爻者，会生起是非，但终吉。有病者，不药而愈。做官的会遭诽谤，但会不辩自明。', 0, 1, 8);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',40,2,'不克讼，归而逋，其邑人三百户无眚。','象曰：不克讼，归而逋也；自下讼上，患至掇也。','得此爻者，平安无事。做官的会有食邑之荣。', 1, 0, 56);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',40,3,'食旧德，贞厉，终吉。或从王事，无成。','象曰：食旧德，从上吉也。','得此爻者，宜保持常态，则无灾难。做官的宜谨守常职，晋升无望。', 1, 1, 32);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',40,4,'不克讼，复即命，渝安贞，吉。','象曰：复即命，渝安贞，吉，不失也。','得此爻者，会转危为安。做官的会闲中复职。', 0, 0, 44);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',40,5,'讼，元吉。','象曰：讼，元吉，以中正也。','得此爻者，经营、谋事、求财皆大吉。做官的会受到重用。读书人会获得佳绩。', 0, 0, 42);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',40,6,'或锡之鞶带，终朝三褫之。','象曰：以讼受服，亦不足敬也。','得此爻者，会有争诉之忧，宜修德养身，化大为小。做官的会有成有败，患得患失。读书人认真学习，必可获佳绩。', 1, 0, 41);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',47,1,'师出以律，否臧凶。','象曰：师出以律，失律凶也。','得此爻者，经营得当，则财货日增。但妄动者，成少败多。不良者，多险难刑伤。做官的宜谨守正道，则会得到上级的欣赏。', 2, 1, 15);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',47,2,'在师中，吉无咎，王三锡命。','象曰：在师中吉，承天宠也，王三锡命，怀万邦也。','得此爻者，会遇到贵人，谋事可成。做官的会受到上级的赏识，有升迁之机会。读书人会取得佳绩。', 0, 0, 63);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',47,3,'师或舆尸，凶。','象曰：师或舆尸，大无功也。','得此爻者，多有悲优，或家中亲人病故。做官的会受职待缺。', 2, 1, 39);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',47,4,'师左次，无咎。','象曰：左次无咎，未失常也。','得此爻者，安居乐业，无妄动之灾。做官的官运不济，不宜妄想。', 1, 1, 43);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',47,5,'田有禽，利执言，无咎。长子帅师，弟子舆尸，贞凶。','象曰：长子帅师，以中行也；弟子舆尸，使不当也。','得此爻者，财富日增，若用人得当，则谋望可成，但须谨防小人之危。做官的或有实权，或因为谏言而地位高显。读书人会取得佳绩。', 1, 1, 45);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',47,6,'大君有命，开国承家，小人勿用。','象曰：大君有命，以正功也；小人勿用，必乱邦也。','得此爻者，可立家计，或继承家业，但谨防小人从中作梗。做官的会当权立功。专业人才则会技艺成名。', 1, 1, 46);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',61,1,'有孚比之，无咎。有孚盈缶，终来有它吉。','象曰：比之初六，有它吉也。','得此爻者，会遇到知己，谋事称心如意。做官的会有意外之喜。', 0, 1, 29);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',61,2,'比之自内，贞吉。','象曰：比之自内，不自失也。','得此爻者，得贵人之助，营谋遂意。做官的会无过失，安然而吉亨。读书人或能成名。女命则会得贤夫。', 0, 1, 45);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',61,3,'比之匪人。','象曰：比之匪人，不亦伤乎。','得此爻者，交友不慎，或有争诉，破财刑伤。做官的要谨防同僚不睦而造成不顺。女子则所嫁并非良人，破家丧身之象，不然则会争诉破财。', 2, 1, 53);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',61,4,'外比之，贞吉。','象曰：外比于贤，以从上也。','得此爻者，出外有利，多得知己之力，事事顺利。做官的会有升迁之喜。', 0, 1, 57);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',61,5,'显比，王用三驱，失前禽。邑人不诫，吉。','象曰：显比之吉，位正中也。舍逆取顺，失前禽也。邑人不诫，上使中也。','得此爻者，会先逆后顺，谋事有成，无往不利。做官的会有大的荣耀。读书人会考的佳绩。', 0, 0, 63);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',61,6,'比之无首，凶。','象曰：比之无首，无所终也。','得此爻者，刑克有灾，人情淡薄，甚者恐有性命之忧。做官的会失去下属的支持，处境危难。', 2, 1, 60);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',4,1,'复自道，何其咎？吉。','象曰：复自道，其义吉也。','得此爻者，宜守旧业，不宜创新。谋事者，须防猜忌疑惑之祸。做官的会闲位复职。', 1, 0, 36);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',4,2,'牵复，吉。','象曰：牵复在中，亦不自失也。','得此爻者，有人相助，营谋遂意。做官的有升迁之机会。', 0, 0, 20);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',4,3,'舆说辐，夫妻反目。','象曰：夫妻反目，不能正室也。','得此爻者，荣而见辱，进而见退，或有足目之疾，或夫妻反目，或君臣疏远，或朋友是非，血气损伤。', 2, 0, 12);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',4,4,'有孚，血去惕出，无咎。','象曰：有孚惕出，上合志也。','得此爻者，心诚者，人情和合，营谋颇遂。做官的会得到上司的提拔，久任者，能转运。', 1, 1, 0);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',4,5,'有孚挛如，富以其邻。','象曰：有孚挛如，不独富也。','得此爻者，能得到他人的帮助，百谋称心。做官的会得到上级的赏识，下属的拥戴，德高望重。', 0, 0, 6);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',4,6,'既雨既处，尚德载。妇贞厉。月几望，君子征凶。','象曰：既雨既处，德积载也。君子征凶，有所疑也。','得此爻者，会受到小人的骚扰，宜修德养身，不妄进者，则可免灾。妇女占得此爻则凶，君子离家出行有凶险。', 1, 0, 5);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',8,1,'素履，往无咎。','象曰：素履之往，独行愿也 。','得此爻者，营谋有计，则财利日增。做官的若修德养身，则有升迁之机。', 1, 0, 40);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',8,2,'履道坦坦，幽人贞吉。','象曰：幽人贞吉，中不自乱也。','得此爻者，安然自乐，修身养性。做官的会有全身而退之兆。', 1, 0, 24);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',8,3,'眇能视，跛能履。履虎尾，咥人，凶。武人为于大君。','象曰：眇能视，不足以有明也。跛能履，不足以与行也。咥人之凶，位不当也。武人为于大君，志刚也。','得此爻者，会有争诉，囚狱之扰，甚者家破人亡。做官的则会有被贬职之祸。', 2, 1, 0);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',8,4,'履虎尾，愬愬，终吉。','象曰：愬愬终吉，志行也。','得此爻者，会有危险，宜温和自持，可免灾祸。做官的会有虎符将帅之兆。读书人将会取得不错的佳绩。', 1, 0, 12);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',8,5,'夬履，贞厉。','象曰：夬履贞厉。位正当也。','得此爻者，躁动妄行者，则祸患将至，甚者有性命之忧。做官的会功高盖主，而不赏。', 2, 0, 10);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',8,6,'视履考祥，其旋元吉。','象曰：元吉在上，大有庆也。','得此爻者，财利可获。做官的宜退而以享安静和平之福。读书人努力者可获佳绩。', 0, 0, 9);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',7,1,'拔茅茹，以其汇，征吉。','象曰：拔茅征吉，志在外也。','得此爻者，志同合谋，财利日增。做官的会逐步升迁。', 0, 0, 39);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',7,2,'包荒，用冯河，不遐遗，朋亡，得尚于中行。','象曰：包荒，得尚于中行，以光大也。','得此爻者，会有好运，必遇尊贵，但要防长上有损，言语有伤。做官的会身居高位，功名显达。', 0, 0, 23);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',7,3,'无平不陂，无往不复。艰贞无咎。勿恤其孚，于食有福。','象曰：无往不复，天地际也。','得此爻者，须谨慎自持，宜保守，则安，不然会犯小人，事事遇阻。做官的会比较艰难，须防小人和别人的妒忌。', 1, 0, 15);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',7,4,'翩翩不富，以其邻，不戒以孚。','象曰：翩翩不富，皆失实也；不戒以孚，中心愿也。','得此爻者，营谋失利，退守可平安。做官的进取难成，宜退守。', 1, 1, 3);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',7,5,'帝乙归妹，以祉元吉。','象曰：以祉元吉，中以行愿也。','得此爻者，会得到别人的赏识和抬举，或结婚生子，幸福安乐。做官的或能升迁，或有喜事。', 0, 1, 5);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',7,6,'城复于隍，勿用师。自邑告命，贞吝。','象曰：城复于隍，其命乱也。','得此爻者，会有破损，有疾病，谨慎厚道者可免祸。做官的会被贬职。', 2, 1, 6);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',56,1,'拔茅茹，以其汇，贞吉，亨。','象曰：拔茅贞吉，志在君也。','得此爻者，宜守旧，小人得势之时，爻辞虽好，但须谨防小人牵连之事。做官的受职者待缺，当权者防扰。', 1, 1, 24);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',56,2,'包承，小人吉；大人否，亨。 ','象曰：大人否，享，不乱群也。 ','得此爻者，宜忍耐，宽容待人，不然会生是非。做官的宜低调行事。', 1, 1, 40);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',56,3,'包羞。','象曰：包羞，位不当也。','得此爻者，须防是非争诉之扰。做官的会退休离职。', 2, 1, 48);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',56,4,'有命无咎，畴离祉。','象曰：有命无咎，志行也。','得此爻者，家产日增，吉庆安乐。做官的会得到朋友和同僚之助，或升迁，或进财。', 0, 0, 60);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',56,5,'休否，大人吉；其亡其亡，系于苞桑。','象曰：大人之吉，位正当也。','得此爻者，旧祸已去，好运将至，诸事皆吉。做官的会身居重位。', 0, 0, 58);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',56,6,'倾否，先否后喜。 ','象曰：否终则倾，何可长也。','得此爻者，将会转好运，久困者利可期，久讼者讼事解。做官的失职者复职，闲缺者会走马上任。', 1, 0, 57);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',16,1,'同人于门，无咎。','象曰：出门同人，又谁咎也。','得此爻者，能与人合伙经营获利，或出家远行，或修造门户，或在他处学习。做官的或会受到重用，或有升迁之机。', 1, 0, 48);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',16,2,'同人于宗，吝。','象曰：同人于宗，吝道也。','得此爻者，事多不定，与宗人朋友多不和，相互多猜忌，面和心不合，容易起是非。做官的没有升迁之机，需耐心等待。', 2, 1, 0);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',16,3,'伏戎于莽，升其高陵，三岁不兴。 ','象曰：伏戎于莽，敌刚也，三岁不兴，安行也。','得此爻者，或有丧亲，或有诉讼打官司之患。做官的须防被免职之忧。', 2, 0, 24);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',16,4,'乘其墉，弗克攻，吉。','象曰：乘其墉，义弗克也，其吉，则困而反则也。','得此爻者，亲友之间会互相猜忌，荣中有辱，结果会好些，凡事须多加提防则可吉祥。做官的若能兢兢业业，则有提拔之机遇，或会受到表彰。', 1, 0, 20);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',16,5,'同人，先号啕而后笑，大师克相遇。 ','象曰：同人之先，以中直也。大师相遇，言相克也。 ','得此爻者，先难后易，是非不一。做官的会先贬后升。', 1, 0, 18);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',16,6,'同人于郊，无悔。','象曰：同人于郊，志未得也。 ','得此爻者，宜守常，不宜激进。做官的则多有出差的机会。', 1, 0, 17);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',2,1,'无交害，匪咎；艰则无咎。','象曰：大有初九，无交害也。','得此爻者，心绪不定，小人欺凌，很是艰辛，长辈或有灾难。做官的须急流勇退，不可贪婪荣华富贵。', 1, 0, 34);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',2,2,'大车以载，有攸往，无咎。 ','象曰：大车以载，积中不败也。 ','得此爻者，营谋得利，财利丰厚，但不利于老人的健康。做官的闲职者会受到重用。', 0, 0, 18);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',2,3,'公用亨于天子，小人弗克。','象曰：公用亨于天子，小人害也。 ','得此爻者，有灾难，举步维艰，勿近小人。做官的会受到重任，读书人会取得很好的成绩。', 1, 0, 10);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',2,4,'匪其彭，无咎。 ','象曰：匪其彭，无咎，明辩晰也。','得此爻者，宜守常，则可避免伤害，眼睛方面或会出现病症。做官的须安于现状，不可激进，则可免祸。', 1, 0, 6);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',2,5,'厥孚交如，威如，吉。 ','象曰：厥孚交如，信以发志也；威如之吉，易而无备也。','得此爻者，须相时而动，切不可骄傲自负，以免自取其祸。做官的宜退不宜进。', 0, 1, 0);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',2,6,'自天祐之，吉无不利。','象曰：大有上吉，自天祐也。','得此爻者，得到祖上之庇佑，一路好运。做官的以及读书人会进职成名。', 0, 0, 3);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',55,1,'谦谦君子，用涉大川，吉。','象曰：谦谦君子，卑以自牧也。','得此爻者，宜远行或出游，出外做生意会发财。做官的须退守，不宜与人争利，出差的机会会多。', 1, 1, 23);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',55,2,'鸣谦，贞吉。','象曰：鸣谦贞吉，中心得也。','得此爻者，不宜轻举妄动，宜退守。做官的会升迁，读书人会进取成名。', 0, 1, 39);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',55,3,'劳谦君子，有终吉。','象曰：劳谦君子，万民服也。','得此爻者，营谋得利，但会劳心劳力。做官的会高升。', 0, 0, 63);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',55,4,'无不利，撝谦。','象曰：无不利，撝谦，不违则也。','得此爻者，无所不通，但做官的、读书人及商人宜固守退让，太盛则有过。', 0, 1, 51);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',55,5,'不富以其邻，利用侵伐，无不利。','象曰：利用侵伐，征不服也。','得此爻者，会得到贵人的帮助而成事，会获得利益，但须谨防生出祸端，与人争诉。当官的会文武兼用，利于进取。读书人会有金榜题名之机会。', 1, 1, 53);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',55,6,'鸣谦，利用行师，征邑国。','象曰：鸣谦，志未得也；可用行师，征邑国也。','得此爻者，有争诉之扰，但会不辨自明。做官的须修德养身，进取有望。', 1, 1, 54);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',59,1,'鸣豫，凶。','象曰：初六鸣豫，志穷凶也。','得此爻者，不顺，有口舌之争，前进有阻力。做官的不要得意忘形，须谨慎，以免生祸。读书人则可能会一鸣惊人。', 2, 1, 27);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',59,2,'介于石，不终日，贞吉。','象曰：不终日，贞吉，以中正也。','得此爻者，会获利。做官的宜急流勇退，读书人有成名之机。', 0, 1, 43);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',59,3,'盱豫，悔。 迟有悔。','象曰：盱豫有悔，位不当也。','得此爻者，投机取巧，是非不一。', 2, 1, 51);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',59,4,'由豫，大有得，勿疑，朋盍簪。','象曰：由豫大有得。志大行也。','得此爻者，进取成名，经营获利。做官的会得到知己，进取有望。', 0, 0, 63);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',59,5,'贞疾，恒不死。','象曰：六五贞疾，乘刚也。恒不死，中未亡也。','得此爻者，多心事，有灾难，或有腹疾。做官的多洋洋得意，持恩固宠，难免有失。', 2, 1, 57);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',59,6,'冥豫，成有渝，无咎。','象曰：冥豫在上，何可长也。','得此爻者，因为心气太高，会有诉争之扰，但若能改过自新，心态平和，则不会有过失。做官的会有贪污之嫌，须明哲保身。', 1, 1, 58);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',25,1,'官有渝，贞吉。 出门交有功。','象曰：官有渝，从正吉也；出门交有功，不失也。','得此爻者，多获利。做官的正当好运，有升迁之机。', 0, 0, 57);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',25,2,'系小子，失丈夫。','象曰：系小子，弗兼与也。','得此爻者，不安宁，或受小人的暗算，是非不断。当官的宜退守，进取者要有自知之明。', 2, 1, 9);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',25,3,'系丈夫，失小子。随有求得，利居贞。','象曰：系丈夫，志舍下也。','得此爻者，营谋遂意，但宜走正道，才能得利。做官的会得到保举而升迁有望。', 1, 1, 17);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',25,4,'随有获，贞凶。有孚在道，以明，何咎。','象曰：随有获，其义凶也。有孚在道，明功也。','得此爻者，会得到好人的抬举，化凶为吉。做官的会身居要职，努力进取者可成事，可获得名利。', 1, 0, 29);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',25,5,'孚于嘉，吉。','象曰：孚于嘉吉，位正中也。','得此爻者，营谋遂意，多喜庆之事，做官的会升职，或多喜事。', 0, 0, 27);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',25,6,'拘系之，乃从维之。王用亨于西山。','象曰：拘系之，上穷也。','得此爻者，苦难多多，不很如意，重病者会有生命之忧。做官的须防止小人的谗言。', 2, 1, 24);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',38,1,'干父之蛊，有子，考无咎。厉，终吉。','象曰：干父之蛊，意承考也。','得此爻者，会得到祖先的庇佑，营谋遂意。做官的会受到重任，改革创新。', 0, 1, 6);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',38,2,'干母之蛊，不可贞。','象曰：干母之蛊，得中道也。','得此爻者，改旧从新，则会如意。女命勤俭持家，性忠直者多福。', 1, 0, 54);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',38,3,'干父之蛊，小有悔，无大咎。','象曰：干父之蛊，终无咎也。','得此爻者，躁进者有失，不听信谗言者则无难。', 2, 0, 46);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',38,4,'裕父之蛊，往见吝。','象曰：裕父之蛊，往未得也。','得此爻者，事事见忧，有足疾。', 2, 1, 34);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',38,5,'干父之蛊，用誉。','象曰：干父之蛊，承以德也。','得此爻者，多喜庆之事，家中或进人口。做官的进取有望，名誉远播。', 0, 1, 36);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',38,6,'不事王侯，高尚其事。','象曰：不事王侯，志可则也。','得此爻者，宜守旧，好运者，多遇尊贵，能获得提拔。做官的宜退守，或告休。', 1, 0, 39);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',15,1,'咸临，贞吉。','象曰：咸临贞吉，志行正也。','得此爻者，会交好运，营谋称意。做官的会得到众人的拥戴，能升迁。读书人参加考试者必能考出佳绩。', 0, 0, 47);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',15,2,'咸临，吉，无不利。','象曰：咸临，吉无不利，未顺命也。','得此爻者，营谋获利，但宜认清时机，不然不能成事，美中不足。做官的会光明磊落，地位清高。', 0, 0, 31);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',15,3,'甘临，无攸利。即忧之，无咎。','象曰：甘临，位不当也。即忧之，咎不长也。','得此爻者，有忧愁，会受苦劳累。做官的会受到小人的谗言攻击，志不能伸。', 2, 1, 7);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',15,4,'至临，无咎。','象曰：至临无咎，位当也。','得此爻者，人情和合，经营得利，但要成大事者，须谨慎而行，做好准备再进取。做官的会得到同僚的帮助。', 1, 1, 11);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',15,5,'知临，大君之宜，吉。','象曰：大君之宜，行中之谓也。','得此爻者，万事如意。做官的会得到上司的赏识。', 0, 1, 13);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',15,6,'敦临，吉，无咎。','象曰：敦临之吉，志在内也。','得此爻者，多获利，无往不利，但谨防气势太盛而变衰。做官的会得到上司的器重，委以重用。', 0, 1, 14);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',60,1,'童观，小人无咎，君子吝。','象曰：初六童观，小人道也。','得此爻者，宜防小人，诸事有困难，弄巧成拙。做官的有危难，不宜进取。', 2, 1, 28);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',60,2,'窥观，利女贞。','象曰：窥观女贞，亦可丑也。','得此爻者，在家不如意，外出谋事则好，或喜或忧，或因妇人而起是非，大抵宜动不宜静。此爻女喜，男悲。', 1, 1, 44);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',60,3,'观我生，进退。','象曰：观我生进退，未失道也。','得此爻者，三心二意，须谨慎行事，知难而退。做官的进退无常。', 1, 1, 52);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',60,4,'观国之光，利用宾于王。','象曰：观国之光，尚宾也。','得此爻者，宜出外谋事，多与外人交往，则有利。做官的或居闲职，清高之地。', 1, 1, 56);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',60,5,'观我生，君子无咎。','象曰：观我生，观民也。','得此爻者，时来运转，利益丰厚，对于妇人则有怀孕之喜，病重者有生命之忧。做官的会因为自己良好的官德，爵禄有升。', 0, 0, 62);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',60,6,'观其生，君子无咎。','象曰：观其生，志未平也。','得此爻者，运势不通，心有余而力不足，怀孕者利于生育，久病者会痊愈。做官的宜退守，修德养身。', 1, 0, 61);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',26,1,'屦校灭趾，无咎。','象曰：屦校灭趾，不行也。','得此爻者，宜谨慎行事，以免生祸端。做官的会遭到贬职。', 2, 0, 58);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',26,2,'噬肤灭鼻，无咎。','象曰：噬肤灭鼻，乘刚也。','得此爻者，进退艰难，是非不断，或生暗疾，骨肉有伤。做官的不会顺利，会有所纠结。', 1, 1, 10);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',26,3,'噬腊肉，遇毒。小吝，无咎。','象曰：遇毒，位不当也。','得此爻者，不易成事，运气不顺，或生心腹之疾，或有惊险。做官的才力不及，有失。', 2, 1, 18);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',26,4,'噬干胏，得金矢。利艰贞，吉。','象曰：利艰贞吉，未光也。','得此爻者，经商必获利。做官的会升迁，读书人会成名。', 0, 0, 30);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',26,5,'噬干肉，得黄金。贞厉，无咎。','象曰：贞厉无咎，得当也。','得此爻者，行好运，有病的会痊愈，有冤的会昭雪，读书人进取成名，做官的会剪除小人。', 0, 1, 24);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',26,6,'何校灭耳，凶。','象曰：何校灭耳，聪不明也。','得此爻者，须防争诉，不良者，耳目不明，血气不顺，或有生命之忧。做官的须防止小人的谗言而遭致贬职。', 2, 0, 27);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',22,1,'贲其趾，舍车而徒。','象曰：舍车而徒，义弗乘也。','得此爻者，多奔波，静凶动吉。做官的须防退职之患。', 1, 0, 54);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',22,2,'贲其须。','象曰：贲其须，与上兴也。','得此爻者，得人提拔，好运可期，但也要相时而动，不可随性而为，以免遭难。做官的会因人成事，升迁有望。', 1, 1, 6);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',22,3,'贲如，濡如，永贞吉。','象曰：永贞之吉，终莫之陵也。','得此爻者，好运来到，不必费力，自然荣盛，即使有是非纠纷，也不足为患。做官的与人和睦，能居要职。', 0, 0, 30);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',22,4,'贲如，皤如，白马翰如，匪寇婚媾。','象曰：六四当位疑也。匪寇婚媾，终无尤也。','得此爻者，先凶后吉，忧中有喜，虽有危险，终得安宁。未婚者，有望成家。做官的先难后易。', 1, 1, 18);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',22,5,'贲于丘园，束帛戋戋。吝，终吉。','象曰：六五之吉，有喜也。','得此爻者，会遇贵人，经营获利，多喜事。做官的闲职者会受到重用，在职者福禄双全。', 0, 1, 20);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',22,6,'白贲，无咎。','象曰：白贲无咎，上得志也。','得此爻者，须防好运转凶，家中、亲属有长辈或命终。做官的会升迁。', 1, 0, 23);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',62,1,'剥床以足，蔑贞，凶。','象曰：剥床以足，以灭下也。','得此爻者，营谋不遂，或有手足之灾，或兄弟不睦，凶则家破身亡。做官的有升迁之机会，但宜见机行事。', 2, 1, 30);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',62,2,'剥床以辨，蔑贞，凶。','象曰：剥床以辨，未有与也。','得此爻者，营谋不遂，或受到小人的侵辱，或受到他人的猜忌。做官的须防被贬职。', 2, 1, 46);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',62,3,'剥之，无咎。','象曰：剥之无咎，失上下也。','得此爻者，难遇知己，生涯不顺，欲求名利，必须创新，此爻像父母妻子或有忧，须谨防。做官的会遇到明主或大官提拔。', 1, 1, 54);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',62,4,'剥床以肤，凶。','象曰：剥床以肤，切近灾也。','得此爻者，时运不佳，危难之时，多有争诉刑克之事。做官的须谨防小人的谗言，以免遭难。', 2, 1, 58);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',62,5,'贯鱼，以宫人宠，无不利。','象曰：以宫人宠，终无尤也。','得此爻者，人情和合，营谋得时，家和福生，妇人进财。做官的升高进职，居要位。读书人、学子考试必能考出佳绩。', 0, 1, 60);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',62,6,'硕果不食，君子得舆，小人剥庐。','象曰：君子得舆，民所载也；小人剥庐，终不可用也。','得此爻者，须谨慎，踏实稳重者可无忧。商人生意买卖会不错。做官的会有权柄。', 1, 0, 63);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',31,1,'不远复，无只悔，元吉。','象曰：不远之复，以修身也。','得此爻者，万事如意，经营获利。做官的会位高权重。读书人会取得佳绩。', 0, 0, 63);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',31,2,'休复，吉。','象曰：休复之吉，以下仁也。','得此爻者，与人共利，事业兴旺，病者痊愈。做官的遭贬者会复职。', 0, 1, 15);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',31,3,'频复，厉，无咎。','象曰：频复之厉，义无咎也。','得此爻者，事多反复，阴阳差错，时好时坏。做官的职位不稳定，更变无定。', 1, 1, 23);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',31,4,'中行独复。','象曰：中行独复，以从道也。','得此爻者，好运可期，营谋得利。做官的会复职。', 1, 1, 27);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',31,5,'敦复，无悔。','象曰：敦复无悔，中以自考也。','得此爻者，会有积蓄，但要谨防父亲出意外。做官的有升职之机会。', 0, 1, 29);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',31,6,'迷复，凶，有灾眚。用行师，终有大败，以其国君凶，至于十年不克征。','象曰：迷复之凶，反君道也。','得此爻者，做事乖张，诸事不顺，静吉动凶。做官的会过于贪婪权力而有损。', 2, 1, 30);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',24,1,'无妄，往吉。','象曰：无妄之往，得志也。','得此爻者，营谋得利。做官的会得到上司的赞许，百姓的爱戴。', 0, 0, 56);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',24,2,'不耕获，不菑畲，则利有攸往。','象曰：不耕获，未富也。','得此爻者，正当好运，不劳而获。富人进财多，商人出外获利。当官的会升官。读书人会取得佳绩。', 0, 1, 8);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',24,3,'无妄之灾。或系之牛，行人之得，邑人之灾。','象曰：行人得牛，邑人灾也。','得此爻者，无妄之灾，破财损身。做官的不宜进取。', 2, 1, 16);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',24,4,'可贞，无咎。','象曰：可贞无咎，固有之也。','得此爻者，宜守旧，图谋有实，不致虚浮。做官的宜守职，勿妄动。', 1, 0, 28);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',24,5,'无妄之疾，勿药有喜。','象曰：无妄之药，不可试也。','得此爻者，营谋有成，病得愈，或有生育之喜。做官的纵有祸难，也会不辩自明，不解自释。', 1, 0, 26);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',24,6,'无妄，行有眚，无攸利。','象曰：无妄之行，穷之灾也。','得此爻者，好运已过，不可妄动，否则是非迭生，唯有变通可免祸。做官的妄动有被贬职之忧。', 1, 0, 25);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',6,1,'有厉，利已。','象曰：有厉利已，不犯灾也。','得此爻者，宜守旧，不然会有不测之祸。做官的宜退居闲职，或退位。', 2, 0, 38);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',6,2,'舆说輹。','象曰：舆说輹，中无尤也。','得此爻者，须谨防是非，或有足疾、腰疾。', 2, 0, 22);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',6,3,'良马逐，利艰贞。曰闲舆卫，利有攸往。','象曰：利有攸往，上合志也。','得此爻者，会得到长辈的重用，或知己相助，前运辛苦，后可有获。做官的会有实权。', 1, 0, 14);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',6,4,'童豕之牿，元吉。','象曰：六四元吉，有喜也。','得此爻者，营谋有望，财富增加。做官的会有升迁之喜。', 0, 1, 2);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',6,5,'豮豕之牙，吉。','象曰：六五之吉，有庆也。','得此爻者，营谋遂意，多有喜庆之事。做官的会高升。', 0, 1, 4);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',6,6,'何天之衢，亨。','象曰：何天之衢，道大行也。','得此爻者，万事如意，心想事成，好运连连。做官的会得到上司的提拔，或被举荐而高升。读书人会进取成名。', 0, 0, 7);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',30,1,'舍尔灵龟，观我朵颐，凶。','象曰：观我朵颐，亦不足贵也。','得此爻者，为争夺财利而起祸，大凡心底善良守正道者可无忧。做官的会受贿，失其廉。', 2, 0, 62);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',30,2,'颠颐，拂经；于丘颐，征凶。','象曰：六二征凶，行失类也。','得此爻者，大起大落，是非不一，凶者病致死。做官的须防被贬职。', 2, 1, 14);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',30,3,'拂颐，贞凶。十年勿用，无攸利。','象曰：十年勿用，道大悖也。','得此爻者，运势低迷，荒诞无稽，甚至有生死离别之伤。做官的有丧名失节之患。', 2, 1, 22);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',30,4,'颠颐，吉。虎视眈眈，其欲逐逐，无咎。','象曰：颠颐之吉，上施光也。','得此爻者，会得到好人的帮助，营谋遂意。做官的会得到祖上的恩惠，幸宠有加。', 0, 1, 26);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',30,5,'拂经，居贞吉。不可涉大川。','象曰：居贞之吉，顺以从上也。','得此爻者，会有依靠，事可成，但不可乘船涉险。做官的会因人而功可成，位可保。', 0, 1, 28);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',30,6,'由颐，厉吉。利涉大川。','象曰：由颐厉吉，大有庆也。','得此爻者，营谋有成，无往不利。做官的爵禄荣重。读书人会取得佳绩。', 0, 0, 31);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',33,1,'藉用白茅，无咎。','象曰：藉用白茅，柔在下也。','得此爻者，谨慎行事，财利可固。凶者，防孝服之忧。做官的小心谨慎则禄位巩固。', 1, 1, 1);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',33,2,'枯杨生稊，老夫得其女妻，无不利。','象曰：老夫女妻，过以相与也。','得此爻者，或娶妻纳妾，或生子，君子得少妻义子。做官的去位者会复职。', 0, 0, 49);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',33,3,'栋桡，凶。','象曰：栋桡之凶，不可以有辅也。','得此爻者，须防大难而遭致家产有失，或有足目之疾。做官的须谨防被贬职。', 2, 0, 41);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',33,4,'栋隆，吉。有它吝。','象曰：栋隆之吉，不桡乎下也。','得此爻者，多有修造之事，可做大事，勿谋小事。做官的必能受到重用。读书人进取成名。', 0, 0, 37);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',33,5,'枯杨生花，老妇得其士夫，无咎无誉。','象曰：枯杨生花，何可久也。老妇土夫，亦可丑也。','得此爻者，营谋不利，或喜中生忧，美事成丑；先逆后顺之象。做官的不可久任。', 1, 0, 35);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',33,6,'过涉灭顶，凶，无咎。','象曰：过涉之凶，不可咎也。','得此爻者，不宜进取，退守为安，面部或有疾。做官的有功高震主身危之祸。', 2, 1, 32);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',45,1,'习坎，入于坎窞。凶。','象曰：习坎入坎，失道凶也。','得此爻者，时运不佳，宜防跌入陷阱灾难之中。做官的须防小人。', 2, 1, 13);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',45,2,'坎有险，求小得。','象曰：求小得，未出中也。','得此爻者，有小成就，女命或为侍妾，凶者防险难或生心腹血气之疾。做官的会有小的成就，大事不成。', 1, 0, 61);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',45,3,'来之坎坎，险且枕，入于坎窞，勿用。','象曰：来之坎坎，终无功也。','得此爻者，多坎坷，多争诉之事。做官的宜退守。', 2, 1, 37);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',45,4,'樽酒簋贰，用缶，纳约自牖，终无咎。','象曰：樽酒簋贰，刚柔际也。','得此爻者，多喜事，或有结婚之喜。做官的多饮食之乐。', 1, 1, 41);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',45,5,'坎不盈，只既平，无咎。','象曰：坎不盈，中未大也。','得此爻者，平淡无常，宜养精蓄锐。做官的没有危难，职位无忧。', 1, 0, 47);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',45,6,'系用徵纆，寘于丛棘，三岁不得，凶。','象曰：上六失道，凶三岁也。','得此爻者，须防牢狱之灾。做官的须防职权旁落之忧。', 2, 1, 44);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',18,1,'履错然，敬之，无咎。','象曰：履错之敬，以辟咎也。','得此爻者，须防无妄之灾，宜谨慎，或有足疾。做官的宜安守。', 1, 0, 50);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',18,2,'黄离，元吉。','象曰：黄离元吉，得中道也。','得此爻者，财利可获。做官的会受到重用。读书人会取得佳绩。', 0, 1, 2);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',18,3,'日昃之离。不鼓缶而歌，则大耋之嗟，凶。','象曰：日昃之离，何可久也。','得此爻者，乐中生悲，吉中生愁，险难迭生。做官的告休。', 2, 0, 26);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',18,4,'突如其来如，焚如，死如，弃如。','象曰：突如其来如，无所容也。','得此爻者，时运不济，困难重重，或和长辈不睦，或遭官灾。', 2, 0, 22);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',18,5,'出涕沱若，戚嗟若，吉。','象曰：六五之吉，离王公也。','得此爻者，不宜进取，宜守常。做官的在位者得志，退职者多险危。', 1, 1, 16);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',18,6,'王用出征，有嘉。折首，获匪其丑，无咎。','象曰：王用出征，以正邦也。','得此爻者，时运佳，多喜事，经营获利。做官的会功成名就，读书人会取得好成绩。', 0, 0, 19);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',49,1,'咸其拇。','象曰：咸其拇，志在外也。','得此爻者，行事过急，多难成就。做官的须修身养性，等待机会，京官出，闲官起。', 1, 1, 17);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',49,2,'咸其腓，凶，居吉。','象曰：虽凶居吉，顺不害也。','得此爻者，奔波徒劳，宜静不宜动。做官的在位者吉，出差者有险。', 1, 1, 33);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',49,3,'咸其股，执其随，往吝。','象曰：咸其股，亦不处也。志在随人，所执下也。','得此爻者，最好退守，做官的谨防被贬。', 1, 0, 57);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',49,4,'贞吉悔亡，憧憧往来，朋从尔思。','象曰：贞吉悔亡，未感害也。憧憧往来，未光大也。','得此爻者，朋友相助，可谋小事，大事有困难，心绪不定。做官的秉公执政，升迁有望。', 1, 0, 53);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',49,5,'咸其脢，无悔。','象曰：咸其脢，志末也。','得此爻者，人情不合，营谋微小。做官的多与同僚不睦。', 1, 0, 51);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',49,6,'咸其辅，颊，舌。','象曰：咸其辅颊舌，滕口说也。','得此爻者，多口舌之争，防止被他人诽谤，从事演讲、技艺、评论者吉。做官的或遭言责。', 1, 1, 48);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',35,1,'浚恒，贞凶，无攸利。','象曰：浚恒之凶，始求深也。','得此爻者，人情乖离，前途渺茫，静守可免祸。做官的难于受到上司的赏识。', 2, 1, 3);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',35,2,'悔亡。','象曰：九二悔亡，能久中也。','得此爻者，安分守己则无忧。做官的宜洁身自爱，谨慎行事。', 1, 0, 51);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',35,3,'不恒其德，或承之羞，贞吝。','象曰：不恒其德，无所容也。','得此爻者，须防小人诽谤，争诉之扰。做官的须防被贬。', 2, 0, 43);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',35,4,'田无禽。','象曰：久非其位，安得禽也。','得此爻者，营谋费力，难以成事。做官的时运不济，有所退步。', 2, 0, 39);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',35,5,'恒其德，贞。妇人吉，夫子凶。','象曰：妇人贞吉，从一而终也。夫子制义，从妇凶也。','得此爻者，多招毁谤，有所损失。做官的多阿谀权势而有失。', 2, 1, 33);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',35,6,'振恒，凶。','象曰：振恒在上，大无功也。','得此爻者，求名望利，小能成，大则无功，女人不利夫子。做官的会很劳累，多动少静。', 2, 1, 34);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',48,1,'遁尾，厉。勿用有攸往。','象曰：遁尾之厉，不往何灾也。','得此爻者，宜安分守己，可无忧。做官的宜择机而退。', 2, 1, 16);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',48,2,'执之用黄牛之革，莫之胜说。','象曰：执用黄牛，固志也。','得此爻者，家中有争执，安常守分无忧，农人有进牛畜之喜 。', 1, 1, 32);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',48,3,'系遁，有疾厉。畜臣妾，吉。','象曰：系遁之厉，有疾惫也。畜臣妾吉，不可大事也。','得此爻者，多灾多难，良善者，得妻之力，或进人口。做官的宜急流勇退。', 1, 0, 56);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',48,4,'好遁，君子吉，小人否。','象曰：君子好遁，小人否也。','得此爻者，虽有收获，但谨防因小人而受祸。做官的宜告休避难。', 1, 0, 52);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',48,5,'嘉遁，贞吉。','象曰：嘉遁贞吉，以正志也。','得此爻者，近贵多利。做官的或升迁，或功成身退。', 0, 0, 50);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',48,6,'肥遁，无不利。','象曰：肥遁无不利，无所疑也。','得此爻者，营谋获利，家肥业厚。做官的乐天知命，退居闲职。', 0, 0, 49);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',3,1,'壮于趾，征凶，有孚。','象曰：壮于趾，其孚穷也。','得此爻者，会有争诉，动则凶，须防足疾。做官的须防小人的谗言而受辱。', 2, 0, 35);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',3,2,'贞吉。','象曰：九二贞吉，以中也。','得此爻者，营谋得意。做官的中庸处事，心中无愧。', 0, 0, 19);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',3,3,'小人用壮，君子用罔，贞厉。羝羊触藩，羸其角。','象曰：小人用壮，君子罔也。','得此爻者，或有官司之事，或家中有丧，人财不利。做官的多祸难，进退难安。', 2, 0, 11);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',3,4,'贞吉，悔亡；藩决不羸，壮于大舆之輹。','象曰：藩决不羸，尚往也。','得此爻者，常人得福，久静者必动，动则吉。做官的闲职者复职，进取如意。', 0, 0, 7);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',3,5,'丧羊于易，无悔。','象曰：丧羊于易，位不当也。','得此爻者，一筹莫展，不能得利，病者有丧身之兆。做官的会荒于政务。', 2, 1, 1);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',3,6,'羝羊触藩，不能退，不能遂，无攸利。艰则吉。','象曰：不能退，不能遂，不详也；艰则吉，咎不长也。','得此爻者，进退两难，多是非争诉，宜守常。做官的宜退不宜进，恐有遭贬之危。', 1, 1, 2);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',58,1,'晋如，摧如，贞吉。罔孚，裕，无咎。','象曰：晋如摧如，独行正也。裕无咎，未受命也。','得此爻者，忧愁参半，静则吉，动则凶。做官的不宜进取，须防流言。', 1, 1, 26);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',58,2,'晋如，愁如，贞吉。受兹介福，于其王母。','象曰：受之介福，以中正也。','得此爻者，求谋称意，多得母亲扶助，或得妻财。做官的守正者会进取。', 0, 1, 42);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',58,3,'众允，悔亡。','象曰：众允之，志上行也。','得此爻者，得朋友之助，营谋遂意，但谨防意外之险。做官的有升迁之机。', 1, 1, 50);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',58,4,'晋如鼫鼠，贞厉。','象曰：鼫鼠贞厉，位不当也。','得此爻者，时运不佳，或有争诉。做官的不宜进取，有阻力，须守正。', 2, 0, 62);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',58,5,'悔亡，失得勿恤，往吉，无不利。','象曰：失得勿恤，往有庆也。','得此爻者，好运到来，营谋获利。做官的有升迁之喜。', 0, 1, 56);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',58,6,'晋其角，维用伐邑，厉吉无咎，贞吝。','象曰：维用伐邑，道未光也。','得此爻者，有修屋宇之喜，不良者有争诉之忧。做官的有食邑之荣。', 1, 0, 59);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',23,1,'明夷于飞，垂其翼。君子于行，三日不食。有攸往，主人有言。','象曰：君子于行，义不食也。','得此爻者，或有手足之伤，善者有进财纳福之喜。做官的有飞黄腾达之象，但谨防有失。', 1, 0, 55);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',23,2,'明夷，夷于左股，用拯马壮，吉。','象曰：六二之吉，顺以则也。','得此爻者，常人或有难，但会得贵人之助。做官的会有实权，能当大任。读书人会取得好成绩。', 0, 1, 7);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',23,3,'明夷于南狩，得其大首，不可疾，贞。','象曰：南狩之志，乃大得也。','得此爻者，有修屋宇造作之兆。不良者，左股或有伤，多忧愁分离之患。', 1, 0, 31);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',23,4,'入于左腹，获明夷之心，出于门庭。','象曰：入于左腹，获心意也。','得此爻者，出外营谋者会顺利，妇人有孕者生男，不良者或生心腹之疾。做官的闲职者会复职，在职者，多出外任职，韬光养晦者必出身成名。', 1, 1, 19);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',23,5,'箕子之明夷，利贞。','象曰：箕子之贞，明不可息也。','得此爻者，难逢知己，或有家难之祸。做官的须修德养性可保无忧。', 1, 1, 21);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',23,6,'不明晦。初登于天，后入于地。','象曰：初登于天，照四国也。后入于地，失则也。','得此爻者，先喜后忧，老者或不寿。做官的防止遭人流言，或被贬。', 2, 1, 22);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',20,1,'闲有家，悔亡。','象曰：闲有家，志未变也。','得此爻者，谋事有成，未婚者会结婚，老者不利于寿。做官的闲职者会晋升有实权，当职者则权力旁落。', 1, 0, 52);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',20,2,'无攸遂，在中馈，贞吉。','象曰：六二之吉，顺以巽也。','得此爻者，营谋成家，多喜事。做官的会荣华富贵。', 0, 1, 4);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',20,3,'家人嗃嗃，悔厉，吉；妇子嘻嘻，终吝。','象曰：家人嗃嗃，未失也；妇子嘻嘻，失家节也。','得此爻者，忧喜参半，谨防沉迷于享乐中。做官的严而少宽恕之恩。', 2, 0, 28);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',20,4,'富家，大吉。','象曰：富家大吉，顺在位也。','得此爻者，时运正佳，贵人提拔，孤寡见亲。做官的仕途顺利，升迁有望。', 0, 1, 16);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',20,5,'王假有家，勿恤，吉。','象曰：王假有家，交相爱也。','得此爻者，营谋得利，会得到贵人的提携。做官的显贵，进取有望。', 0, 0, 22);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',20,6,'有孚威如，终吉。','象曰：威如之吉，反身之谓也。','得此爻者，营谋称意，女命更好。做官的位高权重，读书人进取成名。', 0, 0, 21);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',10,1,'悔亡，丧马勿逐，自复。见恶人，无咎。','象曰：见恶人，以辟咎也。','得此爻者，营谋先失而后得，人事先离而后合，谨防凶恶之灾患。做官的闲职者复职，被贬者复升。', 1, 0, 42);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',10,2,'遇主于巷，无咎。','象曰：遇主于巷，未失道也。','得此爻者，会得知己，营谋遂意。做官的会遇到明主，升迁有望。', 1, 0, 26);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',10,3,'见舆曳，其牛掣。其人天且劓，无初有终。','象曰：见舆曳，位不当也；无初有终，遇刚也。','得此爻者，谋望有阻，险中求安，先迷后顺。不良者有骨肉刑伤之厄。做官的须防小人的谗言。', 2, 1, 2);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',10,4,'睽孤，遇元夫。交孚，厉无咎。','象曰：交孚无咎，志行也。','得此爻者，能得到朋友的帮助，转危为安，求婚者必配。做官的会得到同僚的推荐，升迁有机。', 1, 0, 14);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',10,5,'悔亡，厥宗噬肤，往何咎。','象曰：厥宗噬肤，往有庆也。','得此爻者，经营获利，抬举有人。不良者，亲朋怨恶，骨肉刑伤，官司牵连。做官的会获得成就与名望，读书人会取得佳绩。', 1, 1, 8);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',10,6,'睽孤，见豕负涂，载鬼一车。先张之弧，后说之弧，匪寇婚媾。往遇雨则吉。','象曰：遇雨之吉，群疑亡也。','得此爻者，遭污受诬，先损后益。做官的须防被诽谤之忧。', 1, 0, 11);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',53,1,'往蹇来誉。 ','象曰：往蹇来誉，宜待也。 ','得此爻者，宜守旧安常。做官的稳步进取，好运将至。', 1, 1, 21);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',53,2,'王臣蹇蹇，匪躬之故。','象曰：王臣蹇蹇，终无尤也。','得此爻者，涉艰历险，营谋有阻。做官的宜保持忠贞，报效国家。', 2, 1, 37);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',53,3,'往蹇来反。','象曰：往蹇来反，内喜之也。','得此爻者，不宜进取，或有妻子之喜。做官的位高者会晋升。', 1, 0, 61);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',53,4,'往蹇来连。','象曰：往蹇来连，当位实也。','得此爻者，不良者会有争诉。做官的进升有机，求名望利皆有实而不虚。', 2, 1, 49);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',53,5,'大蹇朋来。','象曰：大蹇朋来，以中节也。','得此爻者，会得到贵人提举，无往不利。', 0, 0, 55);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',53,6,'往蹇来硕，吉。利见大人。','象曰：往蹇来硕，志在内也；利见大人，以从贵也。','得此爻者，好运来到，营谋遂意。做官的会身居要职，读书人进取成名。', 0, 1, 52);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',43,1,'无咎。','象曰：刚柔之际，义无咎也。','得此爻者，经营者吉，未婚者配。做官的德位相称，晋升有望，读书人会取得好成绩。', 1, 1, 11);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',43,2,'田获三狐，得黄矢，贞吉。','象曰：九二贞吉，得中道也。','得此爻者，正当好运，财利可获。做官的会荣华富贵，读书人会取得佳绩。', 0, 0, 59);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',43,3,'负且乘，致寇至，贞吝。','象曰：负且乘，亦可丑也；自我致戎，又谁咎也。','得此爻者，须防窃盗，是非诉讼。做官的谨防被贬之忧。', 2, 1, 35);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',43,4,'解而拇，朋至斯孚。','象曰：解而拇，未当位也。','得此爻者，须防小人，或有交友不慎之祸。', 2, 0, 47);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',43,5,'君子维有解，吉，有孚于小人。','象曰：君子有解，小人退也。','得此爻者，正当好运，君子有利，病者愈。做官的会身居要职。', 0, 1, 41);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',43,6,'公用射隼，于高墉之上，获之无不利。','象曰：公用射隼，以解悖也。','得此爻者，运途顺利，多营谋获利。做官的闲职者会复职，居要位。', 0, 1, 42);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',14,1,'已事遄往，无咎，酌损之。','象曰：已事遄往，尚合志也。','得此爻者，谋事得当，可获利，不良者，或因酒食误事。做官的会因为工作忙碌而顾不得家庭，声望日盛。', 1, 0, 46);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',14,2,'利贞，征凶。弗损，益之。','象曰：九二利贞，中以为志也。','得此爻者，宜谨守勿动。做官的时机未成熟，难于升迁。', 2, 0, 30);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',14,3,'三人行，则损一人；一人行，则得其友。','象曰：一人行，三则疑也。','得此爻者，合力经营，获利者多，未婚者配。做官的与同僚关系融洽，进取有望。', 1, 1, 6);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',14,4,'损其疾，使遄有喜，无咎。','象曰：损其疾，亦可喜也。','得此爻者，多喜庆之事，有灾者转好运，有病者愈，有忧者转喜。做官的闲职者将被起复。', 1, 1, 10);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',14,5,'或益之，十朋之龟，弗克违。元吉。','象曰：六五元吉，自上佑也。','得此爻者，运势大好，财利丰富。做官的会得到领导的赞赏和提拔。读书人会取得佳绩。', 0, 1, 12);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',14,6,'弗损，益之，无咎。贞吉。利有攸往，得臣无家。','象曰：弗损益之，大得志也。','得此爻者，贵人扶持，财利可期。做官的会得到下属的爱戴，领导的器重。', 0, 0, 15);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',28,1,'利用为大作，元吉，无咎。','象曰：元吉无咎，下不厚事也。','得此爻者，大事可成，万事称心。做官的会高升，读书人会取得大的成绩。', 0, 0, 60);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',28,2,'或益之，十朋之龟，弗克违，永贞吉。王用享于帝，吉。','象曰：或益之，自外来也。','得此爻者，商贾获利，福份多多。做官的仕途一帆风顺，读书人进取成名。', 0, 1, 12);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',28,3,'益之用凶事，无咎。有孚中行，告公用圭。','象曰：益用凶事，固有之也。','得此爻者，常人获利，不良者大凶，官灾祸患并至。做官的会受到重用，委以重职。', 1, 1, 20);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',28,4,'中行，告公从。利用为依迁国。','象曰：告公从，以益志也。','得此爻者，或会迁居，或有修造，诉者利，官者伸。做官的会被领导委以重任。', 1, 1, 24);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',28,5,'有孚惠心，勿问元吉。有孚惠我德。','象曰：有孚惠心，勿问之矣。惠我德，大得志也。','得此爻者，谋望称意，事多顺利。做官的会遇到明主，仕途顺利。', 0, 0, 30);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',28,6,'莫益之，或击之，立心勿恒，凶。','象曰：莫益之，偏辞也。或击之，自外来也。','得此爻者，贪图名利，或有意外之祸，刑克损伤之灾。做官的因为贪求名位，或被贬职。', 2, 0, 29);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',1,1,'壮于前趾，往不胜为咎。','象曰：不胜而往，咎也。','得此爻者，会有无妄之灾，宜静守。做官的躁动者有损。', 2, 0, 33);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',1,2,'惕号，莫夜有戎，勿恤。','象曰：有戎勿恤，得中道也。','得此爻者，多忧愁，多惊险，谨防盗窃之事发生。做官的多掌兵权。', 2, 0, 17);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',1,3,'壮于頄，有凶。君子夬夬，独行遇雨，若濡有愠，无咎。','象曰：君子夬夬，终无咎也。','得此爻者，会有争诉之忧，品行端正者无忧，初见艰难，终得安乐。做官的除奸不成，反被倒咬一口。', 2, 0, 9);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',1,4,'臀无肤，其行次且。牵羊悔亡，闻言不信。','象曰：其行次且，位不当也；闻言不信，聪不明也。','得此爻者，心绪不定，所谋不成。做官的有心而力不足，难于升迁。', 2, 0, 5);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',1,5,'苋陆夬夬，中行无咎。','象曰：中行无咎，中未光也。','得此爻者，营谋遂意，诉者伸，有病者愈。做官的须防奸邪之辈侵害。', 1, 0, 3);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',1,6,'无号，终有凶。','象曰：无号之凶，终不可长也。','得此爻者，营谋不成，宜守常，不良者，骨肉刑克，是非缠绕。做官的难于久任，激流勇退为佳。', 2, 1, 0);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',32,1,'系于金柅，贞吉。有攸往，见凶。羸豕孚蹢躅。','象曰：系于金柅，柔道牵也。','得此爻者，或遇贵人好友提携而发财，女人有生育之喜。不良者，须防疾诉忧患，或女人有不贞之事。做官的有被贬职之忧。', 1, 1, 0);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',32,2,'包有鱼，无咎，不利宾。','象曰：包有鱼，义不及宾也。','得此爻者，有财运，妇人则有怀孕之喜。做官的晋升有望。', 1, 0, 48);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',32,3,'臀无肤，其行次且。厉，无大咎。','象曰：其行次且，行未牵也。','得此爻者，多灾难。做官的会退步，或者被贬。', 2, 0, 40);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',32,4,'包无鱼，起凶。','象曰：无鱼之凶，远民也。','得此爻者，多是非之扰，年老者不利于寿。做官的有损，多难。', 2, 0, 36);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',32,5,'以杞包瓜，含章，有陨自天。','象曰：九五含章，中正也；有陨自天，志不舍命也。','得此爻者，会遇到贵人提携，有意外之喜，妇人有怀孕之喜。做官的会为栋梁之才。', 1, 0, 34);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',32,6,'姤其角，吝，无咎。','象曰：姤其角，上穷吝也。','得此爻者，营谋艰辛，孤立无助。做官的功名大显，但好运将尽。读书人努力进取者能取得佳绩。', 2, 0, 33);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',57,1,'有孚不终，乃乱乃萃。若号，一握为笑。勿恤，往无咎','象曰：乃乱乃萃，其志乱也。','得此爻者，会受到小人的陷害，先凶后吉，宜谨慎从事。做官的会被贬职。', 1, 1, 25);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',57,2,'引吉，无咎。孚乃利用禴。','象曰：引吉无咎，中未变也。','得此爻者，正当好运，贵人提举，营谋得利。做官的得人引荐，能升迁。', 0, 1, 41);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',57,3,'萃如，嗟如，无攸利。往无咎，小吝。','象曰：往无咎，上巽也。','得此爻者，家里不安，六亲有损，老者多凶。做官的在位不得安宁，出外则艰辛。', 2, 1, 49);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',57,4,'大吉，无咎。','象曰：大吉无咎，位不当也。','得此爻者，不从正道者，会有凶祸，惟大德君子，可改过得福。做官的须防他人猜忌，宜弃高就低，急流勇退为吉。', 1, 0, 61);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',57,5,'萃有位，无咎。匪孚，元永贞，悔亡。','象曰：萃有位，志未光也。','得此爻者，人情不合，营谋有阻。做官的不得人心，其志未光。', 1, 0, 59);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',57,6,'赍咨涕洟，无咎。','象曰：赍咨涕洟，未安上也。','得此爻者，事多烦扰，不能安宁，或上下无情，长幼忧愁，名利成虚。', 2, 1, 56);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',39,1,'允升，大吉。','象曰：允升大吉，上合志也。','得此爻者，名利双收，营谋遂心。做官的晋升有望。', 0, 1, 7);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',39,2,'孚乃利用禴，无咎。','象曰：九二之孚，有喜也。','得此爻者，常人有喜，病者安，谋事可成。做官的有升迁之机。', 1, 0, 55);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',39,3,'升虚邑。','象曰：升虚邑，无所疑也。','得此爻者，营谋遂意。做官的会身居要位，读书人可成名。', 1, 0, 47);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',39,4,'王用亨于岐山，吉，无咎。','象曰：王用亨于岐山，顺事也。','得此爻者，得山林之利，隐者有山林之乐。做官的会升迁，身居要职。', 0, 1, 35);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',39,5,'贞吉，升阶。','象曰：贞吉升阶，大得志也。','得此爻者，正行好运，大愿可成。做官的会高升。', 0, 1, 37);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',39,6,'冥升，利于不息之贞。','象曰：冥升在上，消不富也。','得此爻者，有贪得无厌之祸。做官的会告休。', 1, 1, 38);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',41,1,'臀困于株木，入于幽谷，三岁不见。','象曰：入于幽谷，幽不明也。','得此爻者，有惊忧，或有丧服之灾。做官的会退职。', 2, 1, 9);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',41,2,'困于洒食，朱绂方来，利用享祀。征凶，无咎。','象曰：困于洒食，中有庆也。','得此爻者，得贵人提携，营谋获利，静吉动凶。做官的有晋升之机。', 1, 0, 57);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',41,3,'困于石，据于疾藜。入于其宫，不见其妻，凶。','象曰：据于疾藜，乘刚也；入于其宫，不见其妻，不祥也。','得此爻者，多难之时，宜守正谨慎。', 2, 1, 33);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',41,4,'来徐徐，困于金车，吝，有终。','象曰：来徐徐，志在下也。虽不当位，有与也。','得此爻者，谋事虽然不利，但终有出险之时，从商者或周转不利。做官的闲职者会被起用。', 2, 0, 45);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',41,5,'劓刖，困于赤绂。乃徐，有说，利用祭祀。','象曰：劓刖，志未得也。乃徐有说，以中直也。利用祭祀，受福也。','得此爻者，先难后易，不良者有诉刑之扰，丧服之忧。做官的先阻后顺。', 2, 0, 43);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',41,6,'困于葛藟，于臲卼，曰动悔。有悔，征吉。','象曰：困于葛藟，未当也。动悔有悔，吉行也。','得此爻者，防惊忧丧服，惟商人、旅行者利有攸往。做官的会有刑罚束缚之忧。', 1, 1, 40);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',37,1,'井泥不食，旧井无禽。','象曰：井泥不食，下也。旧井无禽，时舍也。','得此爻者，谋事有阻。做官的会退居闲职，求名者不遂。', 2, 1, 5);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',37,2,'井谷射鲋，瓮敝漏。','象曰：井谷射鲋，无与也。','得此爻者，宜谨守以避祸。做官的宜退以自保。', 2, 0, 53);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',37,3,'井渫不食，为我心恻。可用汲，王明，并受其福。','象曰：井渫不食，行恻也。求王明，受福也。','得此爻者，安分守己为吉，不良者或有灾。做官的难逢明主，需另觅良机。', 1, 0, 45);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',37,4,'井甃，无咎。','象曰：井甃无咎，修井也。','得此爻者，宜安分守己，或有迁居之喜。做官清廉者，修身立命，可望上进。', 1, 1, 33);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',37,5,'井冽，寒泉食。','象曰：寒泉之食，中正也。','得此爻者，营谋遂意。做官的品行端正，会得到上司的赞赏。', 0, 0, 39);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',37,6,'井收勿幕，有孚元吉。','象曰：元吉在上，大成也。','得此爻者，谋事顺利，财用充足。做官的功高德厚，能得升迁。', 0, 1, 36);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',17,1,'巩用黄牛之革。','象曰：巩用黄牛，不可以有为也。','得此爻者，宜谨守常规，不可存非分之想。做官的不宜进取，切不可怀出位之念。', 1, 0, 49);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',17,2,'己日乃革之。征吉，无咎。','象曰：己日革之，行有嘉也。','得此爻者，多喜庆之事，做官的会升迁。', 0, 1, 1);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',17,3,'征凶，贞厉。革言三就，有孚。','象曰：革言三就，又何之矣。','得此爻者，多事之时，谨慎而行。做官的有躁动失政之忧。', 2, 0, 25);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',17,4,'悔亡，有孚，改命，吉。','象曰：改命之吉，信志也。','得此爻者，会有转变，有收获。做官的会有升迁之机。', 1, 0, 21);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',17,5,'大人虎变，未占有孚。','象曰：大人虎变，其文炳也。','得此爻者，时运转好，多吉利之事。做官的晋升有望。', 0, 0, 19);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',17,6,'君子豹变，小人革面。征凶，居贞吉。','象曰：君子豹变，其文蔚也。小人革面，顺以从君也。','得此爻者，安分守己则是非不扰。做官的进取者会晋升，离退休者会功成身退。', 1, 1, 16);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',34,1,'鼎颠趾，利出否。得妾以其子，无咎。','象曰：鼎颠趾，未悖也。利出否，以从贵也。','得此爻者，因人成事，多喜事，或结婚，或生子，忧者喜，贱者贵。做官的会因功得晋升。', 1, 1, 2);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',34,2,'鼎有实，我仇有疾，不我能即，吉。','象曰：鼎有实，慎所之也。我仇有疾，终无尤也。','得此爻者，虽有收获，但须防忧。做官的秉公执政，须防小人的谗言之扰。', 0, 0, 50);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',34,3,'鼎耳革，其行塞，雉膏不食。方雨，亏悔，终吉。','象曰：鼎耳革，失其义也。','得此爻者，先难后易，老者多福，年轻人多不如意。做官的会遇到阻力，但最终的结果会好。', 1, 0, 42);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',34,4,'鼎折足，覆公餗，其形渥，凶。','象曰：覆公餗，信如何也。','得此爻者，多灾之时，或生足疾。做官的有被贬职之忧。', 2, 0, 38);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',34,5,'鼎黄耳金铉，利贞。','象曰：鼎黄耳，中以为实也。','得此爻者，时运不错，多获利。做官的多吉兆，多升迁。', 0, 1, 32);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',34,6,'鼎玉铉，大吉，无不利。','象曰：玉铉在上，刚柔节也。','得此爻者，安稳利达，谋求遂意。做官的闲职者复职，离退者功成身退。', 0, 0, 35);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',27,1,'震来虩虩，后笑言哑哑，吉。','象曰：震来虩虩，恐致福也。笑言哑哑，后有则也。','得此爻者，好运到来，先惊后喜。', 0, 0, 59);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',27,2,'震来厉，亿丧贝。跻于九陵，勿逐，七日得。','象曰：震来厉，乘刚也。','得此爻者，多难之时，或有争诉，小心为妙。做官的有遭奸邪之辈陷害之忧。', 2, 1, 11);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',27,3,'震苏苏，震行无眚。','象曰：震苏苏，位不当也。','得此爻者，多忧愁，多灾难，宜谨慎，可免祸。做官的不宜进取。', 2, 1, 19);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',27,4,'震遂泥。','象曰：震遂泥，未光也。','得此爻者，一筹莫展，前进有阻。做官的有被贬职之危。', 2, 0, 31);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',27,5,'震往来厉，亿无丧，有事。','象曰：震往来厉，危行也。其事在中，大无丧也。','得此爻者，不吉之时，或有手足受损之忧。做官的守常者无忧。', 2, 1, 25);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',27,6,'震索索，视矍矍，征凶。震不于其躬，于其邻，无咎。婚媾有言。','象曰：震索索，未得中也。虽凶无咎，畏邻戒也。','得此爻者，须谨防意外，或夫妻有刑克，亲邻遭难。做官的要谨防被贬职之忧。', 2, 1, 26);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',54,1,'艮其趾，无咎。利永贞。','象曰：艮其趾，未失正也。','得此爻者，宜守本份，不要纵欲。做官的保守己职者无失。', 1, 1, 22);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',54,2,'艮其腓，不拯其随，其心不快。','象曰：不拯其随，未退听也。','得此爻者，运势受阻，或奔波在外，多劳苦；或有足疾。做官的得不到他人的帮助，不宜上进。', 2, 1, 38);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',54,3,'艮其限，列其夤，厉薰心。','象曰：艮其限，危薰心也。','得此爻者，不顺之时，危难不安。', 2, 0, 62);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',54,4,'艮其身，无咎。','象曰：艮其身，止诸躬也。','得此爻者，宜安分守常，不可有非分之想。', 1, 1, 50);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',54,5,'艮其辅，言有序，悔亡。','象曰：艮其辅，以中正也。','得此爻者，正人君子，人情和合，谋望遂意。做官的会居要职。', 1, 1, 52);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',54,6,'敦艮，吉。','象曰：敦艮之吉，以厚终也。','得此爻者，多福多利，但易防不吉之事。做官的会升迁，读书人会取得佳绩。', 0, 0, 55);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',52,1,'鸿渐于干，小子厉。有言，无咎。','象曰：小子之厉，义无咎也。','得此爻者，运气不佳，谋为不利。', 2, 1, 20);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',52,2,'鸿渐于磐，饮食衎衎，吉。','象曰：饮食衎衎，不素饱也。','得此爻者，无往不利，随处皆安。', 0, 1, 36);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',52,3,'鸿渐于陆，夫征不复，妇孕不育，凶。利御寇。','象曰：夫征不复，离群丑也。妇孕不育，失其道也。利用御寇，顺相保也。','得此爻者，多惊扰，人情不睦，盗贼侵害。做官的上进有阻力，有被贬之忧。', 2, 0, 60);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',52,4,'鸿渐于木，或得其桷，无咎。','象曰：或得其桷，顺以巽也。','得此爻者，利于修造，自给自足。做官的须随遇而安，升迁无定。', 1, 1, 48);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',52,5,'鸿渐于陵，妇三岁不孕，终莫之胜，吉。','象曰：终莫之胜，吉，得所愿也。','得此爻者，先难后易，做官的多招诽谤，先暗后明。', 0, 0, 54);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',52,6,'鸿渐于陆，其羽可用为仪，吉。','象曰：其羽可用为仪，吉，不可乱也。','得此爻者，得人荐举，谋望有成，祸患不侵，多福多利。做官的大运来到，会得到重用。读书人会取得好成绩。', 0, 0, 53);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',11,1,'归妹以娣，跛能履，征吉。','象曰：归妹以娣，以恒也。跛能履吉，相承也。','得此爻者，有小德，谋望顺遂。做官的或有政绩。', 0, 0, 43);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',11,2,'眇能视，利幽人之贞。','象曰：利幽人之贞，未变常也。','得此爻者，不宜进取，守旧者则祸害不生。', 1, 0, 27);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',11,3,'归妹以须，反归以娣。','象曰：归妹以须，未当也。','得此爻者，进退无常，劳役悲苦。做官的有被降职之忧。', 2, 1, 3);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',11,4,'归妹愆期，迟归有时。','象曰：愆期之志，有待而行也。','得此爻者，不是佳期，须待时运。', 1, 0, 15);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',11,5,'帝乙归妹，其君之袂，不如其娣之袂良。月几望，吉。','象曰：帝乙归妹，不如其娣之袂良也。其位在中，以贵行也。','得此爻者，正值好运，或成婚，或得财。做官的会受到重用，身居要职。', 0, 1, 9);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',11,6,'女承筐无实，士刲羊无血，无攸利。','象曰：上六无实，承虚筐也。','得此爻者，事多不顺，营谋皆空。做官的居虚位而无实禄。', 2, 1, 10);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',19,1,'遇其配主，虽旬无咎；往有尚。','象曰：虽旬无咎，过旬灾也。','得此爻者，得贵人提拔，谋望有成，不良者有大过，必招灾殃。做官的会遇到明主，得以晋升。', 1, 0, 51);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',19,2,'丰其蔀，日中见斗。往得疑疾。有孚发若，吉。','象曰：有孚发若，信以发志也。','得此爻者，有久困发财之美，有讼者不辩自明，有病者会愈。做官的忠言多阻于邪议，先失后得。', 0, 1, 3);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',19,3,'丰其沛，日中见昧。折其右肱，无咎。','象曰：丰其沛，不可大事也。折其右肱，终不可用也。','得此爻者，营谋难遂，或明而受蔽，争诉日起，或手足有疾，难于做事。做官的有告休之兆。', 1, 0, 27);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',19,4,'丰其蔀，日中见斗。遇其夷主，吉。','象曰：丰其蔀，位不当也。日中见斗，幽不明也。遇其夷主，吉，行也。','得此爻者，明而受蔽，得人解释而吉。做官的受到领导和同僚的猜忌，位不安。', 1, 0, 23);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',19,5,'来章，有庆誉，吉。','象曰：六五之吉，有庆也。','得此爻者，会得好人提举，谋望称意。读书人会取得佳绩。', 0, 1, 17);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',19,6,'丰其屋，蔀其家，窥其户，阒其无人，三岁不见，凶。','象曰：丰其屋，天际翔也。窥其户，阒其无人，自藏也。','得此爻者，骨肉相残，离祖成家，难免口舌之争。做官的位高者有危。', 2, 1, 18);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',50,1,'旅琐琐，斯其所取灾。','象曰：旅琐琐，志穷灾也。','得此爻者，运气不佳，须防祸难。做官的有才但不能受到上司的重用。', 2, 1, 18);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',50,2,'旅即次，怀其资，得童仆，贞。','象曰：得童仆贞，终无尤也。','得此爻者，运气转好，营谋有成。做官的显耀。', 0, 1, 34);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',50,3,'旅焚其次，丧其童仆，贞厉。','象曰：旅焚其次，亦以伤矣。以旅与下，其义丧也。','得此爻者，运势转坏，多灾多难。做官的有离职之忧。', 2, 0, 58);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',50,4,'旅于处，得其资斧，我心不快。','象曰：旅于处，未得位也。得其资斧，心未快也。','得此爻者，在外者会有所成就，但美中不足，有忧惨是非之事发生。从商者会获利。', 2, 0, 54);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',50,5,'射雉一矢亡，终以誉命。','象曰：终以誉命，上逮也。','得此爻者，会得到老者的帮助，事有所成。', 0, 1, 48);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',50,6,'鸟焚其巢，旅人先笑后号啕。丧牛于易，凶。','象曰：以旅在上，其义焚也。丧牛于易，终莫之闻也。','得此爻者，先好后坏，或迁居修造以避灾难，或有目疾，或会遭火灾。做官的难保其位，有先得后失之忧。', 2, 0, 51);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',36,1,'进退，利武人之贞。','象曰：进退，志疑也。利武人之贞，志治也。','得此爻者，有得有失，不良者多招诽谤。做官的或有差役，进退不一，或有兼权，难中有易。', 1, 1, 4);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',36,2,'巽在床下，用史巫纷若，吉，无咎。','象曰：纷若之吉，得中也。','得此爻者，诚恳待人，谋望获利。做官的有升迁之机。', 0, 0, 52);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',36,3,'频巽，吝。','象曰：频巽之吝，志穷也。','得此爻者，运势低迷，有穷困之厄。做官的有被贬职之忧。', 2, 0, 44);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',36,4,'悔亡，田获三品。','象曰：田获三品，有功也。','得此爻者，正当好运，多福多利。读书人会取得佳绩。', 0, 1, 32);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',36,5,'贞吉，悔亡，无不利。无初有终。先庚三日，后庚三日，吉。','象曰：九五之吉，位中正也。','得此爻者，谋望有成，无往不利。做官的先阻后顺。', 0, 0, 38);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',36,6,'巽在床下，丧其资斧，贞凶。','象曰：巽在床下，上穷也；丧其资斧，正乎凶也。','得此爻者，多损失，或生疾病。做官的有运不逢时，须谨慎。', 2, 0, 37);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',9,1,'和兑，吉。','象曰：和兑之吉，行未疑也。','得此爻者，人情和合，百谋皆遂。', 0, 0, 41);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',9,2,'孚兑，吉，悔亡。','象曰：孚兑之吉，信志也。','得此爻者，正当好运，事事和顺。做官的有升迁之兆。', 0, 0, 25);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',9,3,'来兑，凶。','象曰：来兑之凶，位不当也','得此爻者，会有意外之祸，甚者则失道忘身。做官的有听信谗言而遭辱之忧。', 2, 1, 1);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',9,4,'商兑，未宁，介疾有喜。','象曰：九四之喜，有庆也。','得此爻者，从商获利，或进人口，不良者或有疾病，谋望不成。做官的会身居要职，升迁有望。', 1, 0, 13);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',9,5,'孚于剥，有厉。','象曰：孚于剥，位正当也。','得此爻者，时运不佳，多意外之祸。做官的会受到小人的诽谤。', 2, 0, 11);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',9,6,'引兑。','象曰：上六引兑，未光也。','得此爻者，营谋不顺，谨防有忧。', 1, 1, 8);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',44,1,'用拯马壮，吉。','象曰：初六之吉，顺也。','得此爻者，得尊上提举，营谋皆遂。做官的会受到重用，有望晋升。', 0, 1, 12);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',44,2,'涣奔其机，悔亡。','象曰：涣奔其机，得愿也。','得此爻者，谋望有成，或会成家。做官的有实权。', 1, 0, 60);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',44,3,'涣其躬，无悔。','象曰：涣其躬，志在外也。','得此爻者，常人获利。做官的出外就职。', 1, 1, 36);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',44,4,'涣其群，元吉。涣有丘，匪夷所思。','象曰：涣其群，元吉，光大也。','得此爻者，先凶后吉，谋望和合，求利可获。做官的会身居要职。', 0, 1, 40);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',44,5,'涣汗其大号，涣王居，无咎。','象曰：王居无咎，正位也。','得此爻者，正当好运，事事皆吉，求利者遂。做官的会升迁。', 0, 0, 46);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',44,6,'涣其血，去逖出，无咎。','象曰：涣其血，远害也。','得此爻者，先难后易，运势好转。做官的外出就职者会有灾难。', 1, 0, 45);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',13,1,'不出户庭，无咎。','象曰：不出户庭，知通塞也。','得此爻者，进取不利，宜守旧。', 1, 0, 45);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',13,2,'不出门庭，凶。','象曰：不出门庭，失时极也。','得此爻者，时运不佳，事多乖离，宜动不宜静。做官的不得时运。', 2, 0, 29);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',13,3,'不节若，则嗟若。无咎。','象曰：不节之嗟，又谁咎也。','得此爻者，多辛苦，少收获。', 1, 1, 5);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',13,4,'安节，亨。','象曰：安节之亨，承上道也。','得此爻者，秉公守法，安于正道，福利可获。做官的会得到上司的欣赏，升迁有望。', 0, 1, 9);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',13,5,'甘节，吉，往有尚。','象曰：甘节之吉，居位中也。','得此爻者，正当好运，谋望有成。', 0, 0, 15);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',13,6,'苦节，贞凶。悔亡。','象曰：苦节贞凶，其道穷也。','得此爻者，不得天时，名利皆无。做官的不知变通，前途渺茫。', 2, 1, 12);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',12,1,'虞吉，有它不燕。','象曰：初九虞吉，志未变也。','得此爻者，得贵人提举，谋事有成，但喜中有忧，宜行正道，修身养性，不可逸乐。做官的会受到举荐，能居要职。', 0, 0, 44);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',12,2,'鸣鹤在阴，其子和之。我有好爵，吾与尔靡之。','象曰：其子和之，中心愿也。','得此爻者，无往不利，多进钱财，或生子。做官的会晋升。', 0, 0, 28);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',12,3,'得敌，或鼓或罢，或泣或歌。','象曰：或鼓或罢，位不当也。','得此爻者，喜中有忧，事多反复。做官的同僚不睦，先进后退。', 2, 1, 4);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',12,4,'月既望，马匹亡，无咎。','象曰：马匹亡，绝类上也。','得此爻者，能得到提拔，但有失去配偶或财产之忧。做官的会晋升，身居要位。', 1, 1, 8);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',12,5,'有孚挛如，无咎。','象曰：有孚挛如，位正当也。','得此爻者，人情和合，谋事有成，无往不利。做官的君臣一心，会得到上司的赞赏。', 0, 0, 14);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',12,6,'翰音登于天，贞凶。','象曰：翰音登于天，何可长也。','得此爻者，多虚少实，前路凶险。经商者会有损失。做官的有近颜之喜。', 2, 0, 13);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',51,1,'飞鸟以凶。','象曰：飞鸟以凶，不可如何也。','得此爻者，不得天时，灾难突来。做官的有骤然取祸之忧。读书人则有一飞冲天之兆。', 2, 1, 19);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',51,2,'过其祖，遇其妣。不及其君，遇其臣，无咎。','象曰：不及其君，臣不可过也。','得此爻者，得贵人指引，谋望有成。做官的严于律己，恪守己职，则升迁有望。', 1, 1, 35);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',51,3,'弗过防之，从或戕之，凶。','象曰：从或戕之，凶如何也。','得此爻者，时运不济，谨防意外。做官的须防小人奸邪之辈所害。', 2, 0, 59);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',51,4,'无咎，弗过遇之，往厉必戒。勿用，永贞。','象曰：弗过遇之，位不当也。往厉必戒，终不可长也。','得此爻者，宜安常守职，不可妄动。', 1, 0, 55);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',51,5,'密云不雨，自我西郊。公弋取彼在穴。','象曰：密云不雨，已上也。','得此爻者，不利谋事，守旧为佳。做官的有告休之危。', 1, 1, 49);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',51,6,'弗遇过之，飞鸟离之，凶。是谓灾眚。','象曰：弗遇过之，已亢也。','得此爻者，时运不佳，不知退守，过刚则折。', 2, 1, 50);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初九',21,1,'曳其轮，濡其尾，无咎。','象曰：曳其轮，义无咎也。','得此爻者，时运未到，欲动未动，安保无虞。做官的有职未受，有位未登。', 1, 0, 53);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六二',21,2,'妇丧其茀，勿逐，七日得。','象曰：七日得，以中道也。','得此爻者，先难后易，做官的有先逆后顺之美。', 1, 1, 5);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九三',21,3,'高宗伐鬼方，三年克之。小人勿用。','象曰：三年克之，惫也。','得此爻者，有结怨争诉之损。做官的多差遣征伐之举。', 2, 0, 29);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六四',21,4,'繻有衣袽，终日戒。','象曰：终日戒，有所疑也。','得此爻者，时运平平，有备则无患。做官的须做好预防，则爵禄稳固。', 1, 1, 17);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九五',21,5,'东邻杀牛，不如西郊之禴祭，实受其福。','象曰：东邻杀牛，不如西邻之时也。实受其福，吉大来也。','得此爻者，近谋有实，远谋多虚，不利东方，利于西方。', 0, 0, 23);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上六',21,6,'濡其首，厉。','象曰：濡其首厉，何可久也。','得此爻者，小人侵扰，坐船者，防溺水之灾。做官的有过刚则折之忧。', 2, 1, 20);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('初六',42,1,'濡其尾，吝。','象曰：濡其尾，亦不知极也。','得此爻者，经营不利，涉水行舟者，谨防溺水之患。做官的仕途有阻，不能前进。', 2, 1, 10);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九二',42,2,'曳其轮，贞吉。','象曰：九二贞吉，中以行正也。','得此爻者，安份守纪者，谋望遂意。做官的克服困难者，晋升有望。', 0, 0, 58);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六三',42,3,'未济，征凶，利涉大川。','象曰：未济征凶，位不当也。','得此爻者，宜见机行事，不宜妄动。做官的有因人成事之美。在商旅则涉川历险而利可获。', 2, 1, 34);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('九四',42,4,'贞吉，悔亡，震用伐鬼方。三年有赏于大国。','象曰：贞吉悔亡，志行也。','得此爻者，会得好人提举，获利丰厚。做官的会受到重用，名利双全。读书人会取得佳绩。', 0, 0, 46);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('六五',42,5,'贞吉，无悔，君子之光。有孚，吉。','象曰：君子之光，其晖吉也。','得此爻者，谋望有成，财利丰厚。做官的能得到升迁。', 0, 1, 40);
insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values('上九',42,6,'有孚于饮酒，无咎。濡其首，有孚失是。','象曰：饮酒濡首，亦不知节也。','得此爻者，行险而顺，不良者有溺水之厄，纵酒之灾。做官的有望升迁。', 1, 0, 43);
