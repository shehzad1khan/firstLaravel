-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2022 at 11:48 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_lara`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `password`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'Shehzad', 'male', 'shehzadshinwari100@gmail.com', 'Landikotal District Khyber', '202cb962ac59075b964b07152d234b70', 1, '2022-07-22 08:39:30', '2022-07-28 02:08:53', NULL),
(10, 'Shaifa', 'female', 'shaifa@gmail.com', 'Kando Khel', '202cb962ac59075b964b07152d234b70', 1, '2022-07-22 08:40:02', '2022-07-28 02:08:55', NULL),
(15, 'Bachanagy', 'female', 'shaifa@gmail.com', 'Kando Khel', '7815696ecbf1c96e6894b779456d330e', 1, '2022-07-25 02:55:19', '2022-07-25 02:55:19', NULL),
(16, 'Shams', 'male', 'shams@gmail.com', 'Gullberge No1', '9235049b12189f7635d5f007fd4704e1', 1, '2022-07-25 02:57:04', '2022-07-27 01:58:12', NULL),
(18, 'Jawad', 'male', 'jawad@gmail.com', 'Landikotal', 'jawad123', 0, '2022-07-27 00:17:27', '2022-07-27 00:17:27', NULL),
(19, 'Daija Toy', 'male', 'osinski.lempi@yahoo.com', '11522 Waelchi Harbor Suite 954\nWest Nigelville, NM 07083-9059', 'ySx[m;~@hFO;l#', 0, '2022-07-27 00:49:57', '2022-07-27 01:15:30', '2022-07-27 01:15:30'),
(20, 'Mrs. Alanis Wehner MD', 'male', 'florencio.waelchi@crona.com', '15388 Pouros Station Suite 420\nWest Asiaport, MT 22299', 'Avq)yOR', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(21, 'Doyle Borer MD', 'male', 'simone62@hotmail.com', '4663 Mraz Cliff\nRitchieside, VT 80025', 'rHZ&OJ-]Tf{1`@gPpk', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(22, 'Dr. Kailee White', 'male', 'lance38@bernier.biz', '655 Kreiger Ports\nSouth Blancabury, OH 40707', '#qq<fz;?wiud+U', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(23, 'Prof. Princess Williamson PhD', 'male', 'wjacobs@zboncak.com', '6651 Corkery Forks\nAlfonzoburgh, NC 77577-4336', 'iA7`mjs', 0, '2022-07-27 00:54:10', '2022-07-27 01:15:44', '2022-07-27 01:15:44'),
(25, 'Rod Bosco', 'male', 'qmurphy@bashirian.com', '6851 Muller Overpass\nLake Mckaylamouth, WA 77300', 'SP,r?1Otl^,N|F0', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(26, 'Leonor Beatty', 'male', 'selina.purdy@funk.com', '86774 Ashley Harbors\nBechtelarbury, NM 88120', 'X.ZbI_', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(27, 'Miss Odie Kertzmann', 'male', 'shana.douglas@yahoo.com', '5749 Kilback Via\nSylvesterborough, AZ 51786-8035', '2$!LMs%?+aR', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(28, 'Philip Heidenreich', 'male', 'emery.okuneva@gmail.com', '69857 Terry Drive Suite 905\nMaryseton, MI 58721-1823', 'd=l3-5MD1,BZ6U^', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(29, 'Mrs. Blanche Jacobi PhD', 'male', 'quinn.marks@gmail.com', '652 Otha Lake Suite 896\nLuellabury, DC 57654-5928', '3I>0I*4', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(30, 'Gina Wintheiser', 'male', 'rebeca.jast@gmail.com', '495 Lulu Oval Apt. 760\nJenkinsport, DC 50102-4665', '\\WIZo-X.`x', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(31, 'Mr. Ricky Kuphal', 'male', 'keven28@hintz.com', '16283 Stone Glens Suite 308\nJosefashire, LA 69087-6831', '3ZbVYH+(upg?61', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(32, 'Etha Bradtke', 'male', 'towne.samanta@schneider.com', '566 Arnold Rapid Apt. 642\nMarlentown, KS 38982-3038', '9U3i^yo@m', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(33, 'Isaias Morar', 'male', 'myrtie89@hotmail.com', '88615 Alexanne Mills Apt. 853\nPort Amyhaven, RI 83483-0580', 'Yk\'gt[!31XM1sC', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(34, 'Dr. Felicita Hackett DDS', 'male', 'oweissnat@gmail.com', '1703 Aryanna Manors\nNorth Ralph, SC 65397-5384', 'oB_*$UBBBU', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(35, 'Mr. Michael Bailey', 'male', 'reggie.brekke@hotmail.com', '264 Stamm Crossroad Suite 438\nGreenfelderhaven, LA 21500-4126', 'j>G66&', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(36, 'Prof. Reva Waelchi', 'male', 'alyson11@gmail.com', '82974 Skiles Unions\nNew Crystel, NE 89547-8777', 'rp6,7H{+u', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(37, 'Alek Carroll', 'male', 'zwillms@swift.info', '221 Jakayla Mission\nArchibaldville, NM 82153-0842', '=vB.;C\"lMR}A!', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(38, 'Dr. Sid Sporer', 'male', 'mona.rau@hickle.org', '10719 Gerhard Crossing Suite 404\nPort Aniyahchester, HI 47580-5365', '0g>kJ{iQR^SL', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(39, 'Saul Lehner', 'male', 'cornell.denesik@hotmail.com', '3194 Crona Union\nSouth Darby, MD 49505', 'A{Xx!\'}&k.@7T', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(40, 'Forrest Kessler', 'male', 'mona.cummings@adams.com', '3393 Della Inlet\nNorth Tayaview, SC 18146-3484', ':*%.h`1e]lwl4gW%', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(41, 'Isai O\'Hara', 'male', 'zelma.marquardt@konopelski.info', '29615 Emmanuelle Villages Suite 861\nEast Julieport, NJ 19377-1158', 'OSO@Lmk}]/D8', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(42, 'Elinor Grant Jr.', 'male', 'kertzmann.gonzalo@larkin.net', '370 Nicolas Rue Suite 852\nCristobalstad, WY 33208', 'g#LG:9wl$|Cw', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(43, 'Prof. Thora Murray Sr.', 'male', 'joaquin.douglas@hotmail.com', '10270 Lonnie Extension Suite 142\nLottietown, WY 19374', 'jE5^;ck3\"A{0St|V', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(44, 'Dr. Carrie Heidenreich DDS', 'male', 'xkutch@gmail.com', '658 Hintz Roads\nWittingfort, AR 59904-5880', 'z_*4kUt\"$$0;J', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(45, 'Tyrique Herzog', 'male', 'amina75@gmail.com', '9377 Amya Fords Apt. 355\nNienowborough, WI 88936', 'nD1GLfNK6', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(46, 'Reymundo Friesen', 'male', 'selmer67@wintheiser.com', '485 Ottilie Pass\nPort Dorishaven, RI 63671-6359', '),5V&wjyJC', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(47, 'Ryder Pfeffer', 'male', 'amani.hermiston@senger.com', '4816 Bechtelar Street\nNew Dorothyville, KS 54463', '%>E{Tx\'bVqr5xxwfc', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(48, 'Rhianna Bechtelar', 'male', 'ubecker@nikolaus.org', '27787 Reichert Groves Suite 262\nSouth Tatyanaburgh, OH 52732', 'Ndm.Pg2', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(49, 'Thomas Metz', 'male', 'medhurst.rasheed@cassin.org', '24346 Johann Club Suite 589\nLake Caraberg, MA 90313-7526', '$c0H~f.(}S53|x9@', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(50, 'Edison Hyatt', 'male', 'mbradtke@fadel.com', '44002 Keeling Shore Suite 030\nLynchbury, VA 31702', '\\uGABVma~w[f', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(51, 'Shanel Botsford Jr.', 'male', 'ledner.kailee@hotmail.com', '221 Price Tunnel\nViviantown, AL 76082-8270', '~[D?EX?-Pp:17', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(52, 'Nona Fadel', 'male', 'lupe.bashirian@yahoo.com', '814 Rippin Pass Suite 594\nNorth Loraine, AL 56169-1677', ';-tJS;TcE*@5Cp*aS8', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(53, 'Dr. Jamel Rosenbaum V', 'male', 'wkassulke@yahoo.com', '88558 McGlynn Harbor Apt. 683\nYostmouth, TN 81323-5948', '<cdSy]`a', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(54, 'Dorcas Marks', 'male', 'itorphy@yahoo.com', '54284 Shirley Mount\nNew Dudleyton, PA 74029-2371', 'z):qg4VSC', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(55, 'Prof. Mario Herman I', 'male', 'grace69@hintz.org', '435 Jazmin Wells Apt. 795\nNorth Bellachester, NH 84327-0881', '[Zs>%\"\"!R{z+rhmu8', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(56, 'Walton Adams', 'male', 'ywalsh@miller.com', '120 Aufderhar Court\nLake Reece, GA 74756', 'x,y[q]6C?M0n&BSIfFv', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(57, 'Agustina Crona Jr.', 'male', 'shanon17@hotmail.com', '7540 Pouros Plaza Apt. 162\nArnoldomouth, AR 63012', 'WA;;Uun_^*1b}P.nh.', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(58, 'Kimberly Pollich', 'male', 'alyson87@gmail.com', '2429 Haley Ports Suite 026\nFarrellland, OH 88889-8824', 'hDfjNi#Xo<;N]S#T?E', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(59, 'Mrs. Courtney Ernser V', 'male', 'norris54@zboncak.com', '978 Jaime Court Apt. 417\nBoscotown, TX 25643-6249', 'CbDx?d{q/#Kc;K', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(60, 'Zora Hane', 'male', 'ysmith@paucek.com', '53009 Dina Manor\nVictoriatown, LA 53710-2585', 'eoBb-K', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(61, 'Emmet Sanford', 'male', 'eda.cormier@orn.com', '13299 Rebeka Mill Suite 673\nBarrowsberg, WI 01959', 'nA$RQZ9P,N@eHb', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(62, 'Prof. Russell Sipes III', 'male', 'muller.margot@gmail.com', '131 Mekhi Walk Suite 939\nCassieborough, KS 06864-7694', '\'$PeC+LS`316', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(63, 'Arlo Douglas', 'male', 'lhermann@bahringer.org', '228 Collins Trail Suite 987\nPort Bethview, WY 52193', 'uhfH~-Ao5WTc', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(64, 'Rocky Kuhic', 'male', 'lmcclure@yahoo.com', '397 Funk Center Suite 266\nPort Selmer, LA 05192-4265', 'zTs7p%*tgh&u)AJJ$N', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(65, 'Prof. Milo Volkman DVM', 'male', 'oberge@upton.com', '63927 Malcolm Isle\nHettingertown, MO 22185-5135', '7dsaWEF<;X`^\"Zm+~#L', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(66, 'Theo Cruickshank II', 'male', 'xromaguera@gmail.com', '2045 Name Spur Apt. 302\nThomasfurt, OK 01568-4818', '1$TT)h?H:#Q5d~.\'i', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(67, 'Miss Amanda Grimes DVM', 'male', 'idella44@conroy.info', '223 Kaylin Valleys\nNaderfort, RI 23358-7637', 'Q{\":ikS35Nzf{\"_A', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(68, 'Prof. Janick Treutel', 'male', 'magdalen94@pouros.com', '123 Lesch Pines\nTorpport, PA 64177-4254', '+D<8SLSFoS+PJAO', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(69, 'Dr. Fae O\'Keefe', 'male', 'xkoch@oconner.info', '50968 Sydni Forge Apt. 409\nPort Lewischester, NH 74385', '|JW)qy=e|tq<RS1b-;3[', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(70, 'Nick Rippin', 'male', 'charlotte97@greenfelder.com', '7530 Khalil Village Suite 750\nAureliahaven, CO 13821-5192', 'cv@T(GK2|', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(71, 'Reilly Medhurst', 'male', 'pacocha.evalyn@collier.org', '99153 Elinore Gardens\nWhiteville, CO 52254', '\\a[}$\'\"vGiD,:b-', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(72, 'Leopold Bechtelar', 'male', 'block.lawson@gmail.com', '674 Camila Parks\nNorth Twila, NY 28999', 'A[lr{Xh>_k&*IOZ>@/', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(73, 'Ms. Rowena Greenholt', 'male', 'jakob.yundt@hotmail.com', '9094 Ondricka Inlet\nGwendolynbury, IA 37332-3490', 'CL/x|7FS{~wD', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(74, 'Milford Wilderman', 'male', 'cielo49@tromp.info', '21773 Dooley Springs Suite 182\nJaquelinehaven, PA 60031', 'PMjkb&!_G[d(mYQ)=PL', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(75, 'Lulu Fisher', 'male', 'arlie.becker@heaney.com', '7295 Jerde Summit\nKuvalisburgh, NE 34735-1075', '/[*r\'\"BvHJrxK9Z?!', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(76, 'Mr. Kayley Bosco', 'male', 'torp.elyse@quigley.com', '65542 Abshire Cape Suite 617\nEast Susanna, IA 05029-9565', 'cY+a}[hvWAEk>klj', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(77, 'Romaine Walker IV', 'male', 'akozey@hotmail.com', '66577 Ethel Neck\nLake Raquel, CA 61972-4608', 'iBy}$BC{^cz;U$%/J', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(78, 'Dr. Asha Leuschke', 'male', 'jerde.morton@adams.com', '573 Thora Key Apt. 327\nMyrticeport, WY 73546-6387', 'phY\",\"U', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(79, 'Mrs. Nayeli D\'Amore', 'male', 'irunolfsson@hotmail.com', '70850 Crist Stream\nLake Anissa, WY 26584', 'CHx`F?L%o', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(80, 'Addie Vandervort', 'male', 'ukautzer@hotmail.com', '769 Krajcik Station Apt. 359\nGleasonfurt, WI 85104-3921', '<6D!H=', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(81, 'Miss Karelle Goldner', 'male', 'jaron.weber@homenick.net', '9449 Yesenia Plains\nNew Jedside, MA 33455', 'OC>Fcy', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(82, 'Alessandro Kshlerin', 'male', 'oharvey@yahoo.com', '755 Fritz Junctions Apt. 508\nEast Edwinaton, WI 58678', '8uK<LA7z?`7v', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(83, 'Dr. Viva Goodwin Jr.', 'male', 'mckenzie.phoebe@runte.com', '2260 Homenick Manors Suite 655\nPort Teagan, OR 55086-5230', '!8Vp`9?[', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(84, 'Ms. Brianne Cormier', 'male', 'slockman@yahoo.com', '37923 Lucy Creek Apt. 464\nRodgershire, DC 66618', 'd$>=5z`g6+', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(85, 'Marguerite Paucek', 'male', 'gaylord.marlin@yahoo.com', '59047 Braun Passage\nDoylebury, OH 54654', '4Ie*XZnz', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(86, 'Jessika Koch PhD', 'male', 'sokeefe@herzog.com', '7311 Franecki Mission\nNorth Hellen, WA 49699-3185', '5i:>M)Nwo1Gw(6HK`tT)', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(87, 'Dr. Fatima Kirlin', 'male', 'rhodkiewicz@reynolds.info', '57586 Hertha Harbor\nZitaland, CT 83812-1882', '5$le72&ol@', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(88, 'Kaley Fritsch', 'male', 'omurazik@hotmail.com', '4229 Ramon Park\nDaneland, MD 52774', 'upX[f$Lte,]viC', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(89, 'Hudson Hahn', 'male', 'deven.dickinson@crist.com', '47205 Bailey Keys\nGeraldton, WY 22635-8724', '(/As?e9U,azO_xN', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(90, 'Reva Price', 'male', 'vbeahan@grady.net', '66756 Evelyn Island Apt. 891\nDomenickside, MD 58269', 'DtG@_d,DI?X-fD!C3G', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(91, 'Tanner Lynch', 'male', 'zlabadie@hotmail.com', '53687 Haley Highway Suite 127\nBreannechester, NH 32296', 'Jf[)nWM;n5Xs1^qb\'=*:', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(92, 'Estefania Kris', 'male', 'balistreri.lilian@harvey.org', '151 Carley Forest\nEast Emie, UT 46031-0327', '(9}pilT275L', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(93, 'Marc Lehner', 'male', 'rosalee44@von.info', '3969 Vella Drives Suite 430\nPinkiehaven, AK 15297', 'H<byrw]9Whw+', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(94, 'Nathanial Simonis', 'male', 'nina22@okon.org', '284 Ciara Ports\nKertzmannton, OH 23390', 'la5b<BJQsB', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(95, 'Prof. Winifred Turner', 'male', 'eileen91@gmail.com', '602 Arthur Flats\nNorth Corbin, GA 78116', 't@gnA{-*', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(96, 'Benjamin Prohaska', 'male', 'alba.reichert@hotmail.com', '4590 Shields Forks Suite 275\nWest Leolamouth, VA 86339-2049', '-0#,\\\'=5f~F', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(97, 'Crystal Bergstrom', 'male', 'gward@nicolas.org', '44276 Boyle Canyon Apt. 042\nNew Wilhelm, MO 36708-1179', 'FA<F#Mx', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(98, 'Agustina Stehr', 'male', 'leora94@torp.com', '6652 Kohler Locks Apt. 356\nNorth Ignatius, MO 39622-5592', 'MS*WI!_[', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(99, 'Mr. Philip Carroll V', 'male', 'chance40@yahoo.com', '1025 Zemlak Viaduct Apt. 395\nAnissaville, IL 42334-6124', 'H0>Scr;/rj\'#p<Rcv(;', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(100, 'Rahsaan Rodriguez', 'male', 'ybeer@hotmail.com', '78822 McDermott Gardens Suite 532\nFredericmouth, FL 53902-7507', 'IFq88Gp', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(101, 'Ms. Carolyne Auer', 'male', 'kbartell@runte.biz', '7370 Elias Port\nWest Bernitaland, GA 59949', 'zJ|6G_=!7qJi698,', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(102, 'Earnestine Runolfsson', 'male', 'jefferey12@baumbach.biz', '976 Leda Trafficway\nLake Eudora, IA 88734', '7?D?u\'LvA&(^BV', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(103, 'Stephanie Olson', 'male', 'dallas84@mertz.org', '1863 Orn Rapids Suite 264\nCormierville, KY 56171-9312', '>0rs\"BeSEeT#o[c9', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(104, 'Prof. Jamir Keebler', 'male', 'general78@yahoo.com', '21498 Bode Forges\nEast Anyaview, TN 20477-7606', 'd.KMEgI@;f7<hU^', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(105, 'Ms. Mia Mayert', 'male', 'lynch.quincy@hotmail.com', '5126 Schoen Drives Apt. 574\nRoxannemouth, RI 93051-0825', 'yfu@B>', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(106, 'Prof. Soledad Deckow II', 'male', 'adella.batz@hotmail.com', '6225 Ratke Creek Suite 479\nJulianneville, NE 54977-8338', 'r=5,?nt;N[SE#pXpasO', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(107, 'Meta Corkery DVM', 'male', 'hyundt@gmail.com', '6873 Glover Roads Suite 025\nPort Dovieberg, CT 28548', '+(D<$(T)Kq[Ih\\', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(108, 'Dr. Michelle Rosenbaum', 'male', 'flo46@yahoo.com', '345 Ezequiel Shores\nSouth Raymond, IL 20215', '1{(BvdVn1{UK', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(109, 'Maudie Hansen Sr.', 'male', 'zryan@effertz.org', '71775 Xzavier Junction\nElmoreside, NH 52116', '*;en5%V6I>YxA)nPh', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(110, 'Zoila McClure DDS', 'male', 'odibbert@welch.net', '525 Anjali Mountains Apt. 830\nJaskolskiside, UT 69124', '@.8KaR,Mh./ip=e', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(111, 'Dr. Donny Cruickshank I', 'male', 'ratke.serena@gmail.com', '8057 Jakubowski Locks Apt. 372\nEast Ethelburgh, WI 69438', '5pNkaD6)}', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(112, 'Ethyl Wehner DVM', 'male', 'oconner.mohamed@gmail.com', '592 Stracke Port Suite 233\nJoyport, NE 37159-7622', '+L]Ssh7y;&{/Uj/x6#D>', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(113, 'Earline Larkin', 'male', 'schimmel.travis@hotmail.com', '80113 Warren Crossroad\nShanahanshire, NM 46634', '{GQ$ZDG:W)+SPl=i', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(114, 'Carolyne Stehr', 'male', 'assunta.flatley@turner.biz', '605 Eldon Drives\nEast Antone, NM 39458', '7@o>vpSQqtL^Yc,nXb^Z', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(115, 'Oran VonRueden Sr.', 'male', 'kovacek.braulio@yahoo.com', '603 Bogan Parkways Apt. 370\nNorth Shannachester, NE 12363-4155', '\'Fz?dL<g=Ko}tYI&cS', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(116, 'Sheldon Davis MD', 'male', 'abernathy.skylar@yahoo.com', '10268 Runolfsson Bypass Suite 274\nPort Sarahstad, GA 47529-0489', 'RuX<e{54TTz', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(117, 'Clara Tremblay', 'male', 'abdullah.rath@yahoo.com', '365 Schultz Prairie Apt. 032\nVilmaburgh, MO 69708-4449', '#/nxc,]MUh', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(118, 'Prof. Melany King', 'male', 'eliane.wunsch@yahoo.com', '143 Alana Ports\nOndrickaburgh, MD 29861-5384', '#Db`J@', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL),
(119, 'Lavon Keebler', 'male', 'schultz.ophelia@hill.com', '36120 Bradtke Meadow\nGreenmouth, MD 67738-9517', 'NbroEU`', 0, '2022-07-27 00:54:10', '2022-07-27 00:54:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2022_07_20_052127_create_customer_table', 1),
(12, '2022_07_20_060144_add_columns_to_customer', 2),
(13, '2022_07_20_073840_create_products_table', 3),
(14, '2022_07_25_103150_add_deleted_at_to_customer_table', 3),
(15, '2022_07_25_103938_add_deleted_at_to_customer_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
