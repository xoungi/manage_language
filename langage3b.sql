-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 06 Juin 2017 à 10:11
-- Version du serveur :  5.6.31
-- Version de PHP :  5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dlangage3`
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
(1, 1, 1);

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
(1, 1, 5);

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
(1, 1, 5);

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
(1, 'nature');

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
-- Structure de la table `database_spec`
--

CREATE TABLE IF NOT EXISTS `database_spec` (
  `dlangage` varchar(255) DEFAULT NULL,
  `ddescription` text,
  `prefix_width` int(2) DEFAULT NULL,
  `cat_views` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'mot test');

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
(14, 'ENVIRONNEMENT');

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
(2, 'cla01nature', '', 26, 3, 14, 0, 1);

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
(1, 'test word');

-- --------------------------------------------------------

--
-- Structure de la vue `cla01nature`
--
DROP TABLE IF EXISTS `cla01nature`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cla01nature` AS select `trad`.`id_trad` AS `id_trad`,`trad`.`trad` AS `trad`,`voc_eng`.`voc` AS `voc`,`champs_lex`.`champs` AS `champs`,`nature_trad`.`nature_trad` AS `nature_trad`,`nature_voc`.`nature_voc` AS `nature_voc` from ((((((((`appartient` join `se_trad`) join `trad`) join `champs_lex`) join `voc_eng`) join `a_pr_n_trad`) join `a_pr_n_voc`) join `nature_trad`) join `nature_voc`) where ((`a_pr_n_trad`.`id_n_trad` = `nature_trad`.`id_n_trad`) and (`a_pr_n_trad`.`id_trad` = `trad`.`id_trad`) and (`a_pr_n_voc`.`id_n_voc` = `nature_voc`.`id_n_voc`) and (`a_pr_n_voc`.`id_voc` = `voc_eng`.`id_voc`) and (`appartient`.`id_se_trad` = `se_trad`.`id_se_trad`) and (`appartient`.`id_ch` = `champs_lex`.`id_ch`) and (`se_trad`.`id_trad` = `trad`.`id_trad`) and (`se_trad`.`id_voc` = `voc_eng`.`id_voc`) and (`champs_lex`.`id_ch` = 1));

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

--- Bricolage personnel.
  
CREATE TABLE IF NOT EXISTS `environnement` (
`id_trad` int(11)
,`trad` varchar(255)
,`voc` varchar(255)
,`champs` varchar(255)
,`nature_trad` varchar(255)
,`nature_voc` varchar(255)
);

--
-- Structure de la vue `environnement`
--
DROP TABLE IF EXISTS `environnement`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `environnement` AS select `cla01nature`.`id_trad` AS `id_trad`,`cla01nature`.`trad` AS `trad`,`cla01nature`.`voc` AS `voc`,`cla01nature`.`champs` AS `champs`,`cla01nature`.`nature_trad` AS `nature_trad`,`cla01nature`.`nature_voc` AS `nature_voc` from `cla01nature`;
  
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
