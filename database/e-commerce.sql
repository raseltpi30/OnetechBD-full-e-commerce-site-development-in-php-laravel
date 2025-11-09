-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2025 at 05:44 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `public_date` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'New', 'new', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `front_page` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_logo`, `front_page`, `created_at`, `updated_at`) VALUES
(2, 'Honda', 'honda', 'honda.png', NULL, '2024-08-08 05:05:30', '2024-08-08 05:05:30'),
(3, 'Suzuki', 'suzuki', 'suzuki.jpg', NULL, '2024-08-08 05:10:35', '2024-08-08 05:10:35'),
(4, 'Bajaj', 'bajaj', 'bajaj.png', NULL, '2024-08-08 05:10:49', '2024-08-08 05:10:49'),
(5, 'Apple', 'apple', 'apple.png', NULL, '2024-08-08 05:11:01', '2024-08-08 05:11:01'),
(6, 'Nike', 'nike', 'nike.jpg', NULL, '2024-08-08 05:11:19', '2024-08-08 05:11:19'),
(7, 'OnePlus', 'oneplus', 'oneplus.png', NULL, '2024-08-08 05:11:32', '2024-08-08 05:11:32'),
(8, 'Huwaei', 'huwaei', 'huwaei.png', NULL, '2024-08-08 05:11:43', '2024-08-08 05:11:43'),
(9, 'Oppo', 'oppo', 'oppo.png', NULL, '2024-08-08 05:11:57', '2024-08-08 05:11:57'),
(10, 'Puma', 'puma', 'puma.jpg', NULL, '2024-08-08 05:12:12', '2024-08-08 05:12:12'),
(11, 'Tvs', 'tvs', 'tvs.png', NULL, '2024-08-08 05:12:24', '2024-08-08 05:12:24'),
(12, 'Mi', 'mi', 'mi.png', NULL, '2024-08-08 05:12:35', '2024-08-08 05:12:35'),
(13, 'Yamaha', 'yamaha', 'yamaha.png', NULL, '2024-08-08 05:12:47', '2024-08-08 05:12:47'),
(14, 'Zara', 'zara', 'zara.jpg', NULL, '2024-08-08 05:13:01', '2024-08-08 05:13:01'),
(15, 'Samsung', 'samsung', 'samsung.png', NULL, '2024-08-08 05:13:28', '2024-08-08 05:13:28'),
(16, 'Toyota', 'toyota', 'toyota.jpg', NULL, '2024-08-08 05:13:57', '2024-08-08 05:13:57'),
(17, 'Apex', 'apex', 'apex.png', NULL, '2024-08-08 06:33:56', '2024-08-08 06:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_product`
--

CREATE TABLE `campaign_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `category_icon` varchar(255) DEFAULT NULL,
  `homepage` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_icon`, `homepage`, `created_at`, `updated_at`) VALUES
(1, 'Vehicle', 'vehicle', 'vehicle.png', 1, NULL, '2024-08-08 05:14:53'),
(2, 'Furniture', 'furniture', 'furniture.png', NULL, '2024-08-08 05:15:06', '2024-08-08 06:57:38'),
(3, 'Sports', 'sports', 'sports.png', NULL, '2024-08-08 05:15:26', '2024-08-08 06:57:46'),
(4, 'Fashion', 'fashion', 'fashion.png', 1, '2024-08-08 05:15:51', '2024-08-08 05:15:51'),
(5, 'Electronics', 'electronics', 'electronics.png', 1, '2024-08-08 05:16:27', '2024-08-08 05:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_name` varchar(255) NOT NULL,
  `childcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `subcategory_id`, `childcategory_name`, `childcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'Single-disk', 'single-disk', '2024-08-08 05:20:26', '2024-08-08 05:20:26'),
(2, 2, 1, 'Khat', 'khat', '2024-08-08 05:20:41', '2024-08-08 05:20:41'),
(3, 3, 3, 'New', 'new', '2024-08-08 05:21:03', '2024-08-08 05:21:03'),
(4, 4, 4, 'T-Shirt', 't-shirt', '2024-08-08 05:21:19', '2024-08-08 05:21:19'),
(5, 4, 5, 'Shoe', 'shoe', '2024-08-08 05:21:28', '2024-08-08 05:21:28'),
(6, 5, 2, 'Smart Phone', 'smart-phone', '2024-08-08 05:21:41', '2024-08-08 05:21:41'),
(7, 5, 2, 'Button Phone', 'button-phone', '2024-08-08 05:21:53', '2024-08-08 05:21:53'),
(8, 4, 4, 'Shoe', 'shoe', '2024-08-08 06:32:33', '2024-08-08 06:32:33'),
(9, 4, 4, 'watch', 'watch', '2024-08-08 07:30:04', '2024-08-08 07:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `valid_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `type`, `amount`, `valid_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hunter', 'Fixed', 1000, '2024-08-06', 'Active', '2024-08-08 05:57:08', '2024-08-08 05:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_09_02_181228_create_campaigns_table', 1),
(7, '2022_03_29_072424_create_campaign_product_table', 1),
(8, '2024_03_23_162002_create_categories_table', 1),
(9, '2024_03_25_043205_create_subcategories_table', 1),
(10, '2024_03_28_102509_create_child_categories_table', 1),
(11, '2024_04_01_171624_create_brands_table', 1),
(12, '2024_04_19_160938_create_warehouses_table', 1),
(13, '2024_04_19_180735_create_seos_table', 1),
(14, '2024_04_20_044712_create_smtp_table', 1),
(15, '2024_04_20_045602_rollback', 1),
(16, '2024_04_20_052336_create_pages_table', 1),
(17, '2024_05_02_062811_create_settings_table', 1),
(18, '2024_05_09_070015_create_coupons_table', 1),
(19, '2024_05_10_171659_create_pickup_point_table', 1),
(20, '2024_05_14_131155_create_products_table', 1),
(21, '2024_05_21_110520_create_reviews_table', 1),
(22, '2024_05_23_095944_create_wishlists_table', 1),
(23, '2024_06_13_133148_create_webreviews_table', 1),
(24, '2024_06_15_085019_create_newsletters_table', 1),
(25, '2024_06_16_124431_create_orders_table', 1),
(26, '2024_06_16_124442_create_order_details_table', 1),
(27, '2024_06_23_062420_create_tickets_table', 1),
(28, '2024_06_23_071147_create_blog_category_table', 1),
(29, '2024_06_23_071147_create_blogs_table', 1),
(30, '2024_06_23_071147_create_replies_table', 1),
(31, '2024_07_24_174329_create_payment_gateway_bd_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_phone` varchar(255) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_country` varchar(255) DEFAULT NULL,
  `c_zipcode` varchar(255) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `c_extra_phone` varchar(255) DEFAULT NULL,
  `c_city` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_discount` varchar(255) DEFAULT NULL,
  `after_discount` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `shipping_charge` varchar(5) DEFAULT NULL,
  `order_id` varchar(25) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `c_name`, `c_phone`, `c_email`, `c_country`, `c_zipcode`, `c_address`, `c_extra_phone`, `c_city`, `subtotal`, `total`, `coupon_code`, `coupon_discount`, `after_discount`, `payment_type`, `tax`, `shipping_charge`, `order_id`, `status`, `date`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rasel Rana', '01774416430', 'rasel@gmail.com', 'Bangladesh', '5141', 'Dhaka', '01744139130', 'Dhaka', '230,000.00', '230,000.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '786954', 0, '08-08-2024', 'August', '2024', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `single_price` varchar(255) DEFAULT NULL,
  `subtotal_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `single_price`, `subtotal_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Suzuki Zixer SF', 'Red', '25', '1', '230000', '230000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_position` int(11) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `page_slug` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('rasel@gmail.com', '$2y$12$qeuXEo9cYKDoN3PxTFFuJ.KvRwc5c1b/n.Rww8HyWKtz7YLdQTFv2', '2024-08-08 04:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway_bd`
--

CREATE TABLE `payment_gateway_bd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gateway_name` varchar(255) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL,
  `signature_key` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway_bd`
--

INSERT INTO `payment_gateway_bd` (`id`, `gateway_name`, `store_id`, `signature_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'aamarpay', 'aamarpaytest', 'dbb74894e82415a2f7ff0ec3a97e4183', NULL, NULL, NULL),
(2, 'aamarpay', 'surjopaytest', 'dbb74894e82415a2f7ff0ec3a97e4183', NULL, NULL, NULL),
(3, 'surjopay', 'dashgdsghdfg', 'dgdgdgdfg', 1, NULL, NULL),
(4, 'surjopay', 'dashgdsghdfg', 'dgdgdgdfg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `pickup_point`
--

CREATE TABLE `pickup_point` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pickup_point_name` varchar(255) NOT NULL,
  `pickup_point_address` varchar(255) NOT NULL,
  `pickup_point_phone` varchar(255) NOT NULL,
  `pickup_point_phone_two` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickup_point`
--

INSERT INTO `pickup_point` (`id`, `pickup_point_name`, `pickup_point_address`, `pickup_point_phone`, `pickup_point_phone_two`, `created_at`, `updated_at`) VALUES
(1, 'Mirpur Dhaka', 'Dhaka', '01774416430', '01774416430', NULL, NULL),
(2, 'Banashree', 'Banasree,Dhaka', '01945566331', '01775566332', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `purchase_price` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `stock_quantity` varchar(255) DEFAULT NULL,
  `warehouse` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `today_deal` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `flash_deal_id` varchar(255) DEFAULT NULL,
  `cash_on_delivery` varchar(255) DEFAULT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `product_slider` varchar(255) DEFAULT NULL,
  `product_views` varchar(255) DEFAULT '1',
  `trendy` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `pickup_point_id`, `name`, `slug`, `code`, `unit`, `tags`, `color`, `size`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `featured`, `today_deal`, `status`, `flash_deal_id`, `cash_on_delivery`, `admin_id`, `date`, `month`, `product_slider`, `product_views`, `trendy`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 1, 2, 1, 'Suzuki Zixer SF', 'suzuki-zixer-sf', 'zixer-1', 'New', 'New', 'Red,blue', '22,25,30,40', 'nai', NULL, '240000', '230000', '15', 'New Warehouse', '<div id=\"specification\" data-id=\"Suzuki Gixxer 150 Specifications\" class=\"toggleAccordion specsFeaturesBlock\"><h2>Suzuki Gixxer 150 Specifications</h2><div class=\"featuresIocnsSec gsco_content first\"><table class=\"keyfeature\"><tbody><tr class=\"lefttd\"><td>Mileage (Overall)</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>45 kmpl</span></td></tr><tr class=\"righttd\"><td>Displacement</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>155 cc</span></td></tr><tr class=\"lefttd\"><td>Engine Type</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>4-Cycle, 1-cylinder, Air cooled</span></td></tr><tr class=\"righttd\"><td>No. of Cylinders</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>1</span></td></tr><tr class=\"lefttd\"><td>Max Power</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>13.6 PS @ 8000 rpm</span></td></tr><tr class=\"righttd\"><td>Max Torque</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>13.8 Nm @ 6000 rpm</span></td></tr><tr class=\"lefttd\"><td>Front Brake</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>Disc</span></td></tr><tr class=\"righttd\"><td>Rear Brake</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>Disc</span></td></tr><tr class=\"lefttd\"><td><a class=\"link\" href=\"https://www.bikedekho.com/gixxer/faqs/what-is-the-fuel-tank-capacity-of-tvs-jupiter~6373596515ebd4769c5ed55a\" title=\"Fuel Capacity\">Fuel Capacity</a></td><td class=\"right\" data-responsivecelltwo=\"true\"><span>12 L</span></td></tr><tr class=\"righttd\"><td><a class=\"link\" href=\"https://www.bikedekho.com/gixxer/faqs/what-is-the-body-style-of-tvs-jupiter~637359984398ad1d4611bbbc\" title=\"Body Type\">Body Type</a></td><td class=\"right\" data-responsivecelltwo=\"true\"><span><a class=\"link\" title=\"Sports Bikes\" href=\"https://www.bikedekho.com/find-sports-bikes\">Sports Bikes</a></span></td></tr></tbody></table></div></div><h2>Suzuki Gixxer 150 Features</h2><table class=\"keyfeature\"><tbody><tr class=\"lefttd\"><td>ABS</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>Single Channel</span></td></tr><tr class=\"righttd\"><td>LED Tail Light</td><td class=\"right\"><span>Yes</span></td></tr><tr class=\"lefttd\"><td>Speedometer</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>Digital</span></td></tr><tr class=\"righttd\"><td>Odometer</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>Digital</span></td></tr><tr class=\"lefttd\"><td>Tripmeter</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>Digital</span></td></tr><tr class=\"righttd\"><td>Fuel gauge</td><td class=\"right\"><span>Yes</span></td></tr><tr class=\"lefttd\"><td>Tachometer</td><td class=\"right\" data-responsivecelltwo=\"true\"><span>Digital</span></td></tr></tbody></table><p></p>', 'suzuki-zixer-sf.jpg', '[]', '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', '1', '5', '2', '2024-08-08 05:36:48', '2024-08-08 13:46:43'),
(2, 4, 4, 8, 17, 1, 'Appex Shoe', 'appex-shoe', 'show-1', '100', 'new,apex', 'red,black,blue', '39,40,42', NULL, '500', '10000', '800', '20', 'New Warehouse', '<p>Description Introducing\r\n the Apex Men\'s Toe Cap Shoe – a timeless blend of elegance and \r\ndurability. Crafted with attention to detail and premium leather, these \r\nlace-up shoes offer a sleek, tapered profile for a contemporary finish. \r\nDesigned to withstand the test of time, they are the epitome of \r\nsophistication and style. With a durable rubber sole providing traction \r\nand stability, the Apex Men\'s Toe Cap Shoe is perfect for both formal \r\noccasions and everyday wear.</p><div class=\"jsx-1c470a0c6aa7181 hidden pl-2.5 group-[.open]:block h-auto\"><div id=\"description\" class=\"jsx-8b75180699e75b20\"><div class=\"jsx-8b75180699e75b20 mx-6 text-justify md:mx-0 md:ml-6\">        <p>Features:</p> <ul><li> Premium leather construction.</li><li> Classy finish exudes premium look.</li><li>Trendy and stylish.</li><li> Comfortable and flexible rubber sole.</li></ul></div></div></div>', 'appex-shoe.jpg', '[\"1806822989175976.jpg\",\"1806822989235642.jpg\",\"1806822989299190.jpg\"]', '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '2', '1', '2024-08-08 06:37:59', '2024-08-08 12:47:41'),
(3, 4, 5, 5, 17, 1, 'Apex Women Shoe', 'apex-women-shoe', 'apex-2', '100', 'New,Apex', 'Black,Red', '7,8,6,9', NULL, '300', '800', '600', '10', 'New Warehouse', '<p>Description Introducing\r\n the Apex Men\'s Toe Cap Shoe – a timeless blend of elegance and \r\ndurability. Crafted with attention to detail and premium leather, these \r\nlace-up shoes offer a sleek, tapered profile for a contemporary finish. \r\nDesigned to withstand the test of time, they are the epitome of \r\nsophistication and style. With a durable rubber sole providing traction \r\nand stability, the Apex Men\'s Toe Cap Shoe is perfect for both formal \r\noccasions and everyday wear.</p><div class=\"jsx-1c470a0c6aa7181 hidden pl-2.5 group-[.open]:block h-auto\"><div id=\"description\" class=\"jsx-8b75180699e75b20\"><div class=\"jsx-8b75180699e75b20 mx-6 text-justify md:mx-0 md:ml-6\">        <p>Features:</p> <ul><li> Premium leather construction.</li><li> Classy finish exudes premium look.</li><li>Trendy and stylish.</li><li> Comfortable and flexible rubber sole.</li></ul></div></div></div>', 'apex-women-shoe.jpg', '[\"1806823116289045.jpg\"]', '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '2', '1', '2024-08-08 06:40:00', '2024-08-08 12:44:52'),
(4, 5, 2, 6, 7, 1, 'OnePlus 9R 8/128', 'oneplus-9r-8128', 'oneplus-1', '100', 'New,OnePlus', 'Black,Blue', NULL, NULL, '30000', '34000', NULL, '10', 'New Warehouse', '<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"2\" scope=\"row\">Launch</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n<td class=\"nfo\" data-spec=\"year\">2021, March 23</td>\r\n</tr>	\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n<td class=\"nfo\" data-spec=\"status\">Available. Released 2021, April 14</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"6\" scope=\"row\">Body</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/oneplus_9r-10807.php#\">Dimensions</a></td>\r\n<td class=\"nfo\" data-spec=\"dimensions\">161 x 74.1 x 8.4 mm (6.34 x 2.92 x 0.33 in)</td>\r\n</tr><tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/oneplus_9r-10807.php#\">Weight</a></td>\r\n<td class=\"nfo\" data-spec=\"weight\">189 g (6.67 oz)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Build</a></td>\r\n<td class=\"nfo\" data-spec=\"build\">Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n<td class=\"nfo\" data-spec=\"sim\">Dual SIM (Nano-SIM, dual stand-by)</td>\r\n</tr>\r\n		\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"5\" scope=\"row\">Display</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"displaytype\">Fluid AMOLED, 120Hz, HDR10+</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/oneplus_9r-10807.php#\">Size</a></td>\r\n<td class=\"nfo\" data-spec=\"displaysize\">6.55 inches, 103.6 cm<sup>2</sup> (~86.8% screen-to-body ratio)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n<td class=\"nfo\" data-spec=\"displayresolution\">1080 x 2400 pixels, 20:9 ratio (~402 ppi density)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\">Protection</a></td>\r\n<td class=\"nfo\" data-spec=\"displayprotection\">Corning Gorilla Glass 5</td>\r\n</tr>\r\n<tr><td class=\"ttl\">&nbsp;</td><td class=\"nfo\" data-spec=\"displayother\">Always-on display</td></tr>\r\n		\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"4\" scope=\"row\">Platform</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n<td class=\"nfo\" data-spec=\"os\">Android 10, upgradable to Android 13, OxygenOS 13</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n<td class=\"nfo\" data-spec=\"chipset\">Qualcomm SM8250-AC Snapdragon 870 5G (7 nm)</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n<td class=\"nfo\" data-spec=\"cpu\">Octa-core (1x3.2 GHz Kryo 585 &amp; 3x2.42 GHz Kryo 585 &amp; 4x1.80 GHz Kryo 585)</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n<td class=\"nfo\" data-spec=\"gpu\">Adreno 650</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"5\" scope=\"row\">Memory</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n\r\n\r\n<td class=\"nfo\" data-spec=\"memoryslot\">No</td></tr>\r\n\r\n	\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n<td class=\"nfo\" data-spec=\"internalmemory\">128GB 8GB RAM, 256GB 8GB RAM, 256GB 12GB RAM</td>\r\n</tr>\r\n	\r\n\r\n<tr><td class=\"ttl\">&nbsp;</td><td class=\"nfo\" data-spec=\"memoryother\">UFS 3.1</td></tr>\r\n			\r\n\r\n\r\n</tbody></table>\r\n\r\n\r\n	<table cellspacing=\"0\">\r\n	<tbody><tr>\r\n	<th rowspan=\"4\" scope=\"row\" class=\"small-line-height\">Main Camera</th>\r\n		<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Quad</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1modules\">48 MP, f/1.7, 26mm (wide), 1/2.0\", 0.8µm, PDAF, OIS<br>\r\n16 MP, f/2.2, 14mm, 123˚ (ultrawide), 1/3.6\", 1.0µm<br>\r\n5 MP, f/2.4, (macro)<br>\r\n2 MP, f/2.4, (monochrome)</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1features\">Dual-LED flash, HDR, panorama</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1video\">4K@30/60fps, 1080p@30/60/240fps, Auto HDR, gyro-EIS</td>\r\n	</tr>\r\n		</tbody></table>\r\n\r\n\r\n	<table cellspacing=\"0\">\r\n	<tbody><tr>\r\n	<th rowspan=\"4\" scope=\"row\" class=\"small-line-height\">Selfie camera</th>\r\n		<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Single</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2modules\">16 MP, f/2.4, (wide), 1/3.06\", 1.0µm</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Features</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2features\">Auto-HDR</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2video\">1080p@30fps, gyro-EIS</td>\r\n	</tr>\r\n		</tbody></table>\r\n\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"3\" scope=\"row\">Sound</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a> </td>\r\n<td class=\"nfo\">Yes, with stereo speakers</td>\r\n</tr>\r\n\r\n	\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a> </td>\r\n<td class=\"nfo\">No</td>\r\n</tr>\r\n	\r\n\r\n	\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"9\" scope=\"row\">Comms</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n<td class=\"nfo\" data-spec=\"wlan\">Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, DLNA</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n<td class=\"nfo\" data-spec=\"bluetooth\">5.1, A2DP, LE, aptX HD</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gnss\">Positioning</a></td>\r\n<td class=\"nfo\" data-spec=\"gps\">GPS (L1+L5), GLONASS (G1), BDS (B1), GALILEO (E1+E5a)</td>\r\n</tr>  \r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n<td class=\"nfo\" data-spec=\"nfc\">Yes</td>\r\n</tr>\r\n	\r\n	\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n<td class=\"nfo\" data-spec=\"radio\">No</td>\r\n</tr>\r\n   \r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n<td class=\"nfo\" data-spec=\"usb\">USB Type-C 3.1, OTG</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"9\" scope=\"row\">Features</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n<td class=\"nfo\" data-spec=\"sensors\">Fingerprint (under display, optical), accelerometer, gyro, proximity, compass</td>\r\n</tr>\r\n\r\n\r\n 	\r\n\r\n 	\r\n 	\r\n	\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"7\" scope=\"row\">Battery</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"batdescription1\">Li-Po 4500 mAh, non-removable</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\">Charging</a></td>\r\n<td class=\"nfo\">65W wired, 100% in 39 min (advertised)</td>\r\n</tr>\r\n\r\n\r\n</tbody></table>\r\n\r\n\r\n\r\n<table cellspacing=\"0\"><tbody><tr>\r\n<th rowspan=\"6\" scope=\"row\">Misc</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Colors</a></td>\r\n<td class=\"nfo\" data-spec=\"colors\">Carbon Black, Lake Blue</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=models\">Models</a></td>\r\n<td class=\"nfo\" data-spec=\"models\">LE2101, LE2100</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sar\">SAR</a></td>\r\n<td class=\"nfo\" data-spec=\"sar-us\">1.17 W/kg (head) &nbsp; &nbsp; 0.85 W/kg (body) &nbsp; &nbsp; </td>\r\n</tr>\r\n\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=price\">Price</a></td>\r\n<td class=\"nfo\" data-spec=\"price\"><a href=\"https://www.gsmarena.com/oneplus_9r-price-10807.php\">$ 495.00 / ₹ 17,899</a></td></tr></tbody></table><table cellspacing=\"0\" style=\"max-height: 28px;\"><tbody><tr class=\"tr-hover\"><th rowspan=\"15\" scope=\"row\">Network</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td>\r\n<td class=\"nfo\"><a href=\"https://www.gsmarena.com/oneplus_9r-10807.php#\" class=\"link-network-detail collapse\" data-spec=\"nettech\">GSM / HSPA / LTE / 5G</a></td>\r\n</tr>\r\n\r\n\r\n\r\n\r\n	\r\n\r\n	\r\n\r\n\r\n</tbody></table><p></p>', 'oneplus-9r-8128.png', '[]', '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', '1', '1', '1', '2024-08-08 06:45:16', '2024-08-08 06:45:16'),
(5, 5, 2, 6, 5, 1, 'Iphone - 7', 'iphone-7', 'iphone-1', '100', 'New,Apple', 'red,white', NULL, NULL, '20000', '25000', NULL, '10', 'New Warehouse', '<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"2\" scope=\"row\">Launch</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n<td class=\"nfo\" data-spec=\"year\">2016, September 07. Released 2016, September 16</td>\r\n</tr>	\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n<td class=\"nfo\" data-spec=\"status\">Discontinued</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"6\" scope=\"row\">Body</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/apple_iphone_7-8064.php#\">Dimensions</a></td>\r\n<td class=\"nfo\" data-spec=\"dimensions\">138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)</td>\r\n</tr><tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/apple_iphone_7-8064.php#\">Weight</a></td>\r\n<td class=\"nfo\" data-spec=\"weight\">138 g (4.87 oz)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Build</a></td>\r\n<td class=\"nfo\" data-spec=\"build\">Glass front (Corning-made glass), aluminum back, aluminum frame</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n<td class=\"nfo\" data-spec=\"sim\">Nano-SIM</td>\r\n</tr>\r\n<tr><td class=\"ttl\">&nbsp;</td><td class=\"nfo\" data-spec=\"bodyother\">IP67 dust/water resistant (up to 1m for 30 min)<br>\r\nApple Pay (Visa, MasterCard, AMEX certified)</td></tr>\r\n		\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"5\" scope=\"row\">Display</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"displaytype\">Retina IPS LCD, 625 nits (typ)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/apple_iphone_7-8064.php#\">Size</a></td>\r\n<td class=\"nfo\" data-spec=\"displaysize\">4.7 inches, 60.9 cm<sup>2</sup> (~65.6% screen-to-body ratio)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n<td class=\"nfo\" data-spec=\"displayresolution\">750 x 1334 pixels, 16:9 ratio (~326 ppi density)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\">Protection</a></td>\r\n<td class=\"nfo\" data-spec=\"displayprotection\">Ion-strengthened glass</td>\r\n</tr>\r\n<tr><td class=\"ttl\">&nbsp;</td><td class=\"nfo\" data-spec=\"displayother\">3D Touch display &amp; home button</td></tr>\r\n		\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"4\" scope=\"row\">Platform</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n<td class=\"nfo\" data-spec=\"os\">iOS 10.0.1, upgradable to iOS 15.8.1</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n<td class=\"nfo\" data-spec=\"chipset\">Apple A10 Fusion (16 nm)</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n<td class=\"nfo\" data-spec=\"cpu\">Quad-core 2.34 GHz (2x Hurricane + 2x Zephyr)</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n<td class=\"nfo\" data-spec=\"gpu\">PowerVR Series7XT Plus (six-core graphics)</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"5\" scope=\"row\">Memory</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n\r\n\r\n<td class=\"nfo\" data-spec=\"memoryslot\">No</td></tr>\r\n\r\n	\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n<td class=\"nfo\" data-spec=\"internalmemory\">32GB 2GB RAM, 128GB 2GB RAM, 256GB 2GB RAM</td>\r\n</tr>\r\n	\r\n\r\n<tr><td class=\"ttl\">&nbsp;</td><td class=\"nfo\" data-spec=\"memoryother\">NVMe</td></tr>\r\n			\r\n\r\n\r\n</tbody></table>\r\n\r\n\r\n	<table cellspacing=\"0\">\r\n	<tbody><tr>\r\n	<th rowspan=\"4\" scope=\"row\" class=\"small-line-height\">Main Camera</th>\r\n		<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Single</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1modules\">12 MP, f/1.8, 28mm (wide), 1/3.0\", PDAF, OIS</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1features\">Quad-LED dual-tone flash, HDR</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1video\">4K@30fps, 1080p@30/60/120fps, 720p@240fps</td>\r\n	</tr>\r\n		</tbody></table>\r\n\r\n\r\n	<table cellspacing=\"0\">\r\n	<tbody><tr>\r\n	<th rowspan=\"4\" scope=\"row\" class=\"small-line-height\">Selfie camera</th>\r\n		<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Single</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2modules\">7 MP, f/2.2, 32mm (standard)</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Features</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2features\">Face detection, HDR, panorama</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2video\">1080p@30fps</td>\r\n	</tr>\r\n		</tbody></table>\r\n\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"3\" scope=\"row\">Sound</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a> </td>\r\n<td class=\"nfo\">Yes, with stereo speakers</td>\r\n</tr>\r\n\r\n	\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a> </td>\r\n<td class=\"nfo\">No</td>\r\n</tr>\r\n	\r\n\r\n	\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"9\" scope=\"row\">Comms</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n<td class=\"nfo\" data-spec=\"wlan\">Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n<td class=\"nfo\" data-spec=\"bluetooth\">4.2, A2DP, LE</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gnss\">Positioning</a></td>\r\n<td class=\"nfo\" data-spec=\"gps\">GPS, GLONASS, GALILEO, QZSS</td>\r\n</tr>  \r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n<td class=\"nfo\" data-spec=\"nfc\">Yes</td>\r\n</tr>\r\n	\r\n	\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n<td class=\"nfo\" data-spec=\"radio\">No</td>\r\n</tr>\r\n   \r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n<td class=\"nfo\" data-spec=\"usb\">Lightning, USB 2.0</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"9\" scope=\"row\">Features</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n<td class=\"nfo\" data-spec=\"sensors\">Fingerprint (front-mounted), accelerometer, gyro, proximity, compass, barometer</td>\r\n</tr>\r\n\r\n\r\n 	\r\n\r\n 	\r\n 	\r\n	\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"7\" scope=\"row\">Battery</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"batdescription1\">Li-Ion 1960 mAh, non-removable (7.45 Wh)</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=talk-time\">Talk time</a></td>\r\n<td class=\"nfo\" data-spec=\"battalktime1\">Up to 14 h (3G)</td>\r\n</tr>\r\n\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"6\" scope=\"row\">Misc</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Colors</a></td>\r\n<td class=\"nfo\" data-spec=\"colors\">Jet Black, Black, Silver, Gold, Rose Gold, Red</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=models\">Models</a></td>\r\n<td class=\"nfo\" data-spec=\"models\">A1660, A1778, A1779, A1780, A1853, A1866, iPhone9,1, iPhone9,3</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sar\">SAR</a></td>\r\n<td class=\"nfo\" data-spec=\"sar-us\">1.19 W/kg (head) &nbsp; &nbsp; 1.19 W/kg (body) &nbsp; &nbsp; </td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sar\">SAR EU</a></td>\r\n<td class=\"nfo\" data-spec=\"sar-eu\">1.38 W/kg (head) &nbsp; &nbsp; 1.34 W/kg (body) &nbsp; &nbsp; </td>\r\n</tr>\r\n\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=price\">Price</a></td>\r\n<td class=\"nfo\" data-spec=\"price\">About 180 EUR</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n\r\n<table cellspacing=\"0\"><tbody><tr>\r\n<th rowspan=\"7\" scope=\"row\">Tests</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=benchmarking\">Performance</a></td>\r\n<td class=\"nfo\" data-spec=\"tbench\">\r\nBasemark OS II 2.0: 3416</td>\r\n</tr><tr>\r\n\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p2.php\">Display</a></td>\r\n<td class=\"nfo\">\r\n<a class=\"noUnd\" href=\"https://www.gsmarena.com/apple_iphone_7-review-1497p3.php#dt\">Contrast ratio: 1603:1 (nominal), 3.964 (sunlight)</a></td>\r\n</tr><tr>\r\n\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p5.php\">Camera</a></td>\r\n<td class=\"nfo\">\r\n<a class=\"noUnd\" href=\"https://www.gsmarena.com/piccmp.php3?idType=4&amp;idPhone1=8064&amp;nSuggest=1\">Photo</a> / <a class=\"noUnd\" href=\"https://www.gsmarena.com/vidcmp.php3?idType=4&amp;idPhone1=8064&amp;nSuggest=1\">Video</a></td>\r\n</tr><tr>\r\n\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p7.php\">Loudspeaker</a></td>\r\n<td class=\"nfo\">\r\n<a class=\"noUnd\" href=\"https://www.gsmarena.com/apple_iphone_7-review-1497p6.php#lt\">Voice 67dB / Noise 73dB / Ring 75dB</a>\r\n\r\n</td>\r\n</tr><tr>\r\n\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p4.php\">Audio quality</a></td>\r\n<td class=\"nfo\">\r\n<a class=\"noUnd\" href=\"https://www.gsmarena.com/apple_iphone_7-review-1497p6.php#aq\">Noise -92.4dB / Crosstalk -80.9dB</a></td>\r\n</tr><tr>\r\n\r\n\r\n\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p6.php\">Battery (old)</a></td>\r\n<td class=\"nfo\" data-spec=\"batlife\">\r\n<div style=\"position:relative;\">\r\n<a href=\"https://www.gsmarena.com/apple_iphone_7-8064.php#\">Endurance rating 61h</a></div></td></tr></tbody></table><table cellspacing=\"0\" style=\"max-height: 31px;\"><tbody><tr class=\"tr-hover\"><th rowspan=\"15\" scope=\"row\">Network</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td>\r\n<td class=\"nfo\"><a href=\"https://www.gsmarena.com/apple_iphone_7-8064.php#\" class=\"link-network-detail collapse\" data-spec=\"nettech\">GSM / CDMA / HSPA / EVDO / LTE</a></td>\r\n</tr>\r\n\r\n\r\n\r\n\r\n\r\n	\r\n\r\n	\r\n\r\n\r\n</tbody></table><p></p>', 'iphone-7.jpg', '[\"1806823685542043.jpg\"]', '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '3', NULL, '2024-08-08 06:49:03', '2024-09-10 10:07:30'),
(6, 5, 2, 6, 6, 1, 'Camera Canon', 'camera-canon', 'camera-1', '100', 'New', 'red,black', NULL, NULL, '25000', '20000', NULL, '10', 'New Warehouse', '<div class=\"d-flex align-items-top justify-content-between\">\r\n\r\n		<div class=\"d-flex flex-column\">\r\n			<div>\r\n\r\n				<div>\r\n					<h1 class=\"mb-0\">camera</h1></div>\r\n\r\n				</div>\r\n\r\n			<div class=\"topic-identifier font-16 font-md-20\">photography</div>\r\n			</div>\r\n\r\n		\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n\r\n\r\n</div>\r\n\r\n	\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"d-none d-sm-block md-topic-tools mt-15 mb-15 qa-action-buttons\" data-topic-id=\"90842\">\r\n\r\n    \r\n\r\n    \r\n        \r\n            \r\n            \r\n                \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n    \r\n        \r\n    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n        </div>\r\n    \r\n    \r\n\r\n\r\n            \r\n        \r\n    \r\n\r\n    \r\n\r\n    \r\n        \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n        \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n    \r\n        \r\n    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n        \r\n    \r\n\r\n\r\n    \r\n\r\n\r\n\r\n\r\n    \r\n\r\n    \r\n\r\n    \r\n	    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n        \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n    \r\n        \r\n    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n        \r\n    \r\n\r\n\r\n    \r\n\r\n\r\n\r\n\r\n    \r\n\r\n    \r\n\r\n    \r\n        \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n    \r\n        \r\n    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n        \r\n    \r\n\r\n\r\n    \r\n\r\n    \r\n\r\n    \r\n        \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n    \r\n        \r\n    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n        \r\n    \r\n\r\n\r\n        <div class=\"md-more-popover popover popover-sm p-0 font-14 z-1\">\r\n            \r\n                </div><div class=\"d-none d-sm-block md-topic-tools mt-15 mb-15 qa-action-buttons\" data-topic-id=\"90842\">\r\n\r\n        \r\n\r\n\r\n        \r\n    \r\n</div>\r\n<div class=\"md-byline mb-10 \">\r\n		<div class=\"font-serif font-12\">\r\n		<span class=\"written-by text-gray-700\">\r\n			\r\n				Written and fact-checked by\r\n				</span>\r\n		<div class=\"editor-popover popover p-0\">\r\n  <a class=\"d-block p-20 gtm-byline font-12 byline-contributor\" href=\"https://www.britannica.com/editor/The-Editors-of-Encyclopaedia-Britannica/4419\">\r\n        <div class=\"editor-title font-16 font-weight-bold\"></div>\r\n\r\n        <div class=\"editor-description font-12 font-serif mt-5 text-black\"></div>\r\n            </a>\r\n    <div data-popper-arrow=\"\"></div>\r\n</div>\r\n\r\n</div></div><div class=\"topic-header\"><div class=\"md-byline mb-10 \"><div class=\"last-updated font-12 font-serif\">\r\n			<a class=\"byline-edit-history\" href=\"https://www.britannica.com/technology/camera/additional-info#history\" rel=\"nofollow\">Article History</a>\r\n			</div></div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n		\r\n    \r\n		\r\n    \r\n\r\n<div class=\"js-qf-module qf-module border p-20 ml-lg-10 mx-auto mb-20 font-14 bg-white\">\r\n		\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"m-n10 \">\r\n    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"slider js-slider position-relative d-inline-flex align-items-center mw-100 media-slider card-snap-slider col-100\">\r\n    <div class=\"slider-container js-slider-container overflow-hidden d-flex col-100\">\r\n        \r\n      <div class=\"rw-track w-100\">\r\n					<div class=\"p-10 d-inline-flex col-100\">\r\n							<div class=\"card w-100\">\r\n								<a href=\"https://cdn.britannica.com/82/124882-004-878FBDEB/Asahiflex-single-lens-reflex-camera.jpg\" data-href=\"/media/1/90842/118839\" class=\"media-overlay-link card-media d-flex align-items-center justify-content-center\" style=\"--aspect-ratio: 4/3\">\r\n									\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n    \r\n    \r\n        <img src=\"https://cdn.britannica.com/82/124882-004-878FBDEB/Asahiflex-single-lens-reflex-camera.jpg?w=400&amp;h=300&amp;c=crop\" alt=\"35mm single-lens reflex (SLR) camera\">\r\n    \r\n\r\n</a></div></div></div></div></div></div></div><div class=\"slider-container js-slider-container overflow-hidden d-flex col-100\"><div class=\"rw-track w-100\"><div class=\"p-10 d-inline-flex col-100\"><div class=\"card w-100\"><div class=\"card-body p-10 font-14\">\r\n										35mm single-lens reflex (SLR) camera</div>\r\n								</div>\r\n						</div>\r\n					</div>\r\n			\r\n    \r\n    </div>\r\n\r\n    \r\n\r\n    \r\n        \r\n    \r\n\r\n    \r\n\r\n    <div class=\"text-center py-10\">\r\n					<a class=\"font-weight-bold\" href=\"https://www.britannica.com/technology/camera/images-videos\">See all media</a>\r\n				</div>\r\n			<div class=\"facts-list pt-20 border-top\">\r\n			<div class=\"js-fact mb-10 line-clamp clamp-3\">\r\n					<dl><dt>Key People: </dt><dd><a href=\"https://www.britannica.com/money/George-Eastman\">George Eastman</a></dd><dd><a href=\"https://www.britannica.com/biography/Frederic-Eugene-Ives\">Frederic Eugene Ives</a></dd><dd><a href=\"https://www.britannica.com/biography/John-Henry-Dallmeyer\">John Henry Dallmeyer</a></dd><dd><a href=\"https://www.britannica.com/biography/Etienne-Jules-Marey\">Étienne-Jules Marey</a></dd></dl>\r\n					\r\n				</div>\r\n			<div class=\"js-fact mb-0 line-clamp clamp-3\">\r\n					<dl><dt>Related Topics: </dt><dd><a href=\"https://www.britannica.com/technology/webcamming\">webcamming</a></dd><dd><a href=\"https://www.britannica.com/technology/motion-picture-camera\">motion-picture camera</a></dd><dd><a href=\"https://www.britannica.com/technology/shutter-photography\">shutter</a></dd><dd><a href=\"https://www.britannica.com/technology/viewfinder\">viewfinder</a></dd><dd><a href=\"https://www.britannica.com/technology/digital-camera\">digital camera</a></dd></dl>\r\n					\r\n				</div>\r\n			</div>\r\n\r\n		<div class=\"text-center mt-20\">\r\n				</div><span class=\"marker before-article\"></span><section data-level=\"1\" id=\"ref1\"><span class=\"marker MOD1 mod-inline\"></span><p class=\"topic-paragraph\"><strong><span id=\"ref174179\"></span>camera</strong>,  in <a href=\"https://www.britannica.com/technology/technology-of-photography\" class=\"md-crosslink\" data-show-preview=\"true\">photography</a>, device for <a href=\"https://www.britannica.com/technology/sound-recording\" class=\"md-crosslink autoxref\" data-show-preview=\"true\">recording</a> an image of an object on a light-sensitive surface; it is essentially a light-tight box with an <a href=\"https://www.britannica.com/technology/aperture-optics\" class=\"md-crosslink autoxref\" data-show-preview=\"true\">aperture</a> to admit <a href=\"https://www.britannica.com/science/light\" class=\"md-crosslink autoxref\" data-show-preview=\"true\">light</a> focused onto a sensitized film or plate.</p><span class=\"marker MOD2 mod-inline\"></span><p class=\"topic-paragraph\">A brief <a class=\"md-dictionary-link md-dictionary-tt-off eb\" data-term=\"treatment\" href=\"https://www.britannica.com/dictionary/treatment\" data-type=\"EB\">treatment</a> of cameras follows. For full treatment, <em>see</em> <a href=\"https://www.britannica.com/technology/technology-of-photography#ref36407\" class=\"md-crosslink\" data-show-preview=\"true\">photography, technology of: Cameras and lenses</a>. <em>See also</em> <a href=\"https://www.britannica.com/technology/digital-camera\" class=\"md-crosslink\" data-show-preview=\"true\">digital camera</a>.</p></section><p></p>', 'camera-canon.jpg', NULL, '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '1', NULL, '2024-08-08 06:55:38', '2024-08-08 06:55:38'),
(7, 4, 4, 8, 17, 1, 'Simple Shoe', 'simple-shoe', 'shoe-3', '100', 'New', 'White', '42,43', NULL, '500', '1000', '800', '10', 'New Warehouse', '<p>Description Introducing\r\n the Apex Men\'s Toe Cap Shoe – a timeless blend of elegance and \r\ndurability. Crafted with attention to detail and premium leather, these \r\nlace-up shoes offer a sleek, tapered profile for a contemporary finish. \r\nDesigned to withstand the test of time, they are the epitome of \r\nsophistication and style. With a durable rubber sole providing traction \r\nand stability, the Apex Men\'s Toe Cap Shoe is perfect for both formal \r\noccasions and everyday wear.</p><div class=\"jsx-1c470a0c6aa7181 hidden pl-2.5 group-[.open]:block h-auto\"><div id=\"description\" class=\"jsx-8b75180699e75b20\"><div class=\"jsx-8b75180699e75b20 mx-6 text-justify md:mx-0 md:ml-6\">        <p>Features:</p> <ul><li> Premium leather construction.</li><li> Classy finish exudes premium look.</li><li>Trendy and stylish.</li><li> Comfortable and flexible rubber sole.</li></ul></div></div></div><p></p>', 'simple-shoe.jpg', NULL, '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '1', '1', '2024-08-08 07:07:39', '2024-08-08 07:07:39'),
(8, 1, 6, 1, 3, 1, 'R15', 'r15', 'r15', '100', 'new', 'red,blue', NULL, NULL, '345000', '38000', NULL, NULL, 'New Warehouse', '<p>Description Introducing\r\n the Apex Men\'s Toe Cap Shoe – a timeless blend of elegance and \r\ndurability. Crafted with attention to detail and premium leather, these \r\nlace-up shoes offer a sleek, tapered profile for a contemporary finish. \r\nDesigned to withstand the test of time, they are the epitome of \r\nsophistication and style. With a durable rubber sole providing traction \r\nand stability, the Apex Men\'s Toe Cap Shoe is perfect for both formal \r\noccasions and everyday wear.</p><div class=\"jsx-1c470a0c6aa7181 hidden pl-2.5 group-[.open]:block h-auto\"><div id=\"description\" class=\"jsx-8b75180699e75b20\"><div class=\"jsx-8b75180699e75b20 mx-6 text-justify md:mx-0 md:ml-6\">        <p>Features:</p> <ul><li> Premium leather construction.</li><li> Classy finish exudes premium look.</li><li>Trendy and stylish.</li><li> Comfortable and flexible rubber sole.</li></ul></div></div></div><p></p>', 'r15.jpg', '[\"1806824954486113.jpg\"]', '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '1', NULL, '2024-08-08 07:09:13', '2024-08-08 07:09:13'),
(9, 1, 6, 1, 3, 1, 'Suzuki Zixer Montone', 'suzuki-zixer-montone', 'monotone', '100', 'new', 'red,black', NULL, NULL, '200000', '220000', NULL, NULL, 'New Warehouse', '<p>Description Introducing\r\n the Apex Men\'s Toe Cap Shoe – a timeless blend of elegance and \r\ndurability. Crafted with attention to detail and premium leather, these \r\nlace-up shoes offer a sleek, tapered profile for a contemporary finish. \r\nDesigned to withstand the test of time, they are the epitome of \r\nsophistication and style. With a durable rubber sole providing traction \r\nand stability, the Apex Men\'s Toe Cap Shoe is perfect for both formal \r\noccasions and everyday wear.</p><div class=\"jsx-1c470a0c6aa7181 hidden pl-2.5 group-[.open]:block h-auto\"><div id=\"description\" class=\"jsx-8b75180699e75b20\"><div class=\"jsx-8b75180699e75b20 mx-6 text-justify md:mx-0 md:ml-6\">        <p>Features:</p> <ul><li> Premium leather construction.</li><li> Classy finish exudes premium look.</li><li>Trendy and stylish.</li><li> Comfortable and flexible rubber sole.</li></ul></div></div></div><p></p>', 'suzuki-zixer-montone.jpg', '[\"1806825120673257.jpg\"]', '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '1', NULL, '2024-08-08 07:11:51', '2024-08-08 07:11:51'),
(10, 1, 6, 1, 11, 1, 'Apache 4v', 'apache-4v', 'apache-4v', '100', 'new', 'red', NULL, NULL, '160000', '190000', NULL, '10', 'New Warehouse', '<p>Description Introducing\r\n the Apex Men\'s Toe Cap Shoe – a timeless blend of elegance and \r\ndurability. Crafted with attention to detail and premium leather, these \r\nlace-up shoes offer a sleek, tapered profile for a contemporary finish. \r\nDesigned to withstand the test of time, they are the epitome of \r\nsophistication and style. With a durable rubber sole providing traction \r\nand stability, the Apex Men\'s Toe Cap Shoe is perfect for both formal \r\noccasions and everyday wear.</p><div class=\"jsx-1c470a0c6aa7181 hidden pl-2.5 group-[.open]:block h-auto\"><div id=\"description\" class=\"jsx-8b75180699e75b20\"><div class=\"jsx-8b75180699e75b20 mx-6 text-justify md:mx-0 md:ml-6\">        <p>Features:</p> <ul><li> Premium leather construction.</li><li> Classy finish exudes premium look.</li><li>Trendy and stylish.</li><li> Comfortable and flexible rubber sole.</li></ul></div></div></div><p></p>', 'apache-4v.jpg', '[\"1806827318557371.png\"]', '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', '1', '15', NULL, '2024-08-08 07:13:03', '2024-08-10 03:01:45'),
(11, 1, 6, 1, 17, 1, 'Apache 2v', 'apache-2v', 'apache-2v', '100', 'new', 'red', NULL, NULL, '140000', '170000', NULL, '10', 'New Warehouse', '<p>Description Introducing\r\n the Apex Men\'s Toe Cap Shoe – a timeless blend of elegance and \r\ndurability. Crafted with attention to detail and premium leather, these \r\nlace-up shoes offer a sleek, tapered profile for a contemporary finish. \r\nDesigned to withstand the test of time, they are the epitome of \r\nsophistication and style. With a durable rubber sole providing traction \r\nand stability, the Apex Men\'s Toe Cap Shoe is perfect for both formal \r\noccasions and everyday wear.</p><div class=\"jsx-1c470a0c6aa7181 hidden pl-2.5 group-[.open]:block h-auto\"><div id=\"description\" class=\"jsx-8b75180699e75b20\"><div class=\"jsx-8b75180699e75b20 mx-6 text-justify md:mx-0 md:ml-6\">        <p>Features:</p> <ul><li> Premium leather construction.</li><li> Classy finish exudes premium look.</li><li>Trendy and stylish.</li><li> Comfortable and flexible rubber sole.</li></ul></div></div></div><p></p>', 'apache-2v.jpg', NULL, '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '1', NULL, '2024-08-08 07:14:29', '2024-08-08 12:41:20'),
(12, 4, 4, 9, 5, 1, 'Kimsdub Watch', 'kimsdub-watch', 'w-1', '100', 'New', 'black,golden', NULL, NULL, '2500', '4000', '3500', '10', 'New Warehouse', '<h2>Mechanical Watches</h2><p>Watches were developed later than clocks. The first portable timekeeper or watch was produced during the <a class=\"reflink\" href=\"https://kids.britannica.com/students/article/Renaissance/276692\">Renaissance</a>.\r\n A weight and a crude escapement were suitable in clocks but could not \r\nbe used in a portable watch. In the early 1500s a coiled metal spring \r\nthat transmitted energy as it unwound was substituted for the weight. By\r\n the 1580s, about the time of <a class=\"reflink\" href=\"https://kids.britannica.com/students/article/Galileo/274476\">Galileo</a>’s\r\n pendulum experiments, the first commercial watches were being produced \r\nin small quantities in Nuremberg (Nürnberg), Germany. Known as Nuremberg\r\n eggs, these early watches were portable but had only an hour hand \r\nbecause the escapement mechanism was too inaccurate to show minutes.</p>The English physicist Robert Hooke, who introduced the basic pendulum and escapement mechanisms in <p></p>', 'kimsdub-watch.jpg', '[\"1806826367413882.jpg\"]', '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '1', NULL, '2024-08-08 07:31:40', '2024-08-08 07:31:40'),
(13, 4, 4, 8, 6, 1, 'Sports Nike Shoe', 'sports-nike-shoe', 'shoe-4', '100', 'new', 'white', '42,43', NULL, '1000', '1800', NULL, NULL, 'New Warehouse', '<h2>Mechanical Watches</h2><p>Watches were developed later than clocks. The first portable timekeeper or watch was produced during the <a class=\"reflink\" href=\"https://kids.britannica.com/students/article/Renaissance/276692\">Renaissance</a>.\r\n A weight and a crude escapement were suitable in clocks but could not \r\nbe used in a portable watch. In the early 1500s a coiled metal spring \r\nthat transmitted energy as it unwound was substituted for the weight. By\r\n the 1580s, about the time of <a class=\"reflink\" href=\"https://kids.britannica.com/students/article/Galileo/274476\">Galileo</a>’s\r\n pendulum experiments, the first commercial watches were being produced \r\nin small quantities in Nuremberg (Nürnberg), Germany. Known as Nuremberg\r\n eggs, these early watches were portable but had only an hour hand \r\nbecause the escapement mechanism was too inaccurate to show minutes.</p>The English physicist Robert Hooke, who introduced the basic pendulum and escapement mechanisms in <p></p>', 'sports-nike-shoe.jpg', NULL, '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '1', NULL, '2024-08-08 07:33:14', '2024-08-08 07:33:14'),
(14, 1, 6, 1, 13, 1, 'Charger Motorcycle', 'charger-motorcycle', 'motorcycle-1', '100', 'new', 'red', NULL, NULL, '100000', '140000', NULL, '10', 'New Warehouse', '<h2>Mechanical Watches</h2><p>Watches were developed later than clocks. The first portable timekeeper or watch was produced during the <a class=\"reflink\" href=\"https://kids.britannica.com/students/article/Renaissance/276692\">Renaissance</a>.\r\n A weight and a crude escapement were suitable in clocks but could not \r\nbe used in a portable watch. In the early 1500s a coiled metal spring \r\nthat transmitted energy as it unwound was substituted for the weight. By\r\n the 1580s, about the time of <a class=\"reflink\" href=\"https://kids.britannica.com/students/article/Galileo/274476\">Galileo</a>’s\r\n pendulum experiments, the first commercial watches were being produced \r\nin small quantities in Nuremberg (Nürnberg), Germany. Known as Nuremberg\r\n eggs, these early watches were portable but had only an hour hand \r\nbecause the escapement mechanism was too inaccurate to show minutes.</p>The English physicist Robert Hooke, who introduced the basic pendulum and escapement mechanisms in <p></p>', 'charger-motorcycle.jpg', NULL, '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '1', NULL, '2024-08-08 07:35:09', '2024-08-08 07:35:09');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `pickup_point_id`, `name`, `slug`, `code`, `unit`, `tags`, `color`, `size`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `featured`, `today_deal`, `status`, `flash_deal_id`, `cash_on_delivery`, `admin_id`, `date`, `month`, `product_slider`, `product_views`, `trendy`, `created_at`, `updated_at`) VALUES
(15, 5, 2, 6, 12, 1, 'Mi A3', 'mi-a3', 'mi-1', '100', 'new', 'blue', NULL, NULL, '20000', '22000', NULL, NULL, 'New Warehouse', '<table class=\"table table-bordered\"><thead><tr><td colspan=\"2\"><strong>Basic Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>Brand</td>\r\n                  <td>Xiaomi</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Model</td>\r\n                  <td>Mi A3</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Release Date</td>\r\n                  <td>Released 2019, July</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>Memory Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>RAM</td>\r\n                  <td>4GB</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Internal Storage</td>\r\n                  <td>64GB</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Card Slot</td>\r\n                  <td>microSDXC (uses shared SIM slot)</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>Display Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>Type</td>\r\n                  <td>Super AMOLED</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Size</td>\r\n                  <td>6.09-Inch, 91.0 cm2 (~82.5% Screen-to-Body Ratio)</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Resolution</td>\r\n                  <td>720 x 1560 pixels, 19.5:9 ratio (~282 ppi density)</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Protection</td>\r\n                  <td>Corning Gorilla Glass 5</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Features</td>\r\n                  <td>Multitouch</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>Connectivity Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>Technology</td>\r\n                  <td>GSM / HSPA / LTE</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Network</td>\r\n                  <td>2G / 3G / 4G</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Speed</td>\r\n                  <td>HSPA 42.2/5.76 Mbps, LTE-A (2CA) Cat6 400/50 Mbps</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>SIM</td>\r\n                  <td>Hybrid Dual SIM (Nano-SIM, dual stand-by)</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Bluetooth</td>\r\n                  <td>5.0, A2DP, LE, aptX HD</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>WLAN</td>\r\n                  <td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, Hotspot</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>Main Camera Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>Resolution</td>\r\n                  <td>Triple 48+8+2 Megapixel</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Features</td>\r\n                  <td>LED flash, HDR, Panorama, PDAF, 118° FOV, Sony Sensor, LED flash</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Video</td>\r\n                  <td>4K, 30fps, 1080p-30/60/120fps</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>Front Camera Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>Resolution</td>\r\n                  <td>32 Megapixel</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Features</td>\r\n                  <td>f/2.0, 1.6µm, 79° FOV, HDR</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Video</td>\r\n                  <td>1080p-30fps</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>System Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>Operating System</td>\r\n                  <td>Android 9.0 (Pie), upgradable to Android 11, Android One</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Chipset</td>\r\n                  <td>Qualcomm SDM665 Snapdragon 665 (11 nm)</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>CPU</td>\r\n                  <td>Octa-core (4x2.0 GHz Kryo 260 Gold &amp; 4x1.8 GHz Kryo 260 Silver)</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>GPU</td>\r\n                  <td>Adreno 610</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>Battery Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>Capacity</td>\r\n                  <td>Lithium-polymer 4030 mAh (non-removable)</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Charging Type</td>\r\n                  <td>Fast charging 18W &amp; Quick Charge 3</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Reverse Charging</td>\r\n                  <td>No</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>Sound Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>Features</td>\r\n                  <td>Loudspeaker</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>3.5mm Jack</td>\r\n                  <td>Yes</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>Security Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>Fingerprint</td>\r\n                  <td>Fingerprint (under display, optical)</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Face Lock</td>\r\n                  <td>Yes</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>Common Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>GPS</td>\r\n                  <td>Yes, with A-GPS, GLONASS, BDS</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>USB</td>\r\n                  <td>v2.0</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>OTG</td>\r\n                  <td>Yes</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>USB Type-C</td>\r\n                  <td>Yes</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Radio</td>\r\n                  <td>Yes</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Sensors</td>\r\n                  <td>Fingerprint, Accelerometer, Gyro, Proximity, Compass</td>\r\n                </tr>\r\n                                  </tbody>\r\n                                <thead>\r\n                  <tr>\r\n                    <td colspan=\"2\"><strong>Physical Info</strong></td>\r\n                  </tr>\r\n                </thead>\r\n                <tbody>\r\n                                <tr>\r\n                  <td>Style</td>\r\n                  <td>Minimal Notch</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Material</td>\r\n                  <td>Gorilla Glass 5 Front &amp; Back, Aluminum Frame</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Color</td>\r\n                  <td>Kind of Gray, Not just Blue, More than White</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Water Resistance</td>\r\n                  <td>No</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Dimension</td>\r\n                  <td>153.5 x 71.9 x 8.5 millimeters</td>\r\n                </tr>\r\n                                <tr>\r\n                  <td>Weight</td>\r\n                  <td>173.8 grams</td></tr></tbody></table><p><br></p>', 'mi-a3.jpg', NULL, '1', '1', '1', NULL, NULL, '1', '08-08-2024', 'August', NULL, '1', NULL, '2024-08-08 07:37:06', '2024-08-08 07:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `review` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_date` varchar(255) DEFAULT NULL,
  `review_month` varchar(255) DEFAULT NULL,
  `review_year` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `review`, `rating`, `review_date`, `review_month`, `review_year`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Nice Product', 1, '08-08-2024', 'August', 2024, '2024-08-08 10:46:05', '2024-08-08 10:46:05'),
(2, 2, 10, 'Nice Product', 5, '08-08-2024', 'August', 2024, '2024-08-08 13:23:45', '2024-08-08 13:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `google_verification` varchar(255) DEFAULT NULL,
  `google_analytics` varchar(255) DEFAULT NULL,
  `alexa_verification` varchar(255) DEFAULT NULL,
  `google_adsense` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `phone_two` varchar(255) DEFAULT NULL,
  `main_email` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency`, `phone_one`, `phone_two`, `main_email`, `support_email`, `logo`, `favicon`, `address`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, '৳', '01774416430', '01774416430', 'rasel@gmail.com', 'rasel@gmail.com', 'files/website_setting/logo-1723253505.jpg', 'files/website_setting/favicon-1723253505.jpg', 'Bangladesh', 'facebook.com', 'youtube.com', NULL, NULL, NULL, '2024-07-31 20:08:16', '2024-08-09 19:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `smtp`
--

CREATE TABLE `smtp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 2, 'Bed', 'bed', '2024-08-08 04:56:14', '2024-08-08 05:17:27'),
(2, 5, 'Mobile', 'mobile', '2024-08-08 05:17:40', '2024-08-08 05:17:40'),
(3, 3, 'Cricket', 'cricket', '2024-08-08 05:18:17', '2024-08-08 05:18:17'),
(4, 4, 'Men\'s Fashion', 'mens-fashion', '2024-08-08 05:18:36', '2024-08-08 05:18:36'),
(5, 4, 'Women\'s Fashion', 'womens-fashion', '2024-08-08 05:18:54', '2024-08-08 05:18:54'),
(6, 1, 'MotorCycle', 'motorcycle', '2024-08-08 05:19:41', '2024-08-08 05:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_admin` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `is_admin`, `profile_picture`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rasel Rana', 'rasel@gmail.com', NULL, NULL, '1', 'admin.jpg', '$2y$12$alztJTi/0CdwHuLyZQl4IOZ4y6djQg8413wfD1kWd3tKmcTTlugKO', NULL, '2024-07-31 14:11:07', '2024-07-31 14:11:07'),
(2, 'Rana Islam', 'rana@gmail.com', NULL, '01774416430', NULL, 'rana-islam.jpg', '$2y$12$K1WpkRPF5XpHfNVI0nEgY.exNW9VOKgVxRhjiDqnp6CvWzUUrRr5e', NULL, '2024-08-07 18:00:00', '2024-08-07 18:00:00'),
(3, 'Customer', 'customer@gmail.com', NULL, '01774416430', NULL, 'customer.jpg', '$2y$12$kwsbtv7.MORLruvywTCg1O1GDc6ejT3xr7d6xnBXFlDAPAFPNtiY6', NULL, '2024-08-09 18:00:00', '2024-08-09 18:00:00'),
(4, 'Habib Ahmed', 'habib@gmail.com', NULL, '01312816430', NULL, 'habib-ahmed.jpg', '$2y$12$N3.DP05xHb02AMzvqouaJ.IyRxrjN2L2yC5IaKHTy36x9nawkDbeO', NULL, '2024-08-09 18:00:00', '2024-08-09 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) NOT NULL,
  `warehouse_address` varchar(255) NOT NULL,
  `warehouse_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `warehouse_name`, `warehouse_address`, `warehouse_phone`, `created_at`, `updated_at`) VALUES
(1, 'New Warehouse', 'Dhaka, Bangladesh', '01774416430', '2024-08-08 05:31:09', '2024-08-08 05:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `webreviews`
--

CREATE TABLE `webreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `review` text DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `review_date` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '2024-08-08', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_product`
--
ALTER TABLE `campaign_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_product_campaign_id_foreign` (`campaign_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_categories_category_id_foreign` (`category_id`),
  ADD KEY `child_categories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_gateway_bd`
--
ALTER TABLE `payment_gateway_bd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickup_point`
--
ALTER TABLE `pickup_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp`
--
ALTER TABLE `smtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webreviews`
--
ALTER TABLE `webreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webreviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_product`
--
ALTER TABLE `campaign_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateway_bd`
--
ALTER TABLE `payment_gateway_bd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_point`
--
ALTER TABLE `pickup_point`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp`
--
ALTER TABLE `smtp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `webreviews`
--
ALTER TABLE `webreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaign_product`
--
ALTER TABLE `campaign_product`
  ADD CONSTRAINT `campaign_product_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD CONSTRAINT `child_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `child_categories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webreviews`
--
ALTER TABLE `webreviews`
  ADD CONSTRAINT `webreviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
