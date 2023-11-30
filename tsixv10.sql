-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2023 lúc 04:47 AM
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
(10, 'https://res.cloudinary.com/tsix-project/image/upload/v1699519813/tsix/hunqegceaqvjmajswbno.jpg', 'san-pham-thuoc-ban-an_img_0', 'tsix/hunqegceaqvjmajswbno', '2023-11-09 08:50:17', '2023-11-09 08:50:17'),
(12, 'https://res.cloudinary.com/tsix-project/image/upload/v1700041963/tsix/rfn0lagnf8t3o1qke6mg.jpg', 'gojoo_img_0', 'tsix/rfn0lagnf8t3o1qke6mg', '2023-11-15 09:52:45', '2023-11-15 09:52:45'),
(12, 'https://res.cloudinary.com/tsix-project/image/upload/v1700041964/tsix/ofp4fgnqfg8ezj0k0ukg.jpg', 'gojoo_img_1', 'tsix/ofp4fgnqfg8ezj0k0ukg', '2023-11-15 09:52:45', '2023-11-15 09:52:45'),
(14, 'https://res.cloudinary.com/tsix-project/image/upload/v1700042082/tsix/x0y6thmi6e74ozsgwlxa.jpg', 'a_img_0', 'tsix/x0y6thmi6e74ozsgwlxa', '2023-11-15 09:54:43', '2023-11-15 09:54:43'),
(14, 'https://res.cloudinary.com/tsix-project/image/upload/v1700042082/tsix/mff4djjpdatsmngufmim.jpg', 'a_img_1', 'tsix/mff4djjpdatsmngufmim', '2023-11-15 09:54:43', '2023-11-15 09:54:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_order` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id_order` int(11) NOT NULL,
  `id_pd` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `total_amount` double(8,2) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'nhap tu db', '', 'content 123', '123124', 'nhap-tu-db', '2023-11-19 19:41:43', '2023-11-19 19:43:22'),
(2, 'new 3', 'https://res.cloudinary.com/tsix-project/image/upload/v1700464781/tsix/zejluahmuegbgzxhb4p9.jpg', 'meeeeee', 'lofqh50r', 'new-3', '2023-11-20 07:19:41', '2023-11-20 07:19:41');

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
(10, 5, 'Sản phẩm thuộc bàn ăn edit  2', 'https://res.cloudinary.com/tsix-project/image/upload/v1700041911/tsix/gvvnlcimsrjmvcs6ocle.jpg', 12000000, 'nước', '1m5', 'mèo', 'test độ dài: \r\nNot shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options. test độ dài . test độ dài . test độ dài. test độ dài. test độ dài. test độ dài', 55, 'san-pham-thuoc-ban-an-edit-2', '2023-11-09 08:50:17', '2023-11-15 10:37:30'),
(12, 8, 'Bàn học', 'https://res.cloudinary.com/tsix-project/image/upload/v1700041990/tsix/ck2twbbgv6wigt6fpxha.webp', 12, '123', '123', '312', 'saaaaaaaa 21 2e2e ', 6, 'ban-hoc', '2023-11-10 04:01:51', '2023-11-15 09:53:11'),
(14, 8, 'Bàn gỗ ', 'https://res.cloudinary.com/tsix-project/image/upload/v1700042082/tsix/lycykggurtgyxcoxo6uo.jpg', 12, 'gỗ ', '2m8', 'Gỗ T-six', 'bàn bàn bànnnnnnn', 2, 'ban-go-', '2023-11-12 14:36:11', '2023-11-15 10:33:14'),
(15, 5, 'Bàn gỗ nhỏ', 'https://res.cloudinary.com/tsix-project/image/upload/v1700042188/tsix/ycfzhsn8hui3omcnpq7s.jpg', 0, '666', '666m', 't6', 'fsef', 5, 'ban-go-nho', '2023-11-12 14:36:15', '2023-11-15 10:03:01'),
(16, 5, 'c', 'https://res.cloudinary.com/tsix-project/image/upload/v1700042632/tsix/vibqkbpcdqhzvrrvrumz.jpg', 0, '0', '0', '', '', 0, 'c', '2023-11-12 14:36:17', '2023-11-15 10:03:53'),
(17, 5, 'd', 'https://res.cloudinary.com/tsix-project/image/upload/v1700317512/tsix/urngtecuswul0agylzml.jpg', 0, '0', '0', '', '', 0, 'd', '2023-11-12 14:36:20', '2023-11-18 14:25:02'),
(18, 13, 'Đồng hồ', 'https://res.cloudinary.com/tsix-project/image/upload/v1700654874/tsix/htonupglpzs7v6hbwftn.jpg', 11550000, 'Hợp kim titan', '3m1', 'Rolex', 'T', 0, 'đong-ho', '2023-11-12 14:36:23', '2023-11-22 12:07:56'),
(19, 7, 'f', 'none', 0, '0', '0', '', '', 0, 'f', '2023-11-12 14:36:26', '2023-11-15 06:03:32'),
(20, 5, 'h', 'none', 0, '0', '0', '', '', 0, 'h', '2023-11-12 14:36:31', '2023-11-12 14:36:31'),
(21, 5, 'g', 'none', 0, '0', '0', '', '', 0, 'g', '2023-11-12 14:36:35', '2023-11-12 14:36:35'),
(22, 5, 'i', 'none', 0, '0', '0', '', '', 0, 'i', '2023-11-12 14:36:39', '2023-11-12 14:36:39');

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
(13, 'new trang tri', 'new-trang-tri', 21, '2023-11-14 09:15:06', '2023-11-14 09:15:06');

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
('lofqh50r', 'Đinh Ngọc Hoàng', '0762752760', 'Update xuống nhân viên, không thay đổi password\r\n', 'hoang', '$2a$10$kvf9FrnzBn5Nd/2TjvNzZeS34DLzIvnY3CVFu5GfxgfBFsob5Uxfe', 1, 0, '2023-11-01 12:28:04', '2023-11-21 10:32:33'),
('logom3jg', 'hoang27810', '0111111111', 'đổi mk thành 123', 'ngochoang27810@gmail.com', '$2a$10$oe6TUHi9Uy7H5xVENFBOX.X0X2JNVzZZWfdN5Q7I/pkFEIVBY0m.6', 0, 0, '2023-11-02 04:23:42', '2023-11-21 10:33:42'),
('logp0dvt', 'dinh hoang', '0999922222', 'vn', 'hoang2@gmail.com', '$2a$10$Pt7co8cACK/.3POFfrlYz.uFZ.svOkKovLSCzlyrgjmTRUNNcqsGy', 0, -1, '2023-11-02 04:34:49', '2023-11-15 08:02:09'),
('logw1vzq', 'Huy', '09999999', 'Việt Nam', 'huy@gmail.com', '$2a$10$lc4O0FJxg40fo2YsIo6wa.yea8bNilcAjt/kxQZ9RbXQVt/RDkiDe', 1, 0, '2023-11-02 07:51:56', '2023-11-15 06:21:07'),
('lok3xqdz', NULL, NULL, NULL, 'hoang3', '$2a$10$uq7XawS9IeRP/otDtbnKRupP4UeMiJQ/dKfKhI8gwl8HpoMN/cijO', 1, -1, '2023-11-04 13:55:58', '2023-11-14 09:35:29'),
('lok462z2', 'h', '123', 'mk 1', 'admin@gmail.com', '$2a$10$cyp.kzPiFY7L7.ozalzPkOMRZg806JmW3zKaSp5b3lgQqcBjAgYYS', 2, 0, '2023-11-04 14:02:27', '2023-11-22 06:59:26'),
('lozd9w59', 'Admin', '0000000001', 'da nang', 'anotheradmin@gmail.com', '$2a$10$DEAfA8uUaCY6hJq6zrt34uZZNnpNJDEmOeFbjR5j75s2Z4oWjKMtq', 2, 0, '2023-11-15 06:13:54', '2023-11-15 06:13:54'),
('lozdkbfy', 'Nhân viên hoàng', '0512612', 'dn', 'hoangnv@gmail.com', '$2a$10$f49A/BB7PtTZ5kJQN5XHw.P8jCVRvBQGWkxA1c4lsUgAPUc9ttyVy', 1, -1, '2023-11-15 06:22:01', '2023-11-15 08:02:07'),
('lozi12fc', 'khách', '123', 'vn', 'khachhang@gmail.com', '$2a$10$KRuERpMi8F1YrZRQiDxkM.uQ83RaFWK3sRTVv1w.a/5t0YtWMoPGu', 0, 0, '2023-11-15 08:27:01', '2023-11-15 08:27:01'),
('lozk2vly', 'last test edit', '023123123', 'no password change', 'test@gmail.com', '$2a$10$2jmIMQEisKvWjno5LZBS0uZG.5UsxUTTIW.R77t4p2MOq/sltJZGi', 0, 0, '2023-11-15 09:24:24', '2023-11-21 10:31:12'),
('lp46016w', 'khach hang', NULL, NULL, 'hoang3@gmail.com', '$2a$10$mhp4UZZkXXd6ZbMyRcTi/OiIbSAoBfXckW0y1HwMnsVnTYTRt0SuC', 0, 0, '2023-11-18 14:49:08', '2023-11-18 14:49:08');

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
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_pd` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id_subcate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
