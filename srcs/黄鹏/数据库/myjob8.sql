-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: myjob
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` text,
  `name` text,
  `phone` text,
  `email` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('10005','刘英杰','15227173004','1410505543'),('10004','陈琛','15227173003','1486001914'),('10003','赵芊伊','15227173002','495225376'),('10001','黄鹏','15227173000','1337312919');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_chuan`
--

DROP TABLE IF EXISTS `food_chuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_chuan` (
  `name` text,
  `taste` text,
  `collection` int(11) DEFAULT NULL,
  `pic` text,
  `material` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_chuan`
--

LOCK TABLES `food_chuan` WRITE;
/*!40000 ALTER TABLE `food_chuan` DISABLE KEYS */;
INSERT INTO `food_chuan` VALUES ('水煮肉片','麻辣',0,'assets/imgs/美食/川/水煮肉片/1.jpg','牛肉200克;包菜150克;芹菜100克;青蒜100克;辣椒碎、葱、姜适量;水煮肉片调味料适量;鸡精、鸡粉少许;生一勺;花椒油少许;'),('麻婆豆腐','麻辣',0,'assets/imgs/美食/川/麻婆豆腐/1.jpg','豆腐一块;葱花适量;郫县豆瓣酱适量;老干妈适量;水淀粉适量;麻油适量;鸡精少许;盐适量'),('麻婆豆腐','麻辣',0,'assets/imgs/美食/川/麻婆豆腐/1.jpg','三黄鸡一只;盐5克;生抽12克;白糖8克;红油一大勺;花椒油半勺;白胡椒粉;芝麻油少许;小米椒几个;熟芝麻少许;熟花生碎少许;葱适量;冷水少许'),('干煸兔丁','香辣',0,'assets/imgs/美食/川/干煸兔丁/1.jpg','兔肉适量;食盐白糖适量;大蒜姜大葱适量;料酒老抽适量;胡椒粉花椒粉适量;鸡精淀粉白芝麻适量;干辣椒花椒适量;'),('毛血旺','麻辣',0,'assets/imgs/美食/川/毛血旺/1.jpg','鸭血适量;鳝鱼片适量;毛肚适量;火腿肠适量;五花肉适量;黄豆芽适量;木耳适量;黄花适量;大葱适量;火锅底梁适量;干辣椒花椒适量'),('川香水煮鱼','香辣',0,'assets/imgs/美食/川/川香水煮鱼/1.jpg','鱼片200克;五花肉50克;鱼料100克;蒜苗两根;芹菜，莴笋尖，香菜，小葱各一根;豆芽适量;辣椒面适量;青花椒，红花椒适量');
/*!40000 ALTER TABLE `food_chuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_comment`
--

DROP TABLE IF EXISTS `food_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_comment` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `username` text,
  `userhead` text,
  `content` text,
  `time` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_comment`
--

LOCK TABLES `food_comment` WRITE;
/*!40000 ALTER TABLE `food_comment` DISABLE KEYS */;
INSERT INTO `food_comment` VALUES (1,'','','','',''),(2,'','','','',''),(3,'','','','',''),(4,'','','','',''),(5,'','','','',''),(6,'','','','','');
/*!40000 ALTER TABLE `food_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_lu`
--

DROP TABLE IF EXISTS `food_lu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_lu` (
  `name` text,
  `teste` text,
  `collection` int(11) DEFAULT NULL,
  `pic` text,
  `material` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_lu`
--

LOCK TABLES `food_lu` WRITE;
/*!40000 ALTER TABLE `food_lu` DISABLE KEYS */;
INSERT INTO `food_lu` VALUES ('香辣花蛤','香辣',0,'assets/imgs/美食/鲁/香辣花蛤/1.jpg','花蛤适量;小红椒适量;葱适量;蒜头适量'),('清蒸大闸蟹','清香',0,'assets/imgs/美食/鲁/清蒸大闸蟹/1.jpg','大闸蟹适量;香葱适量;姜末适量;香醋5勺;冰糖2粒;生抽半勺'),('卷三丝','香辣',0,'assets/imgs/美食/鲁/卷三丝/1.jpg','豆皮三张;黄瓜半根;胡萝卜半根;大葱白一节;辣黄豆酱'),('九转大肠','酱香',0,'assets/imgs/美食/鲁/九转大肠/1.jpg','大肠2根;老抽生抽各10g;糖盐适量;砂仁粉肉桂粉各2g;葱末蒜末姜末适量;大料香菜料酒少许;花椒花椒油胡椒粉3g');
/*!40000 ALTER TABLE `food_lu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_step`
--

DROP TABLE IF EXISTS `food_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_step` (
  `name` text,
  `steppics` text,
  `stepnames` text,
  `stepcontents` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_step`
--

LOCK TABLES `food_step` WRITE;
/*!40000 ALTER TABLE `food_step` DISABLE KEYS */;
INSERT INTO `food_step` VALUES ('麻婆豆腐','assets/imgs/美食/川/麻婆豆腐/2.jpg;assets/imgs/美食/川/麻婆豆腐/3.jpg;assets/imgs/美食/川/麻婆豆腐/4.jpg;assets/imgs/美食/川/麻婆豆腐/5.jpg;assets/imgs/美食/川/麻婆豆腐/6.jpg;assets/imgs/美食/川/麻婆豆腐/7.jpg;assets/imgs/美食/川/麻婆豆腐/8.jpg;assets/imgs/美食/川/麻婆豆腐/9.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八','豆腐切小块。;葱花、老干妈、郫县豆瓣酱。;豆腐入油锅炒。;煎至两面金黄。;放入盐、老干妈、豆瓣酱。;酱料炒匀，放适量水煮沸，加入水淀粉。;最后撒入葱花、鸡精、适量的香油盖面，完工。;成品。'),('口水鸡','assets/imgs/美食/川/口水鸡/2.jpg;assets/imgs/美食/川/口水鸡/3.jpg;assets/imgs/美食/川/口水鸡/4.jpg;assets/imgs/美食/川/口水鸡/5.jpg;assets/imgs/美食/川/口水鸡/6.jpg;assets/imgs/美食/川/口水鸡/7.jpg;assets/imgs/美食/川/口水鸡/8.jpg;assets/imgs/美食/川/口水鸡/9.jpg;assets/imgs/美食/川/口水鸡/10.jpg;assets/imgs/美食/川/口水鸡/11.jpg;assets/imgs/美食/川/口水鸡/12.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八;步骤九;步骤十;步骤十一','准备好各种食材。;三黄鸡清洗干净后，将葱姜塞入鸡腹中，装在盘中。;三黄鸡清洗干净后，将葱姜塞入鸡腹中，装在盘中。;在蒸鸡的同时，来准备调味汁。将蒜末、葱花、切碎的小米椒、糖、盐、生抽、白胡椒粉一起倒入拌料盆中搅匀。;加入花椒油、芝麻油和一大勺红油，搅匀备用。;纯蒸功能很快完成了，将蒸好的鸡从蒸烤箱中取出。;可以看到整鸡非常鲜嫩，盘底只有少量汤汁。此时可将葱姜丢掉，盘底的鸡汤不要倒掉，加入调味汁中更鲜美。;将整只鸡泡入冰水中，冰镇之后口感更好。;将鸡肉取出，擦净表面水分，放在砧板上，用刀从中间一分为二，卸掉鸡腿和鸡翅后，斩成手指宽的长块。;将鸡块装入稍有深度的盘中。;把2勺鸡汤加入调味汁中拌匀，浇在鸡块上，再撒上花生碎和芝麻，香辣诱人的口水鸡就做好了。'),('干煸兔丁','assets/imgs/美食/川/干煸兔丁/2.jpg;assets/imgs/美食/川/干煸兔丁/3.jpg;assets/imgs/美食/川/干煸兔丁/4.jpg;assets/imgs/美食/川/干煸兔丁/5.jpg;assets/imgs/美食/川/干煸兔丁/6.jpg;assets/imgs/美食/川/干煸兔丁/7.jpg;assets/imgs/美食/川/干煸兔丁/8.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七','大蒜、姜剁碎，大葱、干辣椒切段，兔肉洗干净切成小丁;兔丁放入碗里加少许老抽，少许白糖，盐，料酒，胡椒粉抓匀腌制30分钟;撒入少许淀粉抓匀;锅中加油烧热，倒入兔丁，中火炸金黄捞出控油备用;锅中留底油下姜蒜，三生川干辣椒，三生川农家花椒小火炒出香味;倒入兔丁大火翻炒均匀;调入鸡精和花椒粉迅速翻炒均匀，最后撒上白芝麻和葱段翻炒均匀即可！'),('水煮肉片','assets/imgs/美食/川/水煮肉片/2.jpg;assets/imgs/美食/川/水煮肉片/3.jpg;assets/imgs/美食/川/水煮肉片/4.jpg;assets/imgs/美食/川/水煮肉片/5.jpg;assets/imgs/美食/川/水煮肉片/6.jpg;assets/imgs/美食/川/水煮肉片/7.jpg;assets/imgs/美食/川/水煮肉片/8.jpg;assets/imgs/美食/川/水煮肉片/9.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八','准备好需要的食材;牛肉切片，用料酒，鸡粉腌制10分钟;包菜，芹菜，青蒜过水焯烫至九成熟;捞出铺在容器底部;锅中加入400毫升水，加两勺水煮肉片调味料，一勺鲜鸡精，适量的生抽，煮开;倒入牛肉片烫熟;倒入铺好蔬菜的碗中，撒上姜丝，葱末，辣椒碎;大火烧热2勺油，少许花椒油，将热油浇在葱姜辣椒粒上即可;'),('毛血旺','assets/imgs/美食/川/毛血旺/2.jpg;assets/imgs/美食/川/毛血旺/3.jpg;assets/imgs/美食/川/毛血旺/4.jpg;assets/imgs/美食/川/毛血旺/5.jpg;assets/imgs/美食/川/毛血旺/6.jpg;assets/imgs/美食/川/毛血旺/7.jpg;assets/imgs/美食/川/毛血旺/8.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七','火腿肠、五花肉切片,大葱切段，干辣椒切节。;鸭血切成片，入沸水氽煮后捞出备用。;三生川火锅底料放入锅内烧沸熬味。;放入大葱、鳝鱼片、毛肚、火腿肠、肉片、木耳、黄花、豆芽、血旺 共煮。;煮熟后起锅转入碗内。;倒油烧至六成热，放入三生川干辣椒，农家花椒炒香。;浇入碗中即可。'),('川香水煮鱼','assets/imgs/美食/川/川香水煮鱼/2.jpg;assets/imgs/美食/川/川香水煮鱼/3.jpg;assets/imgs/美食/川/川香水煮鱼/4.jpg;assets/imgs/美食/川/川香水煮鱼/5.jpg;assets/imgs/美食/川/川香水煮鱼/6.jpg;assets/imgs/美食/川/川香水煮鱼/7.jpg;assets/imgs/美食/川/川香水煮鱼/8.jpg;assets/imgs/美食/川/川香水煮鱼/9.jpg;assets/imgs/美食/川/川香水煮鱼/10.jpg;assets/imgs/美食/川/川香水煮鱼/11.jpg;assets/imgs/美食/川/川香水煮鱼/12.jpg;assets/imgs/美食/川/川香水煮鱼/13.jpg;assets/imgs/美食/川/川香水煮鱼/14.jpg;assets/imgs/美食/川/川香水煮鱼/15.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八;步骤九;步骤十;步骤十一;步骤十二;步骤十三;步骤十四','准备材料如图。;将鱼片洗净，加入适量蒸鱼豉油、花椒油、料酒、淀粉拌匀腌制15-20分钟。;将芹菜、蒜苗、莴笋尖切小段，豆芽洗净备用。;香菜小葱洗净用盐水泡一下杀菌。切成小段备用。;五花肉切小长条。;热锅倒油烧至八成热。;放入四种配菜炒断生盛出。;油锅烧至八成，放入五花肉煸炒至如图所示。;放入鱼料炒香。;加适量清水煮开。;放入鱼片大火煮开后再煮3分钟即可。;将辣椒面和花椒铺在上面。;再烧热油，将油泼在辣椒面和花椒上，听见滋滋的声音。;摆上香菜小葱就做好了。'),('香辣花蛤','assets/imgs/美食/鲁/香辣花蛤/2.jpg;assets/imgs/美食/鲁/香辣花蛤/3.jpg;assets/imgs/美食/鲁/香辣花蛤/4.jpg;assets/imgs/美食/鲁/香辣花蛤/5.jpg;assets/imgs/美食/鲁/香辣花蛤/6.jpg;assets/imgs/美食/鲁/香辣花蛤/7.jpg;assets/imgs/美食/鲁/香辣花蛤/8.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七','主料准备好;花蛤用盐水泡2个小时，吐尽泥沙;蒜、葱、辣椒切小丁;锅里放适量油，烧至6、7层熟放蒜蓉爆香;随后放花蛤拌炒;放入辣椒，大火拌炒至花蛤全部开口;关火，撒上葱花即可出锅'),('清蒸大闸蟹','assets/imgs/美食/鲁/清蒸大闸蟹/2.jpg;assets/imgs/美食/鲁/清蒸大闸蟹/3.jpg;assets/imgs/美食/鲁/清蒸大闸蟹/4.jpg;assets/imgs/美食/鲁/清蒸大闸蟹/5.jpg','步骤一;步骤二;步骤三;步骤四','将蟹逐只洗净，放入水中养半天，使它排净腹中污物。;用马连草将蟹钳、蟹脚扎牢; 醋内加入生抽、冰糖、葱末、姜末、搅匀。;锅内水烧开，放入大闸蟹和姜醋汁，蒸约15分钟。;解去马连草，整齐地放入盘内，连同小碟蘸料上桌享用。'),('卷三丝','assets/imgs/美食/鲁/卷三丝/2.jpg;assets/imgs/美食/鲁/卷三丝/3.jpg;assets/imgs/美食/鲁/卷三丝/4.jpg;assets/imgs/美食/鲁/卷三丝/5.jpg;assets/imgs/美食/鲁/卷三丝/6.jpg;assets/imgs/美食/鲁/卷三丝/7.jpg;assets/imgs/美食/鲁/卷三丝/8.jpg;assets/imgs/美食/鲁/卷三丝/9.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八','所用食材洗净备用，辣椒酱就绪。;黄瓜改刀成丝。;胡萝卜改刀成丝。;葱白改刀成丝。;豆皮过开水即可取出，去除豆腥味（这一步也可忽略），铺开放入三种丝。;卷紧成条状。;打斜刀如图。;排盘即可。'),('九转大肠','assets/imgs/美食/鲁/九转大肠/2.jpg;assets/imgs/美食/鲁/九转大肠/3.jpg;assets/imgs/美食/鲁/九转大肠/4.jpg;assets/imgs/美食/鲁/九转大肠/5.jpg;assets/imgs/美食/鲁/九转大肠/6.jpg;assets/imgs/美食/鲁/九转大肠/7.jpg;assets/imgs/美食/鲁/九转大肠/8.jpg;assets/imgs/美食/鲁/九转大肠/9.jpg;assets/imgs/美食/鲁/九转大肠/10.jpg;assets/imgs/美食/鲁/九转大肠/11.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八;步骤九;步骤十','买来的大肠用面粉，醋反复里外搓洗干净至无异味;锅坐水凉水下入大肠加入葱姜段花椒，料酒烧开捞出控干水分备用;锅从新坐水下入大肠，加入葱姜，10克老抽，花椒大料煮熟，筷子轻松插透即可;煮熟的大肠捞出晾凉切长短一致的段，粗的一段套在细的那段上，用剪刀修剪整齐备用。;锅烧热入油烧热下入大肠煎炸;一面煎成金黄色再翻面煎成金黄色捞出控油备用;锅烧热入油烧热下入葱姜蒜小火煸香，烹入醋加入5克老抽，生抽和糖添入适量水烧开;加入炸好的大肠烧制20分钟左右，边煮边用勺把汤汁反复淋在大肠上;汤收到80%的时候加入肉桂，砂仁和胡椒粉，直到收至汤汁浓稠，淋少许花椒油出锅;装盘，锅中少许汁儿淋在大肠上，少许香菜或葱花装饰。'),('盐水虾','assets/imgs/美食/苏/盐水虾/2.jpg;assets/imgs/美食/苏/盐水虾/3.jpg;assets/imgs/美食/苏/盐水虾/4.jpg;assets/imgs/美食/苏/盐水虾/5.jpg;assets/imgs/美食/苏/盐水虾/6.jpg;assets/imgs/美食/苏/盐水虾/7.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六','准备九节虾。;准备生姜、香葱、花椒、八角、桂皮。;虾洗净后，在虾的倒数第2个关节处用牙签挑去虾线，全部处理完。;锅中加入适量水，调入盐，加入所有配料大火烧开后继续滚约2分钟，煮出配料的香味。;下入处理好的虾，调入1汤勺料酒。;继续煮至开锅即可。如果做冷盘的话可以捞出放入冰水中浸泡至凉透后捞出摆盘。'),('酒酿圆子','assets/imgs/美食/苏/酒酿圆子/2.jpg;assets/imgs/美食/苏/酒酿圆子/3.jpg;assets/imgs/美食/苏/酒酿圆子/4.jpg;assets/imgs/美食/苏/酒酿圆子/5.jpg;assets/imgs/美食/苏/酒酿圆子/6.jpg;assets/imgs/美食/苏/酒酿圆子/7.jpg;assets/imgs/美食/苏/酒酿圆子/8.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七','准备酒酿。;糯米粉加热水揉成团。;搓成小圆子。;锅中放水，先煮酒酿。;倒入糯米小圆子，一起煮，然后，加糖。;加些枸杞，增色又好吃。;出锅，甜甜的酒酿圆子做好了。'),('苏式熏鱼','assets/imgs/美食/苏/苏式熏鱼/2.jpg;assets/imgs/美食/苏/苏式熏鱼/3.jpg;assets/imgs/美食/苏/苏式熏鱼/4.jpg;assets/imgs/美食/苏/苏式熏鱼/5.jpg;assets/imgs/美食/苏/苏式熏鱼/6.jpg;assets/imgs/美食/苏/苏式熏鱼/7.jpg;assets/imgs/美食/苏/苏式熏鱼/8.jpg;assets/imgs/美食/苏/苏式熏鱼/9.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八','准备罗非鱼一条（600克）。;准备小葱2根、姜1小块;准备大料2个、桂皮1根、草果1个香、香叶两片、茴香5克、糖200克。;把鱼切块，用葱，姜，黄酒，细盐，腌2小时入味。;油烧至中热，下鱼块，炸倒表面稍有黄色就捞出。;等锅内油烧至快冒烟时，再下炸过得鱼块复炸，至呈金黄色，口感硬脆时捞出。;锅内留少许油，放葱姜、大料、桂皮，茴香、草果、香叶爆香，再将腌鱼料全部倒入，视咸淡程度加入适量的盐，与全部的糖，加水。;随即放入鱼块，大火烧开后，小火炖1小时左右，汤汁收的差不多了就行了。'),('清炖狮子头','assets/imgs/美食/苏/清炖狮子头/2.jpg;assets/imgs/美食/苏/清炖狮子头/3.jpg;assets/imgs/美食/苏/清炖狮子头/4.jpg;assets/imgs/美食/苏/清炖狮子头/5.jpg;assets/imgs/美食/苏/清炖狮子头/6.jpg;assets/imgs/美食/苏/清炖狮子头/7.jpg;assets/imgs/美食/苏/清炖狮子头/8.jpg;assets/imgs/美食/苏/清炖狮子头/9.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八','将五花肉去皮切碎，用刀剁成米粒大小的馅。;莲藕去皮切成小碎丁，枸杞浸泡开，葱姜打成汁，白菜、油菜洗净备用。;肉馅中加入莲藕碎，调入盐、料酒、胡椒粉拌匀。;加葱姜水搅拌均匀，再逐渐加入清水顺同一方向搅拌至上劲。;砂锅底层铺入一层白菜，将调好的肉馅制成大丸子放入。;加足量清水，调入少许盐、料酒，用大白菜盖在肉丸上。;大火烧开后转小火炖1.5小时，放入枸杞再炖5分钟，出锅前放入油菜心即可。;清淡爽口，香滑软嫩。'),('薄荷黑凉粉','assets/imgs/美食/粤/薄荷黑凉粉/2.jpg;assets/imgs/美食/粤/薄荷黑凉粉/3.jpg;assets/imgs/美食/粤/薄荷黑凉粉/4.jpg;assets/imgs/美食/粤/薄荷黑凉粉/5.jpg;assets/imgs/美食/粤/薄荷黑凉粉/6.jpg;assets/imgs/美食/粤/薄荷黑凉粉/7.jpg;assets/imgs/美食/粤/薄荷黑凉粉/8.jpg;assets/imgs/美食/粤/薄荷黑凉粉/9.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八','从盒中倒出25克粉。;倒凉开水100克，搅拌成无颗粒糊状。;再倒入开水525克，边倒边搅拌。;开大火煮开。中途不停的搅拌。;待凉后切块备用。;薄荷叶洗干净，放适量冰糖和水烧开至冰糖融化。;过滤薄荷叶，薄荷糖水可放入冰箱冷藏。;舀二大块涼粉，用不锈钢勺子切块，舀适量薄荷糖水搅拌即可开吃。'),('广式腊肉焖皖鱼','assets/imgs/美食/粤/广式腊肉焖皖鱼/2.jpg;assets/imgs/美食/粤/广式腊肉焖皖鱼/3.jpg;assets/imgs/美食/粤/广式腊肉焖皖鱼/4.jpg;assets/imgs/美食/粤/广式腊肉焖皖鱼/5.jpg;assets/imgs/美食/粤/广式腊肉焖皖鱼/6.jpg;assets/imgs/美食/粤/广式腊肉焖皖鱼/7.jpg;assets/imgs/美食/粤/广式腊肉焖皖鱼/8.jpg;assets/imgs/美食/粤/广式腊肉焖皖鱼/9.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八','准备鱼腩一块切段，腊肠、腊肉、西兰花（可放可不放）、葱花姜丝、还有独蒜一粒;鱼块加生油、盐、胡椒粉腌制一下。;腊肠腊肉西兰花飞水一下。;腌制好的鱼块略煎一下就好。待用。;煎完鱼的锅不用洗，放入姜蒜爆炒香，然后放入腊肠腊肉炒一下，放入适量的水。;再放适量的料酒加盖煮开后。;加入鱼块、适量的蚝油、盐、糖，加盖大火焖3分钟。;加入葱花关火，成品。'),('糯米卷','assets/imgs/美食/粤/糯米卷/2.jpg;assets/imgs/美食/粤/糯米卷/3.jpg;assets/imgs/美食/粤/糯米卷/4.jpg;assets/imgs/美食/粤/糯米卷/5.jpg;assets/imgs/美食/粤/糯米卷/6.jpg;assets/imgs/美食/粤/糯米卷/7.jpg;assets/imgs/美食/粤/糯米卷/8.jpg;assets/imgs/美食/粤/糯米卷/9.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八','面团的材料放入面包机，按面团的程序，揉成光滑的面团，发酵到2倍大。;把糯米饭整形成长条，长约8寸，宽2寸，高1寸;把面团拿出来，按压排气，分割成2份。取一份撖开成长方型，长度与糯米条差不多。宽度是糯米条的2倍。;把多余的边边切去。;把糯米包起来，收口捏紧。;收口朝下，把糯米卷平均切块。(也可以不切，整条蒸好再切。);放入蒸锅，松驰30分钟。;冷水下锅，大火烧开后，转中大火蒸15分钟，关火焖5分钟出锅。'),('蒜香粉丝蒸扇贝','assets/imgs/美食/粤/蒜香粉丝蒸扇贝/2.jpg;assets/imgs/美食/粤/蒜香粉丝蒸扇贝/3.jpg;assets/imgs/美食/粤/蒜香粉丝蒸扇贝/4.jpg;assets/imgs/美食/粤/蒜香粉丝蒸扇贝/5.jpg;assets/imgs/美食/粤/蒜香粉丝蒸扇贝/6.jpg;assets/imgs/美食/粤/蒜香粉丝蒸扇贝/7.jpg;assets/imgs/美食/粤/蒜香粉丝蒸扇贝/8.jpg;assets/imgs/美食/粤/蒜香粉丝蒸扇贝/9.jpg;assets/imgs/美食/粤/蒜香粉丝蒸扇贝/10.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八;步骤九','扇贝清理干净（外壳也刷洗干净），一分为二。;粉丝用温水泡软沥水备用;蒜头拍扁去皮洗净剁碎备用;用小刀把贝肉先取出。;粉丝平铺每个贝壳上，并把贝肉放在粉丝上面。;金银蒜里加入少量姜末、盐、糖、鲜酱油、蚝油及少许水拌匀（金银蒜做法见下面小贴士）。;用勺子将调料均匀浇在每个贝肉上。;锅里水大开后放入扇贝大火蒸6~8分钟左右，撒上少许葱花和红辣椒点缀即可出锅。;美味出锅。');
/*!40000 ALTER TABLE `food_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_su`
--

DROP TABLE IF EXISTS `food_su`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_su` (
  `name` text,
  `taste` text,
  `collection` int(11) DEFAULT NULL,
  `pic` text,
  `material` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_su`
--

LOCK TABLES `food_su` WRITE;
/*!40000 ALTER TABLE `food_su` DISABLE KEYS */;
INSERT INTO `food_su` VALUES ('盐水虾','清鲜',0,'assets/imgs/美食/苏/盐水虾/1.jpg','九节虾250克;生姜3片;香葱2根;花椒1小把;八角2个;桂皮1小块;盐2茶勺;料酒1汤勺'),('酒酿圆子','甜味',0,'assets/imgs/美食/苏/酒酿圆子/1.jpg','酒酿适量;糯米粉适量;糖适量'),('苏式熏鱼','鲜甜',0,'assets/imgs/美食/苏/苏式熏鱼/1.jpg','罗非鱼一条;小葱2根;姜1小块;大料2个;桂皮1根;草果1个;香叶2片;茴香2克;盐，老抽少许;糖200克; 生抽 适量 绍酒 适量'),('清炖狮子头','清淡',0,'assets/imgs/美食/苏/清炖狮子头/1.jpg','五花肉适量;莲藕白菜油菜心适量;枸杞适量;盐适量; 葱姜水适量;白胡椒粉适量;香油适量');
/*!40000 ALTER TABLE `food_su` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_yue`
--

DROP TABLE IF EXISTS `food_yue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_yue` (
  `name` text,
  `taste` text,
  `collection` int(11) DEFAULT NULL,
  `pic` text,
  `material` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_yue`
--

LOCK TABLES `food_yue` WRITE;
/*!40000 ALTER TABLE `food_yue` DISABLE KEYS */;
INSERT INTO `food_yue` VALUES ('薄荷黑凉粉','清甜',0,'assets/imgs/美食/粤/薄荷黑凉粉/1.jpg','黑凉粉25g;凉开水100g;开水525g;冰糖适量;薄荷14g'),('广式腊肉焖皖鱼','鲜香',0,'assets/imgs/美食/粤/广式腊肉焖皖鱼/1.jpg','皖鱼腩1块;腊肠3颗;腊肉1块;西兰花5颗;葱花姜丝适量'),('糯米卷','咸香',0,'assets/imgs/美食/粤/糯米卷/1.jpg','普通面粉300g;奶粉15g;糖40g;牛奶150g;酵母3g;泡打粉2g;盐1g;腊味糯米饭适量'),('蒜香粉丝蒸扇贝','蒜香',0,'assets/imgs/美食/粤/蒜香粉丝蒸扇贝/1.jpg','扇贝3个（大）;粉丝40g;砂糖适量;红辣椒1个;鲜酱油1小勺;葱花姜末适量;盐少量;蒜头6粒;食用油蚝油适量');
/*!40000 ALTER TABLE `food_yue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img`
--

DROP TABLE IF EXISTS `img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `img` (
  `img` text,
  `src` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img`
--

LOCK TABLES `img` WRITE;
/*!40000 ALTER TABLE `img` DISABLE KEYS */;
/*!40000 ALTER TABLE `img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jihua`
--

DROP TABLE IF EXISTS `jihua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jihua` (
  `name` text,
  `money` int(11) DEFAULT NULL,
  `manNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jihua`
--

LOCK TABLES `jihua` WRITE;
/*!40000 ALTER TABLE `jihua` DISABLE KEYS */;
/*!40000 ALTER TABLE `jihua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linggan`
--

DROP TABLE IF EXISTS `linggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linggan` (
  `name` text,
  `texts` text,
  `wheres` text,
  `number` int(11) DEFAULT NULL,
  `imgSrc` text,
  `whereName` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linggan`
--

LOCK TABLES `linggan` WRITE;
/*!40000 ALTER TABLE `linggan` DISABLE KEYS */;
/*!40000 ALTER TABLE `linggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main` (
  `newPeople` text,
  `allPeople` text,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` VALUES ('123','456','789');
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mudidi`
--

DROP TABLE IF EXISTS `mudidi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mudidi` (
  `h1` text,
  `texts` text,
  `imgSrc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mudidi`
--

LOCK TABLES `mudidi` WRITE;
/*!40000 ALTER TABLE `mudidi` DISABLE KEYS */;
INSERT INTO `mudidi` VALUES ('宁夏沙漠','沙漠不是宁夏独有，但却成为宁夏较具代表性的旅游资源。“宁夏归来不看沙漠不是宁夏独有，但却成为宁夏较具代表性的旅游资源。“宁夏归来不看沙”是国内外游客对宁夏沙漠旅游最好的评价。','../../assets/imgs/旅游/宁夏沙漠.png'),('山东泰山','泰山被古人视为“直通帝座”的天堂，成为百姓崇拜，帝王告祭的神山，有“泰山安，四海皆安”的说法。自秦始皇开始到清代，先后有13代帝王引次亲登泰山封禅或祭祀。','../../assets/imgs/旅游/山东泰山.png');
/*!40000 ALTER TABLE `mudidi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neimeng`
--

DROP TABLE IF EXISTS `neimeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neimeng` (
  `name` text,
  `src` text,
  `wheres` text,
  `h1` text,
  `texts` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neimeng`
--

LOCK TABLES `neimeng` WRITE;
/*!40000 ALTER TABLE `neimeng` DISABLE KEYS */;
INSERT INTO `neimeng` VALUES ('01 呼伦贝尔大草原','../../assets/imgs/旅游/呼伦贝尔大草原.jpg','117.95/49.49','北国碧玉','呼伦贝尔大草原是世界著名的天然牧场，是世界四大草原之一，被世上称为最好的草原，是全国旅游二十胜景之一。呼伦贝尔陈巴尔虎旗草原上的莫尔格勒河被当地人称为第一曲水，此地是以牧游部落为景观的旅游景点。'),('02 鄂尔多斯草原','../../assets/imgs/旅游/鄂尔多斯草原.jpg','108.63/39.81','射骑之地、游牧之所','鄂尔多斯草原有最具民族特色的五大文化旅游产品：那达慕实景马术剧、诈马宴、草原之夜篝火晚会、飞天草原以及鄂尔多斯婚礼表演。那达慕实景马术剧，它是鄂尔多斯草原重点旅游产品。全场表演45分钟，整剧以马背为舞台，内容包含敖包祈福、单人单马、多人多马、马上骑射、蒙古族男儿才艺表演等内容。'),('03 察尔湖','../../assets/imgs/旅游/察尔湖.jpg','114.05/40.86','山清水秀，如诗如画','察尔湖旅游区，当地人也称为友谊水库，建于1958年，距兴和县城仅15公里。旅游区山地属大青山余脉，水面处于群山环抱之中，察尔湖属海河流域永定河水系，洋河支流东洋河上游。察尔湖旅游区四季分明、光热充足。景区群峰起伏，连绵不断，山清水秀，如诗如画；苍山含翠，绿水多情，仁者流连，智者忘返。察尔湖历史悠久，在湖区境内发现了清朝额驸——“班第”的墓穴，历经两百多年的风雨沧桑，给这方多情的山水，增添了几分神秘的色彩。湖中养殖了多种水产品，如银鱼、武昌鱼、鲢鱼、鲤鱼、鲫鱼，肉质好，味道鲜。游客在这里既可农业观光，还可以玩玩水上娱乐项目，此外还有拓展训练和少年夏令营等项目共游客选择。在冬季，游客还能在景区内滑冰滑雪，是休闲度假的好地方。'),('04 凉城岱海','../../assets/imgs/旅游/凉城岱海.jpg','112.69/40.57','山明水秀，风景宜人','凉城岱海旅游区位于内蒙古自治区中南部乌兰察布市凉城县岱海湖畔，在呼和浩特、乌兰察布、大同三市环绕的三角中心，依托岱海优良的生态旅游资源，整合周边的温泉、草原、湿地、寺庙和红色旅游资源，打造的内蒙古唯一的同时拥有4A级景区和四星级酒店的旅游度假区。');
/*!40000 ALTER TABLE `neimeng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shandong`
--

DROP TABLE IF EXISTS `shandong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shandong` (
  `name` text,
  `src` text,
  `wheres` text,
  `h1` text,
  `texts` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shandong`
--

LOCK TABLES `shandong` WRITE;
/*!40000 ALTER TABLE `shandong` DISABLE KEYS */;
INSERT INTO `shandong` VALUES ('01 泰山','../../assets/imgs/旅游/泰山.jpg','117.09/36.26','会当凌绝顶，一览众山小','泰山又名岱山、岱宗、岱岳、东岳、泰岳，位于山东省中部，隶属于泰安市，绵亘于泰安、济南、淄博三市之间，总面积24200公顷。主峰玉皇顶海拔1545米，气势雄伟磅礴，有“五岳之首”、“五岳之长”、五岳之尊、“天下第一山”之称。是世界自然与文化遗产，世界地质公园，国家AAAAA级旅游景区，国家级风景名胜区，全国重点文物保护单位，全国文明风景旅游区。'),('02 临沂大峡谷','../../assets/imgs/旅游/临沂大峡谷.jpg','118.54/35.73','一座风貌奇特的溶洞王国','山东地下大峡谷位于山东省临沂市沂水县院东头乡即沂水县城西南8公里龙岗山下，是一座风貌奇特的溶洞王国，沂蒙地下奇观核心景区。规划占地32平方公里。该景区是集休闲、游憩、娱乐、度假、溶洞漂流为一体的旅游项目。洞体长度6100米，目前开发3100米，是江北第一长洞，中国特大型著名溶洞之一。'),('03 青岛崂山','../../assets/imgs/旅游/青岛崂山.jpg','120.62/36.19','海上第一名山','1982年，崂山风景区成为国务院首批国家级重点风景名胜区之一，并对有些景点进行整修。1989年，为加强对崂山旅游开发工作的领导，市政府在原崂山风景管理处的基础上成立崂山风景区管理委员会，负责崂山风景名胜区的恢复建设工作。1992年，崂山被授予国家森林公园的称号。1999年，崂山风景区成为国家文明风景名胜区。2001年，崂山风景区被评为 “AAAA级旅游区”。2011年，崂山风景区成为国家5A级风景名胜区。'),('04 千佛山','../../assets/imgs/旅游/千佛山.jpg','117.04/36.64','济南三大名胜之一','千佛山上的石佛雕刻集中在兴国寺后的千佛崖上。兴国寺又名千佛山寺，始建于唐代，后经历代增建，规模渐大。寺门外西南上方的山崖上刻有\"第一弥化\"四个篆体字，每字约有4米见方。千佛崖上有隋代石佛60余尊，年代悠久，具有很高的艺术价值。 千佛山之东，佛慧山上也有雕刻石佛。其中主峰山麓有一佛龛，内有一尊头部佛像，高7米，宽4米多，俗称\"大佛头\"，这是一种十分罕见的石雕。');
/*!40000 ALTER TABLE `shandong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shouye`
--

DROP TABLE IF EXISTS `shouye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shouye` (
  `name` text,
  `imgSrc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shouye`
--

LOCK TABLES `shouye` WRITE;
/*!40000 ALTER TABLE `shouye` DISABLE KEYS */;
INSERT INTO `shouye` VALUES ('香港','../../assets/imgs/旅游/香港.jpg'),('四川','../../assets/imgs/旅游/四川.jpg'),('山东','../../assets/imgs/旅游/山东.jpg'),('西藏','../../assets/imgs/旅游/西藏.jpg'),('内蒙','../../assets/imgs/旅游/内蒙.jpg'),('登山好时节','../../assets/imgs/旅游/古镇.png'),('住进大草原','../../assets/imgs/旅游/秋季.png'),('小众海岛游','../../assets/imgs/旅游/温泉.png');
/*!40000 ALTER TABLE `shouye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sichuan`
--

DROP TABLE IF EXISTS `sichuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sichuan` (
  `name` text,
  `src` text,
  `wheres` text,
  `h1` text,
  `texts` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sichuan`
--

LOCK TABLES `sichuan` WRITE;
/*!40000 ALTER TABLE `sichuan` DISABLE KEYS */;
INSERT INTO `sichuan` VALUES ('01 九寨沟','../../assets/imgs/旅游/九寨沟.jpg','103.92/33.16','翠湖叠瀑，九寨沟以水景见长','九寨沟因为最初有九个藏族村寨而得名，最早的历史可以追溯到5000年前，与中华文明同步。这里的“九寨六绝”——翠湖、叠瀑、彩林、雪峰、藏情、蓝冰闻名天下，四季美景各具特色，正如俗话所说“上帝打翻了调色板”。秋冬季节，山中层林尽染、缤纷炫彩、五花山色，雾气蒸腾间让人宛若行进于仙境一般。'),('02 乐山大佛','../../assets/imgs/旅游/乐山大佛.jpg','103.78/29.54','双手抚膝，临江危坐','在大佛左右两侧沿江崖壁上，还有两尊身高超过16米的护法天王石刻，与大佛一起形成了一佛二天王的格局。与天王共存的还有数百龛上千尊石刻造像，宛然汇集成庞大的佛教石刻艺术群。'),('03 都江堰','../../assets/imgs/旅游/都江堰.jpg','103.61/31.00','世界水利文化的鼻祖','建设于古代并使用至今的大型水利工程，是全世界迄今为止，年代最久、唯一留存、以无坝引水为特征的宏大水利工程，被誉为“世界水利文化的鼻祖”，这项工程主要有鱼嘴分水堤、飞沙堰溢洪道、宝瓶口进水口三大部分构成，一直发挥着防洪灌溉的作用，使川西平原成为“水旱从人”的“天府之国”。'),('04 稻城亚丁','../../assets/imgs/旅游/稻城亚丁.jpg','100.29/28.46','蓝色星球上的一片净土','稻城亚丁风景区位于四川省甘孜藏族自治州稻城县香格里拉镇亚丁村境内，主要由“仙乃日、央迈勇、夏诺多吉”三座神山和周围的河流、湖泊和高山草甸组成，它的景致保持着在地球上近绝迹的纯粹，因其独特的地貌和原生态的自然风光，被誉为“香格里拉之魂”和“最后的香格里拉”，被国际友人誉为“水蓝色星球上的最后一片净土”，是摄影爱好者的天堂。');
/*!40000 ALTER TABLE `sichuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sweet_binggan`
--

DROP TABLE IF EXISTS `sweet_binggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sweet_binggan` (
  `name` text,
  `pic` text,
  `material` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sweet_binggan`
--

LOCK TABLES `sweet_binggan` WRITE;
/*!40000 ALTER TABLE `sweet_binggan` DISABLE KEYS */;
INSERT INTO `sweet_binggan` VALUES ('白色恋人','assets/imgs/美食/饼干/白色恋人/1.jpg','黄油，蛋清各50克;糖粉，低筋粉各50克;淡奶油30克;奶粉20克;白巧克力100克'),('胡萝卜饼干棒','assets/imgs/美食/饼干/胡萝卜饼干棒/1.jpg','黄油50克;低筋面粉75克;胡萝卜20克;糖粉20克;蛋白20克'),('全麦饼干','assets/imgs/美食/饼干/全麦饼干/1.jpg','低筋面粉190克;全麦粉34克;黄油鸡蛋各50克;白砂糖60克;玉米油48克'),('砂糖鸡蛋饼干','assets/imgs/美食/饼干/砂糖鸡蛋饼干/1.jpg','黄油75克;糖粉，低筋粉各100克;鸡蛋两个;酸奶10克;粗砂糖适量');
/*!40000 ALTER TABLE `sweet_binggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sweet_buding`
--

DROP TABLE IF EXISTS `sweet_buding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sweet_buding` (
  `name` text,
  `pic` text,
  `material` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sweet_buding`
--

LOCK TABLES `sweet_buding` WRITE;
/*!40000 ALTER TABLE `sweet_buding` DISABLE KEYS */;
INSERT INTO `sweet_buding` VALUES ('芒果布丁','assets/imgs/美食/布丁/芒果布丁/1.jpg','芒果布丁粉75克;沸水450毫升;两杯一个;布丁瓶4个'),('蛋奶布丁','assets/imgs/美食/布丁/蛋奶布丁/1.jpg','鸡蛋两个;牛奶150克;白糖30克'),('奶油布丁','assets/imgs/美食/布丁/奶油布丁/1.jpg','蛋黄两个;淡奶油150克;纯牛奶50克;细砂糖15克'),('红豆布丁','assets/imgs/美食/布丁/红豆布丁/1.jpg','红豆100克;吉利丁10克;清水800克;白糖35克');
/*!40000 ALTER TABLE `sweet_buding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sweet_cake`
--

DROP TABLE IF EXISTS `sweet_cake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sweet_cake` (
  `name` text,
  `pic` text,
  `material` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sweet_cake`
--

LOCK TABLES `sweet_cake` WRITE;
/*!40000 ALTER TABLE `sweet_cake` DISABLE KEYS */;
INSERT INTO `sweet_cake` VALUES ('红糖枣糕','assets/imgs/美食/cake/红糖枣糕/1.jpg','鸡蛋3个;牛奶40克;低筋面粉55克;大枣碎或枣泥100克;黄油30克;柠檬汁2克'),('拔丝蛋糕','assets/imgs/美食/cake/拔丝蛋糕/1.jpg','鸡蛋3个;牛奶40克;低筋面粉60克;玉米淀粉30克;大豆油40克;肉松50克;细砂糖80克'),('黑米糕','assets/imgs/美食/cake/黑米糕/1.jpg','黑米粉200克;牛奶240克;中筋面粉100克;糖粉60克;酵母5克'),('可可蛋糕','assets/imgs/美食/cake/可可蛋糕/1.jpg','鸡蛋3个;牛奶50毫升;白沙蛋糕粉80克;可可粉20克;黄油30克;细砂糖100克');
/*!40000 ALTER TABLE `sweet_cake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` text,
  `name` text,
  `password` text,
  `mibao` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('15227170001','张家程','1433223','桔子'),('15227170000','黄鹏','123abc456','苹果');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xianggang`
--

DROP TABLE IF EXISTS `xianggang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xianggang` (
  `name` text,
  `src` text,
  `wheres` text,
  `h1` text,
  `texts` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xianggang`
--

LOCK TABLES `xianggang` WRITE;
/*!40000 ALTER TABLE `xianggang` DISABLE KEYS */;
INSERT INTO `xianggang` VALUES ('01 迪士尼乐园','../../assets/imgs/旅游/迪士尼乐园.jpg','114.05/22.31','身临其境感受童话乐园','香港迪士尼乐园是全球第5座、亚洲第2座，中国第1座迪士尼乐园。乐园分为7个主题园区，分别为：美国小镇大街、探险世界、幻想世界、明日世界、玩具总动员大本营、灰熊山谷及迷离庄园，其中灰熊山谷和迷离庄园为全球独有。园区内设有主题游乐设施、娱乐表演、互动体验、餐饮服务、商品店铺及小食亭。此外，乐园每天晚上会呈献巡游表演节目及烟花汇演。'),('02 海洋公园','../../assets/imgs/旅游/海洋公园.jpg','113.41/23.12','全球最受欢迎主题公园','香港海洋公园入场人次全世界排名跃升至第14位，亚洲区则排名为第5位，在全中国排名则持续高据第1位。拥有全东南亚最大的海洋水族馆及主题游乐园，在这里不仅可以看到趣味十足的露天游乐场、海豚表演还有海狮、飞鸟等精彩特技表演，还有千奇百怪的海洋性鱼类、高耸入云的海洋摩天塔，各式各样惊险刺激的机动游乐设施，如过山车、摩天轮、海盗船等，更有惊险刺激的越矿飞车、极速之旅，是访港旅客最爱光顾的地方。'),('03 太平山顶','../../assets/imgs/旅游/太平山顶.jpg','114.15/22.27','俯瞰维港美景','香港太平山顶是香港最高点，海拔554米，位于香港岛西北部，一直是香港的标志，也是香港最受欢迎的名胜景点之一。它又称维多利亚峰或扯旗山，是港岛最负盛名的豪华高级住宅区；鸟瞰壮丽海港、绚丽市景的理想地。于风景优美的山顶环回步行径漫步，可见层层叠叠的摩天高楼、享誉全球的维多利亚海港，以及清新宜人的翠绿山峦；从卢吉道观景点放眼远望，维港风光更是一览无遗。另外，狮子亭、山顶广场的观景台及凌霄阁摩天台，同样坐拥极佳景致！'),('04 浅水湾','../../assets/imgs/旅游/浅水湾.jpg','114.21/22.22','波平浪静，水清沙细','浅水湾在香港岛之南，坡缓滩长，波平浪静，水清沙细，沙滩宽阔洁净而水浅，且冬暖夏凉，水温在十六摄氏度至二十七摄氏度之间，历来是港人消夏弄潮的胜地，也是游人必至的著名风景区。昔日，香江八景之一的“海国浮沉”，指的就是浅水湾的海滨浴场。');
/*!40000 ALTER TABLE `xianggang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xizang`
--

DROP TABLE IF EXISTS `xizang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xizang` (
  `name` text,
  `src` text,
  `wheres` text,
  `h1` text,
  `texts` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xizang`
--

LOCK TABLES `xizang` WRITE;
/*!40000 ALTER TABLE `xizang` DISABLE KEYS */;
INSERT INTO `xizang` VALUES ('01 布达拉宫','../../assets/imgs/旅游/布达拉宫.jpg','91.117/29.651','中国西藏拉萨的宫堡式建筑群','布达拉宫始建于公元7世纪，是藏王松赞干布为远嫁西藏的唐朝文成公主而建。在拉萨海拔3,700多米的红山上建造了999间房屋的宫宇－－布达拉宫。宫堡依山而建，现占地41万平方米，建筑面积13万平方米，宫体主楼13层,高115米,全部为石木结构，5座宫顶覆盖镏金铜瓦，金光灿烂，气势雄伟，是藏族古建筑艺术的精华。被誉为高原圣殿。'),('02 扎什伦布寺','../../assets/imgs/旅游/扎什伦布寺.jpg','88.86/29.26','吉祥须弥聚福殊胜诸方州','扎什伦布寺可与达赖的布达拉宫相媲美。它与拉萨的“三大寺”甘丹寺、色拉寺、哲蚌寺合称藏传佛教格鲁派的“四大寺”。四大寺以及青海的塔尔寺和甘肃的拉卜楞寺并列为格鲁派的“六大寺”。建筑结构也深刻影响了其他藏传佛教建筑如五当召。'),('03 南迦巴瓦峰','../../assets/imgs/旅游/南迦巴瓦峰.jpg','95.06/29.63','冰川高耸，云雾缭绕','南迦巴瓦峰位于林芝地区，这里山顶冰川高耸、形状俏丽，山间常有云雾缭绕，而山下则是植被茂密的西藏江南，景色优美。《中国国家地理》选美中国评选中，南迦巴瓦被评为“中国最美雪山”。欣赏南迦巴瓦峰的最佳时间是每年的4-10月，此时气候合适，山下绿树成荫，山间云雾飘荡，景色最漂亮。'),('04 大昭寺','../../assets/imgs/旅游/大昭寺.jpg','91.13/29.65','西藏辉煌的一座吐蕃时期的建筑','大昭寺，在藏传佛教中有着崇高的地位，现在几乎是拉萨的必游景点，这里也是八廓街的中心，八廓街就是大昭寺的转经道。在大昭寺门口和整个八廓街，都可以看到磕长头的藏人，他们的眼神里，有着我们外人没有的虔诚。');
/*!40000 ALTER TABLE `xizang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuti`
--

DROP TABLE IF EXISTS `zhuti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuti` (
  `id` int(11) DEFAULT NULL,
  `time` text,
  `style` text,
  `day` text,
  `imgSrc` text,
  `texts` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuti`
--

LOCK TABLES `zhuti` WRITE;
/*!40000 ALTER TABLE `zhuti` DISABLE KEYS */;
/*!40000 ALTER TABLE `zhuti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-07 10:50:26
