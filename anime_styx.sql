-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table anime_styx.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table anime_styx.categories: ~0 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(2, 'Action', '2024-06-22 06:22:39', '2024-06-22 06:22:41'),
	(3, 'Magic', '2024-06-22 06:23:11', '2024-06-22 06:23:11');

-- Dumping structure for table anime_styx.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `show_id` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table anime_styx.comments: ~7 rows (approximately)
INSERT INTO `comments` (`id`, `show_id`, `username`, `image`, `comment`, `created_at`, `updated_at`) VALUES
	(1, 1, 'styx', 'logo.png', 'Lorem ipsum dolor sit amet consectetur adipiscing elit libero himenaeos, urna quisque primis curae quis platea orci cras, volutpat class lobortis nisi suspendisse nam maecenas blandit. Fringilla est duis mi enim ornare proin', '2024-06-18 07:30:33', '2024-06-18 07:31:55'),
	(9, 2, 'styx', 'logo.png', 'Hello', '2024-06-19 02:31:33', '2024-06-19 02:31:33'),
	(10, 2, 'styx', 'logo.png', 'JJK', '2024-06-19 02:31:44', '2024-06-19 02:31:44'),
	(11, 1, 'styx', 'logo.png', 'Uhuy', '2024-06-19 02:36:55', '2024-06-19 02:36:55'),
	(12, 1, 'styx', 'logo.png', 'Hello', '2024-06-19 02:39:47', '2024-06-19 02:39:47'),
	(13, 1, 'styx', 'logo.png', 'Hello', '2024-06-19 02:40:00', '2024-06-19 02:40:00'),
	(14, 1, 'styx', 'logo.png', 'styx', '2024-06-19 02:40:07', '2024-06-19 02:40:07'),
	(15, 1, 'styx', 'logo.png', 'Cahyan', '2024-06-20 07:44:20', '2024-06-20 07:44:20');

-- Dumping structure for table anime_styx.episodes
CREATE TABLE IF NOT EXISTS `episodes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `show_id` int DEFAULT NULL,
  `episode_name` varchar(255) DEFAULT NULL,
  `video` text,
  `thumbnail` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table anime_styx.episodes: ~2 rows (approximately)
INSERT INTO `episodes` (`id`, `show_id`, `episode_name`, `video`, `thumbnail`, `created_at`, `updated_at`) VALUES
	(1, 1, '1', '1.mp4', 'anime-watch.jpg', '2024-06-19 08:02:56', '2024-06-19 09:34:35'),
	(2, 1, '2', '2.mp4', 'hero-1.jpg', '2024-06-19 08:03:24', '2024-06-19 09:34:33'),
	(3, 2, '1', '2.mp4', 'anime-watch.jpg', '2024-06-19 08:40:06', '2024-06-19 08:40:09');

-- Dumping structure for table anime_styx.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table anime_styx.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table anime_styx.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table anime_styx.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2014_10_12_100000_create_password_resets_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- Dumping structure for table anime_styx.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table anime_styx.password_resets: ~0 rows (approximately)

-- Dumping structure for table anime_styx.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table anime_styx.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table anime_styx.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table anime_styx.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table anime_styx.shows
CREATE TABLE IF NOT EXISTS `shows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `studios` varchar(255) NOT NULL,
  `date_aired` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table anime_styx.shows: ~0 rows (approximately)
INSERT INTO `shows` (`id`, `name`, `image`, `description`, `type`, `studios`, `date_aired`, `status`, `genre`, `duration`, `quality`, `created_at`, `updated_at`) VALUES
	(1, 'Fate Stay Night: Unlimited Blade', 'hero-1.jpg', 'Lorem ipsum dolor sit amet consectetur adipiscing elit quis convallis cubilia blandit quisque a laoreet ante sed sociis, porta fermentum luctus quam imperdiet fringilla himenaeos euismod feugiat sollicitudin massa orci congue posuere risus augue. Curabitur inceptos sem in praesent penatibus cras tempor quam torquent leo hac natoque tristique odio, mollis lacinia neque luctus risus metus et rhoncus quis lobortis tincidunt venenatis est. Primis mi luctus senectus ultrices diam nam massa velit egestas neque sociosqu, sollicitudin varius inceptos sed rutrum facilisi interdum hendrerit arcu posuere, curae turpis natoque maecenas facilisis suscipit ligula pharetra nisi scelerisque. Dapibus neque natoque nullam ultrices est tincidunt nulla enim interdum, massa vel dui ad rutrum aliquam dis cras.', ' TV Series', 'Lerche', 'Oct 02, 2019 to ?', 'Airing', 'Action, Adventure, Fantasy, Magic', '24 min/ep', 'HD', '2024-06-15 07:19:18', '2024-06-15 07:19:18'),
	(2, 'Boruto: Naruto next generations', 'popular-5.jpg', 'Lorem ipsum dolor sit amet consectetur adipiscing elit egestas velit eget nam pulvinar, dis semper bibendum mauris fermentum netus id enim vulputate pretium. Tempus dictumst sed metus molestie eleifend mauris torquent lacus mi, viverra faucibus vivamus duis diam praesent varius hac, dignissim egestas tortor magna class nisi orci accumsan. Penatibus fames vestibulum primis sagittis varius accumsan, volutpat magnis dapibus nisl risus nulla blandit, dictumst sem a mauris massa. Quam orci primis consequat in aliquet cubilia praesent pretium, habitant neque eget vehicula vulputate nam feugiat, hendrerit lectus egestas nunc eu sociosqu sapien. Etiam parturient class odio cum ligula, porta nisi maecenas a aliquam varius, vulputate pretium viverra inceptos. Quis molestie integer ante purus justo auctor praesent hendrerit fermentum, netus massa conubia pharetra pretium convallis primis eros tempus hac, est turpis varius at maecenas ac ullamcorper commodo.', ' TV Series', 'Lerche', 'Oct 02, 2019 to ?', 'Airing', 'Action, Adventure, Fantasy, Magic', ' 24 min/ep', 'HD', '2024-06-18 07:06:59', '2024-06-18 07:06:59');

-- Dumping structure for table anime_styx.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table anime_styx.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'styx', 'styx@gmail.com', NULL, '$2y$10$t0ECgHNcu9EvygzUeCiguuPKnozwa2N.qs1GGf2OF936ffR4PxkaG', 'logo.png', NULL, '2024-06-14 20:45:02', '2024-06-14 20:45:02'),
	(2, 'hugi@mail.example', 'hugi@mail.example', NULL, '$2y$10$1/Ls60bQ0vjQHc2X3GKniOXWTQc4dPxGfheJdn0TtNXNo.Sb6oQq2', 'logo.png', NULL, '2024-06-14 23:12:22', '2024-06-14 23:12:22');

-- Dumping structure for table anime_styx.views
CREATE TABLE IF NOT EXISTS `views` (
  `id` int NOT NULL AUTO_INCREMENT,
  `show_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table anime_styx.views: ~4 rows (approximately)
INSERT INTO `views` (`id`, `show_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 2, 1, '2024-06-18 20:30:45', '2024-06-18 20:30:45'),
	(2, 1, 1, '2024-06-18 20:36:15', '2024-06-18 20:36:15'),
	(3, 2, 2, '2024-06-18 20:41:10', '2024-06-18 20:41:10'),
	(4, 1, 2, '2024-06-18 20:41:18', '2024-06-18 20:41:18');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
