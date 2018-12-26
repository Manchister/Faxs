-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2018 at 09:52 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faxs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `title`) VALUES
(1, ' قيادة حرس حدود'),
(2, 'شعبة عمليات'),
(3, 'شعبة التنظيم والإدارة'),
(4, 'شعبة التدريب'),
(5, 'شعبة الإمداد والتموين'),
(6, 'الشعبة الهندسية'),
(7, 'فرع الإشارة'),
(8, 'فرع المركبات'),
(9, 'فرع الأسلحة والذخيرة'),
(10, 'فرع الحرب الكيميائية'),
(11, 'فرع الحرب الإلكترونية'),
(12, 'فرع الإستطلاع'),
(13, 'فرع النظم والمعلومات'),
(14, 'فرع شئون الضباط'),
(15, 'فرع الشئون المعنوية'),
(16, 'فرع الشرطة العسكرية'),
(17, 'قسم الأمن'),
(18, 'طلبات عبور'),
(19, 'سفن التأمين'),
(20, 'سفن المتابعة'),
(21, 'بسم الله الرحمن الرحيم');

-- --------------------------------------------------------

--
-- Table structure for table `branches222`
--

CREATE TABLE `branches222` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `faxs_sum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `branches222`
--

INSERT INTO `branches222` (`id`, `title`, `faxs_sum`) VALUES
(1, ' قيادة حرس حدود', NULL),
(2, ' قيادة حرس حدود', NULL),
(3, 'عربي', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faxs`
--

CREATE TABLE `faxs` (
  `id` int(11) UNSIGNED NOT NULL,
  `branch_id` int(11) UNSIGNED NOT NULL,
  `branch_title` varchar(255) NOT NULL,
  `date_1` date NOT NULL,
  `date_2` datetime NOT NULL,
  `f1` text NOT NULL,
  `f2` text NOT NULL,
  `f3` text NOT NULL,
  `action` text NOT NULL,
  `saved` int(1) DEFAULT NULL,
  `about` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faxs`
--

INSERT INTO `faxs` (`id`, `branch_id`, `branch_title`, `date_1`, `date_2`, `f1`, `f2`, `f3`, `action`, `saved`, `about`) VALUES
(1, 1, '', '0000-00-00', '0000-00-00 00:00:00', '', '', '', '', NULL, ''),
(2, 0, 'd_d', '0000-00-00', '0000-00-00 00:00:00', 'f_f3', 'f_f2', 'f_f1', 'f_action', 0, ''),
(3, 0, 'f_d', '0000-00-00', '0000-00-00 00:00:00', 'branch_id', 'f_f3', 'f_f2', 'f_f1', 0, ''),
(4, 0, 'f_from', '0000-00-00', '0000-00-00 00:00:00', 'f_f1', 'f_f2', 'f_f3', 'f_action', 0, ''),
(5, 5, 'Ø´Ø¹Ø¨Ø© Ø§Ù„Ø¥Ù…Ø¯Ø§Ø¯ ÙˆØ§Ù„ØªÙ…ÙˆÙŠÙ†', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(6, 5, 'Ø´Ø¹Ø¨Ø© Ø§Ù„Ø¥Ù…Ø¯Ø§Ø¯ ÙˆØ§Ù„ØªÙ…ÙˆÙŠÙ†', '2018-09-25', '2018-09-25 00:00:00', 'nnnnnnnnnnn', 'bbbbbbbbbb', 'hhhhhhh', 'mmmmmmmm', 0, ''),
(7, 5, 'شعبة الإمداد والتموين', '2018-09-25', '2018-09-25 00:00:00', 'nnnnnnnnnnn', 'bbbbbbbbbb', 'hhhhhhh', 'mmmmmmmm', 0, ''),
(8, 5, 'Ø´Ø¹Ø¨Ø© Ø§Ù„Ø¥Ù…Ø¯Ø§Ø¯ ÙˆØ§Ù„ØªÙ…ÙˆÙŠÙ†', '2018-09-25', '2018-09-25 00:00:00', 'Ø§Ù„Ø­Ù…Ø¯ Ù„Ù„Ù‡', 'Ø§Ù„Ù„Ù‡ Ø§ÙƒØ¨Ø±', 'Ø¨Ø³Ù… Ø§Ù„Ù„Ù‡ Ø§Ù„Ø±Ø­Ù…Ù† Ø§Ù„Ø±Ø­ÙŠÙ…', 'Ø³Ø¨Ø­Ø§Ù† Ø§Ù„Ù„Ù‡', 0, ''),
(9, 5, 'Ø´Ø¹Ø¨Ø© Ø§Ù„Ø¥Ù…Ø¯Ø§Ø¯ ÙˆØ§Ù„ØªÙ…ÙˆÙŠÙ†', '2018-09-25', '2018-09-25 00:00:00', 'c', 'b', 'a', 'd', 0, ''),
(10, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', 'c', 'b', 'a', 'd', 0, ''),
(11, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(12, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', 'dsfsdsg', 'sdafsaf', 'asad', 'gsdfgdgdg', 0, ''),
(13, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', 'gdfdgd', 'gedg', 'dfgdsfgdsf', 'gfdfgd', 0, ''),
(14, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(15, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(16, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(17, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(18, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(19, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(20, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(21, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(22, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(23, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(24, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(25, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(26, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(27, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', 'fsdf', 'sdfsd', 'sfgsdgs', 'dsdfsddgfssf', 0, ''),
(28, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(29, 6, 'Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©', '2018-09-25', '2018-09-25 00:00:00', '', '', '', '', 0, ''),
(30, 8, 'ÙØ±Ø¹ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', '2018-09-26', '2018-09-26 00:00:00', 'vsvfgsdfsdf', 'sdfsdffdsf', ';fjkllkshfksdf', 'sdfsdfddsdsddf', 0, ''),
(31, 8, 'ÙØ±Ø¹ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', '2018-09-26', '2018-09-26 00:00:00', '', '', '', '', 0, 'Ù…Ù†Ø³Ø§ÙŠØ¨Ù†ØªØ¨Ù†Ø¨Ù‰Ø³ÙŠØ¤ØªØ§Ù…Ù‰Ø¤ Ø¤Ø«Ø¨ÙŠ'),
(32, 8, 'ÙØ±Ø¹ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', '2018-09-26', '2018-09-26 00:00:00', 'Ù„Ù„Ø´Ø³ÙŠØ¨', 'Ù„Ù„Ø¨Ø´Ù„Ø³ÙŠÙ„', 'Ø¨Ø³ÙŠÙ„Ø³ÙŠØ¨Ù„Ø³', 'ÙŠØ¨Ø³Ø´Ù„Ø³ÙŠ', 0, 'Ø¨Ø³Ù… Ø§Ù„Ù„Ù‡ Ø§Ù„Ø±Ø­Ù…Ù† Ø§Ù„Ø±Ø­ÙŠÙ…'),
(33, 8, 'ÙØ±Ø¹ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', '2018-09-26', '2018-09-26 00:00:00', '', '', '', '', 0, 'hdh'),
(34, 8, 'ÙØ±Ø¹ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', '2018-09-26', '2018-09-26 00:00:00', '', '', '', '', 0, 'fh  ewiewew hk we hewl,r lelwnkjjb  efewfjwekrjwefkefe ffbkwdrfweertwer'),
(35, 8, 'ÙØ±Ø¹ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', '2018-09-26', '2018-09-26 00:00:00', '', '', '', '', 0, ''),
(36, 5, 'Ø´Ø¹Ø¨Ø© Ø§Ù„Ø¥Ù…Ø¯Ø§Ø¯ ÙˆØ§Ù„ØªÙ…ÙˆÙŠÙ†', '2018-09-26', '2018-09-26 00:00:00', '', '', '', '', 0, 'tgfgedefs'),
(37, 5, 'Ø´Ø¹Ø¨Ø© Ø§Ù„Ø¥Ù…Ø¯Ø§Ø¯ ÙˆØ§Ù„ØªÙ…ÙˆÙŠÙ†', '2018-09-26', '2018-09-26 04:09:02', '', '', '', '', 0, 'rtrrt'),
(38, 8, 'ÙØ±Ø¹ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', '2018-09-26', '2018-09-26 06:09:47', '', '', '', '', 0, 'Ø¨Ø³Ù… Ø§Ù„Ù„Ù‡ Ø§Ù„Ø±Ø­Ù…Ù† Ø§Ù„Ø±Ø­ÙŠÙ…'),
(39, 8, 'ÙØ±Ø¹ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', '2018-09-26', '2018-09-26 06:09:27', '', '', '', '', 0, 'Ø¨Ø³Ù… Ø§Ù„Ù„Ù‡ Ø§Ù„Ø±Ø­Ù…Ù† Ø§Ù„Ø±Ø­ÙŠÙ…'),
(40, 0, '', '0000-00-00', '0000-00-00 00:00:00', '', '', '', '', 0, ''),
(41, 0, '', '0000-00-00', '0000-00-00 00:00:00', '', '', '', '', 0, ''),
(42, 8, 'ÙØ±Ø¹ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', '2018-09-27', '2018-09-27 07:09:26', '', '', 'sghdhsdshg\r\nh\r\ndh\r\ndh\r\nsd\r\nhd\r\nhds', '', 0, 'hhhhhhhhhhhhhhhhhh'),
(43, 8, 'ÙØ±Ø¹ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', '2018-09-27', '2018-09-27 10:09:36', 'gkjl', 'jlg', 'gvkljkjgvl', 'gjklgj', 0, 'blvlvhlvl'),
(44, 20, 'Ø³ÙÙ† Ø§Ù„Ù…ØªØ§Ø¨Ø¹Ø©', '2018-09-27', '2018-09-27 10:09:34', 'hk', 'gfgfgfgfgfgfgfgfgfgfk', 'gf', 'fghfkk', 0, 'jkkkkfjg'),
(45, 5, 'Ø´Ø¹Ø¨Ø© Ø§Ù„Ø¥Ù…Ø¯Ø§Ø¯ ÙˆØ§Ù„ØªÙ…ÙˆÙŠÙ†', '2018-09-27', '2018-09-27 10:09:04', '', '', '', '', 0, '15'),
(46, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-27', '2018-09-27 12:09:07', '', 'Ø§Ø§Ø¨ØªØ±', 'ghyghcvb', '', 0, 'ØªØ§ÙˆÙ†'),
(47, 3, 'Ø´Ø¹Ø¨Ø© Ø§Ù„ØªÙ†Ø¸ÙŠÙ… ÙˆØ§Ù„Ø¥Ø¯Ø§Ø±Ø©', '2018-09-27', '2018-09-27 01:09:50', '', '', '', '', 0, 'f1'),
(48, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-27', '2018-09-27 02:09:25', '', '', '', '', 0, 'test'),
(49, 3, 'Ø´Ø¹Ø¨Ø© Ø§Ù„ØªÙ†Ø¸ÙŠÙ… ÙˆØ§Ù„Ø¥Ø¯Ø§Ø±Ø©', '2018-09-27', '2018-09-27 02:09:22', ' ÙŠÙ„ÙŠØ¨Ù„ÙŠØ³Ø¨', 'Ù„Ø§ÙŠØ¨Ù„Ø§ÙŠØ¨Ù„Ø§ ', 'Ø¨ÙŠÙ„Ø³Ø±Ø¨ Ù„Ø§ÙŠ   ', ' ÙŠØ¨Ø³Ù„Ø§Ø¨Ù„ÙŠÙ„ÙŠØ¨', 0, 'Ø¨Ø³Ù… Ø§Ù„Ù„Ù‡ Ø§Ù„Ø±Ø­Ù…Ù† Ø§Ù„Ø±Ø­ÙŠÙ…'),
(50, 5, 'Ø´Ø¹Ø¨Ø© Ø§Ù„Ø¥Ù…Ø¯Ø§Ø¯ ÙˆØ§Ù„ØªÙ…ÙˆÙŠÙ†', '0000-00-00', '0000-00-00 00:00:00', '$f_f1', '$f_f2', '$f_f3', '$f_action', 0, '$f_about'),
(51, 5, 'Ø´Ø¹Ø¨Ø© Ø§Ù„Ø¥Ù…Ø¯Ø§Ø¯ ÙˆØ§Ù„ØªÙ…ÙˆÙŠÙ†', '2018-09-28', '2018-09-28 03:09:32', '', '', '', '', 0, 'hlkjlkn jkl'),
(52, 0, '', '0000-00-00', '0000-00-00 00:00:00', '', '', '', '', 0, ''),
(53, 11, 'ÙØ±Ø¹ Ø§Ù„Ø­Ø±Ø¨ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ©', '0000-00-00', '2018-09-28 07:09:21', 'ØªØ£Ø´ÙŠØ±Ø© Ù‚Ø§Ø¦Ø¯ Ø§Ù„ÙÙˆØ¬', 'ØªØ£Ø´ÙŠØ±Ø© Ù‚Ø§Ø¦Ø¯ Ø«Ø§Ù† Ø§Ù„ÙÙˆØ¬', 'ØªØ£Ø´ÙŠØ±Ø© Ø±Ø¦ÙŠØ³ Ø¹Ù…Ù„ÙŠØ§Øª', 'Ø§Ù„Ø¥Ø¬Ø±Ø§Ø¡ Ø§Ù„Ù…ØªØ®Ø°', 0, 'Ø¨Ø´Ø£Ù† 2'),
(54, 0, '', '0000-00-00', '0000-00-00 00:00:00', '', '', '', '', 0, ''),
(55, 11, 'ÙØ±Ø¹ Ø§Ù„Ø­Ø±Ø¨ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ©', '2018-09-28', '2018-09-28 08:09:10', 'Ù„ØªÙ„ÙŠØªØ¨', 'Ù„ØªØ¨', 'ØªÙŠÙŠ', 'Ù„Ø¡ÙŠØªØ¨ØªØ³', 0, 'Ø¨Ù„Ø¨Ù„Ù‰ØªØªØ¨Ù„'),
(56, 11, 'ÙØ±Ø¹ Ø§Ù„Ø­Ø±Ø¨ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ©', '2018-09-28', '2018-09-28 08:09:47', 'Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´', 'Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´', 'Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´', 'Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´', 0, 'Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´Ø´'),
(57, 11, 'ÙØ±Ø¹ Ø§Ù„Ø­Ø±Ø¨ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ©', '2018-09-28', '2018-09-28 08:09:50', 'Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', 'Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', 'Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', 'Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', 0, 'Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§'),
(58, 11, 'ÙØ±Ø¹ Ø§Ù„Ø­Ø±Ø¨ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ©', '2018-09-28', '2018-09-28 08:09:13', 'Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨', 'Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨', 'Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨', 'Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨', 0, 'Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨Ø¨'),
(59, 11, 'ÙØ±Ø¹ Ø§Ù„Ø­Ø±Ø¨ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ©', '2018-09-28', '2018-09-28 08:09:07', '', '', '', '', 0, 'Ø¨Ø³Ø¨Ù„'),
(60, 11, 'ÙØ±Ø¹ Ø§Ù„Ø­Ø±Ø¨ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ©', '2018-09-28', '2018-09-28 08:09:47', '', '', '', '', 0, 'ÙŠØ§Ø±Ø¨'),
(61, 11, 'ÙØ±Ø¹ Ø§Ù„Ø­Ø±Ø¨ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ©', '2018-09-28', '2018-09-28 08:09:13', '', '', '', '', 0, 'ffffffffffffffff'),
(62, 11, 'ÙØ±Ø¹ Ø§Ù„Ø­Ø±Ø¨ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ©', '2018-09-28', '2018-09-28 09:09:49', '', '', '', '', 0, 'Ø§Ù„Ø­Ù…Ø¯ Ù„Ù„Ù‡'),
(63, 19, 'Ø³ÙÙ† Ø§Ù„ØªØ£Ù…ÙŠÙ†', '2018-09-28', '2018-09-28 09:09:02', 'ØªØ£Ø´ÙŠØ±Ø© Ù‚Ø§Ø¦Ø¯ Ø§Ù„ÙÙˆØ¬ 2', 'ØªØ£Ø´ÙŠØ±Ø© Ù‚Ø§Ø¦Ø¯ Ø«Ø§Ù† Ø§Ù„ÙÙˆØ¬ 2', 'ØªØ£Ø´ÙŠØ±Ø© Ø±Ø¦ÙŠØ³ Ø¹Ù…Ù„ÙŠØ§Øª 2', 'Ø§Ù„Ø¥Ø¬Ø±Ø§Ø¡ Ø§Ù„Ù…ØªØ®Ø° 2', 0, 'Ù…ØªØ§Ø¨Ø¹Ø© 2'),
(64, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-30', '2018-09-30 02:09:58', 'ØªÙ„khgkhjkkhhØ¨ØªÙ„Ø¨Øª', 'Ù„Ø§Ù†ØªÙ„Ù† Ù„lkk,j,', 'Ù†ØªÙ„Ø§Ù„kjhkjhkghjkÙ„ØªØ§Ù„Ø±', 'ØªÙ„Ù„Ù„hkjhktjhhÙ†ØºØ¹Ù‡Øº', 0, 'Ø¨Ø³Ù… Ø§Ù„Ù„Ù‡ Ø§Ù„Ø±Ø­Ù…Ù† Ø§Ù„Ø±Ø­ÙŠÙ…'),
(65, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-30', '2018-09-30 02:09:43', '', '', '', '', 0, 'Ø¹ØªØ¹Ù†ØªØºØ¹ÙØ¹'),
(66, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-30', '2018-09-30 02:09:42', '', '', '', '', 0, 'm'),
(67, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-30', '2018-09-30 05:09:37', '', '', '', '', 0, '11111111111'),
(68, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-30', '2018-09-30 05:09:25', '', '', '', '', 0, 'guiyui'),
(69, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-30', '2018-09-30 05:09:32', '', '', '', '', 0, 'Ù…Ù† Ø§Ù„Ø´Ø¨ÙƒØ©'),
(70, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-30', '2018-09-30 06:09:39', '', '', '', '', 0, 'ghjkjiytjfyujkkf'),
(71, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-30', '2018-09-30 06:09:46', '', '', '', '', 0, '8'),
(72, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-30', '2018-09-30 06:09:54', '', '', '', '', 0, '1-8'),
(73, 2, 'Ø´Ø¹Ø¨Ø© Ø¹Ù…Ù„ÙŠØ§Øª', '2018-09-30', '2018-09-30 06:09:13', '', '', '', '', 0, '2-4'),
(74, 4, 'Ø´Ø¹Ø¨Ø© Ø§Ù„ØªØ¯Ø±ÙŠØ¨', '2018-09-30', '2018-09-30 07:09:04', ' Ø¨ØµØ«Ø¨Ø«ØµØ¨Ø«ØµÙ‚ Ø¨ØµØ«Ø¨Ø«ØµØ¨Ø«ØµÙ‚ Ø¨ØµØ«Ø¨Ø«ØµØ¨Ø«ØµÙ‚ Ø¨ØµØ«Ø¨Ø«ØµØ¨Ø«ØµÙ‚ Ø¨ØµØ«Ø¨Ø«ØµØ¨Ø«ØµÙ‚ Ø¨ØµØ«Ø¨Ø«ØµØ¨Ø«ØµÙ‚', ' Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ  Ø³ÙŠØ±ØµØ«Ø¨ÙŠ ', 'Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ Ø¦Ø¡Ø±ÙŠØ³Ù„Ø«ØµØ¨Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§ØªÙ‰Ù„Ø§Ù‰ ', ' Ø¨ØµØ«Ø¨Ø«ØµØ¨ Ø¨ØµØ«Ø¨Ø«ØµØ¨ Ø¨ØµØ«Ø¨Ø«ØµØ¨ Ø¨ØµØ«Ø¨Ø«ØµØ¨ Ø¨ØµØ«Ø¨Ø«ØµØ¨ Ø¨ØµØ«Ø¨Ø«ØµØ¨', 0, 'Ø§ØªØ³Ù„ÙŠØ´Ù„ÙŠØªØ´Ø³ÙŠØ¡Ø¤');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `fax_id` int(10) UNSIGNED NOT NULL,
  `io` int(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `fax_id`, `io`, `url`, `page`) VALUES
(1, 16, 1, 'http://localhost/faxs/img/uploads/Ø§Ù„Ø´Ø¹Ø¨Ø© Ø§Ù„Ù‡Ù†Ø¯Ø³ÙŠØ©_b3bb39fca19a7e2d618f4d00f5f890f6nDesert.jpg', 0),
(2, 17, 1, 'http://localhost/faxs/img/uploads/6_a8bc4f139f6efde25246af1f12f1d449nKoala.jpg', 0),
(3, 19, 1, 'http://localhost/faxs/img/uploads/6_07d8f553245260bc404a0308daa92e26nLighthouse.jpg', 0),
(4, 19, 1, '', 0),
(5, 19, 1, '', 0),
(6, 19, 1, '', 0),
(7, 19, 1, '', 0),
(8, 19, 1, '', 0),
(9, 19, 1, '', 0),
(10, 19, 1, '', 0),
(11, 19, 1, '', 0),
(12, 19, 1, '', 0),
(13, 19, 1, '', 0),
(14, 19, 1, '', 0),
(15, 19, 1, '', 0),
(16, 19, 1, '', 0),
(17, 19, 1, '', 0),
(18, 19, 1, '', 0),
(19, 20, 1, 'http://localhost/faxs/img/uploads/6_c3e0e3ab721f2eff2351f48ad84f6bf8nHydrangeas.jpg', 0),
(20, 20, 1, '', 0),
(21, 20, 1, '', 0),
(22, 20, 1, '', 0),
(23, 20, 1, '', 0),
(24, 20, 1, '', 0),
(25, 20, 1, '', 0),
(26, 20, 1, '', 0),
(27, 20, 1, '', 0),
(28, 20, 1, '', 0),
(29, 20, 1, '', 0),
(30, 20, 1, '', 0),
(31, 20, 1, '', 0),
(32, 20, 1, '', 0),
(33, 20, 1, '', 0),
(34, 20, 1, '', 0),
(35, 22, 1, 'http://localhost/faxs/img/uploads/6_7723db24bcd8f4784c5caa855714b23anJellyfish.jpg', 0),
(36, 22, 1, '', 0),
(37, 22, 1, '', 0),
(38, 22, 1, '', 0),
(39, 22, 1, '', 0),
(40, 22, 1, '', 0),
(41, 22, 1, '', 0),
(42, 22, 1, '', 0),
(43, 22, 2, 'http://localhost/faxs/img/uploads/6_7723db24bcd8f4784c5caa855714b23anPenguins.jpg', 0),
(44, 22, 2, '', 0),
(45, 22, 2, '', 0),
(46, 22, 2, '', 0),
(47, 22, 2, '', 0),
(48, 22, 2, '', 0),
(49, 22, 2, '', 0),
(50, 22, 2, '', 0),
(51, 23, 1, 'http://localhost/faxs/img/uploads/6_d5d9de450b20d33b690cacf7548f898anLighthouse.jpg', 0),
(52, 23, 1, '', 0),
(53, 23, 1, '', 0),
(54, 23, 1, '', 0),
(55, 23, 1, '', 0),
(56, 23, 1, '', 0),
(57, 23, 1, '', 0),
(58, 23, 1, '', 0),
(59, 23, 2, 'http://localhost/faxs/img/uploads/6_d5d9de450b20d33b690cacf7548f898anKoala.jpg', 0),
(60, 23, 2, '', 0),
(61, 23, 2, '', 0),
(62, 23, 2, '', 0),
(63, 23, 2, '', 0),
(64, 23, 2, '', 0),
(65, 23, 2, '', 0),
(66, 23, 2, '', 0),
(67, 24, 1, 'http://localhost/faxs/img/uploads/6_6ecdc61f06fb16d56ab33f8fddd47ae9nLighthouse.jpg', 0),
(68, 24, 1, '', 0),
(69, 24, 1, '', 0),
(70, 24, 1, '', 0),
(71, 24, 1, '', 0),
(72, 24, 1, '', 0),
(73, 24, 1, '', 0),
(74, 24, 1, '', 0),
(75, 24, 2, '', 0),
(76, 24, 2, '', 0),
(77, 24, 2, '', 0),
(78, 24, 2, '', 0),
(79, 24, 2, '', 0),
(80, 24, 2, '', 0),
(81, 24, 2, '', 0),
(82, 24, 2, '', 0),
(83, 25, 1, 'http://localhost/faxs/img/uploads/6_12d17fe1a163b332aaccf65b0052cf47nLighthouse.jpg', 0),
(84, 26, 1, 'http://localhost/faxs/img/uploads/6_486d04d1b96274eed76a28584273e0a2nHydrangeas.jpg', 0),
(85, 26, 2, 'http://localhost/faxs/img/uploads/6_486d04d1b96274eed76a28584273e0a2nKoala.jpg', 0),
(86, 28, 1, 'http://localhost/faxs/img/uploads/6_0b0b00fc460df7373baef3ffa7967650nHydrangeas.jpg', 0),
(87, 28, 2, 'http://localhost/faxs/img/uploads/6_0b0b00fc460df7373baef3ffa7967650nChrysanthemum.jpg', 0),
(88, 29, 1, 'http://localhost/faxs/img/uploads/8_07860172c58e64e511630a14ea7e7431nLighthouse.jpg', 0),
(89, 29, 2, 'http://localhost/faxs/img/uploads/8_07860172c58e64e511630a14ea7e7431nHydrangeas.jpg', 0),
(90, 37, 1, 'http://localhost/faxs/img/uploads/8_e6660d2bab7659641284eaffab0fa7bbnPenguins.jpg', 1),
(91, 37, 1, 'http://localhost/faxs/img/uploads/8_7d9666c69b9fe1a439e3d0013cf979d3nPenguins.jpg', 1),
(92, 37, 1, 'http://localhost/faxs/img/uploads/8_7d9666c69b9fe1a439e3d0013cf979d3nTulips.jpg', 2),
(93, 38, 1, 'http://localhost/faxs/img/uploads/8_7d9666c69b9fe1a439e3d0013cf979d3nJellyfish.jpg', 3),
(94, 40, 1, 'http://localhost/faxs/img/uploads/_31fbbf115f5d47db7eae5ba24da54fa5nPenguins.jpg', 1),
(95, 42, 1, 'http://localhost/faxs/img/uploads/8_706463e780e3abeb61bd21d6196fd3d7nPenguins.jpg', 1),
(96, 42, 1, 'http://localhost/faxs/img/uploads/8_706463e780e3abeb61bd21d6196fd3d7nLighthouse.jpg', 2),
(97, 42, 1, 'http://localhost/faxs/img/uploads/8_706463e780e3abeb61bd21d6196fd3d7nHydrangeas.jpg', 3),
(98, 43, 1, 'http://localhost/faxs/img/uploads/20_e2f80fcdd9ed716c2aa5ac5726eae090nChrysanthemum.jpg', 1),
(99, 43, 1, 'http://localhost/faxs/img/uploads/20_e2f80fcdd9ed716c2aa5ac5726eae090nDesert.jpg', 2),
(100, 44, 1, 'http://localhost/faxs/img/uploads/5_941e6782a86f230248e6351744afd9ednChrysanthemum.jpg', 1),
(101, 44, 1, 'http://localhost/faxs/img/uploads/5_941e6782a86f230248e6351744afd9ednDesert.jpg', 2),
(102, 45, 1, 'http://localhost/faxs/img/uploads/2_01e4e2c8f908a6c6357ec744b61d34b8nPenguins.jpg', 1),
(103, 46, 1, 'http://localhost/faxs/img/uploads/3_a026f867649f1e4aebf0759e3382f530nHydrangeas.jpg', 1),
(104, 46, 1, 'http://localhost/faxs/img/uploads/3_a026f867649f1e4aebf0759e3382f530nJellyfish.jpg', 2),
(105, 46, 1, 'http://localhost/faxs/img/uploads/3_a026f867649f1e4aebf0759e3382f530nTulips.jpg', 3),
(106, 47, 1, 'http://localhost/faxs/img/uploads/2_81e0e7862c0a34f6db0ee6471455847fnChrysanthemum.jpg', 1),
(107, 47, 1, 'http://localhost/faxs/img/uploads/2_81e0e7862c0a34f6db0ee6471455847fnDesert.jpg', 2),
(108, 47, 1, 'http://localhost/faxs/img/uploads/2_81e0e7862c0a34f6db0ee6471455847fnJellyfish.jpg', 3),
(109, 47, 2, 'http://localhost/faxs/img/uploads/2_81e0e7862c0a34f6db0ee6471455847fnKoala.jpg', 1),
(110, 47, 2, 'http://localhost/faxs/img/uploads/2_81e0e7862c0a34f6db0ee6471455847fnLighthouse.jpg', 2),
(111, 47, 2, 'http://localhost/faxs/img/uploads/2_81e0e7862c0a34f6db0ee6471455847fnPenguins.jpg', 3),
(112, 48, 1, 'http://localhost/faxs/img/uploads/3_852a82b7e03002ea44e24611c794e5d1nChrysanthemum.jpg', 1),
(113, 48, 1, 'http://localhost/faxs/img/uploads/3_e58d09485ee34da4cde80a82728aa777nDesert.jpg', 2),
(114, 48, 1, 'http://localhost/faxs/img/uploads/3_e58d09485ee34da4cde80a82728aa777nHydrangeas.jpg', 3),
(115, 48, 1, 'http://localhost/faxs/img/uploads/3_e58d09485ee34da4cde80a82728aa777nJellyfish.jpg', 4),
(116, 48, 2, 'http://localhost/faxs/img/uploads/3_e58d09485ee34da4cde80a82728aa777nKoala.jpg', 1),
(117, 48, 2, 'http://localhost/faxs/img/uploads/3_e58d09485ee34da4cde80a82728aa777nLighthouse.jpg', 2),
(118, 48, 2, 'http://localhost/faxs/img/uploads/3_5147df7ee1cd8be1e35f80c385f10c51nPenguins.jpg', 3),
(119, 48, 2, 'http://localhost/faxs/img/uploads/3_5147df7ee1cd8be1e35f80c385f10c51nTulips.jpg', 4),
(120, 50, 1, 'http://localhost/faxs/img/uploads/5_6aed09df4f46cf4b64d63a71073ed90enJellyfish.jpg', 1),
(121, 56, 1, 'http://localhost/faxs/img/uploads/11_d700717417bb14d85f8d10b0943089fdnPenguins.jpg', 1),
(122, 56, 2, 'http://localhost/faxs/img/uploads/11_249e1699fe2ff6ae5205d07475d56568nChrysanthemum.jpg', 1),
(123, 57, 1, 'http://localhost/faxs/img/uploads/11_c19c8abfd0c274f5f28f17d50b3c49c0nLighthouse.jpg', 1),
(124, 57, 1, 'http://localhost/faxs/img/uploads/11_c19c8abfd0c274f5f28f17d50b3c49c0nDesert.jpg', 2),
(125, 57, 2, 'http://localhost/faxs/img/uploads/11_c19c8abfd0c274f5f28f17d50b3c49c0nChrysanthemum.jpg', 1),
(126, 57, 2, 'http://localhost/faxs/img/uploads/11_c19c8abfd0c274f5f28f17d50b3c49c0nKoala.jpg', 2),
(127, 58, 1, 'http://localhost/faxs/img/uploads/11_97e39939c809686ad867be137fb3a0d6nTulips.jpg', 1),
(128, 58, 1, 'http://localhost/faxs/img/uploads/11_97e39939c809686ad867be137fb3a0d6nJellyfish.jpg', 2),
(129, 58, 2, 'http://localhost/faxs/img/uploads/11_97e39939c809686ad867be137fb3a0d6nKoala.jpg', 1),
(130, 58, 2, 'http://localhost/faxs/img/uploads/11_97e39939c809686ad867be137fb3a0d6nChrysanthemum.jpg', 2),
(131, 59, 1, 'http://localhost/faxs/img/uploads/11_95dc63db2c49ff0a95c25eb3df95aaccnDesert.jpg', 1),
(132, 59, 1, 'http://localhost/faxs/img/uploads/11_95dc63db2c49ff0a95c25eb3df95aaccnHydrangeas.jpg', 2),
(133, 59, 2, 'http://localhost/faxs/img/uploads/11_95dc63db2c49ff0a95c25eb3df95aaccnLighthouse.jpg', 1),
(134, 59, 2, 'http://localhost/faxs/img/uploads/11_95dc63db2c49ff0a95c25eb3df95aaccnPenguins.jpg', 2),
(135, 60, 1, 'http://localhost/faxs/img/uploads/11_c95e574f4a5e1cd55ca80e8567c4a72enChrysanthemum.jpg', 1),
(136, 60, 2, 'http://localhost/faxs/img/uploads/11_c95e574f4a5e1cd55ca80e8567c4a72enChrysanthemum.jpg', 1),
(137, 62, 1, 'http://localhost/faxs/img/uploads/11_f3c95ea90d34b773bef3e161052e0df0nDesert.jpg', 1),
(138, 62, 1, 'http://localhost/faxs/img/uploads/11_f3c95ea90d34b773bef3e161052e0df0nJellyfish.jpg', 2),
(139, 62, 2, 'http://localhost/faxs/img/uploads/11_f3c95ea90d34b773bef3e161052e0df0nChrysanthemum.jpg', 1),
(140, 62, 2, 'http://localhost/faxs/img/uploads/11_f3c95ea90d34b773bef3e161052e0df0nKoala.jpg', 2),
(141, 63, 1, 'http://localhost/faxs/img/uploads/19_5f19158ee8b1bfe376dc0aa09c8a5d29nChrysanthemum.jpg', 1),
(142, 63, 1, 'http://localhost/faxs/img/uploads/19_5f19158ee8b1bfe376dc0aa09c8a5d29nDesert.jpg', 2),
(143, 63, 1, 'http://localhost/faxs/img/uploads/19_5f19158ee8b1bfe376dc0aa09c8a5d29nHydrangeas.jpg', 3),
(144, 63, 1, 'http://localhost/faxs/img/uploads/19_5f19158ee8b1bfe376dc0aa09c8a5d29nJellyfish.jpg', 4),
(145, 63, 2, 'http://localhost/faxs/img/uploads/19_5f19158ee8b1bfe376dc0aa09c8a5d29nKoala.jpg', 1),
(146, 63, 2, 'http://localhost/faxs/img/uploads/19_5f19158ee8b1bfe376dc0aa09c8a5d29nLighthouse.jpg', 2),
(147, 63, 2, 'http://localhost/faxs/img/uploads/19_5f19158ee8b1bfe376dc0aa09c8a5d29nPenguins.jpg', 3),
(148, 63, 2, 'http://localhost/faxs/img/uploads/19_5f19158ee8b1bfe376dc0aa09c8a5d29nTulips.jpg', 4),
(149, 64, 1, 'http://localhost/faxs/img/uploads/2_8e62fac7b2da32b295e9d90394b98cc6nHydrangeas.jpg', 1),
(150, 64, 1, 'http://localhost/faxs/img/uploads/2_8e62fac7b2da32b295e9d90394b98cc6nLighthouse.jpg', 2),
(151, 64, 2, 'http://localhost/faxs/img/uploads/2_8e62fac7b2da32b295e9d90394b98cc6nChrysanthemum.jpg', 1),
(152, 64, 2, 'http://localhost/faxs/img/uploads/2_8e62fac7b2da32b295e9d90394b98cc6nDesert.jpg', 2),
(153, 65, 1, 'http://localhost/faxs/img/uploads/_05f029fe75a1bc380d77ee3ed5ad9056nJellyfish.jpg', 1),
(154, 65, 1, 'http://localhost/faxs/img/uploads/_05f029fe75a1bc380d77ee3ed5ad9056nJellyfish.jpg', 2),
(155, 65, 2, 'http://localhost/faxs/img/uploads/_4fc0c3be9d29cf146526ec2a61a4c92enKoala.jpg', 1),
(156, 65, 2, 'http://localhost/faxs/img/uploads/_4fc0c3be9d29cf146526ec2a61a4c92enLighthouse.jpg', 2),
(157, 67, 1, '/img/uploads/2_4ab72f1c9ed7264d0dc65121755d82a1nDesert.jpg', 1),
(158, 68, 1, 'img/uploads/2_293e19ee68baf8c8f1b872782e3b43f4nDesert.jpg', 1),
(159, 69, 1, 'img/uploads/2_b8bb3f46217c059d7e53ff058a40123bnIMG_0291.JPG', 1),
(160, 70, 1, 'img/uploads/2_810cbf86a9803525e068a452b3b4a54bnHydrangeas.jpg', 1),
(161, 70, 1, 'img/uploads/2_810cbf86a9803525e068a452b3b4a54bnJellyfish.jpg', 3),
(162, 70, 2, 'img/uploads/2_810cbf86a9803525e068a452b3b4a54bnKoala.jpg', 4),
(163, 71, 1, 'img/uploads/2_7007e5e60b37199781a6dc8744d87085nTulips.jpg', 8),
(164, 71, 2, 'img/uploads/2_7007e5e60b37199781a6dc8744d87085nKoala.jpg', 8),
(165, 72, 1, 'img/uploads/_73a2a58e5373322bc30adfd50231bc5cnChrysanthemum.jpg', 1),
(166, 72, 1, 'img/uploads/2_a976421e4551c3bc029f045c23e0eaaanTulips.jpg', 8),
(167, 72, 2, 'img/uploads/_73a2a58e5373322bc30adfd50231bc5cnChrysanthemum.jpg', 1),
(168, 72, 2, 'img/uploads/2_a976421e4551c3bc029f045c23e0eaaanTulips.jpg', 8),
(169, 73, 1, 'img/uploads/_2a346a8a55f1d9369c20f9a6827f3bb2nPenguins.jpg', 2),
(170, 73, 1, 'img/uploads/2_f8b38c5817525a7c672311584b6a45aanJellyfish.jpg', 4),
(171, 73, 2, 'img/uploads/_2a346a8a55f1d9369c20f9a6827f3bb2nPenguins.jpg', 2),
(172, 73, 2, 'img/uploads/2_f8b38c5817525a7c672311584b6a45aanJellyfish.jpg', 4),
(173, 73, 1, 'img/uploads/_2a346a8a55f1d9369c20f9a6827f3bb2nPenguins.jpg', 1),
(174, 73, 1, 'img/uploads/_2a346a8a55f1d9369c20f9a6827f3bb2nPenguins.jpg', 3),
(175, 73, 2, 'img/uploads/_78edc94ba8556a90bcd7f8c6bbd4f6a7nChrysanthemum.jpg', 1),
(176, 73, 2, 'img/uploads/_2a346a8a55f1d9369c20f9a6827f3bb2nPenguins.jpg', 3),
(177, 73, 1, 'img/uploads/_287a462ff6163a5a8adae57e05922a23nHydrangeas.jpg', 8),
(178, 73, 1, 'img/uploads/_712cc370e9cf38d50ba53b2d94ccd39anLighthouse.jpg', 7),
(179, 73, 2, 'img/uploads/_7feb09cd4a6afc85fac6dc9b63f823ebnLighthouse.jpg', 8),
(180, 74, 1, 'img/uploads/_d92e318832f7ab2912c5dac89e2cfeb5nChrysanthemum.jpg', 1),
(181, 74, 1, 'img/uploads/_d92e318832f7ab2912c5dac89e2cfeb5nChrysanthemum.jpg', 2),
(182, 74, 1, 'img/uploads/_d92e318832f7ab2912c5dac89e2cfeb5nChrysanthemum.jpg', 3),
(183, 74, 1, 'img/uploads/_d92e318832f7ab2912c5dac89e2cfeb5nChrysanthemum.jpg', 4),
(184, 74, 2, 'img/uploads/_d92e318832f7ab2912c5dac89e2cfeb5nKoala.jpg', 1),
(185, 74, 2, 'img/uploads/_d92e318832f7ab2912c5dac89e2cfeb5nKoala.jpg', 2),
(186, 74, 2, 'img/uploads/_24e7b2faa3146648dd6f4bffe3919624nKoala.jpg', 3),
(187, 74, 2, 'img/uploads/_24e7b2faa3146648dd6f4bffe3919624nKoala.jpg', 4),
(188, 74, 1, 'img/uploads/_d92e318832f7ab2912c5dac89e2cfeb5nChrysanthemum.jpg', 5),
(189, 73, 1, 'img/uploads/_84b2420ab5865ef5b01a14cf83ca4535nIMG_0291.JPG', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches222`
--
ALTER TABLE `branches222`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faxs`
--
ALTER TABLE `faxs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `branches222`
--
ALTER TABLE `branches222`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faxs`
--
ALTER TABLE `faxs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
