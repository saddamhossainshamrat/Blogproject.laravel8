-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2021 at 08:36 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(32, 'Web Development', 'web-development', NULL, '2021-09-12 15:34:18', '2021-09-12 15:36:16'),
(33, 'PSD to HTML', 'psd-to-html', NULL, '2021-09-12 15:34:18', '2021-09-12 15:36:29'),
(34, 'Laravel', 'laravel', NULL, '2021-09-12 15:34:18', '2021-09-12 17:03:59'),
(35, 'Wordpress', 'wordpress', NULL, '2021-09-12 15:34:18', '2021-09-12 17:04:13'),
(76, 'Web Design', 'web-design', NULL, '2021-09-12 15:41:22', '2021-09-12 15:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Saddam Shamrat', 'shamrat01717@gmail.com', 'Laravel 8', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '2021-09-07 15:26:51', '2021-09-07 15:26:51'),
(2, 'Robul', 'shakibal_h@yahoo.com', 'Contact Message', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, adipisci. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, adipisci Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, adipisci.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, adipisci?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, adipisci.', '2021-09-09 15:16:57', '2021-09-09 15:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `dashboards`
--

CREATE TABLE `dashboards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_08_211837_create_categories_table', 1),
(5, '2021_08_11_113158_create_dashboards_table', 1),
(6, '2021_08_14_075057_create_tags_table', 1),
(7, '2021_08_14_221907_create_posts_table', 1),
(10, '2021_09_06_201156_create_settings_table', 2),
(11, '2021_09_07_202846_create_contacts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `image`, `description`, `category_id`, `user_id`, `published_at`, `created_at`, `updated_at`) VALUES
(82, 'Animi corporis occaecati impedit laudantium dolores.', 'animi-corporis-occaecati-impedit-laudantium-dolores', 'https://picsum.photos/id/1/640/480', 'Nobis odio atque provident a assumenda officiis. Dolorem hic voluptas molestias quos ipsum. Occaecati consequuntur itaque aliquam aspernatur. Voluptatem consequatur quo est dolorum quibusdam quam occaecati ut. Eveniet velit asperiores et quod. Cumque porro veritatis facilis fugit autem laborum. Distinctio voluptatum laudantium soluta. Molestiae itaque ut similique sunt officia.', 32, 1, '2021-09-13 10:31:44', '2021-09-12 16:09:05', '2021-09-13 04:31:44'),
(83, 'Quia aut voluptatibus provident beatae.', 'quia-aut-voluptatibus-provident-beatae', 'https://picsum.photos/id/2/640/480', 'Architecto sapiente aut odit. Ut et sunt quia quasi repellat in. Aut quam sit consequatur nam nihil voluptatem ut. Doloremque voluptates voluptatem eum sequi et. Sed qui et ut facilis maxime.', 35, 1, '2021-09-13 10:31:44', '2021-09-12 16:09:05', '2021-09-13 04:31:44'),
(84, 'Odit asperiores cum incidunt saepe sunt.', 'odit-asperiores-cum-incidunt-saepe-sunt', 'https://picsum.photos/id/3/640/480', 'Quaerat modi ut explicabo sit ullam qui. Quis magnam omnis iste ducimus. Impedit consequatur velit soluta doloremque libero rerum. Est harum autem provident dolorum deleniti. Cum voluptas eaque est repellat ut et voluptate. Expedita et ullam error sint et aliquam.', 76, 1, '2021-09-13 10:31:44', '2021-09-12 16:09:05', '2021-09-13 04:31:44'),
(85, 'Inventore at amet est minima.', 'inventore-at-amet-est-minima', 'https://picsum.photos/id/4/640/480', 'Quia est qui magnam officia nostrum praesentium voluptatem quas. Quidem eos qui aspernatur asperiores sapiente placeat debitis. Qui laudantium sint voluptas vel modi consectetur labore. Ea animi et aspernatur vel laborum vel. Non aperiam in quas non ab velit. Qui numquam praesentium provident. Cupiditate sit est aspernatur aut.', 35, 1, '2021-09-13 10:31:44', '2021-09-12 16:09:05', '2021-09-13 04:31:44'),
(86, 'Pariatur qui eos nostrum et omnis.', 'pariatur-qui-eos-nostrum-et-omnis', 'https://picsum.photos/id/5/640/480', 'Possimus mollitia excepturi voluptatem eius omnis eius qui. Explicabo qui fugiat inventore iure similique placeat assumenda. Ea voluptas accusantium et commodi et ab eos molestiae. Odio id ab dolores placeat ut. Rem tempora ipsam earum rerum est sed esse est. Laboriosam vel quod itaque nemo qui doloribus et facilis. Consequuntur distinctio iusto id est suscipit nam in.', 76, 1, '2021-09-13 10:31:44', '2021-09-12 16:09:05', '2021-09-13 04:31:44'),
(87, 'Facilis explicabo voluptatibus rem explicabo esse exercitationem.', 'facilis-explicabo-voluptatibus-rem-explicabo-esse-exercitationem', 'https://picsum.photos/id/6/640/480', 'Aspernatur sapiente dolor qui adipisci voluptatem ullam. Nobis ipsum tempora illum voluptates aliquid ullam totam. Provident veniam nobis a nemo at molestias. Eos aut asperiores magnam et quia. Aspernatur atque harum dicta pariatur eius quam corrupti. Nisi occaecati fugit excepturi natus iusto. Et suscipit quasi neque ad voluptatibus amet praesentium.', 33, 1, '2021-09-13 10:31:44', '2021-09-12 16:09:05', '2021-09-13 04:31:44'),
(88, 'Culpa aut repudiandae qui nemo vel.', 'culpa-aut-repudiandae-qui-nemo-vel', 'https://picsum.photos/id/7/640/480', 'Accusantium sint dolore temporibus asperiores voluptas. Incidunt reiciendis laborum odit minus iste sequi. Omnis quos autem error beatae neque. Aut saepe esse officia magni et est. Blanditiis vel nisi est aut et modi. Totam saepe incidunt quia sit itaque aperiam. Sequi autem voluptatum blanditiis velit dignissimos explicabo.', 34, 1, '2021-09-13 10:31:44', '2021-09-12 16:09:05', '2021-09-13 04:31:44'),
(89, 'Quo occaecati mollitia sed.', 'quo-occaecati-mollitia-sed', 'https://picsum.photos/id/8/640/480', 'Suscipit voluptatem aut ut qui animi sint. Id quibusdam eum doloribus consequatur iusto quasi. Quos vel esse distinctio nesciunt. Saepe tenetur expedita aut itaque magnam. Est esse quis ut soluta sit mollitia eaque.', 34, 1, '2021-09-13 10:31:44', '2021-09-12 16:09:05', '2021-09-13 04:31:44'),
(90, 'Consequatur in commodi ut velit quia facilis dolores beatae.', 'consequatur-in-commodi-ut-velit-quia-facilis-dolores-beatae', 'https://picsum.photos/id/9/640/480', 'Velit et odit voluptas non. Sunt optio sint soluta corporis et. Sapiente quis recusandae nemo ab consequuntur unde aut corrupti. Vel occaecati labore assumenda debitis tenetur. Veritatis atque pariatur doloribus pariatur reiciendis eaque. Qui a harum et eos nostrum quasi. Fugit quo nemo voluptatem molestiae excepturi soluta ut. Iste tenetur culpa velit asperiores.', 76, 1, '2021-09-13 10:31:44', '2021-09-12 16:09:05', '2021-09-13 04:31:44'),
(91, 'Esse libero quasi et ab.', 'esse-libero-quasi-et-ab', 'https://picsum.photos/id/10/640/480', 'Tempore omnis blanditiis voluptas dolor repellat accusantium in earum. Ut et enim qui praesentium iure. Est eum delectus id similique non et et. Occaecati est ut saepe facere. Sunt eaque voluptatum accusamus veniam id ut. Debitis velit et recusandae consequatur. Deleniti sunt natus qui id atque amet. Rem voluptatem eligendi sint eum vitae et. Amet ipsum optio repellat numquam dolorem est nostrum.', 33, 1, '2021-09-13 10:31:44', '2021-09-12 16:09:05', '2021-09-13 04:31:44'),
(92, 'Quaerat exercitationem dignissimos nesciunt et porro.', 'quaerat-exercitationem-dignissimos-nesciunt-et-porro', 'https://picsum.photos/id/11/640/480', 'Soluta culpa in voluptates aut et earum laudantium. Rerum pariatur minima non harum voluptatem. Omnis nostrum deserunt similique placeat rerum. Excepturi voluptatem aut qui laboriosam excepturi dolores velit. Explicabo cupiditate voluptatem voluptatum ut. Vitae aperiam repellendus neque quo. Amet itaque voluptatem quo et eos. Ducimus aut repellat ad iusto.', 33, 1, '2021-09-13 10:31:44', '2021-09-12 16:15:06', '2021-09-13 04:31:44'),
(93, 'Laudantium ut consequatur aut debitis.', 'laudantium-ut-consequatur-aut-debitis', 'https://picsum.photos/id/12/640/480', 'Culpa esse ea nemo. Omnis nostrum praesentium autem excepturi recusandae soluta ad. Consequuntur est similique impedit ex. Voluptate ex necessitatibus est ex vel aut. Eligendi eos dolor sit optio iste. Cumque ut sint nulla aut rerum nulla. Impedit sint rerum voluptatem dolore quidem ipsa blanditiis. Animi rerum libero possimus eveniet.', 33, 1, '2021-09-13 10:31:44', '2021-09-12 16:15:06', '2021-09-13 04:31:44'),
(94, 'Minus consequatur quia tempora.', 'minus-consequatur-quia-tempora', 'https://picsum.photos/id/13/640/480', 'Voluptates illum beatae eos tempora blanditiis. Quo iure natus tempore necessitatibus nihil. Ut illo voluptatem vel quasi. Consequatur dolores sed voluptatem cum necessitatibus. Dolor ipsum iure autem corrupti libero ratione. Illo laborum cum temporibus quia ipsa aut qui. Culpa expedita nihil non voluptatem harum possimus.', 76, 1, '2021-09-13 10:31:44', '2021-09-12 16:15:06', '2021-09-13 04:31:44'),
(95, 'Reiciendis cupiditate ut dolor aspernatur vel et.', 'reiciendis-cupiditate-ut-dolor-aspernatur-vel-et', 'https://picsum.photos/id/14/640/480', 'Quia nostrum id porro ab. Maxime eveniet quia sed rem. Enim omnis beatae et temporibus sed recusandae velit. Sed voluptatem quia excepturi distinctio. Consequatur eum aut veritatis sit est. Corrupti quia possimus asperiores. Architecto quo esse ea impedit necessitatibus. Quis asperiores vel nam ducimus omnis. Optio similique accusamus quibusdam aut consectetur aperiam dolor.', 76, 1, '2021-09-13 10:31:44', '2021-09-12 16:15:06', '2021-09-13 04:31:44'),
(96, 'Totam adipisci sed tempore fuga.', 'totam-adipisci-sed-tempore-fuga', 'https://picsum.photos/id/15/640/480', 'Corporis sint explicabo praesentium voluptas assumenda quis. Non fuga quia deleniti est aspernatur et commodi. Voluptas odit enim ut maxime autem hic. Fugit harum dolor rem reiciendis consequatur quos at. Quisquam temporibus corrupti nesciunt non. Cumque eaque animi dolor iure incidunt culpa. Quis voluptatibus enim quibusdam eum natus.', 34, 1, '2021-09-13 10:31:44', '2021-09-12 16:15:06', '2021-09-13 04:31:44'),
(97, 'Eum natus voluptatem consequatur.', 'eum-natus-voluptatem-consequatur', 'https://picsum.photos/id/16/640/480', 'Reprehenderit ducimus nihil nam dolore. Ea nihil consequatur occaecati sint. Quis dolorem dolorem repellat culpa et. A aperiam dolore nulla esse qui eos. Voluptas dolore dolor eos rerum est dolore rerum eum. Delectus et est sed adipisci dicta quos. Exercitationem nostrum quo sapiente neque pariatur sit inventore. A officia facere quam unde in qui.', 34, 1, '2021-09-13 10:31:44', '2021-09-12 16:15:06', '2021-09-13 04:31:44'),
(98, 'Vel unde placeat nobis ducimus.', 'vel-unde-placeat-nobis-ducimus', 'https://picsum.photos/id/17/640/480', 'Aut eum iste quod ipsum perspiciatis sit et eaque. Minima sint velit consequatur aut sit velit. Quidem repellendus neque iste mollitia nisi maiores minima quia. Cum eius eos eaque nesciunt perferendis.', 34, 1, '2021-09-13 10:31:44', '2021-09-12 16:15:06', '2021-09-13 04:31:44'),
(99, 'Consectetur est perferendis consequatur aliquam est facilis et.', 'consectetur-est-perferendis-consequatur-aliquam-est-facilis-et', 'https://picsum.photos/id/18/640/480', 'Adipisci veritatis et id et. Omnis et magni atque tempore adipisci voluptate. Accusantium id mollitia ea nihil sed ratione omnis magni. Accusamus et earum ex. Corporis nobis distinctio aut fuga. Libero neque repellat quo aperiam qui eum tempora impedit. Illum asperiores fuga enim autem voluptatibus. Cumque consequatur et tempore sed.', 32, 1, '2021-09-13 10:31:44', '2021-09-12 16:15:06', '2021-09-13 04:31:44'),
(100, 'Non ut velit exercitationem maiores eaque natus quos.', 'non-ut-velit-exercitationem-maiores-eaque-natus-quos', 'https://picsum.photos/id/19/640/480', 'Repellendus ea doloribus voluptas assumenda. Adipisci autem sunt doloremque distinctio suscipit. Amet qui rerum harum nemo omnis mollitia quo. Est aut nulla error tempore qui illo. Nulla voluptate voluptatum eveniet quia laboriosam. Beatae similique est eveniet corporis omnis sit. Beatae cum quam mollitia optio et deleniti corporis.', 35, 1, '2021-09-13 10:31:44', '2021-09-12 16:15:06', '2021-09-13 04:31:44'),
(101, 'Eveniet voluptas atque velit quia sed ut autem libero.', 'eveniet-voluptas-atque-velit-quia-sed-ut-autem-libero', 'https://picsum.photos/id/20/640/480', 'Aut et necessitatibus aspernatur fugit. Unde vel consequuntur quae et id officia. Ut harum non et illum aperiam soluta dolore. Asperiores est et quia et iure. Eos consequatur similique tenetur et dolores voluptatem quam magnam. Nam non eos sed et praesentium repudiandae. Voluptatum ut natus aut optio facere sunt sapiente. Voluptas veritatis totam est cum est.', 32, 1, '2021-09-13 10:31:44', '2021-09-12 16:15:06', '2021-09-13 04:31:44'),
(106, 'Laravel Blog Post', 'laravel-blog-post', 'https://picsum.photos/id/21/640/480', '<p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></p>', 32, 1, '2021-09-13 13:41:07', '2021-09-13 07:22:27', '2021-09-13 07:41:07'),
(107, 'Wordpress Blog Post', 'wordpress-blog-post', 'https://picsum.photos/id/22/640/480', '<p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 35, 1, '2021-09-13 13:41:07', '2021-09-13 07:32:53', '2021-09-13 07:41:07'),
(108, 'Web Development Post', 'web-development-post', 'https://picsum.photos/id/23/640/480', '<p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></p>', 32, 1, '2021-09-13 13:41:07', '2021-09-13 07:35:38', '2021-09-13 07:41:07'),
(109, 'Web Design and Development', 'web-design-and-development', 'https://picsum.photos/id/24/640/480', '<p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 32, 1, '2021-09-13 14:14:50', '2021-09-13 07:38:03', '2021-09-13 08:14:50'),
(111, 'ওরে এটা বাংলা ভাষা', 'oore-eta-bangla-vasha', 'https://picsum.photos/id/25/640/480', '<p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 33, 1, '2021-09-13 14:19:07', '2021-09-13 08:16:41', '2021-09-13 08:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(1, 1),
(2, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(75, 1),
(76, 2),
(76, 3),
(77, 1),
(77, 2),
(78, 1),
(79, 2),
(80, 2),
(81, 2),
(82, 1),
(82, 2),
(83, 3),
(84, 2),
(85, 3),
(87, 2),
(86, 2),
(88, 1),
(89, 1),
(89, 3),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(94, 3),
(95, 3),
(96, 1),
(96, 3),
(97, 1),
(98, 1),
(99, 3),
(101, 2),
(101, 3),
(100, 3),
(102, 2),
(103, 2),
(104, 3),
(105, 3),
(106, 1),
(107, 3),
(108, 3),
(109, 3),
(110, 1),
(111, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reddit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `site_logo`, `description`, `facebook`, `twitter`, `instagram`, `reddit`, `email`, `copyright`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Blogger World', '/storage/setting/1631361916.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum', 'http://facebook.com/', 'http://twitter.com/', 'http://instagram.com/', 'http://reddit.com/', 'saddamhossains777@gmail.com', 'Copyright © 2021 All rights reserved', '+880216576', 'Indira Road, Dhaka', '2021-09-07 13:22:57', '2021-09-13 08:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'laravel', 'laravel', NULL, '2021-09-08 01:05:07', '2021-09-08 01:05:07'),
(2, 'Design', 'design', NULL, '2021-09-12 15:43:28', '2021-09-12 15:43:28'),
(3, 'Web', 'web', NULL, '2021-09-12 15:43:45', '2021-09-12 15:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `description`, `slug`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saddam Hossain', 'userlogin@gmail.com', NULL, '$2y$10$csQbxGVCT.wZAozaKRJpv.gS3eHTJh/OAIkj9uIDhRhw9YSsaJ4wO', '/storage/user/1631543212.png', 'Et cumque vel sed. Quia aut maiores quia qui. Ut dolorem aut suscipit sapiente necessitatibus quia occaecati rerum. Iure veniam quo adipisci dicta maiores. Qui inventore quo quisquam odio fugiat fugiat velit. Quos cumque rerum non. Similique a ullam nihil inventore tempore.', NULL, NULL, '2021-09-03 15:52:11', '2021-09-13 08:32:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboards`
--
ALTER TABLE `dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboards`
--
ALTER TABLE `dashboards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
