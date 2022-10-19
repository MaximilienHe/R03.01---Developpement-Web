-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 19 oct. 2022 à 23:14
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `articlesblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `ID` int(11) NOT NULL,
  `Titre` text NOT NULL,
  `Slug` text NOT NULL,
  `Miniature` text NOT NULL,
  `Tags` text NOT NULL,
  `Contenu` text NOT NULL,
  `Auteur` varchar(255) DEFAULT NULL,
  `DatePublication` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`ID`, `Titre`, `Slug`, `Miniature`, `Tags`, `Contenu`, `Auteur`, `DatePublication`) VALUES
(1, 'TEST – Lenovo ThinkPad X13s, l’ARM sous Windows au niveau d’Apple ?\r\n', 'test-lenovo-thinkpad-x13s', 'https://lecafedugeek.fr/wp-content/uploads/2022/09/Lenovo-ThinkPad-X13S-Miniature-scaled.jpg', 'test;laptop;lenovo;thinkpad;x13s', 'Apple s’installe depuis plusieurs années désormais avec les puces M1 et M2. Utilisant l’architecture ARM, elles permettent d’avoir une très bonne autonomie, et une bonne efficacité énergétique. En l’occurrence, Apple est plutôt seul dans ce cas-là. Les dernières puces Intel ont été décevantes sur ces 2 points. Ainsi, Qualcomm vient avec la même architecture à travers le Snapdragon 8cx Gen 3. Est-ce que la puce est à la hauteur dans ce Lenovo ThinkPad X13s, et peut concurrencer Apple ? Réponse dans ce test.\n\nhttps://lecafedugeek.fr/wp-content/uploads/2022/09/Lenovo-ThinkPad-X13S-Introduction-scaled.jpg\n\n\nDesign et Hardware du Lenovo ThinkPad X13s\n\nCe PC portable s’inscrit dans la lignée des ThinkPad. Ainsi, le premier élément différenciant sera son petit curseur rouge en plein milieu du clavier. Celui-ci permet de faire des micros déplacements, comme avec un trackpad. Pour ajuster des curseurs, faire de la retouche … c’est idéal. Sinon, de manière générale, le design fait assez grossier. Il fait plutôt plastique, et s’éloigne d’un côté premium que l’on pourrait attendre pour ce prix.\n\nhttps://lecafedugeek.fr/wp-content/uploads/2022/09/Lenovo-ThinkPad-X13S-Miniature-scaled.jpg\n\nTout le châssis est formé d’un plastique recyclé, mat, mais qui fait vraiment cheap. De plus, il reste quand même assez épais pour un PC portable qui se veut très mobile. Il est en fait comme bombé, ce qui est assez déroutant. D’autant qu’il n’y a pas de contrainte particulière d’épaisseur, lié à une carte graphique par exemple.\n\n\nConnectique et connectivité\n\nOn retrouve 3 ports, 2 USB-C et une prise jack. Cela reste pauvre, et un hub en USB-C semble obligatoire pour exploiter ce Lenovo ThinkPad X13s. Et pour la partie communication, Lenovo a conçu sa « communication bar », qui est la zone qui loge la caméra. Elle contient donc une webcam de 5 MP avec cache de confidentialité et un microphone.\n\nhttps://lecafedugeek.fr/wp-content/uploads/2022/09/Lenovo-ThinkPad-X13S-connectique-USB-C-scaled.jpg\n\nPour la partie connectivité, on est toutefois gâté. On se place sur les dernières normes de réseaux sans-fils. Donc d’un part, il y a le Wifi 6E. Cette norme vous permettra d’avoir un débit élevé, à condition que votre box soit compatible bien évidemment. Si vous recherchez à connecter des écouteurs ou casque sans-fils, le Bluetooth 5.2 assurera cette connexion. Et enfin, dans les cas où vous êtes en déplacement, les données mobiles, avec compatibilité 5G millimétrique, vous permettront d’assurer un lien avec Internet. De quoi travailler dans le bus, le train, à l’hôtel …\n\n[...]', 'Maximilien', '2022-10-06 09:00:00'),
(2, 'IFA 2022 : Qualcomm a une nouvelle stratégie pour concurrencer Apple\r\n', 'ifa-2022-qualcomm-a-une-nouvelle-strategie-pour-concurrencer-apple', 'https://lecafedugeek.fr/wp-content/uploads/2022/09/20220902_101704-scaled.jpg', 'IFA;berlin;qualcomm;PC;ARM;Snapdragon', 'Depuis quelques années désormais, Apple a su s’installer durablement avec les processeurs M1 et M2 plus récemment. Ces processeurs sous la technologie ARM ne sont pas réservés à l’écosystème d’Apple, Qualcomm fait de même pour les PC sous Windows. Et c’est le cas avec le Snapdragon 8cx Gen 3, annoncé il y a quelques mois désormais, et avec une nouvelle stratégie pour les années à venir, présentée durant l’IFA 2022.\n\n\nAvec l’IFA 2022, Qualcomm veut investir le marché des PC portables avec ARM\n\nCela fait donc plusieurs années que Qualcomm propose des processeurs ARM pour PC Portable. Mais de plus en plus de marques travaillent avec Qualcomm, pour les intégrer à leurs machines. C’est le cas très récemment de Lenovo, qui vient de propulser le premier PC portable Thinkpad avec un processeur Snapdragon.\n\nhttps://lecafedugeek.fr/wp-content/uploads/2022/09/20220902_101704-scaled.jpg\n\nCe Snapdragon 8cx Gen 3 est gravé en 5nm, et promet une batterie de plusieurs jours. Comparée à la génération précédente, la rapidité du CPU a quasiment doublé, 85% de plus pour être précis. Et ce sont 60% de performances du GPU en plus que l’on peut attendre. Par ailleurs, avec des modules Snapdragon, on peut retrouver de la 5G Sub6 et mmWave, jusqu’à 10Gbps en théorie. Il faut maintenant attendre que cette 5G millimétrique arrive en France. À l’avenir, Qualcomm cherche vraiment à investir ce marché, et a donc des projets prévus sur les prochaines années.\n\n\nLe Lenovo ThinkPad x13s, premier Thinkpad équipé du 8cx Gen 3\n\nLe Lenovo ThinkPad x13s est donc équipé de ce processeur sous ARM. L’objectif recherché est d’amener l’expérience que l’on peut avoir des smartphones, sur un laptop ThinkPad. Et cela passe donc par une finesse, que permet ce tout embarqué, mais aussi une grande autonomie annoncée. Au-delà d’être le premier Thinkpad sous Snapdragon, c’est aussi le premier PC portable commercialisé avec ce Snapdragon 8cx Gen 3 par ailleurs.\n\nhttps://lecafedugeek.fr/wp-content/uploads/2022/09/telecharger-6.jpg\n\nDe nombreux usages sont imaginés par Lenovo. Avec cette grande autonomie annoncée, et la 5G mmWave, c’est de la productivité en déplacement qui est recherchée. Où que vous soyez, pas besoin d’avoir de Wifi, ou de partage de connexion, c’est un PC tout en un. Une image de votre smartphone dans un format de laptop.\n\n\nDe nombreux partenariats pour créer tout un écosystème\n\nLe marché du PC est important, mais Qualcomm Snapdragon, ce n’est pas que ça. Vous savez sûrement qu’ils équipent la majorité des smartphones sous Android. Les montres connectées utilisent également des processeurs Qualcomm. Ainsi, de nombreux produits sont dans cet écosystème, et cela passe par des marques qui proposent ces produits. Nous avons donc pu voir à l’occasion de la conférence d’introduction de l’IFA, un panel de partenariats annoncés.\n\nhttps://lecafedugeek.fr/wp-content/uploads/2022/09/20220902_102501-scaled.jpg\n\nParmi ces partenariats, on retrouve notamment Bose, Samsung et Meta. Pour la partie avec Bose, cela passe par le label Snapdragon Sound, appuyée, durant cet IFA 2022, par Qualcomm. Et ensuite, Samsung et Meta sont les symboles de cette stratégie de l’écosystème. Samsung propose évidemment des smartphones, des tablettes et des montres. Les prochains smartphones haut de gamme seront donc équipés de processeur Snapdragon, et Exynos passe donc au second plan. Pour les tablettes, elles sont déjà sous Snapdragon, il ne reste que les montres qui conservent les Exynos W920 cette année.\n\nEt pour ce qui est de Meta, une vraie stratégie tournée vers le Metaverse est orchestrée à travers ce partenariat. Les Oculus Quest 2, appartenant à Meta désormais, sont équipés de processeurs de chez Snapdragon. Ainsi, vous comprenez désormais quelle stratégie pour les PC et l’écosystème s’annonce pour Qualcomm, présenté pendant l’IFA 2022.', 'Maximilien', '2022-09-15 09:30:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
