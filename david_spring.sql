-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 10 août 2024 à 10:17
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `david_spring`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `email`, `phone`, `address`) VALUES
(1, 'Jean David', 'jean.dupont@example.com', '0123456789', '123 Rue Exemple, Paris'),
(2, 'Marie Dubois', 'marie.dubois@example.com', '0987654321', '456 Avenue de la Liberté, Lyon'),
(3, 'Pierre Martin', 'pierre.martin@example.com', '0555666777', '789 Boulevard Saint-Michel, Bordeaux'),
(4, 'Sophie Bernard', 'sophie.bernard@example.com', '0112233445', '321 Rue du Soleil, Marseille'),
(5, 'Luc Lefevre', 'luc.lefevre@example.com', '0666777888', '654 Rue des Champs, Lille'),
(6, 'Lefou David', 'jean.hhh@example.com', '0123456789', '123 Rue Exemple, Paris');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `commande_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`commande_id`),
  KEY `client_id` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`commande_id`, `client_id`, `product`, `amount`, `order_date`) VALUES
(3, 2, 'Tablette', '499.99', '2024-08-12'),
(4, 2, 'Clavier', '49.99', '2024-08-12'),
(5, 3, 'Smartphone', '699.99', '2024-08-13'),
(6, 4, 'Écouteurs Bluetooth', '79.99', '2024-08-14'),
(7, 4, 'Chargeur', '19.99', '2024-08-15'),
(8, 5, 'Télévision 4K', '1199.99', '2024-08-16'),
(9, 5, 'Lecteur DVD', '89.99', '2024-08-17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
