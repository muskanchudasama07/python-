-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2025 at 09:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbprj1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add section', 7, 'add_section'),
(26, 'Can change section', 7, 'change_section'),
(27, 'Can delete section', 7, 'delete_section'),
(28, 'Can view section', 7, 'view_section'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add men category', 9, 'add_mencategory'),
(34, 'Can change men category', 9, 'change_mencategory'),
(35, 'Can delete men category', 9, 'delete_mencategory'),
(36, 'Can view men category', 9, 'view_mencategory'),
(37, 'Can add trending item', 10, 'add_trendingitem'),
(38, 'Can change trending item', 10, 'change_trendingitem'),
(39, 'Can delete trending item', 10, 'delete_trendingitem'),
(40, 'Can view trending item', 10, 'view_trendingitem'),
(41, 'Can add home item', 11, 'add_homeitem'),
(42, 'Can change home item', 11, 'change_homeitem'),
(43, 'Can delete home item', 11, 'delete_homeitem'),
(44, 'Can view home item', 11, 'view_homeitem'),
(45, 'Can add accessories item', 12, 'add_accessoriesitem'),
(46, 'Can change accessories item', 12, 'change_accessoriesitem'),
(47, 'Can delete accessories item', 12, 'delete_accessoriesitem'),
(48, 'Can view accessories item', 12, 'view_accessoriesitem'),
(49, 'Can add footwear item', 13, 'add_footwearitem'),
(50, 'Can change footwear item', 13, 'change_footwearitem'),
(51, 'Can delete footwear item', 13, 'delete_footwearitem'),
(52, 'Can view footwear item', 13, 'view_footwearitem'),
(53, 'Can add homecategories', 14, 'add_homecategories'),
(54, 'Can change homecategories', 14, 'change_homecategories'),
(55, 'Can delete homecategories', 14, 'delete_homecategories'),
(56, 'Can view homecategories', 14, 'view_homecategories'),
(57, 'Can add product', 15, 'add_product'),
(58, 'Can change product', 15, 'change_product'),
(59, 'Can delete product', 15, 'delete_product'),
(60, 'Can view product', 15, 'view_product'),
(61, 'Can add women category', 16, 'add_womencategory'),
(62, 'Can change women category', 16, 'change_womencategory'),
(63, 'Can delete women category', 16, 'delete_womencategory'),
(64, 'Can view women category', 16, 'view_womencategory'),
(65, 'Can add indianwear', 17, 'add_indianwear'),
(66, 'Can change indianwear', 17, 'change_indianwear'),
(67, 'Can delete indianwear', 17, 'delete_indianwear'),
(68, 'Can view indianwear', 17, 'view_indianwear'),
(69, 'Can add sportswear', 18, 'add_sportswear'),
(70, 'Can change sportswear', 18, 'change_sportswear'),
(71, 'Can delete sportswear', 18, 'delete_sportswear'),
(72, 'Can view sportswear', 18, 'view_sportswear'),
(73, 'Can add westernwear', 19, 'add_westernwear'),
(74, 'Can change westernwear', 19, 'change_westernwear'),
(75, 'Can delete westernwear', 19, 'delete_westernwear'),
(76, 'Can view westernwear', 19, 'view_westernwear'),
(77, 'Can add women accessories', 20, 'add_womenaccessories'),
(78, 'Can change women accessories', 20, 'change_womenaccessories'),
(79, 'Can delete women accessories', 20, 'delete_womenaccessories'),
(80, 'Can view women accessories', 20, 'view_womenaccessories'),
(81, 'Can add women footwear', 21, 'add_womenfootwear'),
(82, 'Can change women footwear', 21, 'change_womenfootwear'),
(83, 'Can delete women footwear', 21, 'delete_womenfootwear'),
(84, 'Can view women footwear', 21, 'view_womenfootwear'),
(85, 'Can add indexcategories', 14, 'add_indexcategories'),
(86, 'Can change indexcategories', 14, 'change_indexcategories'),
(87, 'Can delete indexcategories', 14, 'delete_indexcategories'),
(88, 'Can view indexcategories', 14, 'view_indexcategories'),
(89, 'Can add index item', 11, 'add_indexitem'),
(90, 'Can change index item', 11, 'change_indexitem'),
(91, 'Can delete index item', 11, 'delete_indexitem'),
(92, 'Can view index item', 11, 'view_indexitem'),
(93, 'Can add bag', 22, 'add_bag'),
(94, 'Can change bag', 22, 'change_bag'),
(95, 'Can delete bag', 22, 'delete_bag'),
(96, 'Can view bag', 22, 'view_bag'),
(97, 'Can add bag item', 23, 'add_bagitem'),
(98, 'Can change bag item', 23, 'change_bagitem'),
(99, 'Can delete bag item', 23, 'delete_bagitem'),
(100, 'Can view bag item', 23, 'view_bagitem'),
(101, 'Can add wishlist', 24, 'add_wishlist'),
(102, 'Can change wishlist', 24, 'change_wishlist'),
(103, 'Can delete wishlist', 24, 'delete_wishlist'),
(104, 'Can view wishlist', 24, 'view_wishlist'),
(105, 'Can add kidz category', 25, 'add_kidzcategory'),
(106, 'Can change kidz category', 25, 'change_kidzcategory'),
(107, 'Can delete kidz category', 25, 'delete_kidzcategory'),
(108, 'Can view kidz category', 25, 'view_kidzcategory'),
(109, 'Can add furniture category', 26, 'add_furniturecategory'),
(110, 'Can change furniture category', 26, 'change_furniturecategory'),
(111, 'Can delete furniture category', 26, 'delete_furniturecategory'),
(112, 'Can view furniture category', 26, 'view_furniturecategory'),
(113, 'Can add beauty category', 27, 'add_beautycategory'),
(114, 'Can change beauty category', 27, 'change_beautycategory'),
(115, 'Can delete beauty category', 27, 'delete_beautycategory'),
(116, 'Can view beauty category', 27, 'view_beautycategory'),
(117, 'Can add beauty item', 11, 'add_beautyitem'),
(118, 'Can change beauty item', 11, 'change_beautyitem'),
(119, 'Can delete beauty item', 11, 'delete_beautyitem'),
(120, 'Can view beauty item', 11, 'view_beautyitem'),
(121, 'Can add billing address', 28, 'add_billingaddress'),
(122, 'Can change billing address', 28, 'change_billingaddress'),
(123, 'Can delete billing address', 28, 'delete_billingaddress'),
(124, 'Can view billing address', 28, 'view_billingaddress'),
(125, 'Can add order', 29, 'add_order'),
(126, 'Can change order', 29, 'change_order'),
(127, 'Can delete order', 29, 'delete_order'),
(128, 'Can view order', 29, 'view_order'),
(129, 'Can add order item', 30, 'add_orderitem'),
(130, 'Can change order item', 30, 'change_orderitem'),
(131, 'Can delete order item', 30, 'delete_orderitem'),
(132, 'Can view order item', 30, 'view_orderitem');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$melZeIuB2vA9V5j5hhixTC$/Qax58t+lr+d5pDUfTV/LWHBIE4BbPLYbV1+v9FwFXk=', '2025-07-14 07:06:00.318582', 1, 'Admin', '', '', 'admin@gmail.com', 1, 1, '2025-04-14 17:09:36.213514'),
(6, 'pbkdf2_sha256$260000$E2B3b6ICEa9LLYtvqV9hkX$ikluKDxIgFLim29HSxqST6pQ8uG81X2k1z6Df4Gfc9A=', '2025-07-10 17:20:35.197915', 0, 'muskan123', '', '', 'muskanchudasama2406@email.com', 0, 1, '2025-07-10 17:13:27.886449'),
(16, 'pbkdf2_sha256$260000$oIqKP0GUnMnkFGW923aQws$wtzLqvOyEUoc3i94kc8/w/GB+oRAiMLig+qxYIv/pZw=', NULL, 0, 'Apurva', '', '', 'chudasamaapurva798@email.com', 0, 1, '2025-07-14 17:44:07.410310'),
(17, 'pbkdf2_sha256$260000$CiTn7b2MuhN00XrxtbL8ls$T+31f0FUAP2TzygLqut79zG4ksP2AiI0WaERu1VwNAg=', NULL, 0, 'vaibhaviba', '', '', 'ranavaibhaviba7@email.com', 0, 1, '2025-07-14 17:45:15.263025');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-04-25 06:10:38.046834', '1', 'Shirts', 1, '[{\"added\": {}}]', 9, 1),
(2, '2025-04-25 06:12:03.609098', '1', 'Shirts', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(3, '2025-04-25 06:12:58.294411', '2', 'T-Shirts', 1, '[{\"added\": {}}]', 9, 1),
(4, '2025-04-25 06:43:21.795456', '3', 'Jeans', 1, '[{\"added\": {}}]', 9, 1),
(5, '2025-04-25 06:43:39.077075', '4', 'Shorts', 1, '[{\"added\": {}}]', 9, 1),
(6, '2025-04-25 06:44:05.768996', '5', 'Shoes', 1, '[{\"added\": {}}]', 9, 1),
(7, '2025-04-25 06:44:21.312559', '6', 'Wrist', 1, '[{\"added\": {}}]', 9, 1),
(8, '2025-04-25 06:51:11.943553', '1', 'All White Indian Wear', 1, '[{\"added\": {}}]', 10, 1),
(9, '2025-04-25 06:51:38.293036', '2', 'Ethnic Casuals', 1, '[{\"added\": {}}]', 10, 1),
(10, '2025-04-26 15:15:00.310939', '3', 'Printed Kurta Sets', 1, '[{\"added\": {}}]', 10, 1),
(11, '2025-04-26 15:15:30.161656', '4', 'Everyday kurtas', 1, '[{\"added\": {}}]', 10, 1),
(12, '2025-04-26 15:16:50.078885', '5', 'Handpicked Trendy Styles', 1, '[{\"added\": {}}]', 10, 1),
(13, '2025-04-29 06:13:30.123277', '5', 'Handpicked Trendy Styles', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 10, 1),
(14, '2025-04-29 06:13:42.165418', '5', 'Handpicked Trendy Styles', 2, '[]', 10, 1),
(15, '2025-04-29 06:15:06.402977', '4', 'Everyday kurtas', 2, '[{\"changed\": {\"fields\": [\"Subtitle\", \"Slug\"]}}]', 10, 1),
(16, '2025-04-29 06:15:29.765279', '5', 'Handpicked Trendy Styles', 2, '[{\"changed\": {\"fields\": [\"Subtitle\"]}}]', 10, 1),
(17, '2025-04-29 06:15:35.222292', '4', 'Everyday kurtas', 2, '[]', 10, 1),
(18, '2025-04-29 06:16:23.635924', '3', 'Printed Kurta Sets', 2, '[{\"changed\": {\"fields\": [\"Subtitle\", \"Slug\"]}}]', 10, 1),
(19, '2025-04-29 06:16:41.465432', '2', 'Ethnic Casuals', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 10, 1),
(20, '2025-04-29 06:17:05.009507', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 10, 1),
(21, '2025-04-29 06:32:27.722472', '1', 'Makeup', 1, '[{\"added\": {}}]', 11, 1),
(22, '2025-04-29 06:33:08.123405', '2', 'Skincare', 1, '[{\"added\": {}}]', 11, 1),
(23, '2025-04-29 06:33:50.481770', '3', 'Hair', 1, '[{\"added\": {}}]', 11, 1),
(24, '2025-04-29 06:34:22.482155', '4', 'Fragrance', 1, '[{\"added\": {}}]', 11, 1),
(25, '2025-04-29 06:35:10.695533', '5', 'Bath & Body', 1, '[{\"added\": {}}]', 11, 1),
(26, '2025-04-29 06:35:48.445023', '6', 'Men', 1, '[{\"added\": {}}]', 11, 1),
(27, '2025-04-29 06:36:22.816497', '7', 'Wellness', 1, '[{\"added\": {}}]', 11, 1),
(28, '2025-04-29 17:49:03.762230', '1', 'Makeup', 3, '', 11, 1),
(29, '2025-04-29 17:49:37.306815', '8', 'Makeup', 1, '[{\"added\": {}}]', 11, 1),
(30, '2025-04-29 17:49:44.752102', '8', 'Makeup', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 11, 1),
(31, '2025-04-30 15:27:26.666171', '8', 'Makeup', 3, '', 11, 1),
(32, '2025-04-30 15:27:45.519941', '7', 'Wellness', 3, '', 11, 1),
(33, '2025-04-30 15:27:45.529614', '6', 'Men', 3, '', 11, 1),
(34, '2025-04-30 15:27:45.529614', '5', 'Bath & Body', 3, '', 11, 1),
(35, '2025-04-30 15:27:45.537680', '4', 'Fragrance', 3, '', 11, 1),
(36, '2025-04-30 15:27:45.547157', '3', 'Hair', 3, '', 11, 1),
(37, '2025-04-30 15:27:45.556935', '2', 'Skincare', 3, '', 11, 1),
(38, '2025-04-30 17:09:29.318279', '1', 'Smart Watches', 1, '[{\"added\": {}}]', 12, 1),
(39, '2025-04-30 17:10:32.406097', '2', 'Sporty Watches', 1, '[{\"added\": {}}]', 12, 1),
(40, '2025-04-30 17:11:47.506149', '3', 'White Watches', 1, '[{\"added\": {}}]', 12, 1),
(41, '2025-04-30 17:12:30.332009', '4', 'Best of Fastrack', 1, '[{\"added\": {}}]', 12, 1),
(42, '2025-04-30 17:13:32.990437', '5', 'Minimalist Watches', 1, '[{\"added\": {}}]', 12, 1),
(43, '2025-04-30 17:17:12.143651', '1', 'Neutral Shades', 1, '[{\"added\": {}}]', 13, 1),
(44, '2025-04-30 17:18:26.597096', '2', 'Sneakers For Dancers', 1, '[{\"added\": {}}]', 13, 1),
(45, '2025-04-30 17:19:30.200772', '3', 'Printed Sneakers For Men', 1, '[{\"added\": {}}]', 13, 1),
(46, '2025-04-30 17:20:14.944504', '4', 'Outback Outdoor Shoes', 1, '[{\"added\": {}}]', 13, 1),
(47, '2025-04-30 17:21:47.522464', '5', 'Flip-Flops & Sliders', 1, '[{\"added\": {}}]', 13, 1),
(48, '2025-04-30 17:23:16.189656', '9', 'Makeup', 1, '[{\"added\": {}}]', 11, 1),
(49, '2025-04-30 17:25:09.842214', '10', 'Haircare', 1, '[{\"added\": {}}]', 11, 1),
(50, '2025-04-30 17:27:47.894553', '11', 'SKINCARE', 1, '[{\"added\": {}}]', 11, 1),
(51, '2025-04-30 17:28:11.556536', '12', 'FRAGRANCE', 1, '[{\"added\": {}}]', 11, 1),
(52, '2025-04-30 17:28:29.279568', '13', 'MEN', 1, '[{\"added\": {}}]', 11, 1),
(53, '2025-04-30 17:28:52.018805', '14', 'BATH & BODY', 1, '[{\"added\": {}}]', 11, 1),
(54, '2025-04-30 17:29:14.947672', '15', 'WELLNESS', 1, '[{\"added\": {}}]', 11, 1),
(55, '2025-04-30 17:29:30.197594', '10', 'Hair', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(56, '2025-04-30 17:29:38.794583', '10', 'HAIR', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(57, '2025-04-30 17:29:47.015010', '9', 'MAKEUP', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(58, '2025-05-01 15:28:02.138205', '9', 'Makeup', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(59, '2025-05-01 15:28:08.498411', '10', 'Hair', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(60, '2025-05-01 15:28:15.388841', '15', 'Wellness', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(61, '2025-05-01 15:28:31.096658', '14', 'Bath & Body', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(62, '2025-05-01 15:28:36.924362', '13', 'Men', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(63, '2025-05-01 15:28:47.509834', '12', 'Fragrance', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(64, '2025-05-01 15:28:58.503783', '11', 'Skincare', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(65, '2025-05-03 07:07:57.163851', '1', 'Ethenic Wear', 1, '[{\"added\": {}}]', 14, 1),
(66, '2025-05-03 07:08:01.728699', '1', 'Ethenic Wear', 2, '[]', 14, 1),
(67, '2025-05-05 17:31:38.248342', '1', 'Fashion and Youth', 1, '[{\"added\": {}}]', 15, 1),
(68, '2025-05-06 06:07:19.507117', '2', '----------------', 1, '[{\"added\": {}}]', 15, 1),
(69, '2025-05-06 06:24:21.478569', '3', '------------------', 1, '[{\"added\": {}}]', 15, 1),
(70, '2025-05-06 06:25:40.275422', '4', '-----------------', 1, '[{\"added\": {}}]', 15, 1),
(71, '2025-05-06 06:31:13.537160', '5', '-------------------', 1, '[{\"added\": {}}]', 15, 1),
(72, '2025-05-06 06:44:25.831706', '6', '------------', 1, '[{\"added\": {}}]', 15, 1),
(73, '2025-05-29 06:33:36.344145', '1', 'Kurtas & Kurtab sets', 1, '[{\"added\": {}}]', 16, 1),
(74, '2025-05-29 06:33:44.161958', '1', 'Kurtas & Kurta sets', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 16, 1),
(75, '2025-05-29 06:34:03.505895', '2', 'sarees', 1, '[{\"added\": {}}]', 16, 1),
(76, '2025-05-29 06:34:41.184306', '3', 'dresses', 1, '[{\"added\": {}}]', 16, 1),
(77, '2025-05-29 06:35:04.498883', '4', 'Flats & Heels', 1, '[{\"added\": {}}]', 16, 1),
(78, '2025-05-29 06:35:27.953169', '5', 'Handbags', 1, '[{\"added\": {}}]', 16, 1),
(79, '2025-05-29 06:35:40.007938', '6', 'Shorts', 1, '[{\"added\": {}}]', 16, 1),
(80, '2025-05-30 16:58:08.475519', '1', 'Kurtas & Kurta sets', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(81, '2025-05-30 16:59:57.253302', '2', 'sarees', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(82, '2025-05-30 17:00:05.213282', '3', 'dresses', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(83, '2025-05-30 17:00:14.717312', '4', 'Flats & Heels', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(84, '2025-05-30 17:00:21.998052', '5', 'Handbags', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(85, '2025-05-30 17:00:30.374083', '6', 'Shorts', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(86, '2025-05-30 17:27:19.769974', '1', 'Moss & Melange', 1, '[{\"added\": {}}]', 19, 1),
(87, '2025-05-30 17:27:26.744880', '1', 'Moss & Melange', 2, '[]', 19, 1),
(88, '2025-05-30 17:28:34.499384', '2', 'Mod blocking', 1, '[{\"added\": {}}]', 19, 1),
(89, '2025-05-30 17:30:01.744954', '3', 'Red Tops & Tees', 1, '[{\"added\": {}}]', 19, 1),
(90, '2025-05-30 17:30:53.902731', '4', 'Smarter Daily Wear Tees', 1, '[{\"added\": {}}]', 19, 1),
(91, '2025-05-30 17:31:40.522147', '5', 'Eco-Friendly Style', 1, '[{\"added\": {}}]', 19, 1),
(92, '2025-06-01 16:55:00.080914', '1', 'Print Paradise', 1, '[{\"added\": {}}]', 17, 1),
(93, '2025-06-01 16:55:39.972362', '2', 'Regal Mustard', 1, '[{\"added\": {}}]', 17, 1),
(94, '2025-06-01 16:56:40.262005', '3', 'Fushion Dresses From W', 1, '[{\"added\": {}}]', 17, 1),
(95, '2025-06-01 16:57:50.034656', '4', 'Kurta Sets By BIBA', 1, '[{\"added\": {}}]', 17, 1),
(96, '2025-06-01 16:58:34.053305', '5', 'Summer-Ready Ethenic', 1, '[{\"added\": {}}]', 17, 1),
(97, '2025-06-01 17:00:09.432386', '1', 'Skechers Go Walk Range', 1, '[{\"added\": {}}]', 18, 1),
(98, '2025-06-01 17:00:52.980074', '2', 'Under Armoured Style', 1, '[{\"added\": {}}]', 18, 1),
(99, '2025-06-01 17:01:40.911024', '3', 'Joggers By Under Armoured', 1, '[{\"added\": {}}]', 18, 1),
(100, '2025-06-01 17:09:13.561743', '4', 'Athlaisure Apparel', 1, '[{\"added\": {}}]', 18, 1),
(101, '2025-06-01 17:11:21.177082', '5', 'Running Shoes', 1, '[{\"added\": {}}]', 18, 1),
(102, '2025-06-01 17:15:40.331851', '1', 'Printed Sneakers For Women', 1, '[{\"added\": {}}]', 21, 1),
(103, '2025-06-01 17:16:18.782178', '2', 'Everyday Classics', 1, '[{\"added\": {}}]', 21, 1),
(104, '2025-06-02 05:53:15.533127', '3', 'Colorblocked Sneakers', 1, '[{\"added\": {}}]', 21, 1),
(105, '2025-06-02 05:54:23.214943', '4', 'Women\'s Footwear By Rocia', 1, '[{\"added\": {}}]', 21, 1),
(106, '2025-06-02 05:54:59.375449', '5', 'Comfort Footwear', 1, '[{\"added\": {}}]', 21, 1),
(107, '2025-06-02 06:07:52.525563', '1', 'Best Of Imittire', 1, '[{\"added\": {}}]', 20, 1),
(108, '2025-06-02 06:08:50.608875', '2', 'The Magalsutra Collection', 1, '[{\"added\": {}}]', 20, 1),
(109, '2025-06-02 06:09:37.311257', '3', 'Handcrafted Jewellery', 1, '[{\"added\": {}}]', 20, 1),
(110, '2025-06-02 06:10:28.914684', '4', 'Rose Gold Watches', 1, '[{\"added\": {}}]', 20, 1),
(111, '2025-06-02 06:10:57.180954', '5', 'White Watches', 1, '[{\"added\": {}}]', 20, 1),
(112, '2025-06-02 06:11:51.280298', '5', 'Comfort Footwear', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 21, 1),
(113, '2025-06-05 06:29:22.934315', '6', '------------', 3, '', 15, 1),
(114, '2025-06-05 06:29:22.942451', '2', '----------------', 3, '', 15, 1),
(115, '2025-06-05 06:29:22.949289', '4', '-----------------', 3, '', 15, 1),
(116, '2025-06-05 06:29:22.955335', '3', '------------------', 3, '', 15, 1),
(117, '2025-06-05 06:29:22.961197', '5', '-------------------', 3, '', 15, 1),
(118, '2025-06-05 06:29:22.967232', '1', 'Fashion and Youth', 3, '', 15, 1),
(119, '2025-06-05 07:06:24.054284', '7', 't-shirt', 1, '[{\"added\": {}}]', 15, 1),
(120, '2025-06-10 06:23:48.891606', '1', 'top', 1, '[{\"added\": {}}]', 25, 1),
(121, '2025-06-10 06:29:56.836243', '2', 'Cotton-Tops', 1, '[{\"added\": {}}]', 25, 1),
(122, '2025-06-10 06:30:24.124812', '3', 'Crop-Top', 1, '[{\"added\": {}}]', 25, 1),
(123, '2025-06-10 06:37:31.742849', '4', 'Ethenic-Tops', 1, '[{\"added\": {}}]', 25, 1),
(124, '2025-06-10 06:39:24.856974', '5', 'mini shorts', 1, '[{\"added\": {}}]', 25, 1),
(125, '2025-06-10 06:42:23.719706', '1', 'top', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 25, 1),
(126, '2025-06-11 07:08:30.388537', '6', 'Cotton-Tops', 1, '[{\"added\": {}}]', 25, 1),
(127, '2025-06-11 07:08:49.310360', '7', 'forck', 1, '[{\"added\": {}}]', 25, 1),
(128, '2025-06-11 07:09:37.843974', '7', 'Frock', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(129, '2025-06-11 07:10:02.441939', '8', 'Night Suits', 1, '[{\"added\": {}}]', 25, 1),
(130, '2025-06-11 07:10:40.583758', '9', 'Full Sleeve Shirts', 1, '[{\"added\": {}}]', 25, 1),
(131, '2025-06-11 07:11:35.617513', '10', 'Short Sleeve Shirts', 1, '[{\"added\": {}}]', 25, 1),
(132, '2025-06-11 07:12:21.457569', '11', 'Pair', 1, '[{\"added\": {}}]', 25, 1),
(133, '2025-06-11 07:12:44.185235', '12', 'PartyWear', 1, '[{\"added\": {}}]', 25, 1),
(134, '2025-06-11 07:13:11.218024', '13', 'Jumpsuits', 1, '[{\"added\": {}}]', 25, 1),
(135, '2025-06-11 07:15:56.460246', '14', 'One-Piece', 1, '[{\"added\": {}}]', 25, 1),
(136, '2025-06-11 07:16:23.723341', '15', 'Thermal', 1, '[{\"added\": {}}]', 25, 1),
(137, '2025-06-11 14:14:33.908963', '2', 'Cotton-Tops', 3, '', 25, 1),
(138, '2025-06-11 14:15:55.789246', '5', 'mini shorts', 3, '', 25, 1),
(139, '2025-06-12 14:18:39.836833', '8', 'White Flory Frock', 1, '[{\"added\": {}}]', 15, 1),
(140, '2025-06-12 14:20:18.272992', '9', 'Red Frock', 1, '[{\"added\": {}}]', 15, 1),
(141, '2025-06-13 06:07:56.049887', '1', 'Bedsheets', 1, '[{\"added\": {}}]', 26, 1),
(142, '2025-06-13 06:08:52.124097', '1', 'Bedsheets', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 26, 1),
(143, '2025-06-13 06:30:48.127528', '10', 'Cotton Bedsheet', 1, '[{\"added\": {}}]', 15, 1),
(144, '2025-06-14 06:18:57.425763', '2', 'Men\'s T-Shirts', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(145, '2025-06-14 06:36:29.585269', '11', 'Green', 1, '[{\"added\": {}}]', 15, 1),
(146, '2025-06-14 06:37:19.379744', '11', 'Green T-shirt', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(147, '2025-06-14 07:08:10.964530', '12', 'Black T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(148, '2025-06-15 15:56:58.438179', '15', 'Shorts', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\", \"Image\"]}}]', 25, 1),
(149, '2025-06-15 15:59:52.734871', '16', 'Socks', 1, '[{\"added\": {}}]', 25, 1),
(150, '2025-06-15 16:03:21.236032', '17', 'Cap', 1, '[{\"added\": {}}]', 25, 1),
(151, '2025-06-15 16:20:40.694727', '18', '+ BABY CARE', 1, '[{\"added\": {}}]', 25, 1),
(152, '2025-06-15 16:21:12.725119', '17', '+ CAP', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(153, '2025-06-15 16:21:22.270944', '16', '+ SOCKS', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(154, '2025-06-15 16:21:33.065455', '15', '+ SHORTS', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(155, '2025-06-15 16:21:42.271845', '14', '+ ONE-PIECE', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(156, '2025-06-15 16:22:01.718977', '13', '+ JUMPSUITS', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(157, '2025-06-15 16:22:12.849713', '12', '+ PARTY-WEAR', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(158, '2025-06-15 16:22:41.942729', '11', '+ PAIR', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(159, '2025-06-15 16:23:29.990153', '10', '+ SHIRTS', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 25, 1),
(160, '2025-06-15 16:26:40.581680', '9', '+ SANDALS', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\", \"Image\"]}}]', 25, 1),
(161, '2025-06-15 16:27:12.741149', '8', '+ SLEEPWEAR', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 25, 1),
(162, '2025-06-15 16:27:37.764744', '7', 'DRESSES', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 25, 1),
(163, '2025-06-15 16:27:45.370493', '7', '+ DRESSES', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(164, '2025-06-15 16:29:57.616377', '6', '+ COTTON-TOPS', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(165, '2025-06-15 16:30:10.113432', '4', '+ ETHENIC', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(166, '2025-06-15 16:30:21.844384', '4', '+ ETHENIC-WEAR', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(167, '2025-06-15 16:30:40.669416', '3', 'Crop-Top', 3, '', 25, 1),
(168, '2025-06-15 16:31:54.500684', '1', '+ TOP', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 25, 1),
(169, '2025-06-15 16:32:02.152228', '14', '+ ONE-PIECE', 3, '', 25, 1),
(170, '2025-06-15 16:32:10.007380', '11', '+ PAIR', 3, '', 25, 1),
(171, '2025-06-15 16:33:18.823587', '6', '+ COTTON-TOPS', 3, '', 25, 1),
(172, '2025-06-15 17:32:21.323735', '1', 'Fab', 1, '[{\"added\": {}}]', 27, 1),
(173, '2025-06-15 17:37:03.861985', '1', 'FACE WASH', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\", \"Image\"]}}]', 27, 1),
(174, '2025-06-16 06:07:12.449791', '13', 'FACE WASH', 1, '[{\"added\": {}}]', 15, 1),
(175, '2025-06-16 07:31:14.499131', '13', 'FACE WASH', 2, '[]', 15, 1),
(176, '2025-06-16 16:04:09.085010', '12', 'Black T-shirt', 3, '', 15, 1),
(177, '2025-06-16 16:04:09.111171', '11', 'Green T-shirt', 3, '', 15, 1),
(178, '2025-06-16 16:04:09.111171', '7', 't-shirt', 3, '', 15, 1),
(179, '2025-06-16 16:05:47.260586', '14', 'The Lifestyle Co Printed Pure Cotton Relaxed T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(180, '2025-06-16 16:06:25.669778', '15', 'Geometric Self Design Polo Collar Cotton T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(181, '2025-06-16 16:07:11.003302', '16', 'Men Self Design Polo Collar Relaxed Fit T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(182, '2025-06-16 16:07:56.455952', '17', 'Roadster Men\'s Printed Round Neck T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(183, '2025-06-16 16:08:34.235012', '18', 'Mast & Harbour Men\'s Solid T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(184, '2025-06-16 16:10:43.831561', '19', 'Men Self Design Polo Collar Relaxed Fit T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(185, '2025-06-16 16:22:28.878132', '20', 'The Lifestyle Co. Drop-Shoulder Sleeves Pure Cotton T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(186, '2025-06-16 16:25:20.390530', '21', 'Typography Printed Oversized Cotton T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(187, '2025-06-16 16:25:35.282666', '2', 'T-Shirts', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(188, '2025-06-16 16:28:19.896366', '22', 'Men Standard Casual Shirt', 1, '[{\"added\": {}}]', 15, 1),
(189, '2025-06-16 16:29:18.326384', '23', 'Men\'s Casual Button Down Shirts Long Sleeve Linen Shirt', 1, '[{\"added\": {}}]', 15, 1),
(190, '2025-06-16 16:32:16.174767', '24', 'Men\'s Solid Linen Cotton Casual Plain Full Sleeve Shirt', 1, '[{\"added\": {}}]', 15, 1),
(191, '2025-06-16 16:33:09.071112', '25', 'Roadster Men\'s Checked Casual Shirt', 1, '[{\"added\": {}}]', 15, 1),
(192, '2025-06-16 16:35:00.844789', '26', 'Men Micro Checks Checked Casual Shirt', 1, '[{\"added\": {}}]', 15, 1),
(193, '2025-06-16 16:36:23.813540', '27', 'Men Regular Fit Vertical Stripes Casual Shirt', 1, '[{\"added\": {}}]', 15, 1),
(194, '2025-06-16 16:37:27.091988', '28', 'Men Comfort Colourblocked Casual Shirt', 1, '[{\"added\": {}}]', 15, 1),
(195, '2025-06-16 16:38:33.865318', '29', 'Classic Opaque Striped Cotton Oversized Casual Shirt', 1, '[{\"added\": {}}]', 15, 1),
(196, '2025-06-16 16:39:56.851082', '24', 'Men\'s Solid Linen Cotton Casual Plain Full Sleeve Shirt', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(197, '2025-06-16 16:44:53.453743', '30', 'Men Wide Leg Jeans by Zara', 1, '[{\"added\": {}}]', 15, 1),
(198, '2025-06-16 16:45:56.848342', '31', 'Men\'s Slim Tapered Fit Mid-Rise Clean Look Stretchable Jeans', 1, '[{\"added\": {}}]', 15, 1),
(199, '2025-06-16 16:46:48.551698', '32', 'Men\'s Straight Fit Jeans', 1, '[{\"added\": {}}]', 15, 1),
(200, '2025-06-16 16:48:07.548329', '33', 'Men Relaxed Low-Rise Easy Wash Pleated Cargos Trousers', 1, '[{\"added\": {}}]', 15, 1),
(201, '2025-06-16 16:52:18.077941', '34', 'Classy Skinny Jeans For Men', 1, '[{\"added\": {}}]', 15, 1),
(202, '2025-06-16 16:53:31.224832', '35', 'Men\'s Regular Fit Mid-Rise Light Fade Jeans', 1, '[{\"added\": {}}]', 15, 1),
(203, '2025-06-16 16:55:31.584888', '36', 'Men\'s Loose Fit Jeans', 1, '[{\"added\": {}}]', 15, 1),
(204, '2025-06-16 16:56:28.324240', '37', 'Men Relaxed FIT Denim Jeans Loose Jeans for Men', 1, '[{\"added\": {}}]', 15, 1),
(205, '2025-06-16 17:03:46.604364', '38', 'Men\'s Denim Shorts', 1, '[{\"added\": {}}]', 15, 1),
(206, '2025-06-16 17:04:33.232775', '39', 'Men\'s Solid Slim Fit Shorts', 1, '[{\"added\": {}}]', 15, 1),
(207, '2025-06-16 17:05:44.932756', '40', 'Men Shorts Cotton', 1, '[{\"added\": {}}]', 15, 1),
(208, '2025-06-16 17:07:23.379106', '41', 'Men\'s Solid Shorts', 1, '[{\"added\": {}}]', 15, 1),
(209, '2025-06-16 17:10:26.298778', '42', 'Men Mid Rise Lifestyle Shorts', 1, '[{\"added\": {}}]', 15, 1),
(210, '2025-06-16 17:11:40.662212', '43', 'Men Printed Regular Shorts', 1, '[{\"added\": {}}]', 15, 1),
(211, '2025-06-16 17:12:53.330783', '44', 'Men\'s Solid Sports Shorts', 1, '[{\"added\": {}}]', 15, 1),
(212, '2025-06-16 17:13:56.351770', '45', 'Men\'s Seashell Bermuda Shorts', 1, '[{\"added\": {}}]', 15, 1),
(213, '2025-06-16 17:15:46.365640', '46', 'Men\'s Memory Foam Mesh Non-Marking Running Shoes', 1, '[{\"added\": {}}]', 15, 1),
(214, '2025-06-16 17:16:32.008780', '47', 'Men Colorblocked Grey Lifestyle Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(215, '2025-06-16 17:17:10.185379', '48', 'U.S. POLO ASSN Men. CLARKIN 4.0 Colourblocked Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(216, '2025-06-16 17:17:48.908705', '49', 'Men\'s Lace-Ups Casual Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(217, '2025-06-16 17:18:52.054225', '50', 'ASIAN Men\'s Dominator-03 Running Shoes', 1, '[{\"added\": {}}]', 15, 1),
(218, '2025-06-16 17:19:43.488023', '51', 'Red Tape Men\'s Casual Sneaker Shoes', 1, '[{\"added\": {}}]', 15, 1),
(219, '2025-06-16 17:20:32.366212', '52', 'Men\'s Outdoor Loafer Shoes', 1, '[{\"added\": {}}]', 15, 1),
(220, '2025-06-16 17:21:37.888585', '53', 'Men\'s Galer Slip-On Shoes', 1, '[{\"added\": {}}]', 15, 1),
(221, '2025-06-16 17:23:29.404363', '50', 'ASIAN Men\'s Dominator-03 Running Shoes', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(222, '2025-06-16 17:25:59.309877', '54', 'V2A Chronograph Analogue Digital Sports Watch', 1, '[{\"added\": {}}]', 15, 1),
(223, '2025-06-16 17:28:18.041845', '55', 'Fossil Men Machine Chronograph Black Dial Watch FS4682', 1, '[{\"added\": {}}]', 15, 1),
(224, '2025-06-16 17:29:37.324432', '56', 'Men Dial & Stainless Steel Straps Analogue Watch CR-GR043-BRW-CH', 1, '[{\"added\": {}}]', 15, 1),
(225, '2025-06-16 17:30:11.139537', '57', 'Men Silver-Toned Analogue Watch WRG00048A', 1, '[{\"added\": {}}]', 15, 1),
(226, '2025-06-16 17:30:49.881180', '58', 'Men Black Polo Analogue Watch WWTM-POLO-020707', 1, '[{\"added\": {}}]', 15, 1),
(227, '2025-06-16 17:32:17.744079', '59', 'Men Textured Dial Multi Function Analogue Watch', 1, '[{\"added\": {}}]', 15, 1),
(228, '2025-06-16 17:35:03.163746', '60', 'Fastrack Leather Strap Watch', 1, '[{\"added\": {}}]', 15, 1),
(229, '2025-06-16 17:35:38.308412', '61', 'Men Dial & Stainless Steel Straps Analogue Watch', 1, '[{\"added\": {}}]', 15, 1),
(230, '2025-06-16 17:37:13.255829', '62', 'Minimalist Eddy Square Dial Men\'s Watch with Stainless Steel', 1, '[{\"added\": {}}]', 15, 1),
(231, '2025-06-17 05:58:17.143100', '63', 'Brown Rust Embroidered Cotton Kurta and Palazzo Set', 1, '[{\"added\": {}}]', 15, 1),
(232, '2025-06-17 06:02:56.792350', '64', 'Embroidered Kurta, Trouser/Pant & Dupatta Set', 1, '[{\"added\": {}}]', 15, 1),
(233, '2025-06-17 06:03:37.309863', '65', 'Maroon Digital Print Rayon Kurta Set 966  2760(65% OFF)', 1, '[{\"added\": {}}]', 15, 1),
(234, '2025-06-17 06:04:24.691091', '66', 'Off White Embroidered Cotton Flex Suit Set with Cotton Silk Dupatta', 1, '[{\"added\": {}}]', 15, 1),
(235, '2025-06-17 06:05:22.316162', '67', 'Ethnic Motifs Embroidered Thread Work Kurta With Trousers & Dupatta', 1, '[{\"added\": {}}]', 15, 1),
(236, '2025-06-17 06:06:43.728310', '68', 'Linen Cotton Foliage Straight Off White Co-ord & Trousers', 1, '[{\"added\": {}}]', 15, 1),
(237, '2025-06-17 06:07:20.877923', '69', 'Libas Women\'s Printed A-Line Kurta Set', 1, '[{\"added\": {}}]', 15, 1),
(238, '2025-06-17 06:08:04.373150', '70', 'Women\'s Kurta Pant Dupatta Set', 1, '[{\"added\": {}}]', 15, 1),
(239, '2025-06-17 06:09:02.431545', '71', 'Women Floral Thread and Sequined Embroidered Kurta Set by Zara', 1, '[{\"added\": {}}]', 15, 1),
(240, '2025-06-17 06:10:59.362605', '72', 'Floral Printed Saree', 1, '[{\"added\": {}}]', 15, 1),
(241, '2025-06-17 06:11:27.486464', '73', 'Colourblocked Printed Tissue', 1, '[{\"added\": {}}]', 15, 1),
(242, '2025-06-17 06:12:07.902017', '74', 'Satin Designer Saree', 1, '[{\"added\": {}}]', 15, 1),
(243, '2025-06-17 06:13:59.002681', '75', 'VILLAGIUS Floral Printed Saree', 1, '[{\"added\": {}}]', 15, 1),
(244, '2025-06-17 06:15:09.907900', '76', 'Woven Design Silk Cotton Saree', 1, '[{\"added\": {}}]', 15, 1),
(245, '2025-06-17 06:16:17.810354', '77', 'Women\'s Two Tone Chiffon Saree with Blouse', 1, '[{\"added\": {}}]', 15, 1),
(246, '2025-06-17 06:17:10.580107', '78', 'Koskii Designer Saree', 1, '[{\"added\": {}}]', 15, 1),
(247, '2025-06-17 06:18:33.488033', '79', 'Traditional Banarasi Silk Saree', 1, '[{\"added\": {}}]', 15, 1),
(248, '2025-06-17 06:19:00.318625', '72', 'Floral Printed Saree', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(249, '2025-06-17 06:19:47.335907', '72', 'Floral Printed Saree', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(250, '2025-06-17 06:21:54.871251', '80', 'Women Cotton Floral Printed Wrap Midi Dress', 1, '[{\"added\": {}}]', 15, 1),
(251, '2025-06-17 06:22:46.006049', '81', 'Women\'s Fit & Flare Regular Sleeves Midi Dress', 1, '[{\"added\": {}}]', 15, 1),
(252, '2025-06-17 06:23:42.681055', '82', 'Womens Mustard Chiffon Self Design Western Dress', 1, '[{\"added\": {}}]', 15, 1),
(253, '2025-06-17 06:25:14.867957', '83', 'Women\'s Maxi One Piece Dress', 1, '[{\"added\": {}}]', 15, 1),
(254, '2025-06-17 06:26:27.251107', '84', 'Women\'s Puff Sleeve Fit and Flare Midi Dress', 1, '[{\"added\": {}}]', 15, 1),
(255, '2025-06-17 06:28:05.624353', '85', 'Women\'s Puff Sleeve Flare Midi Dress', 1, '[{\"added\": {}}]', 15, 1),
(256, '2025-06-17 06:29:27.540416', '86', 'Nuon Beige Criss-Cross Detailed Cotton-Blend Shirt', 1, '[{\"added\": {}}]', 15, 1),
(257, '2025-06-17 06:30:11.322733', '87', 'Women Cotton Floral Printed Fit & Flare Midi Dress by Myntra', 1, '[{\"added\": {}}]', 15, 1),
(258, '2025-06-17 06:37:38.467951', '88', 'White pearl tie up heels', 1, '[{\"added\": {}}]', 15, 1),
(259, '2025-06-17 06:38:37.680830', '89', 'Shimmer Strap Golden Heels', 1, '[{\"added\": {}}]', 15, 1),
(260, '2025-06-17 06:39:53.239247', '90', 'Rhinestone beauty heels', 1, '[{\"added\": {}}]', 15, 1),
(261, '2025-06-17 06:40:37.323390', '91', 'Beige Patent Chain', 1, '[{\"added\": {}}]', 15, 1),
(262, '2025-06-17 06:42:02.006169', '92', 'Black Shimmer Cross Flat', 1, '[{\"added\": {}}]', 15, 1),
(263, '2025-06-17 06:55:58.804741', '93', 'Chic Steps Flats', 1, '[{\"added\": {}}]', 15, 1),
(264, '2025-06-17 06:56:33.482406', '94', 'Sunflower Bloom Embroidered Flats', 1, '[{\"added\": {}}]', 15, 1),
(265, '2025-06-17 06:57:48.431476', '95', 'Women\'s Casual Open Toe Flats', 1, '[{\"added\": {}}]', 15, 1),
(266, '2025-06-17 07:06:54.839275', '96', 'Exotic PU Structured Shoulder Bag', 1, '[{\"added\": {}}]', 15, 1),
(267, '2025-06-17 07:07:40.953636', '97', 'Women\'s Solid Structured Sling Bag', 1, '[{\"added\": {}}]', 15, 1),
(268, '2025-06-17 07:08:18.241211', '98', 'Women\'s Classic Chain Handle Strap Shoulder Crossbody Hobo Slingbag', 1, '[{\"added\": {}}]', 15, 1),
(269, '2025-06-17 07:09:25.480653', '99', 'Campus Sutra PU Structured Shoulder Bag', 1, '[{\"added\": {}}]', 15, 1),
(270, '2025-06-17 07:10:58.993406', '100', 'Leather Ladies Handbag', 1, '[{\"added\": {}}]', 15, 1),
(271, '2025-06-17 07:24:39.895820', '101', 'Women\'S Faux Leather Tan Metal Detail 13 Inch Laptop Work Tote Bag', 1, '[{\"added\": {}}]', 15, 1),
(272, '2025-06-17 07:25:18.000412', '102', 'Women\'s Lase Hand/Sling Bag', 1, '[{\"added\": {}}]', 15, 1),
(273, '2025-06-17 07:26:22.143123', '103', 'Women\'s Embroidered Shoulder Bag', 1, '[{\"added\": {}}]', 15, 1),
(274, '2025-06-17 07:26:41.272405', '98', 'Women\'s Classic Chain Handle Strap Shoulder Crossbody Hobo Slingbag', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(275, '2025-07-01 05:58:07.905136', '104', 'black kurta', 1, '[{\"added\": {}}]', 15, 1),
(276, '2025-07-01 06:12:47.960486', '104', 'black kurta', 3, '', 15, 1),
(277, '2025-07-01 07:24:39.384420', '105', 'Manyavar Men\'s Mandarin Collar Kurta Set', 1, '[{\"added\": {}}]', 15, 1),
(278, '2025-07-01 07:26:03.076203', '106', 'Men\'s Long Kurta', 1, '[{\"added\": {}}]', 15, 1),
(279, '2025-07-01 07:26:39.260084', '107', 'Men\'s Embroidered Kurta', 1, '[{\"added\": {}}]', 15, 1),
(280, '2025-07-01 07:34:30.374162', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(281, '2025-07-01 07:37:17.122497', '108', 'jdfsrh', 1, '[{\"added\": {}}]', 15, 1),
(282, '2025-07-01 07:38:48.867340', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(283, '2025-07-01 07:39:08.162777', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(284, '2025-07-01 07:39:12.468195', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(285, '2025-07-01 07:39:25.741338', '108', 'jdfsrh', 3, '', 15, 1),
(286, '2025-07-01 07:40:23.615727', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(287, '2025-07-01 07:40:32.145633', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(288, '2025-07-02 06:01:02.919408', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(289, '2025-07-02 06:01:46.670166', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(290, '2025-07-02 06:29:12.510928', '109', '<div class=\"row\">   {% for product in products %}   <div class=\"col-6 col-sm-4 col-md-2 mb-4\">     <', 1, '[{\"added\": {}}]', 15, 1),
(291, '2025-07-02 06:29:47.200364', '109', 'Men Printed Zari Regular Fit Nehru Jacket', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 15, 1),
(292, '2025-07-02 06:31:12.511898', '110', 'Jaypore Men\'s Cotton V Neck A Line Kurta', 1, '[{\"added\": {}}]', 15, 1),
(293, '2025-07-02 06:33:56.544077', '111', 'Men Embroidered Cotton Rayon Straight Kurta', 1, '[{\"added\": {}}]', 15, 1),
(294, '2025-07-02 06:34:56.991161', '112', 'Classic White Bundi with Gold Buttons', 1, '[{\"added\": {}}]', 15, 1),
(295, '2025-07-02 06:35:47.641404', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(296, '2025-07-02 06:38:04.412639', '113', 'Wedding-kurta for Men', 1, '[{\"added\": {}}]', 15, 1),
(297, '2025-07-02 06:38:13.681425', '1', 'All White Indian Wear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(298, '2025-07-02 06:47:37.951568', '114', 'Formal Black Sherwani', 1, '[{\"added\": {}}]', 15, 1),
(299, '2025-07-02 07:18:51.223253', '115', 'Mens silk Kurta gray color kurta kurta for men I', 1, '[{\"added\": {}}]', 15, 1),
(300, '2025-07-02 07:21:44.830319', '116', 'Blazer with kurta fashion for Men', 1, '[{\"added\": {}}]', 15, 1),
(301, '2025-07-02 07:23:11.096337', '117', 'Trendy & Elegant Lion Design Bandhagala – De Royal Mens Ethnic', 1, '[{\"added\": {}}]', 15, 1),
(302, '2025-07-02 07:25:47.711549', '118', 'Wedding Dress for Men', 1, '[{\"added\": {}}]', 15, 1),
(303, '2025-07-02 07:33:24.794095', '119', 'Green Linen Embroidery Thread Bundi For Men', 1, '[{\"added\": {}}]', 15, 1),
(304, '2025-07-02 07:38:14.260825', '120', 'Men\'s Wedding And Party Wear Waistcoat And Kurta', 1, '[{\"added\": {}}]', 15, 1),
(305, '2025-07-02 07:40:27.213247', '121', 'Men\'s red sparkling kurta', 1, '[{\"added\": {}}]', 15, 1),
(306, '2025-07-02 07:42:12.097839', '2', 'Ethnic Casuals', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(307, '2025-07-02 07:45:26.141994', '122', 'Yellow Readymade Mens Printed Kurta', 1, '[{\"added\": {}}]', 15, 1),
(308, '2025-07-02 07:49:16.826727', '123', 'Traditional Shimmer Kurta For Men', 1, '[{\"added\": {}}]', 15, 1),
(309, '2025-07-02 07:50:42.843795', '124', 'Polyester Men Printed Kurta Pajama', 1, '[{\"added\": {}}]', 15, 1),
(310, '2025-07-02 07:52:02.790485', '125', 'Blue Readymade Mens Printed Kurta', 1, '[{\"added\": {}}]', 15, 1),
(311, '2025-07-02 07:52:22.205580', '3', 'Printed Kurta Sets', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(312, '2025-07-02 14:31:26.161921', '126', 'Buy Cherry Red Satin Silk Printed Kurta And Joggers Pants', 1, '[{\"added\": {}}]', 15, 1),
(313, '2025-07-02 14:33:07.606484', '127', 'Cherry Red Satin Silk Printed Kurta And Joggers Pants', 1, '[{\"added\": {}}]', 15, 1),
(314, '2025-07-02 16:34:54.074903', '127', 'Buy Cherry Red Satin Silk Printed Kurta And Joggers Pants', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(315, '2025-07-02 16:35:25.505491', '127', 'Yellow Printed Men\'s Short Kurta', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(316, '2025-07-02 16:35:59.708892', '127', 'Yellow Printed Men\'s Short Kurta', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 15, 1),
(317, '2025-07-02 16:36:11.464204', '126', 'Cherry Red Satin Silk Printed Kurta And Joggers Pants', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 15, 1),
(318, '2025-07-02 16:36:56.172213', '128', 'White ELEPHANT PATTERN JACQUARD DESIGNER KURTA', 1, '[{\"added\": {}}]', 15, 1),
(319, '2025-07-02 16:38:04.784838', '129', 'Bottle Green Mens Kurta Without Pant', 1, '[{\"added\": {}}]', 15, 1),
(320, '2025-07-02 16:38:19.006477', '3', 'Printed Kurta Sets', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(321, '2025-07-02 16:43:02.834253', '130', 'Men\'s Indian outfit', 1, '[{\"added\": {}}]', 15, 1),
(322, '2025-07-02 16:43:56.145221', '131', 'Mens kurta designs, Mens fashion classy', 1, '[{\"added\": {}}]', 15, 1),
(323, '2025-07-02 16:44:27.441311', '132', 'Men stylish dress, Designer clothes for men', 1, '[{\"added\": {}}]', 15, 1),
(324, '2025-07-02 16:45:56.745426', '133', 'Cotton kurta with Blocked design', 1, '[{\"added\": {}}]', 15, 1),
(325, '2025-07-02 16:46:25.096069', '134', 'Best Man Summer Kurta', 1, '[{\"added\": {}}]', 15, 1),
(326, '2025-07-02 16:47:53.073881', '135', 'Green Fabric With Golden Buttons', 1, '[{\"added\": {}}]', 15, 1),
(327, '2025-07-02 16:51:06.143154', '136', 'Brick Red Pure Cotton Kurta Se', 1, '[{\"added\": {}}]', 15, 1),
(328, '2025-07-02 16:53:22.172247', '137', 'Linen Comfort Blue Kurta', 1, '[{\"added\": {}}]', 15, 1),
(329, '2025-07-02 16:53:45.243792', '4', 'Everyday kurtas', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(330, '2025-07-02 16:58:53.575667', '138', 'Pink Colored Open Stylish Kurta Jacket', 1, '[{\"added\": {}}]', 15, 1),
(331, '2025-07-02 17:00:04.745192', '139', 'mens kurta with jacket - KALKI Fashion Blog', 1, '[{\"added\": {}}]', 15, 1),
(332, '2025-07-02 17:09:08.059860', '140', 'Black TravellerS Palm Jacquard Kurta by MASABA MEN', 1, '[{\"added\": {}}]', 15, 1),
(333, '2025-07-02 17:10:18.189322', '5', 'Handpicked Trendy Styles', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(334, '2025-07-02 17:12:21.647658', '141', 'Parrot Green Georgette Kurta Set', 1, '[{\"added\": {}}]', 15, 1),
(335, '2025-07-02 17:13:51.819243', '142', 'Men Ivory Georgette Chikankari Kurta Set', 1, '[{\"added\": {}}]', 15, 1),
(336, '2025-07-02 17:15:26.861576', '143', 'Men Ivory Georgette Chikankari Kurta', 1, '[{\"added\": {}}]', 15, 1),
(337, '2025-07-02 17:16:17.553878', '144', 'Latest Designer Black Kurta Indian Wear For Men', 1, '[{\"added\": {}}]', 15, 1),
(338, '2025-07-02 17:17:11.027664', '145', 'Men\'s Luxury Designer Kurta', 1, '[{\"added\": {}}]', 15, 1),
(339, '2025-07-02 17:18:36.219699', '146', 'Blue Embrodery Work kurta', 1, '[{\"added\": {}}]', 15, 1),
(340, '2025-07-02 17:18:56.627306', '5', 'Handpicked Trendy Styles', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 10, 1),
(341, '2025-07-02 17:19:54.877149', '139', 'mens kurta with jacket - KALKI Fashion Blog', 3, '', 15, 1),
(342, '2025-07-03 05:17:50.580446', '147', 'Urban Blaze Men\'s Low Top Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(343, '2025-07-03 05:18:56.216129', '148', 'Men Coba Colour Blocked Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(344, '2025-07-03 05:20:59.136105', '149', 'U.S. Polo Assn. Men\'s Cenik Suede Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(345, '2025-07-03 05:21:51.874653', '150', 'Beige Men Low Top Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(346, '2025-07-03 05:22:31.650841', '151', 'Men\'s Conrad Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(347, '2025-07-03 05:22:59.616970', '152', 'Men\'s Monton 6.0 Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(348, '2025-07-03 05:23:39.733961', '153', 'Snitch Men\'s Beige Solid Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(349, '2025-07-03 05:24:17.999580', '1', 'Neutral Shades', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 13, 1),
(350, '2025-07-03 05:25:34.032115', '154', 'Men\'s Bruce Mid Top Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(351, '2025-07-03 05:25:49.856410', '1', 'Neutral Shades', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 13, 1),
(352, '2025-07-03 05:29:26.824876', '155', 'SKYLINE - WHITE', 1, '[{\"added\": {}}]', 15, 1),
(353, '2025-07-03 05:30:15.431826', '156', 'Zixer Sneakers Dancing Shoes/Street Dancing Shoe For Men', 1, '[{\"added\": {}}]', 15, 1),
(354, '2025-07-03 05:30:57.941721', '157', 'Zixer Dance India Dance Shoe High Tops For Men', 1, '[{\"added\": {}}]', 15, 1),
(355, '2025-07-03 05:31:55.397011', '158', 'Zixer Men\'S High Top Ankle Retro Air Original Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(356, '2025-07-03 05:32:44.715730', '159', 'Exclusive Hip Hop Dancing Shoes', 1, '[{\"added\": {}}]', 15, 1),
(357, '2025-07-03 05:33:25.613433', '160', 'PortDance Mens Pietro Street Grey Denim Sneaker Dance Shoe', 1, '[{\"added\": {}}]', 15, 1),
(358, '2025-07-03 05:34:11.045600', '161', 'Puma Hyperglide X FusionLite Running Shoes', 1, '[{\"added\": {}}]', 15, 1),
(359, '2025-07-03 05:34:41.589212', '162', 'Zixer Moonwalk Dancing Shoe With 360 Degree Cushioning Sole Technology unky Sneakers High Tops For M', 1, '[{\"added\": {}}]', 15, 1),
(360, '2025-07-03 05:35:00.006660', '2', 'Sneakers For Dancers', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 13, 1),
(361, '2025-07-03 05:36:59.873866', '163', 'Bomber Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(362, '2025-07-03 05:37:20.564795', '164', 'Printed Sneakers for Men', 1, '[{\"added\": {}}]', 15, 1),
(363, '2025-07-03 05:38:02.753772', '165', 'White Text Print Athletic Shoes', 1, '[{\"added\": {}}]', 15, 1),
(364, '2025-07-03 05:38:46.146990', '166', 'Souled Men\'s Velocity Low Top Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(365, '2025-07-03 05:39:16.012710', '167', 'Amico Designer Printed Casual Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(366, '2025-07-03 05:39:58.800299', '168', 'Highlander Men\'s Printed Canvas Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(367, '2025-07-03 05:41:15.103104', '169', 'U.S. POLO ASSN. Men\'s Barry Printed Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(368, '2025-07-03 05:42:02.653469', '170', 'Bacca Bucci Men\'s Fearless Low Top Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(369, '2025-07-03 05:42:23.043089', '3', 'Printed Sneakers For Men', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 13, 1),
(370, '2025-07-03 05:44:15.789084', '171', 'EverTrek Outdoor Hiking Boots-All-Terrain Grip', 1, '[{\"added\": {}}]', 15, 1),
(371, '2025-07-03 05:44:51.181996', '172', 'Men Terra Lite Mid Ankle Trekking Shoes Brown', 1, '[{\"added\": {}}]', 15, 1),
(372, '2025-07-03 05:47:22.969252', '173', 'Male Casual Outdoors Black', 1, '[{\"added\": {}}]', 15, 1),
(373, '2025-07-03 05:49:09.445868', '174', 'Men Volga Low-Ankle Outdoor Shoes', 1, '[{\"added\": {}}]', 15, 1),
(374, '2025-07-03 05:51:16.173409', '175', 'Men\'s Hiking & Trekking Boots', 1, '[{\"added\": {}}]', 15, 1),
(375, '2025-07-03 06:07:22.984237', '176', 'Weinbrenner Mens Brown Outdoor Shoes for Men', 1, '[{\"added\": {}}]', 15, 1),
(376, '2025-07-03 06:08:06.406893', '177', 'Boldfit Men\'s Hiking Shoes', 1, '[{\"added\": {}}]', 15, 1),
(377, '2025-07-03 06:08:42.652935', '178', 'Ergon Men\'s Outdoor Casual Shoes', 1, '[{\"added\": {}}]', 15, 1),
(378, '2025-07-03 06:09:07.521357', '4', 'Outback Outdoor Shoes', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 13, 1),
(379, '2025-07-03 06:11:10.841511', '179', 'Black Lightweight Beach Slides With Logo Print', 1, '[{\"added\": {}}]', 15, 1),
(380, '2025-07-03 06:18:15.050293', '180', 'Breezy Fluff Sandals', 1, '[{\"added\": {}}]', 15, 1),
(381, '2025-07-03 06:19:45.766260', '181', 'Being Men Sliders', 1, '[{\"added\": {}}]', 15, 1),
(382, '2025-07-03 06:20:50.736174', '182', 'Eva Unisex Sandals', 1, '[{\"added\": {}}]', 15, 1),
(383, '2025-07-03 06:22:01.349213', '183', 'PERY-PAO Sliders Men\'s White, Black, Grey Stylish Printed Flip Flop & Slippers', 1, '[{\"added\": {}}]', 15, 1),
(384, '2025-07-03 06:24:18.820654', '184', 'PERY-PAO Sliders Mens White, Black, Grey Stylish Printed Flip Flop', 1, '[{\"added\": {}}]', 15, 1),
(385, '2025-07-03 06:25:06.468244', '185', 'Jack & Jones Men Typography Sliders', 1, '[{\"added\": {}}]', 15, 1),
(386, '2025-07-03 06:26:56.475966', '186', 'Sparx Men\'s Flip-flops-Slide', 1, '[{\"added\": {}}]', 15, 1),
(387, '2025-07-03 06:37:11.181388', '5', 'Flip-Flops & Sliders', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 13, 1),
(388, '2025-07-03 06:52:03.293025', '180', 'Breezy Fluff Sandals', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(389, '2025-07-03 06:52:54.673686', '181', 'Being Men Sliders', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(390, '2025-07-03 07:06:05.210210', '187', 'Noise Twist Go Smartwatch', 1, '[{\"added\": {}}]', 15, 1),
(391, '2025-07-03 07:06:49.250157', '188', 'boAt Chrome Horizon, Video Watch Faces, 1.51” AMOLED Display', 1, '[{\"added\": {}}]', 15, 1),
(392, '2025-07-03 07:07:36.257607', '189', 'Anarc Smartwatch Made to break moulds.', 1, '[{\"added\": {}}]', 15, 1),
(393, '2025-07-03 07:09:55.548402', '190', 'boAt Lunar Discovery  Read more at: https://www.boat-lifestyle.com/products/lunar-discovery-hd-displ', 1, '[{\"added\": {}}]', 15, 1),
(394, '2025-07-03 07:10:33.525698', '191', 'Fire-Boltt Ninja Call Pro Max Smart Watch 2.01 inch Display, Bluetooth Calling', 1, '[{\"added\": {}}]', 15, 1),
(395, '2025-07-03 07:12:04.232089', '192', 'OnePlus Watch 2 with Wear OS 4,Snapdragon W5 Chipset,Upto 100hrs battery life,1.43’’', 1, '[{\"added\": {}}]', 15, 1),
(396, '2025-07-03 07:17:07.928979', '193', 'boAt Lunar Discovery', 1, '[{\"added\": {}}]', 15, 1),
(397, '2025-07-03 07:23:55.113947', '194', 'Fire-Boltt Phoenix Smart Watch', 1, '[{\"added\": {}}]', 15, 1),
(398, '2025-07-03 07:24:26.070297', '195', 'Noise Twist Go Round dial Smartwatch with BT Calling', 1, '[{\"added\": {}}]', 15, 1),
(399, '2025-07-03 07:25:09.074418', '1', 'Smart Watches', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 12, 1),
(400, '2025-07-03 07:26:49.615507', '190', 'boAt Lunar Discovery  Read more at: https://www.boat-lifestyle.com/products/lunar-discovery-hd-displ', 3, '', 15, 1),
(401, '2025-07-03 07:29:06.926856', '196', 'Fastrack Men\'s Analog-Digital Watch', 1, '[{\"added\": {}}]', 15, 1),
(402, '2025-07-03 07:29:37.877143', '197', 'Fastrack Unisex-Adult Analog Watch', 1, '[{\"added\": {}}]', 15, 1),
(403, '2025-07-03 07:29:59.646683', '198', 'Sonata Men\'s Sporty Analog Dial Casual Watch', 1, '[{\"added\": {}}]', 15, 1),
(404, '2025-07-03 07:30:23.588537', '199', 'Fastrack Automatics Green Dial Strap Automatic Watch', 1, '[{\"added\": {}}]', 15, 1),
(405, '2025-07-03 07:30:42.110257', '200', 'SKMEI Men\'s Digital Sports Watch', 1, '[{\"added\": {}}]', 15, 1),
(406, '2025-07-03 07:32:24.049054', '201', 'Fastrack Opulence Sun Moon Chronograph Analog Quartz Watch', 1, '[{\"added\": {}}]', 15, 1),
(407, '2025-07-03 07:32:47.068099', '202', 'Timex Men\'s Fashion Analog Watch', 1, '[{\"added\": {}}]', 15, 1),
(408, '2025-07-03 07:33:21.353499', '203', 'Titan Smart Heritage Men\'s Casual Watch', 1, '[{\"added\": {}}]', 15, 1),
(409, '2025-07-03 07:34:37.487369', '2', 'Sporty Watches', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 12, 1),
(410, '2025-07-03 16:24:04.309426', '204', 'Sonata Men\'s Poze Quartz Analog Strap Watch', 1, '[{\"added\": {}}]', 15, 1),
(411, '2025-07-03 16:24:26.891523', '205', 'Fastrack Men\'s Analog Watch', 1, '[{\"added\": {}}]', 15, 1),
(412, '2025-07-03 16:30:33.481089', '206', 'Timex Men\'s Analog Watch', 1, '[{\"added\": {}}]', 15, 1),
(413, '2025-07-03 16:31:34.257517', '207', 'Sonata Men\'s Poze Analog Quartz Watch', 1, '[{\"added\": {}}]', 15, 1),
(414, '2025-07-03 16:32:28.392227', '208', 'Fastrack Fastfit Quartz Multifunction Strap Watch', 1, '[{\"added\": {}}]', 15, 1),
(415, '2025-07-03 16:33:19.755718', '209', 'Joker & Witch Ajax Strap Watch', 1, '[{\"added\": {}}]', 15, 1),
(416, '2025-07-03 16:34:18.902124', '210', 'Titan Edge Squircle Quartz Analog Watch', 1, '[{\"added\": {}}]', 15, 1),
(417, '2025-07-03 16:35:21.371958', '211', 'Fossil Men Dean Chronograph Stainless Steel Watch', 1, '[{\"added\": {}}]', 15, 1),
(418, '2025-07-03 16:35:59.692169', '3', 'White Watches', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 12, 1),
(419, '2025-07-03 16:37:37.722231', '205', 'Fastrack Men\'s Analog Watch', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(420, '2025-07-03 16:38:19.372749', '205', 'Fastrack Men\'s Analog Watch', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(421, '2025-07-03 16:40:12.642467', '212', 'Fastrack Men Vyb Challenger Dial & Bracelet Style Straps Analogue', 1, '[{\"added\": {}}]', 15, 1),
(422, '2025-07-03 16:41:31.671177', '213', 'Fastrack Men Vyb Challenger Dial & Bracelet Style Straps Analogue', 1, '[{\"added\": {}}]', 15, 1),
(423, '2025-07-03 16:44:23.657231', '214', 'Fastrack Exuberant Quartz Analog Blue Dial Metal Strap Watch for Guys', 1, '[{\"added\": {}}]', 15, 1),
(424, '2025-07-03 16:44:51.038323', '215', 'Fastrack Extreme Sports Analog Watch - For Men', 1, '[{\"added\": {}}]', 15, 1),
(425, '2025-07-03 16:45:33.595593', '216', 'Fastrack Tick Tock Quartz Analog Black Dial With Black Stainless steel Strap Watch', 1, '[{\"added\": {}}]', 15, 1),
(426, '2025-07-03 16:46:14.028511', '217', 'Fastrack Party Analog Watch - For Men', 1, '[{\"added\": {}}]', 15, 1),
(427, '2025-07-03 16:48:33.935907', '218', 'FASTRACK in Black', 1, '[{\"added\": {}}]', 15, 1),
(428, '2025-07-03 16:49:35.483306', '219', 'Men\'s fast track watche', 1, '[{\"added\": {}}]', 15, 1),
(429, '2025-07-03 16:51:44.914210', '220', 'FASTRACK Brown Lether Belt For Men', 1, '[{\"added\": {}}]', 15, 1),
(430, '2025-07-03 16:52:18.759410', '4', 'Best of Fastrack', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 12, 1),
(431, '2025-07-03 16:52:45.226974', '212', 'Fastrack Men Vyb Challenger Dial & Bracelet Style Straps Analogue', 3, '', 15, 1),
(432, '2025-07-03 16:54:14.420464', '221', 'Fastrack 3272SL02 Men\'s Watch with 2 Year National Warranty', 1, '[{\"added\": {}}]', 15, 1),
(433, '2025-07-03 16:55:27.584496', '222', 'Mens Watches Ultra-Thin Minimalist Waterproof-Fashion Wrist Watch for Men', 1, '[{\"added\": {}}]', 15, 1),
(434, '2025-07-03 16:56:35.803942', '223', 'Modello Due US2-MN', 1, '[{\"added\": {}}]', 15, 1),
(435, '2025-07-03 16:57:21.146293', '224', 'Chic Budget Minimalist Watch: Style & Affordability', 1, '[{\"added\": {}}]', 15, 1),
(436, '2025-07-03 16:58:59.841730', '225', 'Minimalist Watches: A Fine Time for Simplicity', 1, '[{\"added\": {}}]', 15, 1),
(437, '2025-07-03 16:59:51.620085', '226', 'Men\'s Leather Watch Ultra Thin Watches for Men Minimalist Watch', 1, '[{\"added\": {}}]', 15, 1),
(438, '2025-07-03 17:01:22.147292', '227', 'Minimalist Watches for Men: A Guide to a Stylish Look - SenseOrient', 1, '[{\"added\": {}}]', 15, 1),
(439, '2025-07-03 17:01:39.113703', '5', 'Minimalist Watches', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 12, 1),
(440, '2025-07-03 17:04:22.460255', '5', 'Minimalist Watches', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 12, 1),
(441, '2025-07-03 17:12:05.130436', '228', 'FASTRACK Stylish Collection For Men', 1, '[{\"added\": {}}]', 15, 1),
(442, '2025-07-03 17:12:13.645988', '5', 'Minimalist Watches', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 12, 1),
(443, '2025-07-03 17:13:07.919744', '5', 'Minimalist Watches', 2, '[]', 12, 1),
(444, '2025-07-03 17:13:33.629379', '5', 'Minimalist Watches', 2, '[]', 12, 1),
(445, '2025-07-03 17:13:48.746190', '5', 'Minimalist Watches', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 12, 1),
(446, '2025-07-03 17:14:05.706627', '5', 'Minimalist Watches', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 12, 1),
(447, '2025-07-03 17:19:59.125127', '229', 'Whisper Cotton Flex Co-ord Set', 1, '[{\"added\": {}}]', 15, 1),
(448, '2025-07-03 17:20:57.410557', '230', 'Olive Green Casual Midi Dress  Olive Green Casual Midi Dress', 1, '[{\"added\": {}}]', 15, 1),
(449, '2025-07-03 17:23:16.879582', '231', 'ring-top off-shoulder', 1, '[{\"added\": {}}]', 15, 1),
(450, '2025-07-03 17:24:07.788570', '232', 'western dress - For all the ways you love to dress.', 1, '[{\"added\": {}}]', 15, 1),
(451, '2025-07-03 17:26:05.008413', '233', 'Western Dress', 1, '[{\"added\": {}}]', 15, 1),
(452, '2025-07-03 17:26:35.293717', '1', 'Moss & Melange', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 19, 1),
(453, '2025-07-03 17:26:45.888545', '2', 'Mod blocking', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 19, 1),
(454, '2025-07-03 17:27:06.919437', '1', 'Print Paradise', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 17, 1),
(455, '2025-07-03 17:27:59.089865', '1', 'Moss & Melange', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 19, 1),
(456, '2025-07-04 05:37:50.751372', '234', 'Western Jumsuit for Women', 1, '[{\"added\": {}}]', 15, 1),
(457, '2025-07-04 05:38:53.249262', '235', 'Women\'s Olive Criss- Cross Indo Western Dress', 1, '[{\"added\": {}}]', 15, 1),
(458, '2025-07-04 05:40:38.884501', '236', 'Western street fashion. Glowing in the street style', 1, '[{\"added\": {}}]', 15, 1),
(459, '2025-07-04 05:46:47.172976', '1', 'Moss & Melange', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 19, 1),
(460, '2025-07-04 05:48:31.657810', '237', 'Leriya Fashion Western Dresses for Women', 1, '[{\"added\": {}}]', 15, 1),
(461, '2025-07-04 05:56:21.721451', '238', 'Western Wear Guide for Slim Body Type', 1, '[{\"added\": {}}]', 15, 1),
(462, '2025-07-04 05:56:37.093521', '1', 'Moss & Melange', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 19, 1),
(463, '2025-07-04 06:02:11.371021', '239', 'jh', 1, '[{\"added\": {}}]', 15, 1),
(464, '2025-07-04 06:17:41.706728', '240', 'Tie Back Rib Crop Top', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(465, '2025-07-04 06:18:10.703212', '241', 'Round Neck Tie Up Crop Top', 1, '[{\"added\": {}}]', 15, 1),
(466, '2025-07-04 06:18:38.932208', '242', 'Brown Asymmetrical Neck Sleeveless Crop Top', 1, '[{\"added\": {}}]', 15, 1),
(467, '2025-07-04 06:24:05.992395', '243', 'Corset Style White Crop Top', 1, '[{\"added\": {}}]', 15, 1),
(468, '2025-07-04 06:27:06.778757', '244', 'Y2K AESTHETIC GREEN HEART SHAPES WHITE CROP TOP', 1, '[{\"added\": {}}]', 15, 1),
(469, '2025-07-04 06:29:00.449856', '245', 'Off Shoulder Full Sleeves Crop Top', 1, '[{\"added\": {}}]', 15, 1),
(470, '2025-07-04 06:31:00.629691', '239', 'Black Solid top', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 15, 1),
(471, '2025-07-04 06:31:16.611334', '2', 'Mod blocking', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 19, 1),
(472, '2025-07-04 06:42:01.793788', '246', 'Winter Tunic With Heart Print', 1, '[{\"added\": {}}]', 15, 1),
(473, '2025-07-04 06:44:31.580803', '247', 'Red Solid Ruched Back Crop Top', 1, '[{\"added\": {}}]', 15, 1),
(474, '2025-07-04 06:50:06.986738', '248', 'Balloon Sleeve Crop Top', 1, '[{\"added\": {}}]', 15, 1),
(475, '2025-07-04 06:50:43.524555', '249', 'Red Amazing Little Top', 1, '[{\"added\": {}}]', 15, 1),
(476, '2025-07-04 06:51:13.062363', '250', 'Red Side Drawstring Corset Top', 1, '[{\"added\": {}}]', 15, 1),
(477, '2025-07-04 06:51:46.250940', '251', 'Baseball Red oversized half sleeve cotton blend dropshoulder loose fit women t-shirt', 1, '[{\"added\": {}}]', 15, 1),
(478, '2025-07-04 06:52:50.201317', '252', 'Red Corset Sleeveless Crop Top', 1, '[{\"added\": {}}]', 15, 1),
(479, '2025-07-04 06:55:42.858564', '253', 'Red Pleated Cami Dress', 1, '[{\"added\": {}}]', 15, 1),
(480, '2025-07-04 06:56:02.575662', '3', 'Red Tops & Tees', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 19, 1),
(481, '2025-07-04 07:00:11.061560', '254', 'Oversized Tshirt', 1, '[{\"added\": {}}]', 15, 1),
(482, '2025-07-04 07:02:10.705390', '255', 'Casual T-Shirts for Women', 1, '[{\"added\": {}}]', 15, 1),
(483, '2025-07-04 07:03:46.861288', '256', 'Floral Printed Square Neck Crop Top', 1, '[{\"added\": {}}]', 15, 1),
(484, '2025-07-05 05:26:48.373371', '257', 'Skinny Fit Graphic T-Shirt', 1, '[{\"added\": {}}]', 15, 1),
(485, '2025-07-05 05:27:44.709038', '258', 'Shein Drop Shoulder Typographic Back Print Crew Tshirt', 1, '[{\"added\": {}}]', 15, 1),
(486, '2025-07-05 05:28:08.135654', '259', 'Bow Pullover T-Shirt', 1, '[{\"added\": {}}]', 15, 1),
(487, '2025-07-05 05:28:23.383600', '4', 'Smarter Daily Wear Tees', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 19, 1),
(488, '2025-07-05 05:30:48.045844', '260', 'Oversized top', 1, '[{\"added\": {}}]', 15, 1),
(489, '2025-07-05 05:31:30.052286', '261', 'Yellow One Sided Knot Stylish Top', 1, '[{\"added\": {}}]', 15, 1),
(490, '2025-07-05 05:31:53.222240', '4', 'Smarter Daily Wear Tees', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 19, 1),
(491, '2025-07-05 05:36:13.658668', '262', 'Style Quotient Women SAGE GREEN Solid Polyester Regular Smart Casual Top', 1, '[{\"added\": {}}]', 15, 1),
(492, '2025-07-05 05:36:53.789480', '263', 'Set of 2-Black Sweetheart Neck Crop Top With High Rise Trouser', 1, '[{\"added\": {}}]', 15, 1),
(493, '2025-07-05 05:38:05.545639', '264', 'Eco-Friendly & Sustainable', 1, '[{\"added\": {}}]', 15, 1),
(494, '2025-07-05 05:38:32.293172', '265', 'Green satin day out dress', 1, '[{\"added\": {}}]', 15, 1),
(495, '2025-07-05 05:38:54.761960', '266', 'Pretty Green Mini Dress', 1, '[{\"added\": {}}]', 15, 1),
(496, '2025-07-05 05:39:12.823687', '267', 'Set Of 2: Bottle Green Culottes Co Ord Set', 1, '[{\"added\": {}}]', 15, 1),
(497, '2025-07-05 05:39:39.299069', '268', 'Pastel Green Waist Top With High Rise Trouser', 1, '[{\"added\": {}}]', 15, 1),
(498, '2025-07-05 05:40:11.182161', '269', 'Green Long Cut out Slit Dress', 1, '[{\"added\": {}}]', 15, 1),
(499, '2025-07-05 05:40:27.723705', '5', 'Eco-Friendly Style', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 19, 1),
(500, '2025-07-05 06:06:06.539341', '270', 'BloomStride Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(501, '2025-07-05 06:07:01.922723', '271', 'LifeO -Girl\'s Sneakers Printed Casual Shoe', 1, '[{\"added\": {}}]', 15, 1),
(502, '2025-07-05 06:07:35.559149', '272', 'Creamy Matte Bullet Lipstick', 1, '[{\"added\": {}}]', 15, 1),
(503, '2025-07-05 06:08:11.619377', '273', 'The Printed Sneaker', 1, '[{\"added\": {}}]', 15, 1),
(504, '2025-07-05 06:09:09.945038', '274', 'Classic Brown and White Casual Shoes', 1, '[{\"added\": {}}]', 15, 1),
(505, '2025-07-05 06:10:04.982894', '275', 'Women Printed Casual Lace Up Shoes', 1, '[{\"added\": {}}]', 15, 1),
(506, '2025-07-05 06:12:51.196428', '276', 'World Corp Lo Plimsoll Alien Canvas Lace-up Sneaker', 1, '[{\"added\": {}}]', 15, 1),
(507, '2025-07-05 06:15:36.400967', '277', 'The Souled Store Women Minions Printed Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(508, '2025-07-05 06:16:11.602067', '1', 'Printed Sneakers For Women', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 21, 1),
(509, '2025-07-05 06:17:47.650293', '278', 'Women\'s Heels', 1, '[{\"added\": {}}]', 15, 1),
(510, '2025-07-05 06:18:32.440983', '279', 'Funky print canvas Heels', 1, '[{\"added\": {}}]', 15, 1),
(511, '2025-07-05 06:19:44.481082', '280', 'Brown White Combine Colour Everyday Footwear', 1, '[{\"added\": {}}]', 15, 1),
(512, '2025-07-05 06:20:59.915193', '281', 'Dona style mules', 1, '[{\"added\": {}}]', 15, 1),
(513, '2025-07-05 06:21:33.169177', '282', 'Barely there brown flat', 1, '[{\"added\": {}}]', 15, 1),
(514, '2025-07-05 06:22:05.658315', '283', 'Part of 3 for 1199 Shoes Elegant Flower embellished Off-white Flats', 1, '[{\"added\": {}}]', 15, 1),
(515, '2025-07-05 06:22:40.391376', '284', 'Work the Bloom Flats Brown', 1, '[{\"added\": {}}]', 15, 1),
(516, '2025-07-05 06:23:16.154292', '285', 'Trendy Women\'s Shoes | Fashionable Footwear', 1, '[{\"added\": {}}]', 15, 1),
(517, '2025-07-05 06:23:44.080641', '2', 'Everyday Classics', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 21, 1),
(518, '2025-07-05 06:24:04.167554', '283', 'Elegant Flower embellished Off-white Flats', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 15, 1),
(519, '2025-07-05 06:28:43.813586', '286', 'Sneakers For Women', 1, '[{\"added\": {}}]', 15, 1),
(520, '2025-07-05 06:29:54.771244', '287', 'Pastel colour blocking ankle sneakers', 1, '[{\"added\": {}}]', 15, 1),
(521, '2025-07-05 06:31:15.587354', '288', 'Women Colour Block Elena Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(522, '2025-07-05 06:32:33.503071', '289', 'grey Sneakers For Women', 1, '[{\"added\": {}}]', 15, 1),
(523, '2025-07-05 06:33:24.991875', '290', 'Lace Lullaby Retro Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(524, '2025-07-05 06:34:05.121759', '291', 'Coffee & Cream Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(525, '2025-07-05 06:35:25.142061', '292', 'Pastel Panel Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(526, '2025-07-05 06:36:10.345231', '3', 'Colorblocked Sneakers', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 21, 1),
(527, '2025-07-05 06:38:43.564427', '293', 'Rocia Shoes | Rocia by Regal – where fashion meets comfort, and every step feels like luxury.', 1, '[{\"added\": {}}]', 15, 1),
(528, '2025-07-05 06:39:26.411293', '294', 'Rocia by Regal Women\'s Beige Casual Sandals', 1, '[{\"added\": {}}]', 15, 1),
(529, '2025-07-05 06:40:46.370373', '295', 'Best Collection of Rocia', 1, '[{\"added\": {}}]', 15, 1),
(530, '2025-07-05 06:42:50.950523', '296', 'Chain On Nude Slingback Heels', 1, '[{\"added\": {}}]', 15, 1),
(531, '2025-07-05 06:43:09.824630', '4', 'Women\'s Footwear By Rocia', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 21, 1),
(532, '2025-07-05 06:44:53.557308', '297', 'Trendy Women\'s Shoes', 1, '[{\"added\": {}}]', 15, 1),
(533, '2025-07-05 06:46:12.213844', '298', 'ROCIA ® – Buy original ROCIA', 1, '[{\"added\": {}}]', 15, 1),
(534, '2025-07-05 06:47:59.698027', '299', 'Stylish Collection With Chain', 1, '[{\"added\": {}}]', 15, 1),
(535, '2025-07-05 06:48:09.944585', '4', 'Women\'s Footwear By Rocia', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 21, 1),
(536, '2025-07-05 06:53:02.352311', '300', 'Rocia Exclusive Heels', 1, '[{\"added\": {}}]', 15, 1),
(537, '2025-07-05 06:53:20.905380', '4', 'Women\'s Footwear By Rocia', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 21, 1),
(538, '2025-07-05 06:55:50.963502', '301', 'Comfortable Footwear for Women', 1, '[{\"added\": {}}]', 15, 1),
(539, '2025-07-05 06:56:23.999536', '302', 'Black & White Stylish Collection', 1, '[{\"added\": {}}]', 15, 1),
(540, '2025-07-05 06:57:25.352739', '303', 'Jelly shoes balance clearance', 1, '[{\"added\": {}}]', 15, 1),
(541, '2025-07-05 06:59:20.820612', '304', 'Comfortable Sandals for Women', 1, '[{\"added\": {}}]', 15, 1),
(542, '2025-07-05 06:59:56.888304', '305', 'Daily Wear Footwear for Women', 1, '[{\"added\": {}}]', 15, 1),
(543, '2025-07-05 07:01:37.225912', '306', 'Most Popular Sandals', 1, '[{\"added\": {}}]', 15, 1),
(544, '2025-07-05 07:02:37.132188', '307', 'Comfortable Dress Shoes for Women', 1, '[{\"added\": {}}]', 15, 1),
(545, '2025-07-05 07:03:11.381450', '308', 'Casual Pump Shoes For Women', 1, '[{\"added\": {}}]', 15, 1),
(546, '2025-07-05 07:03:29.515461', '5', 'Comfort Footwear', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 21, 1),
(547, '2025-07-06 14:38:36.424452', '309', 'Printed Western One-piece', 1, '[{\"added\": {}}]', 15, 1),
(548, '2025-07-06 14:40:12.086484', '310', 'Trendy Women\'s Clothing', 1, '[{\"added\": {}}]', 15, 1),
(549, '2025-07-06 14:40:49.073279', '311', 'Wholesale Printing sStrapless Lace-up Dress Women Sexy Mini Beach Dress', 1, '[{\"added\": {}}]', 15, 1),
(550, '2025-07-06 14:41:35.095261', '312', 'Shasmi Women\'s Georgette Digital Printed Maxi Dress for Women', 1, '[{\"added\": {}}]', 15, 1),
(551, '2025-07-06 14:43:09.270443', '313', 'Traditional Dress For Every Occasion', 1, '[{\"added\": {}}]', 15, 1),
(552, '2025-07-06 14:46:50.163543', '314', 'Abstract Print Halter Neck Jumpsuit', 1, '[{\"added\": {}}]', 15, 1),
(553, '2025-07-06 14:46:59.375994', '315', 'Square Neck Tie-Dye Printed Wide Leg Jumpsuit', 1, '[{\"added\": {}}]', 15, 1),
(554, '2025-07-06 14:48:50.136152', '316', 'Bow A-Line Dress', 1, '[{\"added\": {}}]', 15, 1),
(555, '2025-07-06 14:52:19.422581', '314', 'Square Neck Floral Design Dress', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Slug\"]}}]', 15, 1),
(556, '2025-07-06 14:53:00.813884', '1', 'Print Paradise', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 17, 1),
(557, '2025-07-06 14:53:48.223153', '1', 'Print Paradise', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 17, 1),
(558, '2025-07-06 14:57:10.534709', '1', 'Print Paradise', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 17, 1),
(559, '2025-07-06 14:57:56.596705', '315', 'Square Neck Tie-Dye Printed Wide Leg Jumpsuit', 3, '', 15, 1),
(560, '2025-07-06 14:57:56.606638', '314', 'Square Neck Floral Design Dress', 3, '', 15, 1),
(561, '2025-07-06 14:57:56.615614', '311', 'Wholesale Printing sStrapless Lace-up Dress Women Sexy Mini Beach Dress', 3, '', 15, 1),
(562, '2025-07-06 14:59:25.686368', '310', 'Trendy Women\'s Clothing', 3, '', 15, 1),
(563, '2025-07-06 14:59:42.200261', '309', 'Printed Western One-piece', 3, '', 15, 1),
(564, '2025-07-06 15:01:35.559236', '232', 'Dress - For all the ways you love to dress.', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 15, 1),
(565, '2025-07-06 15:02:25.091584', '317', 'Mustard embroidered lehenga with anarkali blouse', 1, '[{\"added\": {}}]', 15, 1),
(566, '2025-07-06 15:02:51.852809', '318', 'Mustard Color Mantellic Tissue Embroidered and Woven Anarkali Suit', 1, '[{\"added\": {}}]', 15, 1),
(567, '2025-07-06 15:03:19.211792', '319', 'Mustard Bandhani Printed Chinnon Palazzo Style Suit', 1, '[{\"added\": {}}]', 15, 1),
(568, '2025-07-06 15:03:58.056028', '320', 'Women Yellow Colour with Taffeta Silk Full Flair Gown', 1, '[{\"added\": {}}]', 15, 1),
(569, '2025-07-06 15:04:45.000913', '321', 'Georgette Maxi Ethnic Dress', 1, '[{\"added\": {}}]', 15, 1),
(570, '2025-07-06 15:05:31.207719', '322', 'Women Mustard Yellow Floral Printed V-Neck Mirror Embellished', 1, '[{\"added\": {}}]', 15, 1),
(571, '2025-07-06 15:06:12.248001', '323', 'Square Neck Floral Embroidered Empire Kurta with Trousers & Dupatta', 1, '[{\"added\": {}}]', 15, 1),
(572, '2025-07-06 15:07:21.460405', '324', 'Indian - For Every Occasion', 1, '[{\"added\": {}}]', 15, 1),
(573, '2025-07-06 15:07:40.468183', '2', 'Regal Mustard', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 17, 1),
(574, '2025-07-06 15:13:09.581428', '325', 'White Printed Kurta-Plaza Pair', 1, '[{\"added\": {}}]', 15, 1),
(575, '2025-07-06 15:14:37.907219', '326', 'Printed kurta', 1, '[{\"added\": {}}]', 15, 1),
(576, '2025-07-06 15:15:46.512530', '327', 'Light Material Jeans kurta', 1, '[{\"added\": {}}]', 15, 1),
(577, '2025-07-06 15:18:14.966610', '328', 'Plain Dress With Printed Dupatta', 1, '[{\"added\": {}}]', 15, 1),
(578, '2025-07-06 15:18:27.703990', '1', 'Print Paradise', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 17, 1),
(579, '2025-07-06 15:39:12.457238', '329', 'Indo Fusion Dress For Women', 1, '[{\"added\": {}}]', 15, 1),
(580, '2025-07-06 15:39:59.938290', '330', 'Exclusive Party Wear Dress', 1, '[{\"added\": {}}]', 15, 1),
(581, '2025-07-06 15:40:43.620191', '331', 'Modern Takes on Traditional Indian Clothing: Indo-Western Fusion Trend', 1, '[{\"added\": {}}]', 15, 1),
(582, '2025-07-06 15:41:13.282702', '332', 'One Shoulder Dresse', 1, '[{\"added\": {}}]', 15, 1),
(583, '2025-07-06 15:42:15.231123', '333', 'Fusion Wear Trends: Tradition Meets Contemporary Style', 1, '[{\"added\": {}}]', 15, 1),
(584, '2025-07-06 15:43:07.452476', '334', 'Explore Gen-Z Ethnic Wear styles for a traditional look', 1, '[{\"added\": {}}]', 15, 1),
(585, '2025-07-06 15:44:55.331702', '335', 'Black 3 Piece', 1, '[{\"added\": {}}]', 15, 1),
(586, '2025-07-06 15:46:39.856033', '336', 'Premium Chinon Ethnic Dress Indian', 1, '[{\"added\": {}}]', 15, 1),
(587, '2025-07-06 15:47:07.666834', '3', 'Fushion Dresses From W', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 17, 1),
(588, '2025-07-06 15:49:03.047458', '337', 'Lime Yellow Silk Layered Kurta Churidar Suit Set Kurta, Inner, Churidar, Dupatta at Biba Global', 1, '[{\"added\": {}}]', 15, 1),
(589, '2025-07-06 15:49:33.843684', '338', 'White and Black Cotton Printed Anarkali Kurta Set | Biba', 1, '[{\"added\": {}}]', 15, 1),
(590, '2025-07-06 15:50:01.373876', '339', 'Green Modal Floral Printed Straight Kurta Set', 1, '[{\"added\": {}}]', 15, 1),
(591, '2025-07-06 15:50:37.441766', '340', 'Lilac Polyester Straight Kurta Set at Biba India', 1, '[{\"added\": {}}]', 15, 1),
(592, '2025-07-06 15:51:06.219891', '341', 'Green Embroidered Festive Kalidar Suit Set', 1, '[{\"added\": {}}]', 15, 1),
(593, '2025-07-06 15:51:37.471560', '342', 'BIBA Women Rayon Straight Kurta Set', 1, '[{\"added\": {}}]', 15, 1),
(594, '2025-07-06 15:52:45.512194', '343', 'Indigo Pure Cotton Fusion Kurta Set', 1, '[{\"added\": {}}]', 15, 1),
(595, '2025-07-06 15:53:24.133754', '344', 'Biba Blue Handblock Kurta Set', 1, '[{\"added\": {}}]', 15, 1),
(596, '2025-07-06 15:55:32.343904', '345', 'Trendy Lavender Floral Sleeveless Kurti with Palazzo Set Women\'s Fashion Ethnic Wear', 1, '[{\"added\": {}}]', 15, 1),
(597, '2025-07-06 15:56:02.059529', '346', 'Women Summer Wear Cotton Kurta & Suit Set | Jaipur Kurti', 1, '[{\"added\": {}}]', 15, 1),
(598, '2025-07-06 15:56:58.420137', '347', 'summer college outfit', 1, '[{\"added\": {}}]', 15, 1),
(599, '2025-07-06 15:57:41.457880', '348', 'Chikankari kurtas in the Summer Heat', 1, '[{\"added\": {}}]', 15, 1),
(600, '2025-07-06 15:58:57.448068', '349', 'Cotton kurta', 1, '[{\"added\": {}}]', 15, 1),
(601, '2025-07-06 16:00:22.647734', '350', 'Black Floral Printed V-Neck Thread Work Pure Cotton Straight Kurta', 1, '[{\"added\": {}}]', 15, 1),
(602, '2025-07-06 16:01:25.678668', '351', 'Libas Coral Yoke Design Cotton Straight Kurta With Trousers & Dupatta', 1, '[{\"added\": {}}]', 15, 1),
(603, '2025-07-06 16:02:17.285496', '352', 'Libas Notched Neck Flared Sleeves Ethnic Embroidered Kurta with Palazzo & Dupatta', 1, '[{\"added\": {}}]', 15, 1),
(604, '2025-07-06 16:02:55.532295', '4', 'Kurta Sets By BIBA', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 17, 1),
(605, '2025-07-06 16:03:11.051849', '5', 'Summer-Ready Ethenic', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 17, 1),
(606, '2025-07-06 16:05:13.613178', '353', 'Women Summits Lace-Up Shoes', 1, '[{\"added\": {}}]', 15, 1),
(607, '2025-07-06 16:06:06.807041', '354', 'Skecher\'s violet collection', 1, '[{\"added\": {}}]', 15, 1),
(608, '2025-07-06 16:06:49.651497', '355', 'Skechers UNO - STAND ON AIR Women Rose Perforated Memory Foam Sneakers', 1, '[{\"added\": {}}]', 15, 1),
(609, '2025-07-06 16:09:17.239745', '356', 'Skechers Women\'s GO WALK 6 - VALERIE Mauve Walking Shoes', 1, '[{\"added\": {}}]', 15, 1),
(610, '2025-07-06 16:09:58.053674', '357', 'Skechers Women\'s Go Walk Flex Walking Shoes', 1, '[{\"added\": {}}]', 15, 1),
(611, '2025-07-06 16:11:04.220547', '358', 'Cheap skechers shoes For womens', 1, '[{\"added\": {}}]', 15, 1),
(612, '2025-07-06 16:11:57.214429', '359', 'SKECHERS GoWalk Evolution Ultra Walking Shoes', 1, '[{\"added\": {}}]', 15, 1),
(613, '2025-07-06 16:14:00.428989', '360', 'SKECHERS - Spread the love with Skechers Women JGoldcrown Skechers Street Uno Shoes. ❤', 1, '[{\"added\": {}}]', 15, 1),
(614, '2025-07-06 16:14:21.589831', '1', 'Skechers Go Walk Range', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 18, 1),
(615, '2025-07-06 16:16:44.180871', '361', 'Under armour women\'s online gym set', 1, '[{\"added\": {}}]', 15, 1),
(616, '2025-07-06 16:17:05.974766', '362', 'Under armour gym set outlet', 1, '[{\"added\": {}}]', 15, 1),
(617, '2025-07-06 16:18:02.245090', '363', 'Under armour gym set outlet', 1, '[{\"added\": {}}]', 15, 1),
(618, '2025-07-06 16:18:42.313922', '364', '2 - 2 Women - Under Armour Fitness Leggings 2 - 2 Women - Under Armour Fitness Leggings', 1, '[{\"added\": {}}]', 15, 1),
(619, '2025-07-06 16:19:59.944326', '365', 'Kid s Under Armour Clothing Trainers Tracksuits JD Sports UK Kid s Under Armour Clothing Trainers Tr', 1, '[{\"added\": {}}]', 15, 1),
(620, '2025-07-06 16:23:53.215589', '366', 'Under Armour Jade Set - Top Shorts ModActive Under Armour Jade Set - Top Shorts ModActive', 1, '[{\"added\": {}}]', 15, 1),
(621, '2025-07-06 16:27:23.227936', '367', 'Women Sports Wear Shorts - Buy Women Sports Wear Shorts online in India', 1, '[{\"added\": {}}]', 15, 1),
(622, '2025-07-06 16:27:50.532750', '368', 'UNDER ARMOUR Women Fly By 2 in 1 Running Shorts', 1, '[{\"added\": {}}]', 15, 1),
(623, '2025-07-06 16:29:45.618480', '369', 'Joggers', 1, '[{\"added\": {}}]', 15, 1),
(624, '2025-07-06 16:30:17.458452', '370', 'AMERICAN EAGLE OUTFITTERS Men Slim Fit Stretchable Jeans', 1, '[{\"added\": {}}]', 15, 1),
(625, '2025-07-06 16:31:03.476635', '371', 'Set Of Two :Corset Style Top & Jogger In Light Brown', 1, '[{\"added\": {}}]', 15, 1),
(626, '2025-07-06 16:33:01.147339', '372', 'Black Premium Embroidered Oversized Wide Leg Joggers', 1, '[{\"added\": {}}]', 15, 1),
(627, '2025-07-06 16:34:11.274890', '373', 'Women Rose Solid Cotton Joggers', 1, '[{\"added\": {}}]', 15, 1),
(628, '2025-07-06 16:35:04.439536', '374', 'BOLDFIT Women Mid-Rise Sports Joggers', 1, '[{\"added\": {}}]', 15, 1),
(629, '2025-07-06 16:35:49.456611', '375', 'Women Rapid-Dry Training Joggers', 1, '[{\"added\": {}}]', 15, 1),
(630, '2025-07-06 16:40:59.715407', '376', 'Women Sports Wear Track Pants', 1, '[{\"added\": {}}]', 15, 1),
(631, '2025-07-06 16:41:32.577168', '2', 'Under Armoured Style', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 18, 1),
(632, '2025-07-06 16:41:44.936391', '3', 'Joggers By Under Armoured', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 18, 1),
(633, '2025-07-06 16:43:34.889239', '377', 'Women Running Sports Shoes', 1, '[{\"added\": {}}]', 15, 1),
(634, '2025-07-06 16:44:50.737756', '378', 'Avant Women\'s Sapphire Running Shoes- Purple', 1, '[{\"added\": {}}]', 15, 1),
(635, '2025-07-06 16:45:19.506245', '379', 'Running Shoes For Women', 1, '[{\"added\": {}}]', 15, 1),
(636, '2025-07-06 16:45:45.738563', '380', 'Campus Women Ciara Running Shoes', 1, '[{\"added\": {}}]', 15, 1),
(637, '2025-07-06 16:46:24.250966', '381', 'Women\'s White Sports Shoes Online', 1, '[{\"added\": {}}]', 15, 1),
(638, '2025-07-06 16:47:05.525304', '382', 'Women Sale Sports Shoes', 1, '[{\"added\": {}}]', 15, 1),
(639, '2025-07-06 16:47:57.329977', '383', 'COMFORT-Sports Shoes', 1, '[{\"added\": {}}]', 15, 1),
(640, '2025-07-06 16:48:43.428493', '384', 'Red Tape Women Walking Sports Shoes', 1, '[{\"added\": {}}]', 15, 1),
(641, '2025-07-06 16:49:02.330117', '5', 'Running Shoes', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 18, 1),
(642, '2025-07-06 16:51:12.084484', '385', 'THE CLOTHING FACTORY Women Pink Solid Tank Top & Athleisure Cycling shorts', 1, '[{\"added\": {}}]', 15, 1),
(643, '2025-07-06 16:52:20.188223', '386', 'LULU & SKY Women V-Neck Ruched Athleisure Top', 1, '[{\"added\": {}}]', 15, 1),
(644, '2025-07-06 16:53:14.384455', '387', 'ATHLISIS Women Lightweight Crop Training or Gym Sporty Jacket', 1, '[{\"added\": {}}]', 15, 1),
(645, '2025-07-06 16:54:05.247766', '388', 'Jockey Super Combed Cotton Rich Relaxed Fit Curved Hem Styled Half Sleeve Tshirt-AW88', 1, '[{\"added\": {}}]', 15, 1),
(646, '2025-07-06 16:54:39.504249', '389', 'Allen Solly Woman Women White & Olive Green Printed Athleisure T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(647, '2025-07-06 16:55:36.901371', '390', 'Women Sports Printed Rapid-Dry Running T-shirt', 1, '[{\"added\": {}}]', 15, 1),
(648, '2025-07-06 16:56:26.264447', '391', 'Women White Solid Tank Top & Athleisure Cycling shorts', 1, '[{\"added\": {}}]', 15, 1),
(649, '2025-07-06 16:57:39.250166', '392', 'Colourblocked Antimicrobial Slim Fit Short Length T-shirts', 1, '[{\"added\": {}}]', 15, 1),
(650, '2025-07-06 16:57:54.041016', '4', 'Athlaisure Apparel', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 18, 1),
(651, '2025-07-06 17:01:45.693359', '393', 'KARATCART Gold-Plated Cream Artificial Beaded Polki Kundan-Studded Jewellery Set', 1, '[{\"added\": {}}]', 15, 1),
(652, '2025-07-06 17:02:22.797457', '394', 'Gold-Plated Stone-Studded Jewellery Set', 1, '[{\"added\": {}}]', 15, 1),
(653, '2025-07-06 17:02:58.081977', '395', 'Victorian-Plated Kundan Studded & Beaded Ethnic Jewellery Set', 1, '[{\"added\": {}}]', 15, 1),
(654, '2025-07-06 17:03:51.806244', '396', 'Green Gold-Plated Party Pendant Set', 1, '[{\"added\": {}}]', 15, 1),
(655, '2025-07-06 17:05:39.929054', '397', 'White Gold-Plated Cubic Zircon Studded Jewellery Set', 1, '[{\"added\": {}}]', 15, 1),
(656, '2025-07-06 17:06:36.850109', '398', 'Rose Gold-Plated White AD-Studded Jewellery Set', 1, '[{\"added\": {}}]', 15, 1),
(657, '2025-07-06 17:07:40.544969', '399', 'Gold-Plated Austrian Diamonds Stone-Studded Meenakari Jewellery Set', 1, '[{\"added\": {}}]', 15, 1),
(658, '2025-07-06 17:09:00.738582', '400', 'Artificial Earrings', 1, '[{\"added\": {}}]', 15, 1),
(659, '2025-07-06 17:10:30.921706', '401', '18K Rose Gold Plated Cubic Zirconia Studded Black Beaded Mangalsutra', 1, '[{\"added\": {}}]', 15, 1),
(660, '2025-07-06 17:11:13.321132', '402', 'Gold-Plated Mangalsutra Jewellery Set', 1, '[{\"added\": {}}]', 15, 1),
(661, '2025-07-06 17:12:18.424710', '403', 'Gold-Plated Crystals Mangalsutra', 1, '[{\"added\": {}}]', 15, 1),
(662, '2025-07-06 17:13:10.446118', '404', 'Gold-Plated Artificial Stones and Beads Mangalsutra', 1, '[{\"added\": {}}]', 15, 1),
(663, '2025-07-06 17:13:50.983869', '405', 'Clara Silver-Toned Rope Mangalsutra Set', 1, '[{\"added\": {}}]', 15, 1),
(664, '2025-07-06 17:14:18.848171', '406', 'MINUTIAE Silver-Plated Artificial Stones and Beads Mangalsutra', 1, '[{\"added\": {}}]', 15, 1),
(665, '2025-07-06 17:14:48.444234', '407', 'Clara Silver Twist Mangalsutra Set', 1, '[{\"added\": {}}]', 15, 1),
(666, '2025-07-06 17:15:29.202600', '408', 'Gold-Plated Pink Stone Mangalsutra with Earrings for Women', 1, '[{\"added\": {}}]', 15, 1),
(667, '2025-07-06 17:15:48.797481', '2', 'The Magalsutra Collection', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 20, 1),
(668, '2025-07-06 17:16:06.352312', '1', 'Best Of Imittire', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 20, 1),
(669, '2025-07-07 15:21:25.473429', '409', 'Everstylish The Valley of Flowers Enamelled Golden Bracelet', 1, '[{\"added\": {}}]', 15, 1),
(670, '2025-07-07 15:24:29.996722', '410', 'Colorful Mirror Work Beaded Choker Necklace For Women', 1, '[{\"added\": {}}]', 15, 1),
(671, '2025-07-07 15:26:02.195510', '411', 'Women Silver-Plated Blue & White Beaded Jewellery Set', 1, '[{\"added\": {}}]', 15, 1),
(672, '2025-07-07 15:26:25.153495', '412', 'Gold-Plated Pearl Beaded Necklace', 1, '[{\"added\": {}}]', 15, 1),
(673, '2025-07-07 15:27:04.666897', '413', 'Gold-Plated Stone-Studded Necklace', 1, '[{\"added\": {}}]', 15, 1),
(674, '2025-07-07 15:27:26.227911', '414', 'Beaded Flower Choker Jewellery Set', 1, '[{\"added\": {}}]', 15, 1),
(675, '2025-07-07 15:28:44.410350', '415', 'Handmade Earrings', 1, '[{\"added\": {}}]', 15, 1),
(676, '2025-07-07 15:29:25.880615', '416', 'HANDMADE EARRINGS PISTA GREEN ADVITA', 1, '[{\"added\": {}}]', 15, 1),
(677, '2025-07-07 15:30:01.990692', '3', 'Handcrafted Jewellery', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 20, 1),
(678, '2025-07-07 15:33:00.937302', '417', 'Fossil Women Rose Gold-Toned Analogue Chronograph Watch', 1, '[{\"added\": {}}]', 15, 1),
(679, '2025-07-07 15:34:18.126859', '418', 'Titan Women Pink Analog Watch', 1, '[{\"added\": {}}]', 15, 1),
(680, '2025-07-07 15:35:10.085141', '419', 'Round Titan Watch, For Formal at', 1, '[{\"added\": {}}]', 15, 1),
(681, '2025-07-07 15:35:36.223876', '420', 'Women Rose Gold Watche', 1, '[{\"added\": {}}]', 15, 1),
(682, '2025-07-07 15:36:09.544108', '421', 'Watches & Smart Watches for women', 1, '[{\"added\": {}}]', 15, 1),
(683, '2025-07-07 15:38:16.800827', '422', 'Women\'s Stylish Watch', 1, '[{\"added\": {}}]', 15, 1),
(684, '2025-07-07 15:39:16.865503', '423', 'Giordano Watches & Smart Watches for Women', 1, '[{\"added\": {}}]', 15, 1),
(685, '2025-07-07 15:40:20.963664', '424', 'Joker&Witch fashionable & trendy watche', 1, '[{\"added\": {}}]', 15, 1),
(686, '2025-07-07 15:42:07.255556', '425', 'Titan Women White Analogue Watch', 1, '[{\"added\": {}}]', 15, 1),
(687, '2025-07-07 15:42:32.328014', '426', 'Fastrack Trendies Women White Analogue watch', 1, '[{\"added\": {}}]', 15, 1),
(688, '2025-07-07 15:43:12.363593', '427', 'Titan Women White & Silver Analogue Watch', 1, '[{\"added\": {}}]', 15, 1),
(689, '2025-07-07 15:43:38.364918', '428', 'DressBerry Women Silver Toned Bracelet Style Straps Analogue Watch', 1, '[{\"added\": {}}]', 15, 1),
(690, '2025-07-07 15:44:27.540987', '429', 'Sonata Women Silver-Toned & Off-White Dial Watch', 1, '[{\"added\": {}}]', 15, 1),
(691, '2025-07-07 15:45:23.129650', '430', 'White Ceramic Strap Watch - Buy White Ceramic Strap Watch', 1, '[{\"added\": {}}]', 15, 1),
(692, '2025-07-07 15:46:24.642722', '431', 'Joker&Witch New Collection', 1, '[{\"added\": {}}]', 15, 1),
(693, '2025-07-07 15:47:33.587778', '432', 'Luxury White Collection', 1, '[{\"added\": {}}]', 15, 1),
(694, '2025-07-07 15:47:58.643245', '4', 'Rose Gold Watches', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 20, 1),
(695, '2025-07-07 15:48:17.175251', '5', 'White Watches', 2, '[{\"changed\": {\"fields\": [\"Products\"]}}]', 20, 1),
(696, '2025-07-07 15:52:04.755359', '433', 'Girls Tops - Stylish Top for Girls', 1, '[{\"added\": {}}]', 15, 1),
(697, '2025-07-07 15:52:48.586870', '434', 'Kids Toddler Baby Girls Tops for 1~6 Years Old', 1, '[{\"added\": {}}]', 15, 1),
(698, '2025-07-07 15:53:14.292974', '435', 'kids trendy top wear', 1, '[{\"added\": {}}]', 15, 1),
(699, '2025-07-07 15:53:38.300944', '434', 'Kids Toddler Baby Girls Tops for 1~6 Years Old', 2, '[{\"changed\": {\"fields\": [\"Kidz category\"]}}]', 15, 1),
(700, '2025-07-07 15:53:44.864944', '435', 'kids trendy top wear', 2, '[{\"changed\": {\"fields\": [\"Kidz category\"]}}]', 15, 1),
(701, '2025-07-07 15:55:12.448628', '436', 'Girl Cut Girls Tops - Buy Boy Girl Cut Girls Tops', 1, '[{\"added\": {}}]', 15, 1),
(702, '2025-07-07 15:55:35.456962', '436', 'Girl Cut Girls Tops - Buy Boy Girl Cut Girls Tops', 2, '[{\"changed\": {\"fields\": [\"Kidz category\"]}}]', 15, 1),
(703, '2025-07-07 15:57:15.041132', '437', 'Short Sleeve Tees Cotton Top', 1, '[{\"added\": {}}]', 15, 1),
(704, '2025-07-07 15:57:46.229938', '438', 'Boys T shirts', 1, '[{\"added\": {}}]', 15, 1),
(705, '2025-07-07 15:58:19.695572', '439', 'US Polo Assn Boys T Shirts', 1, '[{\"added\": {}}]', 15, 1),
(706, '2025-07-07 16:00:05.364118', '440', 'Boys\' Spring and Summer Graphic Short Sleeve T-Shirt', 1, '[{\"added\": {}}]', 15, 1),
(707, '2025-07-07 16:00:14.466118', '439', 'US Polo Assn Boys T Shirts', 2, '[{\"changed\": {\"fields\": [\"Kidz category\"]}}]', 15, 1),
(708, '2025-07-07 16:00:35.697127', '438', 'Boys T shirts', 2, '[{\"changed\": {\"fields\": [\"Kidz category\"]}}]', 15, 1),
(709, '2025-07-07 16:00:42.913468', '437', 'Short Sleeve Tees Cotton Top', 2, '[{\"changed\": {\"fields\": [\"Kidz category\"]}}]', 15, 1),
(710, '2025-07-07 16:03:11.535654', '441', 'Boys Ethnic Kurta', 1, '[{\"added\": {}}]', 15, 1),
(711, '2025-07-07 16:03:41.436808', '442', 'Baby Traditional Pair', 1, '[{\"added\": {}}]', 15, 1),
(712, '2025-07-07 16:03:51.804778', '441', 'Boys Ethnic Kurta', 2, '[{\"changed\": {\"fields\": [\"Kidz category\"]}}]', 15, 1),
(713, '2025-07-07 16:03:58.436979', '442', 'Baby Traditional Pair', 2, '[{\"changed\": {\"fields\": [\"Kidz category\"]}}]', 15, 1),
(714, '2025-07-07 16:04:49.966650', '443', 'Kids Ethnic Wear Posh', 1, '[{\"added\": {}}]', 15, 1),
(715, '2025-07-07 16:05:49.813316', '444', 'Kinder KidsGirls Floral Printed Angrakha Pure Cotton Kurti', 1, '[{\"added\": {}}]', 15, 1),
(716, '2025-07-07 16:06:00.135816', '444', 'Kinder KidsGirls Floral Printed Angrakha Pure Cotton Kurti', 2, '[{\"changed\": {\"fields\": [\"Kidz category\"]}}]', 15, 1),
(717, '2025-07-07 16:07:07.174363', '439', 'US Polo Assn Boys T Shirts', 3, '', 15, 1),
(718, '2025-07-07 16:07:07.181563', '438', 'Boys T shirts', 3, '', 15, 1),
(719, '2025-07-07 16:07:21.624091', '435', 'kids trendy top wear', 3, '', 15, 1),
(720, '2025-07-07 16:07:21.631842', '434', 'Kids Toddler Baby Girls Tops for 1~6 Years Old', 3, '', 15, 1),
(721, '2025-07-07 16:37:46.786755', '445', 'Fit & Flare Dress', 1, '[{\"added\": {}}]', 15, 1),
(722, '2025-07-07 16:40:34.939370', '446', 'Stylish Multi Ice Cream Designer Frock', 1, '[{\"added\": {}}]', 15, 1),
(723, '2025-07-07 16:40:50.420726', '445', 'Fit & Flare Dress', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Price\"]}}]', 15, 1),
(724, '2025-07-07 16:42:03.361570', '447', 'mininest Full Sleeves Polka Dots Printed Night Sleepwear', 1, '[{\"added\": {}}]', 15, 1),
(725, '2025-07-07 16:42:33.888560', '448', 'Unisex Cotton Full Sleeve Kids Nightwear', 1, '[{\"added\": {}}]', 15, 1),
(726, '2025-07-07 16:43:14.505621', '449', 'Lilac Cotton Jersey Button Through Short Pyjama', 1, '[{\"added\": {}}]', 15, 1),
(727, '2025-07-07 16:44:02.582311', '450', 'Cartoon childrens pyjama For Kidz', 1, '[{\"added\": {}}]', 15, 1),
(728, '2025-07-07 16:45:10.430494', '451', 'StarAndDaisy Summer Kids Sandals Lightweight and Breathable Open-Toe Shoes for Boys and Girls', 1, '[{\"added\": {}}]', 15, 1),
(729, '2025-07-07 16:46:34.730913', '451', 'Stylish&Comfort Pink Sandals For Girls', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Price\"]}}]', 15, 1),
(730, '2025-07-07 16:47:13.913325', '452', 'Pearl - Kids Footwear', 1, '[{\"added\": {}}]', 15, 1),
(731, '2025-07-07 16:47:47.208909', '453', 'Premium Watermelon Jellies Flip-flops - Navy Blue', 1, '[{\"added\": {}}]', 15, 1),
(732, '2025-07-07 16:49:51.871923', '451', 'Stylish&Comfort Pink Sandals For Girls', 3, '', 15, 1),
(733, '2025-07-07 16:50:18.416815', '454', 'StarAndDaisy Summer Kids Sandals Lightweight and Breathable Open-Toe Shoes for Boys and Girls', 1, '[{\"added\": {}}]', 15, 1),
(734, '2025-07-07 16:51:08.722898', '455', 'Stylish&Comfy Pink Sandals For Girls', 1, '[{\"added\": {}}]', 15, 1),
(735, '2025-07-07 16:53:14.187852', '456', 'Boys cheques Shirt', 1, '[{\"added\": {}}]', 15, 1),
(736, '2025-07-07 16:54:14.011572', '457', 'Linen Boys Shirts', 1, '[{\"added\": {}}]', 15, 1),
(737, '2025-07-07 16:54:58.974414', '458', 'Cotton Boys Shirts', 1, '[{\"added\": {}}]', 15, 1),
(738, '2025-07-07 16:55:41.812272', '459', 'Printed Kido Shirt', 1, '[{\"added\": {}}]', 15, 1),
(739, '2025-07-07 17:04:08.585391', '460', 'Onepiece', 1, '[{\"added\": {}}]', 15, 1),
(740, '2025-07-07 17:05:25.050006', '461', 'Party Wear Dress For Girlss', 1, '[{\"added\": {}}]', 15, 1),
(741, '2025-07-07 17:06:25.377074', '462', 'Printed Onepiece With Slug', 1, '[{\"added\": {}}]', 15, 1),
(742, '2025-07-07 17:07:47.976983', '463', 'Black&White Classy Design Party-Wear Dress', 1, '[{\"added\": {}}]', 15, 1),
(743, '2025-07-07 17:08:54.890263', '464', 'YK Girls V-Neck Basic Jumpsuit', 1, '[{\"added\": {}}]', 15, 1),
(744, '2025-07-07 17:09:29.125424', '465', 'Kids Jumpsuit - Buy Jumpsuits for Kids', 1, '[{\"added\": {}}]', 15, 1),
(745, '2025-07-07 17:10:00.571375', '466', 'Critter Kids Girls Printed Cotton Basic Jumpsuit', 1, '[{\"added\": {}}]', 15, 1),
(746, '2025-07-07 17:11:04.238746', '467', 'Blue Dresses For Kids Jumpsuit', 1, '[{\"added\": {}}]', 15, 1),
(747, '2025-07-07 17:12:32.346314', '468', 'Kids Shorts - Get Stylish Shorts', 1, '[{\"added\": {}}]', 15, 1),
(748, '2025-07-07 17:13:40.038023', '469', 'Shorts - Get Stylish Shorts', 1, '[{\"added\": {}}]', 15, 1),
(749, '2025-07-07 17:14:27.446317', '470', 'Tweens Lite Wite Minimiser Support Medium Padded Cotton', 1, '[{\"added\": {}}]', 15, 1),
(750, '2025-07-07 17:15:10.753715', '471', 'Boys Side Striped Rapid Dry Sports Shorts', 1, '[{\"added\": {}}]', 15, 1),
(751, '2025-07-07 17:17:35.979906', '472', 'Cute Bootties For The Cuties', 1, '[{\"added\": {}}]', 15, 1),
(752, '2025-07-07 17:18:05.376412', '473', 'Heart Print Socks', 1, '[{\"added\": {}}]', 15, 1),
(753, '2025-07-07 17:18:50.314256', '474', 'Marvel Print Boys Socks', 1, '[{\"added\": {}}]', 15, 1),
(754, '2025-07-07 17:19:32.208120', '475', 'Unisex-Different Print Socks', 1, '[{\"added\": {}}]', 15, 1),
(755, '2025-07-07 17:20:37.814939', '476', 'JENNA Kids-Boys Captain America Printed Cotton Baseball Cap', 1, '[{\"added\": {}}]', 15, 1),
(756, '2025-07-07 17:21:21.142313', '477', 'Unisex Kids Maroon & White Embroidered Cotton Beanie', 1, '[{\"added\": {}}]', 15, 1),
(757, '2025-07-07 17:21:58.811662', '478', 'Unisex Kids Embroidered Baseball Cap', 1, '[{\"added\": {}}]', 15, 1),
(758, '2025-07-07 17:22:55.956109', '479', 'Kids Performance Youth Baseball Cap', 1, '[{\"added\": {}}]', 15, 1),
(759, '2025-07-07 17:24:18.709371', '480', 'Parachute Advansed Baby Care Gift Set - Baby Care Kit for Unisex Kids', 1, '[{\"added\": {}}]', 15, 1),
(760, '2025-07-07 17:25:17.473070', '481', 'Johnson\'s Baby Care Collection with Organic Cotton Bib & Baby Comb', 1, '[{\"added\": {}}]', 15, 1),
(761, '2025-07-07 17:25:52.376103', '482', 'Himalaya Happy Baby Gift Pack', 1, '[{\"added\": {}}]', 15, 1),
(762, '2025-07-07 17:26:27.022161', '483', 'Moms Home Kids Set Of 6 Baby Care Products', 1, '[{\"added\": {}}]', 15, 1),
(763, '2025-07-12 17:43:54.365403', '484', 'lip stik', 1, '[{\"added\": {}}]', 15, 1),
(764, '2025-07-13 17:07:14.390601', '485', 'Lakyou Beauty Ultra HD Invisible Cover Foundation | Seamless Blend | High Definition Finish', 1, '[{\"added\": {}}]', 15, 1),
(765, '2025-07-13 17:08:01.803474', '486', 'Compact Powder', 1, '[{\"added\": {}}]', 15, 1),
(766, '2025-07-13 17:09:48.990964', '487', 'Lakme Mascara For High Vloume', 1, '[{\"added\": {}}]', 15, 1),
(767, '2025-07-13 17:10:57.221268', '484', 'Lipsticks Nude Shade For Every Occasion', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Price\"]}}]', 15, 1),
(768, '2025-07-13 17:11:14.830535', '485', 'Lakyou Beauty Ultra HD Invisible Cover Foundation', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(769, '2025-07-14 06:18:26.106557', '488', 'Kerastase Elixir Ultime Hair Oil', 1, '[{\"added\": {}}]', 15, 1),
(770, '2025-07-14 06:19:11.469783', '489', 'wella combo for smooth hair', 1, '[{\"added\": {}}]', 15, 1),
(771, '2025-07-14 06:21:52.182753', '490', 'Minimalist Hair Growth  Scalp Serum', 1, '[{\"added\": {}}]', 15, 1),
(772, '2025-07-14 06:23:05.154731', '491', 'Minimalist Maleic Bond Repair Hair Combo', 1, '[{\"added\": {}}]', 15, 1),
(773, '2025-07-14 06:28:54.778042', '491', 'Minimalist Maleic Bond Repair Hair Combo', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(774, '2025-07-14 06:31:44.807999', '490', 'TRESemme Frizzy Keratin Mask', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Price\", \"Slug\"]}}]', 15, 1),
(775, '2025-07-14 06:41:31.163654', '492', 'Cetaphil face wash Gentle Skin Cleanser - 250 ml', 1, '[{\"added\": {}}]', 15, 1),
(776, '2025-07-14 06:44:07.214616', '493', 'Minimalist  Face Moisturizer For Oily acne prone Skin', 1, '[{\"added\": {}}]', 15, 1),
(777, '2025-07-14 06:48:17.403570', '494', 'RENEE Lumi Glow Highlighting Sunscreen SPF 50', 1, '[{\"added\": {}}]', 15, 1),
(778, '2025-07-14 06:52:26.702386', '495', 'Plum Vitamin C Face Serum', 1, '[{\"added\": {}}]', 15, 1),
(779, '2025-07-14 07:06:39.954905', '496', 'Chopard Happy Felicia Roses Eau De Parfum (40ml)', 1, '[{\"added\": {}}]', 15, 1),
(780, '2025-07-14 07:07:23.951139', '497', 'Carolina Herrera Very Good Girl Elixir Eau de Parfum (50 ml)', 1, '[{\"added\": {}}]', 15, 1),
(781, '2025-07-14 07:09:57.883059', '498', 'Kayali Lovefest Burning Cherry 48 Eau De Parfum (100ml)', 1, '[{\"added\": {}}]', 15, 1),
(782, '2025-07-14 07:11:27.271469', '499', 'RENEE Bloom Eau De Parfum (50ml)', 1, '[{\"added\": {}}]', 15, 1),
(783, '2025-07-14 07:13:45.757711', '500', 'Nivea Men Deep Impact Freshness 72H Deodorant Roll On', 1, '[{\"added\": {}}]', 15, 1),
(784, '2025-07-14 07:15:46.884707', '501', 'Dove Relaxing Shea Butter Body Wash (1000ml)', 1, '[{\"added\": {}}]', 15, 1),
(785, '2025-07-14 07:17:26.643508', '502', 'Philips Bt3302/15 Cordless Beard Trimmer', 1, '[{\"added\": {}}]', 15, 1),
(786, '2025-07-14 07:19:13.017176', '503', 'Beardo Daily Nourish Beard Softener (50ml)', 1, '[{\"added\": {}}]', 15, 1),
(787, '2025-07-14 07:22:41.317057', '504', 'Be Bodywise 1% Salicylic Acid Body Wash For Body Acne (375ml)', 1, '[{\"added\": {}}]', 15, 1),
(788, '2025-07-14 07:23:45.315519', '505', 'mCaffeine Blueberry Breeze Body Scrub (175 g)', 1, '[{\"added\": {}}]', 15, 1),
(789, '2025-07-14 07:25:59.989333', '506', 'Moroccanoil Dry Body Oil (50ml)', 1, '[{\"added\": {}}]', 15, 1),
(790, '2025-07-14 07:27:13.749044', '507', 'Nivea Body Milk Nourishing Body Lotion (600ml)', 1, '[{\"added\": {}}]', 15, 1),
(791, '2025-07-14 07:29:06.485057', '508', 'Purna Gummies Glutathione Gummies For Skin Whitening & Immune Booster - Cola Flavor (30 Pcs)', 1, '[{\"added\": {}}]', 15, 1),
(792, '2025-07-14 07:34:43.548149', '509', 'Oziva ACV Moringa Weight Loss 3-In-1 Fat Oxidation Formula, Green Apple (15 Tablets)', 1, '[{\"added\": {}}]', 15, 1),
(793, '2025-07-14 07:36:24.659332', '510', 'Oziva Glutathione Builder Capsule (60Pcs)', 1, '[{\"added\": {}}]', 15, 1),
(794, '2025-07-14 07:42:31.125536', '511', 'Wellbeing Nutrition Multi + Omega for Her Multivitamin Capsule', 1, '[{\"added\": {}}]', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'mysite', 'accessoriesitem'),
(22, 'mysite', 'bag'),
(23, 'mysite', 'bagitem'),
(27, 'mysite', 'beautycategory'),
(11, 'mysite', 'beautyitem'),
(28, 'mysite', 'billingaddress'),
(8, 'mysite', 'category'),
(13, 'mysite', 'footwearitem'),
(26, 'mysite', 'furniturecategory'),
(14, 'mysite', 'indexcategories'),
(17, 'mysite', 'indianwear'),
(25, 'mysite', 'kidzcategory'),
(9, 'mysite', 'mencategory'),
(29, 'mysite', 'order'),
(30, 'mysite', 'orderitem'),
(15, 'mysite', 'product'),
(7, 'mysite', 'section'),
(18, 'mysite', 'sportswear'),
(10, 'mysite', 'trendingitem'),
(19, 'mysite', 'westernwear'),
(24, 'mysite', 'wishlist'),
(20, 'mysite', 'womenaccessories'),
(16, 'mysite', 'womencategory'),
(21, 'mysite', 'womenfootwear'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-14 15:29:51.206792'),
(2, 'auth', '0001_initial', '2025-04-14 15:29:52.595621'),
(3, 'admin', '0001_initial', '2025-04-14 15:29:52.949105'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-14 15:29:52.981782'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-14 15:29:53.022659'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-04-14 15:29:53.294736'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-04-14 15:29:53.464015'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-04-14 15:29:53.520685'),
(9, 'auth', '0004_alter_user_username_opts', '2025-04-14 15:29:53.559229'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-04-14 15:29:53.700671'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-04-14 15:29:53.700671'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-04-14 15:29:53.748594'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-04-14 15:29:53.811829'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-04-14 15:29:53.883776'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-04-14 15:29:53.933931'),
(16, 'auth', '0011_update_proxy_permissions', '2025-04-14 15:29:53.971624'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-04-14 15:29:54.059586'),
(18, 'sessions', '0001_initial', '2025-04-14 15:29:54.175093'),
(19, 'mysite', '0001_initial', '2025-04-24 06:04:22.587100'),
(20, 'mysite', '0002_delete_category', '2025-04-24 06:08:46.627419'),
(21, 'mysite', '0003_mencategory_trendingitem', '2025-04-24 06:14:04.990255'),
(22, 'mysite', '0004_mencategory_slug', '2025-04-25 05:50:03.070487'),
(23, 'mysite', '0005_alter_mencategory_image', '2025-04-25 06:37:05.893765'),
(24, 'mysite', '0006_trendingitem_category', '2025-04-28 07:06:50.354043'),
(25, 'mysite', '0007_trendingitem_slug', '2025-04-28 15:41:00.494877'),
(26, 'mysite', '0008_homeitem', '2025-04-29 06:26:41.768728'),
(27, 'mysite', '0009_accessoriesitem_footwearitem', '2025-04-30 15:18:30.792421'),
(28, 'mysite', '0010_auto_20250503_1215', '2025-05-03 06:45:55.669102'),
(29, 'mysite', '0011_remove_homecategories_link', '2025-05-03 07:04:09.921752'),
(30, 'mysite', '0012_product', '2025-05-05 17:21:30.816485'),
(31, 'mysite', '0013_accessorie_footwear_womencategory', '2025-05-29 06:17:59.569642'),
(32, 'mysite', '0014_auto_20250529_1147', '2025-05-29 06:18:00.064524'),
(33, 'mysite', '0015_remove_womencategory_description', '2025-05-29 06:33:18.583814'),
(34, 'mysite', '0016_womencategory_image', '2025-05-29 06:38:45.807682'),
(35, 'mysite', '0017_remove_westernwear_price', '2025-05-30 17:23:42.860788'),
(36, 'mysite', '0018_auto_20250531_1922', '2025-05-31 13:53:01.512509'),
(37, 'mysite', '0019_auto_20250602_2124', '2025-06-02 15:54:41.419132'),
(38, 'mysite', '0020_auto_20250605_1045', '2025-06-05 05:16:00.685284'),
(39, 'mysite', '0021_auto_20250608_1956', '2025-06-08 14:26:41.981710'),
(40, 'mysite', '0022_auto_20250610_1124', '2025-06-10 05:54:19.068963'),
(41, 'mysite', '0023_bag_quantity', '2025-06-11 15:07:48.251721'),
(42, 'mysite', '0024_rename_kids_category_product_kidz_category', '2025-06-11 16:08:21.560991'),
(43, 'mysite', '0025_auto_20250613_1101', '2025-06-13 05:31:25.191510'),
(44, 'mysite', '0026_remove_furniturecategory_image', '2025-06-13 06:16:23.413397'),
(45, 'mysite', '0027_remove_product_brand', '2025-06-14 06:36:11.468933'),
(46, 'mysite', '0028_auto_20250615_2238', '2025-06-15 17:08:24.503624'),
(47, 'mysite', '0029_remove_product_subtitle', '2025-06-16 15:17:09.702212'),
(48, 'mysite', '0030_auto_20250627_1242', '2025-06-27 07:12:28.284494'),
(49, 'mysite', '0031_auto_20250627_1300', '2025-06-27 07:30:23.831984'),
(50, 'mysite', '0032_product_sportswear_products', '2025-07-01 05:52:55.408705'),
(51, 'mysite', '0033_auto_20250701_1157', '2025-07-01 06:27:29.379510'),
(52, 'mysite', '0034_trendingitem_products', '2025-07-01 07:20:31.268116'),
(53, 'mysite', '0035_alter_product_men_indianwear', '2025-07-01 07:22:49.803292'),
(54, 'mysite', '0036_auto_20250701_1307', '2025-07-01 07:38:06.190004'),
(55, 'mysite', '0037_auto_20250708_1317', '2025-07-08 07:48:03.619824'),
(56, 'mysite', '0038_auto_20250708_2233', '2025-07-08 17:03:15.425928'),
(57, 'mysite', '0039_customuser', '2025-07-09 10:30:10.292070'),
(58, 'mysite', '0040_auto_20250709_1600', '2025-07-09 10:30:10.772672'),
(59, 'mysite', '0041_auto_20250710_2330', '2025-07-10 18:00:59.300688'),
(60, 'mysite', '0042_delete_indexcategories', '2025-07-11 06:46:45.940079'),
(61, 'mysite', '0043_rename_indexitem_beautyitem', '2025-07-11 06:57:30.408517'),
(62, 'mysite', '0044_alter_beautyitem_image', '2025-07-11 07:11:02.339387'),
(63, 'mysite', '0045_product_beautyitem', '2025-07-11 07:18:04.621283'),
(64, 'mysite', '0046_billingaddress_order_orderitem', '2025-07-11 17:39:40.675601'),
(65, 'mysite', '0047_alter_wishlist_user', '2025-07-12 17:15:48.227574'),
(66, 'mysite', '0048_auto_20250712_2252', '2025-07-12 17:22:45.272451');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7wev8idwqzpe51ma0dyai5dedw1es494', '.eJxVjMsOwiAQRf-FtSEUGGBcuvcbCMNDqgaS0q6M_65NutDtPefcF_NhW6vfRl78nNiZTYKdfkcK8ZHbTtI9tFvnsbd1mYnvCj_o4Nee8vNyuH8HNYz6rbXEkgGAUFoUGLRyhmwgymipOCcAoyQS5ACKLcmCkC5P2kSjNBrF3h_2dzdn:1ubMxC:WQZLAiEaSQWFe-yrsQaCDnqaSL-mBLsoZKLSwD1KI3M', '2025-07-28 17:27:02.577917'),
('7x2wxfgl70nngr5x48pk0sin9sr45rii', '.eJxVjEEOwiAQRe_C2pBCC8y4dO8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnEWSpx-txjSg-sO6B7qrcnU6rrMUe6KPGiX10b8vBzu30EJvXzrBCZpNgkmcm4Ap0abHWuLEYiz1hYInR3NlJEzoVIGQzQ6DTAqzEji_QHU8jd2:1uOsHd:fPAV51auJyI7PonrYU8_9SuovcHQAMCyLZtoo5ClO8A', '2025-06-24 06:16:29.278209'),
('9lhkf2u4enray2nruq91scz1pwltgmys', '.eJxVjEEOwiAQRe_C2pBCC8y4dO8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnEWSpx-txjSg-sO6B7qrcnU6rrMUe6KPGiX10b8vBzu30EJvXzrBCZpNgkmcm4Ap0abHWuLEYiz1hYInR3NlJEzoVIGQzQ6DTAqzEji_QHU8jd2:1uPFYk:zotoqjqUubA46Wh6DlyJeqeepI8BKKOF3qceyWwk6w8', '2025-06-25 07:07:42.919741'),
('f9i20vwohsk5ii7tu9vgnl7gfq7578wr', '.eJxVjEEOwiAQRe_C2pBCC8y4dO8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnEWSpx-txjSg-sO6B7qrcnU6rrMUe6KPGiX10b8vBzu30EJvXzrBCZpNgkmcm4Ap0abHWuLEYiz1hYInR3NlJEzoVIGQzQ6DTAqzEji_QHU8jd2:1u8C9P:Q4vNz4ssKmzXnLwMppE1nc2eeb_pDkGqMlIgp36oDDM', '2025-05-09 06:03:03.654982'),
('gb4jbmvtpvf5riezo19xvo0622je8i85', 'e30:1u4ZK6:KyrfcDG1MSgaGcSQPMLL8vu1PidXjZnDlaoHceRoorA', '2025-04-29 05:59:06.048990'),
('gon14hk741hi84la96k54kym37ooj00l', '.eJxVjEEOwiAQRe_C2hCg04G6dN8zkBkGpWpoUtqV8e7apAvd_vfef6lI21ri1vISJ1Fnher0uzGlR647kDvV26zTXNdlYr0r-qBNj7Pk5-Vw_w4KtfKtcyAxAxGBoAfx5BzYgD2jd4LBApuBsQtXMtg7mzrrSYgFMHgAi-r9Ad8RNz4:1uZuwl:meWv1Ewl_TwDpKLvyz9OdVFNxwCJ7lWv8a8tN-t6WsM', '2025-07-24 17:20:35.205606'),
('mdr81lfssk50qihc3w5ow6lriwzhmxub', '.eJxVjEEOwiAQRe_C2pBCC8y4dO8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnEWSpx-txjSg-sO6B7qrcnU6rrMUe6KPGiX10b8vBzu30EJvXzrBCZpNgkmcm4Ap0abHWuLEYiz1hYInR3NlJEzoVIGQzQ6DTAqzEji_QHU8jd2:1uPF3M:LBh6Jk-wb2N1eekj-1lz6nop4p1GKuaBH2CDhCs08VM', '2025-06-25 06:35:16.954059'),
('psax554wliqzkcm7618zx1do24hejwpc', '.eJxVjEEOwiAQRe_C2pBCC8y4dO8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnEWSpx-txjSg-sO6B7qrcnU6rrMUe6KPGiX10b8vBzu30EJvXzrBCZpNgkmcm4Ap0abHWuLEYiz1hYInR3NlJEzoVIGQzQ6DTAqzEji_QHU8jd2:1uPFVF:lM64Z8ZQewgARAf766PzZGaqJ60Dy94WhWWBeukkIW8', '2025-06-25 07:04:05.204674'),
('xy61vcu75xi6vow04w4fcn357t68yjf3', 'e30:1uZuq0:IOWpx1XEj3XklBZy4EBZ0fEzf7B7FmJNJv2-DJ3-_Ck', '2025-07-24 17:13:36.915667'),
('zktbr8wtix4weza738dkwuckl01egl5s', '.eJxVjEEOwiAQRe_C2pBCC8y4dO8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnEWSpx-txjSg-sO6B7qrcnU6rrMUe6KPGiX10b8vBzu30EJvXzrBCZpNgkmcm4Ap0abHWuLEYiz1hYInR3NlJEzoVIGQzQ6DTAqzEji_QHU8jd2:1uVCUD:pJ7B_IDFlMSdBocOqacyiI1tgepmTKCSPyi18yoT35I', '2025-07-11 17:03:37.655348');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_accessoriesitem`
--

CREATE TABLE `mysite_accessoriesitem` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_accessoriesitem`
--

INSERT INTO `mysite_accessoriesitem` (`id`, `title`, `subtitle`, `image`, `slug`) VALUES
(1, 'Smart Watches', 'Let\'s be smarter', 'accessories/smart.jpeg', 'smart_watches'),
(2, 'Sporty Watches', 'Ahead of its time in style & performence', 'accessories/sporty_watches.jpg', 'sporty_watches'),
(3, 'White Watches', 'A classic in every sense of the world', 'accessories/white_watches.webp', 'white_watches'),
(4, 'Best of Fastrack', 'A new world where sports meets sass', 'accessories/fastrack.jpeg', 'fastrack'),
(5, 'Minimalist Watches', 'understated is the new style statement', 'accessories/minimalist.jpeg', 'minimalist');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_accessoriesitem_products`
--

CREATE TABLE `mysite_accessoriesitem_products` (
  `id` bigint(20) NOT NULL,
  `accessoriesitem_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_accessoriesitem_products`
--

INSERT INTO `mysite_accessoriesitem_products` (`id`, `accessoriesitem_id`, `product_id`) VALUES
(5, 1, 187),
(6, 1, 188),
(7, 1, 189),
(9, 1, 191),
(1, 1, 192),
(2, 1, 193),
(3, 1, 194),
(4, 1, 195),
(10, 2, 196),
(11, 2, 197),
(12, 2, 198),
(13, 2, 199),
(14, 2, 200),
(15, 2, 201),
(16, 2, 202),
(17, 2, 203),
(18, 3, 204),
(19, 3, 205),
(20, 3, 206),
(21, 3, 207),
(22, 3, 208),
(23, 3, 209),
(24, 3, 210),
(25, 3, 211),
(27, 4, 213),
(28, 4, 214),
(29, 4, 215),
(30, 4, 216),
(31, 4, 217),
(32, 4, 218),
(33, 4, 219),
(34, 4, 220),
(40, 5, 221),
(44, 5, 222),
(42, 5, 223),
(35, 5, 224),
(36, 5, 225),
(37, 5, 226),
(38, 5, 227),
(43, 5, 228);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_bag`
--

CREATE TABLE `mysite_bag` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_bag`
--

INSERT INTO `mysite_bag` (`id`, `quantity`, `user_id`) VALUES
(1, 1, 1),
(2, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_bagitem`
--

CREATE TABLE `mysite_bagitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `bag_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_bagitem`
--

INSERT INTO `mysite_bagitem` (`id`, `quantity`, `bag_id`, `product_id`) VALUES
(14, 1, 1, 19),
(15, 1, 1, 485);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_beautyitem`
--

CREATE TABLE `mysite_beautyitem` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_beautyitem`
--

INSERT INTO `mysite_beautyitem` (`id`, `title`, `image`, `slug`) VALUES
(9, 'Makeup', 'home/makeup.jpeg', 'makeup'),
(10, 'Hair', 'home/hair_QwqKlEO.jpeg', 'hair'),
(11, 'Skincare', 'home/skincare_NDfnJH7.jpeg', 'skincare'),
(12, 'Fragrance', 'home/fragrance1_Tqs5Ibr.jpeg', 'fragrance'),
(13, 'Men', 'home/men_WoMLExb.jpg', 'men'),
(14, 'Bath & Body', 'home/bath_1y20vZ3.jpg', 'bath-body'),
(15, 'Wellness', 'home/wellness_wZew6cR.jpeg', 'wellness');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_billingaddress`
--

CREATE TABLE `mysite_billingaddress` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_billingaddress`
--

INSERT INTO `mysite_billingaddress` (`id`, `full_name`, `address`, `city`, `pincode`, `phone`, `user_id`) VALUES
(1, 'muskan', 'hbsgafsaytfasdxysacxfgxcdfacsavbhbsa', 'ekaja', '36005', '84019 76908', 1),
(2, 'muskan', 'defghjkl;', 'sdfrgt', 'wertghy', '84019 76908', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_footwearitem`
--

CREATE TABLE `mysite_footwearitem` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_footwearitem`
--

INSERT INTO `mysite_footwearitem` (`id`, `title`, `subtitle`, `image`, `slug`) VALUES
(1, 'Neutral Shades', 'Ticks all the boxes & pairs with everything!', 'footwear/neutral.jpg', 'neutral'),
(2, 'Sneakers For Dancers', 'There were made for all your moves', 'footwear/fordance.jpeg', 'fordancers'),
(3, 'Printed Sneakers For Men', 'Give your staples a snazzy makeover!', 'footwear/printed.jpg', 'printed'),
(4, 'Outback Outdoor Shoes', 'Bring the adventure back home', 'footwear/outdoor.jpeg', 'outdoor'),
(5, 'Flip-Flops & Sliders', 'Slide right in to comfort and ease!', 'footwear/flip-flop.jpg', 'flip-flop');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_footwearitem_products`
--

CREATE TABLE `mysite_footwearitem_products` (
  `id` bigint(20) NOT NULL,
  `footwearitem_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_footwearitem_products`
--

INSERT INTO `mysite_footwearitem_products` (`id`, `footwearitem_id`, `product_id`) VALUES
(1, 1, 147),
(2, 1, 148),
(3, 1, 149),
(4, 1, 150),
(5, 1, 151),
(6, 1, 152),
(7, 1, 153),
(8, 1, 154),
(12, 2, 155),
(13, 2, 156),
(14, 2, 157),
(15, 2, 158),
(16, 2, 159),
(9, 2, 160),
(10, 2, 161),
(11, 2, 162),
(17, 3, 163),
(18, 3, 164),
(19, 3, 165),
(20, 3, 166),
(21, 3, 167),
(22, 3, 168),
(23, 3, 169),
(24, 3, 170),
(25, 4, 171),
(26, 4, 172),
(27, 4, 173),
(28, 4, 174),
(29, 4, 175),
(30, 4, 176),
(31, 4, 177),
(32, 4, 178),
(33, 5, 179),
(34, 5, 180),
(35, 5, 181),
(36, 5, 182),
(37, 5, 183),
(38, 5, 184),
(39, 5, 185),
(40, 5, 186);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_indianwear`
--

CREATE TABLE `mysite_indianwear` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_indianwear`
--

INSERT INTO `mysite_indianwear` (`id`, `name`, `slug`, `description`, `image`) VALUES
(1, 'Print Paradise', 'printed', 'For that extra serving of drama', 'indianwear/printed.jpg'),
(2, 'Regal Mustard', 'mustard', 'The colour of class', 'indianwear/2nd_image.jpg'),
(3, 'Fushion Dresses From W', 'fushion', 'For a look straight out of a bollywood movie', 'indianwear/3rd_image.jpg'),
(4, 'Kurta Sets By BIBA', 'biba', 'We\'ve found you the perfect match', 'indianwear/4th_image.jpg'),
(5, 'Summer-Ready Ethenic', 'summer', 'Breezy dresses for virtual cells', 'indianwear/5th_image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_indianwear_products`
--

CREATE TABLE `mysite_indianwear_products` (
  `id` bigint(20) NOT NULL,
  `indianwear_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_indianwear_products`
--

INSERT INTO `mysite_indianwear_products` (`id`, `indianwear_id`, `product_id`) VALUES
(1, 1, 232),
(5, 1, 312),
(6, 1, 313),
(9, 1, 316),
(19, 1, 325),
(20, 1, 326),
(21, 1, 327),
(18, 1, 328),
(15, 2, 317),
(16, 2, 318),
(17, 2, 319),
(10, 2, 320),
(11, 2, 321),
(12, 2, 322),
(13, 2, 323),
(14, 2, 324),
(22, 3, 329),
(23, 3, 330),
(24, 3, 331),
(25, 3, 332),
(26, 3, 333),
(27, 3, 334),
(28, 3, 335),
(29, 3, 336),
(30, 4, 337),
(31, 4, 338),
(32, 4, 339),
(33, 4, 340),
(34, 4, 341),
(35, 4, 342),
(36, 4, 343),
(37, 4, 344),
(39, 5, 345),
(40, 5, 346),
(41, 5, 347),
(42, 5, 348),
(43, 5, 349),
(44, 5, 350),
(45, 5, 351),
(38, 5, 352);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_kidzcategory`
--

CREATE TABLE `mysite_kidzcategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_kidzcategory`
--

INSERT INTO `mysite_kidzcategory` (`id`, `name`, `slug`, `image`) VALUES
(1, '+ TOP', 'top', 'kidz/categories/top.jpeg'),
(4, '+ ETHENIC-WEAR', 'e-tops', 'kidz/categories/ethenic_top.jpeg'),
(7, '+ DRESSES', 'dresses', 'kidz/categories/frock.jpeg'),
(8, '+ SLEEPWEAR', 'sleepwear', 'kidz/categories/nightsuits.jpeg'),
(9, '+ SANDALS', 'sandals', 'kidz/categories/sandals.jpg'),
(10, '+ SHIRTS', 'shirt', 'kidz/categories/shirts_for_boys.webp'),
(12, '+ PARTY-WEAR', 'partywear', 'kidz/categories/partywear_dress.webp'),
(13, '+ JUMPSUITS', 'jumpsuits', 'kidz/categories/jumsuits.jpeg'),
(15, '+ SHORTS', 'shorts', 'kidz/categories/images.jpeg'),
(16, '+ SOCKS', 'socks', 'kidz/categories/socks.webp'),
(17, '+ CAP', 'cap', 'kidz/categories/cap.webp'),
(18, '+ BABY CARE', 'babycare', 'kidz/categories/babycare.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_mencategory`
--

CREATE TABLE `mysite_mencategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_mencategory`
--

INSERT INTO `mysite_mencategory` (`id`, `name`, `image`, `slug`) VALUES
(1, 'Shirts', 'men/categories/shirt_8O5H1BI.jpeg', 'shirts'),
(2, 'T-Shirts', 'men/categories/tshirts.jpg', 't-shirts'),
(3, 'Jeans', 'categories/jeans.jpeg', 'jeans'),
(4, 'Shorts', 'categories/shorts.jpeg', 'shorts'),
(5, 'Shoes', 'categories/shoes.jpeg', 'shoes'),
(6, 'Wrist', 'categories/wrist.jpeg', 'wrist');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_order`
--

CREATE TABLE `mysite_order` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `billing_address_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_order`
--

INSERT INTO `mysite_order` (`id`, `created_at`, `is_paid`, `total_price`, `billing_address_id`, `user_id`) VALUES
(1, '2025-07-11 18:05:59.477599', 0, '5385.00', 1, 1),
(2, '2025-07-11 18:09:24.127753', 0, '0.00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_orderitem`
--

CREATE TABLE `mysite_orderitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_orderitem`
--

INSERT INTO `mysite_orderitem` (`id`, `quantity`, `order_id`, `product_id`) VALUES
(1, 2, 1, 13),
(2, 1, 1, 64),
(3, 2, 1, 106),
(4, 1, 1, 72),
(5, 1, 1, 81);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_product`
--

CREATE TABLE `mysite_product` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `men_category_id` bigint(20) DEFAULT NULL,
  `women_category_id` bigint(20) DEFAULT NULL,
  `kidz_category_id` bigint(20) DEFAULT NULL,
  `BeautyItem_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_product`
--

INSERT INTO `mysite_product` (`id`, `title`, `image`, `price`, `slug`, `men_category_id`, `women_category_id`, `kidz_category_id`, `BeautyItem_id`) VALUES
(8, 'White Flory Frock', 'products/product.jpg', '300.00', 'white-flory-frock', NULL, NULL, 7, NULL),
(9, 'Red Frock', 'products/product2.webp', '400.00', 'red-frock', NULL, NULL, 7, NULL),
(10, 'Cotton Bedsheet', 'products/bedlinen.jpg', '999.00', 'cotton-bedsheet', NULL, NULL, NULL, NULL),
(13, 'FACE WASH', 'products/facewash.jpeg', '200.00', 'face-wash', NULL, NULL, NULL, NULL),
(14, 'The Lifestyle Co Printed Pure Cotton Relaxed T-shirt', 'products/product2_LGyA0XZ.webp', '350.00', 'the-lifestyle-co-printed-pure-cotton-relaxed-t-shi', 2, NULL, NULL, NULL),
(15, 'Geometric Self Design Polo Collar Cotton T-shirt', 'products/shopping_1.webp', '680.00', 'geometric-self-design-polo-collar-cotton-t-shirt', 2, NULL, NULL, NULL),
(16, 'Men Self Design Polo Collar Relaxed Fit T-shirt', 'products/product5.webp', NULL, 'men-self-design-polo-collar-relaxed-fit-t-shirt', 2, NULL, NULL, NULL),
(17, 'Roadster Men\'s Printed Round Neck T-shirt', 'products/product3.webp', '529.00', 'roadster-mens-printed-round-neck-t-shirt', 2, NULL, NULL, NULL),
(18, 'Mast & Harbour Men\'s Solid T-shirt', 'products/product4.webp', '489.00', 'mast-harbour-mens-solid-t-shirt', 2, NULL, NULL, NULL),
(19, 'Men Self Design Polo Collar Relaxed Fit T-shirt', 'products/product6.webp', '599.00', 'men-self-design-collar-relaxed-fit-t-shirt', 2, NULL, NULL, NULL),
(20, 'The Lifestyle Co. Drop-Shoulder Sleeves Pure Cotton T-shirt', 'products/product7.webp', '314.00', 'the-lifestyle-co-drop-shoulder-sleeves-pure-cotton', 2, NULL, NULL, NULL),
(21, 'Typography Printed Oversized Cotton T-shirt', 'products/product8.webp', '755.00', 'typography-printed-oversized-cotton-t-shirt', 2, NULL, NULL, NULL),
(22, 'Men Standard Casual Shirt', 'products/shopping.webp', '349.00', 'men-standard-casual-shirt', 1, NULL, NULL, NULL),
(23, 'Men\'s Casual Button Down Shirts Long Sleeve Linen Shirt', 'products/product2_uiiNI7b.webp', '499.00', 'mens-casual-button-down-shirts-long-sleeve-linen-s', 1, NULL, NULL, NULL),
(24, 'Men\'s Solid Linen Cotton Casual Plain Full Sleeve Shirt', 'products/product4_pyKUDtQ.webp', '474.00', 'mens-solid-linen-cotton-casual-plain-full-sleeve-s', 1, NULL, NULL, NULL),
(25, 'Roadster Men\'s Checked Casual Shirt', 'products/product3_PECsbCI.webp', '687.00', 'roadster-mens-checked-casual-shirt', 1, NULL, NULL, NULL),
(26, 'Men Micro Checks Checked Casual Shirt', 'products/product5_27L938m.webp', '845.00', 'men-micro-checks-checked-casual-shirt', 1, NULL, NULL, NULL),
(27, 'Men Regular Fit Vertical Stripes Casual Shirt', 'products/product6_yCueTVo.webp', '664.00', 'men-regular-fit-vertical-stripes-casual-shirt', 1, NULL, NULL, NULL),
(28, 'Men Comfort Colourblocked Casual Shirt', 'products/product7_oWpkEgh.webp', '799.00', 'men-comfort-colourblocked-casual-shirt', 1, NULL, NULL, NULL),
(29, 'Classic Opaque Striped Cotton Oversized Casual Shirt', 'products/product8_uROGcm1.webp', '700.00', 'classic-opaque-striped-cotton-oversized-casual-shi', 1, NULL, NULL, NULL),
(30, 'Men Wide Leg Jeans by Zara', 'products/download.webp', '909.00', 'men-wide-leg-jeans-by-zara', 3, NULL, NULL, NULL),
(31, 'Men\'s Slim Tapered Fit Mid-Rise Clean Look Stretchable Jeans', 'products/product2_o9US7s3.webp', '700.00', 'mens-slim-tapered-fit-mid-rise-clean-look-stretcha', 3, NULL, NULL, NULL),
(32, 'Men\'s Straight Fit Jeans', 'products/product3_IrXDiIC.webp', '1200.00', 'mens-straight-fit-jeans', 3, NULL, NULL, NULL),
(33, 'Men Relaxed Low-Rise Easy Wash Pleated Cargos Trousers', 'products/product4_HeQaFhf.webp', '699.00', 'men-relaxed-low-rise-easy-wash-pleated-cargos-trou', 3, NULL, NULL, NULL),
(34, 'Classy Skinny Jeans For Men', 'products/product5.jpeg', '560.00', 'classy-skinny-jeans-for-men', 3, NULL, NULL, NULL),
(35, 'Men\'s Regular Fit Mid-Rise Light Fade Jeans', 'products/product6_4LrVhRj.webp', '1500.00', 'mens-regular-fit-mid-rise-light-fade-jeans', 3, NULL, NULL, NULL),
(36, 'Men\'s Loose Fit Jeans', 'products/product7_oMUaStv.webp', '1208.00', 'mens-loose-fit-jeans', 3, NULL, NULL, NULL),
(37, 'Men Relaxed FIT Denim Jeans Loose Jeans for Men', 'products/product8_peSNJ8Y.webp', '749.00', 'men-relaxed-fit-denim-jeans-loose-jeans-for-men', 3, NULL, NULL, NULL),
(38, 'Men\'s Denim Shorts', 'products/product1.webp', '990.00', 'mens-denim-shorts', 4, NULL, NULL, NULL),
(39, 'Men\'s Solid Slim Fit Shorts', 'products/product2_9brQOI1.webp', '472.00', 'mens-solid-slim-fit-shorts', 4, NULL, NULL, NULL),
(40, 'Men Shorts Cotton', 'products/product3_UNbd1vx.webp', '549.00', 'men-shorts-cotton', 4, NULL, NULL, NULL),
(41, 'Men\'s Solid Shorts', 'products/product4_brnBKcG.webp', '672.00', 'mens-solid-shorts', 4, NULL, NULL, NULL),
(42, 'Men Mid Rise Lifestyle Shorts', 'products/product5_n6Qglkn.webp', '399.00', 'men-mid-rise-lifestyle-shorts', 4, NULL, NULL, NULL),
(43, 'Men Printed Regular Shorts', 'products/product6_oB9UBCs.webp', '199.00', 'men-printed-regular-shorts', 4, NULL, NULL, NULL),
(44, 'Men\'s Solid Sports Shorts', 'products/product7_qFRZ4EP.webp', '699.00', 'mens-solid-sports-shorts', 4, NULL, NULL, NULL),
(45, 'Men\'s Seashell Bermuda Shorts', 'products/product8_nwExaOf.webp', '849.00', 'mens-seashell-bermuda-shorts', 4, NULL, NULL, NULL),
(46, 'Men\'s Memory Foam Mesh Non-Marking Running Shoes', 'products/product1_J7sTg6V.webp', '999.00', 'mens-memory-foam-mesh-non-marking-running-shoes', 5, NULL, NULL, NULL),
(47, 'Men Colorblocked Grey Lifestyle Sneakers', 'products/product2_IrysFGD.webp', '1400.00', 'men-colorblocked-grey-lifestyle-sneakers', 5, NULL, NULL, NULL),
(48, 'U.S. POLO ASSN Men. CLARKIN 4.0 Colourblocked Sneakers', 'products/product3_HupbqKL.webp', '1503.00', 'us-polo-assn-men-clarkin-40-colourblocked-sneakers', 5, NULL, NULL, NULL),
(49, 'Men\'s Lace-Ups Casual Sneakers', 'products/product4_JnErVFZ.webp', '999.00', 'mens-lace-ups-casual-sneakers', 5, NULL, NULL, NULL),
(50, 'ASIAN Men\'s Dominator-03 Running Shoes', 'products/product5_mD8ZEaT.webp', '1118.00', 'asian-mens-dominator-03-running-shoes', 5, NULL, NULL, NULL),
(51, 'Red Tape Men\'s Casual Sneaker Shoes', 'products/product6_vnWqhAy.webp', '1216.00', 'red-tape-mens-casual-sneaker-shoes', 5, NULL, NULL, NULL),
(52, 'Men\'s Outdoor Loafer Shoes', 'products/product7_fNQCM3i.webp', '480.00', 'mens-outdoor-loafer-shoes', 5, NULL, NULL, NULL),
(53, 'Men\'s Galer Slip-On Shoes', 'products/product8_wAW3ZQg.webp', '1500.00', 'mens-galer-slip-on-shoes', 5, NULL, NULL, NULL),
(54, 'V2A Chronograph Analogue Digital Sports Watch', 'products/product1_9ECBYbz.webp', '890.00', 'v2a-chronograph-analogue-digital-sports-watch', 6, NULL, NULL, NULL),
(55, 'Fossil Men Machine Chronograph Black Dial Watch FS4682', 'products/product6_JEfNGhd.webp', '14565.00', 'fossil-men-machine-chronograph-black-dial-watch-fs', 6, NULL, NULL, NULL),
(56, 'Men Dial & Stainless Steel Straps Analogue Watch CR-GR043-BRW-CH', 'products/product2_Jb4q6FM.webp', '469.00', 'men-dial-stainless-steel-straps-analogue-watch-cr', NULL, NULL, NULL, NULL),
(57, 'Men Silver-Toned Analogue Watch WRG00048A', 'products/product3_6UhPqhb.webp', '724.00', 'men-silver-toned-analogue-watch-wrg00048a', 6, NULL, NULL, NULL),
(58, 'Men Black Polo Analogue Watch WWTM-POLO-020707', 'products/product4_A9wcGtH.webp', '396.00', 'men-black-polo-analogue-watch-wwtm-polo-020707', 6, NULL, NULL, NULL),
(59, 'Men Textured Dial Multi Function Analogue Watch', 'products/product5_f0UxgYv.webp', '1145.00', 'men-textured-dial-multi-function-analogue-watch', 6, NULL, NULL, NULL),
(60, 'Fastrack Leather Strap Watch', 'products/product7_Yn7kXDP.webp', '1245.00', 'fastrack-leather-strap-watch', 6, NULL, NULL, NULL),
(61, 'Men Dial & Stainless Steel Straps Analogue Watch', 'products/product2_ObnpxCA.webp', '568.00', 'men-dial-stainless-steel-straps-analogue-watch', 6, NULL, NULL, NULL),
(62, 'Minimalist Eddy Square Dial Men\'s Watch with Stainless Steel', 'products/product8_IlM0lbi.webp', '380.00', 'minimalist-eddy-square-dial-mens-watch-with-stainl', 6, NULL, NULL, NULL),
(63, 'Brown Rust Embroidered Cotton Kurta and Palazzo Set', 'products/product1_PclCODP.webp', '999.00', 'brown-rust-embroidered-cotton-kurta-and-palazzo-se', NULL, 1, NULL, NULL),
(64, 'Embroidered Kurta, Trouser/Pant & Dupatta Set', 'products/product2_hVMCCDJ.webp', '660.00', 'embroidered-kurta-trouserpant-dupatta-set', NULL, 1, NULL, NULL),
(65, 'Maroon Digital Print Rayon Kurta Set 966  2760(65% OFF)', 'products/product3_EGj8IWz.webp', '966.00', 'maroon-digital-print-rayon-kurta-set-966-276065-of', NULL, 1, NULL, NULL),
(66, 'Off White Embroidered Cotton Flex Suit Set with Cotton Silk Dupatta', 'products/product4_rMq6lbB.webp', '1244.00', 'off-white-embroidered-cotton-flex-suit-set-with-co', NULL, 1, NULL, NULL),
(67, 'Ethnic Motifs Embroidered Thread Work Kurta With Trousers & Dupatta', 'products/product5_a7wXAsm.webp', '999.00', 'ethnic-motifs-embroidered-thread-work-kurta-with-t', NULL, 1, NULL, NULL),
(68, 'Linen Cotton Foliage Straight Off White Co-ord & Trousers', 'products/product6.jpeg', '990.00', 'linen-cotton-foliage-straight-off-white-co-ord-tro', NULL, 1, NULL, NULL),
(69, 'Libas Women\'s Printed A-Line Kurta Set', 'products/product6_Uq8w5TV.webp', '997.00', 'libas-womens-printed-a-line-kurta-set', NULL, 1, NULL, NULL),
(70, 'Women\'s Kurta Pant Dupatta Set', 'products/product7_Ef5VlK6.webp', '1599.00', 'womens-kurta-pant-dupatta-set', NULL, 1, NULL, NULL),
(71, 'Women Floral Thread and Sequined Embroidered Kurta Set by Zara', 'products/product8_Fyhd2kF.webp', '1890.00', 'women-floral-thread-and-sequined-embroidered-kurta', NULL, 1, NULL, NULL),
(72, 'Floral Printed Saree', 'products/product1_RuFSgT7.webp', '1138.00', 'floral-printed-saree', NULL, 2, NULL, NULL),
(73, 'Colourblocked Printed Tissue', 'products/product2_BF5FUxY.webp', '1199.00', 'colourblocked-printed-tissue', NULL, 2, NULL, NULL),
(74, 'Satin Designer Saree', 'products/product3_czZuvtj.webp', '1708.00', 'satin-designer-saree', NULL, 2, NULL, NULL),
(75, 'VILLAGIUS Floral Printed Saree', 'products/product4_dvZnQgU.webp', '949.00', 'v-floral-printed-saree', NULL, 2, NULL, NULL),
(76, 'Woven Design Silk Cotton Saree', 'products/product5_Vg8AdHU.webp', '1885.00', 'woven-design-silk-cotton-saree', NULL, 2, NULL, NULL),
(77, 'Women\'s Two Tone Chiffon Saree with Blouse', 'products/product6_XQxckx8.webp', '899.00', 'womens-two-tone-chiffon-saree-with-blouse', NULL, 2, NULL, NULL),
(78, 'Koskii Designer Saree', 'products/product7_ggKFLG8.webp', '1398.00', 'koskii-designer-saree', NULL, 2, NULL, NULL),
(79, 'Traditional Banarasi Silk Saree', 'products/product8_prYt1eW.webp', '512.00', 'traditional-banarasi-silk-saree', NULL, 2, NULL, NULL),
(80, 'Women Cotton Floral Printed Wrap Midi Dress', 'products/product1_MDyEKcD.webp', '799.00', 'women-cotton-floral-printed-wrap-midi-dress', NULL, 3, NULL, NULL),
(81, 'Women\'s Fit & Flare Regular Sleeves Midi Dress', 'products/product2_Pt4ZJ25.webp', '787.00', 'womens-fit-flare-regular-sleeves-midi-dress', NULL, 3, NULL, NULL),
(82, 'Womens Mustard Chiffon Self Design Western Dress', 'products/product3_Q6tCCTj.webp', '988.00', 'womens-mustard-chiffon-self-design-western-dress', NULL, 3, NULL, NULL),
(83, 'Women\'s Maxi One Piece Dress', 'products/product4_Yp6MG9I.webp', '429.00', 'womens-maxi-one-piece-dress', NULL, 3, NULL, NULL),
(84, 'Women\'s Puff Sleeve Fit and Flare Midi Dress', 'products/product5_RJ6kSXy.webp', '1390.00', 'womens-puff-sleeve-fit-and-flare-midi-dress', NULL, 3, NULL, NULL),
(85, 'Women\'s Puff Sleeve Flare Midi Dress', 'products/product6_57SaC6F.webp', '579.00', 'womens-puff-sleeve-flare-midi-dress', NULL, 3, NULL, NULL),
(86, 'Nuon Beige Criss-Cross Detailed Cotton-Blend Shirt', 'products/product7_VGlhNCp.webp', '1299.00', 'nuon-beige-criss-cross-detailed-cotton-blend-shirt', NULL, 3, NULL, NULL),
(87, 'Women Cotton Floral Printed Fit & Flare Midi Dress by Myntra', 'products/product8_4t0EsM2.webp', '799.00', 'women-cotton-floral-printed-fit-flare-midi-dress-b', NULL, 3, NULL, NULL),
(88, 'White pearl tie up heels', 'products/product1_4VXgqJo.webp', '699.00', 'white-pearl-tie-up-heels', NULL, 4, NULL, NULL),
(89, 'Shimmer Strap Golden Heels', 'products/product2_dmzOaw9.webp', '799.00', 'shimmer-strap-golden-heels', NULL, 4, NULL, NULL),
(90, 'Rhinestone beauty heels', 'products/product3_UVJ91kl.webp', '799.00', 'rhinestone-beauty-heels', NULL, 4, NULL, NULL),
(91, 'Beige Patent Chain', 'products/product4_twqiXyi.webp', '699.00', 'beige-patent-chain', NULL, 4, NULL, NULL),
(92, 'Black Shimmer Cross Flat', 'products/product5_XJOBbnt.webp', '599.00', 'black-shimmer-cross-flat', NULL, 4, NULL, NULL),
(93, 'Chic Steps Flats', 'products/product6_qsxWh0z.webp', '599.00', 'chic-steps-flats', NULL, 4, NULL, NULL),
(94, 'Sunflower Bloom Embroidered Flats', 'products/product7_XoLJxuf.webp', '799.00', 'sunflower-bloom-embroidered-flats', NULL, 4, NULL, NULL),
(95, 'Women\'s Casual Open Toe Flats', 'products/product8_LkEjmbC.webp', '999.00', 'womens-casual-open-toe-flats', NULL, 4, NULL, NULL),
(96, 'Exotic PU Structured Shoulder Bag', 'products/product1_XfKsbi2.webp', '1259.00', 'exotic-pu-structured-shoulder-bag', NULL, 5, NULL, NULL),
(97, 'Women\'s Solid Structured Sling Bag', 'products/product2_6UHIntN.webp', '1299.00', 'womens-solid-structured-sling-bag', NULL, 5, NULL, NULL),
(98, 'Women\'s Classic Chain Handle Strap Shoulder Crossbody Hobo Slingbag', 'products/product3_64X8ORc.webp', '383.00', 'womens-classic-chain-handle-strap-shoulder-crossbo', NULL, 5, NULL, NULL),
(99, 'Campus Sutra PU Structured Shoulder Bag', 'products/product4_o3C2CWs.webp', '1416.00', 'campus-sutra-pu-structured-shoulder-bag', NULL, 5, NULL, NULL),
(100, 'Leather Ladies Handbag', 'products/product5_nFcFRtf.webp', '1490.00', 'leather-ladies-handbag', NULL, 5, NULL, NULL),
(101, 'Women\'S Faux Leather Tan Metal Detail 13 Inch Laptop Work Tote Bag', 'products/product6_rq2VXYf.webp', '1670.00', 'womens-faux-leather-tan-metal-detail-13-inch-lapto', NULL, 5, NULL, NULL),
(102, 'Women\'s Lase Hand/Sling Bag', 'products/product7_t1XZVVx.webp', '1259.00', 'womens-lase-handsling-bag', NULL, 5, NULL, NULL),
(103, 'Women\'s Embroidered Shoulder Bag', 'products/product8_SWr6ora.webp', '857.00', 'womens-embroidered-shoulder-bag', NULL, 5, NULL, NULL),
(105, 'Manyavar Men\'s Mandarin Collar Kurta Set', 'products/whiteproduct10.webp', '1500.00', 'manyavar-mens-mandarin-collar-kurta-set', NULL, NULL, NULL, NULL),
(106, 'Men\'s Long Kurta', 'products/whiteproduct11.webp', '1200.00', 'mens-long-kurta', NULL, NULL, NULL, NULL),
(107, 'Men\'s Embroidered Kurta', 'products/whiteproduct3.webp', '1449.00', 'mens-embroidered-kurta', NULL, NULL, NULL, NULL),
(109, 'Men Printed Zari Regular Fit Nehru Jacket', 'products/whiteproduct1.webp', '1230.00', 'men-printed-zari-regular-fit-nehru-jacket', NULL, NULL, NULL, NULL),
(110, 'Jaypore Men\'s Cotton V Neck A Line Kurta', 'products/whiteproduct4.webp', '1890.00', 'jaypore-mens-cotton-v-neck-a-line-kurta', NULL, NULL, NULL, NULL),
(111, 'Men Embroidered Cotton Rayon Straight Kurta', 'products/white-kurta.webp', '1680.00', 'men-embroidered-cotton-rayon-straight-kurta', NULL, NULL, NULL, NULL),
(112, 'Classic White Bundi with Gold Buttons', 'products/white-kurta1.webp', '1999.00', 'classic-white-bundi-with-gold-buttons', NULL, NULL, NULL, NULL),
(113, 'Wedding-kurta for Men', 'products/white-kurta3.jpg', '2470.00', 'wedding-kurta-for-men', NULL, NULL, NULL, NULL),
(114, 'Formal Black Sherwani', 'products/ethenic1.jpg', '3400.00', 'formal-black-sherwani', NULL, NULL, NULL, NULL),
(115, 'Mens silk Kurta gray color kurta kurta for men I', 'products/ethenic-2.jpg', '2300.00', 'mens-silk-kurta-gray-color-kurta-kurta-for-men-i', NULL, NULL, NULL, NULL),
(116, 'Blazer with kurta fashion for Men', 'products/ethenic-3.jpg', '3240.00', 'blazer-with-kurta-fashion-for-men', NULL, NULL, NULL, NULL),
(117, 'Trendy & Elegant Lion Design Bandhagala – De Royal Mens Ethnic', 'products/ethenic-4.jpg', '2990.00', 'trendy-elegant-lion-design-bandhagala-de-royal-men', NULL, NULL, NULL, NULL),
(118, 'Wedding Dress for Men', 'products/ethenic-5.jpg', '5600.00', 'wedding-dress-for-men', NULL, NULL, NULL, NULL),
(119, 'Green Linen Embroidery Thread Bundi For Men', 'products/ethenic-6.jpg', '2590.00', 'green-linen-embroidery-thread-bundi-for-men', NULL, NULL, NULL, NULL),
(120, 'Men\'s Wedding And Party Wear Waistcoat And Kurta', 'products/ethenic-7.jpg', '3290.00', 'mens-wedding-and-party-wear-waistcoat-and-kurta', NULL, NULL, NULL, NULL),
(121, 'Men\'s red sparkling kurta', 'products/ethenic-8.jpg', '2380.00', 'mens-red-sparkling-kurta', NULL, NULL, NULL, NULL),
(122, 'Yellow Readymade Mens Printed Kurta', 'products/printed-2.jpg', '1909.00', 'yellow-readymade-mens-printed-kurta', NULL, NULL, NULL, NULL),
(123, 'Traditional Shimmer Kurta For Men', 'products/printed-3.jpg', '1680.00', 'traditional-shimmer-kurta-for-men', NULL, NULL, NULL, NULL),
(124, 'Polyester Men Printed Kurta Pajama', 'products/printed-4.webp', '1950.00', 'polyester-men-printed-kurta-pajama', NULL, NULL, NULL, NULL),
(125, 'Blue Readymade Mens Printed Kurta', 'products/printed-1.jpg', '1870.00', 'blue-readymade-mens-printed-kurta', NULL, NULL, NULL, NULL),
(126, 'Cherry Red Satin Silk Printed Kurta And Joggers Pants', 'products/printed-5.jpeg', '2500.00', 'cherry-red-satin-silk-printed-kurta-and-jogger', NULL, NULL, NULL, NULL),
(127, 'Yellow Printed Men\'s Short Kurta', 'products/printed-6.webp', '1860.00', 'yellow-printed-mens-short-kurta', NULL, NULL, NULL, NULL),
(128, 'White ELEPHANT PATTERN JACQUARD DESIGNER KURTA', 'products/printed-7.webp', '2700.00', 'white-elephant-pattern-jacquard-designer-kurta', NULL, NULL, NULL, NULL),
(129, 'Bottle Green Mens Kurta Without Pant', 'products/printed-8.webp', '2290.00', 'bottle-green-mens-kurta-without-pant', NULL, NULL, NULL, NULL),
(130, 'Men\'s Indian outfit', 'products/everyday-1.jpeg', '590.00', 'mens-indian-outfit', NULL, NULL, NULL, NULL),
(131, 'Mens kurta designs, Mens fashion classy', 'products/everyday-2.jpeg', '900.00', 'mens-kurta-designs-mens-fashion-classy', NULL, NULL, NULL, NULL),
(132, 'Men stylish dress, Designer clothes for men', 'products/everyday-3.jpeg', '790.00', 'men-stylish-dress-designer-clothes-for-men', NULL, NULL, NULL, NULL),
(133, 'Cotton kurta with Blocked design', 'products/everyday-5.jpeg', '980.00', 'cotton-kurta-with-blocked-design', NULL, NULL, NULL, NULL),
(134, 'Best Man Summer Kurta', 'products/everyday-4.jpeg', '1200.00', 'best-man-summer-kurta', NULL, NULL, NULL, NULL),
(135, 'Green Fabric With Golden Buttons', 'products/everyday-6.jpeg', '1190.00', 'green-fabric-with-golden-buttons', NULL, NULL, NULL, NULL),
(136, 'Brick Red Pure Cotton Kurta Se', 'products/everyday-7.jpeg', '809.00', 'brick-red-pure-cotton-kurta-se', NULL, NULL, NULL, NULL),
(137, 'Linen Comfort Blue Kurta', 'products/everyday-8.jpg', '500.00', 'linen-comfort-blue-kurta', NULL, NULL, NULL, NULL),
(138, 'Pink Colored Open Stylish Kurta Jacket', 'products/handpicked-3.jpg', '2480.00', 'pink-colored-open-stylish-kurta-jacket', NULL, NULL, NULL, NULL),
(140, 'Black TravellerS Palm Jacquard Kurta by MASABA MEN', 'products/handpicked-2.jpg', '1580.00', 'black-travellers-palm-jacquard-kurta-by-masaba-men', NULL, NULL, NULL, NULL),
(141, 'Parrot Green Georgette Kurta Set', 'products/handpicked-4.jpg', '1800.00', 'parrot-green-georgette-kurta-set', NULL, NULL, NULL, NULL),
(142, 'Men Ivory Georgette Chikankari Kurta Set', 'products/handpicked-5.jpg', '2390.00', 'men-ivory-georgette-chikankari-kurta-set', NULL, NULL, NULL, NULL),
(143, 'Men Ivory Georgette Chikankari Kurta', 'products/handpicked-6.jpg', '2390.00', 'men-ivory-georgette-chikankari-kurta', NULL, NULL, NULL, NULL),
(144, 'Latest Designer Black Kurta Indian Wear For Men', 'products/handpicked-7.webp', '2390.00', 'latest-designer-black-kurta-indian-wear-for-men', NULL, NULL, NULL, NULL),
(145, 'Men\'s Luxury Designer Kurta', 'products/handpicked-8.webp', '2590.00', 'mens-luxury-designer-kurta', NULL, NULL, NULL, NULL),
(146, 'Blue Embrodery Work kurta', 'products/handpicked-9.webp', '3290.00', 'blue-embrodery-work-kurta', NULL, NULL, NULL, NULL),
(147, 'Urban Blaze Men\'s Low Top Sneakers', 'products/neutral-1.webp', '2799.00', 'urban-blaze-mens-low-top-sneakers', NULL, NULL, NULL, NULL),
(148, 'Men Coba Colour Blocked Sneakers', 'products/neutral-2.webp', '2999.00', 'men-coba-colour-blocked-sneakers', NULL, NULL, NULL, NULL),
(149, 'U.S. Polo Assn. Men\'s Cenik Suede Sneakers', 'products/neutral-8.webp', '3599.00', 'us-polo-assn-mens-cenik-suede-sneakers', NULL, NULL, NULL, NULL),
(150, 'Beige Men Low Top Sneakers', 'products/neutral-3.webp', '2999.00', 'beige-men-low-top-sneakers', NULL, NULL, NULL, NULL),
(151, 'Men\'s Conrad Sneakers', 'products/neutral-4.webp', '1817.00', 'mens-conrad-sneakers', NULL, NULL, NULL, NULL),
(152, 'Men\'s Monton 6.0 Sneakers', 'products/neutral-5.webp', '1549.00', 'mens-monton-60-sneakers', NULL, NULL, NULL, NULL),
(153, 'Snitch Men\'s Beige Solid Sneakers', 'products/neutral-6.webp', '2963.00', 'snitch-mens-beige-solid-sneakers', NULL, NULL, NULL, NULL),
(154, 'Men\'s Bruce Mid Top Sneakers', 'products/neutral-7.webp', '2699.00', 'mens-bruce-mid-top-sneakers', NULL, NULL, NULL, NULL),
(155, 'SKYLINE - WHITE', 'products/sneakers-1.webp', '1399.00', 'skyline-white', NULL, NULL, NULL, NULL),
(156, 'Zixer Sneakers Dancing Shoes/Street Dancing Shoe For Men', 'products/sneakers-2.webp', '785.00', 'zixer-sneakers-dancing-shoesstreet-dancing-shoe-fo', NULL, NULL, NULL, NULL),
(157, 'Zixer Dance India Dance Shoe High Tops For Men', 'products/sneakers-3.webp', '878.00', 'zixer-dance-india-dance-shoe-high-tops-for-men', NULL, NULL, NULL, NULL),
(158, 'Zixer Men\'S High Top Ankle Retro Air Original Sneakers', 'products/sneakers-4.webp', '873.00', 'zixer-mens-high-top-ankle-retro-air-original-sneak', NULL, NULL, NULL, NULL),
(159, 'Exclusive Hip Hop Dancing Shoes', 'products/sneakers-5.webp', '763.00', 'exclusive-hip-hop-dancing-shoes', NULL, NULL, NULL, NULL),
(160, 'PortDance Mens Pietro Street Grey Denim Sneaker Dance Shoe', 'products/sneakers-6.webp', '1095.00', 'portdance-mens-pietro-street-grey-denim-sneaker-da', NULL, NULL, NULL, NULL),
(161, 'Puma Hyperglide X FusionLite Running Shoes', 'products/sneakers-7.webp', '2799.00', 'puma-hyperglide-x-fusionlite-running-shoes', NULL, NULL, NULL, NULL),
(162, 'Zixer Moonwalk Dancing Shoe With 360 Degree Cushioning Sole Technology unky Sneakers High Tops For M', 'products/sneakers-8.webp', '713.00', 'zixer-moonwalk-dancing-shoe-with-360-degree-cushio', NULL, NULL, NULL, NULL),
(163, 'Bomber Sneakers', 'products/printed-1.webp', '3490.00', 'bomber-sneakers', NULL, NULL, NULL, NULL),
(164, 'Printed Sneakers for Men', 'products/printed-2_P3xXaWW.jpg', '740.00', 'printed-sneakers-for-men', NULL, NULL, NULL, NULL),
(165, 'White Text Print Athletic Shoes', 'products/printed-3.webp', '959.00', 'white-text-print-athletic-shoes', NULL, NULL, NULL, NULL),
(166, 'Souled Men\'s Velocity Low Top Sneakers', 'products/printed-4_7deSk9r.webp', '2799.00', 'souled-mens-velocity-low-top-sneakers', NULL, NULL, NULL, NULL),
(167, 'Amico Designer Printed Casual Sneakers', 'products/printed-5.webp', '498.00', 'amico-designer-printed-casual-sneakers', NULL, NULL, NULL, NULL),
(168, 'Highlander Men\'s Printed Canvas Sneakers', 'products/printed-6_gWC77Xq.webp', '569.00', 'highlander-mens-printed-canvas-sneakers', NULL, NULL, NULL, NULL),
(169, 'U.S. POLO ASSN. Men\'s Barry Printed Sneakers', 'products/printed-7_ci1m9Nl.webp', '1799.00', 'us-polo-assn-mens-barry-printed-sneakers', NULL, NULL, NULL, NULL),
(170, 'Bacca Bucci Men\'s Fearless Low Top Sneakers', 'products/printed-8_ckQPcos.webp', '1499.00', 'bacca-bucci-mens-fearless-low-top-sneakers', NULL, NULL, NULL, NULL),
(171, 'EverTrek Outdoor Hiking Boots-All-Terrain Grip', 'products/outdoor-1.webp', '1899.00', 'evertrek-outdoor-hiking-boots-all-terrain-grip', NULL, NULL, NULL, NULL),
(172, 'Men Terra Lite Mid Ankle Trekking Shoes Brown', 'products/outdoor-2.webp', '1999.00', 'men-terra-lite-mid-ankle-trekking-shoes-brown', NULL, NULL, NULL, NULL),
(173, 'Male Casual Outdoors Black', 'products/outdoor-3.webp', '3459.00', 'male-casual-outdoors-black', NULL, NULL, NULL, NULL),
(174, 'Men Volga Low-Ankle Outdoor Shoes', 'products/outdoor-4.webp', '2199.00', 'men-volga-low-ankle-outdoor-shoes', NULL, NULL, NULL, NULL),
(175, 'Men\'s Hiking & Trekking Boots', 'products/outdoor-5.webp', '1699.00', 'mens-hiking-trekking-boots', NULL, NULL, NULL, NULL),
(176, 'Weinbrenner Mens Brown Outdoor Shoes for Men', 'products/outdoor-6.webp', '1689.00', 'weinbrenner-mens-brown-outdoor-shoes-for-men', NULL, NULL, NULL, NULL),
(177, 'Boldfit Men\'s Hiking Shoes', 'products/outdoor-7.webp', '1899.00', 'boldfit-mens-hiking-shoes', NULL, NULL, NULL, NULL),
(178, 'Ergon Men\'s Outdoor Casual Shoes', 'products/outdoor-8.webp', '3435.00', 'ergon-mens-outdoor-casual-shoes', NULL, NULL, NULL, NULL),
(179, 'Black Lightweight Beach Slides With Logo Print', 'products/flip-flop-1.webp', '1569.00', 'black-lightweight-beach-slides-with-logo-print', NULL, NULL, NULL, NULL),
(180, 'Breezy Fluff Sandals', 'products/flip-flop-2_j5YPlga.webp', '1299.00', 'breezy-fluff-sandals', NULL, NULL, NULL, NULL),
(181, 'Being Men Sliders', 'products/flip-flop-3_Aa0F4AS.webp', '999.00', 'being-men-sliders', NULL, NULL, NULL, NULL),
(182, 'Eva Unisex Sandals', 'products/flip-flop-4.webp', '2390.00', 'eva-unisex-sandals', NULL, NULL, NULL, NULL),
(183, 'PERY-PAO Sliders Men\'s White, Black, Grey Stylish Printed Flip Flop & Slippers', 'products/flip-flop-5.webp', '282.00', 'pery-pao-sliders-mens-white-black-grey-stylish-pri', NULL, NULL, NULL, NULL),
(184, 'PERY-PAO Sliders Mens White, Black, Grey Stylish Printed Flip Flop', 'products/flip-flop-6.webp', '282.00', 'pery-pao-sliders', NULL, NULL, NULL, NULL),
(185, 'Jack & Jones Men Typography Sliders', 'products/flip-flop-7.webp', '849.00', 'jack-jones-men-typography-sliders', NULL, NULL, NULL, NULL),
(186, 'Sparx Men\'s Flip-flops-Slide', 'products/flip-flop-8.webp', '425.00', 'sparx-mens-flip-flops-slide', NULL, NULL, NULL, NULL),
(187, 'Noise Twist Go Smartwatch', 'products/smart-3.webp', '1399.00', 'noise-twist-go-smartwatch', NULL, NULL, NULL, NULL),
(188, 'boAt Chrome Horizon, Video Watch Faces, 1.51” AMOLED Display', 'products/smart-1.webp', '3599.00', 'boat-chrome-horizon-video-watch-faces-151-amoled-d', NULL, NULL, NULL, NULL),
(189, 'Anarc Smartwatch Made to break moulds.', 'products/smart-2.webp', '6879.00', 'anarc-smartwatch-made-to-break-moulds', NULL, NULL, NULL, NULL),
(191, 'Fire-Boltt Ninja Call Pro Max Smart Watch 2.01 inch Display, Bluetooth Calling', 'products/smart-4.webp', '1299.00', 'fire-boltt-ninja-call-pro-max-smart-watch-201-inch', NULL, NULL, NULL, NULL),
(192, 'OnePlus Watch 2 with Wear OS 4,Snapdragon W5 Chipset,Upto 100hrs battery life,1.43’’', 'products/smart-8.webp', '20999.00', 'oneplus-watch-2-with-wear-os-4snapdragon-w5-chipse', NULL, NULL, NULL, NULL),
(193, 'boAt Lunar Discovery', 'products/smart-5_uixHiJM.webp', '1399.00', 'boat-lunar-discovery', NULL, NULL, NULL, NULL),
(194, 'Fire-Boltt Phoenix Smart Watch', 'products/smart-6.webp', '1199.00', 'fire-boltt-phoenix-smart-watch', NULL, NULL, NULL, NULL),
(195, 'Noise Twist Go Round dial Smartwatch with BT Calling', 'products/smart-7.webp', '1699.00', 'noise-twist-go-round-dial-smartwatch-with-bt-calli', NULL, NULL, NULL, NULL),
(196, 'Fastrack Men\'s Analog-Digital Watch', 'products/sporty-1.webp', '3370.00', 'fastrack-mens-analog-digital-watch', NULL, NULL, NULL, NULL),
(197, 'Fastrack Unisex-Adult Analog Watch', 'products/sporty-4.webp', '895.00', 'fastrack-unisex-adult-analog-watch', NULL, NULL, NULL, NULL),
(198, 'Sonata Men\'s Sporty Analog Dial Casual Watch', 'products/sporty-3.webp', '799.00', 'sonata-mens-sporty-analog-dial-casual-watch', NULL, NULL, NULL, NULL),
(199, 'Fastrack Automatics Green Dial Strap Automatic Watch', 'products/sporty-5.webp', '11995.00', 'fastrack-automatics-green-dial-strap-automatic-wat', NULL, NULL, NULL, NULL),
(200, 'SKMEI Men\'s Digital Sports Watch', 'products/sporty-2.jpg', '1099.00', 'skmei-mens-digital-sports-watch', NULL, NULL, NULL, NULL),
(201, 'Fastrack Opulence Sun Moon Chronograph Analog Quartz Watch', 'products/sporty-6.webp', '6589.00', 'fastrack-opulence-sun-moon-chronograph-analog-quar', NULL, NULL, NULL, NULL),
(202, 'Timex Men\'s Fashion Analog Watch', 'products/sporty-7.webp', '2511.00', 'timex-mens-fashion-analog-watch', NULL, NULL, NULL, NULL),
(203, 'Titan Smart Heritage Men\'s Casual Watch', 'products/sporty-8.webp', '10999.00', 'titan-smart-heritage-mens-casual-watch', NULL, NULL, NULL, NULL),
(204, 'Sonata Men\'s Poze Quartz Analog Strap Watch', 'products/white-1.webp', '1769.00', 'sonata-mens-poze-quartz-analog-strap-watch', NULL, NULL, NULL, NULL),
(205, 'Fastrack Men\'s Analog Watch', 'products/white-2_kHCVZ2z.webp', '1195.00', 'fastrack-mens-analog-watch', NULL, NULL, NULL, NULL),
(206, 'Timex Men\'s Analog Watch', 'products/white-3.webp', '1369.00', 'timex-mens-analog-watch', NULL, NULL, NULL, NULL),
(207, 'Sonata Men\'s Poze Analog Quartz Watch', 'products/white-4.webp', '1565.00', 'sonata-mens-poze-analog-quartz-watch', NULL, NULL, NULL, NULL),
(208, 'Fastrack Fastfit Quartz Multifunction Strap Watch', 'products/white-5.webp', '3970.00', 'fastrack-fastfit-quartz-multifunction-strap-watch', NULL, NULL, NULL, NULL),
(209, 'Joker & Witch Ajax Strap Watch', 'products/white-6.webp', '1799.00', 'joker-witch-ajax-strap-watch', NULL, NULL, NULL, NULL),
(210, 'Titan Edge Squircle Quartz Analog Watch', 'products/white-7.webp', '1870.00', 'titan-edge-squircle-quartz-analog-watch', NULL, NULL, NULL, NULL),
(211, 'Fossil Men Dean Chronograph Stainless Steel Watch', 'products/white-8.webp', '11595.00', 'fossil-men-dean-chronograph-stainless-steel-watch', NULL, NULL, NULL, NULL),
(213, 'Fastrack Men Vyb Challenger Dial & Bracelet Style Straps Analogue', 'products/fastrack-1_Bs5q0Wp.webp', '1694.00', 'fastrack-men-vyb-challenger', NULL, NULL, NULL, NULL),
(214, 'Fastrack Exuberant Quartz Analog Blue Dial Metal Strap Watch for Guys', 'products/fastrack-2.jpg', '1990.00', 'fastrack-exuberant-quartz-analog-blue-dial', NULL, NULL, NULL, NULL),
(215, 'Fastrack Extreme Sports Analog Watch - For Men', 'products/fastrack-3.webp', '3590.00', 'fastrack-extreme-sports-analog-watch-for-men', NULL, NULL, NULL, NULL),
(216, 'Fastrack Tick Tock Quartz Analog Black Dial With Black Stainless steel Strap Watch', 'products/fastrack-4.jpg', '3290.00', 'fastrack-tick-tock-quartz-analog-black-dial-with-b', NULL, NULL, NULL, NULL),
(217, 'Fastrack Party Analog Watch - For Men', 'products/fastrack-5.webp', '4530.00', 'fastrack-party-analog-watch-for-men', NULL, NULL, NULL, NULL),
(218, 'FASTRACK in Black', 'products/fastrack-6.webp', '2908.00', 'fastrack-in-black', NULL, NULL, NULL, NULL),
(219, 'Men\'s fast track watche', 'products/fastrack-8.jpg', '3450.00', 'mens-fast-track-watche', NULL, NULL, NULL, NULL),
(220, 'FASTRACK Brown Lether Belt For Men', 'products/fastrack-7.jpg', '2204.00', 'fastrack-brown-lether-belt-for-men', NULL, NULL, NULL, NULL),
(221, 'Fastrack 3272SL02 Men\'s Watch with 2 Year National Warranty', 'products/mini-1.webp', '2098.00', 'fastrack-3272sl02-mens-watch-with-2-year-national', NULL, NULL, NULL, NULL),
(222, 'Mens Watches Ultra-Thin Minimalist Waterproof-Fashion Wrist Watch for Men', 'products/mini-2.jpeg', '8299.00', 'mens-watches-ultra-thin-minimalist-waterproof-fash', NULL, NULL, NULL, NULL),
(223, 'Modello Due US2-MN', 'products/mini-3.jpg', '3899.00', 'modello-due-us2-mn', NULL, NULL, NULL, NULL),
(224, 'Chic Budget Minimalist Watch: Style & Affordability', 'products/mini-4.webp', '3201.00', 'chic-budget-minimalist-watch-style-affordability', NULL, NULL, NULL, NULL),
(225, 'Minimalist Watches: A Fine Time for Simplicity', 'products/mini-5.webp', '2210.00', 'minimalist-watches-a-fine-time-for-simplicity', NULL, NULL, NULL, NULL),
(226, 'Men\'s Leather Watch Ultra Thin Watches for Men Minimalist Watch', 'products/mini-6.jpeg', '3009.00', 'mens-leather-watch-ultra-thin-watches-for-men-mini', NULL, NULL, NULL, NULL),
(227, 'Minimalist Watches for Men: A Guide to a Stylish Look - SenseOrient', 'products/mini-7.jpeg', '3890.00', 'minimalist-watches-for-men-a-guide-to-a-stylish-lo', NULL, NULL, NULL, NULL),
(228, 'FASTRACK Stylish Collection For Men', 'products/mini-8.webp', '3540.00', 'fastrack-stylish-collection-for-men', NULL, NULL, NULL, NULL),
(229, 'Whisper Cotton Flex Co-ord Set', 'products/moss-1.webp', '799.00', 'whisper-cotton-flex-co-ord-set', NULL, NULL, NULL, NULL),
(230, 'Olive Green Casual Midi Dress  Olive Green Casual Midi Dress', 'products/moss-2.webp', '999.00', 'olive-green-casual-midi-dress-olive-green-casual-m', NULL, NULL, NULL, NULL),
(231, 'ring-top off-shoulder', 'products/top-1.webp', '450.00', 'ring-top-off-shoulder', NULL, NULL, NULL, NULL),
(232, 'Dress - For all the ways you love to dress.', 'products/print-1.webp', '590.00', 'dress-for-all-the-ways-you-love-to-dress', NULL, NULL, NULL, NULL),
(233, 'Western Dress', 'products/moss-3.jpg', '1240.00', 'western-dress', NULL, NULL, NULL, NULL),
(234, 'Western Jumsuit for Women', 'products/moss-4.jpeg', '1290.00', 'western-jumsuit-for-women', NULL, NULL, NULL, NULL),
(235, 'Women\'s Olive Criss- Cross Indo Western Dress', 'products/moss-5.jpg', '1430.00', 'womens-olive-criss-cross-indo-western-dress', NULL, NULL, NULL, NULL),
(236, 'Western street fashion. Glowing in the street style', 'products/moss-6.jpg', '590.00', 'western-street-fashion-glowing-in-the-street-style', NULL, NULL, NULL, NULL),
(237, 'Leriya Fashion Western Dresses for Women', 'products/moss-7.webp', '760.00', 'leriya-fashion-western-dresses-for-women', NULL, NULL, NULL, NULL),
(238, 'Western Wear Guide for Slim Body Type', 'products/moss-8.webp', '390.00', 'western-wear-guide-for-slim-body-type', NULL, NULL, NULL, NULL),
(239, 'Black Solid top', 'products/mod-1.jpg', '1740.00', 'black-solid-top', NULL, NULL, NULL, NULL),
(240, 'Tie Back Rib Crop Top', 'products/mod-3.webp', '340.00', 'tie-back-rib-crop-top', NULL, NULL, NULL, NULL),
(241, 'Round Neck Tie Up Crop Top', 'products/mod-4.webp', '650.00', 'round-neck-tie-up-crop-top', NULL, NULL, NULL, NULL),
(242, 'Brown Asymmetrical Neck Sleeveless Crop Top', 'products/mod-5.webp', '290.00', 'brown-asymmetrical-neck-sleeveless-crop-top', NULL, NULL, NULL, NULL),
(243, 'Corset Style White Crop Top', 'products/mod-6.webp', '590.00', 'corset-style-white-crop-top', NULL, NULL, NULL, NULL),
(244, 'Y2K AESTHETIC GREEN HEART SHAPES WHITE CROP TOP', 'products/mod-7.webp', '210.00', 'y2k-aesthetic-green-heart-shapes-white-crop-top', NULL, NULL, NULL, NULL),
(245, 'Off Shoulder Full Sleeves Crop Top', 'products/mod-8.webp', '340.00', 'off-shoulder-full-sleeves-crop-top', NULL, NULL, NULL, NULL),
(246, 'Winter Tunic With Heart Print', 'products/red-1.jpg', '1290.00', 'winter-tunic-with-heart-print', NULL, NULL, NULL, NULL),
(247, 'Red Solid Ruched Back Crop Top', 'products/red-2.webp', '349.00', 'red-solid-ruched-back-crop-top', NULL, NULL, NULL, NULL),
(248, 'Balloon Sleeve Crop Top', 'products/red-3.jpeg', '699.00', 'balloon-sleeve-crop-top', NULL, NULL, NULL, NULL),
(249, 'Red Amazing Little Top', 'products/red-4.jpeg', '389.00', 'red-amazing-little-top', NULL, NULL, NULL, NULL),
(250, 'Red Side Drawstring Corset Top', 'products/red-5.jpeg', '699.00', 'red-side-drawstring-corset-top', NULL, NULL, NULL, NULL),
(251, 'Baseball Red oversized half sleeve cotton blend dropshoulder loose fit women t-shirt', 'products/red-6.jpeg', '590.00', 'baseball-red-oversized-half-sleeve-cotton-blend-dr', NULL, NULL, NULL, NULL),
(252, 'Red Corset Sleeveless Crop Top', 'products/red-7.jpeg', '799.00', 'red-corset-sleeveless-crop-top', NULL, NULL, NULL, NULL),
(253, 'Red Pleated Cami Dress', 'products/red-8.jpeg', '999.00', 'red-pleated-cami-dress', NULL, NULL, NULL, NULL),
(254, 'Oversized Tshirt', 'products/dailywear-1.jpeg', '699.00', 'oversized-tshirt', NULL, NULL, NULL, NULL),
(255, 'Casual T-Shirts for Women', 'products/dailywear-5.webp', '517.00', 'casual-t-shirts-for-women', NULL, NULL, NULL, NULL),
(256, 'Floral Printed Square Neck Crop Top', 'products/dailywear-2.jpeg', '499.00', 'floral-printed-square-neck-crop-top', NULL, NULL, NULL, NULL),
(257, 'Skinny Fit Graphic T-Shirt', 'products/daily-6.webp', '199.00', 'skinny-fit-graphic-t-shirt', NULL, NULL, NULL, NULL),
(258, 'Shein Drop Shoulder Typographic Back Print Crew Tshirt', 'products/dailywear-7.webp', '299.00', 'shein-drop-shoulder-typographic-back-print-crew-ts', NULL, NULL, NULL, NULL),
(259, 'Bow Pullover T-Shirt', 'products/dailywear-8.webp', '392.00', 'bow-pullover-t-shirt', NULL, NULL, NULL, NULL),
(260, 'Oversized top', 'products/dailywear-4.webp', '599.00', 'oversized-top', NULL, NULL, NULL, NULL),
(261, 'Yellow One Sided Knot Stylish Top', 'products/dailywear-3.jpeg', '754.00', 'yellow-one-sided-knot-stylish-top', NULL, NULL, NULL, NULL),
(262, 'Style Quotient Women SAGE GREEN Solid Polyester Regular Smart Casual Top', 'products/eco-8.jpeg', '299.00', 'style-quotient-women-sage-green-solid-polyester-re', NULL, NULL, NULL, NULL),
(263, 'Set of 2-Black Sweetheart Neck Crop Top With High Rise Trouser', 'products/eco-7.webp', '899.00', 'set-of-2-black-sweetheart-neck-crop-top-with-high', NULL, NULL, NULL, NULL),
(264, 'Eco-Friendly & Sustainable', 'products/eco-6.webp', '599.00', 'eco-friendly-sustainable', NULL, NULL, NULL, NULL),
(265, 'Green satin day out dress', 'products/eco-5.jpeg', '999.00', 'green-satin-day-out-dress', NULL, NULL, NULL, NULL),
(266, 'Pretty Green Mini Dress', 'products/eco-2.jpeg', '490.00', 'pretty-green-mini-dress', NULL, NULL, NULL, NULL),
(267, 'Set Of 2: Bottle Green Culottes Co Ord Set', 'products/eco-4.jpeg', '999.00', 'set-of-2-bottle-green-culottes-co-ord-set', NULL, NULL, NULL, NULL),
(268, 'Pastel Green Waist Top With High Rise Trouser', 'products/eco-3.webp', '999.00', 'pastel-green-waist-top-with-high-rise-trouser', NULL, NULL, NULL, NULL),
(269, 'Green Long Cut out Slit Dress', 'products/eco-1.jpeg', '1090.00', 'green-long-cut-out-slit-dress', NULL, NULL, NULL, NULL),
(270, 'BloomStride Sneakers', 'products/printed-1.jpeg', '1290.00', 'bloomstride-sneakers', NULL, NULL, NULL, NULL),
(271, 'LifeO -Girl\'s Sneakers Printed Casual Shoe', 'products/printed-2.jpeg', '1270.00', 'lifeo-girls-sneakers-printed-casual-shoe', NULL, NULL, NULL, NULL),
(272, 'Creamy Matte Bullet Lipstick', 'products/printed-3.jpeg', '2100.00', 'creamy-matte-bullet-lipstick', NULL, NULL, NULL, NULL),
(273, 'The Printed Sneaker', 'products/printed-4.jpeg', '1150.00', 'the-printed-sneaker', NULL, NULL, NULL, NULL),
(274, 'Classic Brown and White Casual Shoes', 'products/printed-5_McAXbUZ.jpeg', '799.00', 'classic-brown-and-white-casual-shoes', NULL, NULL, NULL, NULL),
(275, 'Women Printed Casual Lace Up Shoes', 'products/printed-6.jpeg', '1790.00', 'women-printed-casual-lace-up-shoes', NULL, NULL, NULL, NULL),
(276, 'World Corp Lo Plimsoll Alien Canvas Lace-up Sneaker', 'products/printed-7.jpeg', '599.00', 'world-corp-lo-plimsoll-alien-canvas-lace-up-sneake', NULL, NULL, NULL, NULL),
(277, 'The Souled Store Women Minions Printed Sneakers', 'products/printed-8.jpg', '1309.00', 'the-souled-store-women-minions-printed-sneakers', NULL, NULL, NULL, NULL),
(278, 'Women\'s Heels', 'products/everyday-1_0S60kxw.jpeg', '599.00', 'womens-heels', NULL, NULL, NULL, NULL),
(279, 'Funky print canvas Heels', 'products/everyday-3.jpg', '699.00', 'funky-print-canvas-heels', NULL, NULL, NULL, NULL),
(280, 'Brown White Combine Colour Everyday Footwear', 'products/everyday-2_nVZmCw0.jpeg', '299.00', 'brown-white-combine-colour-everyday-footwear', NULL, NULL, NULL, NULL),
(281, 'Dona style mules', 'products/everyday-4_IUHbDv6.jpeg', '790.00', 'dona-style-mules', NULL, NULL, NULL, NULL),
(282, 'Barely there brown flat', 'products/everyday-5.webp', '580.00', 'barely-there-brown-flat', NULL, NULL, NULL, NULL),
(283, 'Elegant Flower embellished Off-white Flats', 'products/everyday-6.webp', '250.00', 'elegant-flower-embellishe', NULL, NULL, NULL, NULL),
(284, 'Work the Bloom Flats Brown', 'products/everyday-7.webp', '704.00', 'work-the-bloom-flats-brown', NULL, NULL, NULL, NULL),
(285, 'Trendy Women\'s Shoes | Fashionable Footwear', 'products/everyday-8_QFiiMR4.jpg', '590.00', 'trendy-womens-shoes-fashionable-footwear', NULL, NULL, NULL, NULL),
(286, 'Sneakers For Women', 'products/colourblocked-2.webp', '490.00', 'sneakers-for-women', NULL, NULL, NULL, NULL),
(287, 'Pastel colour blocking ankle sneakers', 'products/colourblocked-3.webp', '790.00', 'pastel-colour-blocking-ankle-sneakers', NULL, NULL, NULL, NULL),
(288, 'Women Colour Block Elena Sneakers', 'products/colourblocked-4.jpeg', '1250.00', 'women-colour-block-elena-sneakers', NULL, NULL, NULL, NULL),
(289, 'grey Sneakers For Women', 'products/colourblocked-5.jpeg', '1309.00', 'grey-sneakers-for-women', NULL, NULL, NULL, NULL),
(290, 'Lace Lullaby Retro Sneakers', 'products/colourblocked-6.webp', '1304.00', 'lace-lullaby-retro-sneakers', NULL, NULL, NULL, NULL),
(291, 'Coffee & Cream Sneakers', 'products/colourblocked-7.webp', '1280.00', 'coffee-cream-sneakers', NULL, NULL, NULL, NULL),
(292, 'Pastel Panel Sneakers', 'products/colourblocked-8.webp', '1200.00', 'pastel-panel-sneakers', NULL, NULL, NULL, NULL),
(293, 'Rocia Shoes | Rocia by Regal – where fashion meets comfort, and every step feels like luxury.', 'products/rocia-4.jpeg', '2290.00', 'rocia-shoes-rocia-by-regal-where-fashion-meets-com', NULL, NULL, NULL, NULL),
(294, 'Rocia by Regal Women\'s Beige Casual Sandals', 'products/rocia-3.jpeg', '1308.00', 'rocia-by-regal-womens-beige-casual-sandals', NULL, NULL, NULL, NULL),
(295, 'Best Collection of Rocia', 'products/rocia-1.jpeg', '2390.00', 'best-collection-of-rocia', NULL, NULL, NULL, NULL),
(296, 'Chain On Nude Slingback Heels', 'products/rocia-5.webp', '1508.00', 'chain-on-nude-slingback-heels', NULL, NULL, NULL, NULL),
(297, 'Trendy Women\'s Shoes', 'products/rocia-6.jpg', '890.00', 'trendy-womens-shoes', NULL, NULL, NULL, NULL),
(298, 'ROCIA ® – Buy original ROCIA', 'products/rocia-7.webp', '1202.00', 'rocia-buy-original-rocia', NULL, NULL, NULL, NULL),
(299, 'Stylish Collection With Chain', 'products/rocia-8.webp', '1380.00', 'stylish-collection-with-chain', NULL, NULL, NULL, NULL),
(300, 'Rocia Exclusive Heels', 'products/rocia-2.jpeg', '1390.00', 'rocia-exclusive-heels', NULL, NULL, NULL, NULL),
(301, 'Comfortable Footwear for Women', 'products/comfort-2.jpg', '299.00', 'comfortable-footwear-for-women', NULL, NULL, NULL, NULL),
(302, 'Black & White Stylish Collection', 'products/comfort-1.jpeg', '508.00', 'black-white-stylish-collection', NULL, NULL, NULL, NULL),
(303, 'Jelly shoes balance clearance', 'products/comfort-3.jpg', '299.00', 'jelly-shoes-balance-clearance', NULL, NULL, NULL, NULL),
(304, 'Comfortable Sandals for Women', 'products/comfort-4.jpg', '340.00', 'comfortable-sandals-for-women', NULL, NULL, NULL, NULL),
(305, 'Daily Wear Footwear for Women', 'products/comfort-5.jpg', '390.00', 'daily-wear-footwear-for-women', NULL, NULL, NULL, NULL),
(306, 'Most Popular Sandals', 'products/comfort-6.jpg', '390.00', 'most-popular-sandals', NULL, NULL, NULL, NULL),
(307, 'Comfortable Dress Shoes for Women', 'products/comfort-8.jpg', '290.00', 'comfortable-dress-shoes-for-women', NULL, NULL, NULL, NULL),
(308, 'Casual Pump Shoes For Women', 'products/comfort-7.jpg', '390.00', 'casual-pump-shoes-for-women', NULL, NULL, NULL, NULL),
(312, 'Shasmi Women\'s Georgette Digital Printed Maxi Dress for Women', 'products/print-4.jpg', '507.00', 'shasmi-womens-georgette-digital-printed-maxi-dress', NULL, NULL, NULL, NULL),
(313, 'Traditional Dress For Every Occasion', 'products/print-5.jpg', '899.00', 'traditional-dress-for-every-occasion', NULL, NULL, NULL, NULL),
(316, 'Bow A-Line Dress', 'products/print-8.webp', '1450.00', 'bow-a-line-dress', NULL, NULL, NULL, NULL),
(317, 'Mustard embroidered lehenga with anarkali blouse', 'products/regal-1.jpeg', '2290.00', 'mustard-embroidered-lehenga-with-anarkali-blouse', NULL, NULL, NULL, NULL),
(318, 'Mustard Color Mantellic Tissue Embroidered and Woven Anarkali Suit', 'products/regal-2.jpeg', '3216.00', 'mustard-color-mantellic-tissue-embroidered-and-wov', NULL, NULL, NULL, NULL),
(319, 'Mustard Bandhani Printed Chinnon Palazzo Style Suit', 'products/regal-3.jpeg', '3229.00', 'mustard-bandhani-printed-chinnon-palazzo-style-sui', NULL, NULL, NULL, NULL),
(320, 'Women Yellow Colour with Taffeta Silk Full Flair Gown', 'products/regal-4.jpeg', '1289.00', 'women-yellow-colour-with-taffeta-silk-full-flair-g', NULL, NULL, NULL, NULL),
(321, 'Georgette Maxi Ethnic Dress', 'products/regal-5.jpg', '2870.00', 'georgette-maxi-ethnic-dress', NULL, NULL, NULL, NULL),
(322, 'Women Mustard Yellow Floral Printed V-Neck Mirror Embellished', 'products/regal-6.jpg', '2365.00', 'women-mustard-yellow-floral-printed-v-neck-mirror', NULL, NULL, NULL, NULL),
(323, 'Square Neck Floral Embroidered Empire Kurta with Trousers & Dupatta', 'products/regal-7.webp', '3286.00', 'square-neck-floral-embroidered-empire-kurta-with-t', NULL, NULL, NULL, NULL),
(324, 'Indian - For Every Occasion', 'products/regal-8.jpg', '2390.00', 'indian-for-every-occasion', NULL, NULL, NULL, NULL),
(325, 'White Printed Kurta-Plaza Pair', 'products/print-3_fuKNKfr.webp', '2390.00', 'white-printed-kurta-plaza-pair', NULL, NULL, NULL, NULL),
(326, 'Printed kurta', 'products/print-2.jpg', '879.00', 'printed-kurta', NULL, NULL, NULL, NULL),
(327, 'Light Material Jeans kurta', 'products/print-6.jpg', '390.00', 'light-material-jeans-kurta', NULL, NULL, NULL, NULL),
(328, 'Plain Dress With Printed Dupatta', 'products/print-7.jpg', '999.00', 'plain-dress-with-printed-dupatta', NULL, NULL, NULL, NULL),
(329, 'Indo Fusion Dress For Women', 'products/fusion-1.jpeg', '2199.00', 'indo-fusion-dress-for-women', NULL, NULL, NULL, NULL),
(330, 'Exclusive Party Wear Dress', 'products/fusion-2.jpeg', '2189.00', 'exclusive-party-wear-dress', NULL, NULL, NULL, NULL),
(331, 'Modern Takes on Traditional Indian Clothing: Indo-Western Fusion Trend', 'products/fusion-3.webp', '3498.00', 'modern-takes-on-traditional-indian-clothing-indo-w', NULL, NULL, NULL, NULL),
(332, 'One Shoulder Dresse', 'products/fusion-4.webp', '999.00', 'one-shoulder-dresse', NULL, NULL, NULL, NULL),
(333, 'Fusion Wear Trends: Tradition Meets Contemporary Style', 'products/fusion-5.jpg', '3245.00', 'fusion-wear-trends-tradition-meets-contemporary-st', NULL, NULL, NULL, NULL),
(334, 'Explore Gen-Z Ethnic Wear styles for a traditional look', 'products/fusion-6.webp', '5433.00', 'explore-gen-z-ethnic-wear-styles-for-a-traditional', NULL, NULL, NULL, NULL),
(335, 'Black 3 Piece', 'products/fusion-7.webp', '3454.00', 'black-3-piece', NULL, NULL, NULL, NULL),
(336, 'Premium Chinon Ethnic Dress Indian', 'products/fusion-8.webp', '2399.00', 'premium-chinon-ethnic-dress-indian', NULL, NULL, NULL, NULL),
(337, 'Lime Yellow Silk Layered Kurta Churidar Suit Set Kurta, Inner, Churidar, Dupatta at Biba Global', 'products/biba-1.jpg', '2399.00', 'lime-yellow-silk-layered-kurta-churidar-suit-set-k', NULL, NULL, NULL, NULL),
(338, 'White and Black Cotton Printed Anarkali Kurta Set | Biba', 'products/biba-2.jpg', '1544.00', 'white-and-black-cotton-printed-anarkali-kurta-set', NULL, NULL, NULL, NULL),
(339, 'Green Modal Floral Printed Straight Kurta Set', 'products/biba-3.webp', '1289.00', 'green-modal-floral-printed-straight-kurta-set', NULL, NULL, NULL, NULL),
(340, 'Lilac Polyester Straight Kurta Set at Biba India', 'products/biba-4.webp', '999.00', 'lilac-polyester-straight-kurta-set-at-biba-india', NULL, NULL, NULL, NULL),
(341, 'Green Embroidered Festive Kalidar Suit Set', 'products/biba-5.webp', '1788.00', 'green-embroidered-festive-kalidar-suit-set', NULL, NULL, NULL, NULL),
(342, 'BIBA Women Rayon Straight Kurta Set', 'products/biba-6.jpg', '1222.00', 'biba-women-rayon-straight-kurta-set', NULL, NULL, NULL, NULL),
(343, 'Indigo Pure Cotton Fusion Kurta Set', 'products/biba-7.jpg', '999.00', 'indigo-pure-cotton-fusion-kurta-set', NULL, NULL, NULL, NULL),
(344, 'Biba Blue Handblock Kurta Set', 'products/biba-8.webp', '1490.00', 'biba-blue-handblock-kurta-set', NULL, NULL, NULL, NULL),
(345, 'Trendy Lavender Floral Sleeveless Kurti with Palazzo Set Women\'s Fashion Ethnic Wear', 'products/summer-2.webp', '999.00', 'trendy-lavender-floral-sleeveless-kurti-with-palaz', NULL, NULL, NULL, NULL),
(346, 'Women Summer Wear Cotton Kurta & Suit Set | Jaipur Kurti', 'products/summer-1.webp', '1899.00', 'women-summer-wear-cotton-kurta-suit-set-jaipur-kur', NULL, NULL, NULL, NULL),
(347, 'summer college outfit', 'products/summer-3.jpeg', '1090.00', 'summer-college-outfit', NULL, NULL, NULL, NULL),
(348, 'Chikankari kurtas in the Summer Heat', 'products/summer-4.webp', '1344.00', 'chikankari-kurtas-in-the-summer-heat', NULL, NULL, NULL, NULL),
(349, 'Cotton kurta', 'products/summer-5.webp', '989.00', 'cotton-kurta', NULL, NULL, NULL, NULL),
(350, 'Black Floral Printed V-Neck Thread Work Pure Cotton Straight Kurta', 'products/summer-6.jpg', '639.00', 'black-floral-printed-v-neck-thread-work-pure-cotto', NULL, NULL, NULL, NULL),
(351, 'Libas Coral Yoke Design Cotton Straight Kurta With Trousers & Dupatta', 'products/summer-7.jpg', '899.00', 'libas-coral-yoke-design-cotton-straight-kurta-with', NULL, NULL, NULL, NULL),
(352, 'Libas Notched Neck Flared Sleeves Ethnic Embroidered Kurta with Palazzo & Dupatta', 'products/summer-8.jpg', '1290.00', 'libas-notched-neck-flared-sleeves-ethnic-embroider', NULL, NULL, NULL, NULL),
(353, 'Women Summits Lace-Up Shoes', 'products/skechers-1.jpeg', '5677.00', 'women-summits-lace-up-shoes', NULL, NULL, NULL, NULL),
(354, 'Skecher\'s violet collection', 'products/skechers-2.jpg', '2390.00', 'skechers-violet-collection', NULL, NULL, NULL, NULL),
(355, 'Skechers UNO - STAND ON AIR Women Rose Perforated Memory Foam Sneakers', 'products/skechers-3.jpeg', '3359.00', 'skechers-uno-stand-on-air-women-rose-perforated-me', NULL, NULL, NULL, NULL),
(356, 'Skechers Women\'s GO WALK 6 - VALERIE Mauve Walking Shoes', 'products/skechers-4.jpeg', '2455.00', 'skechers-womens-go-walk-6-valerie-mauve-walking-sh', NULL, NULL, NULL, NULL),
(357, 'Skechers Women\'s Go Walk Flex Walking Shoes', 'products/skechers-5.webp', '2229.00', 'skechers-womens-go-walk-flex-walking-shoes', NULL, NULL, NULL, NULL);
INSERT INTO `mysite_product` (`id`, `title`, `image`, `price`, `slug`, `men_category_id`, `women_category_id`, `kidz_category_id`, `BeautyItem_id`) VALUES
(358, 'Cheap skechers shoes For womens', 'products/skechers-6.jpg', '2344.00', 'cheap-skechers-shoes-for-womens', NULL, NULL, NULL, NULL),
(359, 'SKECHERS GoWalk Evolution Ultra Walking Shoes', 'products/skechers-7.webp', '1944.00', 'skechers-gowalk-evolution-ultra-walking-shoes', NULL, NULL, NULL, NULL),
(360, 'SKECHERS - Spread the love with Skechers Women JGoldcrown Skechers Street Uno Shoes. ❤', 'products/skechers-8.jpg', '3677.00', 'skechers-spread-the-love-with-skechers-women-jgold', NULL, NULL, NULL, NULL),
(361, 'Under armour women\'s online gym set', 'products/under-1.jpeg', '788.00', 'under-armour-womens-online-gym-set', NULL, NULL, NULL, NULL),
(362, 'Under armour gym set outlet', 'products/under-2.jpeg', '289.00', 'under-armour-gym-set-outlet', NULL, NULL, NULL, NULL),
(363, 'Under armour gym set outlet', 'products/under-3.jpeg', '455.00', 'under-armour-gym-set', NULL, NULL, NULL, NULL),
(364, '2 - 2 Women - Under Armour Fitness Leggings 2 - 2 Women - Under Armour Fitness Leggings', 'products/under-4.webp', '899.00', '2-2-women-under-armour-fitness-leggings-2-2-women', NULL, NULL, NULL, NULL),
(365, 'Kid s Under Armour Clothing Trainers Tracksuits JD Sports UK Kid s Under Armour Clothing Trainers Tr', 'products/under-5.webp', '2344.00', 'kid-s-under-armour-clothing-trainers-tracksuits-jd', NULL, NULL, NULL, NULL),
(366, 'Under Armour Jade Set - Top Shorts ModActive Under Armour Jade Set - Top Shorts ModActive', 'products/under-6.jpeg', '1489.00', 'under-armour-jade-set-top-shorts-modactive-under-a', NULL, NULL, NULL, NULL),
(367, 'Women Sports Wear Shorts - Buy Women Sports Wear Shorts online in India', 'products/under-7.jpg', '899.00', 'women-sports-wear-shorts-buy-women-sports-wear-sho', NULL, NULL, NULL, NULL),
(368, 'UNDER ARMOUR Women Fly By 2 in 1 Running Shorts', 'products/under-8.jpg', '455.00', 'under-armour-women-fly-by-2-in-1-running-shorts', NULL, NULL, NULL, NULL),
(369, 'Joggers', 'products/joggers-1.jpg', '899.00', 'joggers', NULL, NULL, NULL, NULL),
(370, 'AMERICAN EAGLE OUTFITTERS Men Slim Fit Stretchable Jeans', 'products/joggers-2.jpg', '999.00', 'american-eagle-outfitters-men-slim-fit-stretchable', NULL, NULL, NULL, NULL),
(371, 'Set Of Two :Corset Style Top & Jogger In Light Brown', 'products/joggers-3.webp', '1490.00', 'set-of-two-corset-style-top-jogger-in-light-brown', NULL, NULL, NULL, NULL),
(372, 'Black Premium Embroidered Oversized Wide Leg Joggers', 'products/joggers-4.jpeg', '1899.00', 'black-premium-embroidered-oversized-wide-leg-jogge', NULL, NULL, NULL, NULL),
(373, 'Women Rose Solid Cotton Joggers', 'products/joggers-5.jpg', '999.00', 'women-rose-solid-cotton-joggers', NULL, NULL, NULL, NULL),
(374, 'BOLDFIT Women Mid-Rise Sports Joggers', 'products/joggers-6.jpg', '899.00', 'boldfit-women-mid-rise-sports-joggers', NULL, NULL, NULL, NULL),
(375, 'Women Rapid-Dry Training Joggers', 'products/joggers-7.jpg', '677.00', 'women-rapid-dry-training-joggers', NULL, NULL, NULL, NULL),
(376, 'Women Sports Wear Track Pants', 'products/joggers-8.jpg', '455.00', 'women-sports-wear-track-pants', NULL, NULL, NULL, NULL),
(377, 'Women Running Sports Shoes', 'products/running-1.jpeg', '897.00', 'women-running-sports-shoes', NULL, NULL, NULL, NULL),
(378, 'Avant Women\'s Sapphire Running Shoes- Purple', 'products/running-2.jpg', '900.00', 'avant-womens-sapphire-running-shoes-purple', NULL, NULL, NULL, NULL),
(379, 'Running Shoes For Women', 'products/running-3.jpg', '567.00', 'running-shoes-for-women', NULL, NULL, NULL, NULL),
(380, 'Campus Women Ciara Running Shoes', 'products/running-4.jpg', '1788.00', 'campus-women-ciara-running-shoes', NULL, NULL, NULL, NULL),
(381, 'Women\'s White Sports Shoes Online', 'products/running-5.jpg', '1290.00', 'womens-white-sports-shoes-online', NULL, NULL, NULL, NULL),
(382, 'Women Sale Sports Shoes', 'products/running-6.jpg', '999.00', 'women-sale-sports-shoes', NULL, NULL, NULL, NULL),
(383, 'COMFORT-Sports Shoes', 'products/running-7.jpg', '1290.00', 'comfort-sports-shoes', NULL, NULL, NULL, NULL),
(384, 'Red Tape Women Walking Sports Shoes', 'products/running-8.jpg', '1759.00', 'red-tape-women-walking-sports-shoes', NULL, NULL, NULL, NULL),
(385, 'THE CLOTHING FACTORY Women Pink Solid Tank Top & Athleisure Cycling shorts', 'products/apparel-1.jpeg', '1590.00', 'the-clothing-factory-women-pink-solid-tank-top-ath', NULL, NULL, NULL, NULL),
(386, 'LULU & SKY Women V-Neck Ruched Athleisure Top', 'products/apparel-2.jpg', '1622.00', 'lulu-sky-women-v-neck-ruched-athleisure-top', NULL, NULL, NULL, NULL),
(387, 'ATHLISIS Women Lightweight Crop Training or Gym Sporty Jacket', 'products/apparel-3.jpg', '883.00', 'athlisis-women-lightweight-crop-training-or-gym-sp', NULL, NULL, NULL, NULL),
(388, 'Jockey Super Combed Cotton Rich Relaxed Fit Curved Hem Styled Half Sleeve Tshirt-AW88', 'products/apparel-4.jpg', '549.00', 'jockey-super-combed-cotton-rich-relaxed-fit-curved', NULL, NULL, NULL, NULL),
(389, 'Allen Solly Woman Women White & Olive Green Printed Athleisure T-shirt', 'products/apparel-5.jpg', '999.00', 'allen-solly-woman-women-white-olive-green-printed', NULL, NULL, NULL, NULL),
(390, 'Women Sports Printed Rapid-Dry Running T-shirt', 'products/apparel-6.jpg', '269.00', 'women-sports-printed-rapid-dry-running-t-shirt', NULL, NULL, NULL, NULL),
(391, 'Women White Solid Tank Top & Athleisure Cycling shorts', 'products/apparel-7.jpg', '1113.00', 'women-white-solid-tank-top-athleisure-cycling-shor', NULL, NULL, NULL, NULL),
(392, 'Colourblocked Antimicrobial Slim Fit Short Length T-shirts', 'products/apparel-8.jpg', '578.00', 'colourblocked-antimicrobial-slim-fit-short-length', NULL, NULL, NULL, NULL),
(393, 'KARATCART Gold-Plated Cream Artificial Beaded Polki Kundan-Studded Jewellery Set', 'products/immitire-1.jpeg', '826.00', 'karatcart-gold-plated-cream-artificial-beaded-polk', NULL, NULL, NULL, NULL),
(394, 'Gold-Plated Stone-Studded Jewellery Set', 'products/immitire-2.jpeg', '1200.00', 'gold-plated-stone-studded-jewellery-set', NULL, NULL, NULL, NULL),
(395, 'Victorian-Plated Kundan Studded & Beaded Ethnic Jewellery Set', 'products/immitire-3.jpeg', '1490.00', 'victorian-plated-kundan-studded-beaded-ethnic-jewe', NULL, NULL, NULL, NULL),
(396, 'Green Gold-Plated Party Pendant Set', 'products/immitire-4.jpg', '1100.00', 'green-gold-plated-party-pendant-set', NULL, NULL, NULL, NULL),
(397, 'White Gold-Plated Cubic Zircon Studded Jewellery Set', 'products/immitire-5.jpg', '1150.00', 'white-gold-plated-cubic-zircon-studded-jewellery-s', NULL, NULL, NULL, NULL),
(398, 'Rose Gold-Plated White AD-Studded Jewellery Set', 'products/immitire-6.jpg', '882.00', 'rose-gold-plated-white-ad-studded-jewellery-set', NULL, NULL, NULL, NULL),
(399, 'Gold-Plated Austrian Diamonds Stone-Studded Meenakari Jewellery Set', 'products/immitire-7.jpg', '667.00', 'gold-plated-austrian-diamonds-stone-studded-meenak', NULL, NULL, NULL, NULL),
(400, 'Artificial Earrings', 'products/immitire-8.webp', '203.00', 'artificial-earrings', NULL, NULL, NULL, NULL),
(401, '18K Rose Gold Plated Cubic Zirconia Studded Black Beaded Mangalsutra', 'products/mangalsutra-1.jpg', '462.00', '18k-rose-gold-plated-cubic-zirconia-studded-black', NULL, NULL, NULL, NULL),
(402, 'Gold-Plated Mangalsutra Jewellery Set', 'products/mangalsutra-2.jpg', '499.00', 'gold-plated-mangalsutra-jewellery-set', NULL, NULL, NULL, NULL),
(403, 'Gold-Plated Crystals Mangalsutra', 'products/mangalsutra-3.jpg', '399.00', 'gold-plated-crystals-mangalsutra', NULL, NULL, NULL, NULL),
(404, 'Gold-Plated Artificial Stones and Beads Mangalsutra', 'products/mangalsutra-4.jpg', '474.00', 'gold-plated-artificial-stones-and-beads-mangalsutr', NULL, NULL, NULL, NULL),
(405, 'Clara Silver-Toned Rope Mangalsutra Set', 'products/mangalsutra-5.jpg', '345.00', 'clara-silver-toned-rope-mangalsutra-set', NULL, NULL, NULL, NULL),
(406, 'MINUTIAE Silver-Plated Artificial Stones and Beads Mangalsutra', 'products/mangalsutra-6.jpg', '439.00', 'minutiae-silver-plated-artificial-stones-and-beads', NULL, NULL, NULL, NULL),
(407, 'Clara Silver Twist Mangalsutra Set', 'products/mangalsutra-7.jpg', '567.00', 'clara-silver-twist-mangalsutra-set', NULL, NULL, NULL, NULL),
(408, 'Gold-Plated Pink Stone Mangalsutra with Earrings for Women', 'products/mangalsutra-8.jpg', '353.00', 'gold-plated-pink-stone-mangalsutra-with-earrings-f', NULL, NULL, NULL, NULL),
(409, 'Everstylish The Valley of Flowers Enamelled Golden Bracelet', 'products/handcrafted-6.webp', '248.00', 'everstylish-the-valley-of-flowers-enamelled-golden', NULL, NULL, NULL, NULL),
(410, 'Colorful Mirror Work Beaded Choker Necklace For Women', 'products/handcrafed-1.webp', '700.00', 'colorful-mirror-work-beaded-choker-necklace-for-wo', NULL, NULL, NULL, NULL),
(411, 'Women Silver-Plated Blue & White Beaded Jewellery Set', 'products/handcrafted-2.webp', '367.00', 'women-silver-plated-blue-white-beaded-jewellery-se', NULL, NULL, NULL, NULL),
(412, 'Gold-Plated Pearl Beaded Necklace', 'products/handcrafted-3.webp', '856.00', 'gold-plated-pearl-beaded-necklace', NULL, NULL, NULL, NULL),
(413, 'Gold-Plated Stone-Studded Necklace', 'products/handcrafted-4.webp', '1012.00', 'gold-plated-stone-studded-necklace', NULL, NULL, NULL, NULL),
(414, 'Beaded Flower Choker Jewellery Set', 'products/handcrafted-5.webp', '233.00', 'beaded-flower-choker-jewellery-set', NULL, NULL, NULL, NULL),
(415, 'Handmade Earrings', 'products/handcrafted-7.jpg', '290.00', 'handmade-earrings', NULL, NULL, NULL, NULL),
(416, 'HANDMADE EARRINGS PISTA GREEN ADVITA', 'products/handcrafted-8.webp', '290.00', 'handmade-earrings-pista-green-advita', NULL, NULL, NULL, NULL),
(417, 'Fossil Women Rose Gold-Toned Analogue Chronograph Watch', 'products/rose-1.jpg', '1209.00', 'fossil-women-rose-gold-toned-analogue-chronograph', NULL, NULL, NULL, NULL),
(418, 'Titan Women Pink Analog Watch', 'products/rose-2.jpg', '1309.00', 'titan-women-pink-analog-watch', NULL, NULL, NULL, NULL),
(419, 'Round Titan Watch, For Formal at', 'products/rose-3.jpeg', '4550.00', 'round-titan-watch-for-formal-at', NULL, NULL, NULL, NULL),
(420, 'Women Rose Gold Watche', 'products/rose-4.jpg', '2390.00', 'women-rose-gold-watche', NULL, NULL, NULL, NULL),
(421, 'Watches & Smart Watches for women', 'products/rose-5.webp', '1899.00', 'watches-smart-watches-for-women', NULL, NULL, NULL, NULL),
(422, 'Women\'s Stylish Watch', 'products/rose-6.jpeg', '2349.00', 'womens-stylish-watch', NULL, NULL, NULL, NULL),
(423, 'Giordano Watches & Smart Watches for Women', 'products/rose-7.webp', '1898.00', 'giordano-watches-smart-watches-for-women', NULL, NULL, NULL, NULL),
(424, 'Joker&Witch fashionable & trendy watche', 'products/rose-8.jpeg', '1299.00', 'jokerwitch-fashionable-trendy-watche', NULL, NULL, NULL, NULL),
(425, 'Titan Women White Analogue Watch', 'products/white-3.jpeg', '3577.00', 'titan-women-white-analogue-watch', NULL, NULL, NULL, NULL),
(426, 'Fastrack Trendies Women White Analogue watch', 'products/white-1.jpeg', '1894.00', 'fastrack-trendies-women-white-analogue-watch', NULL, NULL, NULL, NULL),
(427, 'Titan Women White & Silver Analogue Watch', 'products/white-2.jpg', '1222.00', 'titan-women-white-silver-analogue-watch', NULL, NULL, NULL, NULL),
(428, 'DressBerry Women Silver Toned Bracelet Style Straps Analogue Watch', 'products/white-4.jpg', '655.00', 'dressberry-women-silver-toned-bracelet-style-strap', NULL, NULL, NULL, NULL),
(429, 'Sonata Women Silver-Toned & Off-White Dial Watch', 'products/white-5.jpeg', '1195.00', 'sonata-women-silver-toned-off-white-dial-watch', NULL, NULL, NULL, NULL),
(430, 'White Ceramic Strap Watch - Buy White Ceramic Strap Watch', 'products/white-6.jpg', '3245.00', 'white-ceramic-strap-watch-buy-white-ceramic-strap', NULL, NULL, NULL, NULL),
(431, 'Joker&Witch New Collection', 'products/white-7.jpg', '799.00', 'jokerwitch-new-collection', NULL, NULL, NULL, NULL),
(432, 'Luxury White Collection', 'products/white-8_sjgBtzC.webp', '2897.00', 'luxury-white-collection', NULL, NULL, NULL, NULL),
(433, 'Girls Tops - Stylish Top for Girls', 'products/top-2.jpg', '250.00', 'girls-tops-stylish-top-for-girls', NULL, NULL, 1, NULL),
(436, 'Girl Cut Girls Tops - Buy Boy Girl Cut Girls Tops', 'products/top-1.jpg', '230.00', 'girl-cut-girls-tops-buy-boy-girl-cut-girls-tops', NULL, NULL, 1, NULL),
(437, 'Short Sleeve Tees Cotton Top', 'products/top-5.jpg', '99.00', 'short-sleeve-tees-cotton-top', NULL, NULL, 1, NULL),
(440, 'Boys\' Spring and Summer Graphic Short Sleeve T-Shirt', 'products/top-8.webp', '99.00', 'boys-spring-and-summer-graphic-short-sleeve-t-shir', NULL, NULL, 1, NULL),
(441, 'Boys Ethnic Kurta', 'products/ethenic-2_xZCyMNJ.jpg', '299.00', 'boys-ethnic-kurta', NULL, NULL, 4, NULL),
(442, 'Baby Traditional Pair', 'products/ethenic-1.jpeg', '370.00', 'baby-traditional-pair', NULL, NULL, 4, NULL),
(443, 'Kids Ethnic Wear Posh', 'products/ethenic-3_qKUgaUK.jpg', '490.00', 'kids-ethnic-wear-posh', NULL, NULL, 4, NULL),
(444, 'Kinder KidsGirls Floral Printed Angrakha Pure Cotton Kurti', 'products/ethenic-4_m80JvUa.jpg', '545.00', 'kinder-kidsgirls-floral-printed-angrakha-pure-cott', NULL, NULL, 4, NULL),
(445, 'Fit & Flare Dress', 'products/dresses-3_6BEVsoN.webp', '455.00', 'fit-flare-dress', NULL, NULL, 7, NULL),
(446, 'Stylish Multi Ice Cream Designer Frock', 'products/dresse-4.webp', '545.00', 'stylish-multi-ice-cream-designer-frock', NULL, NULL, 7, NULL),
(447, 'mininest Full Sleeves Polka Dots Printed Night Sleepwear', 'products/nightwear-1.jpg', '599.00', 'mininest-full-sleeves-polka-dots-printed-night-sle', NULL, NULL, 8, NULL),
(448, 'Unisex Cotton Full Sleeve Kids Nightwear', 'products/nightwear-2.webp', '455.00', 'unisex-cotton-full-sleeve-kids-nightwear', NULL, NULL, 8, NULL),
(449, 'Lilac Cotton Jersey Button Through Short Pyjama', 'products/nightwear-3.jpg', '677.00', 'lilac-cotton-jersey-button-through-short-pyjama', NULL, NULL, 8, NULL),
(450, 'Cartoon childrens pyjama For Kidz', 'products/nightwear-4.jpg', '455.00', 'cartoon-childrens-pyjama-for-kidz', NULL, NULL, 8, NULL),
(452, 'Pearl - Kids Footwear', 'products/sandals-3.webp', '409.00', 'pearl-kids-footwear', NULL, NULL, 9, NULL),
(453, 'Premium Watermelon Jellies Flip-flops - Navy Blue', 'products/sandals-4.webp', '222.00', 'premium-watermelon-jellies-flip-flops-navy-blue', NULL, NULL, 9, NULL),
(454, 'StarAndDaisy Summer Kids Sandals Lightweight and Breathable Open-Toe Shoes for Boys and Girls', 'products/sandals-1_GjHuFhF.jpg', '355.00', 'staranddaisy-summer-kids-sandals-lightweight-and-b', NULL, NULL, 9, NULL),
(455, 'Stylish&Comfy Pink Sandals For Girls', 'products/sandals-2_ZtEGZoe.webp', '245.00', 'stylishcomfy-pink-sandals-for-girls', NULL, NULL, 9, NULL),
(456, 'Boys cheques Shirt', 'products/shirts-1.webp', '209.00', 'boys-cheques-shirt', NULL, NULL, 10, NULL),
(457, 'Linen Boys Shirts', 'products/shirts-2.jpeg', '342.00', 'linen-boys-shirts', NULL, NULL, 10, NULL),
(458, 'Cotton Boys Shirts', 'products/shirts-3.jpg', '178.00', 'cotton-boys-shirts', NULL, NULL, 10, NULL),
(459, 'Printed Kido Shirt', 'products/shirts-4.jpg', '255.00', 'printed-kido-shirt', NULL, NULL, 10, NULL),
(460, 'Onepiece', 'products/partywear-1.jpeg', '559.00', 'onepiece', NULL, NULL, 12, NULL),
(461, 'Party Wear Dress For Girlss', 'products/partywear-2.jpg', '899.00', 'party-wear-dress-for-girlss', NULL, NULL, 12, NULL),
(462, 'Printed Onepiece With Slug', 'products/partywear-3.jpg', '655.00', 'printed-onepiece-with-slug', NULL, NULL, 12, NULL),
(463, 'Black&White Classy Design Party-Wear Dress', 'products/partywear-4.jpg', '367.00', 'blackwhite-classy-design-party-wear-dress', NULL, NULL, 12, NULL),
(464, 'YK Girls V-Neck Basic Jumpsuit', 'products/jumpsuit-1.jpeg', '899.00', 'yk-girls-v-neck-basic-jumpsuit', NULL, NULL, 13, NULL),
(465, 'Kids Jumpsuit - Buy Jumpsuits for Kids', 'products/jumpsuit-2.jpg', '999.00', 'kids-jumpsuit-buy-jumpsuits-for-kids', NULL, NULL, 13, NULL),
(466, 'Critter Kids Girls Printed Cotton Basic Jumpsuit', 'products/jumpsuit-3.jpg', '788.00', 'critter-kids-girls-printed-cotton-basic-jumpsuit', NULL, NULL, 13, NULL),
(467, 'Blue Dresses For Kids Jumpsuit', 'products/jumpsuit-4.jpg', '897.00', 'blue-dresses-for-kids-jumpsuit', NULL, NULL, 13, NULL),
(468, 'Kids Shorts - Get Stylish Shorts', 'products/shorts-1.jpg', '539.00', 'kids-shorts-get-stylish-shorts', NULL, NULL, 15, NULL),
(469, 'Shorts - Get Stylish Shorts', 'products/short-2.jpg', '346.00', 'shorts-get-stylish-shorts', NULL, NULL, 15, NULL),
(470, 'Tweens Lite Wite Minimiser Support Medium Padded Cotton', 'products/shorts-3.jpg', '499.00', 'tweens-lite-wite-minimiser-support-medium-padded-c', NULL, NULL, 15, NULL),
(471, 'Boys Side Striped Rapid Dry Sports Shorts', 'products/shorts-4.jpg', '509.00', 'boys-side-striped-rapid-dry-sports-shorts', NULL, NULL, 15, NULL),
(472, 'Cute Bootties For The Cuties', 'products/socks-2.jpg', '675.00', 'cute-bootties-for-the-cuties', NULL, NULL, 16, NULL),
(473, 'Heart Print Socks', 'products/socks-1.jpg', '390.00', 'heart-print-socks', NULL, NULL, 16, NULL),
(474, 'Marvel Print Boys Socks', 'products/socks-3.jpg', '299.00', 'marvel-print-boys-socks', NULL, NULL, 16, NULL),
(475, 'Unisex-Different Print Socks', 'products/socks-4.jpg', '349.00', 'unisex-different-print-socks', NULL, NULL, 16, NULL),
(476, 'JENNA Kids-Boys Captain America Printed Cotton Baseball Cap', 'products/cap-1.jpeg', '431.00', 'jenna-kids-boys-captain-america-printed-cotton-bas', NULL, NULL, 17, NULL),
(477, 'Unisex Kids Maroon & White Embroidered Cotton Beanie', 'products/cap-2.jpg', '524.00', 'unisex-kids-maroon-white-embroidered-cotton-beanie', NULL, NULL, 17, NULL),
(478, 'Unisex Kids Embroidered Baseball Cap', 'products/cap-3.jpg', '599.00', 'unisex-kids-embroidered-baseball-cap', NULL, NULL, 17, NULL),
(479, 'Kids Performance Youth Baseball Cap', 'products/cap-4.jpg', '209.00', 'kids-performance-youth-baseball-cap', NULL, NULL, 17, NULL),
(480, 'Parachute Advansed Baby Care Gift Set - Baby Care Kit for Unisex Kids', 'products/babycare-1.jpg', '1200.00', 'parachute-advansed-baby-care-gift-set-baby-care-ki', NULL, NULL, 18, NULL),
(481, 'Johnson\'s Baby Care Collection with Organic Cotton Bib & Baby Comb', 'products/babycare-2.jpg', '300.00', 'johnsons-baby-care-collection-with-organic-cotton', NULL, NULL, 18, NULL),
(482, 'Himalaya Happy Baby Gift Pack', 'products/babycare-3.jpg', '214.00', 'himalaya-happy-baby-gift-pack', NULL, NULL, 18, NULL),
(483, 'Moms Home Kids Set Of 6 Baby Care Products', 'products/babycare-4.jpg', '799.00', 'moms-home-kids-set-of-6-baby-care-products', NULL, NULL, 18, NULL),
(484, 'Lipsticks Nude Shade For Every Occasion', 'products/makeup-1_Kg6VCLT.webp', '390.00', 'lip-stik', NULL, NULL, NULL, 9),
(485, 'Lakyou Beauty Ultra HD Invisible Cover Foundation', 'products/makeup-2.webp', '299.00', 'foundation', NULL, NULL, NULL, 9),
(486, 'Compact Powder', 'products/makeup-4.webp', '159.00', 'compact-powder', NULL, NULL, NULL, 9),
(487, 'Lakme Mascara For High Vloume', 'products/makeup-3.webp', '406.00', 'lakme-mascara-for-high-vloume', NULL, NULL, NULL, 9),
(488, 'Kerastase Elixir Ultime Hair Oil', 'products/hair2.jpg', '3183.00', 'kerastase-elixir-ultime-hair-oil', NULL, NULL, NULL, 10),
(489, 'wella combo for smooth hair', 'products/hair1.jpg', '2390.00', 'wella-combo-for-smooth-hair', NULL, NULL, NULL, 10),
(490, 'TRESemme Frizzy Keratin Mask', 'products/hair3_LyHGXS6.webp', '330.00', 'treSemme-frizzy-keratin-mask', NULL, NULL, NULL, 10),
(491, 'Minimalist Maleic Bond Repair Hair Combo', 'products/hair4_KNz1lRc.webp', '1617.00', 'minimalist-maleic-bond-repair-hair-combo', NULL, NULL, NULL, 10),
(492, 'Cetaphil face wash Gentle Skin Cleanser - 250 ml', 'products/skin1.webp', '525.00', 'cetaphil-face-wash-gentle-skin-cleanser-250-ml', NULL, NULL, NULL, 11),
(493, 'Minimalist  Face Moisturizer For Oily acne prone Skin', 'products/skin2.webp', '314.00', 'minimalist-face-moisturizer-for-oily-acne-prone-sk', NULL, NULL, NULL, 11),
(494, 'RENEE Lumi Glow Highlighting Sunscreen SPF 50', 'products/skin3.webp', '399.00', 'renee-lumi-glow-highlighting-sunscreen-spf-50', NULL, NULL, NULL, 11),
(495, 'Plum Vitamin C Face Serum', 'products/skin4.webp', '986.00', 'plum-vitamin-c-face-serum', NULL, NULL, NULL, 11),
(496, 'Chopard Happy Felicia Roses Eau De Parfum (40ml)', 'products/fragrance2.jpeg', '4920.00', 'chopard-happy-felicia-roses-eau-de-parfum-40ml', NULL, NULL, NULL, 12),
(497, 'Carolina Herrera Very Good Girl Elixir Eau de Parfum (50 ml)', 'products/fragrance1.webp', '9400.00', 'carolina-herrera-very-good-girl-elixir-eau-de-parf', NULL, NULL, NULL, 12),
(498, 'Kayali Lovefest Burning Cherry 48 Eau De Parfum (100ml)', 'products/fragrance3.jpeg', '11300.00', 'kayali-lovefest-burning-cherry-48-eau-de-parfum-10', NULL, NULL, NULL, 12),
(499, 'RENEE Bloom Eau De Parfum (50ml)', 'products/frangrance4.jpg', '479.00', 'renee-bloom-eau-de-parfum-50ml', NULL, NULL, NULL, 12),
(500, 'Nivea Men Deep Impact Freshness 72H Deodorant Roll On', 'products/men1.jpg', '199.00', 'nivea-men-deep-impact-freshness-72h-deodorant-roll', NULL, NULL, NULL, 13),
(501, 'Dove Relaxing Shea Butter Body Wash (1000ml)', 'products/men2.jpeg', '594.00', 'dove-relaxing-shea-butter-body-wash-1000ml', NULL, NULL, NULL, 13),
(502, 'Philips Bt3302/15 Cordless Beard Trimmer', 'products/men3.jpeg', '1373.00', 'philips-bt330215-cordless-beard-trimmer', NULL, NULL, NULL, 13),
(503, 'Beardo Daily Nourish Beard Softener (50ml)', 'products/men4.webp', '297.00', 'beardo-daily-nourish-beard-softener-50ml', NULL, NULL, NULL, 13),
(504, 'Be Bodywise 1% Salicylic Acid Body Wash For Body Acne (375ml)', 'products/bath1.jpg', '429.00', 'be-bodywise-1-salicylic-acid-body-wash-for-body-ac', NULL, NULL, NULL, 14),
(505, 'mCaffeine Blueberry Breeze Body Scrub (175 g)', 'products/bath2.webp', '359.00', 'mcaffeine-blueberry-breeze-body-scrub-175-g', NULL, NULL, NULL, 14),
(506, 'Moroccanoil Dry Body Oil (50ml)', 'products/bath3.jpeg', '1590.00', 'moroccanoil-dry-body-oil-50ml', NULL, NULL, NULL, 14),
(507, 'Nivea Body Milk Nourishing Body Lotion (600ml)', 'products/bath4.jpg', '547.00', 'nivea-body-milk-nourishing-body-lotion-600ml', NULL, NULL, NULL, 14),
(508, 'Purna Gummies Glutathione Gummies For Skin Whitening & Immune Booster - Cola Flavor (30 Pcs)', 'products/wellness.webp', '94.00', 'purna', NULL, NULL, NULL, 15),
(509, 'Oziva ACV Moringa Weight Loss 3-In-1 Fat Oxidation Formula, Green Apple (15 Tablets)', 'products/wellness2.jpg', '351.00', 'oziva-acv-moringa-weight-loss-3-in-1-fat-oxidation', NULL, NULL, NULL, 15),
(510, 'Oziva Glutathione Builder Capsule (60Pcs)', 'products/wellness3.webp', '759.00', 'oziva-glutathione-builder-capsule-60pcs', NULL, NULL, NULL, 15),
(511, 'Wellbeing Nutrition Multi + Omega for Her Multivitamin Capsule', 'products/wellness4.jpeg', '1424.00', 'wellbeing-nutrition-multi-omega-for-her-multivitam', NULL, NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_sportswear`
--

CREATE TABLE `mysite_sportswear` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_sportswear`
--

INSERT INTO `mysite_sportswear` (`id`, `name`, `slug`, `description`, `image`) VALUES
(1, 'Skechers Go Walk Range', 'skechers', 'Sunset walks encouraged', 'sportswear/1st_image.jpg'),
(2, 'Under Armoured Style', 'armoured', 'When practical pairs with pretty!', 'sportswear/2nd_image.jpg'),
(3, 'Joggers By Under Armoured', 'joggers', 'A perfect pack for those grocery trips', 'sportswear/3rd_image.jpg'),
(4, 'Athlaisure Apparel', 'athlaisure', 'For all your #fitinspiration posts', 'sportswear/4rd_image.jpg'),
(5, 'Running Shoes', 'shoes', 'Sprint in style', 'sportswear/5th_image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_sportswear_products`
--

CREATE TABLE `mysite_sportswear_products` (
  `id` bigint(20) NOT NULL,
  `sportswear_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_sportswear_products`
--

INSERT INTO `mysite_sportswear_products` (`id`, `sportswear_id`, `product_id`) VALUES
(1, 1, 353),
(2, 1, 354),
(3, 1, 355),
(4, 1, 356),
(5, 1, 357),
(6, 1, 358),
(7, 1, 359),
(8, 1, 360),
(9, 2, 361),
(10, 2, 362),
(11, 2, 363),
(12, 2, 364),
(13, 2, 365),
(14, 2, 366),
(15, 2, 367),
(16, 2, 368),
(17, 3, 369),
(18, 3, 370),
(19, 3, 371),
(20, 3, 372),
(21, 3, 373),
(22, 3, 374),
(23, 3, 375),
(24, 3, 376),
(33, 4, 385),
(34, 4, 386),
(35, 4, 387),
(36, 4, 388),
(37, 4, 389),
(38, 4, 390),
(39, 4, 391),
(40, 4, 392),
(26, 5, 377),
(27, 5, 378),
(28, 5, 379),
(29, 5, 380),
(30, 5, 381),
(31, 5, 382),
(32, 5, 383),
(25, 5, 384);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_trendingitem`
--

CREATE TABLE `mysite_trendingitem` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_trendingitem`
--

INSERT INTO `mysite_trendingitem` (`id`, `title`, `subtitle`, `image`, `category_id`, `slug`) VALUES
(1, 'All White Indian Wear', 'For an always cool outlook', 'men/trending/white_kurta.jpg', NULL, 'Allwhiteindianwear'),
(2, 'Ethnic Casuals', 'Indian swag done the route to comfort', 'men/trending/ethenic_casual.jpeg', NULL, 'Ethniccasuals'),
(3, 'Printed Kurta Sets', 'Perfect fit your festive look', 'men/trending/printed_kurta.jpeg', NULL, 'printedkurtasets'),
(4, 'Everyday kurtas', 'Wear and vibe with comfort', 'men/trending/everyday_kurta.jpeg', NULL, 'everydaykurtas'),
(5, 'Handpicked Trendy Styles', 'Unlock the language of style', 'men/trending/handpicked_style.jpeg', NULL, 'handpickedtrendystyle');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_trendingitem_products`
--

CREATE TABLE `mysite_trendingitem_products` (
  `id` bigint(20) NOT NULL,
  `trendingitem_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_trendingitem_products`
--

INSERT INTO `mysite_trendingitem_products` (`id`, `trendingitem_id`, `product_id`) VALUES
(7, 1, 105),
(8, 1, 106),
(9, 1, 107),
(11, 1, 109),
(12, 1, 110),
(13, 1, 111),
(10, 1, 112),
(14, 1, 113),
(15, 2, 114),
(16, 2, 115),
(17, 2, 116),
(18, 2, 117),
(19, 2, 118),
(20, 2, 119),
(21, 2, 120),
(22, 2, 121),
(23, 3, 122),
(24, 3, 123),
(25, 3, 124),
(26, 3, 125),
(29, 3, 126),
(30, 3, 127),
(27, 3, 128),
(28, 3, 129),
(31, 4, 130),
(32, 4, 131),
(33, 4, 132),
(34, 4, 133),
(35, 4, 134),
(36, 4, 135),
(37, 4, 136),
(38, 4, 137),
(39, 5, 138),
(41, 5, 140),
(42, 5, 141),
(43, 5, 142),
(44, 5, 143),
(45, 5, 144),
(46, 5, 145),
(47, 5, 146);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_westernwear`
--

CREATE TABLE `mysite_westernwear` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_westernwear`
--

INSERT INTO `mysite_westernwear` (`id`, `name`, `slug`, `description`, `image`) VALUES
(1, 'Moss & Melange', 'moss', 'the colours of this season', 'westernwear/1st_image.png'),
(2, 'Mod blocking', 'mod', 'your sofa-to-fridge look', 'westernwear/2nd_image.jpg'),
(3, 'Red Tops & Tees', 'redtop', 'the unofficial symbol of all things', 'westernwear/3rd_image.jpg'),
(4, 'Smarter Daily Wear Tees', 'dailywear', 'Something new for everyday', 'westernwear/4th_image.jpg'),
(5, 'Eco-Friendly Style', 'eco', 'When ethics meet asthetics', 'westernwear/5th_image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_westernwear_products`
--

CREATE TABLE `mysite_westernwear_products` (
  `id` bigint(20) NOT NULL,
  `westernwear_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_westernwear_products`
--

INSERT INTO `mysite_westernwear_products` (`id`, `westernwear_id`, `product_id`) VALUES
(2, 1, 229),
(3, 1, 230),
(5, 1, 233),
(6, 1, 234),
(7, 1, 235),
(8, 1, 236),
(9, 1, 237),
(10, 1, 238),
(4, 2, 231),
(11, 2, 239),
(12, 2, 240),
(13, 2, 241),
(14, 2, 242),
(15, 2, 243),
(16, 2, 244),
(17, 2, 245),
(18, 3, 246),
(19, 3, 247),
(20, 3, 248),
(21, 3, 249),
(22, 3, 250),
(23, 3, 251),
(24, 3, 252),
(25, 3, 253),
(30, 4, 254),
(31, 4, 255),
(26, 4, 256),
(27, 4, 257),
(28, 4, 258),
(29, 4, 259),
(32, 4, 260),
(33, 4, 261),
(34, 5, 262),
(35, 5, 263),
(36, 5, 264),
(37, 5, 265),
(38, 5, 266),
(39, 5, 267),
(40, 5, 268),
(41, 5, 269);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_wishlist`
--

CREATE TABLE `mysite_wishlist` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_wishlist`
--

INSERT INTO `mysite_wishlist` (`id`, `user_id`) VALUES
(1, 1),
(4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_wishlist_products`
--

CREATE TABLE `mysite_wishlist_products` (
  `id` bigint(20) NOT NULL,
  `wishlist_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_wishlist_products`
--

INSERT INTO `mysite_wishlist_products` (`id`, `wishlist_id`, `product_id`) VALUES
(19, 1, 485);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_womenaccessories`
--

CREATE TABLE `mysite_womenaccessories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_womenaccessories`
--

INSERT INTO `mysite_womenaccessories` (`id`, `name`, `slug`, `description`, `image`) VALUES
(1, 'Best Of Imittire', 'immittire', 'Grand jewellery that\'s sure to turn heads', 'accessories/1st_image.jpg'),
(2, 'The Magalsutra Collection', 'magalsutra', 'A stylish symbol of a lifelong bond', 'accessories/2nd_image.webp'),
(3, 'Handcrafted Jewellery', 'handcrafted', 'A personal touch to every special piece', 'accessories/3rd_image.jpg'),
(4, 'Rose Gold Watches', 'rosegold', 'A classic that\'s always in style', 'accessories/4th_image.jpg'),
(5, 'White Watches', 'white', 'A classic every sense of the word', 'accessories/5th_image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_womenaccessories_products`
--

CREATE TABLE `mysite_womenaccessories_products` (
  `id` bigint(20) NOT NULL,
  `womenaccessories_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_womenaccessories_products`
--

INSERT INTO `mysite_womenaccessories_products` (`id`, `womenaccessories_id`, `product_id`) VALUES
(9, 1, 393),
(10, 1, 394),
(11, 1, 395),
(12, 1, 396),
(13, 1, 397),
(14, 1, 398),
(15, 1, 399),
(16, 1, 400),
(1, 2, 401),
(2, 2, 402),
(3, 2, 403),
(4, 2, 404),
(5, 2, 405),
(6, 2, 406),
(7, 2, 407),
(8, 2, 408),
(18, 3, 409),
(19, 3, 410),
(20, 3, 411),
(21, 3, 412),
(22, 3, 413),
(23, 3, 414),
(24, 3, 415),
(17, 3, 416),
(25, 4, 417),
(26, 4, 418),
(27, 4, 419),
(28, 4, 420),
(29, 4, 421),
(30, 4, 422),
(31, 4, 423),
(32, 4, 424),
(33, 5, 425),
(34, 5, 426),
(35, 5, 427),
(36, 5, 428),
(37, 5, 429),
(38, 5, 430),
(39, 5, 431),
(40, 5, 432);

-- --------------------------------------------------------

--
-- Table structure for table `mysite_womencategory`
--

CREATE TABLE `mysite_womencategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_womencategory`
--

INSERT INTO `mysite_womencategory` (`id`, `name`, `slug`, `image`) VALUES
(1, 'Kurtas & Kurta sets', 'kurtas', 'categories/kurta.jpg'),
(2, 'sarees', 'saree', 'categories/saree.jpg'),
(3, 'dresses', 'dress', 'categories/dress.jpg'),
(4, 'Flats & Heels', 'heels', 'categories/heels.webp'),
(5, 'Handbags', 'bags', 'categories/handbags.jpg'),
(6, 'Shorts', 'shorts', 'categories/shorts.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_womenfootwear`
--

CREATE TABLE `mysite_womenfootwear` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_womenfootwear`
--

INSERT INTO `mysite_womenfootwear` (`id`, `name`, `slug`, `description`, `image`) VALUES
(1, 'Printed Sneakers For Women', 'printedsneakers', 'There\'s no \'sneak\'ing past these!', 'footwear/1st_image.jpg'),
(2, 'Everyday Classics', 'classic', 'Bae-sic styles for elevated everydays', 'footwear/2nd_image.jpg'),
(3, 'Colorblocked Sneakers', 'sneakers', 'Block out the monotones with these', 'footwear/3rd_image.webp'),
(4, 'Women\'s Footwear By Rocia', 'rocia', 'A litte casual, a little glam', 'footwear/4rth_image.webp'),
(5, 'Comfort Footwear', 'comfort', 'Easy to wear & pull off', 'footwear/5th_img.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mysite_womenfootwear_products`
--

CREATE TABLE `mysite_womenfootwear_products` (
  `id` bigint(20) NOT NULL,
  `womenfootwear_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysite_womenfootwear_products`
--

INSERT INTO `mysite_womenfootwear_products` (`id`, `womenfootwear_id`, `product_id`) VALUES
(1, 1, 270),
(2, 1, 271),
(3, 1, 272),
(4, 1, 273),
(5, 1, 274),
(6, 1, 275),
(7, 1, 276),
(8, 1, 277),
(9, 2, 278),
(10, 2, 279),
(11, 2, 280),
(12, 2, 281),
(13, 2, 282),
(14, 2, 283),
(15, 2, 284),
(16, 2, 285),
(22, 3, 285),
(23, 3, 286),
(24, 3, 287),
(17, 3, 288),
(18, 3, 289),
(19, 3, 290),
(20, 3, 291),
(21, 3, 292),
(26, 4, 293),
(27, 4, 294),
(28, 4, 295),
(25, 4, 296),
(29, 4, 297),
(30, 4, 298),
(31, 4, 299),
(32, 4, 300),
(33, 5, 301),
(34, 5, 302),
(35, 5, 303),
(36, 5, 304),
(37, 5, 305),
(38, 5, 306),
(39, 5, 307),
(40, 5, 308);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `mysite_accessoriesitem`
--
ALTER TABLE `mysite_accessoriesitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_accessoriesitem_products`
--
ALTER TABLE `mysite_accessoriesitem_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mysite_accessoriesitem_p_accessoriesitem_id_produ_4f68655e_uniq` (`accessoriesitem_id`,`product_id`),
  ADD KEY `mysite_accessoriesit_product_id_afd83d67_fk_mysite_pr` (`product_id`);

--
-- Indexes for table `mysite_bag`
--
ALTER TABLE `mysite_bag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mysite_bag_user_id_942f445c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `mysite_bagitem`
--
ALTER TABLE `mysite_bagitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mysite_bagitem_bag_id_6241412f_fk_mysite_bag_id` (`bag_id`),
  ADD KEY `mysite_bagitem_product_id_7b792335_fk_mysite_product_id` (`product_id`);

--
-- Indexes for table `mysite_beautyitem`
--
ALTER TABLE `mysite_beautyitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_billingaddress`
--
ALTER TABLE `mysite_billingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mysite_billingaddress_user_id_fb031372_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `mysite_footwearitem`
--
ALTER TABLE `mysite_footwearitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_footwearitem_products`
--
ALTER TABLE `mysite_footwearitem_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mysite_footwearitem_prod_footwearitem_id_product__a465fa76_uniq` (`footwearitem_id`,`product_id`),
  ADD KEY `mysite_footwearitem__product_id_f9721cf2_fk_mysite_pr` (`product_id`);

--
-- Indexes for table `mysite_indianwear`
--
ALTER TABLE `mysite_indianwear`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_indianwear_products`
--
ALTER TABLE `mysite_indianwear_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mysite_indianwear_produc_indianwear_id_product_id_1ba101c5_uniq` (`indianwear_id`,`product_id`),
  ADD KEY `mysite_indianwear_pr_product_id_da2a6648_fk_mysite_pr` (`product_id`);

--
-- Indexes for table `mysite_kidzcategory`
--
ALTER TABLE `mysite_kidzcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_mencategory`
--
ALTER TABLE `mysite_mencategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_order`
--
ALTER TABLE `mysite_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mysite_order_billing_address_id_8a4bdcf6_fk_mysite_bi` (`billing_address_id`),
  ADD KEY `mysite_order_user_id_4985db97_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `mysite_orderitem`
--
ALTER TABLE `mysite_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mysite_orderitem_order_id_b4e3a6e1_fk_mysite_order_id` (`order_id`),
  ADD KEY `mysite_orderitem_product_id_c495a294_fk_mysite_product_id` (`product_id`);

--
-- Indexes for table `mysite_product`
--
ALTER TABLE `mysite_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `mysite_product_men_category_id_1c6e9ea7_fk_mysite_mencategory_id` (`men_category_id`),
  ADD KEY `mysite_product_women_category_id_4626f17f_fk_mysite_wo` (`women_category_id`),
  ADD KEY `mysite_product_kidz_category_id_c5f6e058_fk_mysite_ki` (`kidz_category_id`),
  ADD KEY `mysite_product_BeautyItem_id_2bc48855_fk_mysite_beautyitem_id` (`BeautyItem_id`);

--
-- Indexes for table `mysite_sportswear`
--
ALTER TABLE `mysite_sportswear`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_sportswear_products`
--
ALTER TABLE `mysite_sportswear_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mysite_sportswear_produc_sportswear_id_product_id_a8a46040_uniq` (`sportswear_id`,`product_id`),
  ADD KEY `mysite_sportswear_pr_product_id_d1ab8aeb_fk_mysite_pr` (`product_id`);

--
-- Indexes for table `mysite_trendingitem`
--
ALTER TABLE `mysite_trendingitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `mysite_trendingitem_category_id_3939eec6_fk_mysite_me` (`category_id`);

--
-- Indexes for table `mysite_trendingitem_products`
--
ALTER TABLE `mysite_trendingitem_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mysite_trendingitem_prod_trendingitem_id_product__4e104c6d_uniq` (`trendingitem_id`,`product_id`),
  ADD KEY `mysite_trendingitem__product_id_c5190839_fk_mysite_pr` (`product_id`);

--
-- Indexes for table `mysite_westernwear`
--
ALTER TABLE `mysite_westernwear`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_westernwear_products`
--
ALTER TABLE `mysite_westernwear_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mysite_westernwear_produ_westernwear_id_product_i_a8274b86_uniq` (`westernwear_id`,`product_id`),
  ADD KEY `mysite_westernwear_p_product_id_e01ca9c0_fk_mysite_pr` (`product_id`);

--
-- Indexes for table `mysite_wishlist`
--
ALTER TABLE `mysite_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mysite_wishlist_user_id_bbd2eaa1_uniq` (`user_id`);

--
-- Indexes for table `mysite_wishlist_products`
--
ALTER TABLE `mysite_wishlist_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mysite_wishlist_products_wishlist_id_product_id_eb3b4330_uniq` (`wishlist_id`,`product_id`),
  ADD KEY `mysite_wishlist_prod_product_id_98d7d395_fk_mysite_pr` (`product_id`);

--
-- Indexes for table `mysite_womenaccessories`
--
ALTER TABLE `mysite_womenaccessories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_womenaccessories_products`
--
ALTER TABLE `mysite_womenaccessories_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mysite_womenaccessories__womenaccessories_id_prod_cc19201b_uniq` (`womenaccessories_id`,`product_id`),
  ADD KEY `mysite_womenaccessor_product_id_77cd5cc9_fk_mysite_pr` (`product_id`);

--
-- Indexes for table `mysite_womencategory`
--
ALTER TABLE `mysite_womencategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_womenfootwear`
--
ALTER TABLE `mysite_womenfootwear`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mysite_womenfootwear_products`
--
ALTER TABLE `mysite_womenfootwear_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mysite_womenfootwear_pro_womenfootwear_id_product_12147faf_uniq` (`womenfootwear_id`,`product_id`),
  ADD KEY `mysite_womenfootwear_product_id_eb9a9d80_fk_mysite_pr` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=795;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `mysite_accessoriesitem`
--
ALTER TABLE `mysite_accessoriesitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mysite_accessoriesitem_products`
--
ALTER TABLE `mysite_accessoriesitem_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `mysite_bag`
--
ALTER TABLE `mysite_bag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mysite_bagitem`
--
ALTER TABLE `mysite_bagitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mysite_beautyitem`
--
ALTER TABLE `mysite_beautyitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mysite_billingaddress`
--
ALTER TABLE `mysite_billingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mysite_footwearitem`
--
ALTER TABLE `mysite_footwearitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mysite_footwearitem_products`
--
ALTER TABLE `mysite_footwearitem_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `mysite_indianwear`
--
ALTER TABLE `mysite_indianwear`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mysite_indianwear_products`
--
ALTER TABLE `mysite_indianwear_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `mysite_kidzcategory`
--
ALTER TABLE `mysite_kidzcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mysite_mencategory`
--
ALTER TABLE `mysite_mencategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mysite_order`
--
ALTER TABLE `mysite_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mysite_orderitem`
--
ALTER TABLE `mysite_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mysite_product`
--
ALTER TABLE `mysite_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `mysite_sportswear`
--
ALTER TABLE `mysite_sportswear`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mysite_sportswear_products`
--
ALTER TABLE `mysite_sportswear_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `mysite_trendingitem`
--
ALTER TABLE `mysite_trendingitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mysite_trendingitem_products`
--
ALTER TABLE `mysite_trendingitem_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `mysite_westernwear`
--
ALTER TABLE `mysite_westernwear`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mysite_westernwear_products`
--
ALTER TABLE `mysite_westernwear_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `mysite_wishlist`
--
ALTER TABLE `mysite_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mysite_wishlist_products`
--
ALTER TABLE `mysite_wishlist_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `mysite_womenaccessories`
--
ALTER TABLE `mysite_womenaccessories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mysite_womenaccessories_products`
--
ALTER TABLE `mysite_womenaccessories_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `mysite_womencategory`
--
ALTER TABLE `mysite_womencategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mysite_womenfootwear`
--
ALTER TABLE `mysite_womenfootwear`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mysite_womenfootwear_products`
--
ALTER TABLE `mysite_womenfootwear_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mysite_accessoriesitem_products`
--
ALTER TABLE `mysite_accessoriesitem_products`
  ADD CONSTRAINT `mysite_accessoriesit_accessoriesitem_id_6580e0a6_fk_mysite_ac` FOREIGN KEY (`accessoriesitem_id`) REFERENCES `mysite_accessoriesitem` (`id`),
  ADD CONSTRAINT `mysite_accessoriesit_product_id_afd83d67_fk_mysite_pr` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`);

--
-- Constraints for table `mysite_bag`
--
ALTER TABLE `mysite_bag`
  ADD CONSTRAINT `mysite_bag_user_id_942f445c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mysite_bagitem`
--
ALTER TABLE `mysite_bagitem`
  ADD CONSTRAINT `mysite_bagitem_bag_id_6241412f_fk_mysite_bag_id` FOREIGN KEY (`bag_id`) REFERENCES `mysite_bag` (`id`),
  ADD CONSTRAINT `mysite_bagitem_product_id_7b792335_fk_mysite_product_id` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`);

--
-- Constraints for table `mysite_billingaddress`
--
ALTER TABLE `mysite_billingaddress`
  ADD CONSTRAINT `mysite_billingaddress_user_id_fb031372_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mysite_footwearitem_products`
--
ALTER TABLE `mysite_footwearitem_products`
  ADD CONSTRAINT `mysite_footwearitem__footwearitem_id_9651cde5_fk_mysite_fo` FOREIGN KEY (`footwearitem_id`) REFERENCES `mysite_footwearitem` (`id`),
  ADD CONSTRAINT `mysite_footwearitem__product_id_f9721cf2_fk_mysite_pr` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`);

--
-- Constraints for table `mysite_indianwear_products`
--
ALTER TABLE `mysite_indianwear_products`
  ADD CONSTRAINT `mysite_indianwear_pr_indianwear_id_d9972b8d_fk_mysite_in` FOREIGN KEY (`indianwear_id`) REFERENCES `mysite_indianwear` (`id`),
  ADD CONSTRAINT `mysite_indianwear_pr_product_id_da2a6648_fk_mysite_pr` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`);

--
-- Constraints for table `mysite_order`
--
ALTER TABLE `mysite_order`
  ADD CONSTRAINT `mysite_order_billing_address_id_8a4bdcf6_fk_mysite_bi` FOREIGN KEY (`billing_address_id`) REFERENCES `mysite_billingaddress` (`id`),
  ADD CONSTRAINT `mysite_order_user_id_4985db97_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mysite_orderitem`
--
ALTER TABLE `mysite_orderitem`
  ADD CONSTRAINT `mysite_orderitem_order_id_b4e3a6e1_fk_mysite_order_id` FOREIGN KEY (`order_id`) REFERENCES `mysite_order` (`id`),
  ADD CONSTRAINT `mysite_orderitem_product_id_c495a294_fk_mysite_product_id` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`);

--
-- Constraints for table `mysite_product`
--
ALTER TABLE `mysite_product`
  ADD CONSTRAINT `mysite_product_BeautyItem_id_2bc48855_fk_mysite_beautyitem_id` FOREIGN KEY (`BeautyItem_id`) REFERENCES `mysite_beautyitem` (`id`),
  ADD CONSTRAINT `mysite_product_kidz_category_id_c5f6e058_fk_mysite_ki` FOREIGN KEY (`kidz_category_id`) REFERENCES `mysite_kidzcategory` (`id`),
  ADD CONSTRAINT `mysite_product_men_category_id_1c6e9ea7_fk_mysite_mencategory_id` FOREIGN KEY (`men_category_id`) REFERENCES `mysite_mencategory` (`id`),
  ADD CONSTRAINT `mysite_product_women_category_id_4626f17f_fk_mysite_wo` FOREIGN KEY (`women_category_id`) REFERENCES `mysite_womencategory` (`id`);

--
-- Constraints for table `mysite_sportswear_products`
--
ALTER TABLE `mysite_sportswear_products`
  ADD CONSTRAINT `mysite_sportswear_pr_product_id_d1ab8aeb_fk_mysite_pr` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`),
  ADD CONSTRAINT `mysite_sportswear_pr_sportswear_id_4ad56eca_fk_mysite_sp` FOREIGN KEY (`sportswear_id`) REFERENCES `mysite_sportswear` (`id`);

--
-- Constraints for table `mysite_trendingitem`
--
ALTER TABLE `mysite_trendingitem`
  ADD CONSTRAINT `mysite_trendingitem_category_id_3939eec6_fk_mysite_me` FOREIGN KEY (`category_id`) REFERENCES `mysite_mencategory` (`id`);

--
-- Constraints for table `mysite_trendingitem_products`
--
ALTER TABLE `mysite_trendingitem_products`
  ADD CONSTRAINT `mysite_trendingitem__product_id_c5190839_fk_mysite_pr` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`),
  ADD CONSTRAINT `mysite_trendingitem__trendingitem_id_48ca52b5_fk_mysite_tr` FOREIGN KEY (`trendingitem_id`) REFERENCES `mysite_trendingitem` (`id`);

--
-- Constraints for table `mysite_westernwear_products`
--
ALTER TABLE `mysite_westernwear_products`
  ADD CONSTRAINT `mysite_westernwear_p_product_id_e01ca9c0_fk_mysite_pr` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`),
  ADD CONSTRAINT `mysite_westernwear_p_westernwear_id_369e01b3_fk_mysite_we` FOREIGN KEY (`westernwear_id`) REFERENCES `mysite_westernwear` (`id`);

--
-- Constraints for table `mysite_wishlist_products`
--
ALTER TABLE `mysite_wishlist_products`
  ADD CONSTRAINT `mysite_wishlist_prod_product_id_98d7d395_fk_mysite_pr` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`),
  ADD CONSTRAINT `mysite_wishlist_prod_wishlist_id_34056134_fk_mysite_wi` FOREIGN KEY (`wishlist_id`) REFERENCES `mysite_wishlist` (`id`);

--
-- Constraints for table `mysite_womenaccessories_products`
--
ALTER TABLE `mysite_womenaccessories_products`
  ADD CONSTRAINT `mysite_womenaccessor_product_id_77cd5cc9_fk_mysite_pr` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`),
  ADD CONSTRAINT `mysite_womenaccessor_womenaccessories_id_04de2802_fk_mysite_wo` FOREIGN KEY (`womenaccessories_id`) REFERENCES `mysite_womenaccessories` (`id`);

--
-- Constraints for table `mysite_womenfootwear_products`
--
ALTER TABLE `mysite_womenfootwear_products`
  ADD CONSTRAINT `mysite_womenfootwear_product_id_eb9a9d80_fk_mysite_pr` FOREIGN KEY (`product_id`) REFERENCES `mysite_product` (`id`),
  ADD CONSTRAINT `mysite_womenfootwear_womenfootwear_id_b86513ad_fk_mysite_wo` FOREIGN KEY (`womenfootwear_id`) REFERENCES `mysite_womenfootwear` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
