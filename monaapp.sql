-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2018 at 04:45 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monaapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Css', '2018-02-24 17:16:46', '2018-02-24 17:16:46'),
(2, 'Vuejs', '2018-02-24 17:16:46', '2018-02-24 17:16:46'),
(3, 'AngularJs', '2018-02-24 17:16:46', '2018-02-24 17:16:46'),
(4, 'Php', '2018-02-24 17:16:46', '2018-02-24 17:16:46'),
(5, 'Css', '2018-02-24 17:16:46', '2018-02-24 17:16:46'),
(6, 'Css3', '2018-02-24 17:16:46', '2018-02-24 17:16:46'),
(7, 'Css', '2018-02-24 17:16:46', '2018-02-24 17:16:46'),
(8, 'Nodejs', '2018-02-24 17:16:46', '2018-02-24 17:16:46'),
(9, 'Php', '2018-02-24 17:16:47', '2018-02-24 17:16:47'),
(10, 'Css3', '2018-02-24 17:16:47', '2018-02-24 17:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `is_active`, `author`, `email`, `comment`, `created_at`, `updated_at`, `photo`) VALUES
(1, 1, 1, 'Hettie Wehner', 'edaniel@example.net', 'Nulla vero et saepe dolores. Voluptatem laudantium consequatur nam cupiditate non voluptas qui.', '2018-02-24 17:16:48', '2018-02-24 17:16:48', 'placeholder.jpg'),
(2, 2, 1, 'Dr. Alexane Pollich I', 'rweissnat@example.com', 'Alias possimus nihil illo suscipit sint architecto laborum.', '2018-02-24 17:16:48', '2018-02-24 17:16:48', 'placeholder.jpg'),
(3, 3, 1, 'Jeffrey Gislason', 'leon.ruecker@example.com', 'Eum vitae omnis dignissimos maiores.', '2018-02-24 17:16:48', '2018-02-24 17:16:48', 'placeholder.jpg'),
(4, 4, 1, 'Adrian McLaughlin', 'sheila.cronin@example.com', 'Ab consequatur iure atque voluptas inventore eum. Placeat et consectetur fugiat aliquam quo dolore deleniti.', '2018-02-24 17:16:48', '2018-02-24 17:16:48', 'placeholder.jpg'),
(5, 5, 1, 'Jasmin Price', 'hamill.josefa@example.org', 'Qui perferendis blanditiis aut illo. Animi cumque tenetur asperiores nemo consectetur.', '2018-02-24 17:16:48', '2018-02-24 17:16:48', 'placeholder.jpg'),
(6, 6, 1, 'Rhoda Abbott I', 'gwen.greenholt@example.org', 'Molestiae ut iusto et est non ipsum labore. Eos sed ea esse vero nisi doloremque.', '2018-02-24 17:16:48', '2018-02-24 17:16:48', 'placeholder.jpg'),
(7, 7, 1, 'Veronica Hammes', 'szulauf@example.com', 'Id provident voluptates fuga. Molestiae dolor officia enim assumenda a quae veniam.', '2018-02-24 17:16:48', '2018-02-24 17:16:48', 'placeholder.jpg'),
(8, 8, 1, 'Miss Candice Sipes', 'qgutkowski@example.net', 'Non exercitationem sapiente aut. Quo provident pariatur molestias fugiat beatae.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(9, 9, 1, 'Rylan Effertz', 'karley74@example.org', 'Omnis veritatis possimus sed et. Delectus qui corrupti quisquam quod rerum inventore similique.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(10, 10, 1, 'Miss Destiney Jerde', 'bette29@example.org', 'Dolorem consequatur explicabo quisquam soluta numquam.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replays`
--

CREATE TABLE `comment_replays` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment_replays`
--

INSERT INTO `comment_replays` (`id`, `comment_id`, `is_active`, `author`, `email`, `comment`, `created_at`, `updated_at`, `photo`) VALUES
(1, 1, 1, 'Marielle Shields III', 'armstrong.alessia@example.net', 'Accusamus atque vel reiciendis ipsum quia ut. Nostrum optio ipsam molestiae vero.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(2, 2, 1, 'Israel Morar', 'kathlyn.kutch@example.org', 'Ea laborum sit quisquam ducimus iusto quis eveniet. Aliquid laudantium est amet voluptatibus dolor omnis natus.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(3, 3, 1, 'David O\'Reilly', 'caitlyn.feil@example.net', 'Debitis velit unde quia dignissimos non incidunt.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(4, 4, 1, 'Lexie Corwin', 'zbogan@example.org', 'Rerum et nihil harum voluptatem quia et.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(5, 5, 1, 'Austyn Bahringer', 'torrey19@example.org', 'Sunt quibusdam fugiat vel ut voluptas commodi illo. Sint deserunt architecto ut voluptatem.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(6, 6, 1, 'Prof. Donald Bayer', 'ericka58@example.com', 'Sed et soluta qui non nihil dignissimos et provident. Quis dolore quas impedit.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(7, 7, 1, 'Justice Schaden', 'eulalia72@example.net', 'Ipsa non enim perferendis nobis ab.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(8, 8, 1, 'Mona Bogan III', 'hamill.delphia@example.org', 'Exercitationem aut molestias nihil sit vel omnis. Voluptatem voluptate voluptatum quod quis dolorem labore.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(9, 9, 1, 'Candida Parisian', 'padberg.tiara@example.com', 'Dolores ducimus ratione sit et maiores nostrum beatae. Facilis est rerum eum iste occaecati.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg'),
(10, 10, 1, 'Dr. Tressie Jones', 'jziemann@example.org', 'Velit temporibus et id sunt enim suscipit.', '2018-02-24 17:16:49', '2018-02-24 17:16:49', 'placeholder.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_07_123404_create_roles_table', 1),
(4, '2018_01_13_084728_add_photo_id_to_users', 1),
(5, '2018_01_13_101430_create_photos_table', 1),
(6, '2018_01_15_130404_create_posts_table', 1),
(7, '2018_01_16_073041_create_categories_table', 1),
(8, '2018_01_21_080449_create_comments_table', 1),
(9, '2018_01_21_080520_create_comment_replays_table', 1),
(10, '2018_01_24_125730_add_photo_column_to_comments', 1),
(11, '2018_01_25_152728_add_photo_column_to_comment_replays', 1),
(12, '2018_01_31_162654_add_sulg_column_to_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, 'placeholder.jpg', '2018-02-24 17:16:47', '2018-02-24 17:16:47'),
(2, 'placeholder.jpg', '2018-02-24 17:16:47', '2018-02-24 17:16:47'),
(3, 'placeholder.jpg', '2018-02-24 17:16:47', '2018-02-24 17:16:47'),
(4, 'placeholder.jpg', '2018-02-24 17:16:47', '2018-02-24 17:16:47'),
(5, 'placeholder.jpg', '2018-02-24 17:16:47', '2018-02-24 17:16:47'),
(6, 'placeholder.jpg', '2018-02-24 17:16:47', '2018-02-24 17:16:47'),
(7, 'placeholder.jpg', '2018-02-24 17:16:47', '2018-02-24 17:16:47'),
(8, 'placeholder.jpg', '2018-02-24 17:16:47', '2018-02-24 17:16:47'),
(9, 'placeholder.jpg', '2018-02-24 17:16:47', '2018-02-24 17:16:47'),
(10, 'placeholder.jpg', '2018-02-24 17:16:47', '2018-02-24 17:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `photo_id`, `title`, `body`, `created_at`, `updated_at`, `slug`) VALUES
(1, 1, 6, 1, 'Minus eum reprehenderit dolorum inventore et voluptatem.', 'Quia et velit impedit dolores ut fugiat id. Qui earum nulla et repudiandae hic consequatur atque quasi. Voluptates voluptatem velit officia voluptatem. Itaque repellendus quisquam molestiae et libero. Et facilis dolor unde consectetur perferendis voluptates. Et sint nihil sapiente sunt. Quibusdam ab praesentium et voluptas. Saepe aut aut voluptas cumque ullam unde porro. Ea dolores magni et eum modi soluta. Reprehenderit voluptatem qui omnis quae odit fugit sed. Quod voluptatem velit voluptas. Et perspiciatis tempore quod molestias. Aut praesentium non ea officia possimus. Sit exercitationem veritatis quia error officiis. Et omnis autem sit id mollitia dolores.', '2018-02-24 17:16:45', '2018-02-24 17:16:45', 'officia-aperiam-rerum-consequuntur-praesentium-repellendus-nam-dolores-aliquam'),
(2, 2, 7, 1, 'Esse dolorem ullam qui eum beatae non voluptatem.', 'Dolores magnam facere voluptate ducimus itaque explicabo excepturi. Dicta quae magni ea adipisci sunt libero fugiat. Dolor consectetur qui quo similique quaerat culpa. Nihil consequatur repellat ducimus cum. Libero ipsa accusantium in. Autem ea omnis sit impedit. Quidem dolor earum et aut officiis. Quis ullam numquam dolorem. Vero ea non nam eaque numquam perspiciatis. Et voluptas reiciendis eligendi rem voluptatem labore dicta dignissimos. Quisquam veniam qui laboriosam blanditiis. Quam culpa nesciunt adipisci ipsam placeat enim exercitationem commodi. Distinctio quidem doloribus sit porro quo dolor ut ducimus.', '2018-02-24 17:16:45', '2018-02-24 17:16:45', 'sit-assumenda-ab-doloremque-et'),
(3, 3, 10, 1, 'Laborum quod porro doloremque placeat est cum nisi.', 'Et et eum ea. Fugiat aut facere et eum ut et. Voluptatum molestiae et fugiat aspernatur. Earum vel et eum aperiam distinctio ut vel provident. Asperiores autem nam sint voluptatem eum. Vero neque a ab. Est in reprehenderit et et quia quia quaerat. Aut nulla velit qui non sit beatae eaque. Saepe quo ullam neque reiciendis doloribus nobis sint. Omnis soluta eum hic est quam unde omnis. Atque sed expedita laborum dolorem est. Dolores possimus aut quas ut neque tempora. Enim quis delectus sit voluptas blanditiis quasi velit cupiditate. Similique velit autem doloribus necessitatibus dolorem quasi officia. At dignissimos quo rerum eaque placeat. Nam est occaecati et sint nostrum voluptatem molestiae aut. Nulla maxime quisquam debitis ipsum et nulla. Sit et porro aspernatur dolores repellendus. Aliquam molestiae sunt est temporibus nemo quo dolore.', '2018-02-24 17:16:46', '2018-02-24 17:16:46', 'repellat-omnis-temporibus-iure-unde'),
(4, 4, 1, 1, 'Molestiae dignissimos est est exercitationem voluptates dolorum sed sequi accusantium.', 'Voluptatum nihil placeat accusamus sequi sit voluptatem consectetur consectetur. Praesentium rerum eum id modi eius asperiores. Perferendis laudantium voluptatem iste quia. Aut doloremque laboriosam ex doloribus ipsum dolores perspiciatis voluptas. Vel officia consequatur sunt assumenda. Non natus natus non modi. Quia ducimus ea unde voluptatum pariatur exercitationem voluptatem. Reiciendis aut vero ut et voluptates ex praesentium. Non sint rerum dolor. Id neque est omnis et libero ea sed. Quia rerum et inventore. Sit possimus tenetur est fugit aut aut eum et. Corporis fuga sunt aliquid deleniti rerum. Nemo quis velit aut maiores. Sint hic illo vero harum quo ipsum iste quas. Perferendis est dolores qui eveniet. Aperiam quo accusantium eveniet id veritatis voluptas quisquam. Molestiae a rerum fugit sed. Sint enim ea ex voluptate.', '2018-02-24 17:16:46', '2018-02-24 17:16:46', 'cum-qui-harum-et-ut-assumenda-deleniti-assumenda-vel'),
(5, 5, 9, 1, 'Sunt repellendus illum cumque voluptates a quidem nesciunt iure sint.', 'Voluptatem et non reprehenderit ut. Non error distinctio in rerum. Voluptatem iure repudiandae ab molestias. Aut impedit minima harum facilis. Quis necessitatibus vel quia molestias. Aut consectetur aut rerum praesentium. Aliquam accusantium quis minus corporis dicta et. Omnis est doloremque qui exercitationem officia optio eaque. Et nemo tempore nam nam incidunt aspernatur incidunt. Officiis magni dicta provident delectus. Atque sunt necessitatibus omnis sed quo. Sed tempore quod qui minus. Aut autem minima dolorum earum. A atque perferendis alias veritatis tenetur. Beatae quisquam id et vel odit debitis. Natus rerum voluptatem fugiat et ex assumenda illum. Expedita aut et qui tempore asperiores reiciendis omnis. Consequatur corporis cumque necessitatibus. Qui debitis enim eligendi ut. Libero corrupti culpa quia asperiores perferendis incidunt. Consequatur omnis id omnis sapiente. Temporibus mollitia tempora repellendus sed illum.', '2018-02-24 17:16:46', '2018-02-24 17:16:46', 'optio-quasi-illum-quam-molestias-sint-aliquam-ut-eveniet'),
(6, 6, 1, 1, 'Ut dicta ratione nulla veritatis quidem quis in.', 'Et qui distinctio aut quae cupiditate rerum voluptate maxime. Voluptatem quam ut temporibus placeat aliquid dolorem. Sint officia aspernatur debitis placeat similique similique dolorem. Recusandae a molestiae odio. Vel quis enim porro ullam. Ea minima accusamus earum et perferendis. Qui cum porro illo aliquid eum. Enim itaque reprehenderit et et consectetur numquam error debitis. Cum culpa distinctio ut quas laborum. Est corrupti veritatis aut aut cum quo. Sed eos qui sit cum repellendus. Hic eos est fugit quia unde ducimus expedita.', '2018-02-24 17:16:46', '2018-02-24 17:16:46', 'sed-dolore-qui-sit-vel'),
(7, 7, 1, 1, 'Nam exercitationem cumque aut voluptatem.', 'Est hic tempora vel qui et. Minus cum maiores totam cupiditate hic harum culpa. Rem ratione tempora delectus libero qui repellat. Quo explicabo magni a at non ut. Qui odio ut ratione et voluptate. Corrupti minima ipsam fuga et et alias maiores. Ipsum minima sit voluptatibus explicabo sint eos. Aut totam beatae nihil numquam incidunt impedit et. Quibusdam delectus nobis est molestiae sequi. Est iure deserunt quis numquam aut. Impedit est dicta nihil fugiat.', '2018-02-24 17:16:46', '2018-02-24 17:16:46', 'qui-ipsa-vel-iusto-neque-aliquam-ut-nemo'),
(8, 8, 3, 1, 'In sint eveniet dolor sunt nulla quidem fuga veritatis officia.', 'Id expedita fuga quia maiores sapiente at. Nisi et odio officiis incidunt vel et. Itaque provident consequatur molestiae dolorem tempora reprehenderit iste. Dolorem blanditiis illo vel labore. Dolorem exercitationem quo architecto natus dignissimos aut magni nam. Ipsum nesciunt et harum eum quod veritatis eveniet. Ut fugit rerum aliquam enim. Corrupti vero sunt similique reprehenderit sapiente veniam et. Aut ex magnam qui quia eaque. Quo optio laborum tempora eos. Ipsam necessitatibus et cupiditate velit accusantium blanditiis ut.', '2018-02-24 17:16:46', '2018-02-24 17:16:46', 'numquam-qui-in-eos-dolorem-ut-aut'),
(9, 9, 7, 1, 'Debitis sunt et eaque quaerat atque.', 'Unde voluptatum est nostrum quia. Molestias quisquam rem est quas praesentium animi vitae nam. Et amet necessitatibus nostrum dolorem aspernatur tempore facere qui. Non totam vitae aut et eum. Autem doloribus animi aut explicabo odio facilis quos sunt. Blanditiis accusamus qui pariatur laudantium. Quo ex occaecati fuga magni dolor reprehenderit voluptas. Dolore quis sit dignissimos enim est amet. Quia aliquid sint alias dolores. Iure eaque rerum non qui a qui. Maxime quasi omnis similique a. Consequatur optio ratione nihil explicabo culpa harum voluptatem. Possimus optio fugit voluptas rerum qui pariatur. Est qui porro est qui quos. Pariatur qui corporis fugit quos fugit et at. Autem exercitationem fugiat sint ut beatae et molestiae. Quam enim animi sit modi et nemo. Aperiam et incidunt porro voluptatem sint amet nam aperiam. Laboriosam minima quibusdam quam temporibus voluptate placeat.', '2018-02-24 17:16:46', '2018-02-24 17:16:46', 'aut-repudiandae-ipsa-reprehenderit-culpa-similique-animi'),
(10, 10, 2, 1, 'Ratione et ut repudiandae culpa est.', 'Ut blanditiis ratione aspernatur nulla deserunt qui. Fugiat sint soluta modi non sunt quis illum. Dolor consequatur totam laborum veniam dolor. Qui non explicabo exercitationem aspernatur tempore adipisci a. Reiciendis quia quasi blanditiis delectus. Atque accusantium aut et est. Aliquam molestiae reprehenderit nam consectetur voluptas consectetur enim esse. Reprehenderit molestiae et magni in. Qui iure recusandae quis neque nihil. Quasi quis eum ipsam non blanditiis eveniet tenetur aut. Qui enim quis laborum eum minus. Maxime est cum sequi itaque voluptatem. Et officiis ab perspiciatis ipsum labore qui minus eos. Asperiores nihil optio rerum eum quia eveniet illo eveniet. Dolor natus incidunt explicabo iure dolores sunt ut. Rerum enim ipsa cupiditate. Cumque et eos qui et laboriosam dolorem. Dolore laudantium nisi et deleniti cupiditate eligendi occaecati.', '2018-02-24 17:16:46', '2018-02-24 17:16:46', 'neque-fuga-tempore-quisquam-minus-eos-esse');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-02-24 17:16:46', '2018-02-24 17:16:46'),
(2, 'author', '2018-02-24 17:16:46', '2018-02-24 17:16:46'),
(3, 'user', '2018-02-24 17:16:46', '2018-02-24 17:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `is_active`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`) VALUES
(1, 2, 1, 'Wendy Leffler', 'haley.dee@example.org', '$2y$10$ggMZ9vnIXnQzXxJRfV//KeMJKiAA.XT4ozijKnsv402Kc4.VZ75pK', 'ehhm34L96e', '2018-02-24 17:16:44', '2018-02-24 17:16:44', ''),
(2, 3, 1, 'Ms. Destiny Bernhard III', 'jeffry85@example.com', '$2y$10$A2DU/hNHfS9xjuXSb76S/.xP9h4XyGjAAJE8PA1B7G8BB1cMBLX.2', 'imYLbVNp29', '2018-02-24 17:16:44', '2018-02-24 17:16:44', ''),
(3, 3, 1, 'Shemar Bergstrom IV', 'bailey21@example.com', '$2y$10$hLKQlkJY6I6bUwYyKr5zmO5.lIDSoMLAaaGZfVsQj72riSFdGLCnC', 'ujb3sTEI4l', '2018-02-24 17:16:44', '2018-02-24 17:16:44', ''),
(4, 3, 1, 'Lucienne Bartoletti', 'kade50@example.net', '$2y$10$rrQoGHcHed3tyRfWCYayZ.lxDVtUJocEIGZmBAJIW16ZeFocj6wY2', 'S8AIHVahcQ', '2018-02-24 17:16:45', '2018-02-24 17:16:45', ''),
(5, 2, 1, 'Adrianna Ryan III', 'kade57@example.com', '$2y$10$oIQWhpiZAvdFdSPq5cFGGOjMBH7Rxxw9SO/C4ZeM6kcEfrZs8dFW6', '3pcRhF2DLz', '2018-02-24 17:16:45', '2018-02-24 17:16:45', ''),
(6, 1, 1, 'Dr. Pauline Carter', 'taya.goldner@example.com', '$2y$10$rbjCZLBfV1KgurWPDCZzUuXol43wnspWGiJl7.EY87UJqXWZAy2HW', '7M0UOrAiSk', '2018-02-24 17:16:45', '2018-02-24 17:16:45', ''),
(7, 2, 1, 'Mrs. Margie Conn DVM', 'rau.estrella@example.com', '$2y$10$2BDaPmlG2oS52WgF32Thoeyo16bAihonIHfgHGZ9xB/L9E0IRmN3a', 'ugBNmQWieR', '2018-02-24 17:16:45', '2018-02-24 17:16:45', ''),
(8, 2, 1, 'Dr. Rashawn Block', 'sheathcote@example.net', '$2y$10$yJbNXdasku/kkSEj0cF07em.xjEewipIoHVGnwQEmx22uCLvcpjHu', 'oT3fwnC9PM', '2018-02-24 17:16:45', '2018-02-24 17:16:45', ''),
(9, 2, 1, 'Dr. Finn Kemmer III', 'upton.eva@example.com', '$2y$10$8X7J14kyUEiucOhsOMqtXuoOxB6lQMDa/HeElkhLiEZ3GxO.6vd2C', 'OScNyjkcqq', '2018-02-24 17:16:45', '2018-02-24 17:16:45', ''),
(10, 1, 1, 'Cordell Schultz', 'luettgen.lillian@example.com', '$2y$10$5DUQgey9GOAhXcrS7xAu/u4Eul4TB/iqKK.hQFhWlqy568I1gPHLW', 'HDlLZopjU7', '2018-02-24 17:16:45', '2018-02-24 17:16:45', ''),
(11, 1, 1, 'MONA', 'monaabdo88@gmail.com', '$2y$10$AqGswXH4wnyV1sZjy7Nn/uEpnr9dzn36kvzAfnsVA/bKJb0MBHIPu', 'xwN9IvtUviEaGbpPSueg2LKRwkRJyKs4lJQ5BR7q1HUUQ9cKkVTpDKx41Mbq', '2018-02-24 17:18:26', '2018-02-24 17:18:26', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Indexes for table `comment_replays`
--
ALTER TABLE `comment_replays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_replays_comment_id_index` (`comment_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_category_id_index` (`category_id`),
  ADD KEY `posts_photo_id_index` (`photo_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comment_replays`
--
ALTER TABLE `comment_replays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_replays`
--
ALTER TABLE `comment_replays`
  ADD CONSTRAINT `comment_replays_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
