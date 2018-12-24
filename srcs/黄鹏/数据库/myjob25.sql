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
INSERT INTO `food_chuan` VALUES ('水煮肉片','麻辣',0,'assets/imgs/美食/川/水煮肉片/1.jpg','牛肉200克;包菜150克;芹菜100克;青蒜100克;辣椒碎、葱、姜适量;水煮肉片调味料适量;鸡精、鸡粉少许;生一勺;花椒油少许'),('干煸兔丁','香辣',0,'assets/imgs/美食/川/干煸兔丁/1.jpg','兔肉适量;食盐白糖适量;大蒜姜大葱适量;料酒老抽适量;胡椒粉花椒粉适量;鸡精淀粉白芝麻适量;干辣椒花椒适量'),('毛血旺','麻辣',0,'assets/imgs/美食/川/毛血旺/1.jpg','鸭血适量;鳝鱼片适量;毛肚适量;火腿肠适量;五花肉适量;黄豆芽适量;木耳适量;黄花适量;大葱适量;火锅底梁适量;干辣椒花椒适量'),('川香水煮鱼','香辣',0,'assets/imgs/美食/川/川香水煮鱼/1.jpg','鱼片200克;五花肉50克;鱼料100克;蒜苗两根;芹菜，莴笋尖，香菜，小葱各一根;豆芽适量;辣椒面适量;青花椒，红花椒适量'),('麻婆豆腐','麻辣',0,'assets/imgs/美食/川/麻婆豆腐/1.jpg','豆腐一块;葱花适量;郫县豆瓣酱适量;老干妈适量;水淀粉适量;麻油适量;鸡精少许;盐适量');
/*!40000 ALTER TABLE `food_chuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_comment`
--

DROP TABLE IF EXISTS `food_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_comment` (
  `id` text,
  `name` text,
  `userid` text,
  `userName` text,
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
  `taste` text,
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
-- Table structure for table `movie_comment`
--

DROP TABLE IF EXISTS `movie_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_comment` (
  `id` text,
  `name` text,
  `userid` text,
  `userName` text,
  `userhead` text,
  `content` text,
  `time` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_comment`
--

LOCK TABLES `movie_comment` WRITE;
/*!40000 ALTER TABLE `movie_comment` DISABLE KEYS */;
INSERT INTO `movie_comment` VALUES ('1','','','','','',''),('2','','','','','',''),('3','','','','','',''),('4','','','','','',''),('5','','','','','',''),('6','','','','','','');
/*!40000 ALTER TABLE `movie_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies1`
--

DROP TABLE IF EXISTS `movies1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies1` (
  `moviesName` varchar(45) NOT NULL DEFAULT '',
  `moviesSco` varchar(45) NOT NULL,
  `moviesImg` varchar(45) NOT NULL,
  `moviesIntro` varchar(300) NOT NULL,
  `moviesPic` varchar(45) NOT NULL,
  `rolesActor` text,
  PRIMARY KEY (`moviesName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies1`
--

LOCK TABLES `movies1` WRITE;
/*!40000 ALTER TABLE `movies1` DISABLE KEYS */;
INSERT INTO `movies1` VALUES ('毒液：致命守护者','7.4','../../assets/imgs/movies/venom.jpg','身为记者的艾迪（汤姆·哈迪饰）在调查生命基金会老板卡尔顿·德雷克（里兹·阿迈德饰）的过程中,事业遭受重创,与未婚妻安妮·韦英（米歇尔·威廉姆斯饰）的关系岌岌可危,并意外被外星共生体入侵,历经挣扎对抗,最终成为拥有强大超能力,无人可挡的“毒液”。\n','../../assets/imgs/movies/venom1.jpg','汤姆·哈迪，里兹·阿迈德'),('无名之辈','8.2','../../assets/imgs/movies/无名之辈.jpg','在一座山间小城中,一对低配劫匪、一个落魄的泼皮保安、一个身体残疾却性格彪悍的残毒舌女以及一系列生活在社会不同轨迹上的小人物,在一个貌似平常的日子里,因为一把丢失的老枪和一桩当天发生在城中的乌龙劫案,从而被阴差阳错地拧到一起,发生的一幕幕令人啼笑皆非的荒诞喜剧\n','../../assets/imgs/movies/无名之辈1.jpg','陈建斌，任素汐，章宇'),('名侦探柯南：零的执行人','5.8','../../assets/imgs/movies/名侦探.jpg\n','5月1日,东京湾边的新建筑“海洋边缘”将举办首脑云集的东京峰会。然而,峰会开办前一周,会场发生超大规模的爆炸事件,并出现了安室透的身影。疑似恐怖袭击的事件引起了警察部门的严肃调查。在警察局大型搜查会议上,公安部门提交证物,却发现疑犯指纹与毛利小五郎（小山力也 配音）指纹吻合。作为律师的妃英理努力收集证据证明丈夫的无辜,却无力阻止毛利小五郎被收监。看到毛利兰（山崎和佳奈 配音）绝望哭泣的样子,柯南（高山南 配音）决定调查事件真相,还毛利小五郎清白。另一方面,少年侦探团的孩子们正紧密关注着无人探测器“天鹅”的回航任务。行踪诡异的安室透、惨遭陷害的毛利小五郎、错综复杂的警察部门、即将着陆的无人探测器','../../assets/imgs/movies/名侦探7.jpg','高山南，山口胜平，山崎和佳奈，小山力也，古谷彻，茶风林'),('生活万岁','7.4','../../assets/imgs/movies/生活万岁.jpg','这是一部由程工、任长箴共同执导的现实题材电影，该电影讲述了15名普通中国人最真实的生活状态，这并无交集的十四段故事谱写着同一个世界角落的生活，它或许艰辛，或许无奈，或许也带着些许苦涩，但每个人都在默默坚持着、爱着这样的生活。\n','../../assets/imgs/movies/生活万岁1.jpg','--'),('无敌破坏王2：大闹互联网','8.3','../../assets/imgs/movies/无敌.jpg','为了拯救调皮女孩云妮洛普（萨拉·丝沃曼 配音）所在的电子游戏《甜蜜冲刺》，游戏反派破坏王拉尔夫（约翰·C·赖利 配音）和云妮洛普涉险探索互联网，寻找游戏的关键配件。\n手足无措的拉尔夫和云妮洛普在各色网络公民的帮助下一路前行，还遇到了最热潮流网站爆音的核心人物——充满企业家精神的赞姐（塔拉吉·P·汉森 配音）和”狂野飙车”在线游戏中坚\n韧不拔的女车手闪姐（盖尔·加朵 配音）。\n','../../assets/imgs/movies/无敌5.jpg','约翰·C·赖利，萨拉·丝沃曼，塔拉吉·P·汉森，盖尔·加朵');
/*!40000 ALTER TABLE `movies1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies2`
--

DROP TABLE IF EXISTS `movies2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies2` (
  `moviesName` varchar(45) NOT NULL DEFAULT '',
  `moviesTime` varchar(45) NOT NULL,
  `moviesImg` varchar(45) NOT NULL,
  `moviesIntro` varchar(300) NOT NULL,
  `moviesPic` varchar(45) NOT NULL,
  `rolesActor` text,
  PRIMARY KEY (`moviesName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies2`
--

LOCK TABLES `movies2` WRITE;
/*!40000 ALTER TABLE `movies2` DISABLE KEYS */;
INSERT INTO `movies2` VALUES ('海王','2018.12.8','../../assets/imgs/movies/海王.jpg','海王（杰森·莫玛 饰）是美国DC漫画旗下超级英雄，本名亚瑟·库瑞，是海底之国亚特兰蒂斯的皇后和美国海边一个灯塔看守人的私生子，拥有半人类、半亚特兰蒂斯人的血统，从小就展现出了远超常人的各项体能，以及能在水下自由活动与呼吸，并和海洋生物沟通等异于他人的能力，在前任亚特兰蒂斯国王死后，王位空缺，其母派人找到他，加冕其为亚特兰蒂斯国王、掌管七海，并被赋予了亚特兰蒂斯王权的象征，能操控大海力量，掀起风浪的三叉戟，后与超人、蝙蝠侠等人创立正义联盟，成为正义联盟七大创始人之一。\n','../../assets/imgs/movies/海王4.jpg','杰森·莫玛，艾梅柏·希尔德，叶海亚·阿卜杜勒-迈丁，帕特里克·威尔森'),('狗十三','2018.12.7','../../assets/imgs/movies/狗十三.jpg','13岁的少女李玩（张雪迎 饰），由于父母离异，与爷爷（智一桐 饰）奶奶（周珍 饰）生活在一起。正处于青春期的她渴望了解、陪伴和爱。在“要听话”的中国式教育里，李玩也完成了属于她的“成人礼”。电影中，父亲（果靖霖 饰）希望通过一条宠物小狗完成与女儿的和解与沟通，李玩为狗取名“爱因斯坦”，暗潮涌动的青春因“爱因斯坦”意外走失，开启了它汹涌又无奈的成长之路。\n','../../assets/imgs/movies/狗十三3.jpg','果静林，张雪迎'),('蜘蛛侠：平行宇宙','2018.12.21','../../assets/imgs/movies/蜘蛛侠.jpg','蜘蛛侠不止一个！漫威首部超英动画巨制《蜘蛛侠：平行宇宙》将经典漫画与CGI技术完美呈现，讲述了普通高中生迈尔斯·莫拉斯如何师从蜘蛛侠彼得·帕克，成长为新一代超级英雄的故事。影片中迈尔斯和从其它平行宇宙中穿越而来的彼得、女蜘蛛侠格温、暗影蜘蛛侠、潘妮·帕克和蜘猪侠集结成团，六位蜘蛛侠首次同框大银幕，对抗蜘蛛侠宇宙最强反派。\n','../../assets/imgs/movies/蜘蛛侠1.jpg','沙美克·摩尔，列维·施瑞博尔，海莉·斯坦菲尔德，马赫沙拉·阿里'),('龙猫','2018.12.14','../../assets/imgs/movies/龙猫.jpg','小月的母亲生病住院了，父亲带着她与四岁的妹妹小梅到乡间居住。她们对那里的环境都感到十分新奇，也发现了很多有趣的事情。她们遇到了很多小精灵，她们来到属于她们的环境中，看到了她们世界中很多的奇怪事物，更与一只大大胖胖的龙猫成为了朋友。龙猫与小精灵们利用他们的神奇力量，为小月与妹妹带来了很多神奇的景观，令她们大开眼界。妹妹小梅常常挂念生病中的母亲，嚷着要姐姐带着她去看母亲，但小月拒绝了。小梅竟然自己前往，不料途中迷路了，小月只好寻找她的龙猫及小精灵朋友们的帮助。\n','../../assets/imgs/movies/龙猫5.jpg','日高法子，坂本千夏，糸井重里，高木均'),('手机狂响','2018.12.29','../../assets/imgs/movies/手机狂响.jpg','七个好友聚餐，有人提议大家玩一个将手机公开的游戏：与在场所有人分享当晚收到的每一条短信、每一个电话，每一个弹窗，由此掀开了一场轩然大波。一条短信，拆散一对恩爱夫妻；一个电话，推翻多年发小感情……数字时代，小小手机藏了无数秘密，当手机变成锋利的利刃，当聚餐局变成“揭秘局”，他们能否跨越信任危机，重新思考彼此之间的亲密关系？\n','../../assets/imgs/movies/手机狂响.jpg','佟大为，马丽，乔杉，田雨');
/*!40000 ALTER TABLE `movies2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies3`
--

DROP TABLE IF EXISTS `movies3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies3` (
  `moviesName` varchar(45) NOT NULL DEFAULT '',
  `moviesSco` varchar(45) NOT NULL,
  `moviesImg` varchar(45) NOT NULL,
  `moviesIntro` varchar(300) NOT NULL,
  `moviesPic` varchar(45) NOT NULL,
  PRIMARY KEY (`moviesName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies3`
--

LOCK TABLES `movies3` WRITE;
/*!40000 ALTER TABLE `movies3` DISABLE KEYS */;
INSERT INTO `movies3` VALUES ('摔跤吧！爸爸','9.1','../../assets/imgs/movies/摔跤.jpg','这是一个温暖幽默的励志故事。马哈维亚 辛格·珀尕（阿米尔汗 饰）曾是印度国家摔跤冠军，因生活所迫放弃摔跤。他希望让儿子可以帮他完成梦想：赢得世界级金牌。结果生了四个女儿。本以为梦想就此破碎的辛格却意外发现女儿身上的惊人天赋，看到冠军希望的他决定不能让女儿的天赋浪费，像其他女孩一样只能洗衣做饭过一生，再三考虑之后，与妻子约定一年时间按照摔跤手的标准训练两个女儿：换掉裙子 、剪掉了长发，让她们练习摔跤，并赢得一个又一个冠军，最终赢来了成为榜样激励千千万万女性的机会……\n','../../assets/imgs/movies/摔跤5.jpg'),('战狼2','7.1','../../assets/imgs/movies/战狼.jpg','冷锋（吴京 饰）突然被卷入了一场非洲国家叛乱，本可以安全撤离，却因无法忘记曾经为军人的使命，孤身犯险冲回沦陷区，带领身陷屠杀中的同胞和难民，展开生死逃亡。\n','../../assets/imgs/movies/战狼6.jpg'),('速度与激情7','8.3','../../assets/imgs/movies/速度.jpg','经历了紧张刺激的伦敦大战，多米尼克·托雷托（范·迪塞尔 饰）和他的伙伴们重新回归平静的生活，但是江湖的恩恩怨怨却决不允许他们轻易抽身而去。棘手的死对头欧文·肖瘫在医院，不得动弹，他的哥哥戴克·肖（杰森·斯坦森 饰）则发誓要为弟弟复仇。戴克曾是美国特种部队的王牌杀手，不仅身怀绝技，而且心狠手辣。他干掉了远在东京的韩，还几乎把探长卢克·霍布斯（道恩·强森 饰）送到另一个世界，甚至多米尼克那世外桃源般的家也被对方炸毁。复仇的利刃已经架在脖子上，多米尼克再也没有选择，他找到长久以来最为信赖的团队，与来势汹汹的戴克展开生死对决……\n','../../assets/imgs/movies/速度5.jpg'),('我不是药神','9.0','../../assets/imgs/movies/药神.jpg','一位不速之客的意外到访，打破了神油店老板程勇（徐峥 饰）的平凡人生，他从一个交不起房租的男性保健品商贩，一跃成为印度仿制药“格列宁”的独家代理商。收获巨额利润的他，生活剧烈变化，被病患们冠以“药神”的称号。但是，一场关于救赎的拉锯战也在波涛暗涌中慢慢展开......\n','../../assets/imgs/movies/药神4.jpg'),('寻梦环游记','9.0','../../assets/imgs/movies/寻梦.jpg','热爱音乐的米格尔（安东尼·冈萨雷兹 Anthony Gonzalez 配音）不幸地出生在一个视音乐为洪水猛兽的大家庭之中，一家人只盼着米格尔快快长大，好继承家里传承了数代的制鞋产业。一年一度的亡灵节即将来临，每逢这一天，去世的亲人们的魂魄便可凭借着摆在祭坛上的照片返回现世和生者团圆。 在一场意外中，米格尔竟然穿越到了亡灵国度之中，在太阳升起之前，他必须得到一位亲人的祝福，否则就将会永远地留在这个世界里。米格尔决定去寻找已故的歌神德拉库斯（本杰明·布拉特 Benjamin Bratt 配音），因为他很有可能就是自己的祖父。途中，米格尔邂逅了落魄乐手埃克托（盖尔·加西亚·贝纳尔 Gael Garc','../../assets/imgs/movies/寻梦6.jpg');
/*!40000 ALTER TABLE `movies3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moviesRoles`
--

DROP TABLE IF EXISTS `moviesRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moviesRoles` (
  `name` text,
  `rolesId` text,
  `rolesName` text,
  `rolesActro` text,
  `rolesImg` text,
  `rolesIntro` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviesRoles`
--

LOCK TABLES `moviesRoles` WRITE;
/*!40000 ALTER TABLE `moviesRoles` DISABLE KEYS */;
INSERT INTO `moviesRoles` VALUES ('毒液：致命守护者','1','毒液','--','../../assets/imgs/movies/venom2.jpg','一种液态生命形式。记者埃迪·布洛克则是毒液的宿主。毒液可以从宿主的身体中钻出，或是从埃迪背后喷涌而出，变成伸延触手予敌人以致命一袭，这便是毒液液化技能的体现。它可通过自己的意愿快速液化，从而塑造成不同的形状。'),('毒液：致命守护者','2','埃迪·布洛克','汤姆·哈迪','../../assets/imgs/movies/venom3.jpg','一名记者，毒液的宿主。因调查生命基金会人体实验丑闻而误入实验室，阴差阳错被外星生物毒液附体。由于无时无刻不在与体内的共生体互相博弈，他时而正义勇敢，力求真相深入虎穴，为伤及无辜抱歉；时而在共生体的作用下变得狂暴危险，不近人情地想要摧毁破坏，这一切就如他的自我独白：“这种力量，并非完全可怕。”'),('毒液：致命守护者','3','德雷克博士','里兹·阿迈德','../../assets/imgs/movies/venom4.jpg','埃迪和毒液要面对的最终敌人。德雷克博士是少数意识到共生体具有无限前景的人，他将随着太空坠落旧金山的黑色液体带回了实验室，并妄图让人与共生体结合，创造“一个全新的物种，更高级的生命形式”而导致事态失控，最终酿造了邪恶共生体肆虐旧金山的大祸。'),('无名之辈','4','马先勇','陈建斌','../../assets/imgs/movies/无名之辈1.jpg','保安，马嘉旗的哥哥'),('无名之辈','5','马嘉旗','任素汐','../../assets/imgs/movies/无名之辈2.jpg','马先勇的妹妹'),('无名之辈','6','胡广生','章宇','../../assets/imgs/movies/无名之辈3.jpg','--'),('名侦探柯南：零的执行人','7','江户川柯南','高山南','../../assets/imgs/movies/名侦探1.jpg','外表看似小孩，其真实身份是被称作“日本警察的救世主”的高中生侦探——工藤新一。和青梅竹马的毛利兰在游乐园约会时，目击到黑衣组织的交易现场，被灌下开发中的毒药——APTX4869，身体缩小了。从此以后化名江户川柯南，寄住在父亲以侦探为业的小兰家，过着日复一日解决案件的日子。'),('名侦探柯南：零的执行人','8','工藤新一','山口胜平','山口胜平','江户川柯南原本的样子。被称为“日本警察的救世主”，以高中生侦探身份活动。父亲是世界级推理小说家工藤优作，母亲是前人气女演员藤峰有希子，他是这对名人父母的儿子。崇拜夏洛克·福尔摩斯，擅长足球。自从被灌下APTX4869，就断了消息，过上了柯南的生活。'),('名侦探柯南：零的执行人','9','毛利兰','山崎和佳奈','../../assets/imgs/movies/名侦探3.jpg','工藤新一的青梅竹马。空手道部主将，拥有都大会第一名实力的文武双全的女高中生。一边等待突然消失的新一的归来，一边温柔地看护着寄住的柯南以及少年侦探团。本作中，父亲小五郎被当作爆炸恐袭的犯人而被逮捕，因而激烈地动摇。向身为律师的分居中的母亲妃英理求助。'),('名侦探柯南：零的执行人','10','毛利小五郎','小山力也','../../assets/imgs/movies/名侦探4.jpg','小兰的父亲，与妻子妃英理分居中。经营着侦探事务所，以前是警视厅搜查一科的刑警，与目暮警部是故交。多亏柯南的名推理而作为“沉睡的小五郎”一跃成名。本作中，突然被当作爆炸恐袭的犯人，备受责难。'),('名侦探柯南：零的执行人','11','安室透','古谷彻','../../assets/imgs/movies/名侦探5.jpg','成为了毛利小五郎弟子的私家侦探，在事务所楼下的波洛咖啡厅打工。其真实身份，是黑衣组织的成员“波本”、隶属于警察厅警备局警备企划科（俗称：公安警察）的“降谷零”。'),('名侦探柯南：零的执行人','12','目暮十三','茶风林','../../assets/imgs/movies/名侦探6.jpg','强行犯三系的警部。责任感强，在现场常以人命优先。也深得部下信赖。曾是小五郎刑警时代的上司。'),('生活万岁','13','抗战老英雄','--','','在亡妻坟前朗诵朴素情书的抗战老英雄'),('生活万岁','14','老年夫妇','--','','上海卖油墩子替儿子还债的老年夫妇'),('生活万岁','15','年轻教师','--','','宁夏固守乡村小学的年轻教师'),('生活万岁','16','失恋舞蹈演员','--','','重庆夜场美丽泼辣的失恋舞蹈演员'),('无敌破坏王2：大闹互联网','17','拉尔夫','约翰·C·赖利','../../assets/imgs/movies/无敌1.jpg','《快手阿修》游戏中的反派人物，但本性并不坏。在本部中，为了寻找《甜蜜冲刺》遗失的组件，他和云妮洛普一同前往互联网世界冒险，不过他的破坏能力还是带来了麻烦。'),('无敌破坏王2：大闹互联网','18','云妮洛普',' 萨拉·丝沃曼','../../assets/imgs/movies/无敌2.jpg','《甜蜜冲刺》的赛车手，她的游戏因为一块组件遗失而出现故障，为了寻找遗失的组件，她和拉尔夫踏上了互联网世界的历险之路。'),('无敌破坏王2：大闹互联网','19','椰丝小姐','塔拉吉·P·汉森','../../assets/imgs/movies/无敌3.jpg','椰丝小姐是互联网的万事通，她随时随地能够获得网络的最新热点，因此她也是个变装女王，衣服由光纤制作。她是网站“爆音视频”的核心人物。'),('无敌破坏王2：大闹互联网','20','闪姐','盖尔·加朵','../../assets/imgs/movies/无敌4.jpg','互联网世界的赛车手。虽然表面上不苟言笑，但是在与同为赛车手的云妮洛普同场竞技之后，两人不打不相识，迅速成为了好朋友'),('海王','21','海王','杰森·莫玛','../../assets/imgs/movies/海王1.jpg','是海底之国亚特兰蒂斯的皇后和美国海边一个灯塔看守人的私生子，拥有半人类、半亚特兰蒂斯人的血统，从小就展现出了远超常人的各项体能，以及能在水下自由活动与呼吸，并和海洋生物沟通等异于他人的能力，掌管七海，并被赋予了亚特兰蒂斯王权的象征，能操控大海力量，掀起风浪的三叉戟。'),('海王','22','湄拉','艾梅柏·希尔德','../../assets/imgs/movies/海王2.jpg','水下世界泽贝尔王国首领的女儿，不仅是在爱情方面吸引着海王，她也是海王的重要伙伴，并帮助海王认同自己的身份。'),('海王','23','黑蝠鲼',' 叶海亚·阿卜杜勒-迈丁','../../assets/imgs/movies/海王3.jpg','黑蝠鲼出生美国巴尔的摩，童年时期最爱在乞沙比克湾游玩。青少年时期却遭到绑架在船上做苦工，这使原本热爱海洋的他开始憎恨起大海，于是他决定学习一切可能用上的东西，然后用来向海洋与海王复仇。'),('海王','24','奥姆王','帕特里克·威尔森','../../assets/imgs/movies/海王5.jpg','海洋领主、海王同母异父的弟弟，他因嫉妒海王与其为敌，一直想要夺取王位，成立“净化者”在海底制造矛盾。使用魔法戟与高科技武器，是海王的死对头之一。'),('狗十三','25','李玩父','果静林','../../assets/imgs/movies/狗十三1.jpg','权威严下的“中国式父亲”，是女儿李玩的成长生涯中最重要的角色，再婚之后的复合家庭令他焦虑不已。'),('狗十三','26','李玩','张雪迎','../../assets/imgs/movies/狗十三2.jpg','李玩父母离异，父亲重新组建家庭，并有了一个儿子。李玩和爷爷奶奶生活，个性顽劣，但感情细腻。在自己的宠物狗爱因斯坦丢失后与家人展开了激烈的“斗争”，父亲为此暴打了李玩。但在自己的小儿子被狗咬伤后，父亲处理的态度却截然相反，这让李玩心灵受到了很大的打击。但面对父亲的专制威严，最终只有妥协'),('蜘蛛侠：平行宇宙','27','迈尔斯·莫拉莱斯','沙美克·摩尔','../../assets/imgs/movies/蜘蛛侠1.jpg','在彼得·帕克死亡后，非裔拉丁混血青少年迈尔斯担任了漫威终极世界的第二任蜘蛛侠。他的能力与初始的蜘蛛侠相似，其来自于一只诺曼·奥斯本试图复制蜘蛛侠超能力而制造的蜘蛛的咬伤。'),('蜘蛛侠：平行宇宙','28','威尔逊·格兰特·菲斯克','列维·施瑞博尔','../../assets/imgs/movies/蜘蛛侠2.jpg','金并（Kingpin）是美国漫威漫画旗下超级反派。是纽约乃至全美国最大的黑社会头目，他思维缜密，智慧过人，全身百分之九十以上都是肌肉，力量惊人，能徒手打穿一面墙，而且自身也是一个世界顶级的格斗高手，和惩罚者同样拥有人类战斗力的最高水平。'),('蜘蛛侠：平行宇宙','29','格温','海莉·斯坦菲尔德','../../assets/imgs/movies/蜘蛛侠3.jpg','女蜘蛛侠'),('蜘蛛侠：平行宇宙','30','亚伦·戴维斯','马赫沙拉·阿里','../../assets/imgs/movies/蜘蛛侠4.jpg','--'),('龙猫','31','草壁五月','日高法子','../../assets/imgs/movies/龙猫1.jpg','草壁家中的长女，稍微年长的她在妈妈生病的时候充当着照顾妹妹的角色。但说到底草壁五月依然是一个小女孩，所以她才能和妹妹一起看到大人看不见的龙猫。性格温顺的她是家中的“小大人”。'),('龙猫','32','草壁梅','坂本千夏','../../assets/imgs/movies/龙猫2.jpg','草壁五月的妹妹，草壁梅性格更加活泼，她善于观察周遭有趣事物，但也常因冒失的举动让姐姐担心。由于年龄太小，她不能理解为什么妈妈没有按照约定回家陪自己玩，并决定自己跑去市里寻找妈妈'),('龙猫','33','草壁达郎','糸井重里','../../assets/imgs/movies/龙猫3.jpg','草壁皋月和草壁梅的父亲，同时也是一位大学教授。在妻子生病之后他决定为住院后的妻子提前准备一个安静的环境，所以带着两个女儿搬到了乡下。草壁达郎工作忙碌而且要看望妻子，但是他始终对于两个女儿保持着关心。'),('龙猫','34','龙猫','高木均','../../assets/imgs/movies/龙猫4.jpg','居住在森林中的巨大怪物。草壁梅独自一人在家中玩耍的时候，偶然进入森林之后发现了龙猫。龙猫乐观开朗，性格温顺，同样具有着精灵般的魔法的力量。他曾经帮助姐妹二人使种子发芽，还曾经帮助草壁五月找回了迷路的草壁梅。'),('手机狂响','35','贾迪','佟大为','../../assets/imgs/movies/手机狂响1.jpg','十八线文艺工作者，英俊潇洒，才华横溢，生活中有众多小迷妹，对科技产品表示麻木，不到万不得已不掏手机。'),('手机狂响','36','韩笑','马丽','../../assets/imgs/movies/手机狂响2.jpg','职场女强人，干练独立，外表坚强内心柔软，手机里有一段不为人知的隐秘经历'),('手机狂响','37','吴小江','乔杉','../../assets/imgs/movies/手机狂响3.jpg','私营老板，上有老下有小，全家经济支柱。辛苦打拼之余，是不折不扣的“低头族”，对他来说手机是命根子，谁也动不得。'),('手机狂响','38','文伯','田雨','../../assets/imgs/movies/手机狂响4.jpg','大学美术老师，公认的好丈夫、好父亲，还是很多女学生心中的好老师，更是一个近乎完美的佛系男人。'),('摔跤吧！爸爸','39','马哈维亚·辛格·珀尕','阿米尔·汗','../../assets/imgs/movies/摔跤1.jpg','年轻时是位摔跤运动员，是印度国家摔跤冠军。但由于家人的反对和生活所迫，早早退役而与世界金牌无缘。从那以后，马哈维亚的梦想就变成了让即将出生的儿子在国际比赛上为印度取得一枚金牌。可他妻子生了四个孩子都是女儿，在偶然发现女儿们有当摔跤选手的潜质后，他不顾他人的眼光与嘲讽，开始培养女儿学习摔跤。'),('摔跤吧！爸爸','40','吉塔','法缇玛·萨那·纱卡','../../assets/imgs/movies/摔跤2.jpg','马哈维亚的女儿，从小被父亲看重有摔跤运动与的潜质，开始在父亲的严格教导下学习摔跤，在获得印度全国冠军之后，进入国家队训练时，接触到了外面的花花世界，开始变得骄傲。在国际比赛上惨败后，回归初心，重新虚心接受父亲的教导，再次向国际比赛发起挑战。'),('摔跤吧！爸爸','41','巴比塔','桑亚·玛荷塔','../../assets/imgs/movies/摔跤3.jpg','马哈维亚的小女儿，吉塔的妹妹。自小与姐姐吉塔跟着父亲学习摔跤，长大后，跟随姐姐的步伐也获得了印度全国冠军，没有像姐姐那样产生骄傲心理，一直相信父亲的教导。也进入国家队训练，准备冲击国际比赛。'),('摔跤吧！爸爸','42','达亚·考尔','萨卡诗·泰瓦','../../assets/imgs/movies/摔跤4.jpg','马哈维亚的妻子，生了四个女儿，为自己不能为丈夫生出儿子而感到内疚，对丈夫百依百顺；但作为一个传统的印度妇女，对于丈夫培养女儿摔跤的行为不是很理解'),('战狼2','43','冷锋','吴京','../../assets/imgs/movies/战狼1.jpg','原为战狼中队的特种兵，因故被开除军籍。因为龙小云的意外失踪，前往非洲追查线索。遭遇当地发生武装叛乱，中国大使馆组织撤侨。本可以安全撤离的冷锋，因无法忘记曾经为军人的使命。为了完成营救华资工厂的中国人和援非医疗专家陈博士的任务，他孤身犯险冲回沦陷区。带领身陷屠杀中的同胞和难民，展开生死逃亡。'),('战狼2','44','老爹','弗兰克·格里罗','../../assets/imgs/movies/战狼2.jpg','智商、指挥能力和作战技能一流的雇佣兵组织头目，手下有一批装备精良的部下。被叛乱军首领高价雇佣而来，然而在追捕陈博士的过程中，遇到了冷锋的一再阻挠。他经过分析和判断认定，杀死冷锋并且抢走冷锋护送的小女孩，就可以凭借疫苗成功地统治这个国家。'),('战狼2','45','何建国','吴刚','../../assets/imgs/movies/战狼3.jpg','一名退伍的老侦察连长，在非洲的华资工厂担任保安主管。叛乱发生后，指挥全体员工守厂自保。冷锋来到工厂后，与冷锋并肩战斗，一起阻击叛军和雇佣兵对工厂的袭击。'),('战狼2','46','卓亦凡','张翰','../../assets/imgs/movies/战狼4.jpg','一个在非洲开厂的富二代军迷，喜欢军事却只会纸上谈兵的“熊孩子”。但是为人真诚，当叛乱部队攻击他的工厂时，勇敢地拿起武器和两位老兵并肩作战，在战火中完成了从男孩到男人的成长'),('战狼2','47','RACHEL','卢靖姗','../../assets/imgs/movies/战狼5.jpg','一名美国援非医生，冷静沉着，医术高超。在雇佣兵搜捕传染病专家陈博士时，试图李代桃僵掩护直正的陈博士。陈博士不幸牺牲后受陈博士的嘱托，和冷锋一起护送与治疗疫情有极大关系的Pasha撤离。'),('速度与激情7','48','多米尼克·托雷托','范·迪塞尔','../../assets/imgs/movies/速度1.jpg','老大兼车手，绝对十足的飞车老大，对朋友讲义，对家人讲情。道奇是他的标志，只要一开上道奇，没人比得过他。'),('速度与激情7','49','布莱恩·奥康纳','保罗·沃克','../../assets/imgs/movies/速度2.jpg','军师兼车手，一个爱非法赛车的前FBI探员，卧底期间和飞车党老大成为生死之交，并与老大的胞妹米娅眉来眼去，为大舅子劫大狱，带怀孕的米娅走天涯。在第七部最后隐退。'),('速度与激情7','50','卢克·霍布斯','道恩·强森','../../assets/imgs/movies/速度3.jpg','DSS（外交安全局）行动组长官。一个一开始很坏，但却拥有牛仔精神的角色。他有一种特别的唠叨技能，这让他说出某些台词时，令观众会心一笑。他是一个拥有超级英雄的潜力和能力却并不成为超级英雄的人物。'),('速度与激情7','51','莱蒂','米歇尔·罗德里格兹','../../assets/imgs/movies/速度4.jpg','多米尼克的女人，为自家男人什么事情都敢做。莱蒂和多米尼克的关系是一种在老式的婚姻中才能找到的罕见的浪漫的忠诚。'),('我不是药神','52','程勇','徐峥','../../assets/imgs/movies/药神1.jpg','困顿的中年男性保健品商贩。因为经营惨淡，铤而走险，成为印度仿制药“格列宁”的独家代理商。被病友冠以“药神”称号。他并没有什么野心，只是想赚点钱，留住孩子的抚养权，开好自己的神油店。当程勇真切地进入到白血病人这个群体后，他的蜕变和成长是惊人的，即使为此陷入牢狱，也要尽自己地所能救助每一个病人。'),('我不是药神','53','曹斌','周一围','../../assets/imgs/movies/药神2.jpg','程勇前妻之弟，一位尽职尽责的警察，性格刚毅正直，外冷内热。接到当地药企报案有人非法售药后，他负责追查印度仿制药案件，通过调查，他怀疑程勇是“主谋”。但是了解了程勇的行为后，他作出了一个重要决定。'),('我不是药神','54','吕受益','王传君','../../assets/imgs/movies/药神3.jpg','重疾患者，十分小家子气，每次见面都会请大家吃橘子。他闯入程勇的神油店，用一个点子给程勇带来有限商机，也给自己带来无限生机，两人建立了深厚友谊。买药一事因他而起，最后也是他的去世促使程勇决定改变。'),('寻梦环游记','55','米格','安东尼·冈萨雷斯','../../assets/imgs/movies/寻梦1.jpg','12岁的墨西哥小男孩米格，住在一个热闹、嘈杂的墨西哥村庄，自小就有音乐梦。然而他出生在鞋匠家族“里韦拉”，这是整个镇子里唯一讨厌音乐的家庭。在秘密追寻音乐梦时，米格不小心进入了死亡之地，在这里遇见了他家人们的灵魂。'),('寻梦环游记','56','埃克托','盖尔·加西亚·贝纳尔','../../assets/imgs/movies/寻梦2.jpg','埃克托是亡灵之地的落魄流浪汉，他想借米格的帮助去往活人的世界。他许诺帮助米格找到歌神德拉库斯，作为回报，米格则答应将埃克托的照片送回他家人的灵坛。当埃克托在人世间被彻底遗忘之时，他将会化作金色的粉末，面临真正的死亡。'),('寻梦环游记','57','德拉库斯','本杰明·布拉特','../../assets/imgs/movies/寻梦3.jpg','生前是墨西哥的传奇音乐家，米格的偶像。这位迷人而有个性的音乐家在意外离世前受到了全世界乐迷的尊崇，而在死者的世界中甚至更受爱戴。米格认为他很可能就是当初那个为追寻音乐梦想而抛家弃子的高祖父。'),('寻梦环游记','58','伊梅尔达','阿兰纳·乌巴奇','../../assets/imgs/movies/寻梦4.jpg','伊梅尔达是米格的高祖母，里韦拉家族的女族长。好强，独立，勇敢。在音乐家丈夫抛家弃子消失之后发誓让家人不再碰音乐，而且靠着学习做鞋手艺将米格的太奶奶可可抚养长大，并且让她们家族成了当地著名的鞋匠之家。'),('寻梦环游记','59','可可','安娜·奥菲丽亚·莫吉亚','../../assets/imgs/movies/寻梦5.jpg','可可是米格的太奶奶，神智不清的老人，是米格关系最为亲近的重要家人。自从自己的父亲离家之后就由母亲伊梅尔达独自抚养长大，但是她从未忘记自己的父亲，一直惦记着他。“可可”是过去与未来，亡灵界与人间，回忆与现实之间最重要的连接点。');
/*!40000 ALTER TABLE `moviesRoles` ENABLE KEYS */;
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
-- Table structure for table `shoucang`
--

DROP TABLE IF EXISTS `shoucang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoucang` (
  `id` text,
  `name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoucang`
--

LOCK TABLES `shoucang` WRITE;
/*!40000 ALTER TABLE `shoucang` DISABLE KEYS */;
INSERT INTO `shoucang` VALUES ('20181211','麻辣香锅');
/*!40000 ALTER TABLE `shoucang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoucang_food`
--

DROP TABLE IF EXISTS `shoucang_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoucang_food` (
  `id` text,
  `name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoucang_food`
--

LOCK TABLES `shoucang_food` WRITE;
/*!40000 ALTER TABLE `shoucang_food` DISABLE KEYS */;
INSERT INTO `shoucang_food` VALUES ('20181211','麻辣香锅');
/*!40000 ALTER TABLE `shoucang_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoucang_movie`
--

DROP TABLE IF EXISTS `shoucang_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoucang_movie` (
  `id` text,
  `name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoucang_movie`
--

LOCK TABLES `shoucang_movie` WRITE;
/*!40000 ALTER TABLE `shoucang_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoucang_movie` ENABLE KEYS */;
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
-- Table structure for table `sweet_step`
--

DROP TABLE IF EXISTS `sweet_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sweet_step` (
  `id` text,
  `name` text,
  `steppics` text,
  `stepnames` text,
  `stepcontents` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sweet_step`
--

LOCK TABLES `sweet_step` WRITE;
/*!40000 ALTER TABLE `sweet_step` DISABLE KEYS */;
INSERT INTO `sweet_step` VALUES ('1','红糖枣糕','assets/imgs/美食/cake/红糖枣糕/2.jpg;assets/imgs/美食/cake/红糖枣糕/3.jpg;assets/imgs/美食/cake/红糖枣糕/4.jpg;assets/imgs/美食/cake/红糖枣糕/5.jpg;assets/imgs/美食/cake/红糖枣糕/6.jpg   ','步骤一;步骤二;步骤三;步骤四;步骤五','蛋黄加红糖搅匀，再加入黄油和牛奶再次搅匀;筛入低筋面粉翻拌均匀;蛋白加柠檬汁加红糖搅拌至发泡与蛋黄混合均匀;加入枣泥翻版均匀倒入模具;140度预热5分钟，烘烤70分钟左右，倒扣晾凉后再脱模。'),('2','拔丝蛋糕','assets/imgs/美食/cake/拔丝蛋糕/2.jpg;assets/imgs/美食/cake/拔丝蛋糕/3.jpg;assets/imgs/美食/cake/拔丝蛋糕/4.jpg;assets/imgs/美食/cake/拔丝蛋糕/5.jpg;assets/imgs/美食/cake/拔丝蛋糕/6.jpg;assets/imgs/美食/cake/拔丝蛋糕/7.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六','牛奶加入大豆油加入一部分糖，用手动打蛋器搅拌至糖溶化，加入蛋黄玉米搅拌均匀;细砂糖加入蛋清，冷藏后用电动打蛋器打发至湿性发泡。;取三分之一的蛋白霜，跟蛋黄糊拌匀，再倒回剩下的蛋白中搅拌;加入肉松混合搅拌;把面糊装进裱花袋，纸杯放入模具里，挤入纸杯至7分满，轻震几下，排出空气。;烤箱提前预热，上下火150度，烘烤50分钟即可。'),('3','黑米糕','assets/imgs/美食/cake/黑米糕/2.jpg;assets/imgs/美食/cake/黑米糕/3.jpg;assets/imgs/美食/cake/黑米糕/4.jpg','步骤一;步骤二;步骤三','混合所有干料加入牛奶搅拌均匀;转移到6寸蛋糕盆中，蛋糕盆中铺油纸，盖上保鲜膜，进行发酵，发酵8分满;中火开锅后蒸30分钟即可'),('4','可可蛋糕','assets/imgs/美食/cake/可可蛋糕/2.jpg;assets/imgs/美食/cake/可可蛋糕/3.jpg;assets/imgs/美食/cake/可可蛋糕/4.jpg;assets/imgs/美食/cake/可可蛋糕/5.jpg;assets/imgs/美食/cake/可可蛋糕/6.jpg','步骤一;步骤二;步骤三;步骤四;步骤五','黄油隔水融化，蛋糕模具垫烤油纸;蛋、清分离，将蛋白打至粗泡后加入1/3的细砂糖搅拌加入剩余白砂糖打至硬性发泡;加入蛋黄，筛入白鲨蛋糕粉搅拌均匀;牛奶和黄油液混合均匀，筛入可可粉，搅拌至无颗粒与面糊混合搅拌均匀;倒入模具中，烤箱170度，烤30到40分钟即可'),('5','芒果布丁','assets/imgs/美食/布丁/芒果布丁/2.jpg;assets/imgs/美食/布丁/芒果布丁/3.jpg;assets/imgs/美食/布丁/芒果布丁/4.jpg','步骤一;步骤二;步骤三','将布丁粉倒入量杯加入沸水充分搅拌;为了让布丁粉完全溶解，可以放到融化锅加热一会;倒入布丁瓶盖盖，放入冰箱冷藏半个小时，然后就大功告成啦'),('6','蛋奶布丁','assets/imgs/美食/布丁/蛋奶布丁/2.jpg;assets/imgs/美食/布丁/蛋奶布丁/3.jpg;assets/imgs/美食/布丁/蛋奶布丁/4.jpg;assets/imgs/美食/布丁/蛋奶布丁/5.jpg','步骤一;步骤二;步骤三;步骤四','先把鸡蛋和白糖放入大碗中，用手动打蛋器搅打均匀。;倒入牛奶搅打均匀。;把蛋奶液过滤3遍。把过滤好的蛋奶液装进小碗中，裹上保鲜膜；蒸锅烧开水，放入蛋奶液，大火蒸12分钟，焖两分钟，即可出锅享用。先把鸡蛋和白糖放入大碗中，用手动打蛋器搅打均匀。;倒入牛奶搅打均匀。;把蛋奶液过滤3遍。把过滤好的蛋奶液装进小碗中，裹上保鲜膜；蒸锅烧开水，放入蛋奶液，大火蒸12分钟，焖两分钟，即可出锅享用。'),('7','奶油布丁','assets/imgs/美食/布丁/奶油布丁/2.jpg;assets/imgs/美食/布丁/奶油布丁/3.jpg;assets/imgs/美食/布丁/奶油布丁/4.jpg;assets/imgs/美食/布丁/奶油布丁/5.jpg;assets/imgs/美食/布丁/奶油布丁/6.jpg','步骤一;步骤二;步骤三;步骤四;步骤五','将淡奶油、牛奶和糖倒入小奶锅里，用小火加热，一边搅拌一边加热，使糖全部融化，放凉备用;蛋黄倒入盆里，用蛋抽打散，将放凉的奶液缓慢倒入蛋黄中拌匀;将蛋黄奶液过筛两次，这样会更细腻哟;倒入小个的碗中，烤盘里装入热水，将布丁杯放入;放入已经预热到170度的烤箱中下层，烘烤25分钟左右，表面呈现焦糖色即可'),('8','红豆布丁','assets/imgs/美食/布丁/红豆布丁/2.jpg;assets/imgs/美食/布丁/红豆布丁/3.jpg;assets/imgs/美食/布丁/红豆布丁/4.jpg;assets/imgs/美食/布丁/红豆布丁/5.jpg','步骤一;步骤二;步骤三;步骤四','洗净的红豆加水倒进破壁机打成豆浆状;把破壁机制作的红豆浆倒入汤锅，煮15分钟左右把豆浆煮熟。豆浆很容易糊底和溢锅，所以煮的过程中要不停的搅拌，避免糊底，同时把泡沫撇出去。;煮好的红豆浆晾凉至温热。吉利丁提前用冷水泡软，等到红豆浆至温热的时候放入泡软的吉利丁，搅拌均匀使吉利丁融化。;把吉利丁红豆浆倒入杯子里，放入冰箱里冷藏1小时以上，至布丁凝固，再放上适量蜜红豆，好吃的红豆布丁就做好了。红豆布丁甜蜜丝滑，好好吃。'),('9','白色恋人','assets/imgs/美食/饼干/白色恋人/2.jpg;assets/imgs/美食/饼干/白色恋人/3.jpg;assets/imgs/美食/饼干/白色恋人/4.jpg;assets/imgs/美食/饼干/白色恋人/5.jpg;assets/imgs/美食/饼干/白色恋人/6.jpg;assets/imgs/美食/饼干/白色恋人/7.jpg;assets/imgs/美食/饼干/白色恋人/8.jpg;assets/imgs/美食/饼干/白色恋人/9.jpg;assets/imgs/美食/饼干/白色恋人/10.jpg','步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八;步骤九','黄油自然软化后加入40克的糖粉先用刮刀拌均匀，再用打蛋器打发;加入淡奶油，筛入低筋粉和奶粉，用橡胶刮刀拌匀;蛋清里加入糖粉用打蛋器打发至可以拉出直立的尖角（干性发泡）;将打发好的蛋白取二分之一加到拌好的面糊里用硅胶刮刀翻拌均匀，再将剩下的蛋白加进去同样用翻拌的手法翻拌均匀;面糊装裱花袋里，裱花袋剪个小口，在瓦片模具的小格子里挤一小团面糊，用抹刀将面糊涂抹开后拿掉模具;将烤盘放到烤箱中层，上火180度，下火160度烤9分钟样子，直到饼干的四边出现金黄色即可出炉;白巧克力隔温水溶化后加入淡奶油搅拌均匀;放入冰箱凝固后拿出，取两块冷却的饼干放巧克力上下两边，用刀按大小切出正方形;切好取两块饼干中间放一块薄薄的巧克力组合好即可，将组合好的密封存放12小时再食用'),('10','胡萝卜饼干棒','assets/imgs/美食/饼干/胡萝卜饼干棒/2.jpg;assets/imgs/美食/饼干/胡萝卜饼干棒/3.jpg;assets/imgs/美食/饼干/胡萝卜饼干棒/4.jpg;assets/imgs/美食/饼干/胡萝卜饼干棒/5.jpg;assets/imgs/美食/饼干/胡萝卜饼干棒/6.jpg','步骤一;步骤二;步骤三;步骤四;步骤五','胡萝卜切小丁后切碎备用;黄油软化后放入盆中，加入糖，分两次加入蛋白，每次都要完全搅拌均匀;筛入低筋面粉，用刮刀翻拌均匀;加入胡萝卜碎继续翻拌均匀;把拌好的面糊装入裱花袋，在铺了锡纸的烤盘上挤成细长条状，烤箱预热170度，上下火，中层，大约烤20分钟左右。'),('11','全麦饼干','assets/imgs/美食/饼干/全麦饼干/2.jpg;assets/imgs/美食/饼干/全麦饼干/3.jpg;assets/imgs/美食/饼干/全麦饼干/4.jpg;assets/imgs/美食/饼干/全麦饼干/5.jpg;assets/imgs/美食/饼干/全麦饼干/6.jpg','步骤一;步骤二;步骤三;步骤四;步骤五','低筋面粉，全麦粉混合均匀;黄油放盆子里软化，加入细砂糖打发到顺滑状态，分2次加入鸡蛋液充分打发;加入玉米油和混合好的低筋全麦粉，用刮刀翻拌到没有干粉状态;面团用保鲜袋包上放冰箱冷藏半小时，面团分成20克大小的小剂子;用月饼模具把饼干印出花纹，全麦饼干胚放入预热好的烤箱中下层，上下火170度烤20分钟，饼干烤熟后取出放凉'),('12','砂糖鸡蛋饼干','assets/imgs/美食/饼干/砂糖鸡蛋饼干/2.jpg;assets/imgs/美食/饼干/砂糖鸡蛋饼干/3.jpg;assets/imgs/美食/饼干/砂糖鸡蛋饼干/4.jpg;assets/imgs/美食/饼干/砂糖鸡蛋饼干/5.jpg','步骤一;步骤二;步骤三;步骤四','黄油称好小切小块融化，加上糖粉，先用搅拌器拌均匀，分次加入蛋液，搅打均匀;筛入低粉搅拌均匀;用裱花袋挤在烤盘中，表面撒上砂糖;烤箱中层，180度15分钟即可');
/*!40000 ALTER TABLE `sweet_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` text,
  `name` text,
  `password` text,
  `mibao` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('15227170000','张三','12345','苹果'),('15227170001','李四','12345','桔子');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
  `mibao` text,
  `age` text,
  `birthday` text,
  `style` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('15225150000','李白','1a1a2a3','后裔','12','2006-6-6','喝酒'),('15227170001','萝卜','2','大萝卜',NULL,NULL,NULL),('15227170002','萝卜','2','大萝卜',NULL,NULL,NULL),('15227170003','红薯','12234','萝卜',NULL,NULL,NULL);
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

-- Dump completed on 2018-12-12 16:40:15
