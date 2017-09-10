-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 10 Septembre 2017 à 13:26
-- Version du serveur :  10.2.8-MariaDB
-- Version de PHP :  7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
CREATE TABLE IF NOT EXISTS `t_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(10) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_category`
--

INSERT INTO `t_category` (`category_id`, `category_name`) VALUES
(1, 'U20'),
(2, 'U17');

-- --------------------------------------------------------

--
-- Structure de la table `t_games`
--

DROP TABLE IF EXISTS `t_games`;
CREATE TABLE IF NOT EXISTS `t_games` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_date` date NOT NULL,
  `game_score` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE KEY `game_id` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_games`
--

INSERT INTO `t_games` (`game_id`, `game_date`, `game_score`) VALUES
(1, '2017-09-15', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t_players`
--

DROP TABLE IF EXISTS `t_players`;
CREATE TABLE IF NOT EXISTS `t_players` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_category` int(11) NOT NULL,
  `player_team` int(11) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `player_firstname` varchar(50) NOT NULL,
  `player_birthdate` date NOT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id` (`player_id`),
  KEY `FK_category` (`player_category`),
  KEY `FK_team` (`player_team`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_players`
--

INSERT INTO `t_players` (`player_id`, `player_category`, `player_team`, `player_name`, `player_firstname`, `player_birthdate`) VALUES
(1, 1, 1, 'Crausaz', 'Nicolas', '1999-08-03'),
(2, 1, 1, 'Bugnon', 'Alec', '1999-06-20');

-- --------------------------------------------------------

--
-- Structure de la table `t_play_game`
--

DROP TABLE IF EXISTS `t_play_game`;
CREATE TABLE IF NOT EXISTS `t_play_game` (
  `play_game_id` int(11) NOT NULL AUTO_INCREMENT,
  `play_game_team_home` int(11) NOT NULL,
  `play_game_team_away` int(11) NOT NULL,
  `play_game_game` int(11) DEFAULT NULL,
  PRIMARY KEY (`play_game_id`),
  UNIQUE KEY `play_game_id` (`play_game_id`),
  KEY `FK_team_home` (`play_game_team_home`),
  KEY `FK_team_away` (`play_game_team_away`),
  KEY `FK_game` (`play_game_game`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_play_game`
--

INSERT INTO `t_play_game` (`play_game_id`, `play_game_team_home`, `play_game_team_away`, `play_game_game`) VALUES
(1, 1, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_teams`
--

DROP TABLE IF EXISTS `t_teams`;
CREATE TABLE IF NOT EXISTS `t_teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) NOT NULL,
  `team_town` varchar(30) NOT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `team_id` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_teams`
--

INSERT INTO `t_teams` (`team_id`, `team_name`, `team_town`) VALUES
(1, 'Red Devils', 'Morges St-Prex'),
(2, 'BBC', 'Nyon'),
(3, 'BBC', 'Lausanne Ouest');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_players`
--
ALTER TABLE `t_players`
  ADD CONSTRAINT `FK_category` FOREIGN KEY (`player_category`) REFERENCES `t_category` (`category_id`),
  ADD CONSTRAINT `FK_team` FOREIGN KEY (`player_team`) REFERENCES `t_teams` (`team_id`);

--
-- Contraintes pour la table `t_play_game`
--
ALTER TABLE `t_play_game`
  ADD CONSTRAINT `FK_game` FOREIGN KEY (`play_game_game`) REFERENCES `t_games` (`game_id`),
  ADD CONSTRAINT `FK_team_away` FOREIGN KEY (`play_game_team_away`) REFERENCES `t_teams` (`team_id`),
  ADD CONSTRAINT `FK_team_home` FOREIGN KEY (`play_game_team_home`) REFERENCES `t_teams` (`team_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
