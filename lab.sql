-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 15, 2024 lúc 02:34 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lab`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `publication` datetime NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `title`, `thumbnail`, `author`, `publisher`, `publication`, `price`, `quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Minus aut.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Omnis quos qui.', 'Dicta voluptatem.', '2024-07-10 07:18:07', 763968, 45, 3, NULL, NULL),
(2, 'Consequatur unde.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Ducimus porro.', 'Expedita voluptatem.', '2024-07-10 07:18:07', 846098, 63, 5, NULL, NULL),
(3, 'Aut vero et omnis.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Ea numquam suscipit.', 'Eum ut ducimus.', '2024-07-10 07:18:07', 644833, 40, 3, NULL, NULL),
(4, 'Rem quae voluptas.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Dolore tempore.', 'Nulla alias qui.', '2024-07-10 07:18:07', 88922, 95, 3, NULL, NULL),
(5, 'A velit tempore.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Vitae dolorem.', 'Et omnis voluptas.', '2024-07-10 07:18:07', 945501, 84, 4, NULL, NULL),
(6, 'Iste sit quo.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Maiores ad possimus.', 'Cum natus quisquam.', '2024-07-10 07:18:07', 84420, 63, 4, NULL, NULL),
(7, 'Impedit ut facere.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Ea possimus.', 'Qui maxime vero ex.', '2024-07-10 07:18:07', 265315, 61, 2, NULL, NULL),
(8, 'Omnis ducimus.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'A velit omnis.', 'Deleniti quia.', '2024-07-10 07:18:07', 228139, 84, 2, NULL, NULL),
(9, 'Culpa aliquid enim.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quam quod culpa.', 'Beatae debitis.', '2024-07-10 07:18:07', 490327, 89, 3, NULL, NULL),
(10, 'Dicta hic ut.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Occaecati eum est.', 'Corporis quia.', '2024-07-10 07:18:07', 57941, 73, 1, NULL, NULL),
(11, 'Occaecati hic.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Suscipit nostrum.', 'Sequi cupiditate.', '2024-07-10 07:18:07', 619327, 25, 3, NULL, NULL),
(12, 'Veniam veniam qui.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Amet fuga ut iste.', 'Eos consequatur.', '2024-07-10 07:18:07', 52381, 88, 5, NULL, NULL),
(13, 'Quia officiis.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quae quos officia.', 'Nostrum soluta.', '2024-07-10 07:18:07', 644234, 78, 3, NULL, NULL),
(14, 'Nisi vero pariatur.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Est asperiores.', 'Et tempora magni.', '2024-07-10 07:18:07', 828669, 73, 2, NULL, NULL),
(15, 'Praesentium quia.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Architecto.', 'Ipsam tempore.', '2024-07-10 07:18:07', 402726, 87, 4, NULL, NULL),
(16, 'Eos ex in nihil.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Doloremque eius.', 'Quia officiis.', '2024-07-10 07:18:07', 618876, 65, 2, NULL, NULL),
(17, 'Eligendi a modi et.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Ut hic id aut.', 'Incidunt eveniet.', '2024-07-10 07:18:07', 378948, 46, 2, NULL, NULL),
(18, 'Voluptatem.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Eum explicabo autem.', 'Soluta ab numquam.', '2024-07-10 07:18:07', 402350, 31, 2, NULL, NULL),
(19, 'Harum illo.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Rem consequuntur.', 'Eaque sint sint.', '2024-07-10 07:18:07', 229327, 21, 4, NULL, NULL),
(20, 'Nihil maiores dolor.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Doloribus vel et.', 'Ipsam sint sed.', '2024-07-10 07:18:07', 364370, 28, 4, NULL, NULL),
(21, 'Totam voluptatem.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Voluptatem.', 'Omnis et et.', '2024-07-10 07:18:07', 97669, 70, 1, NULL, NULL),
(22, 'Et nesciunt omnis.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Commodi consequatur.', 'Dolor et aut labore.', '2024-07-10 07:18:07', 221496, 23, 5, NULL, NULL),
(23, 'Quae veniam minima.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Assumenda et.', 'Et ab error.', '2024-07-10 07:18:07', 903266, 66, 5, NULL, NULL),
(24, 'Distinctio pariatur.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Est repellat aut.', 'In atque blanditiis.', '2024-07-10 07:18:07', 787391, 74, 5, NULL, NULL),
(25, 'Sint perferendis.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Dignissimos impedit.', 'Consequatur est ut.', '2024-07-10 07:18:07', 903478, 81, 4, NULL, NULL),
(26, 'Consequuntur.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Recusandae qui.', 'Impedit quas minima.', '2024-07-10 07:18:07', 39736, 87, 4, NULL, NULL),
(27, 'Ipsum.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Voluptatem a non et.', 'Eos est quia ab ab.', '2024-07-10 07:18:07', 932774, 71, 3, NULL, NULL),
(28, 'Laboriosam ea.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quo adipisci facere.', 'Recusandae sapiente.', '2024-07-10 07:18:07', 889581, 94, 3, NULL, NULL),
(29, 'Occaecati soluta.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Voluptate hic neque.', 'Ipsam quis deleniti.', '2024-07-10 07:18:07', 619184, 40, 3, NULL, NULL),
(30, 'Vitae voluptatem.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Officia voluptate.', 'Alias possimus nemo.', '2024-07-10 07:18:07', 374876, 30, 4, NULL, NULL),
(31, 'Voluptatem officia.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Voluptatem sint.', 'Consequuntur ipsam.', '2024-07-10 07:18:07', 536251, 28, 5, NULL, NULL),
(32, 'Reprehenderit.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Ut itaque dolorem.', 'Quaerat ut nam.', '2024-07-10 07:18:07', 975649, 32, 3, NULL, NULL),
(33, 'Ullam voluptate ab.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Voluptas maiores.', 'Quia sit.', '2024-07-10 07:18:07', 131280, 61, 1, NULL, NULL),
(34, 'Accusantium eos.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Eos in ut ea dolor.', 'Dignissimos ipsam.', '2024-07-10 07:18:07', 41824, 37, 3, NULL, NULL),
(35, 'Alias aut et.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quidem voluptates.', 'Accusantium quod.', '2024-07-10 07:18:07', 808131, 46, 4, NULL, NULL),
(36, 'Sed cumque voluptas.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Delectus corrupti.', 'Sapiente ducimus.', '2024-07-10 07:18:07', 62361, 54, 3, NULL, NULL),
(37, 'Velit laborum quo.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Non tenetur.', 'Debitis inventore.', '2024-07-10 07:18:07', 782740, 97, 3, NULL, NULL),
(38, 'Et rem distinctio.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Sunt dicta aliquam.', 'Voluptas totam.', '2024-07-10 07:18:07', 178392, 30, 5, NULL, NULL),
(39, 'Quo repellendus.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Pariatur soluta.', 'Dolorem laudantium.', '2024-07-10 07:18:07', 626759, 36, 3, NULL, NULL),
(40, 'Porro vitae rerum.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Eum ut odit.', 'Cumque deleniti in.', '2024-07-10 07:18:07', 463938, 94, 3, NULL, NULL),
(41, 'Animi dolorem.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Iste tenetur.', 'Tempora nisi soluta.', '2024-07-10 07:18:07', 270549, 59, 3, NULL, NULL),
(42, 'Distinctio incidunt.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Aut autem ducimus.', 'Quibusdam modi.', '2024-07-10 07:18:07', 229157, 29, 5, NULL, NULL),
(43, 'Ratione molestiae.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Iste ut velit.', 'A cupiditate non.', '2024-07-10 07:18:07', 220875, 25, 2, NULL, NULL),
(44, 'Soluta eius.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Doloremque.', 'Quasi ipsam.', '2024-07-10 07:18:07', 309745, 46, 4, NULL, NULL),
(45, 'Non quibusdam.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Tenetur in expedita.', 'Error et aut qui.', '2024-07-10 07:18:07', 796323, 81, 3, NULL, NULL),
(46, 'Laboriosam nam.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Incidunt quis et.', 'Porro distinctio.', '2024-07-10 07:18:07', 773540, 61, 1, NULL, NULL),
(47, 'Velit qui expedita.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Itaque iure sed.', 'Quo adipisci sed.', '2024-07-10 07:18:07', 983192, 33, 5, NULL, NULL),
(48, 'Consequatur ipsam.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Cumque esse nihil.', 'Sint provident.', '2024-07-10 07:18:07', 282149, 85, 5, NULL, NULL),
(49, 'Similique adipisci.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Nulla et pariatur.', 'Consectetur est.', '2024-07-10 07:18:07', 397068, 55, 1, NULL, NULL),
(50, 'Tenetur eligendi.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Et nihil non cum.', 'Quisquam autem ad.', '2024-07-10 07:18:07', 828847, 49, 4, NULL, NULL),
(51, 'Eveniet.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Consequuntur nam.', 'Et quidem et.', '2024-07-10 07:18:07', 282239, 89, 3, NULL, NULL),
(52, 'Suscipit dolore.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quis voluptatem.', 'Nam perspiciatis.', '2024-07-10 07:18:07', 208722, 49, 1, NULL, NULL),
(53, 'Fugit est totam non.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Est labore non.', 'Libero voluptate.', '2024-07-10 07:18:07', 185938, 66, 3, NULL, NULL),
(54, 'Voluptatem.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Omnis rerum ipsam.', 'Ipsum molestias.', '2024-07-10 07:18:07', 888233, 80, 4, NULL, NULL),
(55, 'Sint aliquid.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quae accusamus.', 'Eum esse occaecati.', '2024-07-10 07:18:07', 313233, 53, 3, NULL, NULL),
(56, 'Dolor ab ut sit.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Vitae velit vel.', 'Et aspernatur.', '2024-07-10 07:18:07', 520163, 73, 5, NULL, NULL),
(57, 'Rerum voluptas.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Accusantium vel qui.', 'Dolor beatae.', '2024-07-10 07:18:07', 447926, 80, 5, NULL, NULL),
(58, 'Dolorum neque.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Voluptatem eum quia.', 'Saepe labore sit.', '2024-07-10 07:18:07', 548703, 20, 4, NULL, NULL),
(59, 'Architecto maxime.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Sapiente voluptas.', 'Fuga et non.', '2024-07-10 07:18:07', 257819, 38, 5, NULL, NULL),
(60, 'Occaecati est enim.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quo tempore et.', 'Rerum nisi vitae.', '2024-07-10 07:18:07', 649054, 71, 1, NULL, NULL),
(61, 'Commodi et ut.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quas totam quis est.', 'Velit magnam omnis.', '2024-07-10 07:18:07', 66854, 82, 4, NULL, NULL),
(62, 'Et eum aperiam.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Ab mollitia numquam.', 'Sed similique.', '2024-07-10 07:18:07', 211419, 64, 4, NULL, NULL),
(63, 'Ut quam provident.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Qui laborum et.', 'Aut qui explicabo.', '2024-07-10 07:18:07', 592203, 89, 3, NULL, NULL),
(64, 'Nam similique non.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Eos ex id culpa.', 'Molestiae numquam.', '2024-07-10 07:18:07', 102517, 77, 2, NULL, NULL),
(65, 'Facere libero.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Voluptatibus porro.', 'Quisquam molestiae.', '2024-07-10 07:18:07', 969383, 26, 1, NULL, NULL),
(66, 'Veritatis.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'A aut explicabo.', 'Non maiores.', '2024-07-10 07:18:07', 597406, 97, 5, NULL, NULL),
(67, 'Assumenda qui sit.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'At dolorem impedit.', 'Architecto nihil.', '2024-07-10 07:18:07', 136121, 51, 2, NULL, NULL),
(68, 'Animi facere.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Sunt aspernatur eos.', 'Dolorem adipisci.', '2024-07-10 07:18:07', 653386, 72, 5, NULL, NULL),
(69, 'Quibusdam quia.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Ipsum nisi tempora.', 'Quasi nulla sint.', '2024-07-10 07:18:07', 855776, 44, 5, NULL, NULL),
(70, 'Dicta molestiae et.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quasi ipsum.', 'Quod voluptatibus.', '2024-07-10 07:18:07', 366970, 52, 4, NULL, NULL),
(71, 'Iure praesentium.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Consequatur.', 'Et ut et quos non.', '2024-07-10 07:18:07', 897359, 93, 2, NULL, NULL),
(72, 'Sequi et a.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Fugiat accusamus.', 'Voluptates sint.', '2024-07-10 07:18:07', 167083, 77, 2, NULL, NULL),
(73, 'Saepe quaerat.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Dicta praesentium.', 'Laudantium fugiat.', '2024-07-10 07:18:07', 661674, 49, 3, NULL, NULL),
(74, 'Aut similique qui.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quae atque laborum.', 'Blanditiis magnam.', '2024-07-10 07:18:07', 285698, 89, 2, NULL, NULL),
(75, 'Deleniti autem.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Ea sequi deserunt.', 'Labore non rerum at.', '2024-07-10 07:18:07', 88440, 78, 2, NULL, NULL),
(76, 'Ipsam odit aut et.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Est ipsum.', 'Optio vel culpa et.', '2024-07-10 07:18:07', 620812, 27, 1, NULL, NULL),
(77, 'Nesciunt est eius.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Aut esse debitis.', 'Quas provident.', '2024-07-10 07:18:07', 992427, 35, 3, NULL, NULL),
(78, 'Cumque ipsam.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Explicabo quas.', 'Nostrum molestias.', '2024-07-10 07:18:07', 852576, 78, 3, NULL, NULL),
(79, 'Ea velit numquam.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Vitae delectus.', 'Numquam dolorem.', '2024-07-10 07:18:07', 562923, 61, 4, NULL, NULL),
(80, 'Beatae velit minus.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Non ullam laborum.', 'Enim in magni quam.', '2024-07-10 07:18:07', 695497, 46, 5, NULL, NULL),
(81, 'Quae rem odit omnis.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Ipsum eligendi.', 'Quo sit vero.', '2024-07-10 07:18:07', 716126, 53, 3, NULL, NULL),
(82, 'Aut facilis et.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Est nesciunt.', 'Cum hic nobis at.', '2024-07-10 07:18:07', 793506, 37, 3, NULL, NULL),
(83, 'Repellat enim.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Quae aut optio ab.', 'Totam enim.', '2024-07-10 07:18:07', 178570, 90, 2, NULL, NULL),
(84, 'Officiis dolores.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Voluptas quaerat.', 'Doloremque qui qui.', '2024-07-10 07:18:07', 765037, 48, 3, NULL, NULL),
(85, 'Ut cupiditate odio.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Placeat odit vero.', 'Tenetur officia.', '2024-07-10 07:18:07', 508064, 74, 1, NULL, NULL),
(86, 'Fuga quia aut.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Repellendus soluta.', 'Omnis aut vel unde.', '2024-07-10 07:18:07', 977379, 26, 2, NULL, NULL),
(87, 'Provident fugit.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Assumenda at.', 'Perspiciatis quis.', '2024-07-10 07:18:07', 986903, 83, 5, NULL, NULL),
(88, 'Saepe veritatis.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Voluptatem ut.', 'Eveniet placeat.', '2024-07-10 07:18:07', 509294, 86, 3, NULL, NULL),
(89, 'Eius maiores.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Corrupti rem in eum.', 'Error est quia.', '2024-07-10 07:18:07', 730211, 98, 5, NULL, NULL),
(90, 'Velit corrupti.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Temporibus incidunt.', 'Ut esse nihil.', '2024-07-10 07:18:07', 855065, 71, 4, NULL, NULL),
(91, 'Fuga magnam facere.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Repellendus.', 'Harum quae.', '2024-07-10 07:18:07', 728770, 99, 3, NULL, NULL),
(92, 'Ut magnam itaque id.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Earum qui aut vero.', 'Iusto qui et id.', '2024-07-10 07:18:07', 864678, 26, 1, NULL, NULL),
(93, 'At iusto nulla.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Est hic ut delectus.', 'Sit placeat.', '2024-07-10 07:18:07', 828628, 21, 1, NULL, NULL),
(94, 'Repudiandae quaerat.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Explicabo nesciunt.', 'Architecto soluta.', '2024-07-10 07:18:07', 122815, 99, 3, NULL, NULL),
(95, 'Explicabo voluptas.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Eos voluptatibus.', 'Asperiores.', '2024-07-10 07:18:07', 452049, 68, 4, NULL, NULL),
(96, 'Dolores quis quia.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Et facilis esse.', 'Et sequi reiciendis.', '2024-07-10 07:18:07', 468361, 98, 5, NULL, NULL),
(97, 'Excepturi id.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Fugiat sed debitis.', 'Blanditiis laborum.', '2024-07-10 07:18:07', 784695, 27, 2, NULL, NULL),
(98, 'Quod voluptas.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Explicabo fugiat.', 'Officia eos.', '2024-07-10 07:18:07', 532056, 77, 1, NULL, NULL),
(99, 'Provident tempore.', 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg', 'Numquam molestiae.', 'Porro ducimus est.', '2024-07-10 07:18:07', 825672, 79, 1, NULL, NULL),
(101, 'Tội ác và hình phạt P1', 'https://simg.zalopay.com.vn/zlp-website/assets/Toi_Ac_Va_Hinh_Phat_Fyodor_Dostoevsky_5735b91186.jpg', 'Harry kane', 'yamal', '2024-07-04 00:00:00', 500000, 555, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sách kinh tế', NULL, NULL),
(2, 'Sách thiếu nhi', NULL, NULL),
(3, 'Sách công nghệ', NULL, NULL),
(4, 'Sách gia đình', NULL, NULL),
(5, 'Sách chính trị', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_10_064344_create_categories_table', 1),
(6, '2024_07_10_064421_create_books_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `users`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
