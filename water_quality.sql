-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 11 juil. 2023 à 09:36
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `qualite d'eau`
--

-- --------------------------------------------------------

--
-- Structure de la table `water_quality`
--

DROP TABLE IF EXISTS `water_quality`;
CREATE TABLE IF NOT EXISTS `water_quality` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pH_value` decimal(10,0) DEFAULT NULL,
  `Hardness` float NOT NULL,
  `Solids` float NOT NULL,
  `Chloramines` float NOT NULL,
  `Sulfate` float NOT NULL,
  `Conductivity` float NOT NULL,
  `Organic_carbon` float NOT NULL,
  `Trihalomethanes` float NOT NULL,
  `Turbidity` float NOT NULL,
  `Porbability` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `water_quality`
--

INSERT INTO `water_quality` (`id`, `pH_value`, `Hardness`, `Solids`, `Chloramines`, `Sulfate`, `Conductivity`, `Organic_carbon`, `Trihalomethanes`, `Turbidity`, `Porbability`) VALUES
(1, '4', 0, 0, 0, 0, 0, 0, 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
