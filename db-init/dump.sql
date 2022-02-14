-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 29 déc. 2021 à 11:08
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `celinecreation`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `option`
--

DROP TABLE IF EXISTS `option`;
CREATE TABLE IF NOT EXISTS `option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `surface` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `heat` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold` tinyint(1) NOT NULL DEFAULT '0',
  `create_at` datetime NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `title`, `description`, `surface`, `rooms`, `floor`, `price`, `heat`, `city`, `adress`, `postal_code`, `sold`, `create_at`, `bedrooms`, `filename`, `updated_at`) VALUES
(3, 'Plat Tortue sans rebord', '30cm/20cm', 9, 1, 1, 25, 4, 'Tortue de tahiti', 'aucune', '00000', 0, '2021-12-18 16:04:17', 1, 'platTortue.jpg', '2021-12-19 09:41:34'),
(4, 'Plat Tortue avec rebord', '20/30 cm', 9, 2, 5, 25, 2, 'Chauvet', '39, place Alphonse Chauvet76 538 Antoine', '10703', 0, '2021-12-18 16:04:17', 4, 'pplatTortue.jpg', '2021-12-19 09:41:55'),
(5, 'Petite tortue colorée', 'Excepturi a ipsam ea et. Laborum error a quam quia quas aliquam. Et quam assumenda voluptate doloribus dolorem repudiandae.', 311, 6, 11, 2, 2, 'Wagnerboeuf', 'avenue de Delaunay31817 Marin-les-Bains', '70120', 0, '2021-12-18 16:04:17', 6, 'pTortue.jpg', '2021-12-19 09:42:11'),
(6, 'Stylos de couleurs', 'Veniam sunt nihil et. Deleniti ea eum provident aut dolorem similique et. Eveniet quia veniam modi reiciendis facilis et.', 72, 10, 3, 5, 0, 'Faivre-la-Forêt', '78, rue de Olivier70612 Guerin-sur-Leconte', '44632', 0, '2021-12-18 16:04:17', 6, 'stylo.jpg', '2021-12-19 09:42:32'),
(7, 'Ours', 'Sunt excepturi qui ut. Eos est consequatur dolorem et. Laborum molestiae voluptatem iure quia error maiores quo.', 95, 9, 11, 10, 2, 'Lebon', '152, rue Guillaume Besnard05 185 Boutin-la-Forêt', '75012', 0, '2021-12-18 16:04:17', 2, 'ours.jpg', '2021-12-19 09:42:52'),
(8, 'Jeux de dominos', 'Repellat voluptatem eveniet ipsam vitae distinctio aliquid voluptatem. Mollitia voluptas aliquid recusandae. Distinctio ducimus quo consequatur debitis esse voluptatibus voluptas.', 235, 6, 12, 202962, 0, 'Faure-les-Bains', '65, boulevard de Auger\n27 527 De Oliveira-sur-Mer', '76276', 0, '2021-12-18 16:04:17', 9, 'domino.jpg', '2021-12-19 09:42:52'),
(9, 'Marque pages baleines', 'Quam vel quisquam rerum. Quia vel aut necessitatibus sunt sunt. Dolorem harum nobis quibusdam aut.', 141, 7, 4, 769012, 2, 'Hoareau', '49, avenue de Morel\n24 737 Charles-sur-Mer', '58 784', 0, '2021-12-18 16:04:17', 4, 'mPage.jpg', '2021-12-19 09:42:52'),
(10, 'Lettres alphabetiques', 'Ea harum nesciunt quibusdam consequuntur ea soluta placeat impedit. Mollitia sit dolores molestiae nobis explicabo rerum facilis. Ut iste assumenda modi ab.', 243, 10, 2, 120095, 4, 'MercierVille', '7, rue Robin\n67782 Duval', '08 465', 0, '2021-12-18 16:04:17', 8, 'lettre.jpg', '2021-12-19 09:42:52'),
(11, 'aut unde amet', 'Et nihil facilis voluptates facilis officia qui similique. Reprehenderit qui atque ut dolorem nemo. Est non repellat explicabo.', 144, 2, 7, 301247, 4, 'Perrin', '996, boulevard Thierry Etienne\n58637 Marin', '36 416', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(12, 'molestias facilis veritatis', 'Facilis deserunt accusantium quasi omnis beatae incidunt deserunt. Doloremque voluptatem voluptate voluptatibus commodi. Quis itaque et blanditiis.', 98, 8, 3, 426675, 3, 'Guerin-sur-Payet', '66, chemin Dupuy\n51906 Dufour', '13 650', 0, '2021-12-18 16:04:17', 9, NULL, NULL),
(13, 'harum distinctio iusto', 'Facere exercitationem quos distinctio reprehenderit dicta omnis hic deleniti. Minima in ipsa ut libero fuga laudantium dicta. Assumenda expedita inventore in perspiciatis quo.', 273, 6, 13, 209096, 1, 'Guyon-sur-Costa', '8, rue de Riou\n73885 Devaux', '97562', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(14, 'excepturi ut hic', 'Quidem optio rem nihil aut dolorem officia nulla praesentium. Est sit quasi explicabo autem error ducimus. Nesciunt sed qui ducimus reprehenderit fugit ipsam.', 65, 5, 8, 398291, 0, 'Humbert', '74, impasse de Marchand\n89 237 Boucher', '05528', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(15, 'adipisci ullam sed', 'Quia nostrum itaque ea aperiam occaecati voluptas eligendi. Non accusantium et amet quibusdam rerum similique. Ea iure veniam est qui dolorem beatae sed et.', 248, 5, 0, 976887, 4, 'Leger', 'impasse Georges Lacroix\n37539 Bertrand-sur-Georges', '03 567', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(16, 'molestiae aperiam saepe', 'Dolore voluptas facere debitis omnis repellat. Eius iure qui aperiam corporis ab et. Praesentium veritatis dolor rerum neque maxime expedita ipsum.', 245, 5, 0, 396207, 2, 'Renard-sur-Gallet', '78, rue de Baudry\n82 651 Dumas', '24880', 0, '2021-12-18 16:04:17', 5, NULL, NULL),
(17, 'natus fuga placeat', 'Ullam nihil maiores quam maiores asperiores et laudantium. Mollitia qui quis numquam saepe corporis quasi est. Inventore aspernatur laudantium laborum aut optio ut error veritatis.', 316, 3, 1, 532777, 2, 'DupuyVille', '139, impasse de Lejeune\n47 358 Alexandre-sur-Mer', '50538', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(18, 'impedit enim quo', 'Quam consectetur ipsam ut. Laborum est omnis itaque optio vitae vitae molestiae asperiores. Eum facilis necessitatibus facilis odio necessitatibus.', 169, 2, 14, 480827, 3, 'Thomas-sur-Maurice', '4, chemin de Dijoux\n37 433 Ruiz', '74 530', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(19, 'accusamus consequatur asperiores', 'Sequi quam ipsa est pariatur. Eius sint eum et quo quasi dolores fuga. Reprehenderit voluptatem dolor laudantium placeat tenetur laudantium.', 284, 5, 7, 695925, 3, 'Robin-sur-Alves', 'place de Dias\n81 340 Duhamel', '47 933', 0, '2021-12-18 16:04:17', 2, NULL, NULL),
(20, 'deleniti voluptas sit', 'Labore et placeat alias. Et eveniet eos et provident. Eos expedita architecto consequatur illo omnis et.', 45, 5, 15, 712084, 2, 'DijouxBourg', '57, impasse Geneviève Lecoq\n53969 Renault', '52 377', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(21, 'itaque praesentium ipsam', 'Inventore ut facilis ab in dolorem. Molestias magni dolor et eius necessitatibus consequatur eligendi. Quo nobis eveniet repudiandae quasi ipsum.', 49, 3, 14, 798461, 1, 'Techer-les-Bains', '2, place Guichard\n30693 Le Roux-sur-Masson', '25594', 0, '2021-12-18 16:04:17', 2, NULL, NULL),
(22, 'deserunt ea est', 'Qui sequi aut nihil soluta excepturi impedit quia. Sit facere alias et molestias iste distinctio. At voluptatem aut ab.', 158, 5, 9, 777805, 0, 'Gosselin', '82, impasse de Marin\n75 144 Cohen', '12148', 0, '2021-12-18 16:04:17', 2, NULL, NULL),
(23, 'nulla aliquam quia', 'Autem qui quis velit quia et. Sint vel aut occaecati voluptatum autem natus alias. Consequuntur minima ipsum corporis voluptatem dolorem.', 174, 8, 14, 543326, 3, 'Davidnec', '428, place de Gilles\n96261 Blot', '31428', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(24, 'ipsum veritatis omnis', 'Recusandae maxime fugiat vel architecto commodi blanditiis. Quas eum veritatis sed suscipit quas. Consequatur eligendi tempore id error magni.', 101, 6, 6, 339069, 2, 'Leblanc', '51, place Marianne Bourdon\n84435 Lefebvre', '13024', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(25, 'voluptatem rem incidunt', 'Ratione alias aliquid minus. Beatae et repudiandae et fugit officiis sed. Quaerat et in repellendus dolores unde suscipit.', 195, 10, 3, 496811, 1, 'Legrandboeuf', '3, boulevard Chantal Hernandez\n34256 Laurent-la-Forêt', '84 112', 0, '2021-12-18 16:04:17', 2, NULL, NULL),
(26, 'veritatis sunt repellendus', 'Dolores voluptatum quos beatae distinctio nostrum. Quia ea consequatur dignissimos veritatis. Eligendi tenetur optio voluptates.', 321, 10, 0, 333098, 3, 'Gregoire', '28, avenue Georges Camus\n17004 MenardVille', '39 620', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(27, 'est corrupti eos', 'Nihil praesentium est in tempore sunt quam qui magnam. Recusandae est eos perferendis in. Iste velit omnis neque possimus voluptatem animi rem.', 47, 4, 7, 679346, 2, 'Da Silva', '20, impasse Royer\n93 385 Samson', '10836', 0, '2021-12-18 16:04:17', 7, NULL, NULL),
(28, 'commodi est perspiciatis', 'Provident repudiandae sed cumque quos. Deserunt modi voluptatem dolorem molestiae vitae. Doloribus sed tenetur quis ut eum itaque fugiat.', 216, 5, 15, 571961, 2, 'Charles', '81, rue Claude Masson\n97799 Pruvost-les-Bains', '11406', 0, '2021-12-18 16:04:17', 4, NULL, NULL),
(29, 'quasi aspernatur exercitationem', 'Omnis est sed qui velit atque quae. Cumque quia error non hic sit asperiores ut. Ut quia dolor iure voluptatibus placeat.', 303, 3, 9, 454683, 3, 'PerretVille', '57, rue Émile Cousin\n49022 Boucherdan', '19085', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(30, 'unde dolorem veniam', 'Expedita repellat repudiandae laborum voluptatem ex culpa dolor. Magni ratione adipisci occaecati temporibus magnam. Quo possimus quo error ut debitis debitis praesentium.', 249, 3, 6, 891272, 3, 'Charrier', '33, rue Timothée Breton\n38076 Guilbertnec', '14293', 0, '2021-12-18 16:04:17', 4, NULL, NULL),
(31, 'dolorem culpa vero', 'Iusto laborum nisi laborum voluptatem. Et veniam qui consectetur quos. Et voluptas qui sit sed quae optio ut.', 66, 3, 12, 206417, 1, 'Besnard-sur-Hebert', 'impasse Paul Courtois\n13042 Allain', '17 278', 0, '2021-12-18 16:04:17', 5, NULL, NULL),
(32, 'et deserunt fugiat', 'Laborum in neque aut nihil. Quia est fugiat id sit. Omnis veritatis quos omnis occaecati culpa quae unde.', 146, 6, 11, 188716, 4, 'Laine', '67, impasse Hoareau\n12 210 Marion-sur-Garcia', '76013', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(33, 'repellendus dolorum qui', 'Aspernatur atque repellat qui reiciendis et. Temporibus minima totam eos rerum dignissimos. Ipsum et incidunt ea asperiores perspiciatis aliquam quas.', 240, 8, 3, 248056, 2, 'Evrardboeuf', '44, rue Anne Turpin\n44198 Durand', '06357', 0, '2021-12-18 16:04:17', 5, NULL, NULL),
(34, 'nulla ut omnis', 'Earum dolore soluta sed eaque est ut corporis. Nulla atque ipsam provident sint ut. Est sit explicabo perferendis doloribus.', 158, 9, 4, 193416, 3, 'Delorme', '83, rue Guillet\n55108 GregoireVille', '48 699', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(35, 'mollitia perspiciatis est', 'Iure fugiat et quidem repudiandae optio iure aut iusto. Molestias voluptatem molestiae perspiciatis hic quia nam ullam. Voluptatem nulla non consequuntur rem voluptate.', 236, 3, 7, 622895, 2, 'Henry-sur-Garnier', '98, impasse Margot Le Roux\n90 110 Antoine', '86 584', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(36, 'ut alias ratione', 'Inventore id dicta aut numquam ex amet fuga reiciendis. Alias et odit quo. Illo nulla qui nihil voluptates nesciunt ut qui maxime.', 49, 7, 10, 228266, 4, 'Lebrun-sur-Mer', '79, rue Charlotte Torres\n10311 RegnierVille', '57 199', 0, '2021-12-18 16:04:17', 9, NULL, NULL),
(37, 'sunt placeat ut', 'Vel optio possimus est culpa. Et eos suscipit optio iste ex modi deserunt. Velit perspiciatis fugiat a.', 195, 5, 1, 360661, 3, 'Leclerc', '754, impasse Muller\n12223 Joubert', '98661', 0, '2021-12-18 16:04:17', 7, NULL, NULL),
(38, 'expedita a assumenda', 'Non odit quos accusantium nesciunt aut qui qui. Libero libero nisi debitis. Sit quidem sunt voluptatem molestias illo numquam sint.', 97, 3, 1, 831883, 4, 'Berthelot', '39, chemin Émile Leroux\n80193 Verdier', '91490', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(39, 'molestiae illum soluta', 'Ex cumque accusantium et deserunt quis eaque. Ut dolor veniam rerum minus eaque et. Et vitae provident omnis enim laboriosam eos.', 349, 4, 5, 305886, 4, 'Turpin', '261, avenue de Lebreton\n43 891 Levy', '15 531', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(40, 'saepe et libero', 'Ad blanditiis ab pariatur sunt quia tempore beatae. Consequatur non ducimus fugiat voluptas et doloremque illo. Ut deleniti odio consequatur est.', 44, 10, 14, 538343, 3, 'Garcia-les-Bains', '70, rue de Bousquet\n52 325 Lebrun', '59 716', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(41, 'architecto in et', 'Harum itaque excepturi illo nulla et. Enim vitae quis nihil expedita. Quo mollitia vel aperiam et itaque dolorem.', 325, 8, 5, 945333, 1, 'Guillot', '58, chemin de Fournier\n13563 Blot', '29214', 0, '2021-12-18 16:04:17', 2, NULL, NULL),
(42, 'aut ad ipsum', 'Quis quisquam sit voluptas in fugiat quo. Rem consequatur enim eligendi. Et accusamus occaecati maiores quasi labore quidem.', 102, 9, 3, 703166, 1, 'Diaz-la-Forêt', 'avenue Thierry Martins\n10 032 FaivreBourg', '75 125', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(43, 'et ex temporibus', 'Rem eligendi blanditiis et. In eos nesciunt maiores illum quia deleniti eum magni. Et ipsam asperiores quaerat vel error.', 203, 7, 4, 758812, 4, 'Hardy-sur-Gonzalez', '49, rue Théophile Delaunay\n32 222 Besnard', '44522', 0, '2021-12-18 16:04:17', 4, NULL, NULL),
(44, 'doloribus et voluptatem', 'Et nostrum reiciendis ex consequuntur occaecati aliquam laboriosam eos. Error voluptas qui ut corporis voluptatem. Est quo qui ipsa cum molestiae qui provident repudiandae.', 37, 9, 14, 893126, 3, 'Guillou-les-Bains', 'impasse Benard\n42 524 Turpinboeuf', '95963', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(45, 'illum eum optio', 'Dolorum cum qui quia et accusantium. Blanditiis tempore qui est in qui. Et cum enim aut dolor ea labore quam.', 144, 3, 1, 877253, 0, 'Prevost-la-Forêt', '44, rue de Pineau\n92 983 Lefebvrenec', '40 387', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(46, 'aliquid voluptas corporis', 'Quibusdam quae doloribus odit suscipit quia deserunt dolorem. Quo ducimus animi non alias officia quod labore sint. Quod necessitatibus quia assumenda.', 258, 10, 14, 319845, 4, 'Thibault-sur-Mer', '2, rue François Lebrun\n36 734 Lagarde', '07 733', 0, '2021-12-18 16:04:17', 5, NULL, NULL),
(47, 'voluptas quo libero', 'Praesentium soluta nesciunt libero necessitatibus consequuntur. Velit sit nesciunt reprehenderit consequatur qui ut in omnis. Dolorem nobis tenetur labore.', 269, 2, 2, 894328, 1, 'Texier', '16, place Maillot\n57 852 GaillardBourg', '85306', 0, '2021-12-18 16:04:17', 4, NULL, NULL),
(48, 'ea id et', 'Provident sed quas neque unde incidunt in laudantium. Eum voluptatem eum quisquam fuga ea unde. Maiores et consequatur qui et rerum iure accusamus.', 79, 8, 10, 321603, 2, 'Noel', '60, boulevard Anastasie Neveu\n35 398 Devauxnec', '42 687', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(49, 'illo quasi necessitatibus', 'Doloribus voluptatibus et modi eos. Blanditiis repellendus rerum ipsum omnis placeat et et. Amet delectus dolores consequuntur ut impedit animi.', 31, 5, 15, 389019, 2, 'Grenier-les-Bains', '91, boulevard David\n92115 Marienec', '36 735', 0, '2021-12-18 16:04:17', 4, NULL, NULL),
(50, 'autem doloremque consectetur', 'Fugiat nam omnis sint. Illum velit minus eos at facilis accusantium. Dolor aut nemo deserunt ut rerum.', 185, 3, 0, 488867, 3, 'Daniel-les-Bains', 'chemin Sanchez\n10744 Collin', '50809', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(51, 'et possimus et', 'Numquam et vero sit quia veniam non aliquid et. Amet sit consequatur temporibus pariatur. Dolores quas mollitia et blanditiis doloremque.', 146, 10, 1, 777403, 1, 'Bodin', '39, impasse Alexandre Gaillard\n01294 Leveque', '56 158', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(52, 'ullam voluptates odio', 'Recusandae deserunt non odio. Laboriosam in atque dolores esse autem. Excepturi asperiores dolorem in aut nam.', 114, 8, 8, 890951, 4, 'Le Goff', '4, avenue Barbier\n76 391 Bonnet', '39 668', 0, '2021-12-18 16:04:17', 2, NULL, NULL),
(53, 'totam accusamus autem', 'Aliquid sint dolorem qui magni ipsum. Eum id et cupiditate non magni at nisi voluptatum. Dolorum error iusto nobis.', 135, 9, 8, 757984, 3, 'Delattre', '39, rue Rémy Joly\n88 740 Collinnec', '05 469', 0, '2021-12-18 16:04:17', 5, NULL, NULL),
(54, 'est aliquid voluptas', 'Voluptatem quis vitae nam nemo nihil iusto tempora. Excepturi temporibus est ut. Ipsam et illo quaerat deserunt aliquid sequi sint aut.', 66, 3, 10, 981345, 3, 'Noel-sur-Wagner', '82, rue Thibaut Lemoine\n77 440 Devaux', '76089', 0, '2021-12-18 16:04:17', 5, NULL, NULL),
(55, 'consectetur deserunt ipsum', 'Modi officia facere nemo et et quia et fugiat. Ducimus voluptatem quia sed dicta dolorum et. Autem ea quaerat aut qui id id.', 238, 7, 4, 195488, 1, 'Couturierdan', '98, impasse Pascal\n09 025 AlexandreVille', '53 948', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(56, 'doloremque molestiae minus', 'Voluptatem laudantium vel quaerat voluptatem. Doloribus deleniti necessitatibus et quos natus inventore. Ut totam ea distinctio labore ut rerum aut.', 316, 9, 15, 575463, 4, 'Charrier-sur-Mer', 'chemin de Le Roux\n46 416 Marechal-la-Forêt', '20 537', 0, '2021-12-18 16:04:17', 9, NULL, NULL),
(57, 'praesentium officia tenetur', 'Vel est nihil aut. Quo eos similique exercitationem. Itaque voluptates inventore voluptas est.', 282, 5, 12, 383666, 3, 'BouvierVille', '8, chemin Riviere\n07091 Mary-sur-Vallee', '64 928', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(58, 'reiciendis ut natus', 'Ipsum ut autem vel occaecati minus culpa ipsum. Et mollitia illum nihil quaerat et voluptatem nihil. Consectetur voluptatem dignissimos suscipit explicabo.', 201, 6, 5, 575414, 0, 'Blin', '63, chemin Morin\n96 581 David', '56 057', 0, '2021-12-18 16:04:17', 4, NULL, NULL),
(59, 'maxime reprehenderit dolor', 'Rem assumenda vel accusamus itaque et est vel. Fuga laudantium et et. Repellendus aperiam minus consequatur blanditiis voluptates quia quo.', 73, 6, 2, 881465, 2, 'Baudry-les-Bains', 'rue de Boulay\n76572 Le Roux-sur-Bourgeois', '89843', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(60, 'dignissimos praesentium minima', 'Qui debitis tempore earum qui exercitationem error. Inventore iusto autem accusantium praesentium omnis similique eligendi. Quaerat debitis recusandae ullam id.', 178, 7, 12, 963187, 3, 'Carlier-sur-Gomez', '84, boulevard Bouchet\n29151 Mailletdan', '01 148', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(61, 'ut voluptas molestiae', 'Nihil est laudantium quo minima. Et excepturi rerum autem non. Est voluptatem laborum rerum at.', 309, 4, 2, 405640, 2, 'Gimenez-la-Forêt', '22, boulevard Bertrand Henry\n30689 Lebreton', '77 583', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(62, 'accusamus asperiores quasi', 'Et qui optio ut natus exercitationem nesciunt non. Non asperiores libero illo et voluptate ipsum enim. Cumque odit eligendi ea maxime itaque dolor tenetur.', 64, 3, 0, 640710, 1, 'Joubert', '17, avenue Bousquet\n20273 Gauthier', '72 701', 0, '2021-12-18 16:04:17', 7, NULL, NULL),
(63, 'quis quasi dicta', 'Laboriosam voluptatem in suscipit tenetur pariatur. Fugiat et animi eos voluptatem. Omnis ex harum consequatur numquam asperiores est sapiente.', 146, 10, 4, 303556, 3, 'Clerc', '73, boulevard Renault\n58829 Lebon', '82 342', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(64, 'sapiente voluptas excepturi', 'Voluptas mollitia quia blanditiis dignissimos eum enim vel. Sit reprehenderit et sapiente. Ea dolores sequi est.', 155, 3, 4, 257402, 2, 'Texier', '76, rue Camille Fernandes\n33 267 Thibault', '98305', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(65, 'animi quidem eligendi', 'Aspernatur enim non saepe quis quaerat laborum consequatur. Accusamus et aut nihil sunt magni. Occaecati laborum tempore earum iste eos recusandae qui.', 262, 10, 8, 269945, 2, 'Legendre-la-Forêt', '7, impasse de Hebert\n17636 Dupuy', '90 172', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(66, 'nulla eum iusto', 'Quas error consectetur officiis deleniti ipsum facere. Rerum excepturi sed quis debitis laboriosam quibusdam et. Non dolorum tempore corporis laborum sapiente et tenetur.', 31, 5, 14, 323602, 2, 'PerrinBourg', '88, boulevard de Mallet\n77 245 LombardBourg', '61 373', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(67, 'officia doloribus cum', 'Soluta dolorem quidem quaerat id porro deleniti excepturi provident. Ut molestias voluptatum blanditiis aut. Sed eum qui culpa et magni et sit omnis.', 67, 7, 0, 323998, 4, 'Gilles', 'place Guillaume Michel\n49516 Levy', '74 545', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(68, 'ipsum consequatur sapiente', 'Sequi maxime velit aut qui ut soluta dolorem. Esse aut et aliquid repudiandae veniam ducimus est. Nesciunt ut quam aut optio consequatur.', 117, 3, 13, 597239, 0, 'Bourgeois', '270, avenue Timothée Remy\n12387 LaineBourg', '04 230', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(69, 'et harum vero', 'Vitae omnis ab molestiae voluptatem blanditiis id aut. Eveniet aspernatur alias ad voluptatem. Sequi libero reiciendis voluptatibus necessitatibus.', 100, 8, 10, 371329, 0, 'Pinto', '76, chemin Marianne Gauthier\n55453 MarionVille', '07 674', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(70, 'ut voluptate beatae', 'Dolores voluptatum harum quia. Voluptatem et qui rerum ipsum. Aut earum voluptates qui velit sit.', 196, 8, 9, 621749, 3, 'Aubry', '54, rue Vincent Allard\n23 436 Guerin', '52178', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(71, 'exercitationem magni vel', 'Dolores et deserunt provident. A voluptates possimus corporis distinctio. Cum ut sit quidem sed error.', 141, 7, 7, 630208, 4, 'Fernandez', 'rue Bonnet\n88315 Roussel', '31422', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(72, 'tempora qui illo', 'Accusamus accusamus similique omnis placeat rerum. Laudantium sint ullam et eum. Omnis deleniti veniam a dolor quibusdam odit rem.', 279, 4, 10, 259672, 4, 'Josephdan', '93, boulevard Bonnet\n25 759 Girard', '71140', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(73, 'exercitationem consequatur atque', 'Repellendus doloremque ea cum maxime labore asperiores. Commodi consequatur incidunt labore voluptas rerum atque sint. Est sit omnis consequatur.', 344, 6, 15, 468593, 0, 'Grenier-sur-Duval', 'rue Moulin\n99 216 Aubert', '62 138', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(74, 'porro deleniti reiciendis', 'Soluta officiis dicta voluptatem quis veniam vel voluptatem. Dignissimos ut quisquam corrupti repellat consectetur. Repellendus aut harum quam maxime.', 152, 9, 2, 989500, 1, 'Hamel-les-Bains', '93, impasse Gilbert\n59142 Vidal-sur-Mer', '83 581', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(75, 'et blanditiis quidem', 'Et alias minima voluptatibus quo voluptate. Saepe et molestias repudiandae expedita. Eligendi ut excepturi pariatur rerum beatae et.', 303, 9, 14, 612856, 1, 'Techer', '26, chemin Pierre Paris\n41 026 Chevalier', '52465', 0, '2021-12-18 16:04:17', 2, NULL, NULL),
(76, 'sint dicta dolor', 'Fugiat consequuntur itaque voluptas placeat. Suscipit sed praesentium adipisci aut harum quasi excepturi. Commodi dolorum maiores quod sit officiis reiciendis.', 308, 5, 6, 109815, 3, 'Boulay-sur-Blondel', 'rue Clerc\n38 737 Bonnin', '09239', 0, '2021-12-18 16:04:17', 9, NULL, NULL),
(77, 'possimus et nemo', 'Dicta non aspernatur qui molestiae et quibusdam. Mollitia aut aut nesciunt soluta. Iste natus quam eveniet voluptatem hic modi.', 292, 5, 0, 332564, 1, 'Da Costadan', '85, rue Isaac Camus\n44993 Bernard-sur-Petit', '71627', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(78, 'reprehenderit vel possimus', 'Dolor ducimus architecto alias repellat. Possimus odio ea sunt voluptatem animi blanditiis quaerat. Quas quasi sapiente ab aut.', 61, 7, 0, 755080, 2, 'Weiss', '63, chemin de Voisin\n32 731 Bertrand-la-Forêt', '45 928', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(79, 'sit voluptas et', 'Ipsa iure rerum excepturi voluptatem aperiam totam eligendi. Neque saepe quod excepturi soluta accusamus tenetur. Aut ducimus velit consequatur occaecati.', 227, 8, 12, 217186, 3, 'Peron', '22, rue Anaïs Ferrand\n70 940 Guibertboeuf', '87 575', 0, '2021-12-18 16:04:17', 4, NULL, NULL),
(80, 'dolores itaque omnis', 'Esse saepe commodi voluptates est. Hic harum quibusdam impedit accusantium odio deserunt. Quae dolores dignissimos esse sint.', 65, 8, 4, 741704, 1, 'GermainBourg', '58, boulevard de Bailly\n93 376 Besson', '50 353', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(81, 'dolores officiis molestiae', 'Et officiis voluptas ut at et voluptatibus. Reiciendis non modi distinctio officia quia in minima. Ut est ea ab non nobis animi odio.', 306, 5, 11, 521967, 4, 'Michaudboeuf', '6, rue Camus\n55 997 Schmitt', '64 941', 0, '2021-12-18 16:04:17', 9, NULL, NULL),
(82, 'aut necessitatibus aliquid', 'Consequatur et quam ut. Dolores assumenda autem quis beatae culpa est ducimus nostrum. Quia sunt mollitia natus architecto odio.', 223, 10, 3, 336816, 0, 'Schneiderdan', '89, rue Rousset\n53744 Guibert', '97329', 0, '2021-12-18 16:04:17', 1, NULL, NULL),
(83, 'et ut voluptatem', 'Eligendi molestiae explicabo repellat qui. Iusto quasi error modi aspernatur quis qui. Vero non voluptates voluptatibus.', 123, 8, 0, 348498, 2, 'Pereira', '44, impasse Becker\n35690 Ferrand-sur-Martin', '04430', 0, '2021-12-18 16:04:17', 7, NULL, NULL),
(84, 'rerum est molestiae', 'Aliquam praesentium culpa nostrum saepe explicabo corporis molestiae. Minus est repellat tenetur. Nisi autem enim totam id perferendis.', 253, 5, 11, 936677, 1, 'Lemaire-les-Bains', '72, avenue de Marchal\n56 421 Raynaud', '60 126', 0, '2021-12-18 16:04:17', 4, NULL, NULL),
(85, 'vero ea consequatur', 'Inventore dolore et sapiente quia quidem adipisci ea. Provident harum est accusamus quia sit magni. Rerum autem tempore quis eum aut.', 23, 8, 5, 603067, 3, 'Lambert', '7, impasse de Parent\n38310 MauryBourg', '44 506', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(86, 'non eligendi incidunt', 'Natus omnis inventore quo sequi nemo. Molestiae accusantium corporis dolor voluptas laudantium consequatur adipisci. Optio ut quia dolor quibusdam est ipsa.', 307, 5, 13, 903596, 1, 'Blanchet', '84, rue Éric Marques\n43 669 Roche', '96181', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(87, 'nobis fugit eligendi', 'Laborum odio reprehenderit velit fugiat qui. Beatae explicabo accusantium voluptas officia non qui quam. Aliquid recusandae iusto non voluptas ipsa veritatis dolores.', 57, 4, 14, 205445, 1, 'PhilippeBourg', 'place Millet\n44040 Mahe', '35 631', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(88, 'ipsa assumenda ducimus', 'Explicabo eos sed molestias aut omnis dolores voluptatibus inventore. Non harum ipsa voluptas eum culpa cupiditate fugit. Repellat perferendis minima consequatur itaque amet saepe velit dolore.', 291, 10, 14, 860782, 4, 'Blondelboeuf', '90, rue Blanchard\n33558 PonsVille', '88 858', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(89, 'officiis ea ratione', 'Maxime facere officia quis dicta ipsam voluptatem dolor. Labore qui ipsa laborum autem. Rerum assumenda earum pariatur officia quia perspiciatis odio sed.', 48, 5, 15, 869589, 1, 'Adam-sur-Huet', 'chemin Dumont\n84337 Letellier', '31 813', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(90, 'laboriosam nobis rerum', 'Asperiores dolorem assumenda ad harum est. Est hic atque laboriosam est excepturi officiis omnis error. Tempora numquam nostrum aut atque veniam.', 201, 6, 13, 876439, 2, 'Hernandez', '27, impasse de Guillaume\n95 544 Lefort-sur-Boucher', '74 487', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(91, 'tenetur cum earum', 'Commodi voluptate est quidem dolorum corporis aut labore quaerat. Officiis aspernatur dicta sed eum iste. Dolor aperiam laborum qui sed odit et earum.', 279, 2, 5, 788469, 4, 'Barbe', '7, chemin Inès Marin\n54 937 Robertnec', '94 812', 0, '2021-12-18 16:04:17', 2, NULL, NULL),
(92, 'voluptas sed omnis', 'Debitis mollitia ut maiores ut. Et ipsam ea dolor accusamus at. Nobis totam aut maiores dolor libero.', 230, 4, 8, 590790, 2, 'MoulinBourg', '583, chemin Marthe Rossi\n23889 Andreboeuf', '64 691', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(93, 'dolor libero nemo', 'Expedita corporis in molestias aut repellat sit aspernatur. Occaecati alias accusamus odit vero fugit iusto. Vitae cum voluptatibus voluptate consequatur voluptatum possimus quibusdam perspiciatis.', 101, 3, 8, 204493, 2, 'Munoz-sur-Joubert', '5, impasse de Poirier\n19 326 Alves-sur-Mer', '91054', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(94, 'dolorem ipsam deleniti', 'Similique omnis dolorem aut repellat voluptatem beatae nostrum. Quos sit veritatis cum sequi saepe non odio. Laboriosam quaerat perferendis velit quibusdam.', 81, 7, 8, 486129, 1, 'GalletVille', '3, place Francois\n62381 Aubert-sur-Mer', '83051', 0, '2021-12-18 16:04:17', 6, NULL, NULL),
(95, 'repellendus adipisci accusamus', 'Repellendus explicabo neque qui ipsa. Non sit necessitatibus et sed quidem provident. Cum exercitationem asperiores quos consequuntur eos nemo omnis.', 201, 10, 5, 733308, 1, 'RibeiroVille', 'boulevard Morin\n23 714 Brunetdan', '11 918', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(96, 'perferendis distinctio dolores', 'Vitae quisquam placeat voluptatem molestias maxime iste sint. Praesentium quia qui praesentium aliquid consequuntur qui. Possimus quos et numquam.', 267, 4, 15, 249911, 3, 'Delorme-sur-Roche', '26, place Fournier\n26785 Legranddan', '26222', 0, '2021-12-18 16:04:17', 3, NULL, NULL),
(97, 'et minima eaque', 'Quos ea molestiae delectus est eius labore. Aut sit quia odio quasi accusamus debitis a. Magnam pariatur velit dolorem omnis.', 40, 5, 9, 565215, 3, 'Daniel', '778, place Adam\n82714 Leroy-la-Forêt', '74386', 0, '2021-12-18 16:04:17', 7, NULL, NULL),
(98, 'pariatur delectus modi', 'Magnam iusto at consequatur. Quae voluptates rerum sapiente enim et nihil impedit. Veritatis quasi vero ipsum et.', 350, 9, 4, 917514, 4, 'Grenier-sur-Hamel', '2, impasse Rocher\n36 589 Delannoy', '67273', 0, '2021-12-18 16:04:17', 5, NULL, NULL),
(99, 'ut ex rem', 'Corrupti distinctio commodi tempore. Atque officia porro corrupti voluptatem aut fugit magni. Vel pariatur ut minima adipisci est natus dolorem perspiciatis.', 320, 8, 9, 924318, 3, 'Ribeiro', '23, rue Delahaye\n05255 Dupont-sur-Fouquet', '76 006', 0, '2021-12-18 16:04:17', 7, NULL, NULL),
(100, 'maiores consequuntur maiores', 'Non vitae et et illo aliquid rem dolorum. Facilis sapiente consequatur et animi nostrum voluptatem vero. Dolores laboriosam ipsa necessitatibus qui magni repellat ipsum laborum.', 90, 5, 13, 302405, 2, 'Roger', '686, avenue Peltier\n88 512 Gaillard', '22088', 0, '2021-12-18 16:04:17', 9, NULL, NULL),
(101, 'est et esse', 'Natus id error accusantium voluptatem dignissimos eos exercitationem. Aut et magnam impedit non rerum aut rem. Enim earum harum eum quia rerum est.', 330, 8, 6, 145549, 1, 'Paul-les-Bains', '50, impasse Tristan Barre\n46 636 Lacombedan', '72146', 0, '2021-12-18 16:04:17', 8, NULL, NULL),
(102, 'autem iste non', 'Recusandae ipsa laborum temporibus ut dicta. Et consequatur voluptatem iure corrupti voluptate sint ipsa. A impedit voluptas iste enim voluptatibus id exercitationem.', 49, 6, 6, 136791, 3, 'Garnier', '740, impasse Boulay\n28623 Marie', '85 025', 0, '2021-12-18 16:04:17', 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `property_option`
--

DROP TABLE IF EXISTS `property_option`;
CREATE TABLE IF NOT EXISTS `property_option` (
  `property_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`property_id`,`option_id`),
  KEY `IDX_24F16FCC549213EC` (`property_id`),
  KEY `IDX_24F16FCCA7C41D6F` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(2, 'cedric', '$2y$12$Xw70gBGAkDw57cqBYnr/feniAauXm77GbcMOKZXkWoWwN9TvHaCeK');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `property_option`
--
ALTER TABLE `property_option`
  ADD CONSTRAINT `FK_24F16FCC549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_24F16FCCA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `option` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
