-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2023 lúc 05:20 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tsix`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id_cate` int(11) NOT NULL,
  `name_cate` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id_cate`, `name_cate`, `slug`, `createdAt`, `updatedAt`) VALUES
(17, 'Bàn', 'ban', '2023-11-09 07:20:03', '2023-11-09 07:20:03'),
(18, 'Ghế', 'ghe', '2023-11-09 07:20:07', '2023-11-09 07:20:07'),
(19, 'Giường', 'giuong', '2023-11-09 07:20:18', '2023-11-09 07:20:18'),
(20, 'Tủ', 'tu', '2023-11-09 07:20:30', '2023-11-09 07:20:30'),
(21, 'Trang trí', 'trang-tri', '2023-11-09 07:20:40', '2023-11-09 07:20:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id_pd` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id_pd`, `url`, `alt`, `filename`, `createdAt`, `updatedAt`) VALUES
(12, 'https://res.cloudinary.com/tsix-project/image/upload/v1700041963/tsix/rfn0lagnf8t3o1qke6mg.jpg', 'gojoo_img_0', 'tsix/rfn0lagnf8t3o1qke6mg', '2023-11-15 09:52:45', '2023-11-15 09:52:45'),
(12, 'https://res.cloudinary.com/tsix-project/image/upload/v1700041964/tsix/ofp4fgnqfg8ezj0k0ukg.jpg', 'gojoo_img_1', 'tsix/ofp4fgnqfg8ezj0k0ukg', '2023-11-15 09:52:45', '2023-11-15 09:52:45'),
(10, 'https://res.cloudinary.com/tsix-project/image/upload/v1701704909/tsix/ughzo6o23jnhgfxwhfff.jpg', 'san-pham-thuoc-ban-an-edit-2_img_0', 'tsix/ughzo6o23jnhgfxwhfff', '2023-12-04 15:48:30', '2023-12-04 15:48:30'),
(10, 'https://res.cloudinary.com/tsix-project/image/upload/v1701704909/tsix/txboizkww7jchxltz0qd.jpg', 'san-pham-thuoc-ban-an-edit-2_img_1', 'tsix/txboizkww7jchxltz0qd', '2023-12-04 15:48:30', '2023-12-04 15:48:30'),
(23, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077476/tsix/iu1jqjufg3umhuqalhzd.jpg', 'ban-an-peak-hien-đai-mat-ceramic-van-may_img_0', 'tsix/iu1jqjufg3umhuqalhzd', '2023-12-20 13:04:38', '2023-12-20 13:04:38'),
(23, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077477/tsix/vxpereatiyuug7plcclc.jpg', 'ban-an-peak-hien-đai-mat-ceramic-van-may_img_1', 'tsix/vxpereatiyuug7plcclc', '2023-12-20 13:04:38', '2023-12-20 13:04:38'),
(24, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077724/tsix/cgcv4isgnbmslgefunfq.jpg', 'ban-an-lucia_img_0', 'tsix/cgcv4isgnbmslgefunfq', '2023-12-20 13:08:46', '2023-12-20 13:08:46'),
(24, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077724/tsix/sszqgv2k254adcyeviyr.jpg', 'ban-an-lucia_img_1', 'tsix/sszqgv2k254adcyeviyr', '2023-12-20 13:08:46', '2023-12-20 13:08:46'),
(24, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077723/tsix/immpgtb02ki68wy2twh0.jpg', 'ban-an-lucia_img_2', 'tsix/immpgtb02ki68wy2twh0', '2023-12-20 13:08:46', '2023-12-20 13:08:46'),
(24, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077724/tsix/g0fay9rx2oagq3cscxhh.jpg', 'ban-an-lucia_img_3', 'tsix/g0fay9rx2oagq3cscxhh', '2023-12-20 13:08:46', '2023-12-20 13:08:46'),
(24, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077723/tsix/acqlutang8h5uqszobhx.jpg', 'ban-an-lucia_img_4', 'tsix/acqlutang8h5uqszobhx', '2023-12-20 13:08:46', '2023-12-20 13:08:46'),
(25, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077896/tsix/tvw3tf7xfcku1btmt5dx.jpg', 'ghe-an-coastal-kd1085-18_img_0', 'tsix/tvw3tf7xfcku1btmt5dx', '2023-12-20 13:11:39', '2023-12-20 13:11:39'),
(25, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077897/tsix/stxx9wr0i5ayao9kmoid.jpg', 'ghe-an-coastal-kd1085-18_img_1', 'tsix/stxx9wr0i5ayao9kmoid', '2023-12-20 13:11:39', '2023-12-20 13:11:39'),
(25, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077896/tsix/gffv2ekqgkmsgew3uixf.jpg', 'ghe-an-coastal-kd1085-18_img_2', 'tsix/gffv2ekqgkmsgew3uixf', '2023-12-20 13:11:39', '2023-12-20 13:11:39'),
(25, 'https://res.cloudinary.com/tsix-project/image/upload/v1703077897/tsix/d5fprv6utodz5vhn8iug.jpg', 'ghe-an-coastal-kd1085-18_img_3', 'tsix/d5fprv6utodz5vhn8iug', '2023-12-20 13:11:39', '2023-12-20 13:11:39'),
(17, 'https://res.cloudinary.com/tsix-project/image/upload/v1703078014/tsix/tvx7qodqmu25jlpx84mi.jpg', 'd_img_0', 'tsix/tvx7qodqmu25jlpx84mi', '2023-12-20 13:13:36', '2023-12-20 13:13:36'),
(14, 'https://res.cloudinary.com/tsix-project/image/upload/v1703078141/tsix/gz3oul0wliff1fcufit6.jpg', 'ban-go-_img_0', 'tsix/gz3oul0wliff1fcufit6', '2023-12-20 13:15:43', '2023-12-20 13:15:43'),
(14, 'https://res.cloudinary.com/tsix-project/image/upload/v1703078141/tsix/vlupfiokkotvqntlsbc6.jpg', 'ban-go-_img_1', 'tsix/vlupfiokkotvqntlsbc6', '2023-12-20 13:15:43', '2023-12-20 13:15:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_order` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL DEFAULT 'delivery',
  `total_amount` int(11) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id_order`, `status`, `payment`, `total_amount`, `id_user`, `note`, `createdAt`, `updatedAt`) VALUES
(4, '2', 'online update', 0, 'lp46016w', '', '2023-12-02 09:37:51', '2023-12-12 09:32:53'),
(5, '-1', 'online', 0, 'admin001', 'o 3', '2023-12-02 09:38:38', '2023-12-20 13:48:52'),
(6, '1', 'online 2', 0, 'lp46016w', 'o 3 4 ', '2023-12-02 09:46:05', '2023-12-04 15:41:00'),
(7, '2', 'online update', 60000024, 'lp46016w', 'update note 4 status', '2023-12-02 09:47:35', '2023-12-20 13:48:48'),
(8, '3', 'COD', 36000048, 'lozi12fc', '', '2023-12-20 08:00:39', '2023-12-20 08:12:58'),
(9, '2', 'COD', 70650036, '002', 'tự đặt', '2023-12-20 08:06:03', '2023-12-20 13:48:45'),
(11, '3', 'COD', 127500012, '002', '123 ghi chu', '2023-12-20 12:22:35', '2023-12-20 12:23:09'),
(28, '1', 'COD', 23946000, '002', '', '2023-12-20 13:43:40', '2023-12-20 13:44:25'),
(29, '0', 'COD', 25446000, '002', 'giao nhanh', '2023-12-20 13:47:38', '2023-12-20 13:47:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id_order` int(11) NOT NULL,
  `id_pd` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id_order`, `id_pd`, `quantity`, `createdAt`, `updatedAt`) VALUES
(4, 10, 5, '2023-12-02 09:37:51', '2023-12-02 09:37:51'),
(4, 12, 2, '2023-12-02 09:37:51', '2023-12-02 09:37:51'),
(5, 10, 5, '2023-12-02 09:38:38', '2023-12-02 09:38:38'),
(5, 12, 2, '2023-12-02 09:38:38', '2023-12-02 09:38:38'),
(6, 10, 5, '2023-12-02 09:46:05', '2023-12-02 09:46:05'),
(6, 12, 2, '2023-12-02 09:46:05', '2023-12-02 09:46:05'),
(7, 10, 5, '2023-12-02 09:47:35', '2023-12-02 09:47:35'),
(7, 12, 2, '2023-12-02 09:47:35', '2023-12-02 09:47:35'),
(8, 10, 3, '2023-12-20 08:00:39', '2023-12-20 08:00:39'),
(8, 12, 4, '2023-12-20 08:00:39', '2023-12-20 08:00:39'),
(9, 10, 3, '2023-12-20 08:06:03', '2023-12-20 08:06:03'),
(9, 12, 3, '2023-12-20 08:06:03', '2023-12-20 08:06:03'),
(9, 18, 3, '2023-12-20 08:06:03', '2023-12-20 08:06:03'),
(10, 10, 10, '2023-12-20 10:23:19', '2023-12-20 10:23:19'),
(10, 12, 1, '2023-12-20 10:23:19', '2023-12-20 10:23:19'),
(10, 18, 10, '2023-12-20 10:23:19', '2023-12-20 10:23:19'),
(11, 10, 1, '2023-12-20 12:22:35', '2023-12-20 12:22:35'),
(11, 12, 1, '2023-12-20 12:22:35', '2023-12-20 12:22:35'),
(11, 18, 10, '2023-12-20 12:22:35', '2023-12-20 12:22:35'),
(12, 10, 3, '2023-12-20 12:25:38', '2023-12-20 12:25:38'),
(12, 12, 1, '2023-12-20 12:25:38', '2023-12-20 12:25:38'),
(13, 10, 3, '2023-12-20 12:25:52', '2023-12-20 12:25:52'),
(13, 12, 1, '2023-12-20 12:25:52', '2023-12-20 12:25:52'),
(14, 10, 3, '2023-12-20 12:26:03', '2023-12-20 12:26:03'),
(14, 12, 1, '2023-12-20 12:26:03', '2023-12-20 12:26:03'),
(15, 10, 3, '2023-12-20 12:26:03', '2023-12-20 12:26:03'),
(15, 12, 1, '2023-12-20 12:26:03', '2023-12-20 12:26:03'),
(16, 10, 3, '2023-12-20 12:26:03', '2023-12-20 12:26:03'),
(16, 12, 1, '2023-12-20 12:26:03', '2023-12-20 12:26:03'),
(17, 10, 3, '2023-12-20 12:26:03', '2023-12-20 12:26:03'),
(17, 12, 1, '2023-12-20 12:26:03', '2023-12-20 12:26:03'),
(18, 10, 3, '2023-12-20 12:26:04', '2023-12-20 12:26:04'),
(18, 12, 1, '2023-12-20 12:26:04', '2023-12-20 12:26:04'),
(19, 10, 3, '2023-12-20 12:26:04', '2023-12-20 12:26:04'),
(19, 12, 1, '2023-12-20 12:26:04', '2023-12-20 12:26:04'),
(20, 10, 3, '2023-12-20 12:26:04', '2023-12-20 12:26:04'),
(20, 12, 1, '2023-12-20 12:26:04', '2023-12-20 12:26:04'),
(21, 10, 3, '2023-12-20 12:26:57', '2023-12-20 12:26:57'),
(21, 12, 1, '2023-12-20 12:26:57', '2023-12-20 12:26:57'),
(22, 10, 3, '2023-12-20 12:29:33', '2023-12-20 12:29:33'),
(22, 12, 1, '2023-12-20 12:29:33', '2023-12-20 12:29:33'),
(23, 10, 3, '2023-12-20 12:30:36', '2023-12-20 12:30:36'),
(23, 12, 1, '2023-12-20 12:30:36', '2023-12-20 12:30:36'),
(24, 10, 3, '2023-12-20 12:31:00', '2023-12-20 12:31:00'),
(24, 12, 1, '2023-12-20 12:31:00', '2023-12-20 12:31:00'),
(25, 10, 3, '2023-12-20 12:31:56', '2023-12-20 12:31:56'),
(25, 12, 1, '2023-12-20 12:31:56', '2023-12-20 12:31:56'),
(26, 10, 3, '2023-12-20 12:32:19', '2023-12-20 12:32:19'),
(26, 12, 1, '2023-12-20 12:32:19', '2023-12-20 12:32:19'),
(27, 25, 3, '2023-12-20 13:39:55', '2023-12-20 13:39:55'),
(27, 24, 3, '2023-12-20 13:39:55', '2023-12-20 13:39:55'),
(27, 23, 1, '2023-12-20 13:39:55', '2023-12-20 13:39:55'),
(27, 18, 1, '2023-12-20 13:39:55', '2023-12-20 13:39:55'),
(27, 17, 2, '2023-12-20 13:39:55', '2023-12-20 13:39:55'),
(28, 25, 6, '2023-12-20 13:43:40', '2023-12-20 13:43:40'),
(28, 24, 2, '2023-12-20 13:43:40', '2023-12-20 13:43:40'),
(28, 18, 1, '2023-12-20 13:43:40', '2023-12-20 13:43:40'),
(29, 25, 6, '2023-12-20 13:47:38', '2023-12-20 13:47:38'),
(29, 24, 3, '2023-12-20 13:47:38', '2023-12-20 13:47:38'),
(29, 18, 1, '2023-12-20 13:47:38', '2023-12-20 13:47:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `id_user` varchar(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id_post`, `title`, `image`, `content`, `id_user`, `slug`, `createdAt`, `updatedAt`) VALUES
(3, 'bài đăng 1', 'https://res.cloudinary.com/tsix-project/image/upload/v1703085875/tsix/zzshkyqvmwyzv6wyvnwa.jpg', 'Bàn ngoài trời ôi đẹp làm sao', '002', 'bai-đang-1', '2023-12-20 15:24:36', '2023-12-20 15:24:36'),
(4, 'testing loading', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086222/tsix/ovtt3psy6mwdt8mn29sz.jpg', 'beautiful...', '002', 'testing-loading', '2023-12-20 15:30:23', '2023-12-20 15:30:23'),
(5, 'test 2', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086723/tsix/bvfehgc9sg4dso7iktdy.jpg', 'bàn trawgns', '002', 'test-2', '2023-12-20 15:38:45', '2023-12-20 15:38:45'),
(6, '123', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086785/tsix/uos6cwd5gadvv8yxkivw.webp', '1', '002', '123', '2023-12-20 15:39:47', '2023-12-20 15:39:47'),
(7, 'test 3', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086814/tsix/nhb2tfzblvjstbhxjrer.jpg', 'bàn3', '002', 'test-3', '2023-12-20 15:40:15', '2023-12-20 15:40:15'),
(8, 'test 4', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087071/tsix/euv6t4pymwvqflp55dyx.jpg', 'b', '002', 'test-4', '2023-12-20 15:44:32', '2023-12-20 15:44:32'),
(10, 'testing 2', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087896/tsix/qkbkmbm3siql5p7ydqlq.jpg', 'gi', '002', 'testing-2', '2023-12-20 15:58:18', '2023-12-20 15:58:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_pd` int(10) UNSIGNED NOT NULL,
  `id_subcate` int(11) NOT NULL DEFAULT 0,
  `name_pd` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `material` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `inventory` int(11) NOT NULL DEFAULT 1,
  `slug` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_pd`, `id_subcate`, `name_pd`, `image`, `price`, `material`, `size`, `brand`, `description`, `inventory`, `slug`, `createdAt`, `updatedAt`) VALUES
(10, 5, 'Sản phẩm thuộc bàn ăn', 'https://res.cloudinary.com/tsix-project/image/upload/v1700041911/tsix/gvvnlcimsrjmvcs6ocle.jpg', 12000000, 'nước', '1m5', 'mèo', 'test độ dài: \r\nNot shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options. test độ dài . test độ dài . test độ dài. test độ dài. test độ dài. test độ dài', 55, 'san-pham-thuoc-ban-an', '2023-11-09 08:50:17', '2023-12-04 15:49:08'),
(12, 8, 'Bàn học', 'https://res.cloudinary.com/tsix-project/image/upload/v1700041990/tsix/ck2twbbgv6wigt6fpxha.webp', 12, '123', '123', '312', 'saaaaaaaa 21 2e2e ', 6, 'ban-hoc', '2023-11-10 04:01:51', '2023-11-15 09:53:11'),
(14, 5, 'Bàn gỗ kính', 'https://res.cloudinary.com/tsix-project/image/upload/v1703078140/tsix/zcw26siydsqq5xqzph81.jpg', 3200000, 'Gỗ', '2m8', 'T-six', 'Bàn gỗ mặt kính và ghế gỗ cứng', 2, 'ban-go-kinh', '2023-11-12 14:36:11', '2023-12-20 13:16:06'),
(15, 5, 'Bàn gỗ nhỏ', 'https://res.cloudinary.com/tsix-project/image/upload/v1700042188/tsix/ycfzhsn8hui3omcnpq7s.jpg', 0, '666', '666m', 't6', 'fsef', 5, 'ban-go-nho', '2023-11-12 14:36:15', '2023-11-15 10:03:01'),
(17, 5, 'Ghế gỗ đơn giản', 'https://res.cloudinary.com/tsix-project/image/upload/v1700317512/tsix/urngtecuswul0agylzml.jpg', 150000, 'Gỗ ép', '1m', 'Không rõ', 'ghế gỗ sạch đẹp', 81, 'ghe-go-đon-gian', '2023-11-12 14:36:20', '2023-12-20 13:13:36'),
(18, 13, 'Đồng hồ', 'https://res.cloudinary.com/tsix-project/image/upload/v1700654874/tsix/htonupglpzs7v6hbwftn.jpg', 11550000, 'Hợp kim titan', '3m1', 'Rolex', 'T', 0, 'đong-ho', '2023-11-12 14:36:23', '2023-11-22 12:07:56'),
(23, 5, 'Bàn ăn Peak hiện đại mặt Ceramic vân mây', 'https://res.cloudinary.com/tsix-project/image/upload/v1703077476/tsix/zrmpw3xzdekuqxxz9eo9.jpg', 4490000, 'Mặt bàn Ceramic nhập khẩu Ý chịu nhiệt', 'D2000 - R1000 - C750 mm', 'Peak', 'Bàn ăn Peak hiện đại với bề mặt Ceramic được nhập khẩu từ Ý. Mặt Ceramic có khả năng chịu nhiệt tốt với họa tiết vân mây tinh xảo tạo cảm giác vừa vững chắc, vừa uyển chuyển. Chân bàn được thiết kế theo hình tam giác với các góc cạnh bo tròn hiện đại cùng những đường nét uốn lượn mềm mại. Bàn ăn Peak với tông màu trắng trang nhã sẽ mang đến một không gian sống sang trọng và đẳng cấp.', 17, 'ban-an-peak-hien-đai-mat-ceramic-van-may', '2023-12-20 13:04:38', '2023-12-20 13:04:38'),
(24, 5, 'Bàn ăn Lucia', 'https://res.cloudinary.com/tsix-project/image/upload/v1703077723/tsix/tnzmgkgprbsw0lua9s6y.jpg', 1500000, 'chân kim loại - mặt đá', 'D1350 - R1350 - C750 mm', 'Lucia', 'Chưa có bài đánh giá.', 0, 'ban-an-lucia', '2023-12-20 13:08:46', '2023-12-20 13:08:46'),
(25, 8, 'Ghế ăn Coastal KD1085-18', 'https://res.cloudinary.com/tsix-project/image/upload/v1703077897/tsix/mqlfsijii8udbrh077rb.jpg', 1566000, 'Gỗ Ash - nệm bọc vải', 'D435 - R525 - C840 mm', 'Coastal', 'Coastal mang đậm chất Việt khi khéo léo dung hòa được những nét đẹp lấy cảm hứng từ miền duyên hải nước ta với các vật liệu cao cấp, lối thiết kế hiện đại. Ghế ăn Coastal với bốn chân gỗ chắc chắn, được bọc vải êm ái cùng thiết kế phù hợp với thể trạng người Việt. Tất cả những phần tiếp xúc với cơ thể đều mềm mại, thanh thoát. Ngôn ngữ thiết kế của Coastal kết hợp đường nét uyển chuyển và tự nhiên, chất vải xanh tươi mát mang màu sắc của biển cùng nét vững chãi, tông gỗ ấm áp tạo nên sự tương phản hài hòa tựa như biển rộng bí ẩn và đất liền thân thuộc.', 156, 'ghe-an-coastal-kd1085-18', '2023-12-20 13:11:39', '2023-12-20 13:11:50'),
(30, 5, 'Bàn Ăn Gỗ Cao Su Màu Xám ', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087281/tsix/yakipwi0tzkaeohujcur.jpg', 987000, 'Gỗ cao su ', 'D120xR75xC75', 'Ken', 'Tính năng nổi bật:\r\n\r\nSản phẩm được hoàn thiện với chất liệu gỗ MDF chất lượng với bề mặt ghế phủ lớp Veneer tần bì giúp bảo vệ lớp gỗ tốt, chống tình trạng mối mọt hay bị biến dạng bởi tác động nhiệt của thời tiết.\r\n\r\nMặt bàn và các chân ghế được hoàn thiện với chất lượng cao, mang lại tổng thể vừa đẹp mắt vừa có độ bền theo năm tháng. \r\n\r\n \r\nLợi ích:\r\n\r\nTính đa năng cao, có thể sử dụng trong nhiều mục đích khác nhau như: ăn uống, bàn trò chơi hay dùng để học tập, làm việc.\r\n\r\nBàn ăn giúp gắn kết mọi thành viên trong gia đình trong mọi bữa ăn.\r\n\r\nBàn ăn KENNY kích thước lớn rất phù hợp để tổ chức tiệc tối hoặc các sự kiện đặc biệt quan trọng.\r\n\r\nBàn ăn KENNY mang sắc xám đơn giản cùng thiết kế vân gỗ giúp tạo thêm điểm nhấn đặc biệt trong không gian bếp.\r\n\r\n \r\nKhông gian thích hợp:\r\n\r\nPhù hợp để đặt ở các phòng bếp-phòng ăn trong mọi gia đình. Tuyệt vời hơn, bạn có thể sử dụng bàn KENNY để làm nơi trang trí phòng khách như đặt tranh ảnh, hoa, nến, … hoặc thậm chí bạn có thể tận dụng để làm việc, làm bài tập.\r\n\r\n----------\r\n\r\nSản phẩm	Bàn ăn\r\nBộ sưu tập	KENNY\r\nKích cỡ	L120xW75xH75\r\nMàu sắc	Màu xám\r\nChất liệu	Rubber-wood-MDF-Ash-veneer\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS\r\n----------', 20, 'ban-an-go-cao-su-mau-xam-', '2023-12-20 15:48:01', '2023-12-20 15:48:01'),
(31, 6, 'Bàn làm việc Gỗ thông Gỗ đậm CHESTER', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087401/tsix/ozrhpcrkcot1sqszyk87.webp', 4193000, 'Gỗ thông', 'W100 x D60 x H170', 'CHESTER', 'Sản phẩm	Bàn làm việc\r\nBộ sưu tập	CHESTER\r\nKích cỡ	W100 x D60 x H170\r\nMàu sắc	Màu gỗ đậm\r\nChất liệu	Gỗ thông\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS\r\n----------\r\nLàm việc tại nhà chẳng là chuyện dễ dàng với những ai vốn đã quen bầu không gian công sở, đặc biệt là những người hay mất tập trung bởi hàng tá những vật dụng bừa bộn khi làm việc như giấy tờ, bút viết, tài liệu...\r\n\r\nHãy tạm biệt ngay với những giây phút mất tập trung ấy với chiếc bàn làm việc CHESTER, một thiết kế đặc trưng của BAYA ngay!\r\n\r\nChất liệu: Gỗ thông cao cấp, độ bền cao.\r\nThiết kế: Gồm 1 hộc kéo bên dưới và một hộc cửa lùa bên trên. Với hộc cửa lùa, bạn có thể tận dụng làm kệ sách nhỏ, phần trống trên kệ làm nơi.\r\nĐặt sản phẩm nơi khô thoáng\r\nKhông kéo, đẩy sản phẩm trên sàn\r\nKhông để các vật nóng hoặc lạnh tiếp xúc trực tiếp với bề mặt sản phẩm\r\nSử dụng miếng lót ly/đế lót trước khi đặt đồ vật lên bề mặt sản phẩm\r\nLuôn lau sạch ngay mọi vết đổ và lau khô bằng vải mềm\r\nKhông sử dụng hóa chất hoặc các chất tẩy rửa ăn mòn trên sản phẩm\r\nKhông dùng vật sắc nhọn chà xát lên sản phẩm\"', 20, 'ban-lam-viec-go-thong-go-đam-chester', '2023-12-20 15:50:02', '2023-12-20 15:50:02'),
(32, 6, 'Bàn Học Liền Giá Sách gỗ nâu STUDENT', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087735/tsix/h88ynsgy31zyzpux0kyb.webp', 981000, 'gỗ nâu', 'D51 x W94 x H128', 'STUDENT', '----------\r\n \r\nSản phẩm	Bàn làm việc\r\nBộ sưu tập	STUDENT\r\nKích cỡ	D51 x W94 x H128\r\nMàu sắc	Nâu / Đen\r\nChất liệu	MFC / Kim loại\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS\r\n----------\r\nBộ sưu tập nội thất văn phòng Student: Sự kết hợp hoàn hảo giữa Thẩm mỹ và Công năng sử dụng\r\n\r\nTrong nhịp sống hiện đại, nơi mà hoạt động làm việc và học tập tại nhà trở nên ngày càng quan trọng, việc chọn một sản phẩm bàn học hay tủ kệ văn phòng phù hợp là điều không thể thiếu. Những vật dụng này không chỉ phải đảm bảo tính chất lượng và chắc chắn mà còn phải thể hiện sự thẩm mỹ và phù hợp với môi trường làm việc và nội thất trong gia đình. Bộ sưu tập Student chính là sự lựa chọn hoàn hảo cho nhu cầu của bạn.\r\n\r\nKhung sắt và về mặt hoàn thiện xuất sắc\r\n\r\nKhung sắt là yếu tố quan trọng tạo nên sự chắc chắn và độ bền của các sản phẩm nội thất trong bộ sưu tập Student. Khung sắt được chế tạo bằng công nghệ tiên tiến, giúp đảm bảo tính cứng cáp và độ bền vượt trội. Với mức độ hoàn thiện cao, bạn có thể yên tâm sử dụng các sản phẩm trong thời gian dài mà không cần lo lắng về sự trầy xước hoặc biến dạng.\r\n\r\nMặt bàn và ngăn tủ kệ được làm từ gỗ công nghiệp cao cấp, chất lượng và hoàn thiện tinh tế. Gỗ công nghiệp không chỉ giúp bảo vệ môi trường mà còn đảm bảo tính chất lượng và đẹp mắt. Sự hoàn thiện tỉ mỉ trên mặt gỗ tạo nên một bề mặt mịn màng và dễ dàng vệ sinh, giúp bàn luôn giữ được vẻ đẹp ban đầu suốt thời gian dài.\r\n\r\nThiết kế hiện đại và thẩm mỹ\r\n\r\nBộ sản phẩm Student không chỉ có tính chất lượng và chắc chắn mà còn mang đậm phong cách hiện đại. Thiết kế đơn giản, gọn gàng và tiện dụng giúp các sản phẩm phù hợp với mọi không gian làm việc và gia đình. Bạn có thể dễ dàng kết hợp bàn, tủ kệ với các loại ghế và trang trí nội thất khác để tạo nên một môi trường làm việc thú vị và sáng tạo.\r\n\r\n• Thường xuyên lau sản phẩm bằng khăn ẩm với nước hoặc dung dịch vệ sinh chuyên dụng dành cho gỗ, lau khô lại bằng khăn mềm\r\n• Đặt sản phẩm tại nơi khô thoáng, tránh độ ẩm cao, tránh nhiệt độ cao, nguồn sáng mạnh và các vật dễ cháy\r\n• Tránh để sản phẩm tiếp xúc với nước và nhiệt độ cao trong thời gian dài. Khi sản phẩm bị ướt, cần lau khô ngay lập tức\r\n• Không dùng vật sắc nhọn chà xát sản phẩm', 0, 'ban-hoc-lien-gia-sach-go-nau-student', '2023-12-20 15:55:35', '2023-12-20 15:55:35'),
(33, 6, 'Bàn Học JOY 80', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087877/tsix/bvpoaxym83e9m2s6ljn3.webp', 1768000, 'MFC / Kim loại', '	D48xW80xH73 ', 'JOY', 'Sản phẩm	Bàn làm việc\r\nBộ sưu tập	JOY\r\nKích cỡ	D48xW80xH73 ∙ With wheels\r\nMàu sắc	Gỗ sáng / Trắng\r\nChất liệu	MFC / Kim loại\r\nXuất xứ	Trung Quốc\r\nĐơn vị	PCS\r\n----------\r\nTrong nhịp sống hiện đại, nơi mà hoạt động làm việc và học tập tại nhà trở nên ngày càng quan trọng, việc chọn một sản phẩm bàn học/làm việc phù hợp cho con bạn và các thành viên khác trong gia đình là điều không thể thiếu.\r\n\r\nNhững vật dụng này không chỉ phải đảm bảo tính chất lượng và chắc chắn mà còn phải thể hiện sự thẩm mỹ và phù hợp với môi trường làm việc và nội thất trong gia đình. Bộ sưu tập Joy chính là sự lựa chọn hoàn hảo cho nhu cầu của bạn.\r\n\r\nKhung sắt sơn tĩnh điện chắc chắn\r\n\r\nKhung sắt là yếu tố quan trọng tạo nên sự chắc chắn và độ bền của bàn học Joy. Khung sắt được chế tạo bằng công nghệ tiên tiến, giúp đảm bảo tính cứng cáp và độ bền vượt trội. Với mức độ hoàn thiện cao, bạn có thể yên tâm sử dụng các sản phẩm trong thời gian dài mà không cần lo lắng về sự trầy xước hoặc biến dạng.\r\n\r\nMặt bàn được làm từ gỗ công nghiệp cao cấp, chất lượng và hoàn thiện tinh tế. Gỗ công nghiệp không chỉ giúp bảo vệ môi trường mà còn đảm bảo tính chất lượng và đẹp mắt. Sự hoàn thiện tỉ mỉ trên mặt gỗ tạo nên một bề mặt mịn màng và dễ dàng vệ sinh, giúp bàn luôn giữ được vẻ đẹp ban đầu suốt thời gian dài.\r\n\r\nThiết kế hiện đại và thẩm mỹ\r\n\r\nBộ sản phẩm Joy không chỉ có tính chất lượng và chắc chắn mà còn mang đậm phong cách hiện đại. Thiết kế đơn giản, gọn gàng và tiện dụng giúp các sản phẩm phù hợp với mọi không gian làm việc và gia đình. Bạn có thể dễ dàng kết hợp bàn, tủ kệ với các loại ghế và trang trí nội thất khác để tạo nên một môi trường làm việc thú vị và sáng tạo.', 20, 'ban-hoc-joy-80', '2023-12-20 15:57:58', '2023-12-20 15:57:58'),
(34, 15, 'Giường gỗ sồi 1m6 LUCAS', 'https://res.cloudinary.com/tsix-project/image/upload/v1703088100/tsix/pkhlp69sahv7ecmjxq9i.jpg', 8991000, 'MFC', '	L200xW160xH102', 'LUCAS', 'Giường LUCAS là một sản phẩm nội thất đa năng, mang đến cho bạn không gian nghỉ ngơi thoải mái và tiện nghi. Giường có kích thước 1670 x 2146 x 1020 mm, phù hợp với nhiều không gian phòng ngủ khác nhau.\r\n\r\nGiường được làm từ gỗ  cao cấp, có khả năng chống ẩm, chống mối mọt, mang đến độ bền cao. Thiết kế giường đơn giản, hiện đại, với đầu giường bọc nệm êm ái. Giường có thể kết hợp với nhiều loại nệm khác nhau, phù hợp với sở thích và nhu cầu của người sử dụng.\r\n\r\nDưới đây là một số ưu điểm nổi bật của giường LUCAS :\r\n\r\nChất liệu cao cấp, bền bỉ\r\nThiết kế đơn giản, hiện đại\r\nĐầu giường bọc nệm êm ái\r\n----------\r\nSản phẩm	Giường\r\nBộ sưu tập	LUCAS\r\nKích cỡ	L200xW160xH102\r\nMàu sắc	Oak\r\nChất liệu	MFC\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS\r\n----------', 20, 'giuong-go-soi-1m6-lucas', '2023-12-20 16:01:41', '2023-12-20 16:01:41'),
(60, 5, 'Bàn Ăn Vân Gỗ Sồi CARINE', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086252/tsix/er8ysoco7gwntef05td2.webp', 3494000, 'gỗ sồi veneer cao cấp', '20', 'CARINE', 'Thanh lịch, quý phái, và đầy tiện ích! Bạn còn có thể đòi hỏi gì nữa ở chiếc bàn cà phê CARINE tuyệt vời này chứ!\r\n\r\nĐược làm từ chất liệu gỗ sồi veneer cao cấp và khung sắt sơn tĩnh điện, chiếc bàn cà phê CARINE quả thật là một điểm nhấn bắt mắt mà không ai có thể bỏ lỡ.\r\n\r\nVà đừng bao giờ tự giới hạn bản thân mình hết! Phòng khách hay phòng ngủ, chiếc bàn cà phê này đều phù hợp hết cả! Sản phẩm là một thiết kế độc quyền của BAYA.\r\n\r\n\r\n \r\n\r\n\r\n----------\r\nSản phẩm	Bàn cà phê\r\nBộ sưu tập	CARINE\r\nKích cỡ	H50xDia80\r\nMàu sắc	Light-Wood-Black\r\nChất liệu	MDF-Oak-Veneer-Metal\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS\r\n----------\r\n• Đặt sản phẩm nơi khô thoáng\r\n\r\n• Không kéo, đẩy sản phẩm trên sàn gồ ghề\r\n\r\n• Luôn lau sạch mọi vết đổ, bẩn với vải mềm\r\n\r\n• Không sử dụng vật sắc nhọn chà xát lên sản phẩm', 20, 'ban-an-van-go-soi-carine', '2023-12-20 15:30:52', '2023-12-20 15:30:52'),
(61, 6, 'Bàn Làm Việc Liền Giá Sách gỗ sáng STUDENT', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086879/tsix/vwqlo9s86nbklpgrn54s.webp', 1791000, 'MFC / Kim loại', 'D74xW48xH146.5', 'STUDENT', '\r\n \r\nSản phẩm	Bàn làm việc\r\nBộ sưu tập	STUDENT\r\nKích cỡ	D74xW48xH146.5\r\nMàu sắc	Nâu / Đen\r\nChất liệu	MFC / Kim loại\r\nXuất xứ	Trung Quốc\r\nĐơn vị	PCS\r\n----------\r\nBộ sưu tập nội thất văn phòng Student: Sự kết hợp hoàn hảo giữa Thẩm mỹ và Công năng sử dụng\r\n\r\nTrong nhịp sống hiện đại, nơi mà hoạt động làm việc và học tập tại nhà trở nên ngày càng quan trọng, việc chọn một sản phẩm bàn học hay tủ kệ văn phòng phù hợp là điều không thể thiếu. Những vật dụng này không chỉ phải đảm bảo tính chất lượng và chắc chắn mà còn phải thể hiện sự thẩm mỹ và phù hợp với môi trường làm việc và nội thất trong gia đình. Bộ sưu tập Student chính là sự lựa chọn hoàn hảo cho nhu cầu của bạn.\r\n\r\nKhung sắt và về mặt hoàn thiện xuất sắc\r\n\r\nKhung sắt là yếu tố quan trọng tạo nên sự chắc chắn và độ bền của các sản phẩm nội thất trong bộ sưu tập Student. Khung sắt được chế tạo bằng công nghệ tiên tiến, giúp đảm bảo tính cứng cáp và độ bền vượt trội. Với mức độ hoàn thiện cao, bạn có thể yên tâm sử dụng các sản phẩm trong thời gian dài mà không cần lo lắng về sự trầy xước hoặc biến dạng.\r\n\r\nMặt bàn và ngăn tủ kệ được làm từ gỗ công nghiệp cao cấp, chất lượng và hoàn thiện tinh tế. Gỗ công nghiệp không chỉ giúp bảo vệ môi trường mà còn đảm bảo tính chất lượng và đẹp mắt. Sự hoàn thiện tỉ mỉ trên mặt gỗ tạo nên một bề mặt mịn màng và dễ dàng vệ sinh, giúp bàn luôn giữ được vẻ đẹp ban đầu suốt thời gian dài.\r\n\r\nThiết kế hiện đại và thẩm mỹ\r\n\r\nBộ sản phẩm Student không chỉ có tính chất lượng và chắc chắn mà còn mang đậm phong cách hiện đại. Thiết kế đơn giản, gọn gàng và tiện dụng giúp các sản phẩm phù hợp với mọi không gian làm việc và gia đình. Bạn có thể dễ dàng kết hợp bàn, tủ kệ với các loại ghế và trang trí nội thất khác để tạo nên một môi trường làm việc thú vị và sáng tạo.', 20, 'ban-lam-viec-lien-gia-sach-go-sang-student', '2023-12-20 15:41:20', '2023-12-20 15:41:20'),
(70, 6, 'Bàn Học JOY 60', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086509/tsix/ndjs0qnhiwfwqq5tux7f.webp', 791000, 'MFC / Kim loại', 'D48xW60xH73', 'JOY 60', 'Trong nhịp sống hiện đại, nơi mà hoạt động làm việc và học tập tại nhà trở nên ngày càng quan trọng, việc chọn một sản phẩm bàn học/làm việc phù hợp cho con bạn và các thành viên khác trong gia đình là điều không thể thiếu.\r\n\r\nNhững vật dụng này không chỉ phải đảm bảo tính chất lượng và chắc chắn mà còn phải thể hiện sự thẩm mỹ và phù hợp với môi trường làm việc và nội thất trong gia đình. Bộ sưu tập Joy chính là sự lựa chọn hoàn hảo cho nhu cầu của bạn.\r\n\r\nKhung sắt sơn tĩnh điện chắc chắn\r\n\r\nKhung sắt là yếu tố quan trọng tạo nên sự chắc chắn và độ bền của bàn học Joy. Khung sắt được chế tạo bằng công nghệ tiên tiến, giúp đảm bảo tính cứng cáp và độ bền vượt trội. Với mức độ hoàn thiện cao, bạn có thể yên tâm sử dụng các sản phẩm trong thời gian dài mà không cần lo lắng về sự trầy xước hoặc biến dạng.\r\n\r\nMặt bàn được làm từ gỗ công nghiệp cao cấp, chất lượng và hoàn thiện tinh tế. Gỗ công nghiệp không chỉ giúp bảo vệ môi trường mà còn đảm bảo tính chất lượng và đẹp mắt. Sự hoàn thiện tỉ mỉ trên mặt gỗ tạo nên một bề mặt mịn màng và dễ dàng vệ sinh, giúp bàn luôn giữ được vẻ đẹp ban đầu suốt thời gian dài.\r\n\r\nThiết kế hiện đại và thẩm mỹ\r\n\r\nBộ sản phẩm Joy không chỉ có tính chất lượng và chắc chắn mà còn mang đậm phong cách hiện đại. Thiết kế đơn giản, gọn gàng và tiện dụng giúp các sản phẩm phù hợp với mọi không gian làm việc và gia đình. Bạn có thể dễ dàng kết hợp bàn, tủ kệ với các loại ghế và trang trí nội thất khác để tạo nên một môi trường làm việc thú vị và sáng tạo.', 20, 'ban-hoc-joy-60', '2023-12-20 15:35:11', '2023-12-20 15:53:43'),
(234, 5, 'Bàn ăn tròn Tokyo FD 120', 'https://res.cloudinary.com/tsix-project/image/upload/v1703085251/tsix/x601wzj97cdacqlkancj.jpg', 38570000, 'Chân gỗ beech - Mặt kính trắng trong cường lực', 'D1200-R1200-C750 mm', 'Tokyo FD 120', 'Bàn ăn tròn Tokyo FD 120 được nhập khẩu từ thương hiệu nổi tiếng Calligaris của Ý có thiết kế theo phong cách bàn ăn cổ điển. Bàn ăn nổi bật nhờ chân đế bằng gỗ sồi cứng với các cạnh tròn, mặt bàn bằng kính cường lực, 4 chân với các đường xiên vẽ chữ \"X\" được nối chính giữa bởi một yếu tố kết nối kim loại. Với những thiết kế đặc biệt trên, bàn ăn Tokyo mang đến sự thoải mái tuyệt đối cho tất cả mọi người.', 20, 'ban-an-tron-tokyo-fd-120', '2023-12-20 15:14:12', '2023-12-20 15:14:12'),
(253, 5, 'Bàn Ăn Gỗ Cao Su Màu Xám Vân Gỗ KENNY', 'https://res.cloudinary.com/tsix-project/image/upload/v1703085605/tsix/nemikjkxplqehmllqdwc.webp', 3591000, 'Gỗ Cao Su ', 'D120xR75xC75', 'KENNY', 'Tính năng nổi bật:\r\n\r\nSản phẩm được hoàn thiện với chất liệu gỗ MDF chất lượng với bề mặt ghế phủ lớp Veneer tần bì giúp bảo vệ lớp gỗ tốt, chống tình trạng mối mọt hay bị biến dạng bởi tác động nhiệt của thời tiết.\r\n\r\nMặt bàn và các chân ghế được hoàn thiện với chất lượng cao, mang lại tổng thể vừa đẹp mắt vừa có độ bền theo năm tháng. \r\n\r\n \r\nLợi ích:\r\n\r\nTính đa năng cao, có thể sử dụng trong nhiều mục đích khác nhau như: ăn uống, bàn trò chơi hay dùng để học tập, làm việc.\r\n\r\nBàn ăn giúp gắn kết mọi thành viên trong gia đình trong mọi bữa ăn.\r\n\r\nBàn ăn KENNY kích thước lớn rất phù hợp để tổ chức tiệc tối hoặc các sự kiện đặc biệt quan trọng.\r\n\r\nBàn ăn KENNY mang sắc xám đơn giản cùng thiết kế vân gỗ giúp tạo thêm điểm nhấn đặc biệt trong không gian bếp.\r\n\r\n \r\nKhông gian thích hợp:\r\n\r\nPhù hợp để đặt ở các phòng bếp-phòng ăn trong mọi gia đình. Tuyệt vời hơn, bạn có thể sử dụng bàn KENNY để làm nơi trang trí phòng khách như đặt tranh ảnh, hoa, nến, … hoặc thậm chí bạn có thể tận dụng để làm việc, làm bài tập.\r\n\r\n----------\r\n\r\nSản phẩm	Bàn ăn\r\nBộ sưu tập	KENNY\r\nKích cỡ	L120xW75xH75\r\nMàu sắc	Màu xám\r\nChất liệu	Rubber-wood-MDF-Ash-veneer\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS', 20, 'ban-an-go-cao-su-mau-xam-van-go-kenny', '2023-12-20 15:20:07', '2023-12-20 15:20:07'),
(264, 5, 'Bàn Ăn MDF Chân Sắt VERONA', 'https://res.cloudinary.com/tsix-project/image/upload/v1703085979/tsix/kebhp5ucvpvvychvnn55.webp', 995000, 'Gỗ công nghiệp bền chắc', 'D75xR75xC75', 'VERONA', 'Bàn ăn VERONA nổi bật với màu trắng tinh khôi được làm từ gỗ công nghiệp bền chắc. Rất phù hợp với những gia đình ít người và không gian phòng bếp hạn chế. Mặt bàn được xử lý kỹ càng, mang vẻ đẹp tinh xảo. Chân bàn làm từ kim loại, cho độ cứng cáp và chắc chắn cao. Bạn có thể kết hợp bàn cùng các sản phẩm khác trong cùng bộ sưu tập VERONA để hoàn thiện nội thất phòng ăn của gia đình bạn.\r\n----------\r\nSản phẩm	Bàn ăn\r\nBộ sưu tập	VERONA\r\nKích cỡ	L75xW75xH75 ∙ Black legs\r\nMàu sắc	Xám/ trắng\r\nChất liệu	MDF-Faux-granite\r\nXuất xứ	Việt Nam\r\nKiểu dáng	Functional\r\nĐơn vị	PCS\r\n----------\r\n• Đặt sản phẩm tại nơi khô ráo, thoáng mát; tránh để lâu ở những nơi ẩm thấp hay có nhiệt độ cao\r\n\r\n• Vệ sinh sản phẩm bằng khăn ẩm, sau đó lau khô.\r\n\r\n• Không dùng vật sắc nhọn chà xát sản phẩm', 20, 'ban-an-mdf-chan-sat-verona', '2023-12-20 15:26:20', '2023-12-20 15:26:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategories`
--

CREATE TABLE `subcategories` (
  `id_subcate` int(11) NOT NULL,
  `name_subcate` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `id_cate` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `subcategories`
--

INSERT INTO `subcategories` (`id_subcate`, `name_subcate`, `slug`, `id_cate`, `createdAt`, `updatedAt`) VALUES
(5, 'bàn ăn', 'ban-an', 17, '2023-11-09 07:42:10', '2023-11-09 07:42:10'),
(6, 'bàn làm việc update', 'ban-lam-viec-update', 17, '2023-11-09 07:42:27', '2023-11-14 09:12:08'),
(7, 'Ghế làm việc 2', 'ghe-lam-viec', 18, '2023-11-09 07:42:39', '2023-11-14 09:09:27'),
(8, 'Ghế gỗ', 'ghe-go', 18, '2023-11-09 07:42:44', '2023-11-09 07:42:44'),
(9, 'Ghế nhựa', 'ghe-nhua', 18, '2023-11-09 07:42:50', '2023-11-09 07:42:50'),
(13, 'new trang tri', 'new-trang-tri', 21, '2023-11-14 09:15:06', '2023-11-14 09:15:06'),
(15, 'Tủ quần áo', 'tu-quan-ao', 20, '2023-12-20 14:52:38', '2023-12-20 14:52:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `name`, `phone`, `address`, `email`, `password`, `role`, `status`, `createdAt`, `updatedAt`) VALUES
('002', 'Đinh Ngọc Hoàng', '0762752760', 'Zone6 đà nẵng', 'hoang', '$2a$10$kvf9FrnzBn5Nd/2TjvNzZeS34DLzIvnY3CVFu5GfxgfBFsob5Uxfe', 1, 0, '2023-11-01 12:28:04', '2023-12-20 13:47:38'),
('admin001', 'Admin', '0000000001', 'da nang', 'anotheradmin@gmail.com', '$2a$10$DEAfA8uUaCY6hJq6zrt34uZZNnpNJDEmOeFbjR5j75s2Z4oWjKMtq', 2, 0, '2023-11-15 06:13:54', '2023-11-15 06:13:54'),
('logom3jg', 'hoang27810', '0111111111', 'đổi mk thành 123', 'ngochoang27810@gmail.com', '$2a$10$oe6TUHi9Uy7H5xVENFBOX.X0X2JNVzZZWfdN5Q7I/pkFEIVBY0m.6', 0, 0, '2023-11-02 04:23:42', '2023-11-21 10:33:42'),
('logp0dvt', 'dinh hoang', '0999922222', 'vn', 'hoang2@gmail.com', '$2a$10$Pt7co8cACK/.3POFfrlYz.uFZ.svOkKovLSCzlyrgjmTRUNNcqsGy', 0, -1, '2023-11-02 04:34:49', '2023-11-15 08:02:09'),
('logw1vzq', 'Huy', '09999999', 'Việt Nam', 'huy@gmail.com', '$2a$10$lc4O0FJxg40fo2YsIo6wa.yea8bNilcAjt/kxQZ9RbXQVt/RDkiDe', 1, 0, '2023-11-02 07:51:56', '2023-11-15 06:21:07'),
('lok3xqdz', NULL, NULL, NULL, 'hoang3', '$2a$10$uq7XawS9IeRP/otDtbnKRupP4UeMiJQ/dKfKhI8gwl8HpoMN/cijO', 1, -1, '2023-11-04 13:55:58', '2023-11-14 09:35:29'),
('lok462z2', 'h', '123', 'mk 1', 'admin@gmail.com', '$2a$10$cyp.kzPiFY7L7.ozalzPkOMRZg806JmW3zKaSp5b3lgQqcBjAgYYS', 2, 0, '2023-11-04 14:02:27', '2023-11-22 06:59:26'),
('lozdkbfy', 'Nhân viên hoàng', '0512612', 'dn', 'hoangnv@gmail.com', '$2a$10$f49A/BB7PtTZ5kJQN5XHw.P8jCVRvBQGWkxA1c4lsUgAPUc9ttyVy', 1, -1, '2023-11-15 06:22:01', '2023-11-15 08:02:07'),
('lozi12fc', 'khách 2', '09231111111', 'Đà nẵng', 'khachhang@gmail.com', '$2a$10$KRuERpMi8F1YrZRQiDxkM.uQ83RaFWK3sRTVv1w.a/5t0YtWMoPGu', 0, 0, '2023-11-15 08:27:01', '2023-12-20 13:39:55'),
('lozk2vly', 'last test edit', '023123123', 'no password change', 'test@gmail.com', '$2a$10$2jmIMQEisKvWjno5LZBS0uZG.5UsxUTTIW.R77t4p2MOq/sltJZGi', 0, 0, '2023-11-15 09:24:24', '2023-11-21 10:31:12'),
('lp46016w', 'hoang e 2', '0212121221', 'da nang 2', 'hoang3@gmail.com', '$2a$10$mhp4UZZkXXd6ZbMyRcTi/OiIbSAoBfXckW0y1HwMnsVnTYTRt0SuC', 0, 0, '2023-11-18 14:49:08', '2023-12-02 09:47:35'),
('lqdx6uul', 'Trần Văn Long', '07654147881', 'Hòa Vang, Đà Nẵng', 'long93@gmail.com', '$2a$10$tWfFFBrhcPL0k1..mZgpt.gI6NIJRtcuzEHHDBA96.Txq6ZaFhHVm', 0, 0, '2023-12-20 15:19:54', '2023-12-20 15:19:54');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cate`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_pd`),
  ADD KEY `id_subcate` (`id_subcate`);

--
-- Chỉ mục cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id_subcate`),
  ADD KEY `id_cate` (`id_cate`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_pd` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id_subcate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `subcate` FOREIGN KEY (`id_subcate`) REFERENCES `subcategories` (`id_subcate`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `cate` FOREIGN KEY (`id_cate`) REFERENCES `categories` (`id_cate`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
