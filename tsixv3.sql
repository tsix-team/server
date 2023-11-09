-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 09, 2023 lúc 10:20 AM
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
(10, 'https://res.cloudinary.com/tsix-project/image/upload/v1699519813/tsix/hunqegceaqvjmajswbno.jpg', 'san-pham-thuoc-ban-an_img_0', 'tsix/hunqegceaqvjmajswbno', '2023-11-09 08:50:17', '2023-11-09 08:50:17');

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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_pd` int(10) UNSIGNED NOT NULL,
  `id_subcate` int(11) NOT NULL DEFAULT 0,
  `name_pd` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
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
(10, 6, 'Sản phẩm thuộc bàn ăn edit  2', 'https://res.cloudinary.com/tsix-project/image/upload/v1699519812/tsix/hrr1yjpf08qu0enddx9c.jpg', 3213.00, 'nước', '1m5', 'mèo', 'test độ dài: \r\nNot shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options. test độ dài . test độ dài . test độ dài. test độ dài. test độ dài. test độ dài', 55, 'san-pham-thuoc-ban-an-edit-2', '2023-11-09 08:50:17', '2023-11-09 08:56:38');

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
(6, 'bàn làm việc', 'ban-lam-viec', 17, '2023-11-09 07:42:27', '2023-11-09 07:42:27'),
(7, 'Ghế làm việc', 'ghe-lam-viec', 18, '2023-11-09 07:42:39', '2023-11-09 07:42:39'),
(8, 'Ghế gỗ', 'ghe-go', 18, '2023-11-09 07:42:44', '2023-11-09 07:42:44'),
(9, 'Ghế nhựa', 'ghe-nhua', 18, '2023-11-09 07:42:50', '2023-11-09 07:42:50'),
(10, 'Giường ngủ', 'giuong-ngu', 19, '2023-11-09 07:43:03', '2023-11-09 07:43:03');

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
('lofqh50r', NULL, NULL, NULL, 'hoang', '$2a$10$kvf9FrnzBn5Nd/2TjvNzZeS34DLzIvnY3CVFu5GfxgfBFsob5Uxfe', 1, 0, '2023-11-01 12:28:04', '2023-11-01 13:11:25'),
('logom3jg', NULL, NULL, NULL, 'ngochoang27810@gmail.com', '$2a$10$dLY2PsNgXmOnhvcAW4yk9uDmoNMvQ8csLGQ/3gAacYNw/AgscHFa6', 0, 0, '2023-11-02 04:23:42', '2023-11-02 04:23:42'),
('logp0dvt', 'dinh hoang', '0999922222', 'vn', 'hoang2@gmail.com', '$2a$10$Pt7co8cACK/.3POFfrlYz.uFZ.svOkKovLSCzlyrgjmTRUNNcqsGy', 0, 0, '2023-11-02 04:34:49', '2023-11-02 04:34:49'),
('logw1vzq', 'Huy', '09999999', 'Việt Nam', 'huy@gmail.com', '$2a$10$lc4O0FJxg40fo2YsIo6wa.yea8bNilcAjt/kxQZ9RbXQVt/RDkiDe', 0, 0, '2023-11-02 07:51:56', '2023-11-02 07:51:56'),
('lok3xqdz', NULL, NULL, NULL, 'hoang3', '$2a$10$uq7XawS9IeRP/otDtbnKRupP4UeMiJQ/dKfKhI8gwl8HpoMN/cijO', 1, 0, '2023-11-04 13:55:58', '2023-11-04 13:55:58'),
('lok462z2', 'h', NULL, NULL, 'hoang4', '$2a$10$pNEbBCjM8y63l.KwWd5c8OZ5b.VQaNe7TgatuNQEb1/TZ6WpRl2ry', 2, 0, '2023-11-04 14:02:27', '2023-11-04 14:02:27');

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
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_pd` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id_subcate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
