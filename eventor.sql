-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 11 May 2024, 22:05:54
-- Sunucu sürümü: 10.11.7-MariaDB-cll-lve
-- PHP Sürümü: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `u614918283_eventor`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `expire_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `events`
--

INSERT INTO `events` (`id`, `user_id`, `name`, `description`, `date`, `time`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Iure odit est non dolorum saepe molestiae.', 'Consequuntur quis rem tempore omnis voluptatem. Quasi id ullam qui.', '2024-05-16', '22:00:00', '2024-05-16 22:00:00', '2024-05-11 21:12:53', '2024-05-11 21:12:53'),
(2, 1, 'Quod temporibus omnis porro consectetur.', 'Ratione molestiae consequatur voluptates earum molestiae autem non. Illum quidem id omnis dolorem est eius voluptas at. Repellendus mollitia et numquam perspiciatis est.', '2024-05-16', '21:00:00', '2024-05-16 21:00:00', '2024-05-11 21:12:53', '2024-05-11 21:12:53'),
(3, 1, 'Voluptatem ut provident quidem.', 'Iusto dolorem ea repellendus voluptatem enim harum praesentium. Quo ullam est et commodi. Rerum ea qui voluptatem dolorem ratione delectus iure expedita. Delectus quae fugiat molestiae tempore consequatur quas vitae. Praesentium corrupti maiores sed tempore.', '2024-05-16', '21:00:00', '2024-05-16 21:00:00', '2024-05-11 21:12:53', '2024-05-11 21:12:53'),
(4, 2, 'Expedita et molestiae aliquid possimus esse dicta libero.', 'Dolorem aut architecto nulla dolores culpa sed qui. Officiis ipsam dolorem dolores porro repellendus. Aut minus quo sed consequatur debitis.', '2024-05-16', '21:00:00', '2024-05-16 21:00:00', '2024-05-11 21:12:53', '2024-05-11 21:12:53'),
(5, 2, 'Et sunt commodi repellendus ducimus.', 'Omnis deleniti quo quis magnam. Ut est architecto sint dicta quos aut voluptas est. Totam incidunt dolorem quis recusandae. Reprehenderit similique porro fugit impedit dolorem deleniti aut rerum. Et accusantium rem veritatis saepe veniam officiis dolorum.', '2024-05-16', '20:00:00', '2024-05-16 20:00:00', '2024-05-11 21:12:53', '2024-05-11 21:12:53'),
(6, 2, 'Possimus illo qui quidem animi dolore id adipisci.', 'Amet magnam odit dolor perferendis porro atque. Nulla nihil molestias nemo nostrum nobis ut perspiciatis. Ut sunt dolor harum.', '2024-05-16', '22:00:00', '2024-05-16 22:00:00', '2024-05-11 21:12:53', '2024-05-11 21:12:53'),
(7, 3, 'Est officia expedita omnis adipisci.', 'Ut ut ullam corrupti eveniet ut illo. Repellat voluptatibus cumque quis nisi et. Pariatur voluptatum et dolores soluta nihil voluptatem doloribus. Repellat consequatur doloremque aliquam et aliquam itaque ut. Enim blanditiis labore aut quidem cum dolores.', '2024-05-16', '21:00:00', '2024-05-16 21:00:00', '2024-05-11 21:12:53', '2024-05-11 21:12:53'),
(8, 3, 'Cumque et sunt eius iure voluptatem officia.', 'Nobis voluptatum perspiciatis omnis porro sed atque maxime placeat. Quae eveniet ex eveniet minima. Vel dolor et illum eius est omnis similique.', '2024-05-16', '20:00:00', '2024-05-16 20:00:00', '2024-05-11 21:12:53', '2024-05-11 21:12:53'),
(9, 3, 'Dolores odio dicta dolor vitae.', 'Est aut sequi ut qui. Consequatur et rerum facilis corrupti ratione odit. Impedit aut accusantium at esse. Repellendus laborum nemo ut.', '2024-05-16', '22:00:00', '2024-05-16 22:00:00', '2024-05-11 21:12:53', '2024-05-11 21:12:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_05_09_183907_create_events_table', 1),
(11, '2024_05_09_184246_create_registrations_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '2024-05-11 21:12:52', '$2y$12$5FLKBKASHXgr48QWQVuEgOq8i8TSlu9gzymBjva6/fDYVvsKXRw/C', 'djsfjsolkfsdfsdf', '2024-05-11 21:12:52', '2024-05-11 21:12:52'),
(2, 'john', 'john@eventor.com', '2024-05-11 21:12:52', '$2y$12$PJ3/gPHD.QKaZZPcxW5NMer9VKn68jPLdZaaI2Mf2iKn0OLj32b5i', 'djsfjsolkfsdfsdf', '2024-05-11 21:12:52', '2024-05-11 21:12:52'),
(3, 'Mark', 'mark@eventor.com', '2024-05-11 21:12:53', '$2y$12$fsvKK3ks.WnqhnABAbP6H.G8PSD394jKwD2SsfTbrhy5xtg73WeB.', 'djsfjsolkfsdfsdf', '2024-05-11 21:12:53', '2024-05-11 21:12:53');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Tablo için indeksler `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrations_user_id_foreign` (`user_id`),
  ADD KEY `registrations_event_id_foreign` (`event_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registrations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
