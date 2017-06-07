-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 06 Juin 2017 à 09:21
-- Version du serveur :  5.6.31
-- Version de PHP :  5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE dlangage1;
USE dlangage1;


--
-- Base de données :  `dlangage1`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE IF NOT EXISTS `appartient` (
  `id_app` int(11) NOT NULL,
  `id_se_trad` int(11) NOT NULL COMMENT 'References se_trad',
  `id_ch` int(11) NOT NULL COMMENT 'References champs_lex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `appartient`
--

INSERT INTO `appartient` (`id_app`, `id_se_trad`, `id_ch`) VALUES
(1, 1, 60);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `autre`
--
CREATE TABLE IF NOT EXISTS `autre` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `a_pr_n_trad`
--

CREATE TABLE IF NOT EXISTS `a_pr_n_trad` (
  `id_a_pr_n_trad` int(11) NOT NULL,
  `id_trad` int(11) NOT NULL COMMENT 'References trad',
  `id_n_trad` int(11) NOT NULL COMMENT 'References nature_trad'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `a_pr_n_trad`
--

INSERT INTO `a_pr_n_trad` (`id_a_pr_n_trad`, `id_trad`, `id_n_trad`) VALUES
(1, 1, 15);

-- --------------------------------------------------------

--
-- Structure de la table `a_pr_n_voc`
--

CREATE TABLE IF NOT EXISTS `a_pr_n_voc` (
  `id_a_pr_n_voc` int(11) NOT NULL,
  `id_voc` int(11) NOT NULL COMMENT 'References voc_eng',
  `id_n_voc` int(11) NOT NULL COMMENT 'References nature_voc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `a_pr_n_voc`
--

INSERT INTO `a_pr_n_voc` (`id_a_pr_n_voc`, `id_voc`, `id_n_voc`) VALUES
(1, 1, 29);

-- --------------------------------------------------------

--
-- Structure de la table `champs_lex`
--

CREATE TABLE IF NOT EXISTS `champs_lex` (
  `id_ch` int(11) NOT NULL,
  `champs` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `champs_lex`
--

INSERT INTO `champs_lex` (`id_ch`, `champs`) VALUES
(1, 'nature'),
(2, 'sciences'),
(3, 'climat'),
(4, 'corps_humain'),
(5, 'fruits_et_legumes'),
(6, 'animaux'),
(7, 'les_materiaux'),
(8, 'les_minerais'),
(9, 'agriculture'),
(10, 'mathematiques'),
(11, 'litterature'),
(12, 'arts'),
(13, 'etudes'),
(14, 'histoire'),
(15, 'religion'),
(16, 'les_bases'),
(17, 'les_mois'),
(18, 'les_jours'),
(19, 'vêtements'),
(20, 'cuisine'),
(21, 'maison'),
(22, 'famille'),
(23, 'les_saisons'),
(24, 'loisirs'),
(25, 'les_points_cardinaux'),
(26, 'transports'),
(27, 'justice'),
(28, 'television'),
(29, 'police'),
(30, 'sante'),
(31, 'sport'),
(32, 'metiers'),
(33, 'entreprise'),
(34, 'qualites'),
(35, 'defauts'),
(36, 'immeuble'),
(37, 'voiture'),
(38, 'banque'),
(39, 'politique'),
(40, 'consommation'),
(41, 'ville'),
(42, 'goûts'),
(43, 'repère_de_lieu'),
(44, 'repère_de_temps'),
(45, 'traits_de_caractère'),
(46, 'les_couleurs'),
(47, 'relations_humaines'),
(48, 'navigation'),
(49, 'théâtre'),
(50, 'bricolage'),
(51, 'musique'),
(52, 'alcool'),
(53, 'bijoux'),
(54, 'journal'),
(55, 'photographie'),
(56, 'soin'),
(57, 'problème'),
(58, 'condition'),
(59, 'description'),
(60, 'mouvement'),
(61, 'divers_connecteurs');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cla01nature`
--
CREATE TABLE IF NOT EXISTS `cla01nature` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cla02sciences`
--
CREATE TABLE IF NOT EXISTS `cla02sciences` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cla03climat`
--
CREATE TABLE IF NOT EXISTS `cla03climat` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cla04corps_humain`
--
CREATE TABLE IF NOT EXISTS `cla04corps_humain` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cla05fruits_et_legumes`
--
CREATE TABLE IF NOT EXISTS `cla05fruits_et_legumes` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cla06animaux`
--
CREATE TABLE IF NOT EXISTS `cla06animaux` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cla07les_materiaux`
--
CREATE TABLE IF NOT EXISTS `cla07les_materiaux` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cla08les_minerais`
--
CREATE TABLE IF NOT EXISTS `cla08les_minerais` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clb01agriculture`
--
CREATE TABLE IF NOT EXISTS `clb01agriculture` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clb02mathematiques`
--
CREATE TABLE IF NOT EXISTS `clb02mathematiques` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clb03litterature`
--
CREATE TABLE IF NOT EXISTS `clb03litterature` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clb04arts`
--
CREATE TABLE IF NOT EXISTS `clb04arts` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clb05etudes`
--
CREATE TABLE IF NOT EXISTS `clb05etudes` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clb06histoire`
--
CREATE TABLE IF NOT EXISTS `clb06histoire` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clb07religion`
--
CREATE TABLE IF NOT EXISTS `clb07religion` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clc01les_bases`
--
CREATE TABLE IF NOT EXISTS `clc01les_bases` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clc02les_mois`
--
CREATE TABLE IF NOT EXISTS `clc02les_mois` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clc03les_jours`
--
CREATE TABLE IF NOT EXISTS `clc03les_jours` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clc04vêtements`
--
CREATE TABLE IF NOT EXISTS `clc04vêtements` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clc05cuisine`
--
CREATE TABLE IF NOT EXISTS `clc05cuisine` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clc06maison`
--
CREATE TABLE IF NOT EXISTS `clc06maison` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clc07famille`
--
CREATE TABLE IF NOT EXISTS `clc07famille` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clc08les_saisons`
--
CREATE TABLE IF NOT EXISTS `clc08les_saisons` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clc09loisirs`
--
CREATE TABLE IF NOT EXISTS `clc09loisirs` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clc10les_points_cardinaux`
--
CREATE TABLE IF NOT EXISTS `clc10les_points_cardinaux` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cld01transports`
--
CREATE TABLE IF NOT EXISTS `cld01transports` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cld02justice`
--
CREATE TABLE IF NOT EXISTS `cld02justice` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cld03television`
--
CREATE TABLE IF NOT EXISTS `cld03television` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cld04police`
--
CREATE TABLE IF NOT EXISTS `cld04police` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cld05sante`
--
CREATE TABLE IF NOT EXISTS `cld05sante` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cle01sport`
--
CREATE TABLE IF NOT EXISTS `cle01sport` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cle02metiers`
--
CREATE TABLE IF NOT EXISTS `cle02metiers` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cle03entreprise`
--
CREATE TABLE IF NOT EXISTS `cle03entreprise` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cle04qualites`
--
CREATE TABLE IF NOT EXISTS `cle04qualites` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cle05defauts`
--
CREATE TABLE IF NOT EXISTS `cle05defauts` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clf01immeuble`
--
CREATE TABLE IF NOT EXISTS `clf01immeuble` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clf02voiture`
--
CREATE TABLE IF NOT EXISTS `clf02voiture` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clf03banque`
--
CREATE TABLE IF NOT EXISTS `clf03banque` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clf04politique`
--
CREATE TABLE IF NOT EXISTS `clf04politique` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clf05consommation`
--
CREATE TABLE IF NOT EXISTS `clf05consommation` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clf06ville`
--
CREATE TABLE IF NOT EXISTS `clf06ville` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clg01goûts`
--
CREATE TABLE IF NOT EXISTS `clg01goûts` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clg02repère_de_lieu`
--
CREATE TABLE IF NOT EXISTS `clg02repère_de_lieu` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clg03repère_de_temps`
--
CREATE TABLE IF NOT EXISTS `clg03repère_de_temps` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clg04traits_de_caractère`
--
CREATE TABLE IF NOT EXISTS `clg04traits_de_caractère` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clg05les_couleurs`
--
CREATE TABLE IF NOT EXISTS `clg05les_couleurs` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clg06relations_humaines`
--
CREATE TABLE IF NOT EXISTS `clg06relations_humaines` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clh01navigation`
--
CREATE TABLE IF NOT EXISTS `clh01navigation` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clh02théâtre`
--
CREATE TABLE IF NOT EXISTS `clh02théâtre` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clh03bricolage`
--
CREATE TABLE IF NOT EXISTS `clh03bricolage` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clh04musique`
--
CREATE TABLE IF NOT EXISTS `clh04musique` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clh05alcool`
--
CREATE TABLE IF NOT EXISTS `clh05alcool` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clh06bijoux`
--
CREATE TABLE IF NOT EXISTS `clh06bijoux` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clh07journal`
--
CREATE TABLE IF NOT EXISTS `clh07journal` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clh08photographie`
--
CREATE TABLE IF NOT EXISTS `clh08photographie` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clh09soin`
--
CREATE TABLE IF NOT EXISTS `clh09soin` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clh10problème`
--
CREATE TABLE IF NOT EXISTS `clh10problème` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cli01condition`
--
CREATE TABLE IF NOT EXISTS `cli01condition` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cli02description`
--
CREATE TABLE IF NOT EXISTS `cli02description` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cli03mouvement`
--
CREATE TABLE IF NOT EXISTS `cli03mouvement` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `cli04divers_connecteurs`
--
CREATE TABLE IF NOT EXISTS `cli04divers_connecteurs` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `database_spec`
--

CREATE TABLE IF NOT EXISTS `database_spec` (
  `dlangage` varchar(255) DEFAULT NULL,
  `ddescription` text,
  `prefix_width` int(2) DEFAULT NULL,
  `cat_views` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `database_spec`
--

INSERT INTO `database_spec` (`dlangage`, `ddescription`, `prefix_width`, `cat_views`) VALUES
('espagnol', 'Claridad 3è édition', 5, 1);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `description`
--
CREATE TABLE IF NOT EXISTS `description` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `education`
--
CREATE TABLE IF NOT EXISTS `education` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `environnement`
--
CREATE TABLE IF NOT EXISTS `environnement` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `en_ville`
--
CREATE TABLE IF NOT EXISTS `en_ville` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `generalites`
--
CREATE TABLE IF NOT EXISTS `generalites` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_adjectif`
--
CREATE TABLE IF NOT EXISTS `kind_adjectif` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_adjectifs`
--
CREATE TABLE IF NOT EXISTS `kind_adjectifs` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_adjectif_nom`
--
CREATE TABLE IF NOT EXISTS `kind_adjectif_nom` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_adjectif_numeral`
--
CREATE TABLE IF NOT EXISTS `kind_adjectif_numeral` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_adverbe`
--
CREATE TABLE IF NOT EXISTS `kind_adverbe` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_conjonction`
--
CREATE TABLE IF NOT EXISTS `kind_conjonction` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_determinants`
--
CREATE TABLE IF NOT EXISTS `kind_determinants` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_expression`
--
CREATE TABLE IF NOT EXISTS `kind_expression` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_groupe_nominal`
--
CREATE TABLE IF NOT EXISTS `kind_groupe_nominal` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_groupe_verbal`
--
CREATE TABLE IF NOT EXISTS `kind_groupe_verbal` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_interjection`
--
CREATE TABLE IF NOT EXISTS `kind_interjection` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_locution_adjectivale`
--
CREATE TABLE IF NOT EXISTS `kind_locution_adjectivale` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_locution_adverbiale`
--
CREATE TABLE IF NOT EXISTS `kind_locution_adverbiale` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_locution_conjonctive`
--
CREATE TABLE IF NOT EXISTS `kind_locution_conjonctive` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_locution_interjective`
--
CREATE TABLE IF NOT EXISTS `kind_locution_interjective` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_locution_nominale`
--
CREATE TABLE IF NOT EXISTS `kind_locution_nominale` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_locution_phrase`
--
CREATE TABLE IF NOT EXISTS `kind_locution_phrase` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_locution_prepositive`
--
CREATE TABLE IF NOT EXISTS `kind_locution_prepositive` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_locution_pronominale`
--
CREATE TABLE IF NOT EXISTS `kind_locution_pronominale` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_locution_verbale`
--
CREATE TABLE IF NOT EXISTS `kind_locution_verbale` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_nom`
--
CREATE TABLE IF NOT EXISTS `kind_nom` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_noms`
--
CREATE TABLE IF NOT EXISTS `kind_noms` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_nom_propre`
--
CREATE TABLE IF NOT EXISTS `kind_nom_propre` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_participe_passe`
--
CREATE TABLE IF NOT EXISTS `kind_participe_passe` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_participe_present`
--
CREATE TABLE IF NOT EXISTS `kind_participe_present` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_preposition`
--
CREATE TABLE IF NOT EXISTS `kind_preposition` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_pronom`
--
CREATE TABLE IF NOT EXISTS `kind_pronom` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_verbe`
--
CREATE TABLE IF NOT EXISTS `kind_verbe` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `kind_verbes`
--
CREATE TABLE IF NOT EXISTS `kind_verbes` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`id_a_pr_n_trad` int(11)
,`nature_trad` varchar(255)
,`id_a_pr_n_voc` int(11)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `nature_trad`
--

CREATE TABLE IF NOT EXISTS `nature_trad` (
  `id_n_trad` int(11) NOT NULL,
  `nature_trad` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `nature_trad`
--

INSERT INTO `nature_trad` (`id_n_trad`, `nature_trad`) VALUES
(1, 'adjectif'),
(2, 'adverbe'),
(3, 'conjonction'),
(4, 'expression'),
(5, 'groupe_nominal'),
(6, 'groupe_verbal'),
(7, 'locution_adjectivale'),
(8, 'locution_adverbiale'),
(9, 'locution_conjonctive'),
(10, 'nom'),
(11, 'participe_passe'),
(12, 'participe_present'),
(13, 'preposition'),
(14, 'pronom'),
(15, 'verbe'),
(16, 'locution_nominale'),
(17, 'locution_prepositive'),
(18, 'locution-phrase'),
(19, 'interjection'),
(20, 'locution interjective'),
(21, 'adjectif_numeral'),
(22, 'nom_propre'),
(23, 'locution_pronominale'),
(24, 'adjectif_nom'),
(25, 'determinants'),
(26, 'locution_verbale'),
(27, 'adjectifs'),
(28, 'noms'),
(29, 'verbes');

-- --------------------------------------------------------

--
-- Structure de la table `nature_voc`
--

CREATE TABLE IF NOT EXISTS `nature_voc` (
  `id_n_voc` int(11) NOT NULL,
  `nature_voc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `nature_voc`
--

INSERT INTO `nature_voc` (`id_n_voc`, `nature_voc`) VALUES
(1, 'adjectif'),
(2, 'adverbe'),
(3, 'conjonction'),
(4, 'expression'),
(5, 'groupe_nominal'),
(6, 'groupe_verbal'),
(7, 'locution_adjectivale'),
(8, 'locution_adverbiale'),
(9, 'locution_conjonctive'),
(10, 'nom'),
(11, 'participe_passe'),
(12, 'participe_present'),
(13, 'preposition'),
(14, 'pronom'),
(15, 'verbe'),
(16, 'locution_nominale'),
(17, 'locution_prepositive'),
(18, 'locution-phrase'),
(19, 'interjection'),
(20, 'locution interjective'),
(21, 'adjectif_numeral'),
(22, 'nom_propre'),
(23, 'locution_pronominale'),
(24, 'adjectif_nom'),
(25, 'determinants'),
(26, 'locution_verbale'),
(27, 'adjectifs'),
(28, 'noms'),
(29, 'verbes');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `services_publics`
--
CREATE TABLE IF NOT EXISTS `services_publics` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `se_trad`
--

CREATE TABLE IF NOT EXISTS `se_trad` (
  `id_se_trad` int(11) NOT NULL,
  `id_trad` int(11) NOT NULL COMMENT 'References trad',
  `id_voc` int(11) NOT NULL COMMENT 'References voc_eng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `se_trad`
--

INSERT INTO `se_trad` (`id_se_trad`, `id_trad`, `id_voc`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `temp_multichamps`
--
CREATE TABLE IF NOT EXISTS `temp_multichamps` (
`id_trad` int(11)
,`trad` varchar(255)
,`nature_trad` varchar(255)
,`voc` varchar(255)
,`nature_voc` varchar(255)
,`champs` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `temp_multichamps2`
--
CREATE TABLE IF NOT EXISTS `temp_multichamps2` (
`id_trad` int(11)
,`trad` varchar(255)
,`nature_trad` varchar(255)
,`voc` varchar(255)
,`nature_voc` varchar(255)
,`champs` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `temp_multinature`
--
CREATE TABLE IF NOT EXISTS `temp_multinature` (
`id_trad` int(11)
,`trad` varchar(255)
,`nature_trad` varchar(255)
,`voc` varchar(255)
,`nature_voc` varchar(255)
,`champs` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `trad`
--

CREATE TABLE IF NOT EXISTS `trad` (
  `id_trad` int(11) NOT NULL,
  `trad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `trad`
--

INSERT INTO `trad` (`id_trad`, `trad`) VALUES
(1, 'abaisser');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `travailler`
--
CREATE TABLE IF NOT EXISTS `travailler` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_adjectif`
--
CREATE TABLE IF NOT EXISTS `type_adjectif` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_adjectifs`
--
CREATE TABLE IF NOT EXISTS `type_adjectifs` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_adjectif_nom`
--
CREATE TABLE IF NOT EXISTS `type_adjectif_nom` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_adjectif_numeral`
--
CREATE TABLE IF NOT EXISTS `type_adjectif_numeral` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_adverbe`
--
CREATE TABLE IF NOT EXISTS `type_adverbe` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_conjonction`
--
CREATE TABLE IF NOT EXISTS `type_conjonction` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_determinants`
--
CREATE TABLE IF NOT EXISTS `type_determinants` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_expression`
--
CREATE TABLE IF NOT EXISTS `type_expression` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_groupe_nominal`
--
CREATE TABLE IF NOT EXISTS `type_groupe_nominal` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_groupe_verbal`
--
CREATE TABLE IF NOT EXISTS `type_groupe_verbal` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_interjection`
--
CREATE TABLE IF NOT EXISTS `type_interjection` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_locution_adjectivale`
--
CREATE TABLE IF NOT EXISTS `type_locution_adjectivale` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_locution_adverbiale`
--
CREATE TABLE IF NOT EXISTS `type_locution_adverbiale` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_locution_conjonctive`
--
CREATE TABLE IF NOT EXISTS `type_locution_conjonctive` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_locution_interjective`
--
CREATE TABLE IF NOT EXISTS `type_locution_interjective` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_locution_nominale`
--
CREATE TABLE IF NOT EXISTS `type_locution_nominale` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_locution_phrase`
--
CREATE TABLE IF NOT EXISTS `type_locution_phrase` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_locution_prepositive`
--
CREATE TABLE IF NOT EXISTS `type_locution_prepositive` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_locution_pronominale`
--
CREATE TABLE IF NOT EXISTS `type_locution_pronominale` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_locution_verbale`
--
CREATE TABLE IF NOT EXISTS `type_locution_verbale` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_nom`
--
CREATE TABLE IF NOT EXISTS `type_nom` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_noms`
--
CREATE TABLE IF NOT EXISTS `type_noms` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_nom_propre`
--
CREATE TABLE IF NOT EXISTS `type_nom_propre` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_participe_passe`
--
CREATE TABLE IF NOT EXISTS `type_participe_passe` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_participe_present`
--
CREATE TABLE IF NOT EXISTS `type_participe_present` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_preposition`
--
CREATE TABLE IF NOT EXISTS `type_preposition` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_pronom`
--
CREATE TABLE IF NOT EXISTS `type_pronom` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_verbe`
--
CREATE TABLE IF NOT EXISTS `type_verbe` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `type_verbes`
--
CREATE TABLE IF NOT EXISTS `type_verbes` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `view_cat`
--

CREATE TABLE IF NOT EXISTS `view_cat` (
  `id_cat` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `view_cat`
--

INSERT INTO `view_cat` (`id_cat`, `cat_name`) VALUES
(13, 'sans'),
(14, 'ENVIRONNEMENT'),
(15, 'EDUCATION'),
(16, 'VIVRE'),
(17, 'SERVICES_PUBLICS'),
(18, 'TRAVAILLER'),
(19, 'EN_VILLE'),
(20, 'DESCRIPTION'),
(21, 'AUTRE'),
(22, 'GENERALITES');

-- --------------------------------------------------------

--
-- Structure de la table `view_spec`
--

CREATE TABLE IF NOT EXISTS `view_spec` (
  `id_view` int(11) NOT NULL,
  `view_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nature_inc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nature_numb` int(11) NOT NULL,
  `view_spe` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL COMMENT 'References view_cat',
  `id_sub` int(11) NOT NULL COMMENT 'References view_sub',
  `id_ch` int(11) NOT NULL COMMENT 'References champs_lex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `view_spec`
--

INSERT INTO `view_spec` (`id_view`, `view_name`, `nature_inc`, `nature_numb`, `view_spe`, `id_cat`, `id_sub`, `id_ch`) VALUES
(2, 'cla01nature', '', 26, 3, 14, 0, 1),
(3, 'cla02sciences', '', 26, 3, 14, 0, 2),
(4, 'cla03climat', '', 26, 3, 14, 0, 3),
(5, 'cla04corps_humain', '', 26, 3, 14, 0, 4),
(6, 'cla05fruits_et_legumes', '', 26, 3, 14, 0, 5),
(7, 'cla06animaux', '', 26, 3, 14, 0, 6),
(9, 'cla08les_minerais', '', 26, 3, 14, 0, 8),
(10, 'cla07les_materiaux', '', 26, 3, 14, 0, 7),
(11, 'clb01agriculture', '', 26, 3, 15, 0, 9),
(12, 'clb02mathematiques', '', 26, 3, 15, 0, 10),
(13, 'clb03litterature', '', 26, 3, 15, 0, 11),
(14, 'clb04arts', '', 26, 3, 15, 0, 12),
(15, 'clb05etudes', '', 26, 3, 15, 0, 13),
(16, 'clb06histoire', '', 26, 3, 15, 0, 14),
(17, 'clb07religion', '', 26, 3, 15, 0, 15),
(18, 'clc01les_bases', '', 26, 3, 16, 0, 16),
(19, 'clc02les_mois', '', 26, 3, 16, 0, 17),
(20, 'clc03les_jours', '', 26, 3, 16, 0, 18),
(21, 'clc04vêtements', '', 26, 3, 16, 0, 19),
(22, 'clc05cuisine', '', 26, 3, 16, 0, 20),
(23, 'clc06maison', '', 26, 3, 16, 0, 21),
(24, 'clc07famille', '', 26, 3, 16, 0, 22),
(25, 'clc08les_saisons', '', 26, 3, 16, 0, 23),
(26, 'clc09loisirs', '', 26, 3, 16, 0, 24),
(27, 'clc10les_points_cardinaux', '', 26, 3, 16, 0, 25),
(28, 'cld01transports', '', 26, 3, 17, 0, 26),
(29, 'cld02justice', '', 26, 3, 17, 0, 27),
(30, 'cld03television', '', 26, 3, 17, 0, 28),
(31, 'cld04police', '', 26, 3, 17, 0, 29),
(32, 'cld05sante', '', 26, 3, 17, 0, 30),
(33, 'cle01sport', '', 26, 3, 18, 0, 31),
(34, 'cle02metiers', '', 26, 3, 18, 0, 32),
(35, 'cle03entreprise', '', 26, 3, 18, 0, 33),
(36, 'cle04qualites', '', 26, 3, 18, 0, 34),
(37, 'cle05defauts', '', 26, 3, 18, 0, 35),
(38, 'clf01immeuble', '', 26, 3, 19, 0, 36),
(39, 'clf02voiture', '', 26, 3, 19, 0, 37),
(40, 'clf03banque', '', 26, 3, 19, 0, 38),
(41, 'clf04politique', '', 26, 3, 19, 0, 39),
(42, 'clf05consommation', '', 26, 3, 19, 0, 40),
(43, 'clf06ville', '', 26, 3, 19, 0, 41),
(44, 'clg01goûts', '', 26, 3, 20, 0, 42),
(45, 'clg02repère_de_lieu', '', 26, 3, 20, 0, 43),
(46, 'clg03repère_de_temps', '', 26, 3, 20, 0, 44),
(47, 'clg04traits_de_caractère', '', 26, 3, 20, 0, 45),
(48, 'clg05les_couleurs', '', 26, 3, 20, 0, 46),
(49, 'clg06relations_humaines', '', 26, 3, 20, 0, 47),
(50, 'clh01navigation', '', 26, 3, 21, 0, 48),
(51, 'clh02théâtre', '', 26, 3, 21, 0, 49),
(52, 'clh03bricolage', '', 26, 3, 21, 0, 50),
(53, 'clh04musique', '', 26, 3, 21, 0, 51),
(54, 'clh05alcool', '', 26, 3, 21, 0, 52),
(55, 'clh06bijoux', '', 26, 3, 21, 0, 53),
(56, 'clh07journal', '', 26, 3, 21, 0, 54),
(57, 'clh08photographie', '', 26, 3, 21, 0, 55),
(58, 'clh09soin', '', 26, 3, 21, 0, 56),
(59, 'clh10problème', '', 26, 3, 21, 0, 57),
(60, 'cli01condition', '', 26, 3, 22, 0, 58),
(61, 'cli02description', '', 26, 3, 22, 0, 59),
(62, 'cli03mouvement', '', 26, 3, 22, 0, 60),
(63, 'cli04divers_connecteurs', '', 26, 3, 22, 0, 61);

-- --------------------------------------------------------

--
-- Structure de la table `view_sub`
--

CREATE TABLE IF NOT EXISTS `view_sub` (
  `id_sub` int(11) NOT NULL,
  `sub_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_cat` int(11) NOT NULL COMMENT 'References view_cat'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vivre`
--
CREATE TABLE IF NOT EXISTS `vivre` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `voc_eng`
--

CREATE TABLE IF NOT EXISTS `voc_eng` (
  `id_voc` int(11) NOT NULL,
  `voc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `voc_eng`
--

INSERT INTO `voc_eng` (`id_voc`, `voc`) VALUES
(1, 'bajar, rebajar');

-- --------------------------------------------------------

--
-- Structure de la vue `autre`
--
DROP TABLE IF EXISTS `autre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `autre` AS select `clh01navigation`.`id_trad` AS `id_trad`,`clh01navigation`.`trad` AS `trad`,`clh01navigation`.`voc` AS `voc`,`clh01navigation`.`champs` AS `champs`,`clh01navigation`.`nature_trad` AS `nature_trad`,`clh01navigation`.`nature_voc` AS `nature_voc` from `clh01navigation` union select `clh02théâtre`.`id_trad` AS `id_trad`,`clh02théâtre`.`trad` AS `trad`,`clh02théâtre`.`voc` AS `voc`,`clh02théâtre`.`champs` AS `champs`,`clh02théâtre`.`nature_trad` AS `nature_trad`,`clh02théâtre`.`nature_voc` AS `nature_voc` from `clh02théâtre` union select `clh03bricolage`.`id_trad` AS `id_trad`,`clh03bricolage`.`trad` AS `trad`,`clh03bricolage`.`voc` AS `voc`,`clh03bricolage`.`champs` AS `champs`,`clh03bricolage`.`nature_trad` AS `nature_trad`,`clh03bricolage`.`nature_voc` AS `nature_voc` from `clh03bricolage` union select `clh04musique`.`id_trad` AS `id_trad`,`clh04musique`.`trad` AS `trad`,`clh04musique`.`voc` AS `voc`,`clh04musique`.`champs` AS `champs`,`clh04musique`.`nature_trad` AS `nature_trad`,`clh04musique`.`nature_voc` AS `nature_voc` from `clh04musique` union select `clh05alcool`.`id_trad` AS `id_trad`,`clh05alcool`.`trad` AS `trad`,`clh05alcool`.`voc` AS `voc`,`clh05alcool`.`champs` AS `champs`,`clh05alcool`.`nature_trad` AS `nature_trad`,`clh05alcool`.`nature_voc` AS `nature_voc` from `clh05alcool` union select `clh06bijoux`.`id_trad` AS `id_trad`,`clh06bijoux`.`trad` AS `trad`,`clh06bijoux`.`voc` AS `voc`,`clh06bijoux`.`champs` AS `champs`,`clh06bijoux`.`nature_trad` AS `nature_trad`,`clh06bijoux`.`nature_voc` AS `nature_voc` from `clh06bijoux` union select `clh07journal`.`id_trad` AS `id_trad`,`clh07journal`.`trad` AS `trad`,`clh07journal`.`voc` AS `voc`,`clh07journal`.`champs` AS `champs`,`clh07journal`.`nature_trad` AS `nature_trad`,`clh07journal`.`nature_voc` AS `nature_voc` from `clh07journal` union select `clh08photographie`.`id_trad` AS `id_trad`,`clh08photographie`.`trad` AS `trad`,`clh08photographie`.`voc` AS `voc`,`clh08photographie`.`champs` AS `champs`,`clh08photographie`.`nature_trad` AS `nature_trad`,`clh08photographie`.`nature_voc` AS `nature_voc` from `clh08photographie` union select `clh09soin`.`id_trad` AS `id_trad`,`clh09soin`.`trad` AS `trad`,`clh09soin`.`voc` AS `voc`,`clh09soin`.`champs` AS `champs`,`clh09soin`.`nature_trad` AS `nature_trad`,`clh09soin`.`nature_voc` AS `nature_voc` from `clh09soin` union select `clh10problème`.`id_trad` AS `id_trad`,`clh10problème`.`trad` AS `trad`,`clh10problème`.`voc` AS `voc`,`clh10problème`.`champs` AS `champs`,`clh10problème`.`nature_trad` AS `nature_trad`,`clh10problème`.`nature_voc` AS `nature_voc` from `clh10problème`;

-- --------------------------------------------------------

--
-- Structure de la vue `cla01nature`
--
DROP TABLE IF EXISTS `cla01nature`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cla01nature` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 1));

-- --------------------------------------------------------

--
-- Structure de la vue `cla02sciences`
--
DROP TABLE IF EXISTS `cla02sciences`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cla02sciences` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 2));

-- --------------------------------------------------------

--
-- Structure de la vue `cla03climat`
--
DROP TABLE IF EXISTS `cla03climat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cla03climat` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 3));

-- --------------------------------------------------------

--
-- Structure de la vue `cla04corps_humain`
--
DROP TABLE IF EXISTS `cla04corps_humain`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cla04corps_humain` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 4));

-- --------------------------------------------------------

--
-- Structure de la vue `cla05fruits_et_legumes`
--
DROP TABLE IF EXISTS `cla05fruits_et_legumes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cla05fruits_et_legumes` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 5));

-- --------------------------------------------------------

--
-- Structure de la vue `cla06animaux`
--
DROP TABLE IF EXISTS `cla06animaux`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cla06animaux` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 6));

-- --------------------------------------------------------

--
-- Structure de la vue `cla07les_materiaux`
--
DROP TABLE IF EXISTS `cla07les_materiaux`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cla07les_materiaux` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 7));

-- --------------------------------------------------------

--
-- Structure de la vue `cla08les_minerais`
--
DROP TABLE IF EXISTS `cla08les_minerais`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cla08les_minerais` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 8));

-- --------------------------------------------------------

--
-- Structure de la vue `clb01agriculture`
--
DROP TABLE IF EXISTS `clb01agriculture`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clb01agriculture` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 9));

-- --------------------------------------------------------

--
-- Structure de la vue `clb02mathematiques`
--
DROP TABLE IF EXISTS `clb02mathematiques`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clb02mathematiques` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 10));

-- --------------------------------------------------------

--
-- Structure de la vue `clb03litterature`
--
DROP TABLE IF EXISTS `clb03litterature`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clb03litterature` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 11));

-- --------------------------------------------------------

--
-- Structure de la vue `clb04arts`
--
DROP TABLE IF EXISTS `clb04arts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clb04arts` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 12));

-- --------------------------------------------------------

--
-- Structure de la vue `clb05etudes`
--
DROP TABLE IF EXISTS `clb05etudes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clb05etudes` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 13));

-- --------------------------------------------------------

--
-- Structure de la vue `clb06histoire`
--
DROP TABLE IF EXISTS `clb06histoire`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clb06histoire` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 14));

-- --------------------------------------------------------

--
-- Structure de la vue `clb07religion`
--
DROP TABLE IF EXISTS `clb07religion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clb07religion` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 15));

-- --------------------------------------------------------

--
-- Structure de la vue `clc01les_bases`
--
DROP TABLE IF EXISTS `clc01les_bases`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clc01les_bases` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 16));

-- --------------------------------------------------------

--
-- Structure de la vue `clc02les_mois`
--
DROP TABLE IF EXISTS `clc02les_mois`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clc02les_mois` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 17));

-- --------------------------------------------------------

--
-- Structure de la vue `clc03les_jours`
--
DROP TABLE IF EXISTS `clc03les_jours`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clc03les_jours` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 18));

-- --------------------------------------------------------

--
-- Structure de la vue `clc04vêtements`
--
DROP TABLE IF EXISTS `clc04vêtements`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clc04vêtements` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 19));

-- --------------------------------------------------------

--
-- Structure de la vue `clc05cuisine`
--
DROP TABLE IF EXISTS `clc05cuisine`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clc05cuisine` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 20));

-- --------------------------------------------------------

--
-- Structure de la vue `clc06maison`
--
DROP TABLE IF EXISTS `clc06maison`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clc06maison` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 21));

-- --------------------------------------------------------

--
-- Structure de la vue `clc07famille`
--
DROP TABLE IF EXISTS `clc07famille`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clc07famille` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 22));

-- --------------------------------------------------------

--
-- Structure de la vue `clc08les_saisons`
--
DROP TABLE IF EXISTS `clc08les_saisons`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clc08les_saisons` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 23));

-- --------------------------------------------------------

--
-- Structure de la vue `clc09loisirs`
--
DROP TABLE IF EXISTS `clc09loisirs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clc09loisirs` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 24));

-- --------------------------------------------------------

--
-- Structure de la vue `clc10les_points_cardinaux`
--
DROP TABLE IF EXISTS `clc10les_points_cardinaux`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clc10les_points_cardinaux` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 25));

-- --------------------------------------------------------

--
-- Structure de la vue `cld01transports`
--
DROP TABLE IF EXISTS `cld01transports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cld01transports` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 26));

-- --------------------------------------------------------

--
-- Structure de la vue `cld02justice`
--
DROP TABLE IF EXISTS `cld02justice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cld02justice` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 27));

-- --------------------------------------------------------

--
-- Structure de la vue `cld03television`
--
DROP TABLE IF EXISTS `cld03television`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cld03television` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 28));

-- --------------------------------------------------------

--
-- Structure de la vue `cld04police`
--
DROP TABLE IF EXISTS `cld04police`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cld04police` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 29));

-- --------------------------------------------------------

--
-- Structure de la vue `cld05sante`
--
DROP TABLE IF EXISTS `cld05sante`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cld05sante` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 30));

-- --------------------------------------------------------

--
-- Structure de la vue `cle01sport`
--
DROP TABLE IF EXISTS `cle01sport`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cle01sport` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 31));

-- --------------------------------------------------------

--
-- Structure de la vue `cle02metiers`
--
DROP TABLE IF EXISTS `cle02metiers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cle02metiers` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 32));

-- --------------------------------------------------------

--
-- Structure de la vue `cle03entreprise`
--
DROP TABLE IF EXISTS `cle03entreprise`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cle03entreprise` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 33));

-- --------------------------------------------------------

--
-- Structure de la vue `cle04qualites`
--
DROP TABLE IF EXISTS `cle04qualites`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cle04qualites` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 34));

-- --------------------------------------------------------

--
-- Structure de la vue `cle05defauts`
--
DROP TABLE IF EXISTS `cle05defauts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cle05defauts` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 35));

-- --------------------------------------------------------

--
-- Structure de la vue `clf01immeuble`
--
DROP TABLE IF EXISTS `clf01immeuble`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clf01immeuble` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 36));

-- --------------------------------------------------------

--
-- Structure de la vue `clf02voiture`
--
DROP TABLE IF EXISTS `clf02voiture`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clf02voiture` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 37));

-- --------------------------------------------------------

--
-- Structure de la vue `clf03banque`
--
DROP TABLE IF EXISTS `clf03banque`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clf03banque` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 38));

-- --------------------------------------------------------

--
-- Structure de la vue `clf04politique`
--
DROP TABLE IF EXISTS `clf04politique`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clf04politique` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 39));

-- --------------------------------------------------------

--
-- Structure de la vue `clf05consommation`
--
DROP TABLE IF EXISTS `clf05consommation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clf05consommation` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 40));

-- --------------------------------------------------------

--
-- Structure de la vue `clf06ville`
--
DROP TABLE IF EXISTS `clf06ville`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clf06ville` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 41));

-- --------------------------------------------------------

--
-- Structure de la vue `clg01goûts`
--
DROP TABLE IF EXISTS `clg01goûts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clg01goûts` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 42));

-- --------------------------------------------------------

--
-- Structure de la vue `clg02repère_de_lieu`
--
DROP TABLE IF EXISTS `clg02repère_de_lieu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clg02repère_de_lieu` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 43));

-- --------------------------------------------------------

--
-- Structure de la vue `clg03repère_de_temps`
--
DROP TABLE IF EXISTS `clg03repère_de_temps`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clg03repère_de_temps` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 44));

-- --------------------------------------------------------

--
-- Structure de la vue `clg04traits_de_caractère`
--
DROP TABLE IF EXISTS `clg04traits_de_caractère`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clg04traits_de_caractère` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 45));

-- --------------------------------------------------------

--
-- Structure de la vue `clg05les_couleurs`
--
DROP TABLE IF EXISTS `clg05les_couleurs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clg05les_couleurs` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 46));

-- --------------------------------------------------------

--
-- Structure de la vue `clg06relations_humaines`
--
DROP TABLE IF EXISTS `clg06relations_humaines`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clg06relations_humaines` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 47));

-- --------------------------------------------------------

--
-- Structure de la vue `clh01navigation`
--
DROP TABLE IF EXISTS `clh01navigation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clh01navigation` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 48));

-- --------------------------------------------------------

--
-- Structure de la vue `clh02théâtre`
--
DROP TABLE IF EXISTS `clh02théâtre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clh02théâtre` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 49));

-- --------------------------------------------------------

--
-- Structure de la vue `clh03bricolage`
--
DROP TABLE IF EXISTS `clh03bricolage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clh03bricolage` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 50));

-- --------------------------------------------------------

--
-- Structure de la vue `clh04musique`
--
DROP TABLE IF EXISTS `clh04musique`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clh04musique` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 51));

-- --------------------------------------------------------

--
-- Structure de la vue `clh05alcool`
--
DROP TABLE IF EXISTS `clh05alcool`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clh05alcool` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 52));

-- --------------------------------------------------------

--
-- Structure de la vue `clh06bijoux`
--
DROP TABLE IF EXISTS `clh06bijoux`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clh06bijoux` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 53));

-- --------------------------------------------------------

--
-- Structure de la vue `clh07journal`
--
DROP TABLE IF EXISTS `clh07journal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clh07journal` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 54));

-- --------------------------------------------------------

--
-- Structure de la vue `clh08photographie`
--
DROP TABLE IF EXISTS `clh08photographie`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clh08photographie` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 55));

-- --------------------------------------------------------

--
-- Structure de la vue `clh09soin`
--
DROP TABLE IF EXISTS `clh09soin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clh09soin` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 56));

-- --------------------------------------------------------

--
-- Structure de la vue `clh10problème`
--
DROP TABLE IF EXISTS `clh10problème`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clh10problème` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 57));

-- --------------------------------------------------------

--
-- Structure de la vue `cli01condition`
--
DROP TABLE IF EXISTS `cli01condition`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cli01condition` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 58));

-- --------------------------------------------------------

--
-- Structure de la vue `cli02description`
--
DROP TABLE IF EXISTS `cli02description`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cli02description` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 59));

-- --------------------------------------------------------

--
-- Structure de la vue `cli03mouvement`
--
DROP TABLE IF EXISTS `cli03mouvement`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cli03mouvement` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 60));

-- --------------------------------------------------------

--
-- Structure de la vue `cli04divers_connecteurs`
--
DROP TABLE IF EXISTS `cli04divers_connecteurs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cli04divers_connecteurs` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 61));

-- --------------------------------------------------------

--
-- Structure de la vue `description`
--
DROP TABLE IF EXISTS `description`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `description` AS select `clg01goûts`.`id_trad` AS `id_trad`,`clg01goûts`.`trad` AS `trad`,`clg01goûts`.`voc` AS `voc`,`clg01goûts`.`champs` AS `champs`,`clg01goûts`.`nature_trad` AS `nature_trad`,`clg01goûts`.`nature_voc` AS `nature_voc` from `clg01goûts` union select `clg02repère_de_lieu`.`id_trad` AS `id_trad`,`clg02repère_de_lieu`.`trad` AS `trad`,`clg02repère_de_lieu`.`voc` AS `voc`,`clg02repère_de_lieu`.`champs` AS `champs`,`clg02repère_de_lieu`.`nature_trad` AS `nature_trad`,`clg02repère_de_lieu`.`nature_voc` AS `nature_voc` from `clg02repère_de_lieu` union select `clg03repère_de_temps`.`id_trad` AS `id_trad`,`clg03repère_de_temps`.`trad` AS `trad`,`clg03repère_de_temps`.`voc` AS `voc`,`clg03repère_de_temps`.`champs` AS `champs`,`clg03repère_de_temps`.`nature_trad` AS `nature_trad`,`clg03repère_de_temps`.`nature_voc` AS `nature_voc` from `clg03repère_de_temps` union select `clg04traits_de_caractère`.`id_trad` AS `id_trad`,`clg04traits_de_caractère`.`trad` AS `trad`,`clg04traits_de_caractère`.`voc` AS `voc`,`clg04traits_de_caractère`.`champs` AS `champs`,`clg04traits_de_caractère`.`nature_trad` AS `nature_trad`,`clg04traits_de_caractère`.`nature_voc` AS `nature_voc` from `clg04traits_de_caractère` union select `clg05les_couleurs`.`id_trad` AS `id_trad`,`clg05les_couleurs`.`trad` AS `trad`,`clg05les_couleurs`.`voc` AS `voc`,`clg05les_couleurs`.`champs` AS `champs`,`clg05les_couleurs`.`nature_trad` AS `nature_trad`,`clg05les_couleurs`.`nature_voc` AS `nature_voc` from `clg05les_couleurs` union select `clg06relations_humaines`.`id_trad` AS `id_trad`,`clg06relations_humaines`.`trad` AS `trad`,`clg06relations_humaines`.`voc` AS `voc`,`clg06relations_humaines`.`champs` AS `champs`,`clg06relations_humaines`.`nature_trad` AS `nature_trad`,`clg06relations_humaines`.`nature_voc` AS `nature_voc` from `clg06relations_humaines`;

-- --------------------------------------------------------

--
-- Structure de la vue `education`
--
DROP TABLE IF EXISTS `education`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `education` AS select `clb01agriculture`.`id_trad` AS `id_trad`,`clb01agriculture`.`trad` AS `trad`,`clb01agriculture`.`voc` AS `voc`,`clb01agriculture`.`champs` AS `champs`,`clb01agriculture`.`nature_trad` AS `nature_trad`,`clb01agriculture`.`nature_voc` AS `nature_voc` from `clb01agriculture` union select `clb02mathematiques`.`id_trad` AS `id_trad`,`clb02mathematiques`.`trad` AS `trad`,`clb02mathematiques`.`voc` AS `voc`,`clb02mathematiques`.`champs` AS `champs`,`clb02mathematiques`.`nature_trad` AS `nature_trad`,`clb02mathematiques`.`nature_voc` AS `nature_voc` from `clb02mathematiques` union select `clb03litterature`.`id_trad` AS `id_trad`,`clb03litterature`.`trad` AS `trad`,`clb03litterature`.`voc` AS `voc`,`clb03litterature`.`champs` AS `champs`,`clb03litterature`.`nature_trad` AS `nature_trad`,`clb03litterature`.`nature_voc` AS `nature_voc` from `clb03litterature` union select `clb04arts`.`id_trad` AS `id_trad`,`clb04arts`.`trad` AS `trad`,`clb04arts`.`voc` AS `voc`,`clb04arts`.`champs` AS `champs`,`clb04arts`.`nature_trad` AS `nature_trad`,`clb04arts`.`nature_voc` AS `nature_voc` from `clb04arts` union select `clb05etudes`.`id_trad` AS `id_trad`,`clb05etudes`.`trad` AS `trad`,`clb05etudes`.`voc` AS `voc`,`clb05etudes`.`champs` AS `champs`,`clb05etudes`.`nature_trad` AS `nature_trad`,`clb05etudes`.`nature_voc` AS `nature_voc` from `clb05etudes` union select `clb06histoire`.`id_trad` AS `id_trad`,`clb06histoire`.`trad` AS `trad`,`clb06histoire`.`voc` AS `voc`,`clb06histoire`.`champs` AS `champs`,`clb06histoire`.`nature_trad` AS `nature_trad`,`clb06histoire`.`nature_voc` AS `nature_voc` from `clb06histoire` union select `clb07religion`.`id_trad` AS `id_trad`,`clb07religion`.`trad` AS `trad`,`clb07religion`.`voc` AS `voc`,`clb07religion`.`champs` AS `champs`,`clb07religion`.`nature_trad` AS `nature_trad`,`clb07religion`.`nature_voc` AS `nature_voc` from `clb07religion`;

-- --------------------------------------------------------

--
-- Structure de la vue `environnement`
--
DROP TABLE IF EXISTS `environnement`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `environnement` AS select `cla01nature`.`id_trad` AS `id_trad`,`cla01nature`.`trad` AS `trad`,`cla01nature`.`voc` AS `voc`,`cla01nature`.`champs` AS `champs`,`cla01nature`.`nature_trad` AS `nature_trad`,`cla01nature`.`nature_voc` AS `nature_voc` from `cla01nature` union select `cla02sciences`.`id_trad` AS `id_trad`,`cla02sciences`.`trad` AS `trad`,`cla02sciences`.`voc` AS `voc`,`cla02sciences`.`champs` AS `champs`,`cla02sciences`.`nature_trad` AS `nature_trad`,`cla02sciences`.`nature_voc` AS `nature_voc` from `cla02sciences` union select `cla03climat`.`id_trad` AS `id_trad`,`cla03climat`.`trad` AS `trad`,`cla03climat`.`voc` AS `voc`,`cla03climat`.`champs` AS `champs`,`cla03climat`.`nature_trad` AS `nature_trad`,`cla03climat`.`nature_voc` AS `nature_voc` from `cla03climat` union select `cla04corps_humain`.`id_trad` AS `id_trad`,`cla04corps_humain`.`trad` AS `trad`,`cla04corps_humain`.`voc` AS `voc`,`cla04corps_humain`.`champs` AS `champs`,`cla04corps_humain`.`nature_trad` AS `nature_trad`,`cla04corps_humain`.`nature_voc` AS `nature_voc` from `cla04corps_humain` union select `cla05fruits_et_legumes`.`id_trad` AS `id_trad`,`cla05fruits_et_legumes`.`trad` AS `trad`,`cla05fruits_et_legumes`.`voc` AS `voc`,`cla05fruits_et_legumes`.`champs` AS `champs`,`cla05fruits_et_legumes`.`nature_trad` AS `nature_trad`,`cla05fruits_et_legumes`.`nature_voc` AS `nature_voc` from `cla05fruits_et_legumes` union select `cla06animaux`.`id_trad` AS `id_trad`,`cla06animaux`.`trad` AS `trad`,`cla06animaux`.`voc` AS `voc`,`cla06animaux`.`champs` AS `champs`,`cla06animaux`.`nature_trad` AS `nature_trad`,`cla06animaux`.`nature_voc` AS `nature_voc` from `cla06animaux` union select `cla07les_materiaux`.`id_trad` AS `id_trad`,`cla07les_materiaux`.`trad` AS `trad`,`cla07les_materiaux`.`voc` AS `voc`,`cla07les_materiaux`.`champs` AS `champs`,`cla07les_materiaux`.`nature_trad` AS `nature_trad`,`cla07les_materiaux`.`nature_voc` AS `nature_voc` from `cla07les_materiaux` union select `cla08les_minerais`.`id_trad` AS `id_trad`,`cla08les_minerais`.`trad` AS `trad`,`cla08les_minerais`.`voc` AS `voc`,`cla08les_minerais`.`champs` AS `champs`,`cla08les_minerais`.`nature_trad` AS `nature_trad`,`cla08les_minerais`.`nature_voc` AS `nature_voc` from `cla08les_minerais`;

-- --------------------------------------------------------

--
-- Structure de la vue `en_ville`
--
DROP TABLE IF EXISTS `en_ville`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `en_ville` AS select `clf01immeuble`.`id_trad` AS `id_trad`,`clf01immeuble`.`trad` AS `trad`,`clf01immeuble`.`voc` AS `voc`,`clf01immeuble`.`champs` AS `champs`,`clf01immeuble`.`nature_trad` AS `nature_trad`,`clf01immeuble`.`nature_voc` AS `nature_voc` from `clf01immeuble` union select `clf02voiture`.`id_trad` AS `id_trad`,`clf02voiture`.`trad` AS `trad`,`clf02voiture`.`voc` AS `voc`,`clf02voiture`.`champs` AS `champs`,`clf02voiture`.`nature_trad` AS `nature_trad`,`clf02voiture`.`nature_voc` AS `nature_voc` from `clf02voiture` union select `clf03banque`.`id_trad` AS `id_trad`,`clf03banque`.`trad` AS `trad`,`clf03banque`.`voc` AS `voc`,`clf03banque`.`champs` AS `champs`,`clf03banque`.`nature_trad` AS `nature_trad`,`clf03banque`.`nature_voc` AS `nature_voc` from `clf03banque` union select `clf04politique`.`id_trad` AS `id_trad`,`clf04politique`.`trad` AS `trad`,`clf04politique`.`voc` AS `voc`,`clf04politique`.`champs` AS `champs`,`clf04politique`.`nature_trad` AS `nature_trad`,`clf04politique`.`nature_voc` AS `nature_voc` from `clf04politique` union select `clf05consommation`.`id_trad` AS `id_trad`,`clf05consommation`.`trad` AS `trad`,`clf05consommation`.`voc` AS `voc`,`clf05consommation`.`champs` AS `champs`,`clf05consommation`.`nature_trad` AS `nature_trad`,`clf05consommation`.`nature_voc` AS `nature_voc` from `clf05consommation` union select `clf06ville`.`id_trad` AS `id_trad`,`clf06ville`.`trad` AS `trad`,`clf06ville`.`voc` AS `voc`,`clf06ville`.`champs` AS `champs`,`clf06ville`.`nature_trad` AS `nature_trad`,`clf06ville`.`nature_voc` AS `nature_voc` from `clf06ville`;

-- --------------------------------------------------------

--
-- Structure de la vue `generalites`
--
DROP TABLE IF EXISTS `generalites`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `generalites` AS select `cli01condition`.`id_trad` AS `id_trad`,`cli01condition`.`trad` AS `trad`,`cli01condition`.`voc` AS `voc`,`cli01condition`.`champs` AS `champs`,`cli01condition`.`nature_trad` AS `nature_trad`,`cli01condition`.`nature_voc` AS `nature_voc` from `cli01condition` union select `cli02description`.`id_trad` AS `id_trad`,`cli02description`.`trad` AS `trad`,`cli02description`.`voc` AS `voc`,`cli02description`.`champs` AS `champs`,`cli02description`.`nature_trad` AS `nature_trad`,`cli02description`.`nature_voc` AS `nature_voc` from `cli02description` union select `cli03mouvement`.`id_trad` AS `id_trad`,`cli03mouvement`.`trad` AS `trad`,`cli03mouvement`.`voc` AS `voc`,`cli03mouvement`.`champs` AS `champs`,`cli03mouvement`.`nature_trad` AS `nature_trad`,`cli03mouvement`.`nature_voc` AS `nature_voc` from `cli03mouvement` union select `cli04divers_connecteurs`.`id_trad` AS `id_trad`,`cli04divers_connecteurs`.`trad` AS `trad`,`cli04divers_connecteurs`.`voc` AS `voc`,`cli04divers_connecteurs`.`champs` AS `champs`,`cli04divers_connecteurs`.`nature_trad` AS `nature_trad`,`cli04divers_connecteurs`.`nature_voc` AS `nature_voc` from `cli04divers_connecteurs`;

-- --------------------------------------------------------

--
-- Structure de la vue `kind_adjectif`
--
DROP TABLE IF EXISTS `kind_adjectif`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_adjectif` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 1));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_adjectifs`
--
DROP TABLE IF EXISTS `kind_adjectifs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_adjectifs` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 27));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_adjectif_nom`
--
DROP TABLE IF EXISTS `kind_adjectif_nom`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_adjectif_nom` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 24));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_adjectif_numeral`
--
DROP TABLE IF EXISTS `kind_adjectif_numeral`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_adjectif_numeral` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 21));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_adverbe`
--
DROP TABLE IF EXISTS `kind_adverbe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_adverbe` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 2));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_conjonction`
--
DROP TABLE IF EXISTS `kind_conjonction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_conjonction` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 3));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_determinants`
--
DROP TABLE IF EXISTS `kind_determinants`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_determinants` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 25));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_expression`
--
DROP TABLE IF EXISTS `kind_expression`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_expression` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 4));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_groupe_nominal`
--
DROP TABLE IF EXISTS `kind_groupe_nominal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_groupe_nominal` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 5));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_groupe_verbal`
--
DROP TABLE IF EXISTS `kind_groupe_verbal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_groupe_verbal` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 6));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_interjection`
--
DROP TABLE IF EXISTS `kind_interjection`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_interjection` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 19));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_locution_adjectivale`
--
DROP TABLE IF EXISTS `kind_locution_adjectivale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_locution_adjectivale` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 7));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_locution_adverbiale`
--
DROP TABLE IF EXISTS `kind_locution_adverbiale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_locution_adverbiale` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 8));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_locution_conjonctive`
--
DROP TABLE IF EXISTS `kind_locution_conjonctive`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_locution_conjonctive` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 9));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_locution_interjective`
--
DROP TABLE IF EXISTS `kind_locution_interjective`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_locution_interjective` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 20));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_locution_nominale`
--
DROP TABLE IF EXISTS `kind_locution_nominale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_locution_nominale` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 16));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_locution_phrase`
--
DROP TABLE IF EXISTS `kind_locution_phrase`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_locution_phrase` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 18));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_locution_prepositive`
--
DROP TABLE IF EXISTS `kind_locution_prepositive`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_locution_prepositive` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 17));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_locution_pronominale`
--
DROP TABLE IF EXISTS `kind_locution_pronominale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_locution_pronominale` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 23));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_locution_verbale`
--
DROP TABLE IF EXISTS `kind_locution_verbale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_locution_verbale` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 26));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_nom`
--
DROP TABLE IF EXISTS `kind_nom`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_nom` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 10));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_noms`
--
DROP TABLE IF EXISTS `kind_noms`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_noms` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 28));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_nom_propre`
--
DROP TABLE IF EXISTS `kind_nom_propre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_nom_propre` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 22));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_participe_passe`
--
DROP TABLE IF EXISTS `kind_participe_passe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_participe_passe` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 11));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_participe_present`
--
DROP TABLE IF EXISTS `kind_participe_present`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_participe_present` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 12));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_preposition`
--
DROP TABLE IF EXISTS `kind_preposition`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_preposition` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 13));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_pronom`
--
DROP TABLE IF EXISTS `kind_pronom`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_pronom` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 14));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_verbe`
--
DROP TABLE IF EXISTS `kind_verbe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_verbe` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 15));

-- --------------------------------------------------------

--
-- Structure de la vue `kind_verbes`
--
DROP TABLE IF EXISTS `kind_verbes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kind_verbes` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`a_pr_n_trad`.`id_a_pr_n_trad` AS `id_a_pr_n_trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`a_pr_n_voc`.`id_a_pr_n_voc` AS `id_a_pr_n_voc`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_voc`.`id_n_voc` = 29));

-- --------------------------------------------------------

--
-- Structure de la vue `services_publics`
--
DROP TABLE IF EXISTS `services_publics`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `services_publics` AS select `cld01transports`.`id_trad` AS `id_trad`,`cld01transports`.`trad` AS `trad`,`cld01transports`.`voc` AS `voc`,`cld01transports`.`champs` AS `champs`,`cld01transports`.`nature_trad` AS `nature_trad`,`cld01transports`.`nature_voc` AS `nature_voc` from `cld01transports` union select `cld02justice`.`id_trad` AS `id_trad`,`cld02justice`.`trad` AS `trad`,`cld02justice`.`voc` AS `voc`,`cld02justice`.`champs` AS `champs`,`cld02justice`.`nature_trad` AS `nature_trad`,`cld02justice`.`nature_voc` AS `nature_voc` from `cld02justice` union select `cld03television`.`id_trad` AS `id_trad`,`cld03television`.`trad` AS `trad`,`cld03television`.`voc` AS `voc`,`cld03television`.`champs` AS `champs`,`cld03television`.`nature_trad` AS `nature_trad`,`cld03television`.`nature_voc` AS `nature_voc` from `cld03television` union select `cld04police`.`id_trad` AS `id_trad`,`cld04police`.`trad` AS `trad`,`cld04police`.`voc` AS `voc`,`cld04police`.`champs` AS `champs`,`cld04police`.`nature_trad` AS `nature_trad`,`cld04police`.`nature_voc` AS `nature_voc` from `cld04police` union select `cld05sante`.`id_trad` AS `id_trad`,`cld05sante`.`trad` AS `trad`,`cld05sante`.`voc` AS `voc`,`cld05sante`.`champs` AS `champs`,`cld05sante`.`nature_trad` AS `nature_trad`,`cld05sante`.`nature_voc` AS `nature_voc` from `cld05sante`;

-- --------------------------------------------------------

--
-- Structure de la vue `temp_multichamps`
--
DROP TABLE IF EXISTS `temp_multichamps`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `temp_multichamps` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`voc_eng`.`voc` AS `voc`,`nature_voc`.`nature_voc` AS `nature_voc`,`champs_lex`.`champs` AS `champs` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`trad`.`trad` like '%X'));

-- --------------------------------------------------------

--
-- Structure de la vue `temp_multichamps2`
--
DROP TABLE IF EXISTS `temp_multichamps2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `temp_multichamps2` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`voc_eng`.`voc` AS `voc`,`nature_voc`.`nature_voc` AS `nature_voc`,`champs_lex`.`champs` AS `champs` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`trad`.`trad` like '%Y'));

-- --------------------------------------------------------

--
-- Structure de la vue `temp_multinature`
--
DROP TABLE IF EXISTS `temp_multinature`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `temp_multinature` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`nature_trad`.`nature_trad` AS `nature_trad`,`voc_eng`.`voc` AS `voc`,`nature_voc`.`nature_voc` AS `nature_voc`,`champs_lex`.`champs` AS `champs` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`voc_eng`.`voc` like '%X'));

-- --------------------------------------------------------

--
-- Structure de la vue `travailler`
--
DROP TABLE IF EXISTS `travailler`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `travailler` AS select `cle01sport`.`id_trad` AS `id_trad`,`cle01sport`.`trad` AS `trad`,`cle01sport`.`voc` AS `voc`,`cle01sport`.`champs` AS `champs`,`cle01sport`.`nature_trad` AS `nature_trad`,`cle01sport`.`nature_voc` AS `nature_voc` from `cle01sport` union select `cle02metiers`.`id_trad` AS `id_trad`,`cle02metiers`.`trad` AS `trad`,`cle02metiers`.`voc` AS `voc`,`cle02metiers`.`champs` AS `champs`,`cle02metiers`.`nature_trad` AS `nature_trad`,`cle02metiers`.`nature_voc` AS `nature_voc` from `cle02metiers` union select `cle03entreprise`.`id_trad` AS `id_trad`,`cle03entreprise`.`trad` AS `trad`,`cle03entreprise`.`voc` AS `voc`,`cle03entreprise`.`champs` AS `champs`,`cle03entreprise`.`nature_trad` AS `nature_trad`,`cle03entreprise`.`nature_voc` AS `nature_voc` from `cle03entreprise` union select `cle04qualites`.`id_trad` AS `id_trad`,`cle04qualites`.`trad` AS `trad`,`cle04qualites`.`voc` AS `voc`,`cle04qualites`.`champs` AS `champs`,`cle04qualites`.`nature_trad` AS `nature_trad`,`cle04qualites`.`nature_voc` AS `nature_voc` from `cle04qualites` union select `cle05defauts`.`id_trad` AS `id_trad`,`cle05defauts`.`trad` AS `trad`,`cle05defauts`.`voc` AS `voc`,`cle05defauts`.`champs` AS `champs`,`cle05defauts`.`nature_trad` AS `nature_trad`,`cle05defauts`.`nature_voc` AS `nature_voc` from `cle05defauts`;

-- --------------------------------------------------------

--
-- Structure de la vue `type_adjectif`
--
DROP TABLE IF EXISTS `type_adjectif`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_adjectif` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 1));

-- --------------------------------------------------------

--
-- Structure de la vue `type_adjectifs`
--
DROP TABLE IF EXISTS `type_adjectifs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_adjectifs` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 27));

-- --------------------------------------------------------

--
-- Structure de la vue `type_adjectif_nom`
--
DROP TABLE IF EXISTS `type_adjectif_nom`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_adjectif_nom` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 24));

-- --------------------------------------------------------

--
-- Structure de la vue `type_adjectif_numeral`
--
DROP TABLE IF EXISTS `type_adjectif_numeral`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_adjectif_numeral` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 21));

-- --------------------------------------------------------

--
-- Structure de la vue `type_adverbe`
--
DROP TABLE IF EXISTS `type_adverbe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_adverbe` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 2));

-- --------------------------------------------------------

--
-- Structure de la vue `type_conjonction`
--
DROP TABLE IF EXISTS `type_conjonction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_conjonction` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 3));

-- --------------------------------------------------------

--
-- Structure de la vue `type_determinants`
--
DROP TABLE IF EXISTS `type_determinants`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_determinants` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 25));

-- --------------------------------------------------------

--
-- Structure de la vue `type_expression`
--
DROP TABLE IF EXISTS `type_expression`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_expression` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 4));

-- --------------------------------------------------------

--
-- Structure de la vue `type_groupe_nominal`
--
DROP TABLE IF EXISTS `type_groupe_nominal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_groupe_nominal` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 5));

-- --------------------------------------------------------

--
-- Structure de la vue `type_groupe_verbal`
--
DROP TABLE IF EXISTS `type_groupe_verbal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_groupe_verbal` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 6));

-- --------------------------------------------------------

--
-- Structure de la vue `type_interjection`
--
DROP TABLE IF EXISTS `type_interjection`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_interjection` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 19));

-- --------------------------------------------------------

--
-- Structure de la vue `type_locution_adjectivale`
--
DROP TABLE IF EXISTS `type_locution_adjectivale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_locution_adjectivale` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 7));

-- --------------------------------------------------------

--
-- Structure de la vue `type_locution_adverbiale`
--
DROP TABLE IF EXISTS `type_locution_adverbiale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_locution_adverbiale` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 8));

-- --------------------------------------------------------

--
-- Structure de la vue `type_locution_conjonctive`
--
DROP TABLE IF EXISTS `type_locution_conjonctive`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_locution_conjonctive` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 9));

-- --------------------------------------------------------

--
-- Structure de la vue `type_locution_interjective`
--
DROP TABLE IF EXISTS `type_locution_interjective`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_locution_interjective` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 20));

-- --------------------------------------------------------

--
-- Structure de la vue `type_locution_nominale`
--
DROP TABLE IF EXISTS `type_locution_nominale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_locution_nominale` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 16));

-- --------------------------------------------------------

--
-- Structure de la vue `type_locution_phrase`
--
DROP TABLE IF EXISTS `type_locution_phrase`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_locution_phrase` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 18));

-- --------------------------------------------------------

--
-- Structure de la vue `type_locution_prepositive`
--
DROP TABLE IF EXISTS `type_locution_prepositive`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_locution_prepositive` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 17));

-- --------------------------------------------------------

--
-- Structure de la vue `type_locution_pronominale`
--
DROP TABLE IF EXISTS `type_locution_pronominale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_locution_pronominale` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 23));

-- --------------------------------------------------------

--
-- Structure de la vue `type_locution_verbale`
--
DROP TABLE IF EXISTS `type_locution_verbale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_locution_verbale` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 26));

-- --------------------------------------------------------

--
-- Structure de la vue `type_nom`
--
DROP TABLE IF EXISTS `type_nom`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_nom` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 10));

-- --------------------------------------------------------

--
-- Structure de la vue `type_noms`
--
DROP TABLE IF EXISTS `type_noms`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_noms` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 28));

-- --------------------------------------------------------

--
-- Structure de la vue `type_nom_propre`
--
DROP TABLE IF EXISTS `type_nom_propre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_nom_propre` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 22));

-- --------------------------------------------------------

--
-- Structure de la vue `type_participe_passe`
--
DROP TABLE IF EXISTS `type_participe_passe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_participe_passe` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 11));

-- --------------------------------------------------------

--
-- Structure de la vue `type_participe_present`
--
DROP TABLE IF EXISTS `type_participe_present`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_participe_present` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 12));

-- --------------------------------------------------------

--
-- Structure de la vue `type_preposition`
--
DROP TABLE IF EXISTS `type_preposition`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_preposition` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 13));

-- --------------------------------------------------------

--
-- Structure de la vue `type_pronom`
--
DROP TABLE IF EXISTS `type_pronom`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_pronom` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 14));

-- --------------------------------------------------------

--
-- Structure de la vue `type_verbe`
--
DROP TABLE IF EXISTS `type_verbe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_verbe` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 15));

-- --------------------------------------------------------

--
-- Structure de la vue `type_verbes`
--
DROP TABLE IF EXISTS `type_verbes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_verbes` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`nature_trad`.`id_n_trad` = 29));

-- --------------------------------------------------------

--
-- Structure de la vue `vivre`
--
DROP TABLE IF EXISTS `vivre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vivre` AS select `clc01les_bases`.`id_trad` AS `id_trad`,`clc01les_bases`.`trad` AS `trad`,`clc01les_bases`.`voc` AS `voc`,`clc01les_bases`.`champs` AS `champs`,`clc01les_bases`.`nature_trad` AS `nature_trad`,`clc01les_bases`.`nature_voc` AS `nature_voc` from `clc01les_bases` union select `clc02les_mois`.`id_trad` AS `id_trad`,`clc02les_mois`.`trad` AS `trad`,`clc02les_mois`.`voc` AS `voc`,`clc02les_mois`.`champs` AS `champs`,`clc02les_mois`.`nature_trad` AS `nature_trad`,`clc02les_mois`.`nature_voc` AS `nature_voc` from `clc02les_mois` union select `clc03les_jours`.`id_trad` AS `id_trad`,`clc03les_jours`.`trad` AS `trad`,`clc03les_jours`.`voc` AS `voc`,`clc03les_jours`.`champs` AS `champs`,`clc03les_jours`.`nature_trad` AS `nature_trad`,`clc03les_jours`.`nature_voc` AS `nature_voc` from `clc03les_jours` union select `clc04vêtements`.`id_trad` AS `id_trad`,`clc04vêtements`.`trad` AS `trad`,`clc04vêtements`.`voc` AS `voc`,`clc04vêtements`.`champs` AS `champs`,`clc04vêtements`.`nature_trad` AS `nature_trad`,`clc04vêtements`.`nature_voc` AS `nature_voc` from `clc04vêtements` union select `clc05cuisine`.`id_trad` AS `id_trad`,`clc05cuisine`.`trad` AS `trad`,`clc05cuisine`.`voc` AS `voc`,`clc05cuisine`.`champs` AS `champs`,`clc05cuisine`.`nature_trad` AS `nature_trad`,`clc05cuisine`.`nature_voc` AS `nature_voc` from `clc05cuisine` union select `clc06maison`.`id_trad` AS `id_trad`,`clc06maison`.`trad` AS `trad`,`clc06maison`.`voc` AS `voc`,`clc06maison`.`champs` AS `champs`,`clc06maison`.`nature_trad` AS `nature_trad`,`clc06maison`.`nature_voc` AS `nature_voc` from `clc06maison` union select `clc07famille`.`id_trad` AS `id_trad`,`clc07famille`.`trad` AS `trad`,`clc07famille`.`voc` AS `voc`,`clc07famille`.`champs` AS `champs`,`clc07famille`.`nature_trad` AS `nature_trad`,`clc07famille`.`nature_voc` AS `nature_voc` from `clc07famille` union select `clc08les_saisons`.`id_trad` AS `id_trad`,`clc08les_saisons`.`trad` AS `trad`,`clc08les_saisons`.`voc` AS `voc`,`clc08les_saisons`.`champs` AS `champs`,`clc08les_saisons`.`nature_trad` AS `nature_trad`,`clc08les_saisons`.`nature_voc` AS `nature_voc` from `clc08les_saisons` union select `clc09loisirs`.`id_trad` AS `id_trad`,`clc09loisirs`.`trad` AS `trad`,`clc09loisirs`.`voc` AS `voc`,`clc09loisirs`.`champs` AS `champs`,`clc09loisirs`.`nature_trad` AS `nature_trad`,`clc09loisirs`.`nature_voc` AS `nature_voc` from `clc09loisirs` union select `clc10les_points_cardinaux`.`id_trad` AS `id_trad`,`clc10les_points_cardinaux`.`trad` AS `trad`,`clc10les_points_cardinaux`.`voc` AS `voc`,`clc10les_points_cardinaux`.`champs` AS `champs`,`clc10les_points_cardinaux`.`nature_trad` AS `nature_trad`,`clc10les_points_cardinaux`.`nature_voc` AS `nature_voc` from `clc10les_points_cardinaux`;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD KEY `id_se_trad` (`id_se_trad`),
  ADD KEY `id_ch` (`id_ch`);

--
-- Index pour la table `a_pr_n_trad`
--
ALTER TABLE `a_pr_n_trad`
  ADD KEY `id_trad` (`id_trad`),
  ADD KEY `id_n_trad` (`id_n_trad`);

--
-- Index pour la table `a_pr_n_voc`
--
ALTER TABLE `a_pr_n_voc`
  ADD KEY `id_voc` (`id_voc`),
  ADD KEY `id_n_voc` (`id_n_voc`);

--
-- Index pour la table `champs_lex`
--
ALTER TABLE `champs_lex`
  ADD PRIMARY KEY (`id_ch`);

--
-- Index pour la table `nature_trad`
--
ALTER TABLE `nature_trad`
  ADD PRIMARY KEY (`id_n_trad`);

--
-- Index pour la table `nature_voc`
--
ALTER TABLE `nature_voc`
  ADD PRIMARY KEY (`id_n_voc`);

--
-- Index pour la table `se_trad`
--
ALTER TABLE `se_trad`
  ADD PRIMARY KEY (`id_se_trad`),
  ADD KEY `id_tradtrad` (`id_trad`),
  ADD KEY `id_vocvoc` (`id_voc`);

--
-- Index pour la table `trad`
--
ALTER TABLE `trad`
  ADD PRIMARY KEY (`id_trad`);

--
-- Index pour la table `view_cat`
--
ALTER TABLE `view_cat`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `view_spec`
--
ALTER TABLE `view_spec`
  ADD PRIMARY KEY (`id_view`),
  ADD KEY `id_cat_view` (`id_cat`),
  ADD KEY `id_sub` (`id_sub`),
  ADD KEY `champs` (`id_ch`);

--
-- Index pour la table `view_sub`
--
ALTER TABLE `view_sub`
  ADD PRIMARY KEY (`id_sub`),
  ADD KEY `id_cat_sub` (`id_cat`);

--
-- Index pour la table `voc_eng`
--
ALTER TABLE `voc_eng`
  ADD PRIMARY KEY (`id_voc`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `champs_lex`
--
ALTER TABLE `champs_lex`
  MODIFY `id_ch` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT pour la table `trad`
--
ALTER TABLE `trad`
  MODIFY `id_trad` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `view_cat`
--
ALTER TABLE `view_cat`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `view_sub`
--
ALTER TABLE `view_sub`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `voc_eng`
--
ALTER TABLE `voc_eng`
  MODIFY `id_voc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `id_ch` FOREIGN KEY (`id_ch`) REFERENCES `champs_lex` (`id_ch`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_se_trad` FOREIGN KEY (`id_se_trad`) REFERENCES `se_trad` (`id_se_trad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `a_pr_n_trad`
--
ALTER TABLE `a_pr_n_trad`
  ADD CONSTRAINT `id_n_trad` FOREIGN KEY (`id_n_trad`) REFERENCES `nature_trad` (`id_n_trad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_trad` FOREIGN KEY (`id_trad`) REFERENCES `trad` (`id_trad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `a_pr_n_voc`
--
ALTER TABLE `a_pr_n_voc`
  ADD CONSTRAINT `id_n_voc` FOREIGN KEY (`id_n_voc`) REFERENCES `nature_voc` (`id_n_voc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_voc` FOREIGN KEY (`id_voc`) REFERENCES `voc_eng` (`id_voc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `se_trad`
--
ALTER TABLE `se_trad`
  ADD CONSTRAINT `id_tradtrad` FOREIGN KEY (`id_trad`) REFERENCES `trad` (`id_trad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_vocvoc` FOREIGN KEY (`id_voc`) REFERENCES `voc_eng` (`id_voc`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
