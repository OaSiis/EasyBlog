-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Dim 02 Novembre 2014 à 14:01
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `enabled`, `created_at`, `updated_at`, `image`, `category_id`, `user_id`) VALUES
(2, 'IIM', 'IIM', 1, '2014-10-26 13:06:20', '0000-00-00 00:00:00', 'uploads/yes-we-nyan.jpg', 2, 1),
(3, 'IIM', 'IIM', 1, '2014-10-26 13:06:29', '0000-00-00 00:00:00', 'uploads/baracktocat.copy.jpg', 1, 1),
(4, 'IIM', 'IIM', 1, '2014-10-26 13:06:37', '0000-00-00 00:00:00', 'uploads/yes-we-nyan.jpg', 2, 1),
(5, 'IIM', 'IIM', 1, '2014-10-26 13:06:46', '0000-00-00 00:00:00', 'uploads/baracktocat.copy.jpg', 1, 1),
(6, 'IIM', 'IIM', 1, '2014-10-26 13:06:53', '0000-00-00 00:00:00', 'uploads/yes-we-nyan.jpg', 2, 1),
(7, 'IIM', 'IIM', 1, '2014-10-26 13:07:00', '0000-00-00 00:00:00', 'uploads/baracktocat.copy.jpg', 1, 1),
(8, 'IIM', 'IIM', 1, '2014-10-26 13:07:09', '0000-00-00 00:00:00', 'uploads/yes-we-nyan.jpg', 2, 1),
(9, 'IIM', 'IIM', 1, '2014-10-26 13:07:16', '0000-00-00 00:00:00', 'uploads/baracktocat.copy.jpg', 1, 1),
(10, 'IIM', 'IIM', 1, '2014-10-26 13:07:26', '0000-00-00 00:00:00', 'uploads/yes-we-nyan.jpg', 2, 1),
(11, 'IIM', 'IIM', 1, '2014-10-26 13:07:34', '0000-00-00 00:00:00', 'uploads/baracktocat.copy.jpg', 1, 1),
(12, 'IIM', 'IIM', 1, '2014-10-26 13:07:41', '0000-00-00 00:00:00', 'uploads/yes-we-nyan.jpg', 2, 1),
(13, 'IIM', 'IIM', 1, '2014-10-26 13:07:47', '0000-00-00 00:00:00', 'uploads/baracktocat.copy.jpg', 1, 1),
(14, 'IIM', 'IIM', 1, '2014-10-26 13:07:59', '0000-00-00 00:00:00', 'uploads/yes-we-nyan.jpg', 2, 1),
(15, 'IIM', 'IIM', 1, '2014-10-26 13:08:27', '0000-00-00 00:00:00', 'uploads/baracktocat.copy.jpg', 1, 1),
(16, 'IIM', 'IIM', 1, '2014-10-26 13:08:35', '0000-00-00 00:00:00', 'uploads/yes-we-nyan.jpg', 2, 1),
(17, 'IIM', 'IIM', 1, '2014-10-26 13:08:44', '0000-00-00 00:00:00', 'uploads/baracktocat.copy.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'BEST OF IIM', 'uploads/best-practices.png'),
(2, 'BEST OF CAT', 'uploads/best-cat.png');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `tag`
--

INSERT INTO `tag` (`id`, `name`) VALUES
(1, 'IIM WEB(1)'),
(2, 'IIM WEB(2)'),
(3, 'IIM WEB(3)\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(2, 'admin', 'admin', 'ROLE_ADMIN');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
