-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2023 at 02:13 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bazar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int NOT NULL,
  `admin_firstname` varchar(50) NOT NULL,
  `admin_lastname` varchar(50) NOT NULL,
  `phoneNo` char(10) NOT NULL,
  `admin_emailID` varchar(50) NOT NULL
) ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `admin_firstname`, `admin_lastname`, `phoneNo`, `admin_emailID`) VALUES
(1, 'Morey', 'Libero', '1161752087', 'mlibero0@xinhuanet.com'),
(2, 'Ulrich', 'Blowers', '1208769322', 'ublowers1@tripod.com'),
(3, 'Germayne', 'Hitzmann', '1813528511', 'ghitzmann2@ed.gov'),
(4, 'Hakeem', 'Domm', '9197236210', 'hdomm3@google.cn'),
(5, 'Sanderson', 'Thrustle', '6877408279', 'sthrustle4@weather.com'),
(6, 'Lissa', 'Hyrons', '3672625472', 'lhyrons5@eepurl.com'),
(7, 'Licha', 'Erwin', '1592876977', 'lerwin6@ezinearticles.com'),
(8, 'Petey', 'Shwenn', '1352439560', 'pshwenn7@mozilla.com'),
(9, 'Cello', 'Tarborn', '1243800283', 'ctarborn8@newyorker.com'),
(10, 'Adelbert', 'Tollow', '6357311570', 'atollow9@rakuten.co.jp'),
(11, 'Westbrook', 'Taggart', '5889183895', 'wtaggarta@oakley.com'),
(12, 'Sawyere', 'Whieldon', '8931058279', 'swhieldonb@dyndns.org'),
(13, 'Cody', 'Lowrey', '7489085516', 'clowreyc@bbc.co.uk'),
(14, 'Banky', 'Fairnington', '8102176355', 'bfairningtond@mayoclinic.com'),
(15, 'Alessandra', 'Kilroy', '2969234961', 'akilroye@quantcast.com'),
(16, 'Tiler', 'Filipiak', '7093704577', 'tfilipiakf@blog.com'),
(17, 'Jenny', 'Patullo', '5023557120', 'jpatullog@1688.com'),
(18, 'Karlan', 'Murrigans', '8277722462', 'kmurrigansh@weibo.com'),
(19, 'Alyson', 'Larby', '2503830019', 'alarbyi@fc2.com'),
(20, 'Willa', 'Birchett', '3693538560', 'wbirchettj@psu.edu'),
(21, 'Deeyn', 'Dobbs', '9531759976', 'ddobbsk@lycos.com'),
(22, 'Kittie', 'Bauldry', '2707193758', 'kbauldryl@dyndns.org'),
(23, 'Pierce', 'Stooke', '5813336324', 'pstookem@mayoclinic.com'),
(24, 'Mirna', 'Aves', '9439207259', 'mavesn@reddit.com'),
(25, 'Tamqrah', 'Doll', '9055810916', 'tdollo@sohu.com'),
(26, 'Josias', 'Halwill', '4458869642', 'jhalwillp@webeden.co.uk'),
(27, 'Helaina', 'Weddeburn', '3886830371', 'hweddeburnq@wsj.com'),
(28, 'Rawley', 'Henstone', '7875255244', 'rhenstoner@rambler.ru'),
(29, 'Jazmin', 'Walcot', '7082773571', 'jwalcots@wired.com'),
(30, 'Katy', 'Matessian', '7046444101', 'kmatessiant@ibm.com'),
(31, 'Genni', 'Eborn', '7023061445', 'gebornu@arizona.edu'),
(32, 'Rodi', 'Verry', '3801342985', 'rverryv@quantcast.com'),
(33, 'Daryl', 'Corley', '9913600641', 'dcorleyw@hibu.com'),
(34, 'Tome', 'Liebmann', '1766876958', 'tliebmannx@goodreads.com'),
(35, 'Damien', 'Mushawe', '5575654777', 'dmushawey@ycombinator.com'),
(36, 'Kiri', 'Ondrousek', '9273418084', 'kondrousekz@disqus.com'),
(37, 'Zollie', 'Ruffli', '8048288048', 'zruffli10@artisteer.com'),
(38, 'Annmaria', 'Brownbridge', '6696988185', 'abrownbridge11@flavors.me'),
(39, 'Tandy', 'Dunge', '2837791083', 'tdunge12@deliciousdays.com'),
(40, 'Rudolph', 'Wickins', '5277899541', 'rwickins13@engadget.com'),
(41, 'Merola', 'Dresse', '5097490199', 'mdresse14@fotki.com'),
(42, 'Aime', 'Solomonides', '9737190840', 'asolomonides15@adobe.com'),
(43, 'Lilah', 'Velez', '3595050621', 'lvelez16@columbia.edu'),
(44, 'Matthus', 'Colloby', '2347666113', 'mcolloby17@noaa.gov'),
(45, 'Windy', 'Budcock', '1998197341', 'wbudcock18@soundcloud.com'),
(46, 'Dusty', 'Cutting', '3162876642', 'dcutting19@washingtonpost.com'),
(47, 'Harley', 'Chamberlain', '6287412010', 'hchamberlain1a@rakuten.co.jp'),
(48, 'Kathrine', 'Caskey', '9873314337', 'kcaskey1b@ihg.com'),
(49, 'Danielle', 'Wickey', '6957332866', 'dwickey1c@hhs.gov'),
(50, 'Aeriell', 'Maw', '1997576700', 'amaw1d@umich.edu'),
(51, 'Agata', 'Courcey', '7822425821', 'acourcey1e@twitter.com'),
(52, 'Veronique', 'Tenpenny', '8299902945', 'vtenpenny1f@dell.com'),
(53, 'Denyse', 'Mellanby', '8787036911', 'dmellanby1g@opensource.org'),
(54, 'Uri', 'Cragell', '4948088749', 'ucragell1h@ameblo.jp'),
(55, 'Rowan', 'Lamball', '5634263255', 'rlamball1i@blogtalkradio.com'),
(56, 'Nonnah', 'Pauletti', '1365892437', 'npauletti1j@de.vu'),
(57, 'Glenine', 'Keller', '7438291080', 'gkeller1k@cnbc.com'),
(58, 'Eldon', 'Newlyn', '1863517741', 'enewlyn1l@skype.com'),
(59, 'Damiano', 'Guildford', '3249796077', 'dguildford1m@sourceforge.net'),
(60, 'Melvyn', 'Duligal', '8699414896', 'mduligal1n@xrea.com'),
(61, 'Cornall', 'Tomsu', '8951202351', 'ctomsu1o@msu.edu'),
(62, 'Carly', 'Deary', '9061336631', 'cdeary1p@biglobe.ne.jp'),
(63, 'Darsey', 'Lawling', '5712110725', 'dlawling1q@com.com'),
(64, 'Jarid', 'Capell', '6934549076', 'jcapell1r@sphinn.com'),
(65, 'Lenci', 'Medling', '5444919118', 'lmedling1s@privacy.gov.au'),
(66, 'Elysee', 'Crotch', '7562124739', 'ecrotch1t@theatlantic.com'),
(67, 'Hadrian', 'MacDonagh', '7893741823', 'hmacdonagh1u@nationalgeographic.com'),
(68, 'Erroll', 'Bendix', '6155817538', 'ebendix1v@illinois.edu'),
(69, 'Dunstan', 'Johnsson', '5592617532', 'djohnsson1w@goo.ne.jp'),
(70, 'Gisele', 'Biddles', '4571885402', 'gbiddles1x@netvibes.com'),
(71, 'Wallis', 'Kinchin', '7547981224', 'wkinchin1y@sitemeter.com'),
(72, 'Tiena', 'Jarritt', '6438613488', 'tjarritt1z@adobe.com'),
(73, 'Nigel', 'Abrahami', '6643224678', 'nabrahami20@irs.gov'),
(74, 'Thatcher', 'Benkin', '2707038396', 'tbenkin21@wired.com'),
(75, 'Teodoor', 'Ianitti', '8367426609', 'tianitti22@g.co'),
(76, 'Purcell', 'Kemish', '9115088256', 'pkemish23@mysql.com'),
(77, 'Parrnell', 'Cristobal', '2876571323', 'pcristobal24@live.com'),
(78, 'Aili', 'Hatchard', '8477373542', 'ahatchard25@phpbb.com'),
(79, 'Gretel', 'Bird', '6907305049', 'gbird26@hugedomains.com'),
(80, 'Deina', 'Fulmen', '3495181429', 'dfulmen27@bbc.co.uk'),
(81, 'Terencio', 'Streat', '9066433231', 'tstreat28@woothemes.com'),
(82, 'Bartholemy', 'Sabater', '1087900289', 'bsabater29@etsy.com'),
(83, 'Hugues', 'Mc Faul', '2239812940', 'hmcfaul2a@sbwire.com'),
(84, 'Megen', 'Billings', '4146759395', 'mbillings2b@1und1.de'),
(85, 'Ferd', 'Casiroli', '8689298705', 'fcasiroli2c@reverbnation.com'),
(86, 'Addi', 'Maxworthy', '6719869245', 'amaxworthy2d@sfgate.com'),
(87, 'Mathew', 'Northrop', '4327844254', 'mnorthrop2e@godaddy.com'),
(88, 'Giffie', 'Bendson', '1135154616', 'gbendson2f@hatena.ne.jp'),
(89, 'Gibbie', 'Marrison', '5383615264', 'gmarrison2g@furl.net'),
(90, 'Brennan', 'Garz', '3027701372', 'bgarz2h@oakley.com'),
(91, 'Elfreda', 'Peirson', '4188037251', 'epeirson2i@reddit.com'),
(92, 'Lois', 'McRoberts', '8683519953', 'lmcroberts2j@wiley.com'),
(93, 'Henrietta', 'Pierrepoint', '3753216945', 'hpierrepoint2k@csmonitor.com'),
(94, 'Ilse', 'McCard', '3462732985', 'imccard2l@storify.com'),
(95, 'Branden', 'Lees', '4711446717', 'blees2m@squidoo.com'),
(96, 'Hinda', 'Cuniam', '5604422038', 'hcuniam2n@1und1.de'),
(97, 'Wat', 'Geane', '6448967114', 'wgeane2o@webeden.co.uk'),
(98, 'Kimberli', 'Cottill', '6062730253', 'kcottill2p@tumblr.com'),
(99, 'Kris', 'Lazer', '5994096832', 'klazer2q@cyberchimps.com'),
(100, 'Dell', 'Steinhammer', '2205042465', 'dsteinhammer2r@usa.gov'),
(111, 'John', 'Doe', '1234567890', 'johndoe@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idcart` int NOT NULL,
  `product_ID` int NOT NULL,
  `product_quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idcart`, `product_ID`, `product_quantity`) VALUES
(11001, 1004, 7),
(11002, 1024, 8),
(11003, 1073, 9),
(11004, 1017, 47),
(11005, 1086, 25),
(11006, 1034, 12),
(11007, 1081, 34),
(11008, 1061, 32),
(11009, 1092, 29),
(11010, 1085, 13),
(11011, 1049, 17),
(11012, 1010, 9),
(11013, 1018, 44),
(11014, 1068, 41),
(11015, 1089, 43),
(11016, 1056, 26),
(11017, 1097, 13),
(11018, 1008, 42),
(11019, 1037, 13),
(11020, 1012, 28),
(11021, 1049, 27),
(11022, 1034, 15),
(11023, 1028, 9),
(11024, 1041, 42),
(11025, 1100, 32),
(11026, 1070, 39),
(11027, 1035, 9),
(11028, 1010, 1),
(11029, 1080, 15),
(11030, 1015, 19),
(11031, 1100, 1),
(11032, 1007, 7),
(11033, 1069, 49),
(11034, 1060, 23),
(11035, 1046, 40),
(11036, 1014, 18),
(11037, 1051, 28),
(11038, 1093, 49),
(11039, 1073, 46),
(11040, 1077, 27),
(11041, 1010, 41),
(11042, 1029, 16),
(11043, 1082, 37),
(11044, 1043, 6),
(11045, 1007, 21),
(11046, 1085, 1),
(11047, 1008, 37),
(11048, 1097, 40),
(11049, 1059, 22),
(11050, 1008, 41),
(11051, 1075, 49),
(11052, 1026, 14),
(11053, 1039, 31),
(11054, 1001, 48),
(11055, 1042, 33),
(11056, 1077, 49),
(11057, 1021, 12),
(11058, 1005, 33),
(11059, 1002, 35),
(11060, 1070, 10),
(11061, 1004, 43),
(11062, 1042, 32),
(11063, 1098, 38),
(11064, 1017, 8),
(11065, 1003, 29),
(11066, 1002, 19),
(11067, 1015, 14),
(11068, 1086, 31),
(11069, 1061, 20),
(11070, 1096, 45),
(11071, 1094, 35),
(11072, 1008, 29),
(11073, 1089, 37),
(11074, 1039, 44),
(11075, 1062, 38),
(11076, 1082, 45),
(11077, 1026, 19),
(11078, 1037, 49),
(11079, 1019, 31),
(11080, 1043, 17),
(11081, 1037, 17),
(11082, 1058, 4),
(11083, 1099, 28),
(11084, 1052, 49),
(11085, 1023, 17),
(11086, 1043, 27),
(11087, 1005, 26),
(11088, 1001, 2),
(11089, 1095, 25),
(11090, 1084, 16),
(11091, 1068, 21),
(11092, 1088, 48),
(11093, 1079, 25),
(11094, 1096, 42),
(11095, 1091, 33),
(11096, 1050, 45),
(11097, 1009, 30),
(11098, 1038, 32),
(11099, 1094, 31),
(11100, 1032, 47),
(11101, 1052, 2),
(11103, 1099, 2),
(11087, 1023, 2),
(11104, 1072, 3),
(11104, 1010, 3),
(11104, 1050, 1),
(11104, 1010, 2),
(11104, 1083, 1),
(11104, 1083, 1),
(11105, 1073, 1),
(11104, 1076, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cartp`
--

CREATE TABLE `cartp` (
  `idcart` int NOT NULL,
  `product_ID` int NOT NULL,
  `product_quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cartp`
--

INSERT INTO `cartp` (`idcart`, `product_ID`, `product_quantity`) VALUES
(11001, 1004, 7),
(11002, 1024, 8),
(11003, 1073, 9),
(11004, 1017, 47),
(11005, 1086, 25),
(11006, 1034, 12),
(11007, 1081, 34),
(11008, 1061, 32),
(11009, 1092, 29),
(11010, 1085, 13),
(11011, 1049, 17),
(11012, 1010, 9),
(11013, 1018, 44),
(11014, 1068, 41),
(11015, 1089, 43),
(11016, 1056, 26),
(11017, 1097, 13),
(11018, 1008, 42),
(11019, 1037, 13),
(11020, 1012, 28),
(11021, 1049, 27),
(11022, 1034, 15),
(11023, 1028, 9),
(11024, 1041, 42),
(11025, 1100, 32),
(11026, 1070, 39),
(11027, 1035, 9),
(11028, 1010, 1),
(11029, 1080, 15),
(11030, 1015, 19),
(11031, 1100, 1),
(11032, 1007, 7),
(11033, 1069, 49),
(11034, 1060, 23),
(11035, 1046, 40),
(11036, 1014, 18),
(11037, 1051, 28),
(11038, 1093, 49),
(11039, 1073, 46),
(11040, 1077, 27),
(11041, 1010, 41),
(11042, 1029, 16),
(11043, 1082, 37),
(11044, 1043, 6),
(11045, 1007, 21),
(11046, 1085, 1),
(11047, 1008, 37),
(11048, 1097, 40),
(11049, 1059, 22),
(11050, 1008, 41),
(11051, 1075, 49),
(11052, 1026, 14),
(11053, 1039, 31),
(11054, 1001, 48),
(11055, 1042, 33),
(11056, 1077, 49),
(11057, 1021, 12),
(11058, 1005, 33),
(11059, 1002, 35),
(11060, 1070, 10),
(11061, 1004, 43),
(11062, 1042, 32),
(11063, 1098, 38),
(11064, 1017, 8),
(11065, 1003, 29),
(11066, 1002, 19),
(11067, 1015, 14),
(11068, 1086, 31),
(11069, 1061, 20),
(11070, 1096, 45),
(11071, 1094, 35),
(11072, 1008, 29),
(11073, 1089, 37),
(11074, 1039, 44),
(11075, 1062, 38),
(11076, 1082, 45),
(11077, 1026, 19),
(11078, 1037, 49),
(11079, 1019, 31),
(11080, 1043, 17),
(11081, 1037, 17),
(11082, 1058, 4),
(11083, 1099, 28),
(11084, 1052, 49),
(11085, 1023, 17),
(11086, 1043, 27),
(11087, 1005, 26),
(11088, 1001, 2),
(11089, 1095, 25),
(11090, 1084, 16),
(11091, 1068, 21),
(11092, 1088, 48),
(11093, 1079, 25),
(11094, 1096, 42),
(11095, 1091, 33),
(11096, 1050, 45),
(11097, 1009, 30),
(11098, 1038, 32),
(11099, 1094, 31),
(11100, 1032, 47),
(11101, 1052, 2),
(11103, 1099, 2),
(11001, 1004, 7),
(11002, 1024, 8),
(11003, 1073, 9),
(11004, 1017, 47),
(11005, 1086, 25),
(11006, 1034, 12),
(11007, 1081, 34),
(11008, 1061, 32),
(11009, 1092, 29),
(11010, 1085, 13),
(11011, 1049, 17),
(11012, 1010, 9),
(11013, 1018, 44),
(11014, 1068, 41),
(11015, 1089, 43),
(11016, 1056, 26),
(11017, 1097, 13),
(11018, 1008, 42),
(11019, 1037, 13),
(11020, 1012, 28),
(11021, 1049, 27),
(11022, 1034, 15),
(11023, 1028, 9),
(11024, 1041, 42),
(11025, 1100, 32),
(11026, 1070, 39),
(11027, 1035, 9),
(11028, 1010, 1),
(11029, 1080, 15),
(11030, 1015, 19),
(11031, 1100, 1),
(11032, 1007, 7),
(11033, 1069, 49),
(11034, 1060, 23),
(11035, 1046, 40),
(11036, 1014, 18),
(11037, 1051, 28),
(11038, 1093, 49),
(11039, 1073, 46),
(11040, 1077, 27),
(11041, 1010, 41),
(11042, 1029, 16),
(11043, 1082, 37),
(11044, 1043, 6),
(11045, 1007, 21),
(11046, 1085, 1),
(11047, 1008, 37),
(11048, 1097, 40),
(11049, 1059, 22),
(11050, 1008, 41),
(11051, 1075, 49),
(11052, 1026, 14),
(11053, 1039, 31),
(11054, 1001, 48),
(11055, 1042, 33),
(11056, 1077, 49),
(11057, 1021, 12),
(11058, 1005, 33),
(11059, 1002, 35),
(11060, 1070, 10),
(11061, 1004, 43),
(11062, 1042, 32),
(11063, 1098, 38),
(11064, 1017, 8),
(11065, 1003, 29),
(11066, 1002, 19),
(11067, 1015, 14),
(11068, 1086, 31),
(11069, 1061, 20),
(11070, 1096, 45),
(11071, 1094, 35),
(11072, 1008, 29),
(11073, 1089, 37),
(11074, 1039, 44),
(11075, 1062, 38),
(11076, 1082, 45),
(11077, 1026, 19),
(11078, 1037, 49),
(11079, 1019, 31),
(11080, 1043, 17),
(11081, 1037, 17),
(11082, 1058, 4),
(11083, 1099, 28),
(11084, 1052, 49),
(11085, 1023, 17),
(11086, 1043, 27),
(11087, 1005, 26),
(11088, 1001, 2),
(11089, 1095, 25),
(11090, 1084, 16),
(11091, 1068, 21),
(11092, 1088, 48),
(11093, 1079, 25),
(11094, 1096, 42),
(11095, 1091, 33),
(11096, 1050, 45),
(11097, 1009, 30),
(11098, 1038, 32),
(11099, 1094, 31),
(11100, 1032, 47),
(11101, 1052, 2),
(11103, 1099, 2),
(11088, 1049, 2),
(11091, 1085, 4),
(11011, 1011, 1),
(11088, 1028, 3),
(11007, 1029, 2),
(11081, 1023, 2),
(11091, 1030, 2),
(11091, 1093, 1),
(11101, 1073, 2),
(11101, 1030, 2);

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `username` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CustomerID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`username`, `password`, `CustomerID`) VALUES
('afilgate2f', 'aa130fsq', 11088),
('akuschke5', 'aa1382sq', 11006),
('alassena', 'aa134ysq', 11011),
('arobjents2i', 'aa137zsq', 11091),
('ascutt2e', 'aa1355sq', 11087),
('bhavya_narnoli', '1234', 11104),
('bhbh', '16161', 11101),
('bhbhadad', 'euu', 11103),
('bmaccarroll28', 'aa1385sq', 11081),
('bredwin14', 'aa138xsq', 11041),
('bstoacley19', 'aa133usq', 11046),
('cmcallester22', 'aa132dsq', 11075),
('cmcgeoch15', 'aa138ksq', 11042),
('cpennic', 'aa138ksq', 11013),
('cquinnette1u', 'aa137nsq', 11067),
('cswitzerv', 'aa136fsq', 11032),
('dballing2b', 'aa133ssq', 11084),
('dbracco2l', 'aa132usq', 11094),
('dbruckshawp', 'aa1371sq', 11026),
('ddoog1p', 'aa133ssq', 11062),
('dfarleyk', 'aa1362sq', 11021),
('dolfert2k', 'aa135rsq', 11093),
('dsatyford9', 'aa1379sq', 11010),
('dvaune', 'aa138qsq', 11015),
('dvenningt', 'aa133gsq', 11030),
('ebickardike2h', 'aa136ysq', 11090),
('edraayer16', 'aa132jsq', 11043),
('egothliff0', 'aa130jsq', 11001),
('elorkins2d', 'aa137msq', 11086),
('erubinfeld1', 'aa133qsq', 11002),
('faukland1s', 'aa132lsq', 11065),
('fazemarn', 'aa131asq', 11024),
('fbeevor23', 'aa131psq', 11076),
('fbutterfield1b', 'aa1392sq', 11048),
('fbutterfint1i', 'aa1342sq', 11055),
('fcurtinh', 'aa136ksq', 11018),
('fdonaghy2', 'aa134asq', 11003),
('ganersenu', 'aa139wsq', 11031),
('gchessili', 'aa130nsq', 11019),
('gcobson13', 'aa1321sq', 11040),
('gdebell2r', 'aa134esq', 11100),
('gjanout27', 'aa132dsq', 11080),
('gnorster1f', 'aa132wsq', 11052),
('hdaughtrey1z', 'aa1343sq', 11072),
('hdyel', 'aa1391sq', 11022),
('htownsonx', 'aa135esq', 11034),
('jbathowej', 'aa132jsq', 11020),
('kcomberbeach1r', 'aa137tsq', 11064),
('keeda', '129', 11105),
('kescale1x', 'aa137fsq', 11070),
('klomax1l', 'aa132ysq', 11058),
('kmanvell3', 'aa1346sq', 11004),
('kpresidey1c', 'aa131ksq', 11049),
('kschaumann1g', 'aa1328sq', 11053),
('lgirvan4', 'aa138gsq', 11005),
('linsall1w', 'aa131hsq', 11069),
('ljopp2q', 'aa131rsq', 11099),
('lkeyhoe1e', 'aa133isq', 11051),
('lnorcliffe2o', 'aa136ssq', 11097),
('lrochford24', 'aa136usq', 11077),
('lshillitoe17', 'aa137jsq', 11044),
('mallston11', 'aa137qsq', 11038),
('mbramhill8', 'aa137hsq', 11009),
('mfeak18', 'aa1363sq', 11045),
('mmacadamm', 'aa136ksq', 11023),
('msandyfirth1t', 'aa133tsq', 11066),
('ncoddington21', 'aa1339sq', 11074),
('nkoeppe1q', 'aa134xsq', 11063),
('npothergill1o', 'aa1338sq', 11061),
('nrivetts', 'aa132hsq', 11029),
('oaymer2j', 'aa1384sq', 11092),
('osavins25', 'aa1348sq', 11078),
('pcadney12', 'aa137jsq', 11039),
('pmartine29', 'aa137ssq', 11082),
('ptydd1m', 'aa133dsq', 11059),
('pwerrit1y', 'aa1324sq', 11071),
('pwolfendaleg', 'aa137ksq', 11017),
('pyeowelld', 'aa134bsq', 11014),
('rblease20', 'aa139hsq', 11073),
('rcrateref', 'aa1315sq', 11016),
('regre1h', 'aa1388sq', 11054),
('resby2p', 'aa133ysq', 11098),
('rheimannz', 'aa130qsq', 11036),
('rheinriciq', 'aa1351sq', 11027),
('rkment7', 'aa1307sq', 11008),
('rnewberry10', 'aa1314sq', 11037),
('rshellshear1d', 'aa133wsq', 11050),
('rthallery', 'aa138csq', 11035),
('sdonise1n', 'aa131hsq', 11060),
('senderlein1j', 'aa134msq', 11056),
('shonniebal1k', 'aa139esq', 11057),
('skopps1a', 'aa138psq', 11047),
('smayworth2g', 'aa135dsq', 11089),
('svickorso', 'aa132dsq', 11025),
('svivers2c', 'aa139lsq', 11085),
('swellumw', 'aa1394sq', 11033),
('tspira2a', 'aa136asq', 11083),
('vdrewr', 'aa1332sq', 11028),
('vpickoverb', 'aa134wsq', 11012),
('wmanford1v', 'aa131asq', 11068),
('wshillinglaw2m', 'aa130gsq', 11095),
('ylefridge6', 'aa136tsq', 11007),
('zgrundle2n', 'aa132jsq', 11096),
('zmccombe26', 'aa132msq', 11079);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int NOT NULL,
  `FirstName` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LastName` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Phone_No` char(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Address` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL
) ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `FirstName`, `LastName`, `Phone_No`, `email_ID`, `Address`) VALUES
(11001, 'Derek', 'Paulucci', '6898959429', 'dpaulucci0@mayoclinic.com', '5 Fallview Crossing'),
(11002, 'Beverly', 'Spikeings', '5899232741', 'bspikeings1@squarespace.com', '5 Novick Junction'),
(11003, 'Jillane', 'Halfacree', '3276805680', 'jhalfacree2@ask.com', '157 Bowman Way'),
(11004, 'Yolanda', 'Rogister', '4597711595', 'yrogister3@simplemachines.org', '8 Westend Terrace'),
(11005, 'Terrence', 'Ledekker', '4287462633', 'tledekker4@archive.org', '107 Morrow Crossing'),
(11006, 'Salomi', 'Ridulfo', '7953933366', 'sridulfo5@sina.com.cn', '9393 Delladonna Park'),
(11007, 'Paxon', 'Fitzroy', '7468042586', 'pfitzroy6@howstuffworks.com', '6939 Rigney Lane'),
(11008, 'Giana', 'Hammett', '1334157384', 'ghammett7@dion.ne.jp', '2492 Corry Court'),
(11009, 'Morris', 'MacEveley', '9687241116', 'mmaceveley8@ifeng.com', '512 Gerald Avenue'),
(11010, 'Morse', 'Duerdin', '1767798790', 'mduerdin9@kickstarter.com', '38 Mockingbird Lane'),
(11011, 'Virgil', 'Iskov', '3019993061', 'viskova@fastcompany.com', '793 Dennis Hill'),
(11012, 'Kelila', 'Metcalfe', '3263095934', 'kmetcalfeb@un.org', '8953 Coleman Way'),
(11013, 'Richie', 'Szymonowicz', '7816561275', 'rszymonowiczc@ucoz.ru', '5 Monterey Avenue'),
(11014, 'Cinderella', 'Whoston', '5295952482', 'cwhostond@sfgate.com', '8776 Summer Ridge Court'),
(11015, 'Nanci', 'Carrett', '8357731803', 'ncarrette@addthis.com', '1381 Alpine Avenue'),
(11016, 'Jarret', 'Clayworth', '7727308040', 'jclayworthf@nifty.com', '298 Stephen Park'),
(11017, 'Mala', 'Mahood', '1218397710', 'mmahoodg@comcast.net', '767 Norway Maple Pass'),
(11018, 'Marena', 'Gudeman', '6453876846', 'mgudemanh@ask.com', '5589 Service Way'),
(11019, 'Iorgo', 'Brunnstein', '5658610700', 'ibrunnsteini@mit.edu', '7627 Veith Circle'),
(11020, 'Anissa', 'Speake', '7998295481', 'aspeakej@nhs.uk', '38256 Duke Circle'),
(11021, 'Flynn', 'Crat', '9126850851', 'fcratk@ow.ly', '4 Luster Point'),
(11022, 'Corri', 'Hammant', '7596051152', 'chammantl@ucla.edu', '58610 Lakewood Gardens Hill'),
(11023, 'Zedekiah', 'Augur', '1228770003', 'zaugurm@weebly.com', '5 Nelson Place'),
(11024, 'Nancy', 'Schwerin', '5645286758', 'nschwerinn@google.pl', '0 Kenwood Circle'),
(11025, 'Gallard', 'Myhan', '9068735328', 'gmyhano@globo.com', '6 Sullivan Lane'),
(11026, 'Standford', 'Dudden', '6425656051', 'sduddenp@privacy.gov.au', '1 Anthes Court'),
(11027, 'Evan', 'Kaesmakers', '9481912028', 'ekaesmakersq@unblog.fr', '26023 Loeprich Circle'),
(11028, 'Nickola', 'Algeo', '2965523280', 'nalgeor@constantcontact.com', '2708 Blaine Alley'),
(11029, 'Lynnett', 'Pimblett', '8142316707', 'lpimbletts@msn.com', '4 Hagan Street'),
(11030, 'Hubey', 'Corkell', '2826023454', 'hcorkellt@ucoz.ru', '3 Kinsman Alley'),
(11031, 'Gregory', 'Christopher', '8178119189', 'gchristopheru@bloomberg.com', '703 Arizona Court'),
(11032, 'Kaia', 'Hayer', '7455662166', 'khayerv@nationalgeographic.com', '5 Twin Pines Place'),
(11033, 'Sherlock', 'Keeler', '7311315499', 'skeelerw@lulu.com', '346 Bayside Way'),
(11034, 'Towney', 'Bickerdike', '1968143028', 'tbickerdikex@timesonline.co.uk', '85 Autumn Leaf Hill'),
(11035, 'Benita', 'Inglesfield', '7903086139', 'binglesfieldy@naver.com', '2 Ludington Avenue'),
(11036, 'Holt', 'Roch', '9036706853', 'hrochz@si.edu', '444 Crescent Oaks Avenue'),
(11037, 'Nonie', 'Skermer', '5544297937', 'nskermer10@netlog.com', '15 Magdeline Circle'),
(11038, 'Roderich', 'Smalecombe', '3228400351', 'rsmalecombe11@wix.com', '62 Graceland Parkway'),
(11039, 'Sherie', 'Jessett', '8787160084', 'sjessett12@delicious.com', '9 Trailsway Center'),
(11040, 'Vince', 'Lembrick', '8013756901', 'vlembrick13@phoca.cz', '084 Spohn Circle'),
(11041, 'Raffarty', 'Wadmore', '9424321213', 'rwadmore14@etsy.com', '452 Duke Drive'),
(11042, 'Ardeen', 'Hellicar', '5508455717', 'ahellicar15@edublogs.org', '9331 Coolidge Drive'),
(11043, 'Zachariah', 'Polino', '2149118821', 'zpolino16@google.ru', '52786 Badeau Lane'),
(11044, 'Horten', 'Lezemere', '2883159925', 'hlezemere17@desdev.cn', '2649 Menomonie Center'),
(11045, 'Sayre', 'Rickcord', '9349905876', 'srickcord18@elegantthemes.com', '653 Anzinger Plaza'),
(11046, 'Lazare', 'Rimell', '9417711316', 'lrimell19@tripadvisor.com', '36 Bluestem Circle'),
(11047, 'Quincey', 'Gisbye', '9297040345', 'qgisbye1a@earthlink.net', '4061 Dawn Point'),
(11048, 'Sue', 'Elvish', '7943572130', 'selvish1b@instagram.com', '7 Fulton Junction'),
(11049, 'Mae', 'Minget', '7091176096', 'mminget1c@edublogs.org', '3242 Brown Court'),
(11050, 'Beltran', 'Zappel', '3175614475', 'bzappel1d@umich.edu', '854 Nobel Park'),
(11051, 'Xever', 'Cabotto', '2238866779', 'xcabotto1e@nature.com', '0 Lillian Street'),
(11052, 'Gayla', 'Capenor', '1092383927', 'gcapenor1f@fda.gov', '3 Farragut Hill'),
(11053, 'Lizette', 'Mc Curlye', '2785397243', 'lmccurlye1g@comsenz.com', '9 Sachs Street'),
(11054, 'Enrique', 'Buck', '6799191008', 'ebuck1h@i2i.jp', '86 Meadow Valley Terrace'),
(11055, 'Jody', 'Vizor', '8434058944', 'jvizor1i@sun.com', '54701 Laurel Trail'),
(11056, 'Halette', 'Golledge', '4994253417', 'hgolledge1j@e-recht24.de', '4424 Ludington Terrace'),
(11057, 'Renelle', 'MacCumeskey', '9247697290', 'rmaccumeskey1k@eepurl.com', '37367 Bashford Trail'),
(11058, 'Laurent', 'Smithend', '2219623612', 'lsmithend1l@forbes.com', '97325 Ridgeway Point'),
(11059, 'Elwin', 'Blastock', '8009089113', 'eblastock1m@alibaba.com', '71 Pepper Wood Lane'),
(11060, 'Travers', 'Stebbin', '4771425753', 'tstebbin1n@wisc.edu', '2 Prentice Road'),
(11061, 'Delaney', 'MacKaig', '6026046514', 'dmackaig1o@indiegogo.com', '203 Sommers Crossing'),
(11062, 'Bekki', 'Parvin', '7623634749', 'bparvin1p@canalblog.com', '250 Dakota Trail'),
(11063, 'Karleen', 'Frusher', '9405397064', 'kfrusher1q@pbs.org', '93803 Oxford Hill'),
(11064, 'Allissa', 'Beste', '2833072153', 'abeste1r@weebly.com', '81280 Northview Parkway'),
(11065, 'Johny', 'Ewence', '6353097143', 'jewence1s@fda.gov', '775 Hooker Circle'),
(11066, 'Chlo', 'Kinleyside', '6612687272', 'ckinleyside1t@csmonitor.com', '67 Reinke Road'),
(11067, 'Blondell', 'Calvie', '2192706620', 'bcalvie1u@wordpress.com', '05 Becker Hill'),
(11068, 'Aurie', 'Polle', '9236418723', 'apolle1v@bbb.org', '482 Charing Cross Way'),
(11069, 'Vita', 'Flaverty', '5832133132', 'vflaverty1w@macromedia.com', '72276 Mariners Cove Road'),
(11070, 'Quentin', 'Casey', '4075214512', 'qcasey1x@chron.com', '0979 Corry Alley'),
(11071, 'Mufi', 'O\' Bee', '6961163910', 'mobee1y@youtube.com', '50 Dahle Lane'),
(11072, 'Yule', 'Millyard', '6153443079', 'ymillyard1z@miibeian.gov.cn', '83 Hermina Plaza'),
(11073, 'Nichol', 'Bellward', '4143664443', 'nbellward20@nps.gov', '8913 Dwight Crossing'),
(11074, 'Lisa', 'Labdon', '4665232625', 'llabdon21@ehow.com', '6 Ramsey Crossing'),
(11075, 'Celestyna', 'Fray', '3207508452', 'cfray22@tripod.com', '84 3rd Court'),
(11076, 'Sydney', 'Bessey', '5476260880', 'sbessey23@photobucket.com', '0 Hanson Terrace'),
(11077, 'Lisbeth', 'Guillerman', '4778001045', 'lguillerman24@facebook.com', '5 Brickson Park Place'),
(11078, 'Killy', 'Petric', '3542942150', 'kpetric25@cbc.ca', '80 Towne Point'),
(11079, 'Quintana', 'Clell', '5724120830', 'qclell26@youtube.com', '33 Waubesa Plaza'),
(11080, 'Albrecht', 'Barnbrook', '1123149506', 'abarnbrook27@cargocollective.com', '150 Sloan Hill'),
(11081, 'Diane-marie', 'Leon', '8468273989', 'dleon28@ezinearticles.com', '283 Autumn Leaf Lane'),
(11082, 'Gauthier', 'Pioli', '4909328638', 'gpioli29@1und1.de', '52 International Circle'),
(11083, 'Hanni', 'Allday', '6612716812', 'hallday2a@amazon.co.jp', '0885 Mcbride Crossing'),
(11084, 'Wren', 'Wheal', '7907637955', 'wwheal2b@ft.com', '0669 Carberry Pass'),
(11085, 'Lynea', 'Sear', '8928966353', 'lsear2c@php.net', '61845 Fuller Crossing'),
(11086, 'Rorke', 'Rivalland', '6524898130', 'rrivalland2d@mit.edu', '1 Del Sol Pass'),
(11087, 'Kelci', 'Duffitt', '1288378606', 'kduffitt2e@prweb.com', '019 Mayer Road'),
(11088, 'Genna', 'Noke', '7041033217', 'gnoke2f@blog.com', '598 Jana Crossing'),
(11089, 'Jule', 'Buckley', '4066092770', 'jbuckley2g@berkeley.edu', '409 Moulton Avenue'),
(11090, 'Elvis', 'Hardacre', '1605339019', 'ehardacre2h@msn.com', '6 Sommers Alley'),
(11091, 'Nonie', 'Haste', '4889472316', 'nhaste2i@is.gd', '7 Bowman Plaza'),
(11092, 'Karoline', 'Aleksandrikin', '4025850456', 'kaleksandrikin2j@google.pl', '103 Londonderry Park'),
(11093, 'Gennifer', 'Theseira', '2059791635', 'gtheseira2k@about.com', '6604 Mockingbird Street'),
(11094, 'Amerigo', 'Weatherdon', '3449274509', 'aweatherdon2l@eepurl.com', '913 Morningstar Lane'),
(11095, 'Hamlin', 'Chadwell', '8586603357', 'hchadwell2m@ovh.net', '66643 Susan Drive'),
(11096, 'Olav', 'Luten', '7125131969', 'oluten2n@ovh.net', '6 Quincy Place'),
(11097, 'Staford', 'Quinsee', '8107926232', 'squinsee2o@woothemes.com', '02 1st Circle'),
(11098, 'Bell', 'McAlpin', '2082311270', 'bmcalpin2p@irs.gov', '4026 Shelley Alley'),
(11099, 'Gian', 'Arthey', '4353750416', 'garthey2q@google.com', '36 Pleasure Street'),
(11100, 'Gus', 'Delgaty', '3845777518', 'gdelgaty2r@reverbnation.com', '3557 Elmside Drive'),
(11101, 'Bhavya', 'Narnoli', '7878812121', 'bhavya@gmail.com', 'suhus wiswisn '),
(11103, 'Anna', 'Nanna', '9393912012', 'bhabab@gmamma.com', 'xdhcxdhcbhdsc'),
(11104, 'Adi', 'GG', '9625373381', 'bhavya21316@iiitd.ac.in', 'B-7-1,MS Flats RK Puram Sector 13 New Delhi 110066'),
(11105, 'Adi', 'hun', '9625373381', 'lesgo@iiitd.ac.in', 'B-7-1,MS Flats RK Puram Sector 13 New Delhi 110066');

--
-- Triggers `customer`
--
DELIMITER $$
CREATE TRIGGER `customer_BEFORE_INSERT` BEFORE INSERT ON `customer` FOR EACH ROW BEGIN
	IF (SELECT COUNT(*) FROM customer WHERE email_ID = NEW.email_ID) > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Email ID already exists';
	END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_person`
--

CREATE TABLE `delivery_person` (
  `id` int NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` char(10) NOT NULL,
  `orderID` int NOT NULL
) ;

--
-- Dumping data for table `delivery_person`
--

INSERT INTO `delivery_person` (`id`, `name`, `phone`, `orderID`) VALUES
(111002, 'Clarence Bevar', '8862730350', 10094),
(111003, 'Marta Gerry', '4755230830', 10092),
(111004, 'Farah Boddis', '5945699808', 10075),
(111005, 'Fayre Balharrie', '2532278175', 10039),
(111006, 'Wayne Camelin', '4599955299', 10090),
(111008, 'Abey Dudleston', '6134040755', 10084),
(111009, 'Clemmy Calafate', '2836785177', 10007),
(111010, 'Elsinore Robiot', '6404397531', 10018),
(111011, 'Dalis Bretherton', '2555295559', 10033),
(111012, 'Dolph Kerkham', '8145386702', 10075),
(111013, 'Sibbie Milbank', '7513408156', 10026),
(111014, 'Jayme Stainson', '1415658282', 10080),
(111016, 'Jinny Leddie', '5065858389', 10083),
(111017, 'Bartie Mercer', '5966874047', 10089),
(111018, 'Kali Foucher', '7173005538', 10007),
(111019, 'Lesli De Lorenzo', '8174077149', 10041),
(111020, 'Lucienne Abdey', '8887240211', 10015),
(111021, 'Ezri Rosenauer', '1417032532', 10012),
(111022, 'Madalena Brocklesby', '6155025022', 10088),
(111024, 'Ranice Cleft', '3943872082', 10035),
(111025, 'Carleen O\'Collopy', '1402445890', 10082),
(111026, 'Dick Shoorbrooke', '7887839787', 10017),
(111027, 'Antone Pendrey', '1962610791', 10011),
(111028, 'Fonz Watkins', '1498912506', 10081),
(111030, 'Melisse Frostick', '2821755569', 10093),
(111031, 'Justina Kimmince', '1043459494', 10012),
(111032, 'Livvie Monroe', '8259097872', 10099),
(111033, 'Cherie Emm', '3882580984', 10021),
(111034, 'Vivian Kunkler', '9406046241', 10014),
(111035, 'Paolina Geere', '4681961759', 10087),
(111037, 'Trude Littleproud', '9266118369', 10017),
(111038, 'Lyell Moggan', '9521601176', 10002),
(111039, 'Belle Wimpey', '8568228056', 10045),
(111040, 'Cassondra Fannon', '7352167016', 10084),
(111041, 'Francene Edmand', '7426471598', 10099),
(111042, 'Editha Shambrooke', '2216339155', 10046),
(111043, 'Rea Pithie', '8371323633', 10078),
(111045, 'Ellswerth Rigden', '4678110004', 10100),
(111046, 'Carce McCobb', '3339071119', 10027),
(111047, 'Sandye Clemmens', '6141541125', 10030),
(111048, 'Brigid Gradon', '4449984844', 10047),
(111049, 'Lemmy Mochan', '9562665622', 10026),
(111050, 'Reyna Lainge', '2745343674', 10069),
(111051, 'Jules McNerlin', '8424555550', 10025),
(111052, 'Nobe Harback', '3188433985', 10073),
(111053, 'Leilah Rogerson', '9984226980', 10095),
(111054, 'Adaline Dodd', '5361247844', 10029),
(111055, 'Jo Brotheridge', '7773463718', 10027),
(111056, 'Pammi Capstake', '7234339098', 10037),
(111059, 'Randie Baldam', '7942886305', 10041),
(111060, 'Korrie Gercke', '4994838249', 10072),
(111061, 'Janenna Kedge', '7071327455', 10090),
(111062, 'Gwendolen Chatburn', '3434964750', 10024),
(111063, 'Victoria Dellenbrok', '1142137436', 10039),
(111064, 'Hamil Essberger', '6832486800', 10001),
(111065, 'Elonore Robinette', '7151806233', 10024),
(111066, 'Arabella Larchier', '4734717146', 10085),
(111067, 'Genvieve Hannay', '4237710121', 10077),
(111068, 'Terrijo Tivolier', '9387117496', 10008),
(111070, 'Irvin Vignal', '2016359608', 10039),
(111071, 'Claudio Loody', '8858091445', 10090),
(111072, 'Karoly Sentance', '6126728665', 10024),
(111073, 'Galvan Hugueville', '8738859707', 10076),
(111074, 'Man Tacon', '9491866418', 10087),
(111076, 'Myrlene Minci', '1569110194', 10074),
(111077, 'Jecho Spolton', '4848173699', 10045),
(111078, 'Blanca Ibell', '5214241825', 10037),
(111079, 'Jarrod Allix', '2853261926', 10095),
(111080, 'Ysabel Byham', '7933326878', 10004),
(111081, 'Mohandas Phillps', '9247095083', 10093),
(111083, 'Rutledge Siss', '3058089666', 10033),
(111084, 'Lacey Simson', '7931384430', 10094),
(111085, 'Umeko MacCaghan', '3355940747', 10084),
(111086, 'Sarge Arrigucci', '1164764868', 10086),
(111087, 'Glenna Gebhardt', '6454785269', 10025),
(111089, 'Esme Shreenan', '2849598523', 10072),
(111090, 'Stefanie Allgood', '9225892593', 10016),
(111092, 'Tripp Francescuccio', '5996021679', 10019),
(111093, 'Emmaline Dulake', '1174006941', 10016),
(111094, 'Abie Follett', '2783161279', 10037),
(111095, 'Derron Kilrow', '5089735823', 10023),
(111096, 'Brynn Langer', '3564675650', 10069),
(111097, 'Sileas Mulrooney', '2056662734', 10067),
(111098, 'Cornie Dmitrienko', '3096514877', 10014),
(111099, 'Orel Rowet', '4867912476', 10041),
(111100, 'Irene Ferrolli', '7817277310', 10080),
(111101, 'Florrie McCalum', '3631756266', 10090),
(111102, 'Stella Basillon', '9902835922', 10007),
(111103, 'Abra Vanstone', '4106430807', 10018),
(111104, 'Ernest Pettifer', '3626928204', 10067),
(111106, 'Nikki Maffini', '3845482715', 10100),
(111107, 'Dame Chezelle', '2085373970', 10039),
(111108, 'Farra Larter', '6945369311', 10069),
(111110, 'Buck Broek', '5372215886', 10015),
(111114, 'Mace Mumbray', '3456335295', 10097),
(111115, 'Helen Shackle', '4494260277', 10022),
(111116, 'Kesley Cruce', '4472543882', 10096),
(111117, 'Pammi Stanier', '5388719115', 10004),
(111118, 'Wait Holbury', '5434928934', 10010),
(111119, 'Corri Bampkin', '6171214878', 10020),
(111121, 'Charlene Rubinsohn', '1168768421', 10029),
(111123, 'Charmane Bricksey', '2461997407', 10089),
(111124, 'Georgena Dovermann', '2781498102', 10033),
(111125, 'Tildie Karlsen', '1952658701', 10012),
(111126, 'Tamera Lawles', '9668152319', 10006),
(111127, 'Tomas Abrashkov', '9925195838', 10068),
(111128, 'Thaine Crossley', '3095303872', 10022),
(111129, 'Concordia Corney', '4544217052', 10093),
(111130, 'Karie Shippam', '9586935087', 10010),
(111131, 'Trude Cardello', '3536213174', 10090),
(111132, 'Clarke Raffan', '7402854196', 10074),
(111135, 'Susana Jaskowicz', '2409790159', 10002),
(111136, 'Arty Dwane', '8842738302', 10082),
(111137, 'Katy Lidgey', '2063445328', 10004),
(111138, 'Ignace Laweles', '6797900904', 10039),
(111139, 'Genny Franken', '8654842838', 10012),
(111141, 'Ailbert Cestard', '9434653199', 10081),
(111142, 'Carey Aylett', '2031394490', 10080),
(111144, 'Ginni Varden', '7205236133', 10042),
(111145, 'Verne Burne', '8589334462', 10084),
(111146, 'Martguerita Benedidick', '4538469021', 10032),
(111147, 'Ray Rodder', '6112148103', 10009),
(111148, 'Lorenza Rambaut', '2453536881', 10017),
(111150, 'Wilbur Dunkirk', '6899821221', 10042),
(111152, 'Tome Carnell', '1323696070', 10042),
(111155, 'Dewitt Randlesome', '2354329277', 10084),
(111156, 'Celestina Tremonte', '2413614064', 10095),
(111157, 'Lewie Rollings', '1449102760', 10088),
(111158, 'Gan Weighell', '8128684192', 10022),
(111159, 'Flori Niemetz', '8163477833', 10003),
(111160, 'Chilton Shouler', '2497770820', 10008),
(111161, 'Arda Folbige', '9442963511', 10084),
(111162, 'Abey Gopsall', '5315075578', 10042),
(111163, 'Dall Billanie', '9431363345', 10042),
(111164, 'Anetta Goncalo', '9665304707', 10042),
(111165, 'Obediah Lavarack', '1684424835', 10031),
(111166, 'Gay Enticknap', '1157124843', 10094),
(111167, 'Ferne Tremberth', '2683783604', 10003),
(111168, 'Cary Illesley', '7996077149', 10022),
(111170, 'Ivonne Hanny', '6729059135', 10027),
(111171, 'Suzanna Marchbank', '5037816372', 10075),
(111173, 'Charleen Vannuccinii', '7386782701', 10077),
(111174, 'Deirdre Snowsill', '1277674377', 10072),
(111175, 'Emelda Joye', '7198710399', 10016),
(111176, 'Shanon Deveral', '6175141438', 10087),
(111177, 'Hughie Attryde', '7685081333', 10042),
(111178, 'Eloise McReynold', '6895924117', 10047),
(111179, 'Sandra Ciric', '6049614300', 10100),
(111180, 'Verena Garmans', '5129599889', 10029),
(111182, 'Gregor Zute', '8354363583', 10090),
(111183, 'Temp Rookeby', '6035068425', 10030),
(111184, 'Brianna Weekly', '1838066955', 10075),
(111186, 'Mort Frango', '1633099939', 10001),
(111187, 'Terri Boniface', '7306921507', 10075),
(111188, 'Archibald Magor', '2756393537', 10023),
(111189, 'Giavani Loram', '3675619547', 10015),
(111191, 'Artair Pressdee', '7268688034', 10023),
(111192, 'Liam Ramsier', '2866403860', 10015),
(111194, 'Cathyleen Ream', '3106001203', 10025),
(111195, 'Analise Arstingall', '4904886366', 10025),
(111196, 'Hayley Jillis', '2512471898', 10088),
(111197, 'Jude Miche', '8622664546', 10074),
(111198, 'Lemmie Hawse', '2196988798', 10003),
(111199, 'Morena Klambt', '8243749563', 10014),
(111200, 'Bartram Chandler', '6542154715', 10077),
(111201, 'Gertrude Clemas', '4224547696', 10038),
(111202, 'Nanni Amberg', '7784650462', 10040),
(111203, 'Ralph Bridges', '7551149309', 10047),
(111204, 'Misti Creffield', '7384500307', 10032),
(111205, 'Annmarie Kauble', '3532786839', 10088),
(111206, 'Dietrich Bortolussi', '3757764345', 10027),
(111207, 'Valdemar Husk', '1296380957', 10094),
(111208, 'Buddy Lindberg', '6155657948', 10030),
(111209, 'Gretchen Bosward', '3659392681', 10077),
(111210, 'Hailey Shoute', '1343842266', 10003),
(111211, 'Denise Yesinov', '5404705150', 10025),
(111212, 'Berni Crayden', '2271731265', 10004),
(111213, 'Dody Phinnessy', '9942760510', 10074),
(111214, 'Sharyl Flaxon', '8211902031', 10026),
(111216, 'Chrysler Bernardeschi', '9772886862', 10008),
(111217, 'Husain Swinburne', '3582823740', 10025),
(111218, 'Edee Cheales', '8629520597', 10081),
(111219, 'Lira O\' Molan', '4121913439', 10024),
(111220, 'Carson Welsh', '1344443418', 10025),
(111221, 'Emmott Prujean', '2004708548', 10066),
(111223, 'Candide Dunne', '2963325902', 10040),
(111225, 'Dianna Janiak', '4986325055', 10099),
(111226, 'Rickie Bossom', '2006197114', 10087),
(111227, 'Thedrick McTrustam', '3626102870', 10038),
(111228, 'Rosalyn Bangham', '6717654571', 10096),
(111229, 'Hubert Axup', '8142256856', 10046),
(111231, 'Roze Gard', '7197705489', 10042),
(111232, 'Isabel Nockells', '8257440801', 10013),
(111233, 'Stanton Gomersal', '3732515992', 10093),
(111234, 'Allegra Olkowicz', '1279007929', 10025),
(111235, 'Jeremy Oscroft', '9757784302', 10066),
(111236, 'Kimberlee Tonepohl', '4675151922', 10029),
(111238, 'Reinold Zimek', '1565746167', 10085),
(111239, 'Auroora Le Brom', '7589027031', 10082),
(111240, 'Edna Lunbech', '9697787229', 10096),
(111280, 'imasomedeliveryperos', '9230230089', 10110),
(111282, 'imasomedeliveryperos', '9230230089', 10112),
(111283, 'imasomedeliveryperos', '9230230089', 10113),
(111284, 'imasomedeliveryperos', '9230230089', 10114),
(111285, 'imasomedeliveryperos', '9230230089', 10115),
(111286, 'imasomedeliveryperos', '9230230089', 10116);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int NOT NULL,
  `order_date` date NOT NULL,
  `order_position` varchar(50) NOT NULL,
  `order_cost` decimal(7,2) NOT NULL,
  `cart_link` int NOT NULL
) ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_date`, `order_position`, `order_cost`, `cart_link`) VALUES
(10001, '2022-01-01', 'shipped', 639.99, 11001),
(10002, '2022-01-02', 'shipped', 749.00, 11002),
(10003, '2022-01-03', 'dispatched', 1150.00, 11003),
(10004, '2022-01-04', 'shipped', 499.99, 11004),
(10005, '2022-01-05', 'delivered', 350.00, 11005),
(10006, '2022-01-06', 'shipped', 1299.00, 11006),
(10007, '2022-01-07', 'dispatched', 699.99, 11007),
(10008, '2022-01-08', 'delivered', 199.99, 11008),
(10009, '2022-01-09', 'shipped', 849.00, 11009),
(10010, '2022-01-10', 'dispatched', 1499.99, 11010),
(10011, '2022-01-11', 'shipped', 399.00, 11011),
(10012, '2022-01-12', 'delivered', 599.99, 11012),
(10013, '2022-01-13', 'shipped', 899.00, 11013),
(10014, '2022-01-14', 'dispatched', 1099.99, 11014),
(10015, '2022-01-15', 'delivered', 999.99, 11015),
(10016, '2022-01-16', 'shipped', 349.00, 11016),
(10017, '2022-01-17', 'dispatched', 599.00, 11017),
(10018, '2022-01-18', 'shipped', 799.99, 11018),
(10019, '2022-01-19', 'delivered', 249.00, 11019),
(10020, '2022-01-20', 'shipped', 1899.00, 11020),
(10021, '2022-01-21', 'dispatched', 1299.99, 11021),
(10022, '2022-01-22', 'delivered', 399.00, 11022),
(10023, '2022-01-23', 'shipped', 799.99, 11023),
(10024, '2022-01-24', 'dispatched', 1199.00, 11024),
(10025, '2022-01-25', 'shipped', 999.99, 11025),
(10026, '2022-01-26', 'delivered', 1599.00, 11026),
(10027, '2022-01-27', 'shipped', 699.00, 11027),
(10028, '2022-01-28', 'dispatched', 599.99, 11028),
(10029, '2022-01-29', 'delivered', 749.00, 11029),
(10030, '2022-01-30', 'shipped', 1799.99, 11030),
(10031, '2022-01-31', 'dispatched', 1299.00, 11031),
(10032, '2022-02-01', 'delivered', 399.99, 11032),
(10033, '2022-02-02', 'shipped', 849.00, 11033),
(10034, '2022-02-03', 'delivered', 99.99, 11034),
(10035, '2022-02-04', 'shipped', 399.00, 11035),
(10036, '2022-02-05', 'dispatched', 1099.99, 11036),
(10037, '2022-02-06', 'delivered', 1999.00, 11037),
(10038, '2022-02-07', 'shipped', 149.99, 11038),
(10039, '2022-02-08', 'dispatched', 599.00, 11039),
(10040, '2022-02-09', 'delivered', 199.99, 11040),
(10041, '2022-02-10', 'shipped', 899.00, 11041),
(10042, '2022-02-11', 'dispatched', 1199.99, 11042),
(10043, '2022-02-12', 'delivered', 249.00, 11043),
(10044, '2022-02-13', 'shipped', 599.99, 11044),
(10045, '2022-02-14', 'dispatched', 1499.00, 11045),
(10046, '2022-02-15', 'delivered', 149.99, 11046),
(10047, '2022-02-16', 'shipped', 1999.00, 11047),
(10048, '2022-02-17', 'dispatched', 849.99, 11048),
(10066, '2022-03-06', 'delivered', 699.00, 11066),
(10067, '2022-03-07', 'shipped', 1199.99, 11067),
(10068, '2022-03-08', 'dispatched', 99.99, 11068),
(10069, '2022-03-09', 'delivered', 299.00, 11069),
(10070, '2022-03-10', 'shipped', 599.99, 11070),
(10071, '2022-03-11', 'dispatched', 1499.00, 11071),
(10072, '2022-03-12', 'delivered', 119.99, 11072),
(10073, '2022-03-13', 'shipped', 399.00, 11073),
(10074, '2022-03-14', 'dispatched', 899.99, 11074),
(10075, '2022-03-15', 'delivered', 1499.00, 11075),
(10076, '2022-03-16', 'shipped', 499.99, 11076),
(10077, '2022-03-17', 'dispatched', 999.00, 11077),
(10078, '2022-03-18', 'delivered', 149.99, 11078),
(10079, '2022-03-19', 'shipped', 299.00, 11079),
(10080, '2022-03-20', 'dispatched', 599.99, 11080),
(10081, '2022-03-21', 'delivered', 999.00, 11081),
(10082, '2022-03-22', 'shipped', 49.99, 11082),
(10083, '2022-03-23', 'dispatched', 799.00, 11083),
(10084, '2022-03-24', 'delivered', 299.00, 11084),
(10085, '2022-03-25', 'shipped', 999.99, 11085),
(10086, '2022-03-26', 'dispatched', 499.00, 11086),
(10087, '2022-03-27', 'delivered', 149.99, 11087),
(10088, '2022-03-28', 'shipped', 799.00, 11088),
(10089, '2022-03-29', 'dispatched', 999.99, 11089),
(10090, '2022-03-30', 'delivered', 1999.00, 11090),
(10091, '2022-03-31', 'shipped', 149.99, 11091),
(10092, '2022-04-01', 'dispatched', 599.00, 11092),
(10093, '2022-04-02', 'delivered', 499.99, 11093),
(10094, '2022-04-03', 'shipped', 99.99, 11094),
(10095, '2022-04-04', 'dispatched', 699.00, 11095),
(10096, '2022-04-05', 'delivered', 299.99, 11096),
(10097, '2022-04-06', 'shipped', 999.00, 11097),
(10098, '2022-04-07', 'dispatched', 1499.99, 11098),
(10099, '2022-04-08', 'delivered', 499.00, 11099),
(10100, '2022-04-09', 'shipped', 99.99, 11100),
(10101, '2022-04-10', 'dispatched', 1999.00, 11001),
(10102, '2023-03-26', 'shipped', 4086.80, 11081),
(10103, '2023-03-26', 'shipped', 0.00, 11081),
(10104, '2023-03-26', 'shipped', 45.88, 11101),
(10106, '2023-03-26', 'shipped', 0.00, 11081),
(10107, '2023-03-26', 'shipped', 7400.63, 11068),
(10108, '2023-03-26', 'shipped', 0.00, 11068),
(10109, '2023-03-26', 'shipped', 0.00, 11068),
(10110, '2023-03-26', 'shipped', 230.84, 11046),
(10111, '2023-03-26', 'shipped', 6776.56, 11020),
(10112, '2023-04-20', 'shipped', 581.92, 11088),
(10113, '2023-04-20', 'shipped', 0.00, 11091),
(10114, '2023-04-20', 'shipped', 9892.64, 11011),
(10115, '2023-04-20', 'shipped', 4423.46, 11007),
(10116, '2023-05-02', 'shipped', 313.80, 11101),
(10117, '2023-06-13', 'shipped', 156.90, 11105),
(10118, '2023-06-16', 'shipped', 156.90, 11105),
(10119, '2023-06-16', 'shipped', 156.90, 11105);

--
-- Triggers `order`
--
DELIMITER $$
CREATE TRIGGER `order_AFTER_INSERT` AFTER INSERT ON `order` FOR EACH ROW BEGIN
 UPDATE product SET availabilty = 0 WHERE product.product_ID = (SELECT cart.product_ID FROM cart WHERE cart.idcart = NEW.cart_link);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int NOT NULL,
  `paymentdate` date NOT NULL,
  `Payment_amount` decimal(6,2) NOT NULL,
  `order_ID` int NOT NULL,
  `user_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `paymentdate`, `Payment_amount`, `order_ID`, `user_ID`) VALUES
(100002, '2022-04-13', 169.17, 10086, 11084),
(100005, '2022-09-18', 865.81, 10036, 11090),
(100007, '2023-02-01', 357.63, 10082, 11068),
(100008, '2022-11-26', 1487.60, 10019, 11008),
(100009, '2022-10-27', 1146.94, 10028, 11064),
(100010, '2022-02-17', 475.13, 10025, 11099),
(100011, '2022-10-23', 1550.50, 10079, 11066),
(100012, '2022-03-12', 1695.52, 10085, 11052),
(100013, '2022-08-18', 1938.45, 10029, 11062),
(100016, '2022-04-30', 557.35, 10014, 11054),
(100021, '2022-10-19', 1957.68, 10088, 11061),
(100022, '2022-10-19', 1402.11, 10014, 11005),
(100023, '2022-09-13', 1738.52, 10100, 11080),
(100024, '2022-11-17', 1809.70, 10100, 11093),
(100025, '2023-02-09', 773.38, 10096, 11035),
(100026, '2022-05-22', 347.54, 10042, 11003),
(100027, '2022-12-27', 1553.22, 10066, 11069),
(100029, '2022-02-25', 636.59, 10086, 11001),
(100030, '2023-02-11', 1073.10, 10025, 11054),
(100031, '2022-11-14', 482.12, 10009, 11045),
(100032, '2022-06-26', 1097.24, 10037, 11080),
(100033, '2023-02-16', 834.48, 10043, 11098),
(100034, '2022-12-19', 134.66, 10004, 11043),
(100035, '2022-02-18', 974.13, 10001, 11100),
(100036, '2022-06-24', 364.49, 10024, 11078),
(100038, '2022-08-27', 23.05, 10024, 11007),
(100039, '2022-11-28', 1482.02, 10099, 11001),
(100041, '2022-07-12', 1674.85, 10032, 11082),
(100042, '2022-08-10', 64.97, 10047, 11070),
(100044, '2022-10-09', 1304.33, 10014, 11011),
(100045, '2022-10-03', 1316.09, 10071, 11088),
(100046, '2022-10-21', 1384.02, 10043, 11045),
(100047, '2022-12-03', 986.35, 10084, 11044),
(100049, '2023-01-21', 130.61, 10036, 11014),
(100050, '2022-07-25', 108.50, 10080, 11033),
(100051, '2022-06-23', 1648.80, 10075, 11003),
(100052, '2022-05-21', 1316.49, 10046, 11084),
(100053, '2022-07-28', 1706.28, 10082, 11032),
(100054, '2022-05-10', 594.34, 10022, 11092),
(100055, '2022-08-26', 611.82, 10024, 11062),
(100056, '2023-02-08', 1719.75, 10002, 11073),
(100057, '2022-12-22', 545.18, 10016, 11043),
(100058, '2022-03-28', 1520.56, 10078, 11022),
(100059, '2023-01-05', 1216.79, 10035, 11005),
(100061, '2023-01-29', 1972.65, 10093, 11094),
(100062, '2022-12-18', 1549.61, 10073, 11036),
(100063, '2023-01-04', 296.88, 10026, 11018),
(100064, '2022-11-11', 1917.16, 10089, 11070),
(100065, '2022-10-13', 1795.96, 10005, 11025),
(100066, '2022-03-27', 1063.20, 10032, 11042),
(100069, '2022-05-03', 1655.99, 10037, 11094),
(100070, '2022-09-07', 410.53, 10021, 11034),
(100073, '2022-09-10', 1236.20, 10095, 11030),
(100074, '2022-09-03', 825.04, 10024, 11016),
(100075, '2022-10-31', 752.24, 10047, 11049),
(100076, '2022-05-01', 1344.11, 10082, 11090),
(100077, '2022-03-15', 328.64, 10089, 11020),
(100079, '2022-03-21', 811.50, 10098, 11096),
(100081, '2023-02-07', 1366.80, 10085, 11056),
(100082, '2022-11-09', 749.06, 10037, 11063),
(100083, '2022-03-05', 949.60, 10003, 11040),
(100084, '2022-11-01', 716.04, 10089, 11003),
(100085, '2022-05-07', 35.10, 10035, 11080),
(100086, '2022-08-03', 1755.74, 10086, 11044),
(100087, '2022-08-27', 926.81, 10067, 11050),
(100088, '2022-11-07', 320.57, 10073, 11002),
(100089, '2022-04-26', 1342.35, 10096, 11033),
(100091, '2022-05-31', 1264.16, 10044, 11044),
(100092, '2023-02-12', 99.52, 10014, 11047),
(100093, '2022-06-19', 1541.88, 10033, 11095),
(100095, '2022-11-16', 699.25, 10083, 11011),
(100097, '2022-08-23', 60.51, 10011, 11077),
(100098, '2023-01-07', 1533.42, 10082, 11068),
(100099, '2022-09-12', 1496.28, 10097, 11025),
(100100, '2022-05-12', 686.43, 10006, 11059),
(100105, '2023-03-26', 0.00, 10106, 11081),
(100106, '2023-03-26', 7400.63, 10107, 11068),
(100107, '2023-03-26', 0.00, 10108, 11068),
(100108, '2023-03-26', 0.00, 10109, 11068),
(100109, '2023-03-26', 230.84, 10110, 11046),
(100110, '2023-03-26', 6776.56, 10111, 11020),
(100111, '2023-04-20', 581.92, 10112, 11088),
(100112, '2023-04-20', 0.00, 10113, 11091),
(100113, '2023-04-20', 9892.64, 10114, 11011),
(100114, '2023-04-20', 4423.46, 10115, 11007),
(100115, '2023-05-02', 313.80, 10116, 11101),
(100116, '2023-06-16', 156.90, 10118, 11105),
(100117, '2023-06-16', 156.90, 10119, 11105);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_ID` int NOT NULL,
  `productname` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `availabilty` tinyint(1) NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_ID`, `productname`, `price`, `availabilty`, `category_id`) VALUES
(1001, 'Vinegar - White Wine', 198.50, 0, 133),
(1002, 'Cookie Dough - Oatmeal Rasin', 222.58, 0, 120),
(1003, 'Marjoram - Fresh', 117.68, 0, 167),
(1004, 'Beef - Bones, Marrow', 251.66, 0, 157),
(1005, 'Tomatoes - Plum, Canned', 122.40, 0, 132),
(1006, 'Kolrabi', 295.85, 0, 170),
(1007, 'Lemon Pepper', 93.75, 0, 187),
(1008, 'Rolled Oats', 291.66, 0, 193),
(1009, 'Wine - Riesling Alsace Ac 2001', 34.25, 1, 133),
(1010, 'Wine - Pinot Noir Pond Haddock', 36.92, 0, 103),
(1011, 'Soup - Campbells Beef Strogonoff', 174.38, 0, 104),
(1012, 'Chicken - Wings, Tip Off', 242.02, 0, 125),
(1013, 'Quail - Eggs, Fresh', 116.97, 1, 165),
(1014, 'Barramundi', 59.11, 1, 158),
(1015, 'Bag Clear 10 Lb', 213.22, 1, 177),
(1016, 'Wakami Seaweed', 221.19, 0, 129),
(1017, 'Tea - Herbal Orange Spice', 122.88, 1, 190),
(1018, 'Soup - Knorr, Chicken Noodle', 119.81, 1, 129),
(1019, 'Nantucket - Pomegranate Pear', 194.46, 1, 187),
(1020, 'Bananas', 255.76, 1, 152),
(1021, 'Pear - Packum', 234.33, 1, 165),
(1022, 'Table Cloth 53x69 White', 115.55, 0, 172),
(1023, 'Bagel - Everything Presliced', 102.22, 0, 192),
(1024, 'Veal - Brisket, Provimi, Bone - In', 176.87, 0, 173),
(1025, 'Veal - Osso Bucco', 250.24, 1, 190),
(1026, 'Vodka - Hot, Lnferno', 284.16, 1, 191),
(1027, 'Hand Towel', 239.08, 1, 132),
(1028, 'Muffin - Mix - Creme Brule 15l', 75.93, 1, 131),
(1029, 'Wine - Red, Cabernet Sauvignon', 47.29, 1, 110),
(1030, 'Papayas', 132.64, 0, 196),
(1031, 'Chervil - Fresh', 209.66, 0, 125),
(1032, 'Appetizer - Asian Shrimp Roll', 132.87, 0, 160),
(1033, 'Tomato - Peeled Italian Canned', 284.47, 1, 138),
(1034, 'Cheese - Sheep Milk', 226.35, 0, 161),
(1035, 'Beef - Prime Rib Aaa', 117.91, 1, 188),
(1036, 'Bread - English Muffin', 173.45, 0, 138),
(1037, 'Pomegranates', 240.40, 0, 116),
(1038, 'Dr. Pepper - 355ml', 82.44, 1, 120),
(1039, 'Shrimp - Black Tiger 16/20', 292.01, 1, 193),
(1040, 'Peach - Fresh', 130.96, 1, 109),
(1041, 'Bonito Flakes - Toku Katsuo', 258.41, 1, 126),
(1042, 'Wine - Rhine Riesling Wolf Blass', 116.03, 0, 198),
(1043, 'Venison - Striploin', 113.69, 0, 111),
(1044, 'Jello - Assorted', 228.21, 1, 189),
(1045, 'Pork Ham Prager', 124.02, 0, 106),
(1046, 'Lemonade - Pineapple Passion', 119.69, 0, 188),
(1047, 'Nori Sea Weed - Gold Label', 42.53, 1, 103),
(1048, 'Cheese - Cottage Cheese', 228.47, 0, 130),
(1049, 'Bread - Rolls, Rye', 290.96, 0, 145),
(1050, 'French Pastry - Mini Chocolate', 182.73, 0, 113),
(1051, 'Spice - Paprika', 195.06, 1, 126),
(1052, 'Beef - Short Loin', 22.94, 0, 168),
(1053, 'Fuji Apples', 209.27, 0, 165),
(1054, 'Wine - Conde De Valdemar', 158.95, 0, 152),
(1055, 'Monkfish - Fresh', 101.68, 1, 133),
(1056, 'Pork - Tenderloin, Fresh', 197.57, 1, 111),
(1057, 'Wine - Vovray Sec Domaine Huet', 166.62, 1, 187),
(1058, 'Stainless Steel Cleaner Vision', 177.54, 1, 161),
(1059, 'Wine - Barolo Fontanafredda', 126.64, 0, 156),
(1060, 'Potatoes - Yukon Gold 5 Oz', 267.25, 0, 148),
(1061, 'Lettuce - Radicchio', 179.62, 1, 130),
(1062, 'Wine - Masi Valpolocell', 292.36, 0, 106),
(1063, 'Bagel - Plain', 46.89, 1, 132),
(1064, 'Sugar - Sweet N Low, Individual', 10.38, 1, 144),
(1065, 'Salt - Table', 291.63, 1, 123),
(1066, 'Tart Shells - Savory, 3', 159.84, 0, 143),
(1067, 'Oil - Food, Lacquer Spray', 161.23, 0, 106),
(1068, 'General Purpose Trigger', 138.04, 0, 122),
(1069, 'Yams', 96.91, 1, 198),
(1070, 'Sugar - Brown, Individual', 299.63, 0, 183),
(1071, 'Wine - Cabernet Sauvignon', 133.81, 0, 137),
(1072, 'Lettuce - Baby Salad Greens', 248.45, 0, 112),
(1073, 'Whmis Spray Bottle Graduated', 156.90, 0, 102),
(1074, 'Cornflakes', 191.79, 1, 170),
(1075, 'Tomatoes - Vine Ripe, Red', 275.07, 1, 155),
(1076, 'Pork Ham Prager', 298.96, 0, 107),
(1077, 'Sage - Rubbed', 18.63, 0, 117),
(1078, 'Urban Zen Drinks', 274.87, 1, 112),
(1079, 'Beef - Rouladin, Sliced', 48.60, 0, 158),
(1080, 'Island Oasis - Ice Cream Mix', 133.26, 1, 103),
(1081, 'Ice Cream Bar - Oreo Cone', 63.66, 0, 193),
(1082, 'Soup - Campbells, Chix Gumbo', 245.79, 0, 154),
(1083, 'Wine - Shiraz Wolf Blass Premium', 263.04, 0, 101),
(1084, 'Clams - Canned', 85.84, 1, 162),
(1085, 'Sauce - Hp', 230.84, 0, 105),
(1086, 'Chips Potato Salt Vinegar 43g', 238.73, 0, 140),
(1087, 'Island Oasis - Sweet And Sour Mix', 265.82, 0, 115),
(1088, 'Pumpkin - Seed', 57.44, 1, 157),
(1089, 'Beef Tenderloin Aaa', 19.99, 1, 188),
(1090, 'Sugar - Palm', 94.42, 0, 150),
(1091, 'Artichokes - Knobless, White', 58.70, 0, 198),
(1092, 'Bouillion - Fish', 265.45, 1, 180),
(1093, 'Nori Sea Weed', 61.77, 1, 196),
(1094, 'Kiwi Gold Zespri', 129.11, 1, 176),
(1095, 'Barramundi', 73.64, 0, 127),
(1096, 'Chicken Breast Halal', 76.45, 0, 157),
(1097, 'Table Cloth 62x120 Colour', 260.08, 1, 125),
(1098, 'Basil - Dry, Rubbed', 18.58, 1, 191),
(1099, 'Pastry - Cheese Baked Scones', 219.74, 0, 194),
(1100, 'Sobe - Orange Carrot', 87.69, 0, 173),
(1105, 'BB Cream', 234.00, 1, 201);

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `category_ID` int NOT NULL,
  `category_NAME` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`category_ID`, `category_NAME`) VALUES
(101, 'Tomato - Peeled Italian Canned'),
(102, 'Bread - 10 Grain'),
(103, 'Pork - Bacon Cooked Slcd'),
(104, 'Olives - Black, Pitted'),
(105, 'Cheese Cloth'),
(106, 'Sauce Tomato Pouch'),
(107, 'Chervil - Fresh'),
(108, 'Island Oasis - Pina Colada'),
(109, 'Anchovy In Oil'),
(110, 'Eggwhite Frozen'),
(111, 'Coffee - Espresso'),
(112, 'Cod - Fillets'),
(113, 'Potatoes - Peeled'),
(114, 'Pasta - Canelloni, Single Serve'),
(115, 'Lettuce - Escarole'),
(116, 'Towel Multifold'),
(117, 'Bowl 12 Oz - Showcase 92012'),
(118, 'Salt - Kosher'),
(119, 'Juice - Orange, 341 Ml'),
(120, 'Pickles - Gherkins'),
(121, 'Wine - Soave Folonari'),
(122, 'Tea - Vanilla Chai'),
(123, 'Fish - Base, Bouillion'),
(124, 'Coriander - Ground'),
(125, 'Mushroom - Chantrelle, Fresh'),
(126, 'Rootbeer'),
(127, 'Chick Peas - Canned'),
(128, 'Oranges - Navel, 72'),
(129, 'Cookies - Englishbay Oatmeal'),
(130, 'Appetizer - Mini Egg Roll, Shrimp'),
(131, 'Chocolate - Milk, Callets'),
(132, 'Cheese - Parmesan Cubes'),
(133, 'Pepper - Gypsy Pepper'),
(134, 'Halibut - Steaks'),
(135, 'Bread - French Stick'),
(136, 'Cheese - Oka'),
(137, 'Wine - Rosso Toscano Igt'),
(138, 'Sauce - Caesar Dressing'),
(139, 'Wine - Guy Sage Touraine'),
(140, 'Appetizer - Seafood Assortment'),
(141, 'Bread Base - Toscano'),
(142, 'Wine - Hardys Bankside Shiraz'),
(143, 'Beef - Tenderloin'),
(144, 'Lidsoupcont Rp12dn'),
(145, 'V8 Pet'),
(146, 'Squash - Acorn'),
(147, 'Cotton Wet Mop 16 Oz'),
(148, 'Juice - Apple Cider'),
(149, 'Juice - Lemon'),
(150, 'Lamb - Leg, Diced'),
(151, 'Irish Cream - Butterscotch'),
(152, 'Cake - Night And Day Choclate'),
(153, 'Cup Translucent 9 Oz'),
(154, 'Lobster - Canned Premium'),
(155, 'Squid U5 - Thailand'),
(156, 'Cookies - Amaretto'),
(157, 'Wiberg Super Cure'),
(158, 'Crackers - Melba Toast'),
(159, 'Bar Mix - Lime'),
(160, 'Lamb Leg - Bone - In Nz'),
(161, 'Table Cloth 53x53 White'),
(162, 'Chicken - Whole'),
(163, 'Lobster - Tail, 3 - 4 Oz'),
(164, 'Swiss Chard - Red'),
(165, 'Turkey - Breast, Bone - In'),
(166, 'Jam - Apricot'),
(167, 'Chocolate - Sugar Free Semi Choc'),
(168, 'Graham Cracker Mix'),
(169, 'Wine - Port Late Bottled Vintage'),
(170, 'Foil - 4oz Custard Cup'),
(171, 'Stock - Veal, White'),
(172, 'Pie Pecan'),
(173, 'Wine - Ruffino Chianti Classico'),
(174, 'Sobe - Green Tea'),
(175, 'Greens Mustard'),
(176, 'Wine - Peller Estates Late'),
(177, 'Cocoa Powder - Natural'),
(178, 'Fib N9 - Prague Powder'),
(179, 'Kippers - Smoked'),
(180, 'Beef - Flank Steak'),
(181, 'Dates'),
(182, 'Muffin Mix - Morning Glory'),
(183, 'Cheese - La Sauvagine'),
(184, 'Hand Towel'),
(185, 'Graham Cracker Mix'),
(186, 'Wine - Jafflin Bourgongone'),
(187, 'Ecolab Digiclean Mild Fm'),
(188, 'Beans - Long, Chinese'),
(189, 'Cups 10oz Trans'),
(190, 'Wine - Red, Cooking'),
(191, 'Beef - Tenderloin'),
(192, 'Nantucket - Orange Mango Cktl'),
(193, 'Kiwi Gold Zespri'),
(194, 'Cleaner - Bleach'),
(195, 'Chocolate - Milk, Callets'),
(196, 'Beans - Kidney White'),
(197, 'Mushroom - Shitake, Dry'),
(198, 'Soho Lychee Liqueur'),
(199, 'Beer - Blue Light'),
(200, 'Wine - Magnotta - Red, Baco'),
(201, '5'),
(202, 'Catering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`),
  ADD UNIQUE KEY `admin_emailID_UNIQUE` (`admin_emailID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `product_ID` (`product_ID`);

--
-- Indexes for table `cartp`
--
ALTER TABLE `cartp`
  ADD KEY `productlink_idx` (`product_ID`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD KEY `credentials_ibfk_1` (`CustomerID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD UNIQUE KEY `email_ID_UNIQUE` (`email_ID`);

--
-- Indexes for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `linkordertocart` (`cart_link`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `Customer_ID_idx` (`user_ID`),
  ADD KEY `order_ID` (`order_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_ID`),
  ADD KEY `productcategory` (`category_id`);

--
-- Indexes for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`category_ID`),
  ADD UNIQUE KEY `category_ID_UNIQUE` (`category_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery_person`
--
ALTER TABLE `delivery_person`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `cart_link` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `product_ID` FOREIGN KEY (`product_ID`) REFERENCES `product` (`product_ID`);

--
-- Constraints for table `cartp`
--
ALTER TABLE `cartp`
  ADD CONSTRAINT `productlink` FOREIGN KEY (`product_ID`) REFERENCES `product` (`product_ID`);

--
-- Constraints for table `credentials`
--
ALTER TABLE `credentials`
  ADD CONSTRAINT `credentials_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD CONSTRAINT `delivery_person_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_ID`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `productcategory` FOREIGN KEY (`category_id`) REFERENCES `productcategory` (`category_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
