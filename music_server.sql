-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.33-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla musica.admin: ~0 rows (aproximadamente)
INSERT INTO `admin` (`user`, `pass`) VALUES
	('Jose', '$2y$10$if3M8HIMBb3ocSX2JWBAROfc0FyfDXIzL0BieZhytJfwsSrQSSiGC');

-- Volcando datos para la tabla musica.albums: ~15 rows (aproximadamente)
INSERT INTO `albums` (`id`, `id_artist`, `title`, `year`, `cover`) VALUES
	(1, 1, 'Kill \'Em All', '1983', '1_Kill.jpg'),
	(2, 1, 'Ride The Lightning', '1984', '1_Ride.jpg'),
	(3, 1, 'Master Of Puppets', '1986', '1_puppets.jpg'),
	(4, 1, '... And Justice For All', '1988', '1_justice.jpg'),
	(5, 1, 'Metallica', '1991', '1_metallica.jpg'),
	(6, 1, 'Load', '1996', '1_Load.jpg'),
	(7, 1, 'Reload', '1997', '1_Reload.jpg'),
	(8, 1, 'Garage Inc.', '1998', '1_Garage_Inc..jpg'),
	(9, 1, 'S&M', '1999', '1_S&M.jpg'),
	(10, 1, 'St. Anger', '2003', '1_St._Anger.jpg'),
	(11, 1, 'Death Magnetic', '2008', '1_Death_Magnetic.jpg'),
	(12, 1, 'Through The Never', '2013', '1_Through_The_Never.jpg'),
	(13, 1, 'Hardwired... To Self-Destruct', '2016', '1_Hardwired..._To_Self-Destruct.jpg'),
	(14, 1, 'S&M 2', '2020', '1_S&M_2.jpg'),
	(15, 1, '72 Seasons', '2023', '1_72_Seasons.jpg');

-- Volcando datos para la tabla musica.artists: ~5 rows (aproximadamente)
INSERT INTO `artists` (`id`, `nombre`) VALUES
	(1, 'Metallica'),
	(2, 'Guns N\' Roses'),
	(3, 'Pink Floyd'),
	(4, 'Iron Maiden'),
	(5, 'Rammstein');

-- Volcando datos para la tabla musica.songs: ~99 rows (aproximadamente)
INSERT INTO `songs` (`id`, `id_album`, `order`, `name`, `duration`, `composers`, `route`) VALUES
	(1, 3, 1, 'Battery', '5:10', 'Hetfield, Ulrich', '01_Battery.flac'),
	(2, 3, 2, 'Master Of Puppets', '8:38', 'Hetfield, Ulrich, Burton, Hammett', '02_Master_Of_Puppets.flac'),
	(3, 3, 3, 'The Thing That Should Not Be', '6:32', 'Hetfield, Ulrich, Hammett', '03_The_Thing_That_Should_Not_Be.flac'),
	(4, 3, 4, 'Welcome Home (Sanitarium)', '6:28', 'Hetfield, Ulrich, Hammett', '04_Welcome_Home_(Sanitarium).flac'),
	(5, 3, 5, 'Disposable Heroes', '8:14', 'Hetfield, Ulrich, Hammett', '05_Dispoasable_Heroes.flac'),
	(6, 3, 6, 'Leper Messiah', '5:38', 'Hetfield, Ulrich', '06_Leper_Messiah.flac'),
	(7, 3, 7, 'Orion (Instrumental)', '8:12', 'Hetfield, Ulrich, Burton', '07_Orion_(Instrumental).flac'),
	(8, 3, 8, 'Damage, Inc.', '5:07', 'Hetfield, Ulrich, Burton, Hammett', '08_Damage_Inc.flac'),
	(9, 4, 1, 'Blackened', '6:40', 'Hetfield, Ulrich, Newsted', '01_Blackened.flac'),
	(10, 4, 2, '...And Justice For All', '9:47', 'Hetfield, Ulrich, Hammett', '02_...And_Justice_For_All.flac'),
	(11, 4, 3, 'Eye Of The Beholder', '6:25', 'Hetfield, Ulrich, Hammett', '03_Eye_Of_The_Beholder.flac'),
	(12, 4, 4, 'One', '7:24', 'Hetfield, Ulrich', '04_One'),
	(13, 4, 5, 'The Shortest Straw', '6:35', 'Hetfield, Ulrich', '05_The_Shortest_Straw.flac'),
	(14, 4, 6, 'Harvester Of Sorrow', '5:42', 'Hetfield, Ulrich', '06_Harvester_Of_Sorrow.flac'),
	(15, 4, 7, 'The Frayed Ends Of Sanity', '7:40', 'Hetfield, Ulrich, Hammett', '07_The_Frayed_Ends_Of_Sanity.flac'),
	(16, 4, 8, 'To Live Is To Die (Instrumental)', '9:48', 'Hetfield, Ulrich, Burton', '08_To_Live_Is_To_Die_(Instrumental).flac'),
	(17, 4, 9, 'Dyers Eve', '5:12', 'Hetfield, Ulrich, Hammett', '09_Dyers_Eve.flac'),
	(18, 5, 1, 'Enter Sandman', '5:29', 'Hetfield, Ulrich, HAmmett', '01_Enter_Sandman.flac'),
	(19, 5, 2, 'Sad But True', '5:24', 'Hetfield, Ulrich', '02_Sad_But_True.flac'),
	(20, 5, 3, 'Holier Than Thou', '3:47', 'Hetfield, Ulrich', '03_Holier_Than_Thou.flac'),
	(21, 5, 4, 'The Unforgiven', '6:26', 'Hetfield, Ulrich, Hammett', '04_The_Unforgiven.flac'),
	(22, 5, 5, 'Wherever I May Roam', '6:42', 'Hetfield, Ulrich', '05_Wherever_I_May_Roam.flac'),
	(23, 5, 6, 'Don\'t Tread On Me', '3:59', 'Hetfiel, Ulrich', '06_Don\'t_Tread_On_Me.flac'),
	(24, 5, 7, 'Through The Never', '4:01', 'Hetfield, Ulrich, Hammett', '07_Through_The_Never.flac'),
	(25, 5, 8, 'Nothing Else Matters', '6:29', 'Hetfield, Ulrich', '08_Nothing_Else_Matters.flac'),
	(26, 5, 9, 'Of Wolf And Man', '4:16', 'Hetfield, Ulrich, Hammett', '09_Of_Wolf_And_Man.flac'),
	(27, 5, 10, 'The God That Failed', '5:05', 'Hetfield, Ulrich', '10_The_God_That_Failed.flac'),
	(28, 5, 11, 'My Friend Of Misery', '6:47', 'Hetfield, Ulrich, Newsted', '11_My_Friend_Of_Misery.flac'),
	(29, 5, 12, 'The Struggle Within', '3:51', 'Hetfield, Ulrich', '12_The_Struggle_Within.flac'),
	(30, 2, 1, 'Fight Fire With Fire', '4:44', 'Hetfield, Ulrich, Burton', '01_Fight_Fire_With_Fire.flac'),
	(31, 2, 2, 'Ride The Lightning', '6:36', 'Hetfield, Ulrich, Burton, Mustaine', '02_Ride_The_Lightning.flac'),
	(32, 2, 3, 'For Whom The Bell Tolls', '5:10', 'Hetfield, Ulrich, Burton', '03_For_Whom_The_Bell_Tolls.flac'),
	(33, 2, 4, 'Fade To Black', '6:56', 'Hetfield, Ulrich, Burton, Hammett', '04_Fade_To_Black.flac'),
	(34, 2, 5, 'Trapped Under Ice', '4:03', 'Hetfield, Ulrich, Hammett', '05_Trapped_Under_Ice.flac'),
	(35, 2, 6, 'Escape', '4:23', 'Hetfield, Ulrich, Hammett', '06_Escape.flac'),
	(36, 2, 7, 'Creeping Death', '6:36', 'Hetfield, Ulrich, Burton, Hammett', '07_Creeping_Death.flac'),
	(37, 2, 8, 'The Call Of Ktulu (Instrumental)', '8:52', 'Hetfield, Ulrich, Burton, Mustaine', '08_The_Call_Of_Ktulu.flac'),
	(38, 1, 1, 'Hit The Lights', '4:17', 'Hetfield, Ulrich', '01_Hit_The_Lights.flac'),
	(39, 1, 2, 'The Four Horsemen', '7:13', 'Hetfield, Ulrich, Mustaine', '02_The_Four_Horsemen.flac'),
	(40, 1, 3, 'Motorbreath', '3:08', 'Hetfield', '03_Motorbreath.flac'),
	(41, 1, 4, 'Jump In The Fire', '4:41', 'Hetfield, Ulrich, Mustaine', '04_Jump_In_The_Fire.flac'),
	(42, 1, 5, '(Anesthesia) Pulling Teeth', '4:14', 'Hetfield, Ulrich, Burton', '05_(Anesthesia)_Pulling_Teeth.flac'),
	(43, 1, 6, 'Whiplash', '4:09', 'Hetfield, Ulrich', '06_Whiplash.flac'),
	(44, 1, 7, 'Phantom Lord', '5:01', 'Hetfield, Ulrich, Mustaine', '07_Phantom_Lord.flac'),
	(45, 1, 8, 'No Remorse', '6:26', 'Hetfield, Ulrich', '08_No_Remorse.flac'),
	(46, 1, 9, 'Seek & Destroy', '6:56', 'Hetfield, Ulrich', '09_Seek_&_Destroy.flac'),
	(47, 1, 10, 'Metal Militia', '5:11', 'Hetfield, Ulrich, Mustaine', '10_Metal_Militia.flac'),
	(48, 6, 1, 'Ain\'t My Bitch', '5:04', 'Hetfield, Ulrich', '01_Ain\'t_My_Bitch.flac'),
	(49, 6, 2, '2 X 4', '5:28', 'Hetfield, Ulrich, Hammett', '02_2_X_4.flac'),
	(50, 6, 3, 'The House Jack Built', '6:38', 'Hetfield, Ulrich, Hammett', '03_The_House_Jack_Built.flac'),
	(51, 6, 4, 'Until It Sleeps', '4:30', 'Hetfield, Ulrich', '04_Until_It_Sleeps.flac'),
	(52, 6, 5, 'King Nothing', '5:28', 'Hetfield, Ulrich, Hammett', '05_King_Nothing.flac'),
	(53, 6, 6, 'Hero Of The Day', '4:22', 'Hetfield, Ulrich, Hammett', '06_Hero_Of_The_Day.flac'),
	(54, 6, 7, 'Bleeding Me', '8:18', 'Hetfield, Ulrich, Hammett', '07_Bleeding_Me.flac'),
	(55, 6, 8, 'Cure', '4:54', 'Hetfield, Ulrich, Hammett', '08_Cure.flac'),
	(56, 6, 9, 'Poor Twisted Me', '4:00', 'Hetfield, Ulrich', '09_Poor_Twisted_Me.flac'),
	(57, 6, 10, 'Wasting My Hate', '3:57', 'Hetfield, Ulrich, Hammett', '10_Wasting_My_Hate.flac'),
	(58, 6, 11, 'Mama Said', '5:19', 'Hetfield, Ulrich', '11_Mama_Said.flac'),
	(59, 6, 12, 'Thorn Within', '5:51', 'Hetfield, Ulrich, Hammett', '12_Thorn_Within.flac'),
	(60, 6, 13, 'Ronnie', '5:17', 'Hetfield, Ulrich', '13_Ronnie.flac'),
	(61, 6, 14, 'The Outlaw Torn', '9:52', 'Hetfield, Ulrich', '14_The_Outlaw_Torn.flac'),
	(62, 7, 1, 'Fuel', '4:29', 'Hetfield, Ulrich, HAmmett', '01_Fuel.flac'),
	(63, 7, 2, 'The Memory Remians (feat. Marianne Faithfull)', '4:38', 'Hetfield, Ulrich', '02_The_Memory_Remains.flac'),
	(64, 7, 3, 'Devil\'s Dance', '5:18', 'Hetfield, Ulrich', '03_Devil\'s_Dance.flac'),
	(65, 7, 4, 'The Unforgiven II', '6:36', 'Hetfield, Ulrich, Hammett', '04_The_Unforgiven_II.flac'),
	(66, 7, 5, 'Better Than You', '5:21', 'Hetfield, Ulrich', '05_Better_Than_You.flac'),
	(67, 7, 6, 'Slither', '5:13', 'Hetfield, Ulrich, Hammett', '06_Slither.flac'),
	(68, 7, 7, 'Carpe Diem Baby', '6:12', 'Hetfield, Ulrich, Hammett', '07_Carpe_Diem_Baby.flac'),
	(69, 7, 8, 'Bad Seed', '4:05', 'Hetfield, Ulrich, Hammett', '08_Bad_Seed.flac'),
	(70, 7, 9, 'Where The Wild Things Are', '6:52', 'Hetfield, Ulrich, Newsted', '09_Where_The_Wild_Tings_Are.flac'),
	(71, 7, 10, 'Prince Charming', '6:04', 'Hetfield, Ulrich', '10_Prince_Charming.flac'),
	(72, 7, 11, 'Low Man\'s Lyric', '7:36', 'Hetfield, Ulrich', '11_Low_Man\'s_Lyric.flac'),
	(73, 7, 12, 'Attitude', '5:16', 'Hetfield, Ulrich', '12_Attitude.flac'),
	(74, 7, 13, 'Fixxxer', '8:15', 'Hetfield, Ulrich, Hammett', '13_Fixxxer.flac'),
	(75, 8, 1, 'Free Speech For The Dumb', '2:34', 'Maloney, Morris, Roberts, Wainwright', '01_Free_Speech_For_The_Dumb.flac'),
	(76, 8, 2, 'It\'s Electric', '3:35', 'Harris, Tatler', '02_It\'s_Electric.flac'),
	(77, 8, 3, 'Sabbra Cadabra', '6:20', 'Osbourne, Iommi, Butler, Ward', '03_Sabbra_Cadabra.flac'),
	(78, 8, 4, 'Turn The Page', '6:07', 'Seger', '04_Turn_The_Page.flac'),
	(79, 8, 5, 'Die, Die My Darling', '2:30', 'Danzig', '05_Die,_Die_My_Darling.jpg'),
	(80, 8, 6, 'Loverman', '7:52', 'Cave', '06_Loverman.flac'),
	(81, 8, 7, 'Mercyful Fate', '11:11', 'Diamond, Shermann', '07_Mercyful_Fate.flac'),
	(82, 8, 8, 'Astronomy', '6:37', 'Bouchard, Bouchard, Pearlman', '08_Astronomy.flac'),
	(83, 8, 9, 'Whiskey In The Jar', '5:04', 'Traditional', '09_Whiskey_In_The_Jar.flac'),
	(84, 8, 10, 'Tuesday\'s Gone', '9:05', 'Collins, Van Zant', '10_Tuesday\'s_Gone.flac'),
	(85, 8, 11, 'The More I See', '4:49', 'Maloney, Morris, Roberts, Wainwright', '11_The_More_I_See.flac'),
	(86, 8, 12, 'Helpless', '6:36', 'Harris, Tatler', '12_Helpless.flac'),
	(87, 8, 13, 'The Small Hours', '6:41', 'Mortimer, McCullim, Bartley, Levine', '13_The_Small_Hours.flac'),
	(88, 8, 14, 'The Wait', '4:55', 'Coleman, Walker, Youth/Ferguson', '14_The_Wait.flac'),
	(89, 8, 15, 'Crash Course In Brain Surgery', '3:10', 'Bourge, Phillips, Shelley', '15_Crash_Course_In_Brain_Surgery.flac'),
	(90, 8, 16, 'Last Caress', '3:31', 'Danzig', '16_Last_Caress.flac'),
	(91, 8, 17, 'Am I Evil?', '7:48', 'Harris, Tatler', '17_Am_I_Evil.flac'),
	(92, 8, 18, 'Blitzkrieg', '3:34', 'Jones, Sirotto, Smith', '18_Blitzkrieg.flac'),
	(93, 8, 19, 'Breadfan', '5:41', 'Bourge, Phillips, Shelley', '19_Breadfan.flac'),
	(94, 8, 20, 'The Prince', '4:25', 'Harris, Tatler', '20_The_Prince.flac'),
	(95, 8, 21, 'Stone Cold Crazy', '2:16', 'Deacon, May, Mercury, Taylor', '21_Stone_Cold_Crazy.flac'),
	(96, 8, 22, 'So What?', '3:07', 'Culmer, Exalt', '22_So_What.flac'),
	(97, 8, 23, 'Killing Time', '3:01', 'Haller, Bates, Fleming, Wilson, Campbell', '23_Killing_Time.flac'),
	(98, 8, 24, 'Overkill', '4:04', 'Clarke, Kilmister, Taylor', '24_Overkill.flac'),
	(99, 8, 25, 'Damage Case', '3:40', 'Clarke, Farren, Kilmister, Taylor', '25_Damage_Case.flac'),
	(100, 8, 26, 'Stone Dead Forever', '4:51', 'Clarke, Kilmister, Taylor', '26_Stone_Dead_Forever.flac'),
	(101, 8, 27, 'Too Late Too Late', '3:12', 'Clarke, Kilmister, Taylor', '27_Too_Late_Too_Late.flac');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
