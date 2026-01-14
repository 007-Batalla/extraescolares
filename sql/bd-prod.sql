-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-03-2025 a las 01:51:27
-- Versión del servidor: 10.11.10-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u962795291_extraescolares`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activities`
--

INSERT INTO `activities` (`id`, `name`, `capacity`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Extraescolar de Taekwondo', 40, 6, '2024-05-02 11:34:31', '2024-09-06 10:21:41'),
(6, 'Extraescolar de Danza', 22, 8, '2024-05-02 14:18:53', '2024-09-06 11:05:18'),
(7, 'Extraescolar de Karate', 38, 9, '2024-05-02 14:20:14', '2024-09-06 11:05:40'),
(8, 'Extraescolar de Voleibol', 47, 11, '2024-05-02 14:26:22', '2024-09-06 11:06:04'),
(9, 'Extraescolar de Fútbol', 57, 10, '2024-05-02 14:27:06', '2024-09-06 12:30:58'),
(10, 'Extraescolar de Música', 40, 12, '2024-05-02 14:28:42', '2024-09-06 10:22:16'),
(11, 'Extraescolar de Basquetbol', 35, 11, '2024-05-02 14:31:21', '2024-09-06 10:22:44'),
(12, 'Extraescolar de Banda de Guerra', 8, 7, '2024-08-26 12:39:20', '2024-09-06 10:03:36'),
(13, 'Extraescolar de Círculo de Lectura', 29, 14, '2024-09-02 16:05:33', '2024-09-06 11:49:24'),
(14, 'Extraescolar de Manualidades', 30, 8, '2024-09-02 16:10:08', '2024-09-06 10:23:03'),
(15, 'Extraescolar de Escolta', 6, 11, '2024-09-02 16:17:41', '2024-09-06 10:21:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_period`
--

CREATE TABLE `activity_period` (
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `period_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activity_period`
--

INSERT INTO `activity_period` (`activity_id`, `period_id`) VALUES
(5, 2),
(5, 4),
(6, 2),
(6, 4),
(7, 2),
(7, 4),
(8, 2),
(8, 4),
(9, 2),
(9, 4),
(10, 2),
(10, 4),
(11, 2),
(11, 4),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(11, 5),
(10, 5),
(12, 2),
(12, 5),
(13, 5),
(14, 5),
(15, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_user`
--

CREATE TABLE `activity_user` (
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activity_user`
--

INSERT INTO `activity_user` (`activity_id`, `user_id`) VALUES
(5, 6),
(6, 8),
(7, 9),
(9, 10),
(8, 11),
(10, 12),
(11, 11),
(12, 13),
(13, 14),
(14, 8),
(15, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `careers`
--

INSERT INTO `careers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'IINF', '2024-04-11 20:39:12', '2024-05-27 11:43:50'),
(2, 'IAGR', '2024-04-17 10:54:05', '2024-05-27 11:44:30'),
(3, 'IADM', '2024-04-17 10:54:07', '2024-05-27 11:44:43'),
(4, 'IIND', '2024-04-17 10:54:34', '2024-05-27 11:44:58'),
(5, 'IBQM', '2024-05-02 13:51:46', '2024-05-27 11:45:15'),
(6, 'IENR', '2024-05-02 13:53:11', '2024-05-27 11:45:56'),
(7, 'IIEM', '2024-05-02 13:54:51', '2024-05-27 11:46:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_14_152731_create_careers_table', 1),
(6, '2024_02_14_153050_create_activities_table', 1),
(7, '2024_02_14_155918_create_periods_table', 1),
(8, '2024_02_14_155919_create_students_table', 1),
(9, '2024_03_17_201514_create_permission_tables', 1),
(10, '2024_08_29_103848_create_selectives_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 10),
(1, 'App\\Models\\User', 11),
(1, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periods`
--

CREATE TABLE `periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lapse` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `periods`
--

INSERT INTO `periods` (`id`, `lapse`, `created_at`, `updated_at`) VALUES
(2, 'Agosto 2023 - Junio 2024', '2024-04-11 20:39:12', '2024-05-27 11:47:56'),
(4, 'Agosto 2022 - Junio 2023', '2024-04-17 10:50:30', '2024-05-27 11:48:50'),
(5, 'Agosto 2024 - Junio 2025', '2024-08-14 09:01:02', '2024-08-14 09:01:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create student', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(2, 'edit student', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(3, 'delete student', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(4, 'validate student', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(5, 'create role', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(6, 'edit role', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(7, 'delete role', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(8, 'create resource', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(9, 'edit resource', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(10, 'delete resource', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(11, 'create teacher', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(12, 'edit teacher', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(13, 'delete teacher', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'teacher', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12'),
(2, 'admin', 'web', '2024-04-11 20:39:12', '2024-04-11 20:39:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 1),
(3, 1),
(12, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `selectives`
--

CREATE TABLE `selectives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `career_id` bigint(20) UNSIGNED NOT NULL,
  `university_enrollment` varchar(255) DEFAULT NULL,
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `selectives`
--

INSERT INTO `selectives` (`id`, `name`, `gender`, `career_id`, `university_enrollment`, `activity_id`, `created_at`, `updated_at`) VALUES
(2, 'Leonel Fabían Trejo Pérez', 'm', 1, '22E30429', 12, '2024-09-18 15:27:16', '2024-09-18 15:27:16'),
(3, 'Jesús Manuel Sánchez Alfonso', 'm', 1, '22E30423', 12, '2024-09-18 15:27:59', '2024-09-18 15:27:59'),
(4, 'Ruth Guadalupe Juárez Pérez', 'f', 1, '22E30402', 12, '2024-09-18 15:28:32', '2024-09-18 15:28:32'),
(5, 'Lázaro Manuel Cornelio Navarro', 'm', 1, '22E30383', 12, '2024-09-18 15:46:55', '2024-09-18 15:46:55'),
(6, 'Felíx Arturo Arcos Olán', 'm', 7, NULL, 12, '2024-10-11 14:49:39', '2024-10-11 14:49:39'),
(7, 'Mariano Jesús Meneses Navarro', 'm', 3, NULL, 12, '2024-10-11 14:50:23', '2024-10-11 14:50:23'),
(8, 'José Armando de la Cruz Alvarado', 'm', 7, NULL, 12, '2024-10-11 14:50:45', '2024-10-11 14:50:45'),
(9, 'Isaí Antonio Abálos Guzmán', 'm', 4, NULL, 12, '2024-10-11 14:51:15', '2024-10-11 14:51:15'),
(10, 'Pedro Ignacio Notario Mendoza', 'm', 7, NULL, 12, '2024-10-11 14:51:41', '2024-10-11 14:51:41'),
(11, 'Avimelet de la Cruz Rodríguez', 'm', 7, NULL, 12, '2024-10-11 14:52:11', '2024-10-11 14:52:11'),
(12, 'Amisadai Gómez Gómez', 'f', 3, NULL, 12, '2024-10-11 14:52:31', '2024-10-11 14:52:31'),
(13, 'José Alberto Hernández Pérez', 'm', 6, NULL, 12, '2024-10-11 14:53:01', '2024-10-11 14:53:01'),
(14, 'Leydi del Carmen Lara Arias', 'f', 2, NULL, 12, '2024-10-11 14:55:48', '2024-10-11 14:55:48'),
(15, 'Gener Jaseth', 'm', 4, '21E30067', 12, '2024-10-11 14:58:00', '2024-10-11 14:58:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inscription_code` varchar(255) NOT NULL,
  `university_enrollment` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `career_id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `period_id` bigint(20) UNSIGNED NOT NULL,
  `illnes` varchar(255) NOT NULL,
  `observations` longtext DEFAULT NULL,
  `grades` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{"first_criteria":"0","second_criteria":"0","third_criteria":"0","fourth_criteria":"0","fifth_criteria":"0","sixth_criteria":"0","seventh_criteria":"0"}' CHECK (json_valid(`grades`)),
  `first_validation` tinyint(1) NOT NULL DEFAULT 0,
  `second_validation` tinyint(1) NOT NULL DEFAULT 0,
  `validated_by` varchar(255) DEFAULT NULL,
  `validated_at` timestamp NULL DEFAULT NULL,
  `validation_token` varchar(32) DEFAULT NULL,
  `certificate_downloaded` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `inscription_code`, `university_enrollment`, `name`, `gender`, `career_id`, `activity_id`, `period_id`, `illnes`, `observations`, `grades`, `first_validation`, `second_validation`, `validated_by`, `validated_at`, `validation_token`, `certificate_downloaded`, `created_at`, `updated_at`) VALUES
(8, '070014', '23E30249', 'Marissa Domínguez Perera ', 'f', 3, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 11:04:46', 'UDMSxObshDl381bhNrdnthRGi4ECP2Iw', 1, '2024-05-03 11:26:36', '2024-08-12 11:04:58'),
(9, '070001', '23E30269', 'Viviana Palomeque Cárdenas ', 'f', 3, 6, 4, 'Ninguno', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:08:21', 'wov3CsmbZb4WNkhKLPSPUU8C8U1hQuE3', 1, '2024-05-03 11:47:38', '2024-10-17 08:32:02'),
(10, '070009', '23E30281', 'Marisol Guadalupe Vega Hernández ', 'f', 3, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"3\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:19:44', 'Cw3saGyUCu5r2g4A0xPAZzmkZ8ijYKct', 1, '2024-05-03 12:03:27', '2024-09-18 12:57:29'),
(11, '070062', '23E30362', 'Yaretzi Tahití López Cuevas ', 'f', 3, 6, 2, 'Ninguno', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:16:10', 'bEFOchvJUCWUsfSea2ZDj7MbDROExdba', 1, '2024-05-03 12:07:12', '2024-08-21 11:17:55'),
(17, '040006', '23E30021', 'Angel Gabriel Alvarez Guírào ', 'm', 4, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-06-19 11:53:26', '2tspOibTPbvUrZZhJ4bma6B67dSfCZpE', 1, '2024-05-03 21:18:26', '2024-10-01 17:22:12'),
(18, '040021', '23E30038', 'Karol Guadalupe García Pérez ', 'f', 4, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Rafael May Segura', '2024-08-13 11:10:48', 'MXz60DYf2gblogo45XBbPm9DcP2cF4Pj', 1, '2024-05-05 13:55:05', '2024-08-13 11:11:34'),
(19, '050026', '23E30346', 'Simón Alberto vazquez Alvarez ', 'm', 7, 9, 2, 'Ninguna enfermedad ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-19 12:09:09', 'BesC56Gf52qaylVHxHNgZiRyhRwVXUb2', 0, '2024-05-06 10:44:27', '2024-08-19 13:13:33'),
(21, '050047', '23E30144', 'Andrés Amauri Torres Valencia ', 'm', 7, 9, 2, 'No.', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:33:32', 'SsEo2x8E63fi4dNZxkz8HcrKwyZod5Ny', 1, '2024-05-06 10:54:15', '2024-11-25 17:57:49'),
(22, '050057', '23E30104', 'Manuel Lorenzo Castellanos García ', 'm', 7, 9, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"2\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:33:50', 'dOGFtxJLZPVb6CXVqfxEts21CN78QWZN', 0, '2024-05-06 11:04:43', '2024-08-19 13:16:24'),
(23, '080032', '23E30295', 'Jahir Espinoza Hernández ', 'm', 1, 9, 2, 'ninfuna', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:34:20', 'dZzDJxd4tCw3SCADpDVfTZlma0efb2wA', 1, '2024-05-06 11:18:15', '2024-09-11 12:13:19'),
(24, '100014', '23E30330', 'Efrey García Cruz ', 'm', 6, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:34:29', 'STJBdjScx3yQ7jccQCxs0gnrVoKZE8Ol', 1, '2024-05-06 11:25:01', '2024-08-19 13:21:29'),
(25, '050013', '23E30106', 'Johnny Dorian Cornelio Martínez ', 'm', 7, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:34:40', '1WR4fyUDOa3lR8msl6T1E62dyCrCy3zF', 0, '2024-05-06 11:28:54', '2024-08-19 13:23:42'),
(27, '080003', '23E30319', 'Erick Charly Yahir Pérez Mendoza ', 'm', 1, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:34:55', 'h5cfXIC5I1mgIKs2stQxoSRvfrdaolVR', 1, '2024-05-06 12:20:50', '2024-09-14 20:33:49'),
(28, '080046', '23E30294', 'Jesús  Alonso Escolástico Aguilera', 'm', 1, 9, 2, 'Ninguna', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"4\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:35:59', 'qBV2WFMMxddQF6hM82tNC15SrFgCFQoC', 1, '2024-05-06 12:29:57', '2024-09-09 07:49:53'),
(29, '050029', '23E30097', 'José Alexander Alvarado Bocanegra', 'm', 7, 9, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:38:08', '6MPBLVtMq2PBBMw3OVNkVFAp0pCMTheB', 1, '2024-05-06 14:54:51', '2024-11-16 20:18:17'),
(30, '070029', '23E30257', 'Victor Gutiérrez Jiménez ', 'm', 3, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"2\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:39:55', 'i7czE13lQMhwJQ1OxzfrYjcVc8F2cOsC', 1, '2024-05-06 15:54:11', '2024-08-22 07:11:53'),
(31, '050010', '23E30100', 'Efrain Beltruy Villarreal ', 'm', 7, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:56:21', 'ioNqX07jBxjLDQrcrwh6ugU97PPIVmOs', 1, '2024-05-06 15:59:59', '2024-09-07 10:23:19'),
(32, '060069', '23E30215', 'Erik Enmanuel Pérez Sánchez ', 'm', 2, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:56:26', 'H39SyiuGgs6GnYG7gJ0gpUaSiXE2Lq5u', 0, '2024-05-06 16:21:11', '2024-06-23 13:25:13'),
(33, '040007', '23E30046', 'Giovanny Guzmán Velasco ', 'm', 4, 9, 4, 'Ninguno ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 20:58:13', '77gCKnweFJC5BSzmZmNUEGTb9icpiEwW', 1, '2024-05-06 16:31:36', '2024-08-15 12:56:26'),
(38, '070058', '23E30241', 'Angel Miguel Arjona Velazco ', 'm', 3, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 21:01:32', 'pcRDyFWbix89nN3gXseF3GlI86LN4Q9p', 1, '2024-05-07 09:39:44', '2024-08-22 07:09:10'),
(43, '060026', '23E30217', 'Yamileth Pérez Sánchez  ', 'f', 2, 5, 2, 'ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:20:42', 'ukeTUTtlOVI7IbEM7k3nBVldTjKPFzbr', 1, '2024-05-07 11:31:35', '2024-08-21 13:39:21'),
(44, '070055', '23E30265', 'Dulce María López Reyes', 'f', 3, 5, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:28:40', 'blQSfG5zxrVwjJf3eUzVExDnNDs31QrX', 1, '2024-05-07 11:33:54', '2024-08-21 11:14:38'),
(47, '070012', '23E30238', 'Brayan Eduardo Alvarado de la Cruz ', 'm', 3, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 11:14:03', 'KlHlfSa1ma3g9KgWq4413dQydSPpQo3J', 1, '2024-05-07 14:10:54', '2024-09-04 12:48:53'),
(48, '070021', '23E30277', 'Angel Tamayo Tamayo', 'm', 3, 7, 2, 'no', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Roberto Méndez Velázquez', '2024-09-02 15:37:24', 'jKt8GtXfztNodXAoEuDoAXiL9Atb0P40', 1, '2024-05-07 14:52:36', '2024-09-12 11:49:24'),
(50, '040056', '23E30312', 'José Neftali Molina Pérez', 'm', 1, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Rafael May Segura', '2024-08-13 11:16:49', 'n8qcH6q7JUEWdDXa83vrS7xtwnqiZqaL', 1, '2024-05-07 14:54:41', '2024-09-11 15:45:25'),
(52, '060044', '23E30200', 'Miguel Andres Mazariego García', 'm', 2, 10, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 11:18:59', 'eY9IPmkGiXdJ6bjb94kIQibONLSgcil2', 1, '2024-05-07 14:56:50', '2024-10-01 17:24:54'),
(56, '060028', '23E30214', 'Edgar Pérez Sánchez ', 'm', 2, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 21:01:41', 'y15SM2AEgK5Ve2HABnchdAlKs2q5GzXD', 1, '2024-05-07 15:01:11', '2024-08-21 13:36:30'),
(59, '060005', '23E30194', 'Leydi del Carmen Lara Arias', 'f', 2, 8, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:01:27', 'AHORRFCh1Lg9KfqeUsg8Pih8g8ZrtWxs', 1, '2024-05-07 15:05:40', '2024-08-13 16:54:48'),
(60, '060063', '23E30158', 'Brayan del Carmen Asencio Rueda ', 'm', 2, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:05:31', 'XvSOZflZhpfx2rtJvX4dORWtkmivtpVc', 1, '2024-05-07 15:06:11', '2024-08-17 16:24:19'),
(62, '080028', '23E30297', 'Jesús Antonio García Calcáneo ', 'm', 1, 8, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:08:18', 'Fhc6l51BHhY57spRPax5Tnh1w0EkswEG', 1, '2024-05-07 15:08:04', '2024-11-19 08:54:50'),
(63, '040074', '23E30052', 'Anadely López López ', 'f', 4, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:12:36', 'bNxpCyHYDgfe2lOigURkEEelMiVGjdiT', 1, '2024-05-07 15:08:46', '2024-08-13 15:56:10'),
(64, '070043', '23E30272', 'Kevin Antonio Pérez cruz ', 'm', 3, 8, 4, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:13:09', '09FauSfWHmxvHvyPIyrjTMjDM2Kwz6pn', 1, '2024-05-07 15:08:54', '2024-08-13 15:51:57'),
(65, '080050', '23E30283', 'Angel Acosta Villa ', 'm', 1, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:13:52', 'fsGHf8c8zrqm5ECSNDcZW8UTuFFExBBE', 1, '2024-05-07 15:09:48', '2024-08-29 15:50:33'),
(66, '070024', '23E30278', 'Jorge Andrés Tilán Domínguez ', 'm', 3, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:15:19', 'PLBe7lCnd1XveCUTqBlg6d1jg0Mh2zMI', 1, '2024-05-07 15:10:12', '2024-08-13 16:52:26'),
(67, '040017', '23E30073', 'Evelyn Ramos Córdova ', 'f', 4, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:15:50', 'fE0rIRNZnXcqM4CVo0DmTFYXTmOWwRC2', 1, '2024-05-07 15:11:20', '2024-08-13 17:02:40'),
(68, '040070', '23E30026', 'Luis Zenón Cruz Sánchez ', 'm', 4, 11, 2, 'No, no parezco de ninguna enfermedad ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:29:05', 'XnLCqaFOwTlQ8OGqvYfCjQPdBGZpjPRF', 1, '2024-05-07 15:11:23', '2024-09-09 07:54:59'),
(70, '060050', '23E30184', 'Jesús Faustino Gonzaléz Pascual ', 'm', 2, 8, 2, 'Nada', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:16:16', 'cuH3ZwSFFaJzK2mvbWoRzER2TY4CEErO', 1, '2024-05-07 15:17:00', '2024-08-13 17:12:49'),
(71, '060033', '23E30163', 'José antonio Castellanos Hernández', 'm', 2, 8, 2, 'No.', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:16:46', 'LSj9aIAjZ2kYH0LPRZRqgJjtKH1oK43w', 1, '2024-05-07 15:18:01', '2024-08-29 15:21:51'),
(73, '080052', '23E30291', 'Daniel Castellanos Escolástico ', 'm', 1, 11, 2, 'no', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:32:43', 'XtPQPSGKxy7zwzYNF1mcwKdxfjCuLjT4', 1, '2024-05-07 15:20:45', '2024-09-09 07:42:04'),
(74, '070048', '23E30235', 'Devora sugey acosta olmedo', 'f', 3, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 11:21:48', 'VdCN1aMwRp84g5sFdWbUflMVlMdROzK6', 1, '2024-05-07 15:22:11', '2024-08-22 06:59:12'),
(75, '100008', '23E30335', 'Jesús Manuel Ramírez Vázquez ', 'm', 6, 10, 2, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 1, 1, 'Rafael May Segura', '2024-09-09 12:16:10', 'J7klYUQozXMho8JhooWfsbXxtFsEluz5', 0, '2024-05-07 15:25:11', '2024-09-09 12:16:10'),
(76, '80052', NULL, 'Daniel Castellanos Escolástico ', 'm', 1, 11, 2, 'NO', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-05-07 15:26:15', '2024-05-07 15:26:15'),
(77, '080044', '23E30324', 'Rosario Sánchez Álvarez ', 'm', 1, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:21:58', 'dmxILHEiQVRaGctms6UZmu5gmKQIDkDW', 1, '2024-05-07 15:29:43', '2024-08-26 07:57:07'),
(80, '040072', '23E30037', 'Miguel Ángel García De La Cruz', 'm', 4, 8, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:25:54', 'zKVTTVWqFO0xFSE3dIVu40UTfvGhM8S0', 0, '2024-05-07 15:37:11', '2024-08-13 15:26:07'),
(82, '070017', '23E30244', 'David Arturo Cárdenas Ferrer ', 'm', 3, 8, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:26:30', 'LHrP12705LcJRe4tysb389atyzx8eyo1', 1, '2024-05-07 15:39:39', '2024-08-13 15:54:21'),
(83, '050011', '23E30117', 'Abel Eduardo Hernandez Melo ', 'm', 7, 11, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:34:27', 'lvHi1pOYyiTabMf7DUaZj52GQhnV7EIu', 1, '2024-05-07 15:42:09', '2024-09-09 13:20:16'),
(85, '080020', '23E30313', 'Paola Alejandra Morales Ríos ', 'f', 1, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 11:24:53', 'NEopwclpFiAlctDMyRRsXFqmtZz6hmzS', 1, '2024-05-07 15:52:02', '2024-10-01 17:27:58'),
(87, '080004', '23E30287', 'Estrella Berenice Alvarez Madrigal ', 'f', 1, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:27:00', 'LEqa3BtU2cEXcQcWdZC1WwaaIbkg1saY', 0, '2024-05-07 16:01:19', '2024-08-13 15:27:12'),
(91, '070023', '23E30270', 'Héctor Manuel Pérez Álvarez ', 'm', 3, 8, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:27:30', 'ShfvcAA0yXGZTLKkyjFNGHV0RbWIwMgr', 1, '2024-05-07 17:05:57', '2024-08-22 07:05:59'),
(95, '080034', '23E30320', 'Rubicel Ennahi Ramírez López ', 'm', 1, 5, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:49:00', 'smMiVx4bVCCpleV6HkEclHH029PfgxGi', 1, '2024-05-07 19:04:20', '2024-10-14 13:47:20'),
(96, '080051', '23E30317', 'Brandon Osvaldo Pariz Giorgana', 'm', 1, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-09-22 17:27:28', 'JzA48DtiH8v3ACibLWjc5LyjsOMYkTcA', 0, '2024-05-07 19:19:26', '2024-09-22 17:27:28'),
(97, '060074', '23E30229', 'Angel Ricardo Uco Hernández ', 'm', 2, 9, 2, 'Ningúna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 21:06:34', 'K7kMxrllAnGJ1omzStlg66KWX0twZx4h', 1, '2024-05-07 19:48:57', '2024-08-29 11:42:02'),
(98, '060036', '23E30172', 'Felipe de Jesús de la Cruz Valencia ', 'm', 2, 7, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"2\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Roberto Méndez Velázquez', '2024-09-02 15:39:37', 'KBBN9oWopwCEQA5vHXbAYH3tjC1OVpcU', 1, '2024-05-07 19:55:43', '2024-09-08 16:25:00'),
(99, '060043', '23E30155', 'Isaac Arias Méndez ', 'm', 2, 7, 2, 'No', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, NULL, NULL, NULL, 0, '2024-05-07 19:58:35', '2024-09-02 15:41:24'),
(101, '070019', '23E30271', 'Jonathan Pérez Cornelio ', 'm', 3, 9, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 21:07:48', 'Mq7Mv6GIvTYiPoYSFcx9LzbGjG20fOmf', 1, '2024-05-07 20:06:24', '2024-08-22 07:09:08'),
(102, '100010', '23E30331', 'KARLA NALLELI HERNÁNDEZ SÁNCHEZ', 'f', 6, 7, 2, 'Si', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"1\",\"third_criteria\":\"2\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, NULL, NULL, NULL, 0, '2024-05-07 20:06:50', '2024-09-02 15:43:42'),
(103, '080006', '23E30314', 'Lourdes del Carmen Noriega Nárez ', 'f', 1, 7, 2, 'Discapacidad visual', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Roberto Méndez Velázquez', '2024-09-02 15:45:50', '4d3WRkpmUjrXvQ8dvToBBxvPjQdFc90C', 1, '2024-05-07 20:10:48', '2024-09-12 11:13:36'),
(105, '070038', '23E30251', 'Yireh Stephanie Figueroa Hernández ', 'f', 3, 7, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, NULL, NULL, NULL, 0, '2024-05-07 20:20:02', '2024-09-02 15:47:04'),
(106, '070039', '23E30240', 'Cristofer Angeles Javier ', 'm', 3, 7, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, NULL, NULL, NULL, 0, '2024-05-07 20:20:54', '2024-09-02 15:48:57'),
(107, '070046', '23E30239', 'Lucero Alvarez Alvarez ', 'f', 3, 7, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, NULL, NULL, NULL, 0, '2024-05-07 20:22:29', '2024-09-02 15:51:31'),
(108, '050035', '23E30132', 'Brayan Alexander Pérez Cruz ', 'm', 7, 7, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, NULL, NULL, NULL, 0, '2024-05-07 20:24:17', '2024-09-03 12:30:03'),
(110, '080047', '23E30325', 'Katia Yazmín Sánchez Castellanos ', 'f', 1, 7, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, NULL, NULL, NULL, 0, '2024-05-07 20:57:47', '2024-09-02 16:29:21'),
(111, '070031', '23E30258', 'Angel Emanuel Gutiérrez Méndez', 'm', 3, 10, 4, 'no', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Rafael May Segura', '2024-08-13 11:27:43', 'BdTeUj97k3S0E98LgVOEyHnoVPTHWqcZ', 1, '2024-05-07 21:00:14', '2024-08-22 07:10:50'),
(112, '060067', '23E30187', 'Henrri Alexander Hernández Flores ', 'm', 2, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 11:30:08', 'ZdqIDGU3IGRKc0AhAEDi2mc3SNW91A5F', 1, '2024-05-07 22:04:06', '2024-08-22 09:17:40'),
(113, '050030', '23E30209', 'Alexis Pérez Aguilar ', 'm', 2, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:28:06', 'RyZODZRJxHXkL9WYHq4gohsBxvrfI1y7', 0, '2024-05-07 22:16:38', '2024-08-13 15:28:19'),
(114, '070032', '23E30243', 'Michel del Carmen Bocanegra Perera ', 'f', 3, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:28:35', 'MhHGtameB0L6Acv4Y3jdGEfhE4TDBSLu', 1, '2024-05-07 23:19:09', '2024-08-13 16:54:04'),
(115, '060068', NULL, 'José Andrés De La Cruz Ventura ', 'm', 2, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-05-08 00:41:50', '2024-05-08 00:41:50'),
(116, '050023', '23E30130', 'Ervin Muñoz Rodríguez ', 'm', 7, 7, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, 'Roberto Méndez Velázquez', '2024-09-02 16:32:00', 'iMmcjtFl804JMDSqq7K0iXUDWkQqfVQG', 0, '2024-05-08 06:18:10', '2024-09-02 16:32:12'),
(117, '080008', '23E30289', 'Diego Jesús aquíno flores ', 'm', 1, 7, 2, 'Ninguna', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Roberto Méndez Velázquez', '2024-09-02 16:37:17', 'fxjywNPpIzxHdJmXsXro632TUASYbJnQ', 1, '2024-05-08 07:15:14', '2024-09-12 11:22:51'),
(118, '070037', '23E30340', 'Adrian Osorio Gonzalez ', 'm', 3, 7, 2, 'No', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, '2024-05-08 09:52:47', '2024-09-02 16:43:10'),
(119, '050012', '23E30109', 'Eduardo De la Cruz Ramírez', 'm', 7, 7, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"1\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, NULL, NULL, NULL, 0, '2024-05-08 09:56:05', '2024-09-02 16:45:53'),
(120, '070011', '23E30262', 'Jennifer Itzel Javier Morfinez ', 'f', 3, 8, 2, 'No ninguna .', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-27 15:17:37', 'gs4g5G5SOm1KZrtekGaDL9ZB0zePyrkV', 1, '2024-05-08 10:25:00', '2024-08-27 15:38:34'),
(121, '070034', '23E30259', 'Yetzia Dayana Hernández Arias  ', 'f', 3, 5, 2, 'NO', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:30:10', '4ddirZJ2tca9RGQy8TJmubLWnDhribEV', 1, '2024-05-08 10:38:46', '2024-08-21 10:46:46'),
(122, '070047', '23E30250', 'Bethzy Alejandra Estrada Moreno ', 'f', 3, 5, 2, 'No, ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:31:32', 'UEPQDT4BJuH8TsRwCKOLn7N2Lo0Kq9bU', 1, '2024-05-08 10:59:56', '2024-08-21 10:50:57'),
(123, '070036', '23E30261', 'Luis Armando Hernández Villarreal ', 'm', 3, 5, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:33:30', '5SLL2ROXuJ5bcMDt2UfUFcfOZWvJhNY3', 1, '2024-05-08 11:00:05', '2024-08-28 11:52:51'),
(124, '010003', '23E30003', 'Cecilia Cristell Castellano Díaz ', 'f', 5, 8, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:29:13', 'GECKP8kKtuxx8mVh5b6RxLlnCdf49S3p', 1, '2024-05-08 11:40:18', '2024-08-13 17:17:53'),
(131, '777777', '23E30152', 'Diego Alberto Almeida López ', 'm', 2, 5, 2, 'Ningúna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 1, 0, 'Ponciano García Castellanos', '2024-08-21 09:32:54', 'XZvtlAqDpW9N1dmPMwMStrURXEiaDKN6', 0, '2024-05-08 11:46:09', '2024-08-21 09:32:54'),
(137, '050025', '23E30131', 'Misael Rodrigo palomeque Landero ', 'm', 7, 7, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, 'Roberto Méndez Velázquez', '2024-09-02 16:48:15', 'WrSUJ9FxkbSrTByLUx0qyUUHmgggKtLv', 0, '2024-05-08 11:55:04', '2024-09-02 16:48:29'),
(138, '050058', '23E30148', 'Claribel Vidal Junco ', 'f', 7, 7, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"1\",\"third_criteria\":\"2\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"1\"}', 1, 1, 'Roberto Méndez Velázquez', '2024-09-02 16:50:13', 'XDOkfFj2TjvnY3nKRqIMkD6S6y36EgeA', 1, '2024-05-08 12:00:06', '2024-09-03 12:27:49'),
(139, '654321', '23E30063', 'Luis Fernando Moreno Rivera ', 'm', 4, 5, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 1, 0, 'Ponciano García Castellanos', '2024-08-14 11:44:26', 'lfrj0jqNZB4OatxVeFQcBypGVFvzMMwL', 0, '2024-05-08 12:06:05', '2024-08-14 11:44:26'),
(142, '050001', '23E30139', 'Miguel Alfonso Rivas Pérez ', 'm', 7, 11, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:36:04', 'HXKHGT3HWdhqVGyxii5gNklCHF6nqoyM', 1, '2024-05-08 12:39:34', '2024-09-09 13:00:02'),
(143, '050009', '23E30133', 'Jesús Gabriel Pérez López ', 'm', 7, 11, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:37:55', 'O2bL3oiRyX0I7e8p836MMhqwnPifwUqJ', 1, '2024-05-08 12:41:51', '2024-09-09 13:01:37'),
(144, '050027', '23E30136', 'Rogelio Peñate Hernandez ', 'm', 7, 11, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-10 13:42:33', '9kFltwWbVGsaC8cpqHmlHKh8cSdq6L9I', 1, '2024-05-08 12:47:03', '2024-09-10 13:57:56'),
(145, '060071', '23E30177', 'Yerania Cristhell Fonseca Narez ', 'f', 2, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:30:05', 'yNeOISOieu9UdUpAimvMm4dcWc0T9SCY', 1, '2024-05-08 12:47:33', '2024-08-13 17:07:55'),
(146, '080019', '23E30328', 'Evelin Arleth Zenteno Gómez', 'f', 1, 5, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:50:15', 'qmdhOusN6LuV3mNuq3c5bRLKDEsxstNv', 0, '2024-05-08 12:47:54', '2024-08-14 11:50:44'),
(147, '230523', '23E30311', 'Aday Méndez Villarreal ', 'f', 1, 5, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:51:23', 'D3ke9vwc5Vsb0FkwUdV4PN8OnFlCsbz1', 0, '2024-05-08 12:52:41', '2024-08-14 11:51:43'),
(149, '198320', '23E30201', 'Kareli Méndez Mollinedo', 'f', 2, 5, 2, 'Ninguno ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-21 09:35:05', 'C8EjK0vwj2nmgL7B0KO1EWWWMVAjPdeS', 1, '2024-05-08 13:25:14', '2024-08-21 13:40:19'),
(150, '673979', '23E30288', 'Luis Felipe Álvarez Mayo ', 'm', 1, 5, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:52:33', 'gXlJNed9cjcbywOzAc1Z1foCRmznOsKX', 0, '2024-05-08 14:24:27', '2024-08-14 11:54:40'),
(151, '666666', '23E30040', 'Eliazar Gómez Gómez ', 'm', 4, 5, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, NULL, NULL, NULL, 0, '2024-05-08 14:31:03', '2024-08-14 11:46:34'),
(152, '874526', '23E30363', 'Ofir López López ', 'f', 2, 5, 2, 'ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-21 09:36:02', '63m6EwBNVH9dkrJi5RqYENGdvqo6adn8', 1, '2024-05-08 14:59:41', '2024-08-21 13:50:18'),
(154, '103624', '23E30169', 'Bella Angelica Cruz Villegas ', 'f', 2, 5, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-21 09:37:06', 'PailO1yW0loGs3MUje2hCav4pAEhOCIV', 1, '2024-05-08 15:35:02', '2024-08-21 18:35:36'),
(156, '050048', '23E30125', 'Brayan Marin Espinosa ', 'm', 7, 5, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:40:10', 'DlOcNCxxyPfEXNjkR9JEuvdr0lKXjRJg', 1, '2024-05-08 15:41:21', '2024-08-22 20:58:58'),
(157, '198102', '23E30202', 'Ernesto Mendoza Álvarez ', 'm', 2, 5, 2, 'No ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-21 09:38:42', 'DSVbueOfFcfHQiMAJ9Sm5vbVv3a4soyF', 1, '2024-05-08 16:05:59', '2024-09-18 09:26:18'),
(159, '121219', '23E30162', 'Daniela Guadalupe Carrera González ', 'f', 2, 5, 2, 'Ni', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-21 09:39:51', '3pkUm2V86GoYFiCKN4e5Hufnk2DazCkq', 1, '2024-05-08 16:33:01', '2024-08-21 16:32:56'),
(160, '070045', '23E30266', 'María Guadalupe Maldonado Ordoñez ', 'f', 3, 6, 2, 'No', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:17:24', 'RH5NguwiG6cpEZNRLN1odLxlTIKhAYxF', 1, '2024-05-08 16:33:50', '2024-08-19 17:04:42'),
(161, '050046', '23E30147', 'José Antonio Vázquez Chavarria', 'm', 7, 8, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:32:54', 'GHecVaBMn16RY2DxnwHQmpuZ61mbOjyb', 1, '2024-05-08 16:39:53', '2024-08-19 17:05:20'),
(162, '040038', '23E30042', 'Ermelinda Gómez Montejo ', 'f', 4, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 11:32:23', 'QAS9nKQoJvvQslzQ03k69VABQnz1gaez', 1, '2024-05-08 17:24:46', '2024-10-01 17:29:54'),
(163, '040016', '23E30083', 'Celeste Santos González ', 'f', 4, 5, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Migda Leydi Sánchez Calix', '2024-11-19 15:50:18', 'l7LvVFA8hrwCUcLR3HHAZVBd1NsIujDg', 1, '2024-05-08 17:39:39', '2024-11-19 15:53:40'),
(166, '040082', '23E30028', 'Miguel Ángel Díaz Castellanos ', 'm', 4, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:18:43', 'BKKAQQnzooReJjcoRl6hoSr1m27fNJvR', 0, '2024-05-08 21:05:58', '2024-08-19 09:38:28'),
(171, '060024', '23E30221', 'Nallely Melani Ramírez Hernández ', 'f', 2, 8, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:34:27', 's98hDduZ1v9spVJBehIKDYK9z75VGb1F', 1, '2024-05-09 10:26:13', '2024-08-13 17:06:01'),
(172, '070042', '23E30282', 'Alex Velasco Abelino', 'm', 3, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-22 21:08:45', 'o85n5IaqWhxZhUqzIrAfmeFXly8WB84T', 1, '2024-05-09 10:54:41', '2024-08-22 07:07:16'),
(175, '070003', '23E30253', 'Lorenzo Guillermo Gómez Gómez ', 'm', 3, 8, 2, 'ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:34:49', '7KKHO0X6ClfJimUf1kOBZcrlpdMVqer8', 1, '2024-05-09 18:42:18', '2024-08-13 17:20:37'),
(182, '010015', '23E30002', 'Mía del Carmen Caraveo Palomeque ', 'f', 5, 8, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:35:18', '9HKOq1oGPfDJc0gWShQyMzhlQ3AZy23P', 0, '2024-05-11 14:27:12', '2024-08-13 15:35:31'),
(183, '080021', '23E30284', 'Toni Emanuel Alfaro Domínguez ', 'm', 1, 5, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Ponciano García Castellanos', '2024-08-14 11:53:42', 'PIXvkBOQwInSEnG6Nj9kNyiwdkCvpl1x', 1, '2024-05-12 07:39:04', '2024-09-18 19:06:44'),
(184, '050041', '23E30126', 'Jorge de los santos Martínez lázaro ', 'm', 7, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:32:44', '5uisggMUA2L7hPxWEbPKX88ZwySGysBG', 0, '2024-05-13 11:24:40', '2024-10-01 17:30:43'),
(186, '050015', '23E30129', 'Javier Moreno Hernández  ', 'm', 7, 9, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:17:17', 'a6JO6dLce90XCXIp1BsbiO3f8B7vvLkn', 0, '2024-05-14 06:58:44', '2024-08-19 13:38:29'),
(188, '070049', '23E30280', 'Eduardo Vázquez mazariego ', 'm', 3, 9, 2, 'No ', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"2\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:25:23', 'FJoKT2SwJKuUaj2dGZ7tk2S7SYQUwLrA', 1, '2024-05-14 18:16:09', '2024-08-21 11:18:53'),
(190, '040047', '23E30071', 'Alejandro Príego Alejo ', 'm', 4, 10, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:34:28', 'YrcZe38n8K3zhnEbClpPr9QaULZbMmRG', 1, '2024-05-16 11:58:36', '2024-10-03 05:48:49'),
(192, '40017', '23E30025', 'Maria Fernanda Cruz Arias ', 'f', 4, 8, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:35:50', '2inxOhci0O3ur7SIRMlmNHR6VcnxqeUJ', 1, '2024-05-17 16:00:38', '2024-08-13 17:34:09'),
(193, '080014', '23E30305', 'Leonel López Pérez ', 'm', 1, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:36:00', '8sqiisMvWJ8MrL6XPPompsAQfQ2JyISW', 0, '2024-05-17 17:37:43', '2024-08-13 13:36:00'),
(194, '080005', '23E30329', 'Miguel Angel Alvárez Torres', 'm', 6, 10, 2, 'tendencia a enfermedades respiratorias', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:37:17', 'mmSbzDg546BveifGTKmFcepa4JVLMzKs', 1, '2024-05-20 11:19:14', '2024-10-01 17:58:07'),
(196, '050024', '23E30096', 'Rosber Jhared Altamirano cornelio ', 'm', 7, 10, 4, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 1, 1, 'Rafael May Segura', '2024-09-09 12:23:17', 'oZRqly95CITmil7ZWEgaYEcDI4ujb8kr', 0, '2024-05-20 21:23:06', '2024-09-09 12:23:17'),
(197, '070015', '23E20252', 'Melany Michelle García Gómez ', 'f', 3, 8, 2, 'No padezco de ninguna enfermedad crónica o degenerativa.', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:36:11', 'LFNWhtMvRPO1s1wRRquzTJLUGf2Wz8mJ', 0, '2024-05-20 22:32:45', '2024-08-20 19:22:26'),
(198, '060040', '23E30164', 'Diana Patricia Cazaux Aguílar ', 'f', 2, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:39:13', 'xqxX4WBqUegptrfO1BN2wNo3DWO5FXVS', 1, '2024-05-23 10:20:58', '2024-10-01 17:59:06'),
(199, '0880012', '23E30301', 'Héctor Rafael Martínez Rueda', 'm', 1, 10, 4, 'no', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:40:51', 'Ys9yN8G9ognYSXnqz8f9sKYol6Fdo3zH', 0, '2024-05-28 18:00:58', '2024-08-13 13:40:51'),
(201, '080027', '23E30290', 'Luis Alfonso Bocanegra Aguílar', 'm', 1, 10, 2, 'No padezco ninguna enfermedad', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:42:26', 'io3OrYPc8mYyck5l9jJwNKZoSyehadt0', 0, '2024-05-29 16:30:56', '2024-10-01 17:59:33'),
(202, '080007', '23E30292', 'José Alejandro Cepúlveda Fonseca ', 'm', 1, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:43:50', 'akDfl5pAOIlPOgFj29iEbiTfANpQPO8z', 0, '2024-05-30 11:50:01', '2024-08-13 13:43:50'),
(203, '080040', '23E30302', 'Citlaly Hernández Martínez ', 'f', 1, 6, 2, 'No', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:30:37', '1fq2zWoK3dd5F680b0M0iDdFV6yCMiyR', 1, '2024-05-30 17:28:39', '2024-09-09 17:06:47'),
(204, '040011', '23E30024', 'Yuridia Zaytel Castellanos Pérez ', 'f', 4, 6, 2, 'Asma ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"4\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:31:41', 'z7woEsMupb7ZH4tEPQsUl8CwsSXsyQ7E', 1, '2024-05-30 17:43:05', '2024-09-23 08:58:45'),
(205, '040005', '23E30054', 'Valeria López Salas', 'f', 4, 6, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"4\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:34:54', 'PgazZksqDJ5DBEa0pQ7P50f7fQu04rQG', 1, '2024-05-30 17:43:40', '2024-08-19 10:57:31'),
(206, '010013', '23E30001', 'Dana Pamela Bautista Lobato', 'f', 5, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:35:45', 'mOjcrnwtsKnkBKdQLCsezYawZ4gmCJyG', 1, '2024-05-30 17:44:14', '2024-09-05 10:04:13');
INSERT INTO `students` (`id`, `inscription_code`, `university_enrollment`, `name`, `gender`, `career_id`, `activity_id`, `period_id`, `illnes`, `observations`, `grades`, `first_validation`, `second_validation`, `validated_by`, `validated_at`, `validation_token`, `certificate_downloaded`, `created_at`, `updated_at`) VALUES
(207, '060098', '23E30364', 'Angel Eduardo Palomeque Esteban', 'm', 2, 6, 2, 'ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"4\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:38:27', '8T6tsqdUuWfm6axBIVCRHCW8M5nPlnuA', 1, '2024-05-30 17:45:29', '2024-08-21 13:59:11'),
(208, '040028', '23E30058', 'Viviana Cristhell Méndez López', 'f', 4, 6, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:39:40', 'YYdEGZIirGIZbsL35SAHyurwkuT9ll5O', 1, '2024-05-30 17:51:28', '2024-08-19 10:59:13'),
(209, '080025', '23E30286', 'Sujeydi Laileth Álvarez Cruz', 'f', 1, 6, 2, 'Asma bronquial ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"4\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"3\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:41:16', 'hDAJXIrBYdWBGv9OBLQbIlj5gNhBJIYG', 0, '2024-05-30 19:55:59', '2024-08-12 11:08:35'),
(210, '050004', '23E30171', 'Karla Concepción De La Cruz Román ', 'f', 2, 6, 2, 'No', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:42:38', 'v2FhvuTbo40RQfwIg2EfcTj5ocQEx8Io', 1, '2024-05-30 20:25:12', '2024-08-21 13:40:26'),
(211, '50001', NULL, 'Miguel Alfonso Rivas Pérez ', 'm', 7, 11, 2, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-05-31 15:12:06', '2024-05-31 15:12:06'),
(212, '040064', '23E30033', 'Jeyson Stalin Escolástico Cruz ', 'm', 4, 11, 4, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:45:26', 'ak4psPYGflqToRu6uHreOWpA87SvYJvF', 1, '2024-05-31 15:17:22', '2024-09-09 08:49:11'),
(213, '040029', '23E30064', 'Stephany Paola Osorio Domínguez ', 'f', 4, 11, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:46:59', 'VSzMyvWDQv86OwY2Clwt5RdHAQOzRKoF', 1, '2024-05-31 15:27:03', '2024-09-11 12:13:03'),
(214, '040002', '23E30036', 'Perla Galeana Alvarez ', 'f', 4, 11, 2, 'No ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-25 07:22:49', 'fUDQcqzSBmTJAgw1fcQAudJLLH4F8ReI', 1, '2024-05-31 15:34:54', '2024-09-25 07:29:09'),
(215, '050032', '23E30140', 'Móises Rivera Díaz ', 'm', 7, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:52:50', 'cOrfvWRXnGzKABxZDY3CMMbceetpAYdc', 0, '2024-06-01 18:37:20', '2024-10-01 17:35:10'),
(216, '040057', '23E30043', 'Nálin Gíday Gónzalez Águilar', 'f', 4, 10, 2, 'Ansiedad y depresión ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:54:16', 'wCsxkU3fli5xGVHi6cRsaWEpG6sVslqj', 1, '2024-06-03 13:08:16', '2024-10-01 17:54:28'),
(217, '050052', '23E30103', 'Heriberto campos Rodríguez ', 'm', 7, 10, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:55:50', 'faDBzvB7HbkysOCEfZeGWPlnAAE0rIr8', 1, '2024-06-03 13:40:34', '2024-10-29 18:10:19'),
(218, '010008', '23E30019', 'Ileana Guadalupe Vázquez Nery', 'f', 5, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:44:16', 'PcaQYHUDcnX7ufIAYvrMK0rC5GB254Sc', 0, '2024-06-03 13:48:23', '2024-08-19 09:41:41'),
(219, '010010', '23E30005', 'Diana Dinora Gómez Salazar ', 'f', 5, 6, 2, 'No ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:45:36', 'zCIvzyUzqR9kiiyrFSWXStSHWrbvoaKi', 0, '2024-06-03 13:57:20', '2024-08-12 11:09:54'),
(220, '040046', '23E30065', 'Lorenzo Antonio Padrón Hernández', 'm', 4, 10, 2, 'Dorsolumbalgia', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Rafael May Segura', '2024-08-13 13:57:26', 'BZlZCQ8bGYb6h70bMYypFhJlAZ82Hgsh', 0, '2024-06-03 14:14:53', '2024-08-13 13:57:26'),
(221, '060078', '23E30348', 'Angel David Cruz Perez ', 'm', 2, 11, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-12 13:23:38', 'g7vdzx90MMSZ15vDigs6wk7hQkJCOm7D', 1, '2024-06-03 14:23:46', '2024-09-19 12:49:33'),
(222, '0083567', '23E30039', 'Jazmín Gómez García', 'f', 4, 11, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:49:36', 'l2XsBz7x1cfdmIKFOzA85RGIzRuwgShp', 1, '2024-06-04 09:48:45', '2024-09-09 08:48:52'),
(224, '060011', '23E30176', 'Cesar oswaldo Flores Nárez ', 'm', 2, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 14:01:41', 'n07yxaeiQ8gswkKJl3bCxNa1akONQhXG', 1, '2024-06-14 01:02:29', '2024-10-01 17:36:58'),
(225, '060059', '23E30151', 'María José Aguilar Jiménez ', 'f', 2, 11, 2, 'ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:51:22', 'cSjibca6GNAO829vgAYZk3sAlEpHyz9B', 1, '2024-06-14 07:17:06', '2024-09-09 07:45:52'),
(226, '060060', '23E30150', 'Kathia Yaretsi Acosta Palomeque ', 'f', 2, 11, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:52:23', 'JUoVpzGBHnyUq2PzJoe3KYKpXn9uoFLt', 1, '2024-06-14 08:23:36', '2024-09-09 07:44:55'),
(227, '050031', '23E30118', 'José Carlos Hidalgo Hernández ', 'm', 7, 9, 2, 'No', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"2\",\"third_criteria\":\"1\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:27:17', 'ID7dg5FmTbt0TwnnLZqAD0OQRomhI3NY', 0, '2024-06-14 09:57:47', '2024-08-19 13:43:33'),
(228, '040066', '23E30093', 'Leandro Gabriel Villegas Trujillo ', 'm', 4, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:29:22', 'ZK3rMPY1HHM53l2MGUZsknL0f2TXqWlm', 1, '2024-06-14 10:11:07', '2024-09-12 07:24:35'),
(229, '040018', '23E30029', 'Victor Manuel Díaz Díaz ', 'm', 4, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:30:03', 'uS3VBJXTjIdEecM7UeZ3pUPb4JNAeMoU', 0, '2024-06-14 10:53:37', '2024-08-19 13:46:00'),
(230, '050038', '23E30138', 'Julio Adán Reyes Zenteno', 'm', 7, 9, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:30:51', 'zVaUytrBRf218P9JH2jNIXzPDyJHfjVD', 0, '2024-06-14 11:10:26', '2024-08-19 13:46:46'),
(231, '080048', '23E30299', 'Rogelio Gómez Sánchez ', 'm', 1, 8, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:36:40', 'IIPrIRoYzVe0mT0GbArE8CdS2NToDGgH', 1, '2024-06-14 11:15:12', '2024-08-20 12:00:47'),
(232, '196605', '23E30374', 'Guillermo Pedro Hernández ', 'm', 6, 9, 2, 'Ninguna', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:38:38', 'gKApcYnxc9B23rPcZA30fZmSffHjjbus', 0, '2024-06-14 11:47:28', '2024-08-13 11:38:28'),
(233, '080009', '23E30123', 'Simei López Sánchez', 'm', 7, 9, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"3\",\"third_criteria\":\"2\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:40:34', 'vJIDiObhhncVBAkET5IIqCv3STSzntyc', 0, '2024-06-14 12:00:25', '2024-08-13 11:39:10'),
(234, '060062', '23E30220', 'Edith Ramirez Gómez ', 'f', 2, 11, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:53:54', '3dWAqGYu4fib9q1f8gVtScsjjJjRxrkn', 1, '2024-06-15 06:37:11', '2024-09-09 08:22:05'),
(236, '123456', '23E30090', 'Laura Yireth Vásquez Maldonado ', 'f', 4, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-06-20 13:47:45', 'TdjPf8HX69Le9Aca5cgr24eU3pLNqvKs', 1, '2024-06-19 11:32:14', '2024-09-12 11:28:58'),
(237, '060002', '23E30191', 'Lizbeth Guadalupe Jiménez Hernández ', 'f', 2, 6, 2, 'No ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 0, 0, NULL, NULL, NULL, 1, '2024-06-19 11:37:14', '2024-08-28 12:11:30'),
(238, '1234567', '23E30092', 'Christian Villegas Hernández ', 'm', 4, 8, 2, 'No tengo ninguna enfermedad ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:36:59', 'eUQCqG9cpsN7whxgda6xvl2GAOH64LEq', 1, '2024-06-19 11:42:32', '2024-08-29 15:22:12'),
(239, '040027', '23E30089', 'Angel Raúl Vázquez Lizalde ', 'm', 4, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:41:24', 'M0h3pfhPQzEITZg7mWnFU05eXpsmK29a', 1, '2024-06-19 12:14:13', '2024-08-15 12:55:24'),
(240, '080002', '23E30310', 'Sixto Méndez Velázquez ', 'm', 1, 9, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"3\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:42:15', 'DYoFdjSyqRwNLVR7p40BFf6zoMCCnEob', 0, '2024-06-19 12:21:29', '2024-08-19 13:50:02'),
(241, '080022', '23E30285', 'Stephany Guadalupe Alvarado Estrella ', 'f', 1, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:42:51', '16x35Zx7u7Ry3i0wLeK3RH5GhA5A5Wzu', 1, '2024-06-19 12:22:47', '2024-08-19 13:51:30'),
(242, '010009', '23E30011', 'Stephanie Juárez Ramírez ', 'f', 5, 6, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"3\",\"third_criteria\":\"2\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:52:26', 'dCPm42rEnfWC9bjAgK9hQeBR7kvhDSc5', 0, '2024-06-19 12:23:38', '2024-08-19 09:43:45'),
(243, '050036', '23E30111', 'Márvin Baldemar Esquível Sánchez ', 'm', 7, 10, 4, 'Ninguna', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"1\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, 'Rafael May Segura', '2024-09-09 12:24:39', 'ZKDonOpaKAtGGXp5MICKABxsdXtvcEx9', 0, '2024-06-19 12:26:02', '2024-10-01 17:37:53'),
(244, '050059', NULL, 'Francisco abel mendez de la cruz', 'm', 7, 8, 2, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-06-19 12:26:35', '2024-06-19 12:26:35'),
(245, '050002', '23E30107', 'Juán de Jesús Cruz Díaz ', 'm', 7, 10, 4, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 14:08:00', 'GOwl1P3uOGYl1BMGRYUWzeXKaVO4ozGn', 1, '2024-06-19 12:29:52', '2024-10-01 17:38:20'),
(246, '060101', '23E30370', 'Juan Mario Narez Valencia ', 'm', 2, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:46:04', 'hBl9EgSrYIuSFxTVkHAVxxwYCN0woqiL', 0, '2024-06-19 12:32:17', '2024-08-13 11:44:49'),
(248, '040085', '23E30344', 'Isabel correa González ', 'f', 4, 6, 2, 'No\n', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:52:27', '3yvNVG4sJvIRRHAgpggcPSwT7vmanweZ', 1, '2024-06-19 12:45:42', '2024-09-12 11:11:28'),
(251, '080029', '23E30323', 'Yuliana Vianey Rodríguez López ', 'f', 1, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:53:17', 'IhU9AnUe03AWxKKvxu62JmCsntITPc6R', 1, '2024-06-19 12:57:59', '2024-08-20 12:04:18'),
(252, '040010', '23E30030', 'José Armando Díaz Domínguez ', 'm', 4, 9, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 12:54:06', 'P02dHZlo3gAd6Fh3mkMnknOnLo11f63B', 1, '2024-06-19 13:05:26', '2024-08-13 11:47:13'),
(254, '058901', '23E30055', 'Gustavo Adrian Luna López ', 'm', 4, 7, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, '2024-06-19 13:18:34', '2024-09-02 16:53:43'),
(257, '070006', '23E30227', 'Santiago Méndez Crísanto énoc ', 'm', 2, 10, 2, 'No', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, 'Rafael May Segura', '2024-08-13 14:10:56', 'ToX99gWrupyUSfqbum8NVdkFDKOWufMe', 0, '2024-06-19 14:42:09', '2024-10-01 17:39:11'),
(258, '040055', '23E30080', 'Danna de Jesús Sánchez Gómez ', 'f', 4, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:40:39', 'Rp6fwAxIqXUum4jykMXmvnZYnNM3elz0', 1, '2024-06-19 15:29:58', '2024-08-19 11:01:44'),
(259, '060061', '23E30179', 'Angy Miguelina Garduza Alvarado ', 'f', 2, 6, 2, 'No', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:40:41', 'cIHp8XJl0KKM4PEV97kE3y1XpQ3ukZ4T', 1, '2024-06-19 15:37:15', '2024-08-28 13:49:13'),
(261, '050040', '23E30114', 'Javier garcía ávila', 'm', 7, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 14:45:48', '1mlEZCAeC6EwD5proI9gwGoKzwPl1chx', 1, '2024-06-19 15:42:12', '2024-10-01 17:40:10'),
(262, '010019', '23E30014', 'Teresita De Jesús Rosado Lara', 'f', 5, 6, 2, 'Ningún ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:41:07', 'AoTwF86v87fuGTxIWIP82RS9MFCjgglE', 0, '2024-06-19 15:45:19', '2024-08-19 09:45:16'),
(263, '040087', '23E30349', 'Mario Del Carmen Díaz de la Cruz ', 'm', 4, 6, 2, 'Epilepsia ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"2\",\"third_criteria\":\"4\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:41:28', 'i4PknA9NYnKLaZuL6II41LidJpmICHAk', 1, '2024-06-19 15:45:35', '2024-08-20 11:33:09'),
(265, '040030', '23E30044', 'Cecilia Guadalupe González López ', 'f', 4, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:41:50', 'XZx2eOt0kwrKVFijtDKnkWKMujLlOdmT', 1, '2024-06-20 10:01:24', '2024-08-19 11:01:18'),
(266, '100016', '23E30391', 'Rosa Aurora Gurría Carrera', 'f', 6, 10, 4, 'De la vista', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 14:47:30', 'HCkxHkOcMShHNn4QMqpQHK0tzIabQdpj', 0, '2024-06-20 10:42:37', '2024-08-13 14:47:30'),
(267, '070056', '23E30237', 'Karen Brillit Albores Jiménez ', 'f', 3, 6, 2, 'No ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:43:34', 'bbZuo1HC1Yu1pobc4S8wo8XzYs0pPyWF', 1, '2024-06-20 12:09:42', '2024-08-22 07:05:37'),
(268, '070028', '23E30256', 'Darwin Gutiérrez Jiménez', 'm', 3, 6, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:44:00', 'jE4RbgKEqmQ34AlgOIDbjqnsumIou3hO', 1, '2024-06-20 12:19:25', '2024-11-27 21:25:58'),
(269, '070008', '23E30236', 'Monserrat Aguilar Robles ', 'f', 3, 6, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:44:59', 'WdHZCh9QlOosjRaIk8h8tVSMbZaNItlb', 1, '2024-06-20 12:24:21', '2024-09-18 12:38:54'),
(270, '070005', '23E30273', 'Edith Fernanda Rodríguez Gutiérrez ', 'f', 3, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:45:02', '5qtACM8gR2uTf31zb4zYafN3gao5KrGQ', 1, '2024-06-20 12:34:05', '2024-09-18 12:41:10'),
(271, '040049', '23E30072', 'Elizabeth  Ramírez López ', 'f', 4, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 10:45:19', 'mxBhuPCra5KweMBZf8dNhq7O6pnl900r', 1, '2024-06-20 12:44:22', '2024-08-21 14:54:45'),
(272, '040019', '23E30084', 'Erick Tadeo Castellano ', 'm', 4, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 11:02:12', 'e6XuGCsspSmrWp1t4CsfoaJxVmOoJR3R', 1, '2024-06-20 12:45:20', '2024-08-15 12:53:05'),
(275, '56789', NULL, 'Daniel Castellanos Escolastico ', 'm', 1, 11, 2, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-06-20 13:24:31', '2024-06-20 13:24:31'),
(276, '060052', '23E30181', 'Lesly Gómez Hernández ', 'f', 2, 11, 2, 'Ningunas ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 21:58:16', '6KbC9sIT1zYyQ1znKdgZfjyiTwteuvHp', 1, '2024-06-20 13:24:37', '2024-09-09 07:44:50'),
(277, '010018', '23E30010', 'Andres Eduardo Hernández Trajo ', 'm', 5, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:40:12', 'BVE047MdmfWajG3IMCc9CSnh6zfu2WPH', 0, '2024-06-20 13:29:07', '2024-08-13 15:40:21'),
(278, '34567', '23E30023', 'Fátima Guadalupe Bautista Saldaña ', 'f', 4, 8, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:40:28', 'KwF1PEoZgaQQkzbytyUl9aCx2uv3NYI1', 1, '2024-06-20 13:34:05', '2024-08-20 10:59:32'),
(279, '010014', '23E30016', 'Victoria Guadalupe Salaya Castellanos ', 'f', 5, 8, 2, 'no tengo ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-08-13 15:40:43', 'yDSnd8nbeXovPIxTyS07dsN8YjH9LNdh', 0, '2024-06-20 13:41:52', '2024-08-13 15:40:54'),
(280, '080017', '23E30307', 'Alitza Joana May Montejo ', 'f', 1, 6, 2, 'Arritmia cardíaca (Taquicardia Supraventricular) ', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-21 11:41:08', 'lJe9bNyqdbyLrmnQCnyzP1XlaoMLzhgZ', 0, '2024-06-20 13:43:01', '2024-08-21 11:41:08'),
(281, '040052', '23E30081', 'Yuliana Concepción Sánchez Hernández ', 'f', 4, 11, 4, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 22:02:30', 'Wtzr9KZQRJOFCaEIOEWeRNsxf3OIUlHw', 0, '2024-06-20 13:48:41', '2024-09-08 22:02:52'),
(282, '00000', NULL, 'Hector Manuel Perez Alvarez', 'm', 4, 8, 4, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-06-20 13:52:41', '2024-06-20 13:52:41'),
(283, '050039', '23E30149', 'Diego Moisés Zenteno Pérez ', 'm', 2, 9, 2, 'No', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 13:12:12', 'lqC8WAMjSdqr9TLruEc7Wy2k4A4wcLym', 1, '2024-06-20 13:52:45', '2024-08-13 11:47:53'),
(284, '050069', '23E30336', 'Alan Drey Cruz Hernández ', 'm', 7, 9, 2, 'No ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"1\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"1\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 13:14:19', 'E3kEK7pG9nSNKMrNp6eHNUeOp6LS9pF7', 0, '2024-06-20 13:53:55', '2024-08-13 11:49:56'),
(286, '070035', '23E30260', 'Bryan Hernández Napoleon ', 'm', 3, 11, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 22:04:26', 'oOMfVmvLtIxZY9X50dLpusRlffh23dPq', 1, '2024-06-20 14:15:45', '2024-09-24 09:26:40'),
(287, '010004', '23E30004', 'Erik Cruz Gonzalez', 'm', 5, 11, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-08 22:06:11', '8UcTkKL9685Gx0CTyMUSdwroxhNxEcdD', 0, '2024-06-20 14:21:10', '2024-09-08 22:06:45'),
(288, '12345', '23E30013', 'Paola azeneth Ramírez hidalgo ', 'f', 5, 8, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, NULL, NULL, NULL, 0, '2024-06-20 15:13:44', '2024-08-20 19:01:16'),
(289, '00007', NULL, 'LorenzoGuillermezGomezGomez', 'm', 3, 8, 2, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-06-20 16:59:52', '2024-06-20 16:59:52'),
(290, '00009', NULL, 'Maria Fernanda Cruz Arias ', 'f', 4, 8, 2, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-06-20 17:06:57', '2024-06-20 17:06:57'),
(293, '00003', NULL, 'Michel del Carmen Bocanegra Perera', 'f', 3, 8, 2, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-06-20 18:14:00', '2024-06-20 18:14:00'),
(295, '040090', '23E30365', 'Wendy Guadalupe Pérez Aguilar ', 'f', 4, 6, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-19 10:00:41', 'asIEI9MFl2nsSFlgxKeKQTEncpgrbo53', 1, '2024-06-22 14:43:23', '2024-08-21 16:00:03'),
(296, '040062', '23E30022', 'Horacio Antonio Armenta Centeno ', 'm', 4, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 16:34:57', 'DrPk2TMinKygSb3vL1fikeaLPk4sQj6Z', 0, '2024-06-23 14:00:20', '2024-08-13 11:50:47'),
(297, '040025', '23E30059', 'Manuel Antonio Méndez Méndez ', 'm', 4, 9, 2, 'Ningunaa', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 19:10:45', 'pVIEfBifypV8AUK1sw552cezMPNo3cyz', 1, '2024-06-23 15:11:25', '2024-08-20 11:30:14'),
(298, '060086', '23E30205', 'José Eduardo Ocaña Alvarado ', 'm', 2, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-06-23 19:10:47', 'KFmR1L4RKHeAzNTzDKFsCcNU1bcwTpox', 0, '2024-06-23 16:05:54', '2024-08-13 11:52:53'),
(299, '050062', '23E30110', ' Óscar Iván Díaz Villarreal ', 'm', 7, 9, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"1\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-08-19 14:13:55', '3HjfRIwGxMsTYXWs2UkIvHnarDCgq8cm', 1, '2024-06-23 19:05:32', '2024-09-26 13:57:14'),
(300, '160718', '23E30066', 'Alondra Sarina Pérez Martínez ', 'f', 4, 6, 2, 'Ninguna', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-08-12 11:03:27', 'dmSJ9WmpMNBG6cCrs1ZnNsBpmQD29i4z', 1, '2024-06-25 15:55:13', '2024-08-21 17:00:19'),
(301, '070013', '23E30255', 'Claudia Luz Gurría Luna ', 'f', 3, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 14:50:53', 'hsOF3ru6MJO61PYhz24jOs9SYljgMr0r', 0, '2024-06-30 12:39:19', '2024-08-13 14:50:53'),
(302, '070007', '23E30276', 'Andrés De Jesús Silvan Aguilar', 'm', 3, 9, 2, 'No', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"3\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-08-19 14:13:51', 'tKeWk7ot0hSLNCZQaOxGiV08KLyB510h', 0, '2024-07-01 12:19:57', '2024-08-19 14:13:51'),
(303, '060004', '23E30213', 'Jenifer Pérez Pérez ', 'f', 2, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 15:24:54', 'J4fLn7ktQs1OyV1rnGE3YnLF4p6vMlW5', 1, '2024-08-13 10:15:52', '2024-08-21 13:48:56'),
(304, '080030', '23E30326', 'Luis Armando Sánchez Hernández ', 'm', 1, 10, 2, '.', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-13 15:29:32', '5WQwUpGxQCrzfBYaBTsdJs6D3s7OOj2v', 1, '2024-08-13 11:55:23', '2024-10-01 17:41:56'),
(305, '050033', '23E30095', 'Angel Emmanuel Aguílar Meza ', 'm', 7, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-14 09:12:58', 'DhNruFLurbEx4X2QiDfb7MoRPknFTh2b', 1, '2024-08-13 15:56:00', '2024-10-01 18:01:34'),
(306, '050064', '23E30135', 'Alejandro Pérez Zapata', 'm', 7, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-14 09:15:33', 'NPj15BPkEhBYKSQfPXiGDlhH6J9WOSun', 0, '2024-08-13 16:13:25', '2024-10-01 17:43:15'),
(307, '050055', '23E30128', 'Isaí Miranda Gómez ', 'm', 7, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"1\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-14 09:17:49', 'DOUDA6DgbQulAAxiPdlWU49eHrrjSIaZ', 0, '2024-08-13 16:38:05', '2024-10-01 17:43:43'),
(308, '040009', '23E30031', 'Jesús concepción Díaz Ruíz ', 'm', 4, 10, 4, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-14 09:19:35', 'E1emgLt31mykbE9zGpkPaZdVA7t0ia8r', 1, '2024-08-13 16:42:30', '2024-10-01 17:44:23'),
(309, '040035', '23E30068', 'José Gerónimo Pérez Méndez ', 'm', 4, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"3\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"4\"}', 1, 1, 'Rafael May Segura', '2024-08-14 09:21:49', 'hWBgZ0GVzKZCbykIbQiCg3aqYacHVJRZ', 1, '2024-08-13 16:42:43', '2024-08-20 08:24:56'),
(310, '040003', '23E30056', 'Danna Paola Martínez Martínez ', 'f', 4, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Rafael May Segura', '2024-08-14 09:10:52', 'n3kvSK3iAbuR0f7nCw1UJGQSy3rfas5l', 0, '2024-08-13 19:09:49', '2024-08-14 09:10:52'),
(311, '080011', '23E30208', 'Jorge Méndez Cano', 'm', 1, 10, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, 'Rafael May Segura', '2024-08-14 09:24:59', 'FywQ9yyskDwExuKx3o3RkNWDwmr9qmUg', 0, '2024-08-13 22:15:02', '2024-10-01 17:45:29'),
(314, '1900', '23E30067', 'Roxana Pamela Pérez Martínez', 'f', 4, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, NULL, NULL, NULL, 0, '2024-08-21 11:09:27', '2024-08-21 11:54:36'),
(315, '080037', '23E30316', 'Juán Manuel Párcero Hernández', 'm', 1, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"3\",\"third_criteria\":\"2\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, NULL, NULL, NULL, 0, '2024-08-21 11:12:07', '2024-10-01 17:46:36'),
(316, '070030', '23E30275', 'Bethzy Lizbeth Sánchez Gómez', 'f', 3, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, NULL, NULL, NULL, 0, '2024-08-21 11:16:20', '2024-08-21 11:56:35'),
(317, '070057', '23E30274', 'Angel de Jesus Sala Gutiérrez', 'm', 3, 5, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-09-02 10:37:46', '8VRfwzxV5up7O4mO9WOj9pcURf6MYTaz', 1, '2024-08-26 12:22:36', '2024-09-12 09:14:10'),
(318, '07000000', '23E30222', 'Osmar Francisco Rodríguez Gómez', 'm', 2, 12, 2, 'Ninguno', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Migda Leydi Sánchez Calix', '2024-10-11 14:59:35', 'zJZXZgRsgZdVUv3Ivvk0EnmICd8ndiMA', 1, '2024-08-26 12:33:23', '2024-10-11 19:34:09'),
(319, '0000', '23E30154', 'José Ángel Álvarez de la Cruz', 'm', 2, 12, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Migda Leydi Sánchez Calix', '2024-10-11 14:59:15', 'MeV1aIeQUQjVFCYeBmrbxmwvzsUBrMJ2', 1, '2024-08-26 12:41:56', '2024-10-11 19:59:25'),
(321, '2210001', '22E30280', 'Reynaldo Joaquin Arguelles Villegas', 'm', 3, 5, 4, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Ponciano García Castellanos', '2024-09-02 10:39:29', 'UmMS6dGc6GwEVJ2BRXaX8t1y28InWFfT', 0, '2024-08-29 10:42:36', '2024-09-02 10:39:48'),
(381, '24040006', NULL, 'Angel Rodolfo Salas Hernandez', 'm', 4, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:05:55', '2024-09-03 18:05:55'),
(382, '24040057', '24E30093', 'Madian Amittai Zenteno Ruiz ', 'f', 4, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:05:56', '2024-09-06 10:22:23'),
(383, '24040005', NULL, 'Diego Yahir De la Cruz Vicente ', 'm', 4, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:06:03', '2024-09-03 18:06:03'),
(384, '24040041', NULL, 'Yuli del carmen vazquez jacinto ', 'f', 4, 8, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:06:08', '2024-09-03 18:06:08'),
(385, '24040022', NULL, 'César Alejandro Requena Pérez ', 'm', 4, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:06:16', '2024-09-03 18:06:16'),
(386, '24040043', NULL, 'Edjhoney oswaldo Hernández Sanchez', 'm', 4, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:06:47', '2024-09-03 18:06:47'),
(387, '24040053', NULL, 'Jesus david perez jimenez', 'm', 4, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:06:49', '2024-09-03 18:06:49'),
(388, '2400001', NULL, 'Luis Angel Martinez Perez ', 'm', 4, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:06:53', '2024-09-06 11:29:10'),
(389, '24040070', NULL, 'Miguel Ángel Salas Hernández ', 'm', 4, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:07:12', '2024-09-03 18:07:12'),
(390, '24040014', NULL, 'Ivan Rodriguez vazquez ', 'm', 4, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:07:15', '2024-09-03 18:07:15'),
(391, '24040023', NULL, 'Jesús Israel Hernández Jiménez ', 'm', 4, 9, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:07:40', '2024-09-03 18:07:40'),
(392, '24060041', NULL, 'Arumi Gutierrez Oramas', 'f', 2, 9, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:07:44', '2024-09-03 18:07:44'),
(393, '24040077', NULL, 'Katherin Hernández Narváez ', 'f', 4, 8, 5, 'Dermatitis fungica ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:07:48', '2024-09-03 18:07:48'),
(394, '24040046', NULL, 'Fabiola Hernández Medina ', 'f', 4, 6, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:07:53', '2024-09-03 18:07:53'),
(395, '24040007', NULL, 'Virginia Guadalupe Rosado Pérez ', 'f', 4, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:08:09', '2024-09-03 18:08:09'),
(396, '24040024', NULL, 'Jose Maria Cruz Ortiz ', 'm', 4, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:08:19', '2024-09-03 18:08:19'),
(397, '24040032', NULL, 'Gerardo Domínguez sala ', 'm', 4, 8, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:08:25', '2024-09-03 18:08:25'),
(398, '24040018', NULL, 'Edgar Eduardo de los santos Hernández', 'm', 4, 9, 5, 'Ningúna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:08:45', '2024-09-03 18:08:45'),
(399, '24080001', NULL, 'Jorge Emilio Pérez Narváez ', 'm', 4, 10, 5, 'No, solo padezco de problemas visuales', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:08:53', '2024-09-03 18:08:53'),
(400, '24040033', NULL, 'Eric Fonseca Hernández ', 'm', 4, 8, 5, '.', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:09:20', '2024-09-03 18:09:20'),
(401, '24040009', NULL, 'Adalberto Hernández Hernández ', 'm', 4, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:09:22', '2024-09-03 18:09:22'),
(402, '24040008', NULL, 'Tania Alvarado Velasco ', 'f', 4, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:09:22', '2024-09-03 18:09:22'),
(403, '24070015', '24E30217', 'María Fernanda Domínguez López ', 'f', 3, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:09:29', '2024-09-06 09:51:15'),
(404, '24040072', '24E30028', 'Yamilet Alejandra Castillejos Martínez ', 'f', 4, 13, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:09:47', '2024-09-10 10:53:24'),
(405, '24070006', NULL, 'Luz Mariana Jiménez Maldonado', 'f', 3, 14, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:09:53', '2024-09-03 18:09:53'),
(406, '24040002', NULL, 'Belinda Hernández Lujano ', 'f', 4, 6, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:09:58', '2024-09-03 18:09:58'),
(407, '24040048', NULL, 'Anaheli Perez Estrada ', 'f', 4, 9, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:10:03', '2024-09-03 18:10:03'),
(408, '24040029', NULL, 'Dulce Lizbeth Figueroa Quiñones ', 'f', 4, 6, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:10:15', '2024-09-03 18:10:15'),
(409, '24040075', NULL, 'Díaz Hernández Jhony Jared ', 'm', 4, 8, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:10:16', '2024-09-03 18:10:16'),
(410, '24040034', '24E30034', 'Jesús Manuel Doporto García ', 'm', 4, 10, 5, 'Fatiga, presíon baja. no puedo hacer esfuerzos físicos', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:10:18', '2024-09-10 14:18:32');
INSERT INTO `students` (`id`, `inscription_code`, `university_enrollment`, `name`, `gender`, `career_id`, `activity_id`, `period_id`, `illnes`, `observations`, `grades`, `first_validation`, `second_validation`, `validated_by`, `validated_at`, `validation_token`, `certificate_downloaded`, `created_at`, `updated_at`) VALUES
(411, '24070049', NULL, 'Bethzy Nazareth Arias Camacho ', 'f', 3, 14, 5, 'Tengo quistes y voy para una operación pero hasta ahorita no a llegado a nada grave de dolores o asi', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:10:29', '2024-09-03 18:10:29'),
(412, '24040051', NULL, 'Jehieli Torres García ', 'f', 4, 5, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:10:29', '2024-09-03 18:10:29'),
(413, '24050021', NULL, 'Francisco Javier Hernández Landero ', 'm', 7, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:11:04', '2024-09-03 18:11:04'),
(414, '24040019', NULL, 'Navith Guadalupe Gaspar Brindis', 'f', 4, 6, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:11:10', '2024-09-03 18:11:10'),
(415, '24050044', NULL, 'Erick Gonzalez Díaz ', 'm', 7, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:11:25', '2024-09-03 18:11:25'),
(416, '24010002', NULL, 'Emily Reyes Arias ', 'f', 5, 10, 2, 'discapacidad visual ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:11:26', '2024-09-03 18:11:26'),
(417, '24040028', NULL, 'SANDRA LISSET ROBLES ALVARADO ', 'f', 4, 8, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:11:31', '2024-09-03 18:11:31'),
(418, '24100006', NULL, 'Raul Chan Vidal', 'm', 1, 9, 5, 'ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:11:42', '2024-09-03 18:11:42'),
(419, '24060047', NULL, 'José Miguel Rabanales Hernández', 'm', 2, 9, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:12:33', '2024-09-03 18:12:33'),
(420, '24040004', NULL, 'Marijose Martínez López ', 'f', 4, 6, 5, 'Noo', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:12:40', '2024-09-03 18:12:40'),
(421, '24040012', NULL, 'Gael Ulises Sánchez Salazar ', 'm', 4, 9, 5, 'Ninguno ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:12:41', '2024-09-03 18:12:41'),
(422, '24080036', NULL, 'Jennifer Guadalupe Lopez Jimenez', 'f', 1, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:13:01', '2024-09-03 18:13:01'),
(423, '24080018', NULL, 'Aymara Milena Cardenas Varela ', 'f', 1, 10, 5, 'Lesiones Dermatológicas con Eritema, Prurito y Urticaria en zonas expuestas al Sol.', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:13:16', '2024-09-09 10:55:38'),
(424, '24040025', NULL, 'Carolina López Cruz ', 'f', 4, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:13:18', '2024-09-03 18:13:18'),
(425, '24070079', NULL, 'Cintya yurixi morales soberano', 'f', 3, 14, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:13:29', '2024-09-03 18:13:29'),
(426, '24070021', NULL, 'Carla para Hernández Pérez ', 'f', 3, 14, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:13:43', '2024-09-03 18:13:43'),
(427, '24080049', NULL, 'Moisés Hernández Silvan ', 'm', 1, 9, 5, 'ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:14:01', '2024-09-03 18:14:01'),
(428, '24070007', NULL, 'Ana Karen Ocaña Gallegos', 'f', 3, 6, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:14:01', '2024-09-03 18:14:01'),
(429, '24070053', '24E30259', 'Ana Paola Ramos Gómez', 'f', 3, 13, 5, 'no', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:14:07', '2024-09-10 10:50:30'),
(430, '24040073', NULL, 'Benito López López ', 'm', 4, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:14:16', '2024-09-03 18:14:16'),
(431, '24070037', NULL, 'Yeimi Gabriela Dominguez González ', 'f', 3, 6, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:14:25', '2024-09-03 18:14:25'),
(432, '24070030', NULL, 'Yerania Aguilar Jiménez ', 'f', 3, 14, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:14:34', '2024-09-03 18:14:34'),
(433, '24070034', NULL, 'Stefhany Cristal Cruz Sala', 'f', 3, 14, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:14:52', '2024-09-03 18:14:52'),
(434, '24040061', NULL, 'Ezequiel Hernández Cruz ', 'm', 4, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:01', '2024-09-03 18:15:01'),
(435, '24060015', NULL, 'Alexa Isabel Pérez Pérez ', 'f', 2, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:03', '2024-09-03 18:15:03'),
(436, '24040031', NULL, 'Cordova Beltran Jesús Santiago', 'm', 4, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:06', '2024-09-03 18:15:06'),
(437, '24060016', NULL, 'Perla cristhel Ruiz Gomez ', 'f', 2, 8, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:15', '2024-09-03 18:15:15'),
(438, '24040015', NULL, 'Emiliano Ramírez Domínguez ', 'm', 4, 9, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:15', '2024-09-03 18:15:15'),
(439, '24070018', NULL, 'Angel Jesús', 'm', 3, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:19', '2024-09-03 18:15:19'),
(440, '24040055', NULL, 'Gustavo Eduardo Hernández Alegría ', 'm', 4, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:25', '2024-09-03 18:15:25'),
(441, '24010008', NULL, 'Gabriela Jimenez Mendoza', 'f', 5, 6, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:28', '2024-09-03 18:15:28'),
(442, '24060079', NULL, 'Brayan Cervantes Ortiz ', 'm', 2, 10, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:35', '2024-09-03 18:15:35'),
(443, '24080040', '24E30313', 'Christopher Michele Ramos Pintado ', 'm', 1, 13, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:38', '2024-09-10 10:52:58'),
(444, '24040039', '25E30076', 'Eduardo Reyes Estrada ', 'm', 4, 13, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:15:55', '2024-09-10 10:55:23'),
(445, '24050022', NULL, 'Angel Oliva Damas ', 'm', 7, 10, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:16:06', '2024-09-03 18:16:06'),
(446, '24010013', NULL, 'Arisbeth Bautista Pérez', 'f', 5, 13, 5, 'Lupus Eritematoso Sistémico', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:16:24', '2024-09-03 18:16:24'),
(447, '24070026', NULL, 'Kimberly Itzel Carrillo Ramírez ', 'f', 3, 6, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:16:32', '2024-09-03 18:16:32'),
(448, '24040068', NULL, 'Manuel Alberto Pintado Perez', 'm', 4, 9, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:16:49', '2024-09-03 18:16:49'),
(449, '24040027', NULL, 'Yazmili Vianey yam Gonzalez ', 'f', 4, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:16:55', '2024-09-03 18:16:55'),
(450, '24050002', NULL, 'Yeri Hernández Alvarado', 'f', 7, 8, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:16:58', '2024-09-03 18:16:58'),
(451, '24050026', '24E30104', 'Jose Alejandro Hernández López ', 'm', 7, 13, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:17:18', '2024-09-10 10:52:38'),
(452, '24070068', NULL, 'NEHEMIAS GABRIEL SANCHEZ DOMINGUEZ ', 'm', 3, 9, 5, 'NINGUNA', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:17:36', '2024-09-03 18:17:36'),
(453, '24080053', NULL, 'Miguel Alejandro Álvarez dela cruz ', 'm', 1, 12, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:17:38', '2024-09-19 15:04:31'),
(454, '24070039', NULL, 'Kaory Beatriz Hernandez Pérez ', 'f', 3, 6, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:17:47', '2024-09-03 18:17:47'),
(455, '24080015', '24E30292', 'Trinidad del Carmen Gutiérrez Jimenez ', 'f', 1, 13, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:18:06', '2024-09-10 10:55:06'),
(456, '24080008', NULL, 'Mayte cruz Hernandez ', 'f', 1, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:18:10', '2024-09-03 18:18:10'),
(457, '24080010', NULL, 'Mayté Miranda Rodríguez Fósil ', 'f', 1, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:18:21', '2024-09-03 18:18:21'),
(458, '24080034', '24E30275', 'Jesus Antonio Busquet de la Cruz', 'm', 1, 13, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:18:32', '2024-09-10 10:51:57'),
(459, '24060074', NULL, 'Rogelio ', 'm', 2, 9, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:18:34', '2024-09-03 18:18:34'),
(460, '24080029', NULL, 'Itzel Del Carmen Guerra Gonzalez ', 'f', 1, 14, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:18:40', '2024-09-03 18:18:40'),
(461, '24080022', NULL, 'Alicia Isabel Garcia Sanchez ', 'f', 1, 8, 5, 'NO', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:18:42', '2024-09-03 18:18:42'),
(462, '24070031', '24E30241', 'Yulisa López Juárez ', 'f', 3, 5, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:18:44', '2024-09-06 09:50:25'),
(463, '24040074', NULL, 'Karina Mileny López Hernández ', 'f', 4, 6, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:18:46', '2024-09-03 18:18:46'),
(464, '24080009', NULL, 'Joel Eduardo Centeno Sánchez ', 'm', 1, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:19:08', '2024-09-03 18:19:08'),
(465, '24010005', NULL, 'Luis Eduardo Escobar Hernandez ', 'm', 1, 9, 5, 'no', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:19:35', '2024-09-03 18:19:35'),
(466, '24040049', NULL, 'Joel Cruz Hernandez ', 'm', 4, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:19:38', '2024-09-03 18:19:38'),
(467, '24010018', NULL, 'Ingrid Alejandra Ramírez Vidal ', 'f', 5, 14, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:19:44', '2024-09-03 18:19:44'),
(468, '24010017', NULL, 'Pedro Ignacio Toledo Ordóñez ', 'm', 5, 11, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:19:45', '2024-09-03 18:19:45'),
(469, '24070036', '24E30260', 'Mayte Yuridia Ramos Sánchez ', 'f', 3, 13, 5, 'Ninguna.', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:19:58', '2024-09-10 10:50:41'),
(470, '24080048', NULL, 'Jorge natividad Hernández Jiménez ', 'm', 1, 11, 5, 'No ninguno ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:20:02', '2024-09-03 18:20:02'),
(471, '24010001', NULL, 'Monica Diaz Solis ', 'f', 5, 11, 5, 'ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:20:10', '2024-09-03 18:20:10'),
(472, '24060057', NULL, 'Jorge Antonio Sastre Gracia ', 'm', 2, 11, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:20:26', '2024-09-03 18:20:26'),
(473, '24040045', NULL, 'Juan de Dios Estrada Martínez ', 'm', 4, 10, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:20:46', '2024-09-03 18:20:46'),
(474, '24042391', NULL, 'Williams ', 'm', 1, 9, 5, 'No.', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:20:53', '2024-09-03 18:20:53'),
(475, '24080017', NULL, 'William López Maldonado ', 'm', 1, 9, 5, 'Ninguno ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:20:55', '2024-09-03 18:20:55'),
(476, '24040071', NULL, 'Gómez Gómez Marleny Yazmin ', 'f', 4, 9, 5, 'Ninguno ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:21:00', '2024-09-03 18:21:00'),
(477, '24010014', NULL, 'Joana Paola Sánchez Pérez ', 'f', 5, 14, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:21:01', '2024-09-03 18:21:01'),
(478, '24080027', NULL, 'Cristian Manuel Busquet López ', 'm', 1, 11, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:21:17', '2024-09-03 18:21:17'),
(479, '35040038', NULL, 'Jose Angel Lopez Morales ', 'm', 4, 9, 5, 'No ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:21:18', '2024-09-03 18:21:18'),
(480, '24100009', NULL, 'Juan jose de la cruz tovilla ', 'm', 6, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:21:22', '2024-09-03 18:21:22'),
(481, '24070041', NULL, 'Llimer Esmid Hernández López  ', 'm', 3, 10, 5, 'N/O ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:21:26', '2024-09-03 18:21:26'),
(482, '24010024', NULL, 'Luis Gustavo Moyer Flota', 'm', 5, 11, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:21:29', '2024-09-03 18:21:29'),
(483, '24080037', '24E30314', 'Jazzira Miranda Reyes Sánchez ', 'f', 1, 5, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:21:41', '2024-09-06 10:30:03'),
(484, '24080019', NULL, 'Miranda Ocampo Wade ', 'f', 1, 6, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:22:47', '2024-09-03 18:22:47'),
(485, '24010007', NULL, 'Guadalupe López Benítez ', 'f', 5, 14, 5, 'ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:22:53', '2024-09-03 18:22:53'),
(486, '24070012', '24E30244', 'Itzel Amayrani Mendez Hernández ', 'f', 3, 13, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:22:53', '2024-09-10 10:49:02'),
(487, '24050008', NULL, 'Miguel Francisco Melo Arias', 'm', 6, 8, 5, 'no', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:22:57', '2024-09-03 18:22:57'),
(488, '24060032', NULL, 'Joseline Guadalupe Pérez Magaña ', 'f', 2, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:23:16', '2024-09-03 18:23:16'),
(489, '24070076', NULL, 'Daira Hernández Cornelio', 'f', 3, 6, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:23:42', '2024-09-03 18:23:42'),
(490, '24060069', NULL, 'Edwin suresh loisel morales chagala ', 'm', 2, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:23:43', '2024-09-03 18:23:43'),
(491, '24050035', NULL, 'Richard Ocampo Hernández ', 'm', 7, 10, 5, 'Lesión en el ligamento de la rodilla derecha ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:24:01', '2024-09-03 18:24:01'),
(492, '24070061', NULL, 'Keyla mendoza gomez ', 'f', 3, 14, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:24:09', '2024-09-06 09:35:39'),
(493, '24080052', NULL, 'Jeremías Giorgana Lopez ', 'm', 1, 10, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:24:32', '2024-09-03 18:24:32'),
(494, '24070047', NULL, 'Nury Arandi Alvarez cruz ', 'f', 3, 15, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:24:41', '2024-09-03 18:24:41'),
(495, '24060056', NULL, 'Luis Ángel verá Pérez ', 'm', 2, 8, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:24:50', '2024-09-03 18:24:50'),
(496, '24070023', '24E30231', 'Diana Monserrat Hernández Balcazar ', 'f', 3, 13, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:25:12', '2024-09-10 10:50:17'),
(497, '24050004', NULL, 'Ahieser Itaí Herrera Juárez ', 'm', 7, 11, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:25:24', '2024-09-03 18:25:24'),
(498, '24070052', NULL, 'Odalis Ailyn Garcia Perez', 'f', 3, 6, 5, 'no', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:25:56', '2024-09-03 18:25:56'),
(499, '24040010', NULL, 'Francisco Morales Villegas ', 'm', 4, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:26:00', '2024-09-03 18:26:00'),
(500, '24070040', NULL, 'Anggie Mishelle Nuñez Jauregui ', 'f', 3, 13, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:26:27', '2024-09-03 18:26:27'),
(501, '24070004', NULL, 'Joselinne Gómez García ', 'f', 3, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:26:39', '2024-09-03 18:26:39'),
(502, '24040047', NULL, 'Domingo del Carmen Vázquez lujano', 'm', 4, 10, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:26:42', '2024-09-03 18:26:42'),
(503, '24080006', NULL, 'Noé Daniel Hernández Martinez ', 'm', 1, 10, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:26:43', '2024-09-03 18:26:43'),
(504, '24050007', NULL, 'Alan Nathanael López Cruz ', 'm', 7, 9, 2, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:26:49', '2024-09-03 18:26:49'),
(505, '24070008', NULL, 'Luz del Alba castellanos narez ', 'f', 3, 14, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:27:01', '2024-09-03 18:27:01'),
(506, '24050005', '24E30113', 'Ángel Daniel Molina Chávez ', 'm', 7, 5, 5, 'No a ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:27:05', '2024-09-06 10:01:58'),
(507, '24070014', NULL, 'Vicente Roberto ', 'm', 3, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:27:13', '2024-09-03 18:27:13'),
(508, '24100001', NULL, 'Carlos Enrique Perez Azmitia ', 'm', 6, 9, 5, 'Asma ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:27:18', '2024-09-03 18:27:18'),
(509, '24040059', NULL, 'Verónica Reyes Sanchez ', 'f', 4, 14, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:27:28', '2024-09-03 18:27:28'),
(510, '24080002', NULL, 'Jose francisco morales lopez', 'm', 1, 13, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:27:35', '2024-09-03 18:27:35'),
(511, '24070063', NULL, 'Aranza Herrera García', 'f', 3, 11, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:27:46', '2024-09-03 18:27:46'),
(512, '24050020', NULL, 'Josmar Diaz Ocaña', 'm', 7, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:28:36', '2024-09-03 18:28:36'),
(513, '24040013', NULL, 'Betzabe Hernández Alvarado ', 'f', 4, 15, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:30:17', '2024-09-06 12:30:17'),
(514, '24060003', NULL, 'Cristopher Ocaña Ruiz', 'm', 2, 10, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:30:22', '2024-09-03 18:30:22'),
(515, '24080045', '24E30316', 'Carlos Mario Rueda Domínguez ', 'm', 1, 13, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:30:52', '2024-09-10 10:54:07'),
(516, '24040017', NULL, 'Kenia Gisel Aguilar Sánchez ', 'f', 4, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:31:09', '2024-09-03 18:31:09'),
(517, '24100007', '24E30323', 'Nimsy gabriela garcia mendez ', 'f', 6, 13, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:31:20', '2024-09-10 10:49:57'),
(518, '24100002', '24E30324', 'José Daniel Lujano Gómez ', 'm', 6, 5, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:31:26', '2024-09-06 10:42:11'),
(519, '24040040', NULL, 'Olán Calderón Berenice ', 'f', 4, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:31:26', '2024-09-03 18:31:26'),
(520, '24040063', NULL, 'Cecilia Sánchez Gómez', 'f', 4, 9, 5, 'ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:31:32', '2024-09-03 18:31:32'),
(521, '24050019', NULL, 'Roberto Carlos Juárez Ramirez ', 'm', 7, 5, 5, 'ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:31:36', '2024-09-06 11:46:21'),
(522, '24080003', NULL, 'Fernanda Paola Torres Garcia ', 'f', 1, 8, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:32:49', '2024-09-03 18:32:49'),
(523, '24080038', NULL, 'Diego Martínez Acosta ', 'm', 1, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:33:07', '2024-09-03 18:33:07'),
(524, '24070043', NULL, 'Edwin Yahir González Romero ', 'm', 3, 8, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:33:47', '2024-09-03 18:33:47'),
(525, '24080005', NULL, 'Alexa García Aguilar ', 'f', 1, 8, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:33:52', '2024-09-03 18:33:52'),
(526, '25080011', '24E30298', 'Elsy Marissa Jimenez Perez ', 'f', 1, 5, 5, 'No, ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:34:00', '2024-09-06 10:30:39'),
(527, '24010019', NULL, 'Mia Fernanda Pérez Rivera ', 'f', 5, 12, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:34:38', '2024-09-03 18:34:38'),
(528, '24070033', NULL, 'Joyce Jocelyn ', 'f', 3, 14, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:35:12', '2024-09-03 18:35:12'),
(529, '24060059', NULL, 'Mauricio diaz de la cruz ', 'm', 2, 10, 5, 'Ninguno', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:35:45', '2024-09-03 18:35:45'),
(530, '24080033', NULL, 'Marcos Antonio Pérez Juárez ', 'm', 2, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:36:53', '2024-09-03 18:36:53'),
(531, '24040054', NULL, 'Jesús Alexis Vázquez de la cruz ', 'm', 4, 6, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:37:23', '2024-09-03 18:37:23'),
(532, '24040062', NULL, 'Graco Ulises Vázquez Cabrera', 'm', 4, 10, 5, 'ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:38:03', '2024-09-03 18:38:03'),
(533, '24050003', NULL, 'Noé Dorilian Álvarez Díaz ', 'm', 7, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:40:27', '2024-09-03 18:40:27'),
(534, '24070080', NULL, 'Erick Javier Castro Llergo', 'm', 3, 5, 5, 'Ningúna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:41:12', '2024-09-06 10:44:18'),
(535, '24060063', '24E30133', 'Alondra Mariana Alvarado Camacho', 'f', 2, 5, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:41:26', '2024-09-06 09:36:11'),
(536, '24060052', NULL, 'Henry Eduardo Rodríguez García ', 'm', 2, 9, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:43:51', '2024-09-03 18:43:51'),
(537, '24080004', NULL, 'José Eduardo Torres Iglesia ', 'm', 1, 10, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:44:17', '2024-09-03 18:44:17'),
(538, '24070067', '24E30253', 'Elizabeth Pérez Jiménez ', 'f', 3, 13, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:44:24', '2024-09-10 10:53:53'),
(539, '24050015', NULL, 'Edward Antonio Ocampo Hernández', 'm', 7, 9, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:46:18', '2024-09-03 18:46:18'),
(540, '24070038', '24E30237', 'María José Hernández Rosado ', 'f', 3, 13, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:46:47', '2024-09-10 10:52:19'),
(541, '24080041', NULL, 'RIGOBERTO LEÓN DE LA CRUZ ', 'm', 1, 14, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:49:57', '2024-09-03 18:49:57'),
(542, '24010025', NULL, 'Edwin Manuel Aguilar Jiménez ', 'm', 5, 13, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:50:16', '2024-09-03 18:50:16'),
(543, '24050023', NULL, 'Fernando José Alvarez Mondragón ', 'm', 7, 8, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:50:51', '2024-09-17 13:51:23'),
(544, '24060060', NULL, 'Jose Rodolfo Lorenzo Morales ', 'm', 2, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:51:03', '2024-09-03 18:51:03'),
(545, '24040042', NULL, 'Ronaldo Jiménez Mondragón ', 'm', 4, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:51:49', '2024-09-03 18:51:49'),
(546, '24040069', NULL, 'Virginia Yarentzi Hernandez Lopez ', 'f', 4, 8, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:51:55', '2024-09-03 18:51:55'),
(547, '24080028', '24E30304', 'Joseph Maximiliano', 'm', 1, 13, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:52:14', '2024-09-10 10:50:59'),
(548, '24070074', NULL, 'Gabriela Gómez Alvarado ', 'f', 3, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:53:19', '2024-09-03 18:53:19'),
(549, '24040003', NULL, 'Emiliano Zenteno Gutiérrez ', 'm', 4, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:57:31', '2024-09-03 18:57:31'),
(550, '24050031', NULL, 'Miguel Leonardo Sánchez Barrueta ', 'm', 7, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:57:31', '2024-09-03 18:57:31'),
(551, '24050040', NULL, 'Luis Fernando Reyes Méndez ', 'm', 7, 9, 5, 'no ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:58:23', '2024-09-03 18:58:23'),
(552, '24070017', NULL, 'Alondra Estefania Guzman De La Cruz ', 'f', 3, 11, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:59:35', '2024-09-03 18:59:35'),
(553, '24060025', NULL, 'Rider Vladimir Zarracino Alejandro ', 'm', 2, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 18:59:40', '2024-09-03 18:59:40'),
(554, '24070022', NULL, 'Alejandra Martínez González ', 'f', 3, 6, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:02:17', '2024-09-03 19:02:17');
INSERT INTO `students` (`id`, `inscription_code`, `university_enrollment`, `name`, `gender`, `career_id`, `activity_id`, `period_id`, `illnes`, `observations`, `grades`, `first_validation`, `second_validation`, `validated_by`, `validated_at`, `validation_token`, `certificate_downloaded`, `created_at`, `updated_at`) VALUES
(555, '24070013', NULL, 'Erika Zurita Guzmán ', 'f', 3, 8, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:03:16', '2024-09-03 19:03:16'),
(556, '24080026', NULL, 'Georgina samantha perez pineda ', 'f', 1, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:04:28', '2024-09-03 19:04:28'),
(557, '24040035', NULL, 'Rosa Isela Cornelio Torres ', 'f', 4, 6, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:05:35', '2024-09-03 19:05:35'),
(558, '24070065', '24E30251', 'Alexander Paz Pérez ', 'm', 3, 13, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:06:03', '2024-09-10 10:56:15'),
(559, '24070011', NULL, 'Itzel Guadalupe Fócil Hernández ', 'f', 3, 8, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:06:05', '2024-09-03 19:06:05'),
(560, '24070010', NULL, 'Evelin Cristhell Ramón Cambrano ', 'f', 3, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:07:12', '2024-09-03 19:07:12'),
(561, '24070003', '24E30207', 'Santiago de Jesús Ayala Alvarado ', 'm', 3, 13, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:10:00', '2024-09-10 10:49:24'),
(562, '24060058', NULL, 'David isidro ', 'm', 2, 8, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:10:15', '2024-09-03 19:10:15'),
(563, '24070069', '24E30220', 'Alejandra Guadalupe Garcia Beltran', 'f', 3, 13, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:12:24', '2024-09-10 10:56:38'),
(564, '24080021', '24E30305', 'Alejandra Montiel Silvan', 'f', 1, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:12:24', '2024-09-06 10:34:09'),
(565, '24080012', NULL, 'Keila Sánchez Broca ', 'f', 1, 15, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:12:41', '2024-09-03 19:12:41'),
(566, '08005424', NULL, 'Jose Julian', 'm', 1, 10, 5, 'Ninguno ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:14:51', '2024-09-03 19:14:51'),
(567, '24070001', '24E30254', 'Mishel Pérez Sánchez ', 'f', 3, 5, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:15:36', '2024-09-06 11:26:45'),
(568, '24070025', NULL, 'Paola Tessmann Velázquez ', 'f', 3, 14, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:16:30', '2024-09-03 19:16:30'),
(569, '24050010', '24E30105', 'Ximena Paola Hernandez Martinez ', 'f', 7, 13, 5, 'Ningún ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:18:04', '2024-09-10 10:54:51'),
(570, '24080047', NULL, 'Jorge Luis Morales Pérez ', 'm', 1, 11, 5, 'No tengo una enfermedad crónica ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:20:22', '2024-09-03 19:20:22'),
(571, '24050001', NULL, 'Irving Aldair Zea Balcazar ', 'm', 7, 9, 5, 'Ninguna enfermedad ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:21:01', '2024-09-03 19:21:01'),
(572, '24070005', NULL, 'Sarao Pinto Teresita de Jesús ', 'f', 3, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:21:59', '2024-09-03 19:21:59'),
(573, '24060046', NULL, 'Jared Alejandro Hernández Cruz ', 'm', 2, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:22:27', '2024-09-03 19:22:27'),
(574, '24040050', NULL, 'Julia Guadalupe Méndez Cruz', 'f', 4, 11, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:31:00', '2024-09-03 19:31:00'),
(575, '24070035', NULL, 'Betzy Alexandra Pérez García ', 'f', 3, 8, 5, 'NINGUNA', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:31:54', '2024-09-03 19:31:54'),
(576, '24060061', NULL, 'Jesús Emanuel Lorenzo Lorenzo', 'm', 2, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:32:38', '2024-09-03 19:32:38'),
(577, '24070046', NULL, 'Zulma paola cordero Chávez ', 'f', 3, 11, 5, ' Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:32:56', '2024-09-03 19:32:56'),
(578, '24070064', NULL, 'Yuridia del Carmen  García Jiménez', 'f', 3, 13, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:34:12', '2024-09-03 19:34:12'),
(579, '24070045', NULL, 'ximena Alvarado colli ', 'f', 3, 8, 5, 'no', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:35:14', '2024-09-03 19:35:14'),
(580, '24080014', NULL, 'Jhristo Amos Cárdenas Cábrera ', 'm', 1, 10, 5, 'Ninguno ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:36:48', '2024-09-03 19:36:48'),
(581, '24070032', NULL, 'Yessenia Alcaraz luna ', 'f', 3, 15, 5, 'Ningúna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:37:27', '2024-09-03 19:37:27'),
(582, '24040011', NULL, 'Cristian Esteban Ballina Cruz ', 'm', 4, 10, 2, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:37:43', '2024-09-03 19:37:43'),
(583, '24040056', NULL, 'Jaydy Valeria Ocaña Osorio ', 'f', 4, 8, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:39:33', '2024-09-03 19:39:33'),
(584, '24010015', NULL, 'Martha Ivet Salas Sánchez ', 'f', 5, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:39:36', '2024-09-03 19:39:36'),
(585, '24060040', NULL, 'Angel de Jesús Jiménez Mendoza ', 'm', 2, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:41:31', '2024-09-03 19:41:31'),
(586, '24010028', NULL, 'Joselyn Gómez Arjona ', 'f', 5, 11, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:43:14', '2024-09-03 19:43:14'),
(587, '24060068', '24E30139', 'Brayam Camacho López ', 'm', 2, 5, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:48:45', '2024-09-06 09:48:39'),
(588, '24080007', '24E30303', 'Ángel Humberto Méndez Méndez', 'm', 1, 5, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:50:17', '2024-09-06 10:32:51'),
(589, '24070066', '24E30262', 'Kikey Guadalupe Rodriguez Cornelio ', 'f', 3, 13, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:53:02', '2024-09-10 10:51:20'),
(590, '24060048', NULL, 'Cielito Martinez Villarreal ', 'f', 2, 12, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:56:18', '2024-09-03 19:56:18'),
(591, '24040060', NULL, 'Diego Axel López Valencia ', 'm', 4, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 19:59:50', '2024-09-03 19:59:50'),
(592, '24010027', NULL, 'Daríana Guadalupe Ramírez Hernández ', 'f', 5, 11, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:02:59', '2024-09-03 20:02:59'),
(593, '24050036', NULL, 'Octavio Romero Díaz ', 'm', 7, 5, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:03:31', '2024-09-03 20:03:31'),
(594, '24070070', NULL, 'Gloria Esveidy Ramírez Cano ', 'f', 3, 11, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:05:29', '2024-09-03 20:05:29'),
(595, '24060042', '24E30329', 'Ángel Gabriel Hernández Hernández', 'm', 2, 13, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:12:45', '2024-09-10 10:53:41'),
(596, '24050013', NULL, 'Jose Armando Jimenez Salas', 'm', 7, 9, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:14:32', '2024-09-03 20:14:32'),
(597, '24060006', NULL, 'Diana Gisselle Hernández Arias ', 'f', 2, 11, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:25:06', '2024-09-03 20:25:06'),
(598, '24010009', NULL, 'Armando Gordillo Villegas', 'm', 5, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:29:10', '2024-09-03 20:29:10'),
(599, '24060024', NULL, 'Bryan Alexander Baez Cruz ', 'm', 2, 5, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:30:09', '2024-09-03 20:30:09'),
(600, '24010020', NULL, 'CELESTE GUADALUPE LÓPEZ CASTELLANOS ', 'f', 5, 6, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:34:23', '2024-09-03 20:34:23'),
(601, '24050050', NULL, 'Erick Daniel Soliz Pérez ', 'm', 7, 11, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:40:31', '2024-09-03 20:40:31'),
(602, '24080043', NULL, 'Rosaura Yamileth Gómez Esteban', 'f', 1, 10, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:47:23', '2024-09-03 20:47:23'),
(603, '24060022', NULL, 'Nombre, Danury Dominguez Ramirez', 'f', 2, 8, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:48:32', '2024-09-03 20:48:32'),
(604, '24050027', NULL, 'José Julián Sánchez Pérez ', 'm', 7, 5, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:51:02', '2024-09-03 20:51:02'),
(605, '24050049', NULL, 'Henrry Guadalupe Garcia Gutierrez ', 'm', 7, 11, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:56:10', '2024-09-03 20:56:10'),
(606, '24050051', NULL, 'Fabrizzio Pedrero Mireles', 'm', 7, 9, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:57:27', '2024-09-03 20:57:27'),
(607, '24050009', NULL, 'José Armando Pérez Durán ', 'm', 7, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 20:57:57', '2024-09-03 20:57:57'),
(608, '24060080', NULL, 'Pedro Damián Solís Martínez', 'm', 2, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:01:19', '2024-09-03 21:01:19'),
(609, '24060043', NULL, 'Guillermo Julian Cruz Sanchez', 'm', 2, 8, 5, 'no tengo ni una enfermedas ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:04:29', '2024-09-03 21:04:29'),
(610, '24070050', NULL, 'Lucero Gil Aguilar ', 'f', 3, 14, 5, 'Embarazo ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:07:25', '2024-09-12 09:14:31'),
(611, '24010029', NULL, 'Larissa Zahori Salas Hernández ', 'f', 5, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:07:53', '2024-09-03 21:07:53'),
(612, '24007655', NULL, 'Leydiiii ', 'f', 1, 14, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:09:55', '2024-09-03 21:09:55'),
(613, '24070056', NULL, 'Diana Cristeel Perez Vazquez ', 'f', 3, 11, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:13:15', '2024-09-06 09:37:45'),
(614, '24080042', NULL, 'Luz Clarissa Muñoz Gómez ', 'f', 1, 14, 5, 'NO', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:17:05', '2024-09-03 21:17:05'),
(615, '24060038', NULL, 'Damian De La Cruz Gómez ', 'm', 2, 14, 5, 'No nada', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:17:09', '2024-09-03 21:17:09'),
(616, '24070055', NULL, 'Edilberto Tafolla Recinos ', 'm', 3, 8, 5, '\nNinguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:19:49', '2024-09-03 21:19:49'),
(617, '24050053', NULL, 'José Manuel Díaz Vasconcelo ', 'm', 7, 8, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:24:59', '2024-09-03 21:24:59'),
(618, '24100003', NULL, 'DANIELA VALENCIA OSORIO', 'f', 6, 11, 5, 'NINGUNA', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:45:48', '2024-09-03 21:45:48'),
(619, '24080044', NULL, 'Henrry Jeremías Gutiérrez Gutiérrez ', 'm', 1, 10, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 21:47:48', '2024-09-03 21:47:48'),
(620, '24040020', NULL, 'Iker Giancarlo Sánchez Díaz ', 'm', 4, 5, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 22:46:10', '2024-09-03 22:46:10'),
(621, '24080013', NULL, 'Elvis Yahir Pardo Morales ', 'm', 1, 9, 5, 'ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-03 23:28:05', '2024-09-03 23:28:05'),
(622, '24040036', NULL, 'Kevin Osiris López Méndez ', 'm', 4, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 06:58:48', '2024-09-04 06:58:48'),
(623, '24070075', NULL, 'Perla Rubí Hernandez Diaz ', 'f', 3, 8, 2, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 07:10:30', '2024-09-04 07:10:30'),
(624, '24070078', NULL, 'Carmen Guadalupe González Martinez ', 'f', 3, 10, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 07:29:02', '2024-09-04 07:29:02'),
(625, '24080046', NULL, 'carlos Paul pintando Alvarado ', 'm', 1, 11, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 08:45:04', '2024-09-04 08:45:04'),
(626, '24070062', NULL, 'Soledad Torrez Pérez ', 'f', 3, 9, 5, 'Negativo ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 08:48:22', '2024-09-04 08:48:22'),
(627, '24070072', NULL, 'Angel Geovanny Ordóñez rincón ', 'm', 3, 12, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 08:54:12', '2024-09-04 08:54:12'),
(628, '24010022', NULL, 'María Etelvina Bautista López ', 'f', 5, 10, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 09:04:52', '2024-09-04 09:04:52'),
(629, '24070058', '24E30208', 'Christopher Orlando Ayala Torres ', 'm', 3, 5, 5, 'no', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 09:15:38', '2024-09-06 09:52:27'),
(630, '24050042', NULL, 'Magdiel Ramirez Lujano ', 'm', 7, 10, 5, 'No ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 09:41:08', '2024-09-04 09:41:08'),
(631, '24050029', NULL, 'Alejandro Montoya Arguelles', 'm', 7, 10, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 09:49:08', '2024-09-04 09:49:08'),
(632, '050053', '23E30094', 'Luis Armando Aguilar Chable', 'm', 7, 6, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"4\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"2\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-09-04 11:32:23', '5RdNrDYlsxm6EbUnC98igJygXnAd5AMk', 0, '2024-09-04 10:33:11', '2024-09-05 09:24:33'),
(633, '24070054', NULL, 'Margarita del Carmen García Castellanos ', 'f', 3, 11, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 11:03:28', '2024-09-04 11:03:28'),
(634, '2314568', '23E30245', 'Lisi Paola Cornelio Rosado', 'f', 3, 14, 2, 'Asmática', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 11:11:25', '2024-09-04 11:11:25'),
(635, '2314563', '23E30366', 'Zuleyma Suárez García', 'f', 2, 6, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"4\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Aracely del Carmen Medina Calderón', '2024-09-05 09:22:33', 'PfmEYE8h2ef8dyC0wGBL208Mc0oCT1Qt', 1, '2024-09-04 12:23:18', '2024-09-11 13:52:06'),
(636, '24050039', NULL, 'Alexander Meneses Sánchez ', 'm', 7, 9, 5, 'No tengo ninguna enfermedad ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 12:44:44', '2024-09-04 12:44:44'),
(637, '24050032', NULL, 'Henrry Daniel Salvatierra Yeo ', 'm', 7, 9, 5, 'Ninguno', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 12:49:30', '2024-09-04 12:49:30'),
(638, '24070027', '24E30250', 'José Emilio Pablo Gaspar ', 'm', 3, 5, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 13:29:34', '2024-09-06 10:35:45'),
(639, '24010010', NULL, 'Yadira Gómez García', 'f', 5, 14, 5, 'No, ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 14:27:35', '2024-09-04 14:27:35'),
(640, '24050017', NULL, 'Oscar Palomeque Alejo ', 'm', 7, 9, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 14:33:49', '2024-09-04 14:33:49'),
(641, '24060012', NULL, 'Emanuel Nares Morales', 'm', 2, 9, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 15:02:55', '2024-09-04 15:02:55'),
(642, '24060070', NULL, 'Jonathan Kaleb Ortega Figueroa', 'm', 2, 11, 5, 'ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 15:04:24', '2024-09-04 15:04:24'),
(643, '24060053', NULL, 'Bryan David Jiménez López', 'm', 2, 14, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 15:10:11', '2024-09-04 15:10:11'),
(644, '24050047', NULL, 'Gerardo Alexis Del Valle Álvarez ', 'm', 7, 10, 5, 'No padezco ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 18:27:29', '2024-09-04 18:27:29'),
(645, '24010026', NULL, 'Tina Itzayana Gallegos Hernández ', 'f', 1, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 18:30:44', '2024-09-04 18:30:44'),
(646, '24070059', NULL, 'Jesus Adrian de la cruz reyes ', 'm', 3, 11, 5, 'ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 19:30:53', '2024-09-04 19:30:53'),
(647, '24050011', NULL, 'Sergio Arturo Sala Melo ', 'm', 7, 11, 5, 'ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 20:43:23', '2024-09-04 20:43:23'),
(648, '24050014', NULL, 'Angel Fernando Tamayo Montilla ', 'm', 7, 11, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 20:55:38', '2024-09-04 20:55:38'),
(649, '24040064', NULL, 'Omar Emiliano Jauregui Duran ', 'm', 3, 11, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-04 22:37:30', '2024-09-04 22:37:30'),
(650, '24050016', NULL, 'José Bryan mayo garcia', 'm', 7, 5, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 08:35:34', '2024-09-05 08:35:34'),
(651, '24050012', NULL, 'Adner Salomón Pérez Hernández ', 'm', 7, 11, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:17:37', '2024-09-05 09:17:37'),
(652, '24060072', NULL, 'Jorge Bautista Cruz', 'm', 2, 12, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:42:33', '2024-09-05 09:42:33'),
(653, '24070019', NULL, 'allison elena rodriguez de la cruz ', 'f', 3, 6, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:47:34', '2024-09-05 09:47:34'),
(654, '24060001', '24E30132', 'Luis Mario Alcázar Morales ', 'm', 2, 5, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:51:18', '2024-09-06 09:43:40'),
(655, '24060028', NULL, 'Jesús Alejandro Alvarado Guzmán ', 'm', 2, 5, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:51:54', '2024-09-05 09:51:54'),
(656, '24060002', NULL, 'LUIS ERNESTO DOMÍNGUEZ RAMOS ', 'm', 2, 5, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:52:39', '2024-09-05 09:52:39'),
(657, '24060026', '24E30175', 'Gabriel Martínez Torrez', 'm', 2, 5, 5, 'NINGUNA', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:52:52', '2024-09-06 09:40:07'),
(658, '24010003', NULL, 'Esveidy Alondra Pérez Juárez', 'f', 5, 13, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:53:26', '2024-09-05 09:53:26'),
(659, '24060041', NULL, 'Ignacio Jiménez Cordova', 'm', 2, 9, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:54:20', '2024-09-05 09:54:20'),
(660, '24060013', '24E30140', 'Lohengrin Ariel Castañeda Arias', 'm', 2, 5, 5, 'NINGUNA', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:56:04', '2024-09-06 09:41:48'),
(661, '24060030', '24E30156', 'Rodriver Vidal Javier Pérez ', 'm', 2, 5, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:56:04', '2024-09-06 09:38:49'),
(662, '2445877', NULL, 'Pedro Luis González Penagos', 'm', 2, 9, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:56:05', '2024-09-05 09:56:05'),
(663, '24789321', NULL, 'Pedro Ramón Doporto Alvarado', 'm', 2, 8, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 09:58:55', '2024-09-05 09:58:55'),
(664, '2445123', NULL, 'Emily Beam Múñoz', 'f', 6, 13, 5, 'TDH, Malformación de angeoma venoso (tumor). Presento convulsiones, estoy en tratamiento.', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 11:14:26', '2024-09-05 11:17:35'),
(665, '240134569', NULL, 'Alexander de la Cruz Ascencio', 'm', 2, 9, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 12:07:12', '2024-09-05 12:07:12'),
(666, '24010030', NULL, 'JOSE ANDRES RAMIREZ GURRIA', 'm', 2, 5, 5, 'NINGUNA', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 12:07:34', '2024-09-05 12:07:34'),
(667, '24010031', NULL, 'Alicia Del Carmen Redendez Álvarez ', 'f', 2, 14, 5, 'ASMA ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 12:09:09', '2024-09-05 12:27:00'),
(668, '24010033', NULL, 'Angela De Los Santos Cruz De La Cruz ', 'f', 2, 14, 5, 'NINGUNA', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 12:10:00', '2024-09-05 12:29:59'),
(669, '24010036', NULL, 'Amanda Sugey Montes De Oca Ramírez ', 'f', 2, 14, 5, 'NINGUNA', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 12:12:24', '2024-09-05 12:31:29'),
(670, '23070027', '23E30268', 'Alexis Guadalupe Narez Jiménez', 'm', 3, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"1\",\"second_criteria\":\"1\",\"third_criteria\":\"1\",\"fourth_criteria\":\"1\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"1\",\"seventh_criteria\":\"1\"}', 1, 1, 'Rafael May Segura', '2024-09-09 08:39:15', 'K81d3qRmfzchoJ9UAgWpfiQHsYnvOLNF', 0, '2024-09-05 12:23:22', '2024-09-09 08:39:15'),
(671, '23080036', '23E30298', 'Darwin Adner Gómez Pérez', 'm', 1, 10, 2, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 1, 1, 'Rafael May Segura', '2024-09-09 08:39:44', 'd8dA1eHC8RTwImGIhOIMNo758K2ber60', 0, '2024-09-05 12:25:02', '2024-09-09 08:39:44'),
(672, '23050043', '23E30112', 'Román Fernandez Shilon', 'm', 7, 12, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"4\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Migda Leydi Sánchez Calix', '2024-10-11 15:13:28', '49bTL7aGfHpjomEve6TPr0b5yrt96sCO', 0, '2024-09-05 12:32:03', '2024-10-11 15:13:37'),
(673, '2405666', NULL, 'Jesús Antonio Vázquez Castro', 'm', 2, 10, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 13:07:18', '2024-09-05 13:07:18'),
(674, '2398765', '23E30252', 'Melany Michelle García Gómez', 'f', 3, 8, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"1\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Migda Leydi Sánchez Calix', '2024-09-05 13:16:07', 'p0ywUDIHTRMQrGbzzChWXfiMMaT537Hd', 1, '2024-09-05 13:15:31', '2024-09-09 13:04:55'),
(675, '23987654', '23E30196', 'Iber Auner López Torres', 'm', 2, 12, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Migda Leydi Sánchez Calix', '2024-10-14 15:17:40', 'BiSs4niihFihjwihVWFy5JpHFWj634xE', 1, '2024-09-05 13:43:57', '2024-10-14 15:20:20'),
(676, '24080039', NULL, 'Angel Fabrizzio Hernández Arcia', 'm', 1, 11, 5, 'TDAH', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 13:57:44', '2024-09-05 13:57:44'),
(677, '24060064', '24E30138', 'Alessandro Cal y Mayor Díaz', 'm', 2, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 14:12:48', '2024-09-06 09:38:07'),
(678, '24070020', NULL, 'Amisaday Pérez Valencia ', 'f', 3, 11, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 16:25:21', '2024-09-05 16:25:21'),
(679, '24080054', '24E30335', 'José Julián Hernández Vázquez ', 'm', 1, 5, 5, 'Ninguno ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 18:16:30', '2024-09-06 10:33:26'),
(680, '01000624', NULL, 'Guadalupe Michel Reyes Ramirez', 'f', 5, 14, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 18:50:59', '2024-09-05 18:50:59'),
(681, '24060029', NULL, 'Yamili Bocanegra Cornelio ', 'f', 2, 11, 5, 'Presión baja ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 18:55:32', '2024-09-05 18:55:32'),
(682, '24060009', NULL, 'Luis Alberto Rodríguez Hernández ', 'm', 2, 11, 5, 'Si me canso ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 18:56:20', '2024-09-05 18:56:20'),
(683, '24060033', NULL, 'Brini Ruiz Sanchez ', 'f', 2, 11, 5, 'Ninguno', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 18:56:23', '2024-09-05 18:56:23'),
(684, '24060055', NULL, 'Juana Jiménez Acosta ', 'f', 2, 11, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 18:56:39', '2024-09-05 18:56:39'),
(685, '24060005', '24E30169', 'Leydi Patricia López Jiménez', 'f', 2, 5, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 19:18:29', '2024-09-06 09:42:53'),
(686, '01001124', NULL, 'Lael Alexander Leyva Gómez ', 'm', 5, 13, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-05 19:52:59', '2024-09-05 19:52:59'),
(687, '24040026', NULL, 'José Luis Parissi Lozano ', 'm', 4, 14, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-06 11:39:52', '2024-09-06 11:39:52'),
(688, '24040078', NULL, 'Gabriel Custodio Miranda', 'm', 4, 10, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-06 12:17:55', '2024-09-06 12:17:55'),
(689, '24080031', NULL, 'Henrry Medardo de la Cruz Medina', 'm', 1, 14, 5, 'no ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-06 21:24:29', '2024-09-06 21:24:29'),
(690, '24060049', NULL, 'EDWARD NAVARRO LORCA', 'm', 2, 10, 5, 'NO', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-07 20:43:22', '2024-09-07 20:43:22'),
(691, '24070073', NULL, 'José Manuel García Ruiz', 'm', 3, 10, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-07 23:26:31', '2024-09-07 23:26:31'),
(692, '24040065', NULL, 'Ana Laura Rueda Domínguez ', 'f', 1, 14, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-09 09:46:41', '2024-09-09 09:46:41'),
(693, '24080032', NULL, 'Elí García Hernández', 'm', 1, 10, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-09 11:09:07', '2024-09-09 11:09:07'),
(694, '24060084', NULL, 'Urias Solís Gutiérrez ', 'm', 2, 7, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-09 11:33:59', '2024-09-09 11:33:59'),
(695, '2401012345', NULL, 'Jhonatan Reyes Gutiérrez', 'm', 2, 7, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-09 13:38:45', '2024-09-09 13:38:45'),
(696, '24060011', NULL, 'Ángel Mauricio Mendes Morales ', 'm', 2, 7, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-09 21:32:01', '2024-09-09 21:32:01');
INSERT INTO `students` (`id`, `inscription_code`, `university_enrollment`, `name`, `gender`, `career_id`, `activity_id`, `period_id`, `illnes`, `observations`, `grades`, `first_validation`, `second_validation`, `validated_by`, `validated_at`, `validation_token`, `certificate_downloaded`, `created_at`, `updated_at`) VALUES
(697, '24010021', NULL, 'Cristian Vázquez Hernández', 'm', 5, 14, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-10 10:02:10', '2024-09-10 10:02:10'),
(698, '24070060', NULL, 'Jesús Miguel Vázquez Aguilar ', 'm', 3, 5, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-11 15:11:42', '2024-09-11 15:11:42'),
(699, '24060076', NULL, 'Juan Diego Luna Altunar ', 'm', 2, 14, 5, 'No', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-12 08:46:26', '2024-09-12 08:46:26'),
(700, '23005478', '23E30190', 'Juana Hernández Villarreal', 'f', 2, 9, 2, 'Ninguna', NULL, '{\"first_criteria\":\"4\",\"second_criteria\":\"4\",\"third_criteria\":\"4\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"4\"}', 1, 1, 'Abel Pérez Rodríguez', '2024-09-22 17:30:09', 'E87tpEwnzzgmnaMEL8Lps2yNogH7QBek', 0, '2024-09-12 08:59:14', '2024-09-22 17:30:09'),
(701, '24080057', NULL, 'Ulises Javier Beltrán Madrigal', 'm', 1, 6, 5, '.', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-12 09:09:49', '2024-09-12 09:09:49'),
(702, '24060034', NULL, 'Monserrat López López', 'f', 2, 6, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-12 09:17:14', '2024-09-12 09:20:41'),
(703, '24050052', NULL, 'Brayan Alexander Ruiz Sánchez', 'm', 2, 11, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-12 09:20:15', '2024-09-12 09:20:15'),
(704, '24060071', NULL, 'Edaly Estrella Díaz Sánchez ', 'f', 2, 6, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-12 09:26:00', '2024-09-12 09:26:00'),
(705, '24004443', NULL, 'Eddy de Jesús Martínez Landero ', 'm', 4, 12, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-12 11:03:12', '2024-09-12 11:03:12'),
(706, '24060082', NULL, 'José Adulfo Ramírez Hernández', 'm', 2, 7, 5, 'ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-12 11:34:31', '2024-09-12 11:34:31'),
(707, '24070075', NULL, 'Perla Rubí Hernández Pérez ', 'f', 3, 14, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-12 12:19:21', '2024-09-12 12:19:21'),
(708, '24060050', NULL, 'Edwin Saúl de la Cruz Méndez ', 'm', 2, 7, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-12 12:20:32', '2024-09-12 12:20:32'),
(709, '010101', '23E30143', 'Alex Armando Sánchez Hernández', 'm', 7, 8, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-09-18 09:43:41', 'xxI2AGRqCGXUL7CcM97s3efkevH0dKVO', 1, '2024-09-17 12:16:15', '2024-09-18 09:46:37'),
(710, '24060085', NULL, 'Yurliana Sánchez Cruz', 'f', 2, 7, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-17 14:13:38', '2024-09-17 14:13:38'),
(711, '24456123', NULL, 'Flor Jazmín González Cruz', 'f', 2, 15, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-18 08:44:59', '2024-09-18 08:44:59'),
(712, '24789612', NULL, 'Ana Belén García Pérez', 'f', 2, 10, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-18 09:52:36', '2024-09-18 09:52:36'),
(713, '24040080', NULL, 'Ivanna de los Ángeles Caravantes Alegría', 'f', 4, 7, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-18 10:26:33', '2024-09-18 10:26:33'),
(715, '24050028', NULL, 'Kevin Aguilar Cornelio ', 'm', 7, 12, 5, 'Ninguna ', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-09-21 19:12:19', '2024-09-21 19:12:19'),
(716, '01010101', '23E30124', 'David Antonio Luna Martínez', 'm', 7, 8, 2, 'Problemas cardiacos', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-10-09 14:21:37', 'qeECmjgicAXpbeGiu3hONCm2wfScMNi4', 1, '2024-10-03 10:43:49', '2024-10-09 14:24:47'),
(717, '01020202', '23E30137', 'Mauro Priego Iduarte', 'm', 7, 8, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"3\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"3\"}', 1, 1, 'Gabriel Osorio Ascencio', '2024-10-09 14:25:58', '4pLpHswTRsHlWwwXi2OAzvMEH6fyd7oU', 1, '2024-10-03 10:44:38', '2024-10-09 14:27:35'),
(718, '24040081', NULL, 'Karen Guadalupe Aguilar Sánchez', 'f', 4, 15, 5, 'Ninguna', NULL, '{\"first_criteria\":\"0\",\"second_criteria\":\"0\",\"third_criteria\":\"0\",\"fourth_criteria\":\"0\",\"fifth_criteria\":\"0\",\"sixth_criteria\":\"0\",\"seventh_criteria\":\"0\"}', 0, 0, NULL, NULL, NULL, 0, '2024-10-10 19:48:38', '2024-10-10 19:48:38'),
(719, '012578', '23E30230', 'Andrés Francisco Valencia Pérez', 'm', 2, 12, 2, 'Ninguna', NULL, '{\"first_criteria\":\"3\",\"second_criteria\":\"3\",\"third_criteria\":\"3\",\"fourth_criteria\":\"3\",\"fifth_criteria\":\"4\",\"sixth_criteria\":\"4\",\"seventh_criteria\":\"3\"}', 1, 1, 'Migda Leydi Sánchez Calix', '2024-10-14 15:19:54', 'ogYuZ2zyeT6QKobd1c5FE51xihRHGyTc', 1, '2024-10-14 15:19:40', '2024-10-14 17:15:33'),
(720, '0502547', '23E30157', 'Samuel Jesús Artime Méndez', 'm', 2, 12, 2, 'Ninguna', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"3\",\"seventh_criteria\":\"2\"}', 1, 1, 'Migda Leydi Sánchez Calix', '2024-10-14 15:26:36', 'cSFtxPb5fV4LsQkqHR4rJyJCWa1YpCMT', 1, '2024-10-14 15:26:27', '2024-10-14 17:13:26'),
(721, '23080045', '23E30327', 'Javier Vázquez Jiménez', 'm', 1, 5, 2, 'ninguna ', NULL, '{\"first_criteria\":\"2\",\"second_criteria\":\"2\",\"third_criteria\":\"2\",\"fourth_criteria\":\"2\",\"fifth_criteria\":\"2\",\"sixth_criteria\":\"2\",\"seventh_criteria\":\"2\"}', 1, 1, 'Ponciano García Castellanos', '2024-11-13 12:01:28', 'ThMYDedN4jN7nzgFjYwW82xJI2HLFpUf', 1, '2024-10-17 08:46:24', '2024-11-13 23:37:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Example Admin User', 'admin@example.com', '2024-04-11 20:39:12', '$2y$12$uGLn2qREF.Rto9vuk6Y5k.R0SiWqS0TOJuMwbD6iBJWKlEkQPjhay', 'YZONrXMx3eAQHG3zAHgjKGmdWBVwnksj1J7ztKrMYauXPDktukM7flMah0W5', '2024-04-11 20:39:12', '2024-05-02 11:52:05'),
(6, 'Ponciano García Castellanos', 'ponciano.gc@regionsierra.tecnm.mx', NULL, '$2y$12$rJ1G4fbYNEyZBS2s7LY4pumzv597FPInPnctpPmLcGnTsBdMY06lu', 'YKFk8HsW0r4ldq1a6i6CdRyzpcV9jDZ8nOlk4ya0Dpoe18F8E4IZWjwjANEO', '2024-05-02 11:33:49', '2024-05-02 14:52:27'),
(7, 'Migda Leydi Sánchez Calix', 'extraescolar@regionsierra.tecnm.mx', NULL, '$2y$12$bqpP.vplvT6si4oXvSKis.AYPcXA5vfs8mB5n1A1Oam46soNd1G2G', 'zGPIV6NQgucS3g1azWGrRsUkWueeUGdd87S9wGa4UaYKTvIP4dAjlGOHgCZZ', '2024-05-02 11:47:00', '2025-01-28 12:40:29'),
(8, 'Aracely del Carmen Medina Calderón', 'aracely.mc@regionsierra.tecnm.mx', NULL, '$2y$12$wmsIMByl2FewJOTBGuGp4.JPo/mfYI4bwVqbuefGj64iBQlYE.0Nq', 'Fm301zCcZv0FTraa45BUprfywZLEvT5Sh2ISwf8bEcsntBiZyjK9lbcYQCnD', '2024-05-02 14:00:01', '2024-06-19 11:21:27'),
(9, 'Roberto Méndez Velázquez', 'roberto.mv@regionsierra.tecnm.mx', NULL, '$2y$12$DhAqRBWA2iITOxgMAIsL3eHm1m/.dldhgEYpyerO2QICcUigMYgoS', 'b0UqBtE36ow2FaaQ44Ll40zdHIsJiwpNG1XzLMWGxYIuIhfyxTe8Xjwz45AC', '2024-05-02 14:10:37', '2024-05-02 14:10:37'),
(10, 'Abel Pérez Rodríguez', 'abel.pr@regionsierra.tecnm.mx', NULL, '$2y$12$XyGuJg.lKIEWNDSt7f9Od.DyhHu2x6bCtyAFIwNKabbZbfZ/2lXfS', 'MxzgNTjZ0GLThZlBw2RXOQWBNsrs56UwVK82x7delv9cW2rD6F0R4AWTE3Re', '2024-05-02 14:14:26', '2024-05-02 14:14:26'),
(11, 'Gabriel Osorio Ascencio', 'gabriel.oa@regionsierra.tecnm.mx', NULL, '$2y$12$.h2xP/TaEbJ9EX52wc8s8u0UGVsCN9iMItgVF0ZA6Cyc1JHJpfhIW', 'zB5q5VyooWIxIe091Epjli8C7Nz8o3eEoGsY3L9xkCZUF5oKrochQQcmMblm', '2024-05-02 14:15:30', '2024-05-02 14:15:30'),
(12, 'Rafael May Segura', 'rafael.ms@regionsierra.tecnm.mx', NULL, '$2y$12$gNsv0xv57VldUk57T0svsO88Yho6D.ON84afv1PyLW5ED72jJtipa', 'kJGZqNTlK0iY5zPMA6Gwz6JgR5Y1wVRToNJr4vop5i3rB68bYxyLnmdjFdVa', '2024-05-02 14:17:29', '2024-05-02 14:17:29'),
(13, 'Migda Leydi Sánchez Calix', 'extraescolar@regionsierra.tecn.mx', NULL, '$2y$12$8lrkqvc/JvYtoZz4KiqFB.eJM1xDCOmpDElqdk5jLfQBgSw7PwwUe', NULL, '2024-08-26 12:40:44', '2024-08-26 12:40:44'),
(14, 'Giselle Daryl Córdova Álvarez', 'giselle.ca@regionsierra.tecnm.mx', NULL, '$2y$12$cZFsb02dBZns7Ar4vr40w.sBRW8r.4kZ.EmNnVMoVJDKc1rUBlqBG', 'fTHqnroiZqAR5LBqZHXlFgej0hR7XLRyBFUiBa49pqOquDo3Z9wZVzGP28Lk', '2024-09-02 16:03:19', '2025-01-30 13:00:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `activity_period`
--
ALTER TABLE `activity_period`
  ADD KEY `activity_period_activity_id_foreign` (`activity_id`),
  ADD KEY `activity_period_period_id_foreign` (`period_id`);

--
-- Indices de la tabla `activity_user`
--
ALTER TABLE `activity_user`
  ADD KEY `activity_user_activity_id_foreign` (`activity_id`),
  ADD KEY `activity_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `selectives`
--
ALTER TABLE `selectives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selectives_career_id_foreign` (`career_id`),
  ADD KEY `selectives_activity_id_foreign` (`activity_id`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_validation_token_unique` (`validation_token`),
  ADD KEY `students_career_id_foreign` (`career_id`),
  ADD KEY `students_activity_id_foreign` (`activity_id`),
  ADD KEY `students_period_id_foreign` (`period_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `periods`
--
ALTER TABLE `periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `selectives`
--
ALTER TABLE `selectives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=725;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `activity_period`
--
ALTER TABLE `activity_period`
  ADD CONSTRAINT `activity_period_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activity_period_period_id_foreign` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `activity_user`
--
ALTER TABLE `activity_user`
  ADD CONSTRAINT `activity_user_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activity_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `selectives`
--
ALTER TABLE `selectives`
  ADD CONSTRAINT `selectives_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `selectives_career_id_foreign` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_career_id_foreign` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_period_id_foreign` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
