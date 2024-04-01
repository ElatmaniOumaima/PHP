-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 18 juin 2023 à 17:22
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sign_in`
--

-- --------------------------------------------------------

--
-- Structure de la table `animaux`
--

CREATE TABLE `animaux` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `audio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `animaux`
--

INSERT INTO `animaux` (`id`, `word`, `image`, `audio`) VALUES
(1, 'Lion', 'images/lion.png', 'audio/lion.m4a'),
(2, 'Girafe', 'images/girafe.webp', 'audio/girafe.m4a'),
(3, 'Coq', 'images/coq.png', 'audio/coq.m4a'),
(4, 'Papillon', 'images/papillon.png', 'audio/papillon.m4a'),
(5, 'Lapin', 'images/lapin.png', 'audio/lapin.m4a'),
(6, 'Chien', 'images/chien.png', 'audio/chien.m4a'),
(7, 'Poisson', 'images/poisson.webp', 'audio/poisson.m4a'),
(8, 'Tortue', 'images/tortue.png', 'audio/tortue.m4a'),
(9, 'Pingouin', 'images/pingouin.jpg', 'audio/pingouin.m4a'),
(10, 'Chat', 'images/chat.jpg', 'audio/chat.m4a');

-- --------------------------------------------------------

--
-- Structure de la table `bot`
--

CREATE TABLE `bot` (
  `id` int(255) NOT NULL,
  `message` text NOT NULL,
  `reponse` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bot`
--

INSERT INTO `bot` (`id`, `message`, `reponse`) VALUES
(1, 'Bonjour', 'Bonjours avez vous des questions'),
(2, 'bonjour', 'bonjour en esperant que vous etes bien'),
(3, 'quelle est la capitale du maroc', 'Rabat'),
(4, ' Qu\'est-ce qu\'un légume ?', 'Réponse : Les légumes sont des plantes comestibles qui poussent dans la terre. Ils sont riches en vitamines, minéraux et fibres, ce qui est bon pour notre santé'),
(5, 'Quels sont les différents types de légumes ?', 'Réponse : Il existe de nombreux types de légumes, tels que les carottes, les tomates, les épinards, les brocolis, les pois, les courgettes, les haricots verts, les poivrons, les concombres, les pommes de terre, etc.'),
(6, 'Pourquoi est-il important de manger des légumes ?', 'Manger des légumes est important car ils nous fournissent des nutriments essentiels pour rester en bonne santé. Ils renforcent notre système immunitaire, aident à la croissance et au développement, et peuvent même nous protéger contre certaines maladies.'),
(7, 'Comment les légumes poussent-ils ?', 'Les légumes poussent à partir de graines. Ces graines sont plantées dans le sol ou dans des pots, puis elles ont besoin de lumière du soleil, d\'eau et de nutriments pour grandir. Après un certain temps, les plantes poussent et produisent des légumes que nous pouvons récolter et manger.'),
(8, 'Qu\'est-ce qu\'un animal ?', 'Les animaux sont des êtres vivants qui peuvent bouger, manger et respirer. Il en existe de nombreux types, des petits comme les fourmis aux grands comme les éléphants.'),
(9, ' Quels sont les différents types d\'animaux ?', 'Il y a différents groupes d\'animaux, tels que les mammifères (comme les chiens, les chats et les lions), les oiseaux (comme les pigeons et les canards), les poissons (comme les poissons rouges et les requins), les reptiles (comme les serpents et les tortues) et les insectes (comme les papillons et les abeilles).'),
(10, 'Comment les animaux se déplacent-ils ?', 'Les animaux se déplacent de différentes manières. Certains marchent ou courent sur leurs pattes, comme les chiens et les chats. Certains volent, comme les oiseaux et les papillons. D\'autres nagent dans l\'eau, comme les poissons et les dauphins.\r\n\r\nQuestion : Comment les animaux se nourrissent-ils ?'),
(11, 'Comment les animaux se nourrissent-ils ?', 'Les animaux se nourrissent de différentes façons. Certains mangent de la viande et sont appelés carnivores, comme les lions. Certains mangent des plantes et sont appelés herbivores, comme les vaches. D\'autres mangent à la fois de la viande et des plantes, et sont appelés omnivores, comme les humains.');

-- --------------------------------------------------------

--
-- Structure de la table `fruits`
--

CREATE TABLE `fruits` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `audio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `fruits`
--

INSERT INTO `fruits` (`id`, `word`, `image`, `audio`) VALUES
(1, 'Ananas', 'images/ananas.png', 'audio/ananas.m4a'),
(2, 'Banane', 'images/banana.png', 'audio/banane.m4a'),
(3, 'Cerise', 'images/cerise.png', 'audio/cerise.m4a'),
(4, 'Pêche', 'images/peche.png', 'audio/peche.m4a'),
(5, 'Orange', 'images/orange.png', 'audio/orange.m4a'),
(6, 'Kiwi', 'images/kiwi.png', 'audio/kiwi.m4a'),
(7, 'Poire', 'images/poire.png', 'audio/poire.m4a'),
(8, 'Citron', 'images/citron.png', 'audio/citron.m4a'),
(9, 'Fraise', 'images/fraise.png', 'audio/fraise.m4a'),
(10, 'Pomme', 'images/pomme.png', 'audio/pomme.m4a');

-- --------------------------------------------------------

--
-- Structure de la table `legumes`
--

CREATE TABLE `legumes` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `audio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `legumes`
--

INSERT INTO `legumes` (`id`, `word`, `image`, `audio`) VALUES
(1, 'Aubergine', 'images/aubergine.png', 'audio/aubergine.m4a'),
(2, 'Brocoli', 'images/brocoli.png', 'audio/brocoli.m4a'),
(3, 'Carotte', 'images/carotte.png', 'audio/carotte.m4a'),
(4, 'Epinard', 'images/épinard.png', 'audio/epinard.m4a'),
(5, 'Pomme de terre', 'images/pomme-de-terre.png', 'audio/pomme-de-terre.m4a'),
(6, 'Oignon', 'images/oignon.png', 'audio/oignon.m4a'),
(7, 'Champignon', 'images/champignon.png', 'audio/champignon.m4a'),
(8, 'Poivron', 'images/poivron.png', 'audio/poivron.m4a'),
(9, 'Chou-fleur', 'images/chou-fleur.png', 'audio/chou-fleur.m4a'),
(10, 'Petit-pois', 'images/petit_poi.png', 'audio/petit_pois.m4a');

-- --------------------------------------------------------

--
-- Structure de la table `nombres`
--

CREATE TABLE `nombres` (
  `id` int(11) NOT NULL,
  `nombre` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `audio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `nombres`
--

INSERT INTO `nombres` (`id`, `nombre`, `image`, `audio`) VALUES
(1, 0, 'images/0.png', 'audio/0.m4a'),
(2, 1, 'images/1.png', 'audio/1.m4a'),
(3, 2, 'images/2.png', 'audio/2.m4a'),
(4, 3, 'images/3.png', 'audio/3.m4a'),
(5, 4, 'images/4.png', 'audio/4.m4a'),
(6, 5, 'images/5.png', 'audio/5.m4a'),
(7, 6, 'images/6.png', 'audio/6.m4a'),
(8, 7, 'images/7.png', 'audio/7.m4a'),
(9, 8, 'images/8.png', 'audio/8.m4a'),
(10, 9, 'images/9.png', 'audio/9.m4a');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `question`) VALUES
(1, 'Quel est l\'animal le plus grand du monde ?'),
(2, 'Quelle couleur est obtenue en mélangeant du rouge et du jaune ?'),
(3, 'Comment s\'appellent les animaux qui ont un squelette articulé ?'),
(4, 'Quel animal ne vole pas ?'),
(5, 'Comment s\'appelle un polygone à trois côtés ?'),
(6, 'Combien de lettres y a-t-il dans l\'alphabet ?'),
(7, 'Quelle est la capitale de la France ?'),
(8, 'Combien y a-t-il de couleurs dans un arc-en-ciel ?'),
(9, 'Quelle est la planète la plus proche du soleil ?'),
(10, 'Quel animal vit dans l\'eau et respire avec des branchies ?');

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE `reponses` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `reponse` varchar(255) DEFAULT NULL,
  `correcte` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`id`, `question_id`, `reponse`, `correcte`) VALUES
(1, 1, 'Éléphant', 0),
(2, 1, 'Baleine bleue', 1),
(3, 1, 'Lion', 0),
(4, 2, 'Orange', 1),
(5, 2, 'Vert', 0),
(6, 2, 'Violet', 0),
(7, 3, 'Carnivore', 0),
(8, 3, 'Vertébrés', 1),
(9, 3, 'Herbivore', 0),
(10, 4, 'Oiseau', 1),
(11, 4, 'Chauve-souris', 0),
(12, 4, 'Poisson', 0),
(13, 5, 'Carré', 0),
(14, 5, 'Triangle', 1),
(15, 5, 'Circle', 0),
(16, 6, '20', 0),
(17, 6, '26', 1),
(18, 6, '30', 0),
(19, 7, 'Paris', 1),
(20, 7, 'Londres', 0),
(21, 7, 'Rome', 0),
(22, 8, '4', 0),
(23, 8, '7', 1),
(24, 8, '10', 0),
(25, 9, 'Vénus', 0),
(26, 9, 'Terre', 0),
(27, 9, 'Mercure', 1),
(28, 10, 'Poisson', 1),
(29, 10, 'Chat', 0),
(30, 10, 'Chein', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sign`
--

CREATE TABLE `sign` (
  `email` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PSW` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sign`
--

INSERT INTO `sign` (`email`, `PSW`) VALUES
('', ''),
('oumaimakeepswim@gmail.com', 'oumaima125');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(254) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `age` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `age`) VALUES
(10, 'ELATMANI', 'OUMAIMA', 20),
(11, 'ATTAF', 'KAWTAR', 20),
(12, 'BOUHAKKA', 'KHAWLA', 20),
(13, 'RYAD', 'HIBA', 20);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animaux`
--
ALTER TABLE `animaux`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bot`
--
ALTER TABLE `bot`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `legumes`
--
ALTER TABLE `legumes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nombres`
--
ALTER TABLE `nombres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animaux`
--
ALTER TABLE `animaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `bot`
--
ALTER TABLE `bot`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `fruits`
--
ALTER TABLE `fruits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `legumes`
--
ALTER TABLE `legumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `nombres`
--
ALTER TABLE `nombres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `reponses`
--
ALTER TABLE `reponses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD CONSTRAINT `reponses_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
