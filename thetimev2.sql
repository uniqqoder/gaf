-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 08:25 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytimetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin`) VALUES
(6, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `created`) VALUES
(1, 'hello bro', '0000-00-00 00:00:00'),
(2, 'how have you been there is no class today', '0000-00-00 00:00:00'),
(3, 'Mr adeyemi lecturer who take com 333 is not around now', '2024-10-07 12:33:02'),
(4, 'we are working on that ', '2024-10-07 12:41:47'),
(5, 'we we we are the best in the world we give all Glory to Almighty ALLAH for his mercies and blessings upon us Alhamdullilahi Robil Alamin with out him their is no us and am using this medium to annouce to us that congratulations the anouncement group is ready to go ', '2024-10-15 07:28:56'),
(6, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '2024-10-15 07:31:31'),
(7, 'll student come\r\n', '2024-10-17 13:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `message_id` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `user_id`, `message_id`, `message`, `date`) VALUES
(1, '14', 'msg67056374216f5', 'hello students', '2024-10-08 16:53:08'),
(2, '14', 'msg6705640f9babf', 'todays class is canceled', '2024-10-08 16:55:43'),
(3, '13', 'msg6705645d996c7', 'hi', '2024-10-08 16:57:01'),
(4, '16', 'msg6705660d198c9', 'oyo state we are', '2024-10-08 17:04:13'),
(5, '16', 'msg670566ff93464', 'hi my name is ebuka', '2024-10-08 17:08:15'),
(6, '13', 'msg67061b5f87c2c', 'hi bro', '2024-10-09 05:57:51'),
(7, '13', 'msg6706238024e9c', 'ok', '2024-10-09 06:32:32'),
(8, '13', 'msg6706239c0482a', 'hello', '2024-10-09 06:33:00'),
(9, '13', 'msg6706255fd1814', 'another one', '2024-10-09 06:40:31'),
(10, '13', 'msg67062594d72fc', 'okay', '2024-10-09 06:41:24'),
(11, '13', 'msg670627c79c2aa', 'we do this again', '2024-10-09 06:50:47'),
(12, '13', 'msg6706637982e9a', 'hello my people welcome to stephotec to ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2024-10-09 11:05:29'),
(13, '13', 'msg670663ee665fa', 'if oga has come you are going to collect vs code', '2024-10-09 11:07:26'),
(14, '13', 'msg670664862c567', 'ok', '2024-10-09 11:09:58'),
(15, '13', 'msg670664cb5cb39', 'hi', '2024-10-09 11:11:07'),
(16, '13', 'msg6706657036532', 'hello ini', '2024-10-09 11:13:52'),
(17, '14', 'msg6706671729f16', 'hello', '2024-10-09 11:20:55'),
(18, '14', 'msg6706678b0cd51', 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', '2024-10-09 11:22:51'),
(19, '14', 'msg67066976e681f', 'lorem lorem lorem \nlorem lorem lorem \nlorem lorem lorem\nlorem lorem lorem', '2024-10-09 11:31:02'),
(20, '14', 'msg670669bb1589c', 'lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem\nlorem lerem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem\nlorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem\n', '2024-10-09 11:32:11'),
(21, '14', 'msg670669de81b89', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2024-10-09 11:32:46'),
(22, '14', 'msg67066a0c47d63', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '2024-10-09 11:33:32'),
(23, '14', 'msg67066a5b9a3ac', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\nbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb ', '2024-10-09 11:34:51'),
(24, '14', 'msg67066ed7e5bbc', 'hi every one \ntoday is another day to make \na different we should try to \ndo something good today\nand also help others that are less\nprivellege doing this we will all \nprogess in our endeavous and will\nmake a great team ', '2024-10-09 11:53:59'),
(25, '13', 'msg670778da4ec91', 'hello', '2024-10-10 06:48:58'),
(26, '13', 'msg67077a77981b4', 'STA404 has been shifted to 8:15 AM', '2024-10-10 06:55:51'),
(27, '13', 'msg670782fef0f9b', 'another message  again', '2024-10-10 07:32:14'),
(28, '13', 'msg6707ca79d3e9d', ' any observation ', '2024-10-10 12:37:13'),
(29, '13', 'msg6708c69f77470', 'ok bro', '2024-10-11 06:33:03'),
(30, '13', 'msg6708c6eedaa48', 'how far bro', '2024-10-11 06:34:22'),
(31, '13', 'msg670d14135315c', 'hi', '2024-10-14 12:52:35'),
(32, '13', 'msg670d143803248', 'wssu', '2024-10-14 12:53:12'),
(33, '19', 'msg67110c167e924', 'hello house', '2024-10-17 13:07:34'),
(34, '19', 'msg67110c24f3200', 'm in just now', '2024-10-17 13:07:48'),
(35, '13', 'msg67110c6868d40', 'hey stef', '2024-10-17 13:08:56'),
(36, '13', 'msg67110cb6d6322', 'hello house', '2024-10-17 13:10:14'),
(37, '13', 'msg67110ccba46f7', 'house', '2024-10-17 13:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE `notify` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `message_id` int(11) NOT NULL,
  `reader` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `user_id`, `message_id`, `reader`, `created`) VALUES
(1, '13', 1, 1, '2024-10-07 10:54:25'),
(2, '14', 1, 1, '2024-10-07 10:54:25'),
(3, '15', 1, 0, '2024-10-07 10:54:25'),
(4, '16', 1, 0, '2024-10-07 10:54:25'),
(5, '17', 1, 0, '2024-10-07 10:54:25'),
(6, '13', 2, 1, '2024-10-07 10:54:56'),
(7, '14', 2, 1, '2024-10-07 10:54:56'),
(8, '15', 2, 0, '2024-10-07 10:54:56'),
(9, '16', 2, 0, '2024-10-07 10:54:56'),
(10, '17', 2, 0, '2024-10-07 10:54:56'),
(11, '13', 3, 1, '2024-10-07 12:33:02'),
(12, '14', 3, 1, '2024-10-07 12:33:02'),
(13, '15', 3, 0, '2024-10-07 12:33:02'),
(14, '16', 3, 0, '2024-10-07 12:33:02'),
(15, '17', 3, 0, '2024-10-07 12:33:02'),
(16, '13', 4, 1, '2024-10-07 12:41:47'),
(17, '14', 4, 0, '2024-10-07 12:41:47'),
(18, '15', 4, 0, '2024-10-07 12:41:47'),
(19, '16', 4, 0, '2024-10-07 12:41:47'),
(20, '17', 4, 0, '2024-10-07 12:41:47'),
(21, '13', 5, 1, '2024-10-15 07:28:56'),
(22, '14', 5, 0, '2024-10-15 07:28:56'),
(23, '15', 5, 0, '2024-10-15 07:28:56'),
(24, '16', 5, 0, '2024-10-15 07:28:56'),
(25, '17', 5, 0, '2024-10-15 07:28:56'),
(26, '18', 5, 0, '2024-10-15 07:28:56'),
(27, '13', 6, 1, '2024-10-15 07:31:31'),
(28, '14', 6, 0, '2024-10-15 07:31:31'),
(29, '15', 6, 0, '2024-10-15 07:31:31'),
(30, '16', 6, 0, '2024-10-15 07:31:31'),
(31, '17', 6, 0, '2024-10-15 07:31:31'),
(32, '18', 6, 0, '2024-10-15 07:31:31'),
(33, '13', 7, 1, '2024-10-17 13:03:28'),
(34, '14', 7, 0, '2024-10-17 13:03:28'),
(35, '15', 7, 0, '2024-10-17 13:03:28'),
(36, '16', 7, 0, '2024-10-17 13:03:28'),
(37, '17', 7, 0, '2024-10-17 13:03:28'),
(38, '18', 7, 0, '2024-10-17 13:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `notifymsg`
--

CREATE TABLE `notifymsg` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `message_id` varchar(100) NOT NULL,
  `reader` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifymsg`
--

INSERT INTO `notifymsg` (`id`, `user_id`, `message_id`, `reader`, `created`) VALUES
(1, '13', '2', 1, '2024-10-08 16:55:43'),
(2, '14', '2', 1, '2024-10-08 16:55:43'),
(3, '15', '2', 0, '2024-10-08 16:55:43'),
(4, '16', '2', 1, '2024-10-08 16:55:43'),
(5, '17', '2', 0, '2024-10-08 16:55:43'),
(6, '13', '3', 1, '2024-10-08 16:57:01'),
(7, '14', '3', 1, '2024-10-08 16:57:01'),
(8, '15', '3', 0, '2024-10-08 16:57:01'),
(9, '16', '3', 1, '2024-10-08 16:57:01'),
(10, '17', '3', 0, '2024-10-08 16:57:01'),
(11, '13', '4', 1, '2024-10-08 17:04:13'),
(12, '14', '4', 1, '2024-10-08 17:04:13'),
(13, '15', '4', 0, '2024-10-08 17:04:13'),
(14, '16', '4', 1, '2024-10-08 17:04:13'),
(15, '17', '4', 0, '2024-10-08 17:04:13'),
(16, '13', '5', 1, '2024-10-08 17:08:15'),
(17, '14', '5', 1, '2024-10-08 17:08:15'),
(18, '15', '5', 0, '2024-10-08 17:08:15'),
(19, '16', '5', 1, '2024-10-08 17:08:15'),
(20, '17', '5', 0, '2024-10-08 17:08:15'),
(21, '13', '6', 1, '2024-10-09 05:57:51'),
(22, '14', '6', 1, '2024-10-09 05:57:51'),
(23, '15', '6', 0, '2024-10-09 05:57:51'),
(24, '16', '6', 0, '2024-10-09 05:57:51'),
(25, '17', '6', 0, '2024-10-09 05:57:51'),
(26, '13', '7', 1, '2024-10-09 06:32:32'),
(27, '14', '7', 1, '2024-10-09 06:32:32'),
(28, '15', '7', 0, '2024-10-09 06:32:32'),
(29, '16', '7', 0, '2024-10-09 06:32:32'),
(30, '17', '7', 0, '2024-10-09 06:32:32'),
(31, '13', '8', 1, '2024-10-09 06:33:00'),
(32, '14', '8', 1, '2024-10-09 06:33:00'),
(33, '15', '8', 0, '2024-10-09 06:33:00'),
(34, '16', '8', 0, '2024-10-09 06:33:00'),
(35, '17', '8', 0, '2024-10-09 06:33:00'),
(36, '13', '9', 1, '2024-10-09 06:40:31'),
(37, '14', '9', 1, '2024-10-09 06:40:31'),
(38, '15', '9', 0, '2024-10-09 06:40:31'),
(39, '16', '9', 0, '2024-10-09 06:40:31'),
(40, '17', '9', 0, '2024-10-09 06:40:31'),
(41, '13', '10', 1, '2024-10-09 06:41:24'),
(42, '14', '10', 1, '2024-10-09 06:41:24'),
(43, '15', '10', 0, '2024-10-09 06:41:24'),
(44, '16', '10', 0, '2024-10-09 06:41:24'),
(45, '17', '10', 0, '2024-10-09 06:41:24'),
(46, '13', '11', 1, '2024-10-09 06:50:47'),
(47, '14', '11', 1, '2024-10-09 06:50:47'),
(48, '15', '11', 0, '2024-10-09 06:50:47'),
(49, '16', '11', 0, '2024-10-09 06:50:47'),
(50, '17', '11', 0, '2024-10-09 06:50:47'),
(51, '13', '12', 1, '2024-10-09 11:05:29'),
(52, '14', '12', 1, '2024-10-09 11:05:29'),
(53, '15', '12', 0, '2024-10-09 11:05:29'),
(54, '16', '12', 0, '2024-10-09 11:05:29'),
(55, '17', '12', 0, '2024-10-09 11:05:29'),
(56, '13', '13', 1, '2024-10-09 11:07:26'),
(57, '14', '13', 1, '2024-10-09 11:07:26'),
(58, '15', '13', 0, '2024-10-09 11:07:26'),
(59, '16', '13', 0, '2024-10-09 11:07:26'),
(60, '17', '13', 0, '2024-10-09 11:07:26'),
(61, '13', '14', 1, '2024-10-09 11:09:58'),
(62, '14', '14', 1, '2024-10-09 11:09:58'),
(63, '15', '14', 0, '2024-10-09 11:09:58'),
(64, '16', '14', 0, '2024-10-09 11:09:58'),
(65, '17', '14', 0, '2024-10-09 11:09:58'),
(66, '13', '15', 1, '2024-10-09 11:11:07'),
(67, '14', '15', 1, '2024-10-09 11:11:07'),
(68, '15', '15', 0, '2024-10-09 11:11:07'),
(69, '16', '15', 0, '2024-10-09 11:11:07'),
(70, '17', '15', 0, '2024-10-09 11:11:07'),
(71, '13', '16', 1, '2024-10-09 11:13:52'),
(72, '14', '16', 1, '2024-10-09 11:13:52'),
(73, '15', '16', 0, '2024-10-09 11:13:52'),
(74, '16', '16', 0, '2024-10-09 11:13:52'),
(75, '17', '16', 0, '2024-10-09 11:13:52'),
(76, '13', '17', 1, '2024-10-09 11:20:55'),
(77, '14', '17', 1, '2024-10-09 11:20:55'),
(78, '15', '17', 0, '2024-10-09 11:20:55'),
(79, '16', '17', 0, '2024-10-09 11:20:55'),
(80, '17', '17', 0, '2024-10-09 11:20:55'),
(81, '13', '18', 1, '2024-10-09 11:22:51'),
(82, '14', '18', 1, '2024-10-09 11:22:51'),
(83, '15', '18', 0, '2024-10-09 11:22:51'),
(84, '16', '18', 0, '2024-10-09 11:22:51'),
(85, '17', '18', 0, '2024-10-09 11:22:51'),
(86, '13', '19', 1, '2024-10-09 11:31:02'),
(87, '14', '19', 1, '2024-10-09 11:31:02'),
(88, '15', '19', 0, '2024-10-09 11:31:02'),
(89, '16', '19', 0, '2024-10-09 11:31:02'),
(90, '17', '19', 0, '2024-10-09 11:31:02'),
(91, '13', '20', 1, '2024-10-09 11:32:11'),
(92, '14', '20', 1, '2024-10-09 11:32:11'),
(93, '15', '20', 0, '2024-10-09 11:32:11'),
(94, '16', '20', 0, '2024-10-09 11:32:11'),
(95, '17', '20', 0, '2024-10-09 11:32:11'),
(96, '13', '21', 1, '2024-10-09 11:32:46'),
(97, '14', '21', 1, '2024-10-09 11:32:46'),
(98, '15', '21', 0, '2024-10-09 11:32:46'),
(99, '16', '21', 0, '2024-10-09 11:32:46'),
(100, '17', '21', 0, '2024-10-09 11:32:46'),
(101, '13', '22', 1, '2024-10-09 11:33:32'),
(102, '14', '22', 1, '2024-10-09 11:33:32'),
(103, '15', '22', 0, '2024-10-09 11:33:32'),
(104, '16', '22', 0, '2024-10-09 11:33:32'),
(105, '17', '22', 0, '2024-10-09 11:33:32'),
(106, '13', '23', 1, '2024-10-09 11:34:51'),
(107, '14', '23', 1, '2024-10-09 11:34:51'),
(108, '15', '23', 0, '2024-10-09 11:34:51'),
(109, '16', '23', 0, '2024-10-09 11:34:51'),
(110, '17', '23', 0, '2024-10-09 11:34:51'),
(111, '13', '24', 1, '2024-10-09 11:53:59'),
(112, '14', '24', 1, '2024-10-09 11:53:59'),
(113, '15', '24', 0, '2024-10-09 11:53:59'),
(114, '16', '24', 0, '2024-10-09 11:53:59'),
(115, '17', '24', 0, '2024-10-09 11:53:59'),
(116, '13', '25', 1, '2024-10-10 06:48:58'),
(117, '14', '25', 0, '2024-10-10 06:48:58'),
(118, '15', '25', 0, '2024-10-10 06:48:58'),
(119, '16', '25', 0, '2024-10-10 06:48:58'),
(120, '17', '25', 0, '2024-10-10 06:48:58'),
(121, '13', '26', 1, '2024-10-10 06:55:51'),
(122, '14', '26', 0, '2024-10-10 06:55:51'),
(123, '15', '26', 0, '2024-10-10 06:55:51'),
(124, '16', '26', 0, '2024-10-10 06:55:51'),
(125, '17', '26', 0, '2024-10-10 06:55:51'),
(126, '13', '27', 1, '2024-10-10 07:32:14'),
(127, '14', '27', 0, '2024-10-10 07:32:15'),
(128, '15', '27', 0, '2024-10-10 07:32:15'),
(129, '16', '27', 0, '2024-10-10 07:32:15'),
(130, '17', '27', 0, '2024-10-10 07:32:15'),
(131, '13', '28', 1, '2024-10-10 12:37:13'),
(132, '14', '28', 0, '2024-10-10 12:37:13'),
(133, '15', '28', 0, '2024-10-10 12:37:13'),
(134, '16', '28', 0, '2024-10-10 12:37:13'),
(135, '17', '28', 0, '2024-10-10 12:37:13'),
(136, '13', '29', 1, '2024-10-11 06:33:03'),
(137, '14', '29', 0, '2024-10-11 06:33:03'),
(138, '15', '29', 0, '2024-10-11 06:33:03'),
(139, '16', '29', 0, '2024-10-11 06:33:03'),
(140, '17', '29', 0, '2024-10-11 06:33:03'),
(141, '13', '30', 1, '2024-10-11 06:34:22'),
(142, '14', '30', 0, '2024-10-11 06:34:22'),
(143, '15', '30', 0, '2024-10-11 06:34:22'),
(144, '16', '30', 0, '2024-10-11 06:34:22'),
(145, '17', '30', 0, '2024-10-11 06:34:22'),
(146, '13', '31', 1, '2024-10-14 12:52:35'),
(147, '14', '31', 0, '2024-10-14 12:52:35'),
(148, '15', '31', 0, '2024-10-14 12:52:35'),
(149, '16', '31', 0, '2024-10-14 12:52:35'),
(150, '17', '31', 0, '2024-10-14 12:52:35'),
(151, '13', '32', 1, '2024-10-14 12:53:12'),
(152, '14', '32', 0, '2024-10-14 12:53:12'),
(153, '15', '32', 0, '2024-10-14 12:53:12'),
(154, '16', '32', 0, '2024-10-14 12:53:12'),
(155, '17', '32', 0, '2024-10-14 12:53:12'),
(156, '13', '33', 1, '2024-10-17 13:07:34'),
(157, '14', '33', 0, '2024-10-17 13:07:34'),
(158, '15', '33', 0, '2024-10-17 13:07:34'),
(159, '16', '33', 0, '2024-10-17 13:07:34'),
(160, '17', '33', 0, '2024-10-17 13:07:34'),
(161, '18', '33', 0, '2024-10-17 13:07:34'),
(162, '19', '33', 1, '2024-10-17 13:07:34'),
(163, '13', '34', 1, '2024-10-17 13:07:49'),
(164, '14', '34', 0, '2024-10-17 13:07:49'),
(165, '15', '34', 0, '2024-10-17 13:07:49'),
(166, '16', '34', 0, '2024-10-17 13:07:49'),
(167, '17', '34', 0, '2024-10-17 13:07:49'),
(168, '18', '34', 0, '2024-10-17 13:07:49'),
(169, '19', '34', 1, '2024-10-17 13:07:49'),
(170, '13', '35', 1, '2024-10-17 13:08:56'),
(171, '14', '35', 0, '2024-10-17 13:08:56'),
(172, '15', '35', 0, '2024-10-17 13:08:56'),
(173, '16', '35', 0, '2024-10-17 13:08:56'),
(174, '17', '35', 0, '2024-10-17 13:08:56'),
(175, '18', '35', 0, '2024-10-17 13:08:56'),
(176, '19', '35', 1, '2024-10-17 13:08:56'),
(177, '13', '36', 0, '2024-10-17 13:10:14'),
(178, '14', '36', 0, '2024-10-17 13:10:14'),
(179, '15', '36', 0, '2024-10-17 13:10:14'),
(180, '16', '36', 0, '2024-10-17 13:10:14'),
(181, '17', '36', 0, '2024-10-17 13:10:14'),
(182, '18', '36', 0, '2024-10-17 13:10:14'),
(183, '19', '36', 1, '2024-10-17 13:10:14'),
(184, '13', '37', 0, '2024-10-17 13:10:35'),
(185, '14', '37', 0, '2024-10-17 13:10:35'),
(186, '15', '37', 0, '2024-10-17 13:10:35'),
(187, '16', '37', 0, '2024-10-17 13:10:35'),
(188, '17', '37', 0, '2024-10-17 13:10:35'),
(189, '18', '37', 0, '2024-10-17 13:10:35'),
(190, '19', '37', 1, '2024-10-17 13:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `day` varchar(30) NOT NULL,
  `ccode` varchar(50) NOT NULL,
  `ctitle` varchar(200) NOT NULL,
  `lecturer` varchar(200) NOT NULL,
  `venue` varchar(200) NOT NULL,
  `time` varchar(100) NOT NULL,
  `mintime` varchar(5) NOT NULL,
  `maxtime` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `day`, `ccode`, `ctitle`, `lecturer`, `venue`, `time`, `mintime`, `maxtime`) VALUES
(1, 'Monday', 'COM404', 'intro to computer', 'prof T.0 olawale', 'Festus Shed', '8:00AM - 9:00AM', '8', '9'),
(2, 'Monday', 'COM323', 'networking and system planning', 'Mr Ademola Lukmoon', 'Classroom 2', '9:00AM - 10:00AM', '9', '10'),
(3, 'Monday', 'COM103', 'Basic Electronics Device', 'Eng Ogunmodede', 'main hall', '10:00AM - 11:00AM', '10', '11'),
(4, 'Monday', 'COM 202', 'Cryptography', 'Mrs Odekina Precious', 'computer lab', '11:00AM - 12:00PM', '11', '12'),
(5, 'Monday', 'STA 333', 'statistic and linear Computing', 'Mrs adeola Yusuf', 'st Joshua Hall', '12:00PM - 1:00PM', '12', '13'),
(7, 'Monday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '2:00PM - 3:00PM', '14', '15'),
(8, 'Monday', 'COM 405', 'computer Technology', 'Dr Olayemi T.0', 'classroom 101', '3:00PM - 4:00PM', '15', '16'),
(9, 'Monday', 'COM 500', 'computer Generations', 'Mrs blessing G.0', 'shed 2', '4:00PM-5:00PM', '16', '17'),
(10, 'Tuesday', 'COM 500', 'computer Generations', 'Mrs blessing G.0', 'shed 2', '8:00PM-9:00PM', '8', '9'),
(11, 'Tuesday', 'GNS419', 'Comprehensive Speaking and Gramtical functions', 'Mr Basey Adeyemi', 'physics lab', '9:00AM - 10:00AM', '9', '10'),
(12, 'Tuesday', 'STA 333', 'statistic and linear Computing', 'Mrs adeola Yusuf', 'st Joshua Hall', '10:00AM - 11:00AM', '10', '11'),
(13, 'Tuesday', 'COM 202', 'Cryptography', 'Mrs Odekina Precious', 'computer lab', '11:00AM - 12:00PM', '11', '12'),
(14, 'Tuesday', 'COM103', 'Basic Electronics Device', 'Eng Ogunmodede', 'main hall', '12:00PM - 1:00PM', '12', '13'),
(16, 'Tuesday', 'COM404', 'intro to computer', 'prof T.0 olawale', 'Festus Shed', '2:00PM - 3:00PM', '14', '15'),
(17, 'Tuesday', 'COM323', 'networking and system planning', 'Mr Ademola Lukmoon', 'Classroom 2', '3:00PM - 4:00PM', '15', '16'),
(18, 'Tuesday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '4:00PM - 5:00PM', '16', '17'),
(19, 'Wednesday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '8:00AM - 9:00AM', '8', '9'),
(20, 'Wednesday', 'STA 404', 'Cryptography', 'Mrs Odekina Precious', 'computer lab', '9:00AM - 10:00PM', '9', '10'),
(21, 'Wednesday', 'GNS300', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '10:00AM - 11:00AM', '10', '11'),
(22, 'Wednesday', 'GNS 300', 'Technical English and Grammar', 'Mrs Odekina Precious', 'computer lab', '11:00AM - 12:00PM', '11', '12'),
(23, 'Wednesday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '12:00PM - 1:00PM', '12', '13'),
(25, 'Wednesday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '2:00PM - 3:00PM', '14', '15'),
(26, 'Wednesday', 'COM 202', 'Cryptography', 'Mrs Odekina Precious', 'computer lab', '3:00PM - 4:00PM', '15', '16'),
(27, 'Wednesday', 'CSC 400', 'Cryptography', 'Mrs Odekina Precious', 'computer lab', '4:00PM - 5:00PM', '16', '17'),
(28, 'Thursday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '8:00AM - 9:00AM', '8', '9'),
(29, 'Thursday', 'COM 414', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '9:00AM - 10:00AM', '9', '10'),
(30, 'Thursday', 'GNS 434', 'probability and statistic ', 'prof adebisi johnson', 'classroom 32', '10:00AM -11:00AM', '10', '11'),
(31, 'Thursday', 'COM 404', 'Computer Technology', 'prof adebisi johnson', 'classroom 202', '11:00AM - 12:00PM', '11', '12'),
(32, 'Thursday', 'GNS 420', 'Technicl English', 'prof adebisi johnson', 'classroom 202', '12:00PM - 1:00PM', '12', '13'),
(34, 'Thursday', 'STA 454', 'introduction to algebra ', 'prof adebisi johnson', 'classroom 202', '2:00PM - 3:00PM', '14', '15'),
(35, 'Thursday', 'COM 400', 'Computer Architecture', 'prof adeyemi johnson', 'classroom 202', '3:00PM - 4:00PM', '15', '16'),
(36, 'Thursday', 'COM 400', 'Computer Architecture', 'prof adebisi johnson', 'classroom 202', '4:00PM - 5:00PM', '16', '17'),
(37, 'Friday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '8:00AM - 9:00AM', '8', '9'),
(38, 'Friday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '9:00AM - 10:00AM', '9', '10'),
(39, 'Friday', 'GNS 319', 'Advance English and Gramatical Functions', 'prof adebisi johnson', 'Festus  Hall', '10:00AM - 11:00AM', '10', '11'),
(40, 'Friday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '11:00AM - 12:00PM', '11', '12'),
(41, 'Friday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '12:00PM - 1:00PM', '12', '13'),
(43, 'Friday', 'COM 302', 'Information Techonology', 'prof John Onyekuru', 'classroom 202', '2:00PM - 3:00PM', '14', '15'),
(44, 'Friday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '3:00PM - 4:00PM', '15', '16'),
(45, 'Friday', 'STA 404', 'probability and statistic ', 'prof adebisi johnson', 'classroom 202', '4:00PM - 5:00PM', '16', '17');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `matric` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` varchar(100) NOT NULL,
  `setting` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `user_id`, `name`, `matric`, `password`, `status`, `setting`) VALUES
(13, 'gf66f7d87154629', 'Daud Abdul-Gafar Olamilekan', 'spidey16', '4444', 'admin', '10'),
(14, 'gf66f7d8d4c9832', 'Omolabake victor olayemi', 'std001', '4444', 'member', '10'),
(15, 'gf66f7d93e8cace', 'daud benson adesumbo', 'std002', '0000', 'member', '5'),
(16, 'gf66f7d99343601', 'Omolabake ebuka mide', 'std003', '4444', 'member', '20'),
(17, 'gf66ffc828f05ad', 'Ajadi ebuka Adetunji', 'std/003', '4444', 'member', '5'),
(18, 'gf670d1eb9dd740', 'Henry Madueke Victor', 'std004', '4444', 'member', '5'),
(19, 'gf67110bd5afa4c', 'stef ebuka okeke', '853462', 'okeke', 'member', '45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifymsg`
--
ALTER TABLE `notifymsg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `notifymsg`
--
ALTER TABLE `notifymsg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
