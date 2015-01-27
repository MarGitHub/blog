-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Jaan 27, 2015 kell 02:48 PL
-- Serveri versioon: 5.6.20
-- PHP versioon: 5.5.15

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Andmebaas: `dream team productions`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `author` varchar(25) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `comment`
--

INSERT INTO `comment` (`author`, `comment_text`, `comment_created`, `post_id`) VALUES
('Market', 'Hello world!', '2014-09-17 09:24:32', 1),
('Klaabu', 'Comment', '2014-09-17 13:58:11', 1),
('Klaabu', 'This is a comment', '2014-10-13 07:25:20', 2),
('Klaabu', 'Hello', '2014-10-13 11:41:35', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `portfolio`
--

CREATE TABLE IF NOT EXISTS `portfolio` (
`sample_id` int(11) NOT NULL,
  `sample_subject` varchar(40) NOT NULL,
  `sample_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`post_id` int(10) unsigned NOT NULL,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Andmete tõmmistamine tabelile `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(1, 'First post', 'Dream Team Productions is an Estonian multinational corporation headquartered in Tartu, Estonia, that designs, develops, and sells consumer electronics, computer software, online services, and personal computers.\r\nThe company was founded by Margit Pilden, Syret Kärt, and Fränk Ainla on September 19, 2013, to develop and do each other homework.', '2015-01-27 11:18:17', 1),
(3, 'Second Post', 'Dream Team Productions is now number one Estonian graphic design company it also has won different awards for animation and photography. \r\n\r\nToday 27.01.2015 Dream Team Productions were awarded by Eesti Disainiauhinnad, they won Golden Screen award for graphic design.', '2015-01-27 11:31:19', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `post_tags`
--

CREATE TABLE IF NOT EXISTS `post_tags` (
  `post_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pricing`
--

CREATE TABLE IF NOT EXISTS `pricing` (
`service_id` int(11) NOT NULL,
  `service` varchar(50) NOT NULL,
  `service_text` text NOT NULL,
  `price` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Andmete tõmmistamine tabelile `pricing`
--

INSERT INTO `pricing` (`service_id`, `service`, `service_text`, `price`) VALUES
(1, 'Service 1', 'This is a nice sercvice. Very expensive. Everybody can''t afford it. Kind of a big deal it is.', 'Price 1'),
(2, 'Service 2', 'This is a very deep text. It is too deep I cant even see it anymore. Service 2 is a deep service too. The price is very deep. Cant see it. ', 'Price 2'),
(3, 'Sevice 3', 'This is the cheapest srvice. Everybody can afford it. It is so cheap that the company is willing to pay customers for ordering the srvice. Oh god, it''s cheap! ', 'Price 3');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
`tag_id` int(10) unsigned NOT NULL,
  `tag_name` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Andmete tõmmistamine tabelile `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'Margit'),
(2, 'Syret');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(10) unsigned NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Andmete tõmmistamine tabelile `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`) VALUES
(1, 'margit', 'margit', 0),
(2, 'syret', 'syret', 0),
(3, 'fränk', 'fränk', 0);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `portfolio`
--
ALTER TABLE `portfolio`
 ADD PRIMARY KEY (`sample_id`);

--
-- Indeksid tabelile `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`post_id`), ADD KEY `user_id` (`user_id`);

--
-- Indeksid tabelile `post_tags`
--
ALTER TABLE `post_tags`
 ADD PRIMARY KEY (`post_id`,`tag_id`), ADD KEY `tag_id` (`tag_id`);

--
-- Indeksid tabelile `pricing`
--
ALTER TABLE `pricing`
 ADD PRIMARY KEY (`service_id`);

--
-- Indeksid tabelile `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`tag_id`);

--
-- Indeksid tabelile `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `portfolio`
--
ALTER TABLE `portfolio`
MODIFY `sample_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabelile `post`
--
ALTER TABLE `post`
MODIFY `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT tabelile `pricing`
--
ALTER TABLE `pricing`
MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT tabelile `tag`
--
ALTER TABLE `tag`
MODIFY `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT tabelile `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `post`
--
ALTER TABLE `post`
ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Piirangud tabelile `post_tags`
--
ALTER TABLE `post_tags`
ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`);
SET FOREIGN_KEY_CHECKS=1;