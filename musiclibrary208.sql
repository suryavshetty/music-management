-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 26, 2021 at 12:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musiclibrary208`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`) VALUES
(1, 'Ok Jaanu'),
(2, 'Nautanki Saala'),
(3, 'Ekk Deewana Tha'),
(4, 'Raanjhanaa'),
(5, 'Padosan'),
(6, ' Aradhana'),
(7, 'Raees'),
(8, 'Kartik Calling Kartik'),
(9, 'Yeh Jawaani Hai Deewani'),
(10, 'Vaaranam Aayiram'),
(11, 'Paiyaa'),
(12, 'Savaari 2'),
(13, 'Jolly Days'),
(14, 'Simple Aag Ond Love Story'),
(15, 'Kotigobba 3'),
(16, 'Mungaru Male'),
(17, 'Guru'),
(18, 'Kabhi Alvida Na Kehna'),
(19, 'Jab We Met'),
(20, 'Fanaa'),
(21, 'Singh Is Kinng'),
(22, 'RAAZ 2'),
(23, 'Bachna Ae Haseeno'),
(24, ' Race'),
(25, 'Tum Mile'),
(26, 'RRR');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(50) NOT NULL,
  `description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `description`) VALUES
(101, 'Jubin Nautiyal ', 'Excellent Singer'),
(102, 'Falak Shabir', 'Excellent Singer'),
(103, 'Leon D\'Souza, A. R. Rahman, Suzanne D\'Mello', 'Excellent Singer'),
(104, 'Keerthi Sagathia, Javed Ali, Pooja Vaidyanath', 'Excellent Singer'),
(105, 'Kishore Kumar', 'Excellent Singer'),
(106, 'Harshdeep Kaur, Arijit Singh', 'Excellent Singer'),
(107, 'Alyssa Mendonsa, Shankar Mahadevan', 'Excellent Singer'),
(108, 'Sreerama Chandra, Shilpa Rao', 'Good Singer'),
(109, 'Hariharan, Harris Jayaraj, Devan Ekambaram', 'Excellent Singer'),
(110, 'Yuvan Shankar Raja, Haricharan, Tanvi Shah', 'Excellent Singer'),
(111, 'Yazin Nizar, Hamsika Iyer, Karthikv', 'Excellent Singer'),
(112, 'KARTHIK', 'Good Singer'),
(113, 'Sonu Nigam', 'Excellent Singer'),
(114, 'Shreya Ghoshal', 'Excellent Singer'),
(115, 'A. R. Rahman, Chinmayi', 'Excellent Singer'),
(116, 'Shafqat Amanat Ali, Shankar Mahadevan', 'Excellent Singer'),
(117, 'Mohit Chauhan', 'Excellent Singer'),
(118, 'Shreya Ghoshal, Rahat Fateh Ali Khan', 'Excellent Singer'),
(119, 'Shilpa Rao, KK', 'Excellent Singer'),
(120, 'Atif Aslam', 'Excellent Singer'),
(121, 'Neeraj Shridhar', 'Good Singer'),
(122, 'Rahul Sipligunj, Kaala Bhairava', 'Good Singer');

-- --------------------------------------------------------

--
-- Table structure for table `belongs`
--

CREATE TABLE `belongs` (
  `track_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `belongs`
--

INSERT INTO `belongs` (`track_id`, `album_id`, `genre_id`) VALUES
(1001, 1, 201),
(1002, 2, 202),
(1003, 3, 203),
(1004, 4, 204),
(1005, 5, 205),
(1006, 6, 205),
(1007, 7, 206),
(1008, 8, 207),
(1009, 9, 205),
(1010, 10, 208),
(1011, 11, 202),
(1012, 12, 209),
(1013, 13, 210),
(1014, 14, 211),
(1015, 15, 212),
(1016, 16, 213),
(1017, 17, 202),
(1018, 18, 214),
(1019, 19, 215),
(1020, 20, 203),
(1021, 21, 205),
(1022, 22, 205),
(1023, 23, 207),
(1024, 24, 207),
(1025, 25, 205),
(1026, 26, 216);

-- --------------------------------------------------------

--
-- Table structure for table `compiles`
--

CREATE TABLE `compiles` (
  `artist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `compiles`
--

INSERT INTO `compiles` (`artist_id`, `album_id`, `release_date`) VALUES
(101, 1, '2017-01-04'),
(102, 2, '2013-02-25'),
(103, 3, '2010-01-06'),
(104, 4, '2013-06-21'),
(105, 5, '1968-11-29'),
(105, 6, '1997-08-15'),
(106, 7, '2016-12-21'),
(107, 8, '2010-02-26'),
(108, 9, '2013-04-30'),
(109, 10, '2008-10-08'),
(110, 11, '2010-02-12'),
(111, 12, '2014-08-01'),
(112, 13, '2008-11-16'),
(113, 14, '2013-03-29'),
(113, 16, '2006-11-06'),
(113, 20, '2006-05-26'),
(113, 22, '2009-01-23'),
(114, 15, '2021-04-02'),
(115, 17, '2006-11-18'),
(116, 18, '2006-06-14'),
(117, 19, '2007-08-26'),
(118, 21, '2008-08-08'),
(119, 23, '2008-07-05'),
(120, 24, '2008-03-21'),
(121, 25, '2009-09-12'),
(122, 26, '2021-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `composes`
--

CREATE TABLE `composes` (
  `artist_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `composes`
--

INSERT INTO `composes` (`artist_id`, `track_id`) VALUES
(101, 1001),
(102, 1002),
(103, 1003),
(104, 1004),
(105, 1005),
(105, 1006),
(106, 1007),
(107, 1008),
(108, 1009),
(109, 1010),
(110, 1011),
(111, 1012),
(112, 1013),
(113, 1014),
(113, 1016),
(113, 1020),
(113, 1022),
(114, 1015),
(115, 1017),
(116, 1018),
(117, 1019),
(118, 1021),
(119, 1023),
(120, 1024),
(121, 1025),
(122, 1026);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(201, 'Hip-Hop (Rap)‎'),
(202, 'Feature film soundtrack'),
(203, 'Filmi'),
(204, 'Love Song'),
(205, 'Romance'),
(206, 'Romantic Ballad'),
(207, 'Pop'),
(208, 'Soundtrack'),
(209, 'null'),
(210, 'null'),
(211, 'null'),
(212, 'null'),
(213, 'null'),
(214, 'Sufi rock'),
(215, 'Soap opera'),
(216, 'Classic Tollywood');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `track_id` int(11) NOT NULL,
  `track_name` varchar(50) NOT NULL,
  `playtime_min` int(11) NOT NULL,
  `track_link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`track_id`, `track_name`, `playtime_min`, `track_link`) VALUES
(1001, 'The Humma Song', 3, 'https://music.youtube.com/watch?v=1tVL11ULjYY&list=RDAMVM1tVL11ULjYY'),
(1002, 'Mera Mann', 3, 'https://music.youtube.com/watch?v=8kxufj_snhI&list=RDAMVM8kxufj_snhI\r\n'),
(1003, 'Hosanna', 5, 'https://music.youtube.com/watch?v=dfNdRsNSFx4&list=RDAMVM8kxufj_snhI'),
(1004, 'Tum Tak', 4, 'https://music.youtube.com/watch?v=Wq1zDZ81YhU&list=RDAMVMWq1zDZ81YhU'),
(1005, 'Mere Saamne Waali Khidki Me', 3, 'https://music.youtube.com/watch?v=S0WPSYFm7iE&list=RDAMVMS0WPSYFm7iE'),
(1006, 'Mere Sapno Ki Raani', 5, 'https://music.youtube.com/watch?v=pHD9EVK2vVc&list=RDAMVMpHD9EVK2vVc'),
(1007, 'Zaalima', 3, 'https://music.youtube.com/watch?v=lpdRqn6xwiM&list=RDAMVMlpdRqn6xwiM'),
(1008, 'Uff Teri Adaa', 5, 'https://music.youtube.com/watch?v=-rSOvmWRG4Y&list=RDAMVM-rSOvmWRG4Y'),
(1009, 'Subhanallah', 4, 'https://music.youtube.com/watch?v=PdjC8e7GFWg&list=RDAMVMPdjC8e7GFWg'),
(1010, 'Nenjukkul Peidhidum', 6, 'https://music.youtube.com/watch?v=FzLpP8VBC6E&list=RDAMVMFzLpP8VBC6E'),
(1011, 'Thuli Thuli', 5, 'https://music.youtube.com/watch?v=v-hL3sks2qI&list=RDAMVMv-hL3sks2qI'),
(1012, 'Ninna Danigaagi', 4, 'https://music.youtube.com/watch?v=1_JlL53Ha-4&list=RDAMVM1_JlL53Ha-4'),
(1013, 'Rakhta Sambandhagala', 5, 'https://music.youtube.com/watch?v=5UfA_hGRGz0&list=RDAMVM5UfA_hGRGz0'),
(1014, 'Baanali Badalago', 5, 'https://music.youtube.com/watch?v=7cBSr4dGRZY&list=RDAMVM7cBSr4dGRZY'),
(1015, 'Nee Kotiyali Obbane', 4, 'https://music.youtube.com/watch?v=4AsMu0c7RK0&list=RDAMVM4AsMu0c7RK0'),
(1016, 'Anisuthide', 5, 'https://music.youtube.com/watch?v=uchdYcbq7Ys&list=RDAMVMuchdYcbq7Ys'),
(1017, 'Tere Bina', 5, 'https://music.youtube.com/watch?v=9JDSGhhiOwI&list=RDAMVMVI6w857GeTw'),
(1018, 'Mitwaa', 6, 'https://music.youtube.com/watch?v=ru_5PA8cwkE&list=RDAMVMru_5PA8cwkE'),
(1019, 'Tum Se Hi', 5, 'https://music.youtube.com/watch?v=I94fhjQ-U30&list=RDAMVMI94fhjQ-U30'),
(1020, 'Mere Haath Me', 4, 'https://music.youtube.com/watch?v=-xIKTbjToh8&list=RDAMVM-xIKTbjToh8'),
(1021, 'Teri Ore', 2, 'https://music.youtube.com/watch?v=GLEx6bhPu7s&list=RDAMVMGLEx6bhPu7s'),
(1022, 'Soniyo', 5, 'https://music.youtube.com/watch?v=Xz0fMH6ClKY&list=RDAMVMXz0fMH6ClKY'),
(1023, 'Khuda Jaane', 5, 'https://music.youtube.com/watch?v=cmMiyZaSELo&list=RDAMVMcmMiyZaSELo'),
(1024, 'Pehli Nazar Mein', 3, 'https://music.youtube.com/watch?v=BadBAMnPX0I&list=RDAMVMBadBAMnPX0I'),
(1025, 'Tum Mile', 5, 'https://music.youtube.com/watch?v=XR_8ugaUcyQ&list=RDAMVMXR_8ugaUcyQ'),
(1026, 'Naatu Naatu', 3, 'https://music.youtube.com/watch?v=Gt9WzC4WDEA&list=RDAMVMGt9WzC4WDEA');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `belongs`
--
ALTER TABLE `belongs`
  ADD PRIMARY KEY (`track_id`,`album_id`,`genre_id`),
  ADD KEY `album_id2` (`album_id`),
  ADD KEY `genre_id1` (`genre_id`);

--
-- Indexes for table `compiles`
--
ALTER TABLE `compiles`
  ADD PRIMARY KEY (`artist_id`,`album_id`),
  ADD KEY `album_id1` (`album_id`);

--
-- Indexes for table `composes`
--
ALTER TABLE `composes`
  ADD PRIMARY KEY (`artist_id`,`track_id`),
  ADD KEY `track_id1` (`track_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`track_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `belongs`
--
ALTER TABLE `belongs`
  ADD CONSTRAINT `album_id2` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `genre_id1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `track_id2` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `compiles`
--
ALTER TABLE `compiles`
  ADD CONSTRAINT `album_id1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_id2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `composes`
--
ALTER TABLE `composes`
  ADD CONSTRAINT `artist_id1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `track_id1` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
