-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2024 pada 12.32
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hayati_laut_indonesia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `hayati`
--

CREATE TABLE `hayati` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `lokalitas` varchar(255) NOT NULL,
  `deskripsi` varchar(10000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hayati`
--

INSERT INTO `hayati` (`id`, `nama`, `jenis`, `lokalitas`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Penyu Belimbing (Dermochelys coriacea)', 'Penyu Laut', 'Papua Barat,Jambi,Aceh,papua', 'Penyu ini adalah penyu laut terbesar, mencapai panjang 2,7 meter dan berat 900 kilogram. Karapasnya fleksibel dengan tekstur mirip kulit belimbing.Spesies ini terancam punah akibat kehilangan habitat, polusi, dan perburuan ilegal.', NULL, '2024-06-09 02:57:34'),
(3, 'Badak laut (Rhinoceros unicornis)', 'Ikan', 'Indonesia dan Papua Nugini', 'Badak laut adalah ikan bertulang rawan yang hidup di dasar laut. Hewan ini memiliki tanduk tunggal di moncongnya dan hanya ditemukan di perairan Indonesia dan Papua Nugini. Badak laut terancam punah karena perburuan dan hilangnya habitat.', '2024-06-09 03:18:29', '2024-06-09 03:18:29'),
(4, 'Udang pistol (Alpheus californiensis)', 'udang', 'Indo-pasifik', 'Udang pistol adalah krustasea kecil yang hidup di terumbu karang. Hewan ini memiliki cakar besar yang dapat menghasilkan suara keras seperti pistol untuk menakut-nakuti predator atau menarik pasangan. Udang pistol hanya ditemukan di perairan Indo-Pasifik, termasuk Indonesia.', '2024-06-09 03:21:08', '2024-06-09 03:21:08'),
(5, 'Hiu karang tutul Indonesia (Hemiscyllium freycineti)', 'hiu bambu dalam keluarga Hemiscylliidae', 'perairan Indonesia, khususnya di daerah Papua Barat dan sekitarnya', 'Hiu karang tutul Indonesia (Hemiscyllium freycineti) adalah hiu bambu kecil yang endemik di perairan Papua Barat. Dikenal dengan pola bintik-bintik di tubuhnya, hiu ini biasanya hidup di perairan dangkal dan terumbu karang. Mereka menggunakan siripnya untuk \"berjalan\" di dasar laut dan aktif pada malam hari mencari makanan seperti invertebrata kecil dan ikan kecil. Hiu karang tutul penting bagi ekosistem terumbu karang dan merupakan daya tarik bagi penyelam.', '2024-06-09 03:23:36', '2024-06-09 03:23:36'),
(6, 'Ikan gobi bersirip panjang (Eviota infulata)', 'ikan gobi dalam keluarga Gobiidae', 'di perairan tropis Indo-Pasifik', 'Ikan gobi bersirip panjang (Eviota infulata) adalah spesies kecil dalam keluarga Gobiidae, biasanya hanya mencapai panjang beberapa sentimeter. Ciri khasnya adalah sirip punggung yang panjang dan tubuh transparan dengan warna-warna cerah atau corak yang mencolok. Mereka hidup di terumbu karang dan laguna, sering bersembunyi di celah-celah karang. Ikan ini berperan penting dalam ekosistem terumbu karang, membantu menjaga keseimbangan dengan memakan plankton dan invertebrata kecil.', '2024-06-09 03:26:07', '2024-06-09 03:26:07'),
(7, 'Ikan Raja Laut (Manta Birostris)', 'pari manta dari keluarga Mobulidae', 'di perairan tropis, subtropis', 'Ikan Raja Laut (Manta birostris) adalah spesies pari manta terbesar, dengan lebar tubuh mencapai hingga 7 meter atau lebih. Mereka memiliki tubuh yang lebar dan berbentuk seperti berlian, dengan dua sirip kepala yang menonjol di depan mulut yang lebar. Manta raksasa ini dikenal karena perilaku berenangnya yang anggun dan kemampuan melompat keluar dari air. Mereka memakan plankton dan ikan kecil, menyaring makanan dengan mulut lebar mereka saat berenang.', '2024-06-09 03:28:17', '2024-06-09 03:28:17'),
(8, 'Ikan Kuda Banggai (Hippocampus bargibanti)', 'kuda laut dari keluarga Syngnathidae', 'di perairan sekitar Indonesia,khususnya di Kepulauan Banggai di Sulawesi Tengah', 'Ikan Kuda Banggai (Hippocampus bargibanti) adalah kuda laut pygmy yang berukuran sangat kecil, sekitar 2 cm panjangnya, dan memiliki kemampuan kamuflase yang luar biasa, menyatu dengan karang laut tempat mereka hidup. Mereka ditemukan di perairan sekitar Kepulauan Banggai, Sulawesi Tengah, pada kedalaman 10 hingga 40 meter. Spesies ini hidup di karang gorgonian dan dikenal dengan pola tubuh yang unik, menyerupai karang tempat mereka bersembunyi.', '2024-06-09 03:29:57', '2024-06-09 03:29:57'),
(9, 'Katak-Pasir Tolitoli (Tolitolibranchus anomalus)', 'nudibranch atau siput laut yang termasuk dalam keluarga Polyceridae.', 'di perairan Tolitoli, Sulawesi Tengah, Indonesia', 'Katak-Pasir Tolitoli (Tolitolibranchus anomalus) adalah nudibranch yang ditemukan di perairan Tolitoli, Sulawesi Tengah. Mereka memiliki tubuh yang cerah dengan warna dan pola yang mencolok, yang seringkali berfungsi sebagai kamuflase atau peringatan bagi predator. Nudibranch ini hidup di terumbu karang dan area berpasir di sekitarnya, berperan penting dalam ekosistem laut sebagai pemangsa invertebrata kecil.', '2024-06-09 03:31:39', '2024-06-09 03:31:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_07_163025_create_hayatis_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `hayati`
--
ALTER TABLE `hayati`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hayati`
--
ALTER TABLE `hayati`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
