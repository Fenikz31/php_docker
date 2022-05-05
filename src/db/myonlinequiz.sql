-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 19 avr. 2022 à 21:25
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12
USE `myonlinequiz`;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `myonlinequiz`
--

-- --------------------------------------------------------

--
-- Structure de la table `myonlinequiz`.`categories`
--

DROP TABLE IF EXISTS `myonlinequiz`.`categories`;
CREATE TABLE IF NOT EXISTS `myonlinequiz`.`categories` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `categorie_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text,
  `infos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_categorie`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `myonlinequiz`.`categories`
--

INSERT INTO `myonlinequiz`.`categories` (`id_categorie`, `name`, `categorie_picture`, `description`, `infos`) VALUES
(23, 'Vallée des Rois', 'pierre.svg', 'Vous pensez tout savoir sur la Vallée des Rois ? Venez donc vous confronter à cette thématique !', 'Une thématique pour les taphophiles !'),
(27, 'Égyptologue', 'egyptologues.svg', 'Tout ce que vous avez toujours voulu savoir sur les grands noms de l\'Égyptologie...', 'Reconnaissez-vous cette célèbre égyptologue française ? Il s\'agit de Christiane Desroches-Noblecourt !'),
(36, 'Films', 'films.svg', 'Des grands films d\'actions américains aux films de moindres envergure peu connus, plongez dans l\'Égypte au cinéma !', 'Une caméra, une pyramide... quoi de plus pour illustrer cette catégorie ?'),
(39, 'Procès', 'proces.svg', 'Cette catégorie traite des grands procès retrouvés sur papyrus ou ostraca.', 'test'),
(40, 'BD & Mangas', 'bd_&_mangas.svg', 'Des bandes dessinées d\'Astérix ou de Tintin aux mangas japonais, certains de vos héros ont posé le pied en Égypte... Venez découvrir lesquels !', 'Avez-vous reconnu cette image ? Elle a été conçue à partir du pendentif de Yugi du manga Yugi-Oh !'),
(62, 'test4', 'test4.svg', 'test7', 'test8');

-- --------------------------------------------------------

--
-- Structure de la table `myonlinequiz`.`niveaux`
--

DROP TABLE IF EXISTS `myonlinequiz`.`niveaux`;
CREATE TABLE IF NOT EXISTS `myonlinequiz`.`niveaux` (
  `id_niveau` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_niveau`),
  UNIQUE KEY `level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `myonlinequiz`.`niveaux`
--

INSERT INTO `myonlinequiz`.`niveaux` (`id_niveau`, `level`) VALUES
(1, 'débutant'),
(3, 'expert'),
(2, 'intermédiaire'),
(4, 'pharaonique');

-- --------------------------------------------------------

--
-- Structure de la table `myonlinequiz`.`pages`
--

DROP TABLE IF EXISTS `myonlinequiz`.`pages`;
CREATE TABLE IF NOT EXISTS `myonlinequiz`.`pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `total_views` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `myonlinequiz`.`pages`
--

INSERT INTO `myonlinequiz`.`pages` (`id`, `name`, `total_views`) VALUES
(1, 'Page de connexion', 6),
(2, 'Page d\'inscription', 2),
(3, 'Accueil', 1),
(4, 'Liste des thématiques', 1),
(5, 'Quiz - Index', 1),
(6, 'Quiz', 1),
(7, 'Random Quiz', 1),
(8, 'Resulst', 1);

-- --------------------------------------------------------

--
-- Structure de la table `myonlinequiz`.`page_views`
--

DROP TABLE IF EXISTS `myonlinequiz`.`page_views`;
CREATE TABLE IF NOT EXISTS `myonlinequiz`.`page_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitor_ip` varchar(255) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `myonlinequiz`.`page_views`
--

INSERT INTO `myonlinequiz`.`page_views` (`id`, `visitor_ip`, `page_id`) VALUES
(6, '::1', 1),
(7, '::1', 2),
(8, '127.0.0.1', 1),
(9, '127.0.0.1', 2),
(10, '::1', 4),
(11, '::1', 5),
(12, '::1', 6),
(13, '::1', 8),
(14, '::1', 3),
(15, '::1', 7);

-- --------------------------------------------------------

--
-- Structure de la table `myonlinequiz`.`posseder`
--

DROP TABLE IF EXISTS `myonlinequiz`.`posseder`;
CREATE TABLE IF NOT EXISTS `myonlinequiz`.`posseder` (
  `id_posseder` int(11) NOT NULL AUTO_INCREMENT,
  `id_question` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id_posseder`),
  KEY `idCategorie` (`id_categorie`),
  KEY `idQuestion` (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `myonlinequiz`.`posseder`
--

INSERT INTO `myonlinequiz`.`posseder` (`id_posseder`, `id_question`, `id_categorie`) VALUES
(79, 27, 23),
(81, 19, 23),
(83, 20, 23),
(85, 21, 23),
(87, 22, 23),
(89, 23, 23),
(91, 24, 23),
(95, 28, 23),
(99, 29, 23),
(100, 30, 23),
(102, 25, 23),
(103, 32, 23),
(104, 33, 23),
(105, 34, 23),
(106, 35, 40),
(107, 36, 40),
(108, 37, 40),
(109, 38, 40),
(111, 40, 23),
(112, 40, 40),
(113, 41, 40),
(114, 42, 40),
(115, 43, 36),
(116, 44, 36),
(117, 45, 36),
(120, 39, 40),
(121, 47, 40),
(123, 46, 40),
(124, 48, 40),
(128, 52, 39),
(140, 55, 23),
(141, 55, 27),
(142, 58, 39),
(145, 60, 27);

-- --------------------------------------------------------

--
-- Structure de la table `myonlinequiz`.`questions`
--

DROP TABLE IF EXISTS `myonlinequiz`.`questions`;
CREATE TABLE IF NOT EXISTS `myonlinequiz`.`questions` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `niveau_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `question_picture` varchar(255) DEFAULT NULL,
  `feedback` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `feedback_picture` varchar(255) DEFAULT NULL,
  `reponse` text NOT NULL,
  `facile` text NOT NULL,
  `normal` text,
  `difficile` text,
  `lien` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_question`),
  KEY `questionToNiveau` (`niveau_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `myonlinequiz`.`questions`
--

INSERT INTO `myonlinequiz`.`questions` (`id_question`, `niveau_id`, `question`, `question_picture`, `feedback`, `feedback_picture`, `reponse`, `facile`, `normal`, `difficile`, `lien`) VALUES
(9, 3, 'Combien y-a-t-il eu de pharaon dénommés ', NULL, 'Trois pharaons portent le nom ', NULL, '3', '1', '2', '4', 'www.google.com'),
(10, 3, 'Quel est le 5e roi de la 6e dynastie ?', NULL, 'C\'est bien Pépy II, qui aurait règné, selon l\'historien grec Manéthon, près de 94 ans !', NULL, 'Pépy II', 'Pépy Ier', 'Khéops', 'Ramsès XI', NULL),
(18, 4, 'Qui a dit : \"N\'importe qui d\'entre nous ressemble beaucoup plus à une sculpture égyptienne qu\'à toute autre sculpture jamais faite\" ?', NULL, 'Il aurait prononcé cette phrase en 1962. C\'est à la suite d\'une visite au Musée archéologique de Florence qu\'Alberto Giacometti découvre l\'art égyptien où il puisera son inspiration pour certaines de ses oeuvres.', NULL, 'Alberto Giacometti', 'Joan Miró', 'Jean Arp', 'Louis Aragon', NULL),
(19, 2, 'À quel pharaon appartient la tombe KV01 de la Vallée des Rois ?', NULL, 'La tombe de Ramsès IV est la KV 02, celle des pharaons Ramsès V et Ramsès VI la KV09. ', NULL, 'Ramsès VII', 'Ramsès VI', 'Ramsès V', 'Ramsès IV', NULL),
(20, 1, 'Pour quel pharaon la tombe KV02 de la Vallée des Rois a-t-elle été creusée ?', NULL, 'C\'est le pharaon Ramsès IV qui a été enterré dans la KV02. Cette tombe compte plus de 700 graffiti grecs et latins !', NULL, 'Ramsès IV', 'Toutânkhamon', 'Horemheb', 'Ramsès II', NULL),
(21, 2, 'Qui fut le dernier pharaon à faire construire sa tombe dans la Vallée des Rois ?', NULL, 'Ramsès XI fut le dernier pharaon à se faire construire une tombe dans la Vallée des Rois bien qu\'il n\'y fût visiblement jamais inhumé.', NULL, 'Ramsès XI', 'Ramsès X', 'Ramsès IX', 'Ramsès VIII', NULL),
(22, 2, 'Quel numéro porte la tombe de Ramsès II dans la Vallée des Rois ?', NULL, 'Cette tombe fût ouverte et pillée dès l\'Antiquité.', NULL, 'KV 07', 'KV 06', 'KV 08', 'KV 05', NULL),
(23, 2, 'D\'après le papyrus cat. 1880 conservé au musée de Turin, en quelle année deux pilleurs de tombes ont-ils tenté de pénétrer dans la KV07, tombe de Ramsès II ?', NULL, 'Ce papyrus mentionne également une grève des artisans du village de Deir el-Médineh !', NULL, 'en l\'an 29 du règne de Ramsès III', 'en l\'an 28 du règne de Ramsès IV', 'en l\'an 27 du règne de Ramsès III', 'en l\'an 25 du règne de Ramsès IV', NULL),
(24, 4, 'Quelle est la longueur totale de la tombe de Ramsès II, KV 07 dans la Vallée des Rois ?', NULL, 'Pour une hauteur de 5,83 m et avec une surface totale de 868 m², cette tombe est réllement imposante !', NULL, '168,05 m', '162,07 m', '158,06 m', '170,04 m', NULL),
(25, 2, 'Quelle tombe de la Vallée des Rois porte le numéro KV 35 ?', NULL, 'La KV 35 est la tombe d\'Amenhotep II, la KV 22 celle d\'Amenhotep III, la KV 34 celle de Thoutosis III et la KV 38 celle de Thoutmosis Ier.', NULL, 'Celle d\'Amenhotep II', 'Celle d\'Amenhotep III', 'celle de Thoutmosis III', 'Celle de Thoutmosis Ier', NULL),
(26, 3, 'Qui a écrit \"Les obélisques gris s’élançaient d’un seul jet. Comme une peau de tigre, au couchant s’allongeait Le Nil jaune, tacheté d’îles\" ?', NULL, 'Cet extrait est tiré de son ouvrage \"Les Orientales - Le feu du ciel  (IV)\", écrit en 1828.', NULL, 'Victor Hugo', 'Charles Beaudelaire', 'Théophile Gauthier', 'Auguste Barbier', NULL),
(27, 1, 'Qui a été enterré dans la tombe KV62 de la Vallée des Rois ?', NULL, 'La tombe désignée sous l\'appellation KV62 est celle de Toutânkhamon ! Elle a été découverte en 1922 par l\'archéologue britannique Howard Carter, suite à des fouilles financées par son mécène, Lord Carnarvon.', NULL, 'Toutânkhamon', 'Howard Carter', 'Lord Carnarvon', 'Ramsès II', NULL),
(28, 2, 'Quel pharaon fût inhumé dans la tombe KV 06 de la Vallée des Rois ?', NULL, 'Il semble que cette tombe n\'a pu être terminée avant la mort du pharaon, on estime que la moitié de son plan d\'origine seulement a été atteint !', NULL, 'Ramsès IX', 'Ramsès X', 'Toutânkhamon', 'Siptah', NULL),
(29, 2, 'Quel numéro porte la tombe de Mérenptah dans la Vallée des Rois ?', NULL, 'La tombe KV 07 est attribué à Ramsès II tandis que les deux autres tombes (KV 12 et KV 21) n\'ont pas de propriétaire connu.', NULL, 'KV 08', 'KV 07', 'KV 12', 'KV 21', NULL),
(30, 2, 'En 2020, combien de tombes de la Vallée des Rois n\'ont pas de propriétaires identifiés ?', NULL, '27 tombes de la Vallée des Rois sont désignées comme ayant un propriétaire inconnu. Il s\'agit des KV 12, 21, 24 à 31, 33, 37, 40, 41, 44, 49 à 53, 56, 58, 59, 61, 63, A et F !', NULL, '27', '24', '21', '18', NULL),
(31, 1, 'Laquelle de ces tombes de la Vallée des Rois possède un propriétaire connu ?', NULL, 'Si les tombes KV 30, 31 et 33 appartiennent à un propriétaire inconnu, la KV 32 appartient à Tjaâ, épouse d\'Amenhotep II et mère de Thoutmosis IV. C\'est la découverte d\'un coffre à vases canopes par l\'équipe du MISR Project qui a permis d\'identifier le propriétaire de cette tombe.', NULL, 'KV 32', 'KV 30', 'KV 31', 'KV 33', NULL),
(32, 2, 'À l\'heure actuelle, quelle est la seule tombe royale de la Vallée des Rois située dans la Vallée du Sud (South Valley) ? ', NULL, 'Les tombes KV 06 et 34 se trouvent dans la partie principale de la Vallée des Rois (Vallée de l\'Est) tandis que la KV 25 se trouve dans la Vallée de l\'Ouest.', NULL, 'KV 39', 'KV 06', 'KV 34', 'KV 25', NULL),
(33, 2, 'Quel égyptologue a initié la numérotation des tombes de la Vallée des Rois ? ', NULL, 'Surnommé \"le père de l\'égyptologie britannique\", il numérota en premier les 21 tombes de la Vallée des Rois par ordre géographique de visite vers le sud puis vers l\'est.', NULL, 'Sir John Gardner Wilkinson', 'Sir Alan Henderson Gardiner', 'Edward Russell Ayrton', 'William John Bankes', NULL),
(34, 2, 'Quel est le nom du mécène qui a financé les fouilles d\'Howard Carter ?', NULL, 'De son nom complet George Edward Stanhope Molyneux Herbert, 5e comte de Carnarvon. Né en 1866, il succombera en 1923, peu de temps après l\'ouverture de la tombe de Toutânkhamon, initiant sans le vouloir l\'hypothèse d\'une \"malédiction de la momie\".', NULL, 'Lord Carnarvon', 'Sir Alan Henderson Gardiner', 'Theodore Davis', 'Charles Edwin Wilbour', NULL),
(35, 1, 'Dans quelle bande-dessinée Astérix de rend-il en Égypte ?', NULL, 'C\'est dans l\'album « Astérix et Cléopâtre » qu\'Astérix se rend en Égypte accompagné d\'Obélix, de Panoramix et d\'Idéfix afin de construire un palais pour la reine d\'Égypte', NULL, 'Astérix et Cléopâtre', 'Le tour de Gaule d\'Astérix', 'Astérix gladiateur', 'Le cadeau de César', NULL),
(36, 2, 'De quand date la 1re édition de l\'album d\'A. Uderzo et R. Goscinny intitulé « Astérix et Cléopâtre » ? ', NULL, 'Après une première publication en 1963 dans le 215e numéro de la revue Pilote, c\'est bien en 1965 que paraît pour la 1re fois cet album des aventures d\'Astérix le Gaulois !', NULL, '1965', '1964', '1966', '1967', NULL),
(37, 3, 'En quelle année la bande dessinée « Astérix et Cléopâtre » a-t-elle été adaptée en film animé pour la 1re fois ?', NULL, 'C\'est trois ans après sa 1re édition que cet album d\'Astérix est adapté pour la télévision.', NULL, '1968', '1966', '1967', '1969', NULL),
(38, 4, 'Combien de pinceaux ont été nécessaires à la réalisation de l\'album « Astérix et Cléopâtre » d\'Uderzo et Goscinny ?', NULL, 'On peut retrouver ce chiffre dans le 215e numéro de la revue Pilote  du 05 décembre 1963 où la publication prochaine de l\'album était annoncée !', NULL, '30', '15', '60', '45', NULL),
(39, 4, 'Combien de litres d\'encre de chine ont été nécessaires à la réalisation de l\'album « Astérix et Cléopâtre » d\'Uderzo et Goscinny ?', NULL, 'On peut retrouver ce chiffre dans le 215e numéro de la revue Pilote  du 05 décembre 1963 où la publication prochaine de l\'album était annoncée !', NULL, '14', '15', '16', '17', NULL),
(40, 2, 'Comment s\'appellent les créateurs de l\'album « Astérix chez Cléopâtre » ?', NULL, 'Ces deux dessinateurs sont également à l\'origine de Oumpah-Pah, Jehan Pistolet et Luc Junior !', NULL, 'René Goscinny & Albert Uderzo', 'Raoul Goscinny & Alphonse Uderzo', 'Raymond Goscinny & Alfred Uderzo', 'Rémi Goscinny & Auguste Uderzo', NULL),
(41, 1, 'Quels célèbres Gaulois se rendent en Égypte pour aider Cléopâtre à gagner son pari contre César dans un album d\'A. Uderzo et R. Goscinny ?', NULL, 'Astérix, Obélix et Panoramix se rendent en Égypte pour vient en aide à Numérobis, un architecte égyptien.', NULL, 'Les trois', 'Astérix', 'Obélix', 'Panoramix', NULL),
(42, 3, 'Dans la série des aventures d\'Astérix, quel numéro porte l’album intitulé « Astérix et Cléopâtre » ?', NULL, 'Cet album succède directement au Tour de Gaule d\'Astérix.', NULL, '6', '7', '8', '10', NULL),
(43, 2, 'Comment s\'intitule le film d\'Alain Chabat, adaptation au cinéma de l\'album d\'A. Uderzo et R. Goscinny « Astérix et Cléopâtre » ?', NULL, 'Ce film a fait pas moins de 14 millions d\'entrées et de nombreuses répliques sont devenues cultes !', NULL, 'Astérix et Obélix : Mission Cléopâtre ', 'Astérix et Obélix : Mission Pyramides', 'Astérix, Obélix et le Sphinx', 'Astérix et Cléopâtre : Mission Obélix', NULL),
(44, 3, 'En quelle année est sorti au cinéma le film d\'Alain Chabat intitulé « Astérix et Obélix : Mission Cléopâtre » ?', NULL, 'Avec plus de 14 millions d\'entrées, il se classe dans le Top 5 des films français au box office national et le 1er pour l\'année 2002 !', NULL, '2002', '2000', '2001', '2003', NULL),
(45, 4, 'Quel jour est sorti au cinéma le film d\'Alain Chabat intitulé « Astérix et Obélix : Mission Cléopâtre » ?', NULL, 'Si vous le savez, c\'est que vous êtes vraiment un grand fan de ce film… ou alors que vous avez déjà répondu une fois à cette question !', NULL, 'Le 30 janvier 2002', 'Le 23 janvier 2002', 'Le 5 février 2002', 'Le 12 février 2002', NULL),
(46, 4, 'Quel est le titre de l\'album d\'Uderzo et Goscinny « Astérix et Cléopâtre » en Finnois ?', NULL, 'Le titre \"Astérix et Cléopâtre\" a été traduit par \"Asteriks i Kleopatra\" en Polonais, \"Asterix och Kleopatra\" en Suédois et \"Asterix og Kleopatra\" en Danois !', NULL, 'Asterix ja Kleopatra', 'Asteriks i Kleopatra', 'Asterix och Kleopatra', 'Asterix og Kleopatra', NULL),
(47, 4, 'Dans la Grand Collection, combien de pages fait l\'album « Astérix et Cléopâtre »  d\'Uderzo et Goscinny ?', NULL, 'L\'album comprend 48 pages dans son édition Classique et 56 dans la Grande Collection !', NULL, '56', '48', '52', '60', NULL),
(48, 3, 'Dans l\'album « Astérix et Cléopâtre » d\'Uderzo et Goscinny, comment se nomme l\'assistant d\'Amonbofis ?', NULL, 'Tumehéris est le capitaine de navire qui amène Numérobis en Gaule ; Ginfis est l\'espion égyptien à la solde de César et Misenplis le sribe assistant de Numérobis.', NULL, 'Tournevis', 'Tumehéris', 'Ginfis', 'Misenplis', NULL),
(52, 3, 'question', '15502_ae_inv_3926.jpeg', 'feedback', 'isis-serqet_louvre.jpg', 'réponse', 'facile', 'normale', 'difficile', NULL),
(55, 1, 'aaa', NULL, 'aaa', NULL, 'bbb', 'bbb', 'bbb', 'aaa', 'aaa'),
(56, 1, 'a', NULL, 'a', NULL, 'a', 'a', 'a', 'a', 'a'),
(57, 1, 'b', NULL, 'b', NULL, 'b', 'b', 'b', 'b', 'b'),
(58, 1, 'b', NULL, 'b', NULL, 'b', 'b', 'b', 'b', 'b'),
(59, 1, 'c', NULL, 'c', NULL, 'c', 'c', 'c', 'c', 'c'),
(60, 1, 'aa', NULL, 'aa', NULL, 'aa', 'aa', 'aa', 'aa', 'aa');

-- --------------------------------------------------------

--
-- Structure de la table `myonlinequiz`.`users`
--

DROP TABLE IF EXISTS `myonlinequiz`.`users`;
CREATE TABLE IF NOT EXISTS `myonlinequiz`.`users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `password_hash` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `myonlinequiz`.`users`
--

INSERT INTO `myonlinequiz`.`users` (`id`, `username`, `email`, `password_hash`, `role`) VALUES
(1, 'Eleriad', 'test@test.fr', '$2y$10$KV765gPcUphh1YOOaTDamua5UIPXQRohuJexTPC0sKL6qUo5DXMoq', 'user'),
(2, 'Jkail', 'jkail@theboss.com', '$2y$10$3s3QHUKFAkgbBAN4H6b4aeMdCynmdpJtYVcVYT14xCKvVrWfBXUua', 'admin'),
(3, 'Fred', 'fred@test.fr', '$2y$10$qLzobuus0dXrvNDLnRzAUOgiXbT6y5oqrOVfIwVo.3J6fCQvjV0iO', 'admin'),
(4, 'Ben', 'ben@ben.fr', '$2y$10$W9tOgABP2Ud52CP7NZ/5s.x5mSx7GkvtQy7UToFoUfp3b0GuiCWbC', 'user');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `myonlinequiz`.`page_views`
--
ALTER TABLE `myonlinequiz`.`page_views`
  ADD CONSTRAINT `page_id` FOREIGN KEY (`page_id`) REFERENCES `myonlinequiz`.`pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `myonlinequiz`.`posseder`
--
ALTER TABLE `myonlinequiz`.`posseder`
  ADD CONSTRAINT `idCategorie` FOREIGN KEY (`id_categorie`) REFERENCES `myonlinequiz`.`categories` (`id_categorie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idQuestion` FOREIGN KEY (`id_question`) REFERENCES `myonlinequiz`.`questions` (`id_question`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `myonlinequiz`.`questions`
--
ALTER TABLE `myonlinequiz`.`questions`
  ADD CONSTRAINT `questionToNiveau` FOREIGN KEY (`niveau_id`) REFERENCES `myonlinequiz`.`niveaux` (`id_niveau`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
