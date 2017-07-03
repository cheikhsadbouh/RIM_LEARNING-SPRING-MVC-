-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 03, 2017 at 06:41 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rim_learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `ConferenceJoinedStudent`
--

CREATE TABLE `ConferenceJoinedStudent` (
  `id_conferencejoined` int(11) NOT NULL,
  `id_conference` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ConferenceJoinedStudent`
--

INSERT INTO `ConferenceJoinedStudent` (`id_conferencejoined`, `id_conference`, `id_student`, `code`) VALUES
(1, 2, 1, 'I7u5OCcO'),
(2, 1, 1, 'qECbEQKh'),
(3, 1, 1, 'Hn6hzpPs'),
(4, 2, 1, 'dKMY2OfV'),
(5, 2, 1, 'KmPEYo9k'),
(6, 1, 1, 'HrrEUYzH'),
(7, 2, 1, 'r8m4OjEg'),
(8, 1, 1, 'u8e1XZRq'),
(9, 1, 1, '7eOOBmvl'),
(10, 2, 1, 'bgm8BCKg'),
(11, 1, 2, 'j4sKBsbD'),
(12, 1, 4, 'WfwYimay'),
(13, 2, 1, 'Ji3ePjln');

-- --------------------------------------------------------

--
-- Table structure for table `ConferenceTable`
--

CREATE TABLE `ConferenceTable` (
  `id_conference` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_teacher` int(11) DEFAULT NULL,
  `id_post_payment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ConferenceTable`
--

INSERT INTO `ConferenceTable` (`id_conference`, `date`, `title`, `id_teacher`, `id_post_payment`) VALUES
(1, '5/23/2017 11:00:00', 'lvlseve ', 23, 124),
(2, '5/26/2017 11:00:00', 'bdhcdhcvdchvdchvdhcd', 23, 125),
(3, '13/undefined/undefined undefined', 'about kotlin', 23, 136),
(4, '13/undefined/undefined undefined', 'java ', 23, 137),
(5, '5/03/2017 12:00:00', 'kotlin vs java', 23, 138),
(6, '7/05/2017 12:20:00', 'fghjk', 23, 140),
(7, '13/undefined/undefined undefined', 'ghghghg', 23, 142),
(8, '7/04/2017 14:15:00', 'bbbb', 23, 143);

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
  `idGroups` int(11) NOT NULL,
  `groupName` varchar(255) DEFAULT NULL,
  `itemType` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `urlPhoto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Groups`
--

INSERT INTO `Groups` (`idGroups`, `groupName`, `itemType`, `section`, `urlPhoto`) VALUES
(12, 'math1', 'mathematique', 'section_C', '/resources/img_groups/profmath/math1/user.png'),
(13, 'math2', 'mathematique', 'section_C', '/resources/img_groups/profmath/math2/images.jpeg'),
(14, 'math3', 'mathematique', 'section_C', '/resources/img_groups/profmath/math3/user.png'),
(15, 'math4', 'mathematique', 'section_C', '/resources/img_groups/profmath/math4/user.png'),
(34, 'math5', 'mathematique', 'section_C', '/resources/img_groups/profmath/math5/user.png'),
(35, 'math6', 'mathematique', 'section_C', '/resources/img_groups/profmath/math6/user.png');

-- --------------------------------------------------------

--
-- Table structure for table `GroupsPosts`
--

CREATE TABLE `GroupsPosts` (
  `idpost` int(11) NOT NULL,
  `Content` longtext,
  `id_group` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL,
  `id_teacher` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GroupsPosts`
--

INSERT INTO `GroupsPosts` (`idpost`, `Content`, `id_group`, `id_student`, `id_teacher`) VALUES
(1, 'selam mes eleve', 12, NULL, 23),
(2, 'prof 5lini nposti please', 12, 1, NULL),
(3, 'i have a question ', 12, 1, NULL),
(4, 'please let me post', 12, 1, NULL),
(5, 'slam', 12, 1, NULL),
(6, 'prof 5lini n3dle post', 12, 1, NULL),
(7, 'slam', 12, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GroupsPostsTemporary`
--

CREATE TABLE `GroupsPostsTemporary` (
  `idpost` int(11) NOT NULL,
  `Content` longtext,
  `id_group` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `GroupTemporaryStudent`
--

CREATE TABLE `GroupTemporaryStudent` (
  `idGroupTemporary` int(11) NOT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Homepage`
--

CREATE TABLE `Homepage` (
  `idHomePage` int(11) NOT NULL,
  `msg` longtext,
  `teacher_id` int(11) DEFAULT NULL,
  `type_of_post` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Homepage`
--

INSERT INTO `Homepage` (`idHomePage`, `msg`, `teacher_id`, `type_of_post`) VALUES
(97, 'post12', 23, 'vote'),
(98, 'bjjbjb', 23, 'vote'),
(124, 'nase kamle 5tret ntklo3an ', 23, 'payment'),
(125, 'kfvkfvknfknvkf', 23, 'payment'),
(132, 'slam', 23, 'simple'),
(133, 'simple ', 23, 'simple'),
(134, 'sondage', 23, 'vote'),
(135, 'sondage 2', 23, 'vote'),
(136, 'first conference about ktlin', 23, 'payment'),
(137, 'slam ', 23, 'payment'),
(138, 'slamo3lykoum', 23, 'payment'),
(139, 'Deux nombres complexes sont égaux si et seulement s\'ils ont la même partie réelle et la même partie imaginaire. Un nombre complexe z est dit imaginaire pur ou totalement imaginaire si sa partie réelle est nulle, dans ce cas il s\'écrit sous la forme z =ib.', 23, 'simple'),
(140, 'fgfggf', 23, 'payment'),
(141, 'ggg', 23, 'simple'),
(142, 'gfg', 23, 'payment'),
(143, 'df', 23, 'payment');

-- --------------------------------------------------------

--
-- Table structure for table `JoinedGroupStudent`
--

CREATE TABLE `JoinedGroupStudent` (
  `id` int(11) NOT NULL,
  `expiredDate` varchar(255) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `JoinedGroupStudent`
--

INSERT INTO `JoinedGroupStudent` (`id`, `expiredDate`, `id_group`, `id_student`) VALUES
(2, '05/14/2017 19:19:26', 12, 1),
(3, '05/14/2017 19:48:52', 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `join_student_training`
--

CREATE TABLE `join_student_training` (
  `idTraining` int(11) NOT NULL,
  `studentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `join_student_training`
--

INSERT INTO `join_student_training` (`idTraining`, `studentId`) VALUES
(5000, 2),
(5001, 2),
(5000, 2),
(5000, 4),
(5000, 1),
(5000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `join_teachers_groups`
--

CREATE TABLE `join_teachers_groups` (
  `teacherId` int(11) NOT NULL,
  `idGroups` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `join_teachers_groups`
--

INSERT INTO `join_teachers_groups` (`teacherId`, `idGroups`) VALUES
(23, 12),
(23, 13),
(23, 14),
(23, 15),
(23, 34),
(23, 35);

-- --------------------------------------------------------

--
-- Table structure for table `Library`
--

CREATE TABLE `Library` (
  `id` int(11) NOT NULL,
  `pdfUrl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Notification`
--

CREATE TABLE `Notification` (
  `idNotification` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `datenotification` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Notification`
--

INSERT INTO `Notification` (`idNotification`, `value`, `student_id`, `teacher_id`, `state`, `datenotification`) VALUES
(4, 'new training  test  valable jusqua\'a  05/20/2017 22:21:00', 1, NULL, 'seen', '04/20/2017 22:21:00'),
(5, 'new training  nombre_complexe  valable jusqua\'a  05/20/2017 22:21:28', 1, NULL, 'seen', '04/20/2017 22:21:28'),
(6, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 14:59:29', 1, NULL, 'seen', '04/21/2017 14:59:29'),
(7, 'new training  test  valable jusqua\'a  05/21/2017 15:17:34', 1, NULL, 'seen', '04/21/2017 15:17:34'),
(8, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 15:37:17', 2, NULL, 'seen', '04/21/2017 15:37:17'),
(9, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 15:54:55', 1, NULL, 'seen', '04/21/2017 15:54:55'),
(10, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 16:11:11', 1, NULL, 'seen', '04/21/2017 16:11:11'),
(11, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 16:11:53', 1, NULL, 'seen', '04/21/2017 16:11:53'),
(12, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 16:12:38', 1, NULL, 'seen', '04/21/2017 16:12:38'),
(13, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 17:12:17', 1, NULL, 'seen', '04/21/2017 17:12:17'),
(14, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 17:35:03', 1, NULL, 'seen', '04/21/2017 17:35:03'),
(15, 'new training  test  valable jusqua\'a  05/21/2017 17:36:44', 1, NULL, 'seen', '04/21/2017 17:36:44'),
(16, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 17:38:05', 1, NULL, 'seen', '04/21/2017 17:38:05'),
(17, 'new training  test  valable jusqua\'a  05/21/2017 17:39:35', 1, NULL, 'seen', '04/21/2017 17:39:35'),
(18, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 17:41:37', 1, NULL, 'seen', '04/21/2017 17:41:37'),
(19, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 17:42:29', 1, NULL, 'seen', '04/21/2017 17:42:29'),
(20, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 17:43:58', 1, NULL, 'seen', '04/21/2017 17:43:58'),
(21, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 17:45:24', 1, NULL, 'seen', '04/21/2017 17:45:24'),
(22, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 17:47:29', 1, NULL, 'seen', '04/21/2017 17:47:29'),
(23, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 17:48:20', 1, NULL, 'seen', '04/21/2017 17:48:20'),
(24, 'new training  test  valable jusqua\'a  05/21/2017 17:49:23', 1, NULL, 'seen', '04/21/2017 17:49:23'),
(25, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 18:40:44', 1, NULL, 'seen', '04/21/2017 18:40:44'),
(26, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 18:50:02', 1, NULL, 'seen', '04/21/2017 18:50:02'),
(27, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 18:53:33', 1, NULL, 'seen', '04/21/2017 18:53:33'),
(28, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 18:56:23', 1, NULL, 'seen', '04/21/2017 18:56:23'),
(29, 'new training  test  valable jusqua\'a  05/21/2017 19:06:05', 2, NULL, 'seen', '04/21/2017 19:06:05'),
(30, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 19:35:56', 1, NULL, 'seen', '04/21/2017 19:35:56'),
(31, 'new training  nombre_complexe  valable jusqua\'a  05/21/2017 21:31:44', 2, NULL, 'seen', '04/21/2017 21:31:44'),
(32, 'welcome to joine us in  conference  bdhcdhcvdchvdchvdhcd  la conference sera le   5/26/2017 11:00:00votre code de verification est :I7u5OCcO', 1, NULL, 'seen', '05/07/2017 19:18:47'),
(33, 'welcome to joine us in  conference  lvlseve   la conference sera le   5/23/2017 11:00:00votre code de verification est :qECbEQKh', 1, NULL, 'seen', '05/07/2017 19:32:20'),
(34, 'welcome to joine us in  conference  lvlseve   la conference sera le   5/23/2017 11:00:00votre code de verification est :Hn6hzpPs', 1, NULL, 'seen', '05/07/2017 19:36:23'),
(35, 'welcome to joine us in  conference  bdhcdhcvdchvdchvdhcd  la conference sera le   5/26/2017 11:00:00votre code de verification est :dKMY2OfV', 1, NULL, 'seen', '05/07/2017 19:36:48'),
(36, 'welcome to joine us in  conference  bdhcdhcvdchvdchvdhcd  la conference sera le   5/26/2017 11:00:00votre code de verification est :KmPEYo9k', 1, NULL, 'seen', '05/07/2017 19:37:30'),
(37, 'welcome to joine us in  conference  lvlseve   la conference sera le   5/23/2017 11:00:00votre code de verification est :HrrEUYzH', 1, NULL, 'seen', '05/07/2017 19:37:47'),
(38, 'welcome to joine us in  conference  bdhcdhcvdchvdchvdhcd  la conference sera le   5/26/2017 11:00:00votre code de verification est :r8m4OjEg', 1, NULL, 'seen', '05/07/2017 19:38:37'),
(39, 'welcome to joine us in  conference  lvlseve   la conference sera le   5/23/2017 11:00:00votre code de verification est :u8e1XZRq', 1, NULL, 'seen', '05/07/2017 19:39:19'),
(40, 'welcome to joine us in  conference  lvlseve   la conference sera le   5/23/2017 11:00:00votre code de verification est :7eOOBmvl', 1, NULL, 'seen', '05/07/2017 19:39:50'),
(41, 'welcome to joine us in  conference  bdhcdhcvdchvdchvdhcd  la conference sera le   5/26/2017 11:00:00votre code de verification est :bgm8BCKg', 1, NULL, 'seen', '05/07/2017 19:40:09'),
(42, 'welcome to joine us in  conference  lvlseve   la conference sera le   5/23/2017 11:00:00votre code de verification est :j4sKBsbD', 2, NULL, 'seen', '05/08/2017 00:01:53'),
(43, 'new training  test  valable jusqua\'a  06/08/2017 00:17:26', 1, NULL, 'seen', '05/08/2017 00:17:26'),
(44, 'new training  nombre_complexe  valable jusqua\'a  06/08/2017 00:18:35', 1, NULL, 'seen', '05/08/2017 00:18:35'),
(45, 'new training  nombre_complexe  valable jusqua\'a  06/08/2017 00:22:24', 1, NULL, 'seen', '05/08/2017 00:22:24'),
(46, 'welcome to joine us in  conference  lvlseve   la conference sera le   5/23/2017 11:00:00votre code de verification est :WfwYimay', 4, NULL, 'seen', '05/08/2017 00:27:17'),
(47, 'new training  nombre_complexe  valable jusqua\'a  06/08/2017 00:27:57', 4, NULL, 'seen', '05/08/2017 00:27:57'),
(48, 'welcome to joine us in  conference  bdhcdhcvdchvdchvdhcd  la conference sera le   5/26/2017 11:00:00votre code de verification est :Ji3ePjln', 1, NULL, 'seen', '05/08/2017 00:55:37'),
(49, 'Vous êtes les bienvenus dans  math1vous avez l\'acces jusqu\'à :05/14/2017 19:19:26', 1, NULL, 'seen', '05/11/2017 19:19:26'),
(50, 'Vous êtes les bienvenus dans  group   math1vous avez l\'acces jusqu\'à  05/14/2017 19:48:52', 5, NULL, 'seen', '05/11/2017 19:48:53'),
(51, 'new training  nombre_complexe  valable jusqua\'a  07/26/2017 18:50:12', 1, NULL, 'seen', '06/26/2017 18:50:12'),
(52, 'new training  nombre_complexe  valable jusqua\'a  07/26/2017 19:21:00', 1, NULL, 'seen', '06/26/2017 19:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `Paymentstorage`
--

CREATE TABLE `Paymentstorage` (
  `idPayment` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `teacherPhoneNumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `studentId` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT '1',
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(23) DEFAULT 'Student',
  `section` varchar(255) DEFAULT NULL,
  `urlPhoto` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`studentId`, `email`, `enabled`, `firstName`, `lastName`, `password`, `role`, `section`, `urlPhoto`, `username`) VALUES
(1, 'cf@sss', 1, 'server', 'ss', '123', 'Student', 'section_C', '/resources/img/avatar6.png', 'server'),
(2, 'c@hhh', 1, 'cheikh', 'sadbouh', '123', 'Student', 'section D', NULL, 'cheikh'),
(3, 'dd@www', 1, 'aaa', 'vfvfv', '123', 'Student', 'section A', NULL, 'c'),
(4, 'mkmk@dd', 1, 'vjfjv', 'vmfvmf', '123', 'Student', 'section D', NULL, 'java'),
(5, 'cd@ss', 1, 'asa', 'frfr', '123', 'Student', 'section_C', '/resources/img/avatar6.png', 'rt3');

-- --------------------------------------------------------

--
-- Table structure for table `StudentConferenceTemporary`
--

CREATE TABLE `StudentConferenceTemporary` (
  `id` int(11) NOT NULL,
  `phoneStudent` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `id_conference` int(11) DEFAULT NULL,
  `temp_student` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `StudentConferenceTemporary`
--

INSERT INTO `StudentConferenceTemporary` (`id`, `phoneStudent`, `price`, `id_conference`, `temp_student`) VALUES
(11, '23232323', '1000', 1, 1),
(14, '56666', '1000', 1, NULL),
(15, '56666', '1000', 1, NULL),
(16, '56666', '1000', 1, NULL),
(17, '55', '1000', 1, NULL),
(18, '89898', '1000', 1, NULL),
(19, '676767674', '1000', 1, NULL),
(20, '2323232323', '1000', 2, 1),
(21, '54584758854', '1000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `StudentsTrainings`
--

CREATE TABLE `StudentsTrainings` (
  `id` int(11) NOT NULL,
  `expired_data` varchar(255) DEFAULT NULL,
  `idTraining` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StudentsTrainings`
--

INSERT INTO `StudentsTrainings` (`id`, `expired_data`, `idTraining`, `user`) VALUES
(62, '05/21/2017 15:37:17', '5000', 'cheikh'),
(83, '05/21/2017 19:06:04', '5001', 'cheikh'),
(85, '05/21/2017 21:31:44', '5000', 'cheikh'),
(89, '06/08/2017 00:27:57', '5000', 'java'),
(90, '07/26/2017 18:50:12', '5000', 'server'),
(91, '07/26/2017 19:20:59', '5000', 'server');

-- --------------------------------------------------------

--
-- Table structure for table `StudentTrainingTemporary`
--

CREATE TABLE `StudentTrainingTemporary` (
  `id` int(11) NOT NULL,
  `idTraining` varchar(255) DEFAULT NULL,
  `phoneNumberStudent` varchar(255) DEFAULT NULL,
  `priceTraining` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StudentTrainingTemporary`
--

INSERT INTO `StudentTrainingTemporary` (`id`, `idTraining`, `phoneNumberStudent`, `priceTraining`, `user`) VALUES
(1, '5001', '5555', '1500', 'profmath'),
(6, '5000', 'cdcdcdcdc', '1500', 'profmath');

-- --------------------------------------------------------

--
-- Table structure for table `Teacher`
--

CREATE TABLE `Teacher` (
  `teacherId` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT '1',
  `firstName` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `poneNumber` varchar(255) DEFAULT NULL,
  `role` varchar(23) DEFAULT 'Teacher',
  `section` varchar(255) DEFAULT NULL,
  `urlPhoto` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Teacher`
--

INSERT INTO `Teacher` (`teacherId`, `email`, `enabled`, `firstName`, `item`, `lastName`, `password`, `poneNumber`, `role`, `section`, `urlPhoto`, `username`) VALUES
(23, 'ch@hhhh', 1, 'Mohamed ', 'mathematique', 'Salem', '123', '3456789', 'Teacher', 'section_C', '/resources/img/avatar1.png', 'profmath'),
(24, 'ghgh@hghg', 1, NULL, NULL, NULL, '12345', NULL, 'Teacher', NULL, NULL, 'profs');

-- --------------------------------------------------------

--
-- Table structure for table `Training`
--

CREATE TABLE `Training` (
  `idTraining` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `presentation_video` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_photo_poster` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Training`
--

INSERT INTO `Training` (`idTraining`, `name`, `presentation_video`, `price`, `type`, `url_photo_poster`, `teacher_id`) VALUES
(5000, 'nombre_complexe', NULL, 500, 'math', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 23),
(5001, 'test', NULL, 500, 'math', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 23);

-- --------------------------------------------------------

--
-- Table structure for table `Tutotable`
--

CREATE TABLE `Tutotable` (
  `idStudent` int(11) NOT NULL,
  `dateExpired` datetime DEFAULT NULL,
  `trainingId` tinyblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Video`
--

CREATE TABLE `Video` (
  `idVideo` int(11) NOT NULL,
  `dashUrl` varchar(255) DEFAULT NULL,
  `hlsUrl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url_photo_poster` varchar(255) DEFAULT NULL,
  `training_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Video`
--

INSERT INTO `Video` (`idVideo`, `dashUrl`, `hlsUrl`, `title`, `url_photo_poster`, `training_id`) VALUES
(1004, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'presentation', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5000),
(1005, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video5 ', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5000),
(1006, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video6 ', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5000),
(1010, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video10 ', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5000),
(1011, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'presentation', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5001),
(1012, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video1', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5001),
(1013, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video2', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5001),
(1014, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video3', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5001),
(1015, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video4', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5001),
(1016, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video5', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5001),
(1017, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video6 ', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5001),
(1018, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video7 ', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5001),
(1019, '/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd ', '/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8', 'video8', '/resources/formations/formation-math/nombre-complexe/presentation/card.png', 5001);

-- --------------------------------------------------------

--
-- Table structure for table `Visiotable`
--

CREATE TABLE `Visiotable` (
  `idStudent` int(11) NOT NULL,
  `sessionId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `VoteContent`
--

CREATE TABLE `VoteContent` (
  `id_vote_content` int(11) NOT NULL,
  `vote_content` longtext,
  `post_id` int(11) DEFAULT NULL,
  `result` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VoteContent`
--

INSERT INTO `VoteContent` (`id_vote_content`, `vote_content`, `post_id`, `result`) VALUES
(19, 'mvmfkvmkf', 97, 4),
(20, 'lvflvf,v,flv,gl', 97, 4),
(21, ',l,ll,', 97, 3),
(22, 'bhbhbh', 98, 3),
(23, 'dd', 134, 1),
(24, 'ssddd', 135, 1),
(25, 'fdf', 135, 1),
(26, 'rrrr', 135, 1);

-- --------------------------------------------------------

--
-- Table structure for table `VoteResult`
--

CREATE TABLE `VoteResult` (
  `id_vote_result` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `VoteContent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VoteResult`
--

INSERT INTO `VoteResult` (`id_vote_result`, `student_id`, `VoteContent_id`) VALUES
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 3, 19),
(23, 3, 20),
(24, 1, 22),
(25, 2, 19),
(26, 2, 20),
(27, 2, 21),
(28, 2, 22),
(29, 4, 19),
(30, 4, 20),
(31, 4, 21),
(32, 4, 22),
(33, 1, 24),
(34, 1, 25),
(35, 1, 26),
(36, 1, 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ConferenceJoinedStudent`
--
ALTER TABLE `ConferenceJoinedStudent`
  ADD PRIMARY KEY (`id_conferencejoined`),
  ADD KEY `FK_5wdyjf9nagk6o7xeekkthm58g` (`id_conference`),
  ADD KEY `FK_kss38fji9318aivlls31yub4s` (`id_student`);

--
-- Indexes for table `ConferenceTable`
--
ALTER TABLE `ConferenceTable`
  ADD PRIMARY KEY (`id_conference`),
  ADD KEY `FK_cgr7kfe14ma8oldivigj7r9vi` (`id_teacher`),
  ADD KEY `FK_jglnc1wc0hlsyu6ffd5w9u9ef` (`id_post_payment`);

--
-- Indexes for table `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`idGroups`);

--
-- Indexes for table `GroupsPosts`
--
ALTER TABLE `GroupsPosts`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `FK_lr29vwvls8ilti0i831ns3efr` (`id_group`),
  ADD KEY `FK_euyin405qpbhyuag1tbto6tem` (`id_student`),
  ADD KEY `FK_ipok07ydf9poewh6xrk9xjjaq` (`id_teacher`);

--
-- Indexes for table `GroupsPostsTemporary`
--
ALTER TABLE `GroupsPostsTemporary`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `FK_1f3kbuwwu9echy66qk3nxo27k` (`id_group`),
  ADD KEY `FK_dd9o3qk1wfgajnwguufdbr7yl` (`id_student`);

--
-- Indexes for table `GroupTemporaryStudent`
--
ALTER TABLE `GroupTemporaryStudent`
  ADD PRIMARY KEY (`idGroupTemporary`),
  ADD KEY `FK_oaip77wmhjjq6nbpvpw907quw` (`id_group`),
  ADD KEY `FK_a83g74h1qbcc1nh98g410u9la` (`id_student`);

--
-- Indexes for table `Homepage`
--
ALTER TABLE `Homepage`
  ADD PRIMARY KEY (`idHomePage`),
  ADD KEY `FK_pxjbjfu3ki37eth71l6tpmvow` (`teacher_id`);

--
-- Indexes for table `JoinedGroupStudent`
--
ALTER TABLE `JoinedGroupStudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_4d68o2perjv7jbxp4gx2alwdt` (`id_group`),
  ADD KEY `FK_5yseieu6eyiyqsb6brnjbbvau` (`id_student`);

--
-- Indexes for table `join_student_training`
--
ALTER TABLE `join_student_training`
  ADD KEY `FK_ap74kkm1i0rdt6q8sw7ah884h` (`studentId`),
  ADD KEY `FK_2tjisfcfud6efd3gshcxf45pq` (`idTraining`);

--
-- Indexes for table `join_teachers_groups`
--
ALTER TABLE `join_teachers_groups`
  ADD KEY `FK_oj8w2aficxrayb0ef1kjufbvq` (`idGroups`),
  ADD KEY `FK_lnwn0dxadlucw21k5fism61l4` (`teacherId`);

--
-- Indexes for table `Library`
--
ALTER TABLE `Library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Notification`
--
ALTER TABLE `Notification`
  ADD PRIMARY KEY (`idNotification`),
  ADD KEY `FK_hle9ymk96evmnibpspbycu1x5` (`student_id`),
  ADD KEY `FK_67sgvfxidkv5kui9bmlat02qe` (`teacher_id`);

--
-- Indexes for table `Paymentstorage`
--
ALTER TABLE `Paymentstorage`
  ADD PRIMARY KEY (`idPayment`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`studentId`);

--
-- Indexes for table `StudentConferenceTemporary`
--
ALTER TABLE `StudentConferenceTemporary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ry44s3rcf69vhg3931q4tu8j9` (`id_conference`),
  ADD KEY `FK_r1rmjyp4kuutho349ghitb4j2` (`temp_student`);

--
-- Indexes for table `StudentsTrainings`
--
ALTER TABLE `StudentsTrainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `StudentTrainingTemporary`
--
ALTER TABLE `StudentTrainingTemporary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Teacher`
--
ALTER TABLE `Teacher`
  ADD PRIMARY KEY (`teacherId`);

--
-- Indexes for table `Training`
--
ALTER TABLE `Training`
  ADD PRIMARY KEY (`idTraining`),
  ADD KEY `FK_8e9e5hq9voxw9huysi1rowfsn` (`teacher_id`);

--
-- Indexes for table `Tutotable`
--
ALTER TABLE `Tutotable`
  ADD PRIMARY KEY (`idStudent`);

--
-- Indexes for table `Video`
--
ALTER TABLE `Video`
  ADD PRIMARY KEY (`idVideo`),
  ADD KEY `FK_budkvp1wysmguquvoj3w4tsu` (`training_id`);

--
-- Indexes for table `Visiotable`
--
ALTER TABLE `Visiotable`
  ADD PRIMARY KEY (`idStudent`);

--
-- Indexes for table `VoteContent`
--
ALTER TABLE `VoteContent`
  ADD PRIMARY KEY (`id_vote_content`),
  ADD KEY `FK_sogeant59rvo1wjb966m0q4d0` (`post_id`);

--
-- Indexes for table `VoteResult`
--
ALTER TABLE `VoteResult`
  ADD PRIMARY KEY (`id_vote_result`),
  ADD KEY `FK_6gniv69b7sltdrndaqooy1fad` (`student_id`),
  ADD KEY `FK_f7gdwxfk51y4tjdqckwil6qcg` (`VoteContent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ConferenceJoinedStudent`
--
ALTER TABLE `ConferenceJoinedStudent`
  MODIFY `id_conferencejoined` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ConferenceTable`
--
ALTER TABLE `ConferenceTable`
  MODIFY `id_conference` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Groups`
--
ALTER TABLE `Groups`
  MODIFY `idGroups` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `GroupsPosts`
--
ALTER TABLE `GroupsPosts`
  MODIFY `idpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `GroupsPostsTemporary`
--
ALTER TABLE `GroupsPostsTemporary`
  MODIFY `idpost` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GroupTemporaryStudent`
--
ALTER TABLE `GroupTemporaryStudent`
  MODIFY `idGroupTemporary` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Homepage`
--
ALTER TABLE `Homepage`
  MODIFY `idHomePage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `JoinedGroupStudent`
--
ALTER TABLE `JoinedGroupStudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Library`
--
ALTER TABLE `Library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Notification`
--
ALTER TABLE `Notification`
  MODIFY `idNotification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `Paymentstorage`
--
ALTER TABLE `Paymentstorage`
  MODIFY `idPayment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Student`
--
ALTER TABLE `Student`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `StudentConferenceTemporary`
--
ALTER TABLE `StudentConferenceTemporary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `StudentsTrainings`
--
ALTER TABLE `StudentsTrainings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `StudentTrainingTemporary`
--
ALTER TABLE `StudentTrainingTemporary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Teacher`
--
ALTER TABLE `Teacher`
  MODIFY `teacherId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `Training`
--
ALTER TABLE `Training`
  MODIFY `idTraining` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5002;
--
-- AUTO_INCREMENT for table `Tutotable`
--
ALTER TABLE `Tutotable`
  MODIFY `idStudent` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Video`
--
ALTER TABLE `Video`
  MODIFY `idVideo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;
--
-- AUTO_INCREMENT for table `Visiotable`
--
ALTER TABLE `Visiotable`
  MODIFY `idStudent` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VoteContent`
--
ALTER TABLE `VoteContent`
  MODIFY `id_vote_content` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `VoteResult`
--
ALTER TABLE `VoteResult`
  MODIFY `id_vote_result` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ConferenceJoinedStudent`
--
ALTER TABLE `ConferenceJoinedStudent`
  ADD CONSTRAINT `FK_5wdyjf9nagk6o7xeekkthm58g` FOREIGN KEY (`id_conference`) REFERENCES `ConferenceTable` (`id_conference`),
  ADD CONSTRAINT `FK_kss38fji9318aivlls31yub4s` FOREIGN KEY (`id_student`) REFERENCES `Student` (`studentId`);

--
-- Constraints for table `ConferenceTable`
--
ALTER TABLE `ConferenceTable`
  ADD CONSTRAINT `FK_cgr7kfe14ma8oldivigj7r9vi` FOREIGN KEY (`id_teacher`) REFERENCES `Teacher` (`teacherId`),
  ADD CONSTRAINT `FK_jglnc1wc0hlsyu6ffd5w9u9ef` FOREIGN KEY (`id_post_payment`) REFERENCES `Homepage` (`idHomePage`);

--
-- Constraints for table `GroupsPosts`
--
ALTER TABLE `GroupsPosts`
  ADD CONSTRAINT `FK_euyin405qpbhyuag1tbto6tem` FOREIGN KEY (`id_student`) REFERENCES `Student` (`studentId`),
  ADD CONSTRAINT `FK_ipok07ydf9poewh6xrk9xjjaq` FOREIGN KEY (`id_teacher`) REFERENCES `Teacher` (`teacherId`),
  ADD CONSTRAINT `FK_lr29vwvls8ilti0i831ns3efr` FOREIGN KEY (`id_group`) REFERENCES `Groups` (`idGroups`);

--
-- Constraints for table `GroupsPostsTemporary`
--
ALTER TABLE `GroupsPostsTemporary`
  ADD CONSTRAINT `FK_1f3kbuwwu9echy66qk3nxo27k` FOREIGN KEY (`id_group`) REFERENCES `Groups` (`idGroups`),
  ADD CONSTRAINT `FK_dd9o3qk1wfgajnwguufdbr7yl` FOREIGN KEY (`id_student`) REFERENCES `Student` (`studentId`);

--
-- Constraints for table `GroupTemporaryStudent`
--
ALTER TABLE `GroupTemporaryStudent`
  ADD CONSTRAINT `FK_a83g74h1qbcc1nh98g410u9la` FOREIGN KEY (`id_student`) REFERENCES `Student` (`studentId`),
  ADD CONSTRAINT `FK_oaip77wmhjjq6nbpvpw907quw` FOREIGN KEY (`id_group`) REFERENCES `Groups` (`idGroups`);

--
-- Constraints for table `Homepage`
--
ALTER TABLE `Homepage`
  ADD CONSTRAINT `FK_pxjbjfu3ki37eth71l6tpmvow` FOREIGN KEY (`teacher_id`) REFERENCES `Teacher` (`teacherId`);

--
-- Constraints for table `JoinedGroupStudent`
--
ALTER TABLE `JoinedGroupStudent`
  ADD CONSTRAINT `FK_4d68o2perjv7jbxp4gx2alwdt` FOREIGN KEY (`id_group`) REFERENCES `Groups` (`idGroups`),
  ADD CONSTRAINT `FK_5yseieu6eyiyqsb6brnjbbvau` FOREIGN KEY (`id_student`) REFERENCES `Student` (`studentId`);

--
-- Constraints for table `join_student_training`
--
ALTER TABLE `join_student_training`
  ADD CONSTRAINT `FK_2tjisfcfud6efd3gshcxf45pq` FOREIGN KEY (`idTraining`) REFERENCES `Training` (`idTraining`),
  ADD CONSTRAINT `FK_ap74kkm1i0rdt6q8sw7ah884h` FOREIGN KEY (`studentId`) REFERENCES `Student` (`studentId`);

--
-- Constraints for table `join_teachers_groups`
--
ALTER TABLE `join_teachers_groups`
  ADD CONSTRAINT `FK_lnwn0dxadlucw21k5fism61l4` FOREIGN KEY (`teacherId`) REFERENCES `Teacher` (`teacherId`),
  ADD CONSTRAINT `FK_oj8w2aficxrayb0ef1kjufbvq` FOREIGN KEY (`idGroups`) REFERENCES `Groups` (`idGroups`);

--
-- Constraints for table `Notification`
--
ALTER TABLE `Notification`
  ADD CONSTRAINT `FK_67sgvfxidkv5kui9bmlat02qe` FOREIGN KEY (`teacher_id`) REFERENCES `Teacher` (`teacherId`),
  ADD CONSTRAINT `FK_hle9ymk96evmnibpspbycu1x5` FOREIGN KEY (`student_id`) REFERENCES `Student` (`studentId`);

--
-- Constraints for table `StudentConferenceTemporary`
--
ALTER TABLE `StudentConferenceTemporary`
  ADD CONSTRAINT `FK_r1rmjyp4kuutho349ghitb4j2` FOREIGN KEY (`temp_student`) REFERENCES `Student` (`studentId`),
  ADD CONSTRAINT `FK_ry44s3rcf69vhg3931q4tu8j9` FOREIGN KEY (`id_conference`) REFERENCES `ConferenceTable` (`id_conference`);

--
-- Constraints for table `Training`
--
ALTER TABLE `Training`
  ADD CONSTRAINT `FK_8e9e5hq9voxw9huysi1rowfsn` FOREIGN KEY (`teacher_id`) REFERENCES `Teacher` (`teacherId`);

--
-- Constraints for table `Video`
--
ALTER TABLE `Video`
  ADD CONSTRAINT `FK_budkvp1wysmguquvoj3w4tsu` FOREIGN KEY (`training_id`) REFERENCES `Training` (`idTraining`);

--
-- Constraints for table `VoteContent`
--
ALTER TABLE `VoteContent`
  ADD CONSTRAINT `FK_sogeant59rvo1wjb966m0q4d0` FOREIGN KEY (`post_id`) REFERENCES `Homepage` (`idHomePage`);

--
-- Constraints for table `VoteResult`
--
ALTER TABLE `VoteResult`
  ADD CONSTRAINT `FK_6gniv69b7sltdrndaqooy1fad` FOREIGN KEY (`student_id`) REFERENCES `Student` (`studentId`),
  ADD CONSTRAINT `FK_f7gdwxfk51y4tjdqckwil6qcg` FOREIGN KEY (`VoteContent_id`) REFERENCES `VoteContent` (`id_vote_content`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
