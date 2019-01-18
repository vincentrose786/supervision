-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 18 jan. 2019 à 07:37
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `supervision`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin1@sqy-reseaux.com', '0192023a7bbd73250516f069df18b500', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `catalogue`
--

DROP TABLE IF EXISTS `catalogue`;
CREATE TABLE IF NOT EXISTS `catalogue` (
  `idcatalogue` int(11) NOT NULL AUTO_INCREMENT,
  `modele` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`idcatalogue`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `catalogue`
--

INSERT INTO `catalogue` (`idcatalogue`, `modele`, `description`) VALUES
(1, '48552', '');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `iduser` int(11) NOT NULL,
  `idclient` varchar(50) NOT NULL,
  `entreprise` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`iduser`, `idclient`, `entreprise`, `nom`, `prenom`, `email`, `login`, `password`) VALUES
(1, '0001', 'CFI', 'rose', 'jordan', 'jordan.rose@hotmail.fr', 'jordan', 'd50ef01613287acfaf1da23507a22a70'),
(2, '0056', 'thales', 'berg', 'Jerome', 'j.berg@thales.com', 'jberg', '882baf28143fb700b388a87ef561a6e5'),
(5, '0006', 'SNCF', 'Latourte', 'Christian', 'c.latourte@sncf.com', 'clatourte', 'bec3edd9646e394e6b2e4d6dcb29fed6');

-- --------------------------------------------------------

--
-- Structure de la table `commercial`
--

DROP TABLE IF EXISTS `commercial`;
CREATE TABLE IF NOT EXISTS `commercial` (
  `iduser` int(11) NOT NULL,
  `idcommercial` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commercial`
--

INSERT INTO `commercial` (`iduser`, `idcommercial`, `nom`, `prenom`, `email`, `login`, `password`) VALUES
(1, '0002', 'Suiro', 'Quentin', 'q@gmail.com', 'quentin', 'azerty123'),
(2, '0003', 'laporte', 'bernard', 'laporte_bernard@sqy-reseaux.com', 'lbernard', 'azerty123');

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `idequipement` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idcatalogue` int(11) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `proprietaire` varchar(50) NOT NULL,
  PRIMARY KEY (`idequipement`),
  KEY `equipement_utilisateur_FK` (`iduser`),
  KEY `equipement_catalogue0_FK` (`idcatalogue`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`idequipement`, `libelle`, `iduser`, `idcatalogue`, `modele`, `ip`, `proprietaire`) VALUES
(1, 'ASUS ROG', 1, 1, 'pc portable', '172.16.18.36', 'Airbus');

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `idlog` int(11) NOT NULL AUTO_INCREMENT,
  `evenement` text NOT NULL,
  `date_log` date NOT NULL,
  `idequipement` int(11) NOT NULL,
  PRIMARY KEY (`idlog`),
  KEY `log_equipement_FK` (`idequipement`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `log`
--

INSERT INTO `log` (`idlog`, `evenement`, `date_log`, `idequipement`) VALUES
(1, '93.31.242.27 UNKNOWN u78334815 [01/Sep/2014:09:38:25 +0200] \"PASS (hidden)\" 230 -\r\n93.31.242.27 UNKNOWN u78334815 [01/Sep/2014:09:38:25 +0200] \"PWD\" 257 -\r\n93.31.242.27 UNKNOWN u78334815 [01/Sep/2014:09:38:25 +0200] \"CWD /\" 250 -\r\n93.31.242.27 UNKNOWN u78334815 [01/Sep/2014:09:38:25 +0200] \"CWD /\" 250 -\r\n93.31.242.27 UNKNOWN u78334815 [01/Sep/2014:09:38:25 +0200] \"MKD MM_CASETEST4291\" 257 -\r\n93.31.242.27 UNKNOWN u78334815 [01/Sep/2014:09:38:25 +0200] \"RMD mm_casetest4291\" 550 -\r\n93.31.242.27 UNKNOWN u78334815 [01/Sep/2014:09:38:25 +0200] \"CWD /\" 250 -', '2019-01-19', 1);

-- --------------------------------------------------------

--
-- Structure de la table `technicien`
--

DROP TABLE IF EXISTS `technicien`;
CREATE TABLE IF NOT EXISTS `technicien` (
  `iduser` int(11) NOT NULL,
  `idtechnicien` varchar(50) NOT NULL,
  `nbrposte` varchar(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `technicien`
--

INSERT INTO `technicien` (`iduser`, `idtechnicien`, `nbrposte`, `nom`, `prenom`, `email`, `login`, `password`) VALUES
(1, '0003', '33667788991', 'durepos', 'gilbert', 'd@gmail.com', 'gilbert', '882baf28143fb700b388a87ef561a6e5'),
(4, '0156456', '564', 'Ndombele', 'Fabrice', 'f.ndombele@sqy-reseaux.com', 'fndombele', 'd9f9133fb120cd6096870bc2b496805b');

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `idticket` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `date_ouverture` date NOT NULL,
  `statut` varchar(50) NOT NULL,
  `derniere_modif` date NOT NULL,
  `priorite` varchar(50) NOT NULL,
  `iduser` int(11) NOT NULL,
  PRIMARY KEY (`idticket`),
  KEY `ticket_client_FK` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ticket`
--

INSERT INTO `ticket` (`idticket`, `titre`, `date_ouverture`, `statut`, `derniere_modif`, `priorite`, `iduser`) VALUES
(1, 'Probleme affichage', '2019-01-08', 'en cours', '2019-01-15', 'haute', 1),
(2, 'probleme VPN', '2019-01-17', 'cloturé', '2019-01-17', 'faible', 1),
(3, 'Panne serveur', '2019-01-14', 'en cours', '2019-01-18', 'haute', 5),
(4, 'Problème réseaux', '2018-12-11', 'en cours', '2019-01-01', 'faible', 5),
(5, 'Serveur qui redemarre en boucle', '2019-01-09', 'non traité', '2019-01-09', 'haute', 2);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telephone` text NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`iduser`, `nom`, `prenom`, `email`, `login`, `password`, `telephone`, `role`) VALUES
(1, 'rose', 'vincent', 'v@gmail.com', 'vincent', 'd50ef01613287acfaf1da23507a22a70', '0699999999', 'client'),
(2, 'laporte', 'bernard', 'laporte_bernard@sqy-réseaux.com', 'lbernard', '882baf28143fb700b388a87ef561a6e5', '0661325448', 'technicien'),
(4, 'deplace', 'fred', 'fd@sqy-reseaux.com', 'fdeplace', '882baf28143fb700b388a87ef561a6e5', '0619853274', 'commercial'),
(5, 'Rose', 'Jordan', 'jordan.rose@outlook.fr', 'jrose', 'ab4f63f9ac65152575886860dde480a1', '0689566871', 'technicien'),
(7, 'dereck', 'peter', 'dereck.peter@sqy-reseaux.com', 'dpeter', '55161575f3e05dfb61145c5d63d67d29', '0665458987', 'ceo');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_utilisateur_FK` FOREIGN KEY (`iduser`) REFERENCES `utilisateur` (`iduser`);

--
-- Contraintes pour la table `commercial`
--
ALTER TABLE `commercial`
  ADD CONSTRAINT `commercial_utilisateur_FK` FOREIGN KEY (`iduser`) REFERENCES `utilisateur` (`iduser`);

--
-- Contraintes pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD CONSTRAINT `equipement_catalogue0_FK` FOREIGN KEY (`idcatalogue`) REFERENCES `catalogue` (`idcatalogue`),
  ADD CONSTRAINT `equipement_utilisateur_FK` FOREIGN KEY (`iduser`) REFERENCES `utilisateur` (`iduser`);

--
-- Contraintes pour la table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_equipement_FK` FOREIGN KEY (`idequipement`) REFERENCES `equipement` (`idequipement`);

--
-- Contraintes pour la table `technicien`
--
ALTER TABLE `technicien`
  ADD CONSTRAINT `technicien_utilisateur_FK` FOREIGN KEY (`iduser`) REFERENCES `utilisateur` (`iduser`);

--
-- Contraintes pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_client_FK` FOREIGN KEY (`iduser`) REFERENCES `client` (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
