-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2016 at 11:06 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laraproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comments` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comments`, `post_id`, `parent`, `created_at`, `updated_at`, `remember_token`) VALUES
(4, 'hello First Comment', 1, 0, '2016-09-17 16:17:24', '2016-09-17 16:17:24', ''),
(5, 'hello First Replay', 1, 1, '2016-09-17 16:17:45', '2016-09-17 16:17:45', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_03_14_181741_create_users_table', 1),
('2016_03_24_163910_create_adress_table', 1),
('2016_09_14_171323_create_comments_table', 2),
('2016_09_15_160749_create_comments_table', 3),
('2016_09_15_161522_create_post_table', 4),
('2016_09_15_161754_create_post_table', 5),
('2016_09_15_204621_create_upload_table', 6),
('2016_09_15_221859_create_post_table', 7),
('2016_09_16_010003_create_comments_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post`, `user_id`, `avatar`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Post number one', 1, '13644252_1742006266086902_498804886_n.jpg', '2016-09-15 19:22:05', '2016-09-15 19:22:05', '');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'MohMed Al ijla', 'm.s.Alijla@hotmail.com', '$2y$08$tIH7Eazzp.zsQIQUOpdWbuL13aZor7BjxDPRi.DEusPrk32BgmjSy', '2016-09-13 18:35:03', '2016-09-13 18:35:03', ''),
(2, 'ali', 'mohamed.alijla@gmail.com', '$2y$08$CG3w/Su6avU.YqB09AdKjemBZxEjT8JClPNpkXUkZmW4vSv4RXPwK', '2016-09-13 18:35:10', '2016-09-13 18:35:10', ''),
(3, 'yazn', 'jaber@k.com', '$2y$08$b1Dhpie9V8ymy.pAcb8t4O2LG0K27gMSlVtdB.hrqsyLWqSURDXWm', '2016-09-13 18:35:17', '2016-09-13 18:35:17', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
