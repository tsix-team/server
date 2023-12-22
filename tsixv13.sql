-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 22, 2023 lúc 04:18 AM
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
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id_cmt` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `id_pd` int(10) NOT NULL,
  `content` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id_cmt`, `id_user`, `id_pd`, `content`, `createdAt`, `updatedAt`) VALUES
(9, 'lok462z2', 34, 'bình luận thử nè', '2023-12-21 12:53:11', '2023-12-21 12:53:11'),
(11, 'lok462z2', 33, 'BÀN HỌC JOY 80 còn hàng không', '2023-12-21 12:55:07', '2023-12-21 12:55:07'),
(14, 'lok462z2', 294, 'Rèm xanh rất đẹp', '2023-12-21 16:50:23', '2023-12-21 16:50:23'),
(15, 'lok462z2', 293, 'Sang trọng quá', '2023-12-21 16:50:40', '2023-12-21 16:50:40'),
(16, 'lok462z2', 288, 'Tôi muốn mua hàng', '2023-12-22 02:39:13', '2023-12-22 02:39:13'),
(17, 'lok462z2', 284, 'Quá đẹp', '2023-12-22 02:39:34', '2023-12-22 02:39:34');

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
(14, 'https://res.cloudinary.com/tsix-project/image/upload/v1703078141/tsix/vlupfiokkotvqntlsbc6.jpg', 'ban-go-_img_1', 'tsix/vlupfiokkotvqntlsbc6', '2023-12-20 13:15:43', '2023-12-20 13:15:43'),
(265, 'https://res.cloudinary.com/tsix-project/image/upload/v1703154613/tsix/l43ueooaiaw6eyrexn5y.jpg', 'ban-ghe-an-mat-đa_img_0', 'tsix/l43ueooaiaw6eyrexn5y', '2023-12-21 10:30:13', '2023-12-21 10:30:13'),
(265, 'https://res.cloudinary.com/tsix-project/image/upload/v1703154613/tsix/ijdk6t24skkdrggy0nlb.jpg', 'ban-ghe-an-mat-đa_img_1', 'tsix/ijdk6t24skkdrggy0nlb', '2023-12-21 10:30:13', '2023-12-21 10:30:13'),
(266, 'https://res.cloudinary.com/tsix-project/image/upload/v1703154745/tsix/srampmxs6tku5cxhbyr0.jpg', 'bo-ban-ghe-an-đep-6-ghe_img_0', 'tsix/srampmxs6tku5cxhbyr0', '2023-12-21 10:32:26', '2023-12-21 10:32:26'),
(266, 'https://res.cloudinary.com/tsix-project/image/upload/v1703154745/tsix/g5ythus2ftrbw6ceowzd.jpg', 'bo-ban-ghe-an-đep-6-ghe_img_1', 'tsix/g5ythus2ftrbw6ceowzd', '2023-12-21 10:32:26', '2023-12-21 10:32:26'),
(267, 'https://res.cloudinary.com/tsix-project/image/upload/v1703155048/tsix/gqhsoqkf1xbgdklqeirz.jpg', 'bo-ban-an-6-ghe-mat-đa_img_0', 'tsix/gqhsoqkf1xbgdklqeirz', '2023-12-21 10:37:28', '2023-12-21 10:37:28'),
(267, 'https://res.cloudinary.com/tsix-project/image/upload/v1703155048/tsix/asq3ccihdkk4ludcfqd3.jpg', 'bo-ban-an-6-ghe-mat-đa_img_1', 'tsix/asq3ccihdkk4ludcfqd3', '2023-12-21 10:37:28', '2023-12-21 10:37:28'),
(268, 'https://res.cloudinary.com/tsix-project/image/upload/v1703155150/tsix/wfm4kzuyhwicp16p2eag.jpg', 'ban-ghe-an-thong-minh_img_0', 'tsix/wfm4kzuyhwicp16p2eag', '2023-12-21 10:39:10', '2023-12-21 10:39:10'),
(268, 'https://res.cloudinary.com/tsix-project/image/upload/v1703155150/tsix/xhnpizhhqobk79qxef4q.jpg', 'ban-ghe-an-thong-minh_img_1', 'tsix/xhnpizhhqobk79qxef4q', '2023-12-21 10:39:10', '2023-12-21 10:39:10'),
(269, 'https://res.cloudinary.com/tsix-project/image/upload/v1703155394/tsix/r3zsqt1g6hlyocgya5mg.jpg', 'ban-ghe-an_img_0', 'tsix/r3zsqt1g6hlyocgya5mg', '2023-12-21 10:43:14', '2023-12-21 10:43:14'),
(269, 'https://res.cloudinary.com/tsix-project/image/upload/v1703155394/tsix/wncakqprs8xokvyykfoe.jpg', 'ban-ghe-an_img_1', 'tsix/wncakqprs8xokvyykfoe', '2023-12-21 10:43:14', '2023-12-21 10:43:14'),
(270, 'https://res.cloudinary.com/tsix-project/image/upload/v1703155748/tsix/pkyi9wxmqjvvct84un29.jpg', 'ban-tra-mat-đa_img_0', 'tsix/pkyi9wxmqjvvct84un29', '2023-12-21 10:49:12', '2023-12-21 10:49:12'),
(270, 'https://res.cloudinary.com/tsix-project/image/upload/v1703155752/tsix/pg54yikb8a5iatn1psqf.jpg', 'ban-tra-mat-đa_img_1', 'tsix/pg54yikb8a5iatn1psqf', '2023-12-21 10:49:12', '2023-12-21 10:49:12'),
(271, 'https://res.cloudinary.com/tsix-project/image/upload/v1703155893/tsix/rxv8gcbxts9e4zrb9hlw.jpg', 'ban-tra-mat-đa-h-1612_img_0', 'tsix/rxv8gcbxts9e4zrb9hlw', '2023-12-21 10:51:39', '2023-12-21 10:51:39'),
(271, 'https://res.cloudinary.com/tsix-project/image/upload/v1703155898/tsix/xnyepapaon9ek2to7p5o.jpg', 'ban-tra-mat-đa-h-1612_img_1', 'tsix/xnyepapaon9ek2to7p5o', '2023-12-21 10:51:39', '2023-12-21 10:51:39'),
(272, 'https://res.cloudinary.com/tsix-project/image/upload/v1703156909/tsix/od8vbclz3dxbvkzu5yjc.jpg', 'nhu-cau-ve-đo-noi-that-phong-khach-đep,-cao-cap-đang-ngay-cang-tang-cao-vi-ai-cung-muon-so-huu-khong-gian-noi-that-an-tuong-trong-ngoi-nha.-do-đo,-ngoai-viec-lua-chon-nhung-mau-ban-tra-mat-đa-phong-khach-an-tuong-đuoc-nhieu-nguoi-chu-y.-neu-vay,-quy-vi-đu', 'tsix/od8vbclz3dxbvkzu5yjc', '2023-12-21 11:08:38', '2023-12-21 11:08:38'),
(272, 'https://res.cloudinary.com/tsix-project/image/upload/v1703156918/tsix/epb78ichaantyfccqno5.jpg', 'nhu-cau-ve-đo-noi-that-phong-khach-đep,-cao-cap-đang-ngay-cang-tang-cao-vi-ai-cung-muon-so-huu-khong-gian-noi-that-an-tuong-trong-ngoi-nha.-do-đo,-ngoai-viec-lua-chon-nhung-mau-ban-tra-mat-đa-phong-khach-an-tuong-đuoc-nhieu-nguoi-chu-y.-neu-vay,-quy-vi-đu', 'tsix/epb78ichaantyfccqno5', '2023-12-21 11:08:38', '2023-12-21 11:08:38'),
(273, 'https://res.cloudinary.com/tsix-project/image/upload/v1703157170/tsix/barezcf0fawqfty8aoco.jpg', 'ban-tra-sofa_img_0', 'tsix/barezcf0fawqfty8aoco', '2023-12-21 11:12:52', '2023-12-21 11:12:52'),
(273, 'https://res.cloudinary.com/tsix-project/image/upload/v1703157171/tsix/pctktebrdodkfmt9sydh.jpg', 'ban-tra-sofa_img_1', 'tsix/pctktebrdodkfmt9sydh', '2023-12-21 11:12:52', '2023-12-21 11:12:52'),
(274, 'https://res.cloudinary.com/tsix-project/image/upload/v1703157310/tsix/knyzzyxu3vkdiv6opvsz.jpg', 'ban-sofa-mat-đa-đep_img_0', 'tsix/knyzzyxu3vkdiv6opvsz', '2023-12-21 11:15:12', '2023-12-21 11:15:12'),
(274, 'https://res.cloudinary.com/tsix-project/image/upload/v1703157312/tsix/co5zrmqoaafhs5thlvmq.jpg', 'ban-sofa-mat-đa-đep_img_1', 'tsix/co5zrmqoaafhs5thlvmq', '2023-12-21 11:15:12', '2023-12-21 11:15:12'),
(275, 'https://res.cloudinary.com/tsix-project/image/upload/v1703157625/tsix/xjdujiqwqnwi5cqwav0b.jpg', 'bo-giuong-tu-phong-ngu_img_0', 'tsix/xjdujiqwqnwi5cqwav0b', '2023-12-21 11:20:26', '2023-12-21 11:20:26'),
(276, 'https://res.cloudinary.com/tsix-project/image/upload/v1703157778/tsix/okgtxxno9hc0wifpupzk.jpg', 'bo-phong-ngu-gt125_img_0', 'tsix/okgtxxno9hc0wifpupzk', '2023-12-21 11:22:59', '2023-12-21 11:22:59'),
(277, 'https://res.cloudinary.com/tsix-project/image/upload/v1703158135/tsix/gvxz3pyosn8dch0q11l8.jpg', 'giuong-tu-phong-ngu-gt114_img_0', 'tsix/gvxz3pyosn8dch0q11l8', '2023-12-21 11:28:55', '2023-12-21 11:28:55'),
(278, 'https://res.cloudinary.com/tsix-project/image/upload/v1703158292/tsix/lpmyolvo4d4olsv8gjjw.jpg', 'bo-giuong-tu-phong-ngu-gt115_img_0', 'tsix/lpmyolvo4d4olsv8gjjw', '2023-12-21 11:31:33', '2023-12-21 11:31:33'),
(279, 'https://res.cloudinary.com/tsix-project/image/upload/v1703158421/tsix/ifrkg0oxgvzkvplk0gad.jpg', 'bo-giuong-tu-phong-ngu-gia-re-gt123_img_0', 'tsix/ifrkg0oxgvzkvplk0gad', '2023-12-21 11:33:41', '2023-12-21 11:33:41'),
(280, 'https://res.cloudinary.com/tsix-project/image/upload/v1703158664/tsix/c91kh4xpohuchnqa3tmn.jpg', 'ghe-sofa-van-phong-h8819-vp_img_0', 'tsix/c91kh4xpohuchnqa3tmn', '2023-12-21 11:37:44', '2023-12-21 11:37:44'),
(281, 'https://res.cloudinary.com/tsix-project/image/upload/v1703159422/tsix/igx6bdjyewgtk5aghivl.jpg', 'bo-sofa-van-phong-ntx205_img_0', 'tsix/igx6bdjyewgtk5aghivl', '2023-12-21 11:50:23', '2023-12-21 11:50:23'),
(281, 'https://res.cloudinary.com/tsix-project/image/upload/v1703159422/tsix/pgxqhqhq7zt47vj3mtc1.jpg', 'bo-sofa-van-phong-ntx205_img_1', 'tsix/pgxqhqhq7zt47vj3mtc1', '2023-12-21 11:50:23', '2023-12-21 11:50:23'),
(282, 'https://res.cloudinary.com/tsix-project/image/upload/v1703159593/tsix/rpxj1geh4gxa3tnmbggb.jpg', 'sofa-van-phong-ntx226-2_img_0', 'tsix/rpxj1geh4gxa3tnmbggb', '2023-12-21 11:53:13', '2023-12-21 11:53:13'),
(283, 'https://res.cloudinary.com/tsix-project/image/upload/v1703159750/tsix/jmktuqmvdht0rnuhzb5l.jpg', 'bo-sofa-van-phong-ntx1886_img_0', 'tsix/jmktuqmvdht0rnuhzb5l', '2023-12-21 11:55:50', '2023-12-21 11:55:50'),
(283, 'https://res.cloudinary.com/tsix-project/image/upload/v1703159749/tsix/vc3upjfpy4u3pith7aqe.jpg', 'bo-sofa-van-phong-ntx1886_img_1', 'tsix/vc3upjfpy4u3pith7aqe', '2023-12-21 11:55:50', '2023-12-21 11:55:50'),
(284, 'https://res.cloudinary.com/tsix-project/image/upload/v1703159927/tsix/gbgu6dzcx5bomzwiqzw7.jpg', 'bo-sofa-van-phong-ntx1914_img_0', 'tsix/gbgu6dzcx5bomzwiqzw7', '2023-12-21 11:58:47', '2023-12-21 11:58:47'),
(285, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160282/tsix/afhy2tclk8ur4dm3pmpl.jpg', 'ke-tivi-phong-khach-ktv2203_img_0', 'tsix/afhy2tclk8ur4dm3pmpl', '2023-12-21 12:04:43', '2023-12-21 12:04:43'),
(285, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160283/tsix/otdqiujovlq7hypwuang.jpg', 'ke-tivi-phong-khach-ktv2203_img_1', 'tsix/otdqiujovlq7hypwuang', '2023-12-21 12:04:43', '2023-12-21 12:04:43'),
(285, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160283/tsix/azwytttb1ru3cph4fx9f.jpg', 'ke-tivi-phong-khach-ktv2203_img_2', 'tsix/azwytttb1ru3cph4fx9f', '2023-12-21 12:04:43', '2023-12-21 12:04:43'),
(286, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160413/tsix/y7sw52nqlacl1qtrkgx0.jpg', 'ke-tivi-hien-đai-ktv2202_img_0', 'tsix/y7sw52nqlacl1qtrkgx0', '2023-12-21 12:06:54', '2023-12-21 12:06:54'),
(286, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160413/tsix/epqsuwqmbsa3ifnk63po.jpg', 'ke-tivi-hien-đai-ktv2202_img_1', 'tsix/epqsuwqmbsa3ifnk63po', '2023-12-21 12:06:54', '2023-12-21 12:06:54'),
(286, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160414/tsix/izvaij5smxwvgc1mdy8o.jpg', 'ke-tivi-hien-đai-ktv2202_img_2', 'tsix/izvaij5smxwvgc1mdy8o', '2023-12-21 12:06:54', '2023-12-21 12:06:54'),
(287, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160521/tsix/kiyppwobptwd1tngusnj.jpg', 'mau-ke-tivi-đep-ktv920_img_0', 'tsix/kiyppwobptwd1tngusnj', '2023-12-21 12:08:42', '2023-12-21 12:08:42'),
(287, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160520/tsix/vdkz3hhyr8fsgawrbenl.jpg', 'mau-ke-tivi-đep-ktv920_img_1', 'tsix/vdkz3hhyr8fsgawrbenl', '2023-12-21 12:08:42', '2023-12-21 12:08:42'),
(287, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160522/tsix/iagx1ipwawhqvj1dwrds.jpg', 'mau-ke-tivi-đep-ktv920_img_2', 'tsix/iagx1ipwawhqvj1dwrds', '2023-12-21 12:08:42', '2023-12-21 12:08:42'),
(288, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160637/tsix/u5irmqdi5wxjcpewrydo.jpg', 'ke-tivi-phong-khach-đep-ktv947_img_0', 'tsix/u5irmqdi5wxjcpewrydo', '2023-12-21 12:10:39', '2023-12-21 12:10:39'),
(288, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160638/tsix/soqppgj6rlmmqokwrjjh.jpg', 'ke-tivi-phong-khach-đep-ktv947_img_1', 'tsix/soqppgj6rlmmqokwrjjh', '2023-12-21 12:10:39', '2023-12-21 12:10:39'),
(288, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160639/tsix/uxsog6qw2c7uoog7b65w.jpg', 'ke-tivi-phong-khach-đep-ktv947_img_2', 'tsix/uxsog6qw2c7uoog7b65w', '2023-12-21 12:10:39', '2023-12-21 12:10:39'),
(289, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160768/tsix/oevpv9kzdxrhhvgk4vy5.jpg', 'ke-tivi-go-ktv909_img_0', 'tsix/oevpv9kzdxrhhvgk4vy5', '2023-12-21 12:12:49', '2023-12-21 12:12:49'),
(289, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160768/tsix/d7fhro4mkkeeqduodsuf.jpg', 'ke-tivi-go-ktv909_img_1', 'tsix/d7fhro4mkkeeqduodsuf', '2023-12-21 12:12:49', '2023-12-21 12:12:49'),
(289, 'https://res.cloudinary.com/tsix-project/image/upload/v1703160768/tsix/vac5h6exdumac2ff04uh.jpg', 'ke-tivi-go-ktv909_img_2', 'tsix/vac5h6exdumac2ff04uh', '2023-12-21 12:12:49', '2023-12-21 12:12:49'),
(290, 'https://res.cloudinary.com/tsix-project/image/upload/v1703161146/tsix/tz0vg5qyd3guzw8bleua.jpg', 'rem-cua-cau-vong-đep-cv83_img_0', 'tsix/tz0vg5qyd3guzw8bleua', '2023-12-21 12:19:06', '2023-12-21 12:19:06'),
(290, 'https://res.cloudinary.com/tsix-project/image/upload/v1703161146/tsix/xdtjmwwnj7suzbkjpw9w.jpg', 'rem-cua-cau-vong-đep-cv83_img_1', 'tsix/xdtjmwwnj7suzbkjpw9w', '2023-12-21 12:19:06', '2023-12-21 12:19:06'),
(291, 'https://res.cloudinary.com/tsix-project/image/upload/v1703161260/tsix/fe9fux1ut7hifogzf5se.jpg', 'rem-cua-cau-vong-đep-cv88_img_0', 'tsix/fe9fux1ut7hifogzf5se', '2023-12-21 12:21:01', '2023-12-21 12:21:01'),
(291, 'https://res.cloudinary.com/tsix-project/image/upload/v1703161249/tsix/yqcvthco82jyzi8jceen.jpg', 'rem-cua-cau-vong-đep-cv88_img_1', 'tsix/yqcvthco82jyzi8jceen', '2023-12-21 12:21:01', '2023-12-21 12:21:01'),
(292, 'https://res.cloudinary.com/tsix-project/image/upload/v1703161466/tsix/auqk4xqtmlvmrwip71v5.jpg', 'rem-cua-cau-vong-đep-cv832_img_0', 'tsix/auqk4xqtmlvmrwip71v5', '2023-12-21 12:24:27', '2023-12-21 12:24:27'),
(292, 'https://res.cloudinary.com/tsix-project/image/upload/v1703161467/tsix/lpcp5kdiyjohwgkwc75b.jpg', 'rem-cua-cau-vong-đep-cv832_img_1', 'tsix/lpcp5kdiyjohwgkwc75b', '2023-12-21 12:24:27', '2023-12-21 12:24:27'),
(293, 'https://res.cloudinary.com/tsix-project/image/upload/v1703161570/tsix/qb7kkotqw1yzfqyk29cv.jpg', 'rem-cua-cau-vong-đep-cv79_img_0', 'tsix/qb7kkotqw1yzfqyk29cv', '2023-12-21 12:26:11', '2023-12-21 12:26:11'),
(293, 'https://res.cloudinary.com/tsix-project/image/upload/v1703161571/tsix/znwgbwuxcs3p6mqkyuvw.jpg', 'rem-cua-cau-vong-đep-cv79_img_1', 'tsix/znwgbwuxcs3p6mqkyuvw', '2023-12-21 12:26:11', '2023-12-21 12:26:11'),
(294, 'https://res.cloudinary.com/tsix-project/image/upload/v1703161655/tsix/qfsj7ea5bmiqmn64tp91.jpg', 'rem-cua-đep-cao-cap-rc58_img_0', 'tsix/qfsj7ea5bmiqmn64tp91', '2023-12-21 12:27:35', '2023-12-21 12:27:35'),
(294, 'https://res.cloudinary.com/tsix-project/image/upload/v1703161655/tsix/m5rldlxiohg9jskyh7op.jpg', 'rem-cua-đep-cao-cap-rc58_img_1', 'tsix/m5rldlxiohg9jskyh7op', '2023-12-21 12:27:35', '2023-12-21 12:27:35');

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
(7, '3', 'online update', 60000024, 'lp46016w', 'update note 4 status', '2023-12-02 09:47:35', '2023-12-21 15:11:35'),
(8, '3', 'COD', 36000048, 'lozi12fc', '', '2023-12-20 08:00:39', '2023-12-20 08:12:58'),
(9, '2', 'COD', 70650036, '002', 'tự đặt', '2023-12-20 08:06:03', '2023-12-20 13:48:45'),
(11, '3', 'COD', 127500012, '002', '123 ghi chu', '2023-12-20 12:22:35', '2023-12-20 12:23:09'),
(28, '1', 'COD', 23946000, '002', '', '2023-12-20 13:43:40', '2023-12-20 13:44:25'),
(29, '1', 'COD', 25446000, '002', 'giao nhanh', '2023-12-20 13:47:38', '2023-12-21 15:41:42'),
(30, '0', 'COD', 231962000, 'lozi12fc', '', '2023-12-21 05:09:02', '2023-12-21 05:09:02'),
(31, '0', 'direct', 791000, '002', '1 sp', '2023-12-21 10:53:42', '2023-12-21 10:53:42'),
(32, '0', 'COD', 5909000, 'lok462z2', '', '2023-12-21 14:30:32', '2023-12-21 14:30:32'),
(33, '3', 'COD', 7092000, 'lok462z2', '', '2023-12-21 14:31:39', '2023-12-21 15:11:20');

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
(29, 18, 1, '2023-12-20 13:47:38', '2023-12-20 13:47:38'),
(30, 25, 2, '2023-12-21 05:09:02', '2023-12-21 05:09:02'),
(30, 24, 1, '2023-12-21 05:09:02', '2023-12-21 05:09:02'),
(30, 18, 1, '2023-12-21 05:09:02', '2023-12-21 05:09:02'),
(30, 264, 5, '2023-12-21 05:09:02', '2023-12-21 05:09:02'),
(30, 253, 5, '2023-12-21 05:09:02', '2023-12-21 05:09:02'),
(30, 234, 5, '2023-12-21 05:09:02', '2023-12-21 05:09:02'),
(31, 70, 1, '2023-12-21 10:53:42', '2023-12-21 10:53:42'),
(32, 70, 3, '2023-12-21 14:30:32', '2023-12-21 14:30:32'),
(32, 33, 2, '2023-12-21 14:30:32', '2023-12-21 14:30:32'),
(33, 70, 2, '2023-12-21 14:31:39', '2023-12-21 14:31:39'),
(33, 33, 2, '2023-12-21 14:31:39', '2023-12-21 14:31:39'),
(33, 30, 2, '2023-12-21 14:31:39', '2023-12-21 14:31:39');

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
(3, 'bài đăng 1', 'https://res.cloudinary.com/tsix-project/image/upload/v1703150423/tsix/bcozss9eoymdrf05fsae.jpg', 'Bàn ngoài trời ôi đẹp làm sao 2', '002', 'bai-đang-1', '2023-12-20 15:24:36', '2023-12-21 09:20:23'),
(4, 'testing loading', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086222/tsix/ovtt3psy6mwdt8mn29sz.jpg', 'beautiful...', '002', 'testing-loading', '2023-12-20 15:30:23', '2023-12-20 15:30:23'),
(5, 'test 2', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086723/tsix/bvfehgc9sg4dso7iktdy.jpg', 'bàn trawgns', '002', 'test-2', '2023-12-20 15:38:45', '2023-12-20 15:38:45'),
(6, 'Bàn gỗ đơn giản', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086785/tsix/uos6cwd5gadvv8yxkivw.webp', 'Bàn gỗ đơn giản ngoài trời', '002', 'ban-go-đon-gian', '2023-12-20 15:39:47', '2023-12-22 03:08:40'),
(7, 'test 3', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086814/tsix/nhb2tfzblvjstbhxjrer.jpg', 'bàn3', '002', 'test-3', '2023-12-20 15:40:15', '2023-12-20 15:40:15'),
(8, 'Bàn gỗ full', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087071/tsix/euv6t4pymwvqflp55dyx.jpg', 'Bàn gỗ full mô tả', '002', 'ban-go-full', '2023-12-20 15:44:32', '2023-12-22 03:08:19'),
(10, 'Bài viết về giường', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087896/tsix/qkbkmbm3siql5p7ydqlq.jpg', 'Giường đẹp\r\n', '002', 'bai-viet-ve-giuong', '2023-12-20 15:58:18', '2023-12-22 03:07:43'),
(11, 'NHÀ PHỐ HAI MÁI GIÚP GIA CHỦ KHÔNG CẦN ĐIỀU HÒA', 'https://res.cloudinary.com/tsix-project/image/upload/v1703151827/tsix/dyvox6duaii9sd1pcjh9.webp', 'Căn nhà trên mảnh đất 68 m2 ở quận 9 của một gia đình ba người. Để ngôi nhà thông gió và ít cần sử dụng điều hòa, kiến trúc sư sử dụng hệ thống hai mái tôn.\r\n\r\nNhà phố hai mái giúp gia chủ không cần điều hòa\r\n\r\nBề ngoài công trình. Ảnh: Thiết Vũ.\r\n\r\nChất liệu tôn cách nhiệt có đặc điểm là nhẹ. Bên cạnh đó, khoảng đệm giữa hai lớp mái cho gió đi qua, thổi đi khối khí nóng mặt trời chiếu lên lớp mái trên cùng.\r\n\r\nDo gia chủ kinh doanh tại nhà, công trình được xây lùi vào 5 m, chừa khoảng sân phía trước cho một quán nước nhỏ.\r\n\r\nKhuyến mãi nổi bật\r\nPhòng khách ngăn với vườn bằng cửa kính, khi cần thiết có thể mở hết tầm để phục vụ việc bán hàng. Cuối tầng trệt là một phòng ngủ dành cho mẹ gia chủ khi bà ghé thăm.\r\n\r\nNhà phố hai mái giúp gia chủ không cần điều hòa\r\n\r\nCác tầng trên là không gian riêng tư của gia đình chủ nhà. Giếng trời với cầu thang, cây khế và phần mái trong suốt đóng vai trò như \"lõi xanh\" cho công trình.\r\n\r\nPhòng ngủ bố mẹ được bố trí cửa sổ lớn nhìn ra giếng trời, vừa để thư giãn vừa có thể quan sát khu vực học tập của con trai.\r\n\r\nNhà phố hai mái giúp gia chủ không cần điều hòa\r\n\r\nChỗ học của con trai. Ảnh: Thiết Vũ.\r\n\r\nĐể tối ưu hóa không gian, chỗ học, chỗ ngủ của con trai và khu vực sinh hoạt chung được bố trí lệch tầng. Đi cùng với cách xử lý này là những ô ban công lệch nhau hướng mặt tiền và nhìn xuống phần sân vườn phía trước nhà.', '002', 'nha-pho-hai-mai-giup-gia-chu-khong-can-đieu-hoa', '2023-12-21 09:43:47', '2023-12-21 09:43:47'),
(12, 'NGÔI NHÀ NGOÀI ĐEN, TRONG TRẮNG', 'https://res.cloudinary.com/tsix-project/image/upload/v1703152073/tsix/umccooreadozvktsc8vd.webp', 'Ngôi nhà 30 năm tuổi ở Melbourne được chủ nhân yêu cầu cải tạo sao cho \"không có cảm giác bừa bộn của cuộc sống gia đình\".\r\n\r\nĐể đáp ứng yêu cầu của gia chủ, trên diện tích khoảng 200 m2, các kiến trúc sư đưa ra thiết kế nhà tối giản với mặt tiền màu đen và nội thất bên trong màu trắng.\r\n\r\nMặt tiền ngôi nhà. Ảnh: Tatjana Plitt.\r\nMặt tiền ngôi nhà. Ảnh: Tatjana Plitt.\r\n\r\nBên ngoài, ngôi nhà được sơn đen hoàn toàn, khung cửa sổ và lan can ngoài ban công cũng có màu đen để tạo sự đồng bộ.\r\n\r\nĐối lập với bề ngoài, không gian trong nhà chủ yếu sử dụng màu trắng. Ở khu bếp, những chiếc tủ màu xanh nhạt cũ được thay thế bằng tủ trắng. Bàn bếp bằng đá cẩm thạch là nơi gia chủ dùng bữa, thay vì sử dụng bàn ăn trước đây đặt trong phòng khách.\r\n\r\nKhu vực bếp và bàn ăn. Tatjana Plitt.\r\nKhu vực bếp và bàn ăn. Tatjana Plitt.\r\n\r\nPhòng khách mới chỉ có một chiếc sofa màu xám nhạt cùng vài bàn phụ màu đen. Tủ lưu trữ màu trắng được bố trí trên đường để cất gọn đồ dùng, bên dưới là kệ để trưng bày đồ trang trí.\r\n\r\nHệ cửa kính trượt đưa ánh sáng vào nhà. Đặc biệt, chúng cho phép chủ nhà lúc nào cũng có thể nhìn ra khu vườn và hồ nước được bao quanh bởi gạch và lưới mắt cáo đen.\r\n\r\n \r\n\r\n', '002', 'ngoi-nha-ngoai-đen,-trong-trang', '2023-12-21 09:47:54', '2023-12-21 09:47:54'),
(13, 'NHỮNG NGÔI NHÀ VIỆT LỌT TOP 50 CÔNG TRÌNH ĐẸP NHẤT', 'https://res.cloudinary.com/tsix-project/image/upload/v1703153989/tsix/t70mqtcrjqjmekqepmc3.webp', 'Tạp chí kiến trúc Archdaily có nhiều người truy cập nhất thế giới, vừa chọn ra 50 ngôi nhà của năm dựa trên tiêu chí được nhiều độc giả yêu thích nhất.\r\n\r\nTheo Archdaily, năm 2020 được đánh dấu bởi Covid-19, khủng hoảng sức khỏe tồi tệ nhất mà con người đối mặt trong một thế kỷ trở lại đây. Bối cảnh đó nhắc cho chúng ta rằng dù hình thức đa dạng đến đâu, mục đích chính của nhà ở vẫn là phục vụ nhu cầu ở của con người.\r\n\r\nDưới đây là bốn ngôi nhà ở Việt Nam lọt top 50 công trình nhà ở đẹp nhất của ArchDaily. Tất cả những công trình này đều đã được VnExpress giới thiệu.\r\n\r\nCH House\r\n\r\nCông trình mang tên CH House nằm trên một tuyến đường lớn ở Hà Đông dành cho gia đình ba thế hệ. Mảnh đất có chiều rộng hơn 4 m, chiều dài lên tới 35 m. Để không gian căn nhà nhiều ánh sáng, thông gió, ngăn được khói bụi và tiếng ồn bên ngoài, các kiến trúc sư đưa ra giải pháp mặt tiền hai lớp (double façade) với lớp vỏ ngoài cùng bằng gạch xếp tạo lỗ và lớp trong bằng kính khung sắt.\r\n\r\nKhông gian bên trong công trình CH House. Ảnh: Hoàng Lê.\r\nKhông gian bên trong công trình CH House. Ảnh: Hoàng Lê.\r\n\r\nHệ mặt tiền hai lớp kết hợp vườn cây ở giữa giúp ngôi nhà chắn bụi bẩn, che nắng mà vẫn thông gió tự nhiên dọc theo cả chiều dài tòa nhà. Bên trong, công trình lấy cảm hứng từ những ngôi nhà cổ ở Hà Nội. Không gian ngập nắng, gió nhờ bốn khu vườn chính và 10 bồn cây lớn đan xen.\r\n\r\nBin & Bon House\r\n\r\nTại ngã ba một con hẻm ở thành phố Quy Nhơn, ngôi nhà ống ba tầng được xây cho đôi vợ chồng cùng hai con trai tên Bin và Bon. Chủ nhà muốn nơi ở thoáng đãng, dễ dàng nhìn thấy các con nên kiến trúc sư đưa ra thiết kế như ruộng bậc thang, tầng trên lùi vào so với tầng dưới.\r\n\r\nKhông gian bên trong Bin & Bon House. Ảnh: Quang Dam.\r\nKhông gian bên trong Bin & Bon House. Ảnh: Quang Dam.\r\n\r\nTầng trệt dành cho sinh hoạt chung. Hai tầng còn lại của nhà dành cho các phòng ngủ. Trước mỗi tầng có khoảng vườn nhỏ để chắn gió Lào và đèn xe đi vào hẻm. Ngôi nhà cũng có mái hiên và khoảng sân lớn để trẻ em hàng xóm tụ tập, chơi đùa với Bin và Bon.\r\n\r\nSmall House 01\r\n\r\nNgôi nhà rộng 150 m2 ở Biên Hòa là tổ ấm của đôi vợ chồng trẻ cùng hai con trai nhỏ. Gia chủ mong muốn nơi ở yên tĩnh, thoáng mát, có một khu vườn nhỏ để trở về sau những ngày làm việc mệt mỏi.\r\n\r\nDo mảnh đất xéo, các kiến trúc sư bố trí một khu vườn rộng 40 m2 ở giữa nhà. Như vậy, không gian ở được cân đối, vuông vắn. Khu vườn cũng là nơi thư giãn yêu thích của cả gia đình. Tại đây, chủ nhà sưu tập các loại cây lạ, cùng nhau nhâm nhi trà hoặc cà phê.\r\n\r\nKhu vườn ẩn trong ngôi nhà cấp bốn. Ảnh: Cung Vit.\r\nKhu vườn ẩn trong ngôi nhà. Ảnh: Cung Vit.\r\n\r\nPhòng khách, bàn ăn và bếp nối liền với nhau, chạy dọc theo khu vườn. Khu vườn ngăn cách với khu vực ở bằng hệ cửa kính lớn. Nhờ đó, toàn bộ khu vực sinh hoạt chung luôn luôn thông thoáng. Đảo bếp nhìn thẳng ra khu vườn giúp gia chủ thư giãn ngay cả khi nấu nướng.\r\n\r\nHa Long Villa\r\n\r\nNgôi nhà hình ngũ giác nằm trên mảnh đất rộng 500 m2, bên bờ biển nhìn ra vịnh Hạ Long là thành quả sau ba năm thiết kế và thi công. Trước đó, gia chủ tìm đến kiến trúc sư với mong muốn có tổ ấm kết nối với thiên nhiên và bền vững, hài hòa với môi trường.\r\n\r\nĐể đem tới cho vợ chồng gia chủ cùng ba người con cảm giác \"sống trong rừng\", kiến trúc sư đưa ra cấu trúc nhà hình ngũ giác với cây xanh trải từ tầng trệt lên tới mái. Chúng đều là cây bản địa, dễ trồng và chăm sóc. Bên cạnh vườn ở các tầng, gia chủ còn có một vườn rau trên mái nhà.\r\nBên ngoài ngôi nhà.', '002', 'nhung-ngoi-nha-viet-lot-top-50-cong-trinh-đep-nhat', '2023-12-21 09:49:43', '2023-12-21 10:19:50'),
(14, 'Căn hộ \'gọn như phòng phẫu thuật\' của nữ y sĩ', 'https://res.cloudinary.com/tsix-project/image/upload/v1703152299/tsix/ilnzvzby3dvoh4kul31y.webp', 'Chuyển từ biệt thự lên căn hộ chung cư, gia chủ làm nghề y lâu năm muốn không gian sống đơn giản nhưng sang trọng.\r\n\r\nĐể đáp ứng yêu cầu trên, căn hộ rộng 200 m2 dành cho gia đình năm người được kiến trúc sư thiết kế theo cảm hứng từ phong cách nội thất Đài Loan, không dùng nhiều màu sắc mà phối màu tông trầm với màu trắng và tập trung vào ánh sáng. Các mảng ốp đá, cánh tủ toàn phẳng hoặc bằng nhôm kính tạo cảm giác sạch sẽ và dễ lau chùi.\r\n\r\nKhông gian phòng khách.\r\nKhông gian phòng khách của căn hộ. Ảnh: Hoàng Lê.\r\n\r\nLà người thích nấu nướng, gia chủ đặc biệt chăm chút căn bếp. Bếp rộng 17 m2, không bố trí tủ bếp bên trên để không phải với tay. Dao thớt nằm bên phải chậu rửa, gia vị đặt bên phải bếp từ giúp người nấu tiện thao tác. Mỗi loại vật dụng nhà bếp như bát, đĩa, đũa, thìa được đặt trong ngăn riêng. Như vậy, gia chủ không cần nhìn vẫn lấy đúng đồ mình cần, như thói quen sau nhiều năm làm việc trong phòng phẫu thuật.\r\n\r\nKhu bếp. Ảnh: Hoàng Lê.\r\nKhu bếp. Ảnh: Hoàng Lê.\r\n\r\nBàn bar bằng gỗ tự nhiên và đá rộng 1,2 m dài 3,2 m là nơi yêu thích nhất của gia chủ. Nó dùng làm bàn ăn sáng, khi cần có thể trở thành bàn ăn lớn để tiếp khách tới chơi nhà. Nhờ hệ cửa kính xếp gập dài 18 mét ngăn cách không gian sinh hoạt chung với ban công, gia chủ có thể vừa chuẩn bị đồ ăn vừa ngắm khung cảnh bên ngoài.\r\n\r\nKhông gian sinh hoạt chung hướng ra thiên nhiên bên ngoài. Ảnh: Hoàng Lê.\r\nKhông gian sinh hoạt chung hướng ra thiên nhiên bên ngoài.', '002', 'can-ho-\'gon-nhu-phong-phau-thuat\'-cua-nu-y-si', '2023-12-21 09:51:39', '2023-12-21 09:51:39'),
(15, 'Căn nhà bê tông thô mộc, tối giản của gia đình Hà Nội', 'https://res.cloudinary.com/tsix-project/image/upload/v1703152703/tsix/yndcrglmxxy4nzhxpo9s.jpg', 'Ngôi nhà diện tích 120 m2 ở Duyên Hà, Thanh Trì dành cho ba người.\r\n\r\nChủ nhà có lối sống đơn giản, mong muốn nơi ở thoáng đãng nhưng yên tĩnh, tách biệt với sự ồn ào bên ngoài. Từ yêu cầu này, kiến trúc sư đưa ra thiết kế nhà một tầng với chất liệu chính là bê tông.\r\n\r\nMặt tiền ngôi nhà. Ảnh: Triệu Chiến.\r\nMặt tiền ngôi nhà. Ảnh: Triệu Chiến.\r\n\r\nXác định các yếu tố thoáng mát, thông gió tự nhiên và chắn nắng là quan trọng nhất, kiến trúc sư bố trí hai khoảng sân ở trước và sau nhà. Các mái hiên rộng giúp không khí lưu thông dễ dàng qua không gian sinh hoạt chung.\r\n\r\nMái nhà được thêm một lớp vật liệu cách nhiệt gồm một tấm lưới và đá trải lên đó. Lớp này tạo ra một khoảng trống với trần bê tông, giúp giải phóng nhiệt nhanh chóng khi chiều xuống.\r\n\r\nTừ trong nhà nhìn ra sân trước. Ảnh: Triệu Chiến.\r\nTừ trong nhà nhìn ra sân trước. Ảnh: Triệu Chiến.\r\n\r\nCác mảng kính lớn xóa đi ranh giới bên trong, bên ngoài của ngôi nhà đồng thời tạo tầm nhìn xuyên suốt từ không gian sinh hoạt chung ra sân trước và sân sau. Để giảm ánh nắng tiếp xúc với các mảng kính này, mái phía trước đua ra 2,4 m, mái phía sau đua ra 1,5 m.\r\n\r\nBên trong, nhằm đảm bảo không gian riêng tư, phòng làm việc, phòng ngủ và phòng vệ sinh ngăn cách với không gian sinh hoạt chung bằng bức tường bê tông trần cao 2,2 m.\r\n\r\nBức tường bê tông cao 2,2 m ngăn không gian sinh hoạt chung với phòng làm việc, phòng ngủ và phòng vệ sinh. Ảnh: Triệu Chiến.\r\nBức tường bê tông cao 2,2 m ngăn không gian sinh hoạt chung với phòng làm việc, phòng ngủ và phòng vệ sinh. Ảnh: Triệu Chiến.\r\n\r\nLúc mới nhận nhà, gia chủ chưa thực sự ưng ý. Tuy nhiên, sau hai tháng ở trong ngôi nhà, họ thấy hài lòng hơn vì công trình đáp ứng đầy đủ nhu cầu của mình.', '002', 'can-nha-be-tong-tho-moc,-toi-gian-cua-gia-đinh-ha-noi', '2023-12-21 09:58:23', '2023-12-21 09:58:23'),
(16, ' Ý Tưởng Trang Trí Cho Những Tâm Hồn Yêu Du Lịch', 'https://res.cloudinary.com/tsix-project/image/upload/v1703152843/tsix/vdgeax14glihvmkujzi1.webp', 'Một số ý tưởng sắp xếp, trang trí để những tín đồ du lịch thể hiện niềm đam mê khám phá thế giới ngay tại căn nhà nhỏ bé của mình.\r\n\r\nCách thiết kế, trang trí nhà ở là một trong những \"thuật đọc nội tâm\" đúng chuẩn nhất. Nếu bạn yêu thích lên kế hoạch du lịch khám phá mọi miền thì thế giới nội tâm của bạn cũng được thể hiện rõ nét thông qua các vật dụng sinh hoạt hằng ngày và cách decor nhà ở. \r\n\r\nLỗi giao diện: file \'snippets/shortcode-FITIN.bwt\' không được tìm thấy chia sẻ những ý tưởng sắp xếp, trang trí nhà cửa cho những tâm hồn yêu thích vi vu đó đây.\r\nBản đồ là vật bất ly thân đối với các tín đồ du lịch. Trong thời đại kỹ thuật số hiện nay, các tấm bản đồ giấy đã được nâng cấp với phiên bản công nghệ thông qua các ứng dụng trên thiết bị thông minh (điện thoại, ipad, định vị xe hơi,...). Nhưng điều đó không có nghĩa là bản đồ giấy sẽ trở thành \"đồ cổ\". Một tấm bản đồ được vẽ đầy đủ chi tiết sẽ cho ta thấy một cách rõ ràng và tổng quát địa lý của mỗi quốc gia hoặc từng đặc điểm riêng biệt của từng châu lục trên thế giới.\r\n\r\n\r\n\r\nHơn thế nữa, nếu đặt những công năng của bản đồ giấy sang một bên, chúng ta sẽ nhận ra một vẻ đẹp cổ điển và nghệ thuật - thứ tạo biểu tượng riêng của những trái tim yêu thích du lịch', '002', '-y-tuong-trang-tri-cho-nhung-tam-hon-yeu-du-lich', '2023-12-21 10:00:43', '2023-12-21 10:00:43'),
(17, 'TOP 5 NHÀ THIẾT KẾ NỘI THẤT CÓ TẦM ẢNH HƯỞNG NHẤT THẾ GIỚI', 'https://res.cloudinary.com/tsix-project/image/upload/v1703152901/tsix/x90btxw9jrqu3trnhroy.webp', 'Thiết kế nội thất là lĩnh vực “động” luôn đòi hỏi sự sáng tạo và khả năng thích ứng với từng thời kỳ lịch sử. Chính vì thế, để tạo nên tên tuổi cho bản thân, mỗi một nhà thiết kế đều phải có cho riêng cho mình một cách thức truyền tải thông điệp. Và đây là Top 5 những bậc thầy nổi tiếng trong lĩnh vực nội thất. \r\n\r\n1. KELLY WEARSTLER\r\n\r\nTạp chí The New Yorker đã đặt cho nhà thiết kế người Mỹ Kelly Wearstler danh hiệu “bà chủ tịch của hội thiết kế nội thất West Coast”. Sau khi thành lập công ty thiết kế nội thất của riêng mình vào giữa những năm 1990, cô tiếp tục phát triển sự nghiệp như một tác giả, blogger, chuyên gia thời trang, nhà trang trí hay đặc biệt hơn: Nàng thơ của khách sạn Viceroy và Tides. Không cần bất kỳ lời giới thiệu hoa mỹ nào, Kelly Wearstler vẫn nổi tiếng với hương vị thiết kế riêng biệt từ kết cấu táo bạo đến màu sắc rực rỡ. \r\n\r\n\r\n\r\nCông trình thiết kế Malibu Beach Residence của Kelly Wearstler\r\n\r\n2. JEAN-LOUIS DENIOT\r\n\r\nJean-Louis Deniot là một tên tuổi nổi bật trong top 100 các nhà thiết kế nội thất giỏi nhất thế giới trên tạp chí ELLE Decor và AD. Anh đặt trọng tâm thiết kế vào việc tạo ra bầu không khí hơn là thỏa mãn tầm nhìn trực quan. \r\n\r\n\r\n\r\nCông trình thiết kế NYC - Chelsea của Jean-Louis Deniot\r\n\r\nTrang trí nội thất là sân chơi nơi anh ấy làm “chủ nhà”, chính vì thế, Jean-Louis Deniot luôn thỏa sức thể hiện những dấu ấn cá nhân và điểm mạnh sáng tạo. \r\n\r\nĐược công nhận trên toàn thế giới về phong cách nội thất chiết trung và biểu tượng, Jean-Louis Deniot đem đến những “bản hòa tấu” cho các công trình nội thất của mình. \r\n\r\n3. RYAN KORBAN\r\n\r\nỞ độ tuổi 30, Ryan Korban đã tạo dựng được tên tuổi cho bản thân. Chính nhờ quan điểm mạnh mẽ và một gu thẩm mỹ đặc trưng, ​​Ryan Korban đã dẫn đường cho những thiết kế truyền thống tiếp cận với thế hệ trẻ. \r\n\r\n\r\nCông trình Upper Side Residence của Ryan Korban\r\n4. KELLY HOPPEN\r\nKelly Hoppen là một nhà thiết kế nội thất người Anh có tên tuổi lớn nhất nhì trong giới thiết kế nội thất thế giới. Cô là tác giả và chủ sở hữu của Kelly Hoppen Interior. Các công trình của nhà thiết kế gốc Do Thái và Ailen không chỉ tập trung vào khách sạn hay nhà ở mà còn đào sâu vào lĩnh vực thiết kế du thuyền cho khách hàng tư nhân hay các dự án thương mại trên toàn thế giới như nhà hàng, văn phòng và máy bay.\r\n\r\n\r\n\r\nCông trình Private Home của Kelly Hoppen\r\n\r\n5. PHILIPPE STARCK\r\nPhilippe Starck là người sáng tạo, nhà thiết kế và kiến ​​trúc sư người Pháp nổi tiếng trên thế giới. Các thiết kế độc đáo của ông đều ưu tiên tính công năng hơn vẻ đẹp mỹ thuật. Ổng nổi tiếng với những thiết kế khách sạn như một tác phẩm nghệ thuật vượt thời gian, một biểu tượng góp phần tạo nên diện mạo mới cho cảnh quan thành phố.\r\n\r\n\r\n\r\nCông trình của Philippe Starck', '002', 'top-5-nha-thiet-ke-noi-that-co-tam-anh-huong-nhat-the-gioi', '2023-12-21 10:01:42', '2023-12-21 10:01:42'),
(18, 'XU HƯỚNG MỚI CỦA GIỚI TRẺ VIỆT: NHÀ ĐẸP TRƯỚC ĐÃ RỒI ĐÂU SẼ VÀO ĐẤY!', 'https://res.cloudinary.com/tsix-project/image/upload/v1703152954/tsix/odsz6ac1oslroadsiika.webp', 'Vậy là chúng ta đã và đang cùng nhau trải qua chuỗi ngày giãn cách xã hội (social distancing) với mục đích giảm thiểu nguy cơ lây nhiễm chéo của dịch bệnh Covid-19. Dù muốn hay không thì chẳng ai có thể phủ nhận rằng đây là một cột mốc khó quên đối với tất cả. Từ những người trẻ ngày ngày chạy nhảy khắp nơi và chẳng mấy khi ở nhà, nhiều người giờ đây phải bỡ ngỡ học cách ở yên một chỗ suốt vài tuần liền. Cũng từ đây mà mới nảy sinh ra nhiều tình huống dở khóc dở cười.\r\n\r\nLướt một vòng quanh mạng xã hội, không khó để bắt gặp vô vàn sắc thái tâm trạng khác nhau của các bạn trẻ. Tâm lý quen thuộc nhất chính là hội những người chillax tuyệt đối. Đây là những nhân vật chẳng có vấn đề gì với \"kì nghỉ bất đắc dĩ\", thậm chí còn tìm ra vô số những sở thích mới để lấp đầy khoảng thời gian rảnh rỗi như nấu ăn, trang trí nhà cửa, học đàn, học nhảy - nói chung là hoàn toàn ổn. Trong khi đó ở một diễn biến khác, chúng ta phát hiện có kha khá người lại cảm thấy không thoải mái ngay trong không gian sống của mình.\r\n\r\nMột bạn nữ tên Uyên Thi hiện đang sống ở TP.Hồ Chí Minh chia sẻ: \"Bình thường mình đi từ sáng sớm đến tối khuya, về nhà cũng chỉ ngủ với ôm điện thoại. Nay ở nhà lâu mới nhận ra cái nhà mà chẳng giống... cái nhà chút nào! Bàn làm việc thì cũ kĩ nhìn chán chẳng có chút động lực, phòng thì rộng nhưng tìm mãi không ra chỗ nào tử tế để ngồi đọc sách, uống cà phê. Đến ngay cả những món trang trí để cho không gian sống động hơn cũng cũ kĩ đóng bụi. Thấy người ta ngày ngày khoe ảnh lên hội \"Nghiện nhà\" rồi nhìn lại nhà mình mà xấu hổ ghê!\"\r\n\r\nCô bạn trên là đại diện cho rất nhiều bạn trẻ ngoài kia. Ngay từ tuổi 18, 19, chúng ta đã được khuyến khích nên đầu tư cho những trải nghiệm bên ngoài, nào là hãy đi nhiều hơn, tận hưởng nhiều hơn, nhưng tuyệt nhiên không ai nói về sự quan trọng của không gian sống - nơi mà mỗi người gắn bó, gần gũi và thuộc về. Gọi là \"nhà\" nhưng cách đối xử thì còn thua cả \"phòng trọ\", để rồi đến khi phải rơi vào những tháng ngày social distancing, nhiều người mới nhận ra sự thiếu chăm sóc, quan tâm của mình dành cho nơi đây.', '002', 'xu-huong-moi-cua-gioi-tre-viet:-nha-đep-truoc-đa-roi-đau-se-vao-đay!', '2023-12-21 10:02:35', '2023-12-21 10:02:35');

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
(10, 5, 'Sản phẩm thuộc bàn ăn', 'https://res.cloudinary.com/tsix-project/image/upload/v1700041911/tsix/gvvnlcimsrjmvcs6ocle.jpg', 12000000, 'Gỗ mềm', '1m5', 'Tsix', 'test độ dài: \r\nNot shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options.Not shared. Only administrators can manage this folder.Upload the first asset in this folder\r\nDrag and drop to add assets, or use the Upload button for more options. test độ dài . test độ dài . test độ dài. test độ dài. test độ dài. test độ dài', 55, 'san-pham-thuoc-ban-an', '2023-11-09 08:50:17', '2023-12-22 02:35:32'),
(12, 8, 'Bàn học', 'https://res.cloudinary.com/tsix-project/image/upload/v1700041990/tsix/ck2twbbgv6wigt6fpxha.webp', 12, '123', '123', '312', 'saaaaaaaa 21 2e2e ', 6, 'ban-hoc', '2023-11-10 04:01:51', '2023-11-15 09:53:11'),
(14, 5, 'Bàn gỗ kính', 'https://res.cloudinary.com/tsix-project/image/upload/v1703078140/tsix/zcw26siydsqq5xqzph81.jpg', 3200000, 'Gỗ', '2m8', 'T-six', 'Bàn gỗ mặt kính và ghế gỗ cứng', 2, 'ban-go-kinh', '2023-11-12 14:36:11', '2023-12-20 13:16:06'),
(15, 5, 'Bàn gỗ nhỏ', 'https://res.cloudinary.com/tsix-project/image/upload/v1700042188/tsix/ycfzhsn8hui3omcnpq7s.jpg', 0, '666', '666m', 't6', 'fsef', 5, 'ban-go-nho', '2023-11-12 14:36:15', '2023-11-15 10:03:01'),
(17, 5, 'Ghế gỗ đơn giản', 'https://res.cloudinary.com/tsix-project/image/upload/v1700317512/tsix/urngtecuswul0agylzml.jpg', 150000, 'Gỗ ép', '1m', 'Không rõ', 'ghế gỗ sạch đẹp', 81, 'ghe-go-đon-gian', '2023-11-12 14:36:20', '2023-12-20 13:13:36'),
(18, 18, 'Đồng hồ', 'https://res.cloudinary.com/tsix-project/image/upload/v1700654874/tsix/htonupglpzs7v6hbwftn.jpg', 11550000, 'Hợp kim titan', '3m1', 'Rolex', 'Không có mô tả', 1, 'đong-ho', '2023-11-12 14:36:23', '2023-12-22 02:41:58'),
(23, 5, 'Bàn ăn Peak hiện đại mặt Ceramic vân mây', 'https://res.cloudinary.com/tsix-project/image/upload/v1703077476/tsix/zrmpw3xzdekuqxxz9eo9.jpg', 4490000, 'Mặt bàn Ceramic nhập khẩu Ý chịu nhiệt', 'D2000 - R1000 - C750 mm', 'Peak', 'Bàn ăn Peak hiện đại với bề mặt Ceramic được nhập khẩu từ Ý. Mặt Ceramic có khả năng chịu nhiệt tốt với họa tiết vân mây tinh xảo tạo cảm giác vừa vững chắc, vừa uyển chuyển. Chân bàn được thiết kế theo hình tam giác với các góc cạnh bo tròn hiện đại cùng những đường nét uốn lượn mềm mại. Bàn ăn Peak với tông màu trắng trang nhã sẽ mang đến một không gian sống sang trọng và đẳng cấp.', 17, 'ban-an-peak-hien-đai-mat-ceramic-van-may', '2023-12-20 13:04:38', '2023-12-20 13:04:38'),
(24, 5, 'Bàn ăn Lucia', 'https://res.cloudinary.com/tsix-project/image/upload/v1703077723/tsix/tnzmgkgprbsw0lua9s6y.jpg', 1500000, 'chân kim loại - mặt đá', 'D1350 - R1350 - C750 mm', 'Lucia', 'Chưa có bài đánh giá.', 0, 'ban-an-lucia', '2023-12-20 13:08:46', '2023-12-20 13:08:46'),
(25, 8, 'Ghế ăn Coastal KD1085-18', 'https://res.cloudinary.com/tsix-project/image/upload/v1703077897/tsix/mqlfsijii8udbrh077rb.jpg', 1566000, 'Gỗ Ash - nệm bọc vải', 'D435 - R525 - C840 mm', 'Coastal', 'Coastal mang đậm chất Việt khi khéo léo dung hòa được những nét đẹp lấy cảm hứng từ miền duyên hải nước ta với các vật liệu cao cấp, lối thiết kế hiện đại. Ghế ăn Coastal với bốn chân gỗ chắc chắn, được bọc vải êm ái cùng thiết kế phù hợp với thể trạng người Việt. Tất cả những phần tiếp xúc với cơ thể đều mềm mại, thanh thoát. Ngôn ngữ thiết kế của Coastal kết hợp đường nét uyển chuyển và tự nhiên, chất vải xanh tươi mát mang màu sắc của biển cùng nét vững chãi, tông gỗ ấm áp tạo nên sự tương phản hài hòa tựa như biển rộng bí ẩn và đất liền thân thuộc.', 156, 'ghe-an-coastal-kd1085-18', '2023-12-20 13:11:39', '2023-12-20 13:11:50'),
(30, 5, 'Bàn Ăn Gỗ Cao Su Màu Xám ', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087281/tsix/yakipwi0tzkaeohujcur.jpg', 987000, 'Gỗ cao su ', 'D120xR75xC75', 'Ken', 'Tính năng nổi bật:\r\n\r\nSản phẩm được hoàn thiện với chất liệu gỗ MDF chất lượng với bề mặt ghế phủ lớp Veneer tần bì giúp bảo vệ lớp gỗ tốt, chống tình trạng mối mọt hay bị biến dạng bởi tác động nhiệt của thời tiết.\r\n\r\nMặt bàn và các chân ghế được hoàn thiện với chất lượng cao, mang lại tổng thể vừa đẹp mắt vừa có độ bền theo năm tháng. \r\n\r\n \r\nLợi ích:\r\n\r\nTính đa năng cao, có thể sử dụng trong nhiều mục đích khác nhau như: ăn uống, bàn trò chơi hay dùng để học tập, làm việc.\r\n\r\nBàn ăn giúp gắn kết mọi thành viên trong gia đình trong mọi bữa ăn.\r\n\r\nBàn ăn KENNY kích thước lớn rất phù hợp để tổ chức tiệc tối hoặc các sự kiện đặc biệt quan trọng.\r\n\r\nBàn ăn KENNY mang sắc xám đơn giản cùng thiết kế vân gỗ giúp tạo thêm điểm nhấn đặc biệt trong không gian bếp.\r\n\r\n \r\nKhông gian thích hợp:\r\n\r\nPhù hợp để đặt ở các phòng bếp-phòng ăn trong mọi gia đình. Tuyệt vời hơn, bạn có thể sử dụng bàn KENNY để làm nơi trang trí phòng khách như đặt tranh ảnh, hoa, nến, … hoặc thậm chí bạn có thể tận dụng để làm việc, làm bài tập.\r\n\r\n----------\r\n\r\nSản phẩm	Bàn ăn\r\nBộ sưu tập	KENNY\r\nKích cỡ	L120xW75xH75\r\nMàu sắc	Màu xám\r\nChất liệu	Rubber-wood-MDF-Ash-veneer\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS\r\n----------', 20, 'ban-an-go-cao-su-mau-xam-', '2023-12-20 15:48:01', '2023-12-20 15:48:01'),
(31, 6, 'Bàn làm việc Gỗ thông Gỗ đậm CHESTER', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087401/tsix/ozrhpcrkcot1sqszyk87.webp', 4193000, 'Gỗ thông', 'W100 x D60 x H170', 'CHESTER', 'Sản phẩm	Bàn làm việc\r\nBộ sưu tập	CHESTER\r\nKích cỡ	W100 x D60 x H170\r\nMàu sắc	Màu gỗ đậm\r\nChất liệu	Gỗ thông\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS\r\n----------\r\nLàm việc tại nhà chẳng là chuyện dễ dàng với những ai vốn đã quen bầu không gian công sở, đặc biệt là những người hay mất tập trung bởi hàng tá những vật dụng bừa bộn khi làm việc như giấy tờ, bút viết, tài liệu...\r\n\r\nHãy tạm biệt ngay với những giây phút mất tập trung ấy với chiếc bàn làm việc CHESTER, một thiết kế đặc trưng của BAYA ngay!\r\n\r\nChất liệu: Gỗ thông cao cấp, độ bền cao.\r\nThiết kế: Gồm 1 hộc kéo bên dưới và một hộc cửa lùa bên trên. Với hộc cửa lùa, bạn có thể tận dụng làm kệ sách nhỏ, phần trống trên kệ làm nơi.\r\nĐặt sản phẩm nơi khô thoáng\r\nKhông kéo, đẩy sản phẩm trên sàn\r\nKhông để các vật nóng hoặc lạnh tiếp xúc trực tiếp với bề mặt sản phẩm\r\nSử dụng miếng lót ly/đế lót trước khi đặt đồ vật lên bề mặt sản phẩm\r\nLuôn lau sạch ngay mọi vết đổ và lau khô bằng vải mềm\r\nKhông sử dụng hóa chất hoặc các chất tẩy rửa ăn mòn trên sản phẩm\r\nKhông dùng vật sắc nhọn chà xát lên sản phẩm\"', 20, 'ban-lam-viec-go-thong-go-đam-chester', '2023-12-20 15:50:02', '2023-12-20 15:50:02'),
(32, 6, 'Bàn Học Liền Giá Sách gỗ nâu STUDENT', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087735/tsix/h88ynsgy31zyzpux0kyb.webp', 981000, 'gỗ nâu', 'D51 x W94 x H128', 'STUDENT', '----------\r\n \r\nSản phẩm	Bàn làm việc\r\nBộ sưu tập	STUDENT\r\nKích cỡ	D51 x W94 x H128\r\nMàu sắc	Nâu / Đen\r\nChất liệu	MFC / Kim loại\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS\r\n----------\r\nBộ sưu tập nội thất văn phòng Student: Sự kết hợp hoàn hảo giữa Thẩm mỹ và Công năng sử dụng\r\n\r\nTrong nhịp sống hiện đại, nơi mà hoạt động làm việc và học tập tại nhà trở nên ngày càng quan trọng, việc chọn một sản phẩm bàn học hay tủ kệ văn phòng phù hợp là điều không thể thiếu. Những vật dụng này không chỉ phải đảm bảo tính chất lượng và chắc chắn mà còn phải thể hiện sự thẩm mỹ và phù hợp với môi trường làm việc và nội thất trong gia đình. Bộ sưu tập Student chính là sự lựa chọn hoàn hảo cho nhu cầu của bạn.\r\n\r\nKhung sắt và về mặt hoàn thiện xuất sắc\r\n\r\nKhung sắt là yếu tố quan trọng tạo nên sự chắc chắn và độ bền của các sản phẩm nội thất trong bộ sưu tập Student. Khung sắt được chế tạo bằng công nghệ tiên tiến, giúp đảm bảo tính cứng cáp và độ bền vượt trội. Với mức độ hoàn thiện cao, bạn có thể yên tâm sử dụng các sản phẩm trong thời gian dài mà không cần lo lắng về sự trầy xước hoặc biến dạng.\r\n\r\nMặt bàn và ngăn tủ kệ được làm từ gỗ công nghiệp cao cấp, chất lượng và hoàn thiện tinh tế. Gỗ công nghiệp không chỉ giúp bảo vệ môi trường mà còn đảm bảo tính chất lượng và đẹp mắt. Sự hoàn thiện tỉ mỉ trên mặt gỗ tạo nên một bề mặt mịn màng và dễ dàng vệ sinh, giúp bàn luôn giữ được vẻ đẹp ban đầu suốt thời gian dài.\r\n\r\nThiết kế hiện đại và thẩm mỹ\r\n\r\nBộ sản phẩm Student không chỉ có tính chất lượng và chắc chắn mà còn mang đậm phong cách hiện đại. Thiết kế đơn giản, gọn gàng và tiện dụng giúp các sản phẩm phù hợp với mọi không gian làm việc và gia đình. Bạn có thể dễ dàng kết hợp bàn, tủ kệ với các loại ghế và trang trí nội thất khác để tạo nên một môi trường làm việc thú vị và sáng tạo.\r\n\r\n• Thường xuyên lau sản phẩm bằng khăn ẩm với nước hoặc dung dịch vệ sinh chuyên dụng dành cho gỗ, lau khô lại bằng khăn mềm\r\n• Đặt sản phẩm tại nơi khô thoáng, tránh độ ẩm cao, tránh nhiệt độ cao, nguồn sáng mạnh và các vật dễ cháy\r\n• Tránh để sản phẩm tiếp xúc với nước và nhiệt độ cao trong thời gian dài. Khi sản phẩm bị ướt, cần lau khô ngay lập tức\r\n• Không dùng vật sắc nhọn chà xát sản phẩm', 0, 'ban-hoc-lien-gia-sach-go-nau-student', '2023-12-20 15:55:35', '2023-12-20 15:55:35'),
(33, 6, 'Bàn Học JOY 80', 'https://res.cloudinary.com/tsix-project/image/upload/v1703087877/tsix/bvpoaxym83e9m2s6ljn3.webp', 1768000, 'MFC / Kim loại', 'D48xW80xH73 ', 'JOY', 'Sản phẩm	Bàn làm việc\r\nBộ sưu tập	JOY\r\nKích cỡ	D48xW80xH73 ∙ With wheels\r\nMàu sắc	Gỗ sáng / Trắng\r\nChất liệu	MFC / Kim loại\r\nXuất xứ	Trung Quốc\r\nĐơn vị	PCS\r\n----------\r\nTrong nhịp sống hiện đại, nơi mà hoạt động làm việc và học tập tại nhà trở nên ngày càng quan trọng, việc chọn một sản phẩm bàn học/làm việc phù hợp cho con bạn và các thành viên khác trong gia đình là điều không thể thiếu.\r\n\r\nNhững vật dụng này không chỉ phải đảm bảo tính chất lượng và chắc chắn mà còn phải thể hiện sự thẩm mỹ và phù hợp với môi trường làm việc và nội thất trong gia đình. Bộ sưu tập Joy chính là sự lựa chọn hoàn hảo cho nhu cầu của bạn.\r\n\r\nKhung sắt sơn tĩnh điện chắc chắn\r\n\r\nKhung sắt là yếu tố quan trọng tạo nên sự chắc chắn và độ bền của bàn học Joy. Khung sắt được chế tạo bằng công nghệ tiên tiến, giúp đảm bảo tính cứng cáp và độ bền vượt trội. Với mức độ hoàn thiện cao, bạn có thể yên tâm sử dụng các sản phẩm trong thời gian dài mà không cần lo lắng về sự trầy xước hoặc biến dạng.\r\n\r\nMặt bàn được làm từ gỗ công nghiệp cao cấp, chất lượng và hoàn thiện tinh tế. Gỗ công nghiệp không chỉ giúp bảo vệ môi trường mà còn đảm bảo tính chất lượng và đẹp mắt. Sự hoàn thiện tỉ mỉ trên mặt gỗ tạo nên một bề mặt mịn màng và dễ dàng vệ sinh, giúp bàn luôn giữ được vẻ đẹp ban đầu suốt thời gian dài.\r\n\r\nThiết kế hiện đại và thẩm mỹ\r\n\r\nBộ sản phẩm Joy không chỉ có tính chất lượng và chắc chắn mà còn mang đậm phong cách hiện đại. Thiết kế đơn giản, gọn gàng và tiện dụng giúp các sản phẩm phù hợp với mọi không gian làm việc và gia đình. Bạn có thể dễ dàng kết hợp bàn, tủ kệ với các loại ghế và trang trí nội thất khác để tạo nên một môi trường làm việc thú vị và sáng tạo.', 20, 'ban-hoc-joy-80', '2023-12-20 15:57:58', '2023-12-22 02:36:18'),
(34, 15, 'Giường gỗ sồi 1m6 LUCAS', 'https://res.cloudinary.com/tsix-project/image/upload/v1703088100/tsix/pkhlp69sahv7ecmjxq9i.jpg', 8991000, 'MFC', '	L200xW160xH102', 'LUCAS', 'Giường LUCAS là một sản phẩm nội thất đa năng, mang đến cho bạn không gian nghỉ ngơi thoải mái và tiện nghi. Giường có kích thước 1670 x 2146 x 1020 mm, phù hợp với nhiều không gian phòng ngủ khác nhau.\r\n\r\nGiường được làm từ gỗ  cao cấp, có khả năng chống ẩm, chống mối mọt, mang đến độ bền cao. Thiết kế giường đơn giản, hiện đại, với đầu giường bọc nệm êm ái. Giường có thể kết hợp với nhiều loại nệm khác nhau, phù hợp với sở thích và nhu cầu của người sử dụng.\r\n\r\nDưới đây là một số ưu điểm nổi bật của giường LUCAS :\r\n\r\nChất liệu cao cấp, bền bỉ\r\nThiết kế đơn giản, hiện đại\r\nĐầu giường bọc nệm êm ái\r\n----------\r\nSản phẩm	Giường\r\nBộ sưu tập	LUCAS\r\nKích cỡ	L200xW160xH102\r\nMàu sắc	Oak\r\nChất liệu	MFC\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS\r\n----------', 20, 'giuong-go-soi-1m6-lucas', '2023-12-20 16:01:41', '2023-12-20 16:01:41'),
(60, 5, 'Bàn Ăn Vân Gỗ Sồi CARINE', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086252/tsix/er8ysoco7gwntef05td2.webp', 3494000, 'gỗ sồi veneer cao cấp', '20', 'CARINE', 'Thanh lịch, quý phái, và đầy tiện ích! Bạn còn có thể đòi hỏi gì nữa ở chiếc bàn cà phê CARINE tuyệt vời này chứ!\r\n\r\nĐược làm từ chất liệu gỗ sồi veneer cao cấp và khung sắt sơn tĩnh điện, chiếc bàn cà phê CARINE quả thật là một điểm nhấn bắt mắt mà không ai có thể bỏ lỡ.\r\n\r\nVà đừng bao giờ tự giới hạn bản thân mình hết! Phòng khách hay phòng ngủ, chiếc bàn cà phê này đều phù hợp hết cả! Sản phẩm là một thiết kế độc quyền của BAYA.\r\n\r\n\r\n \r\n\r\n\r\n----------\r\nSản phẩm	Bàn cà phê\r\nBộ sưu tập	CARINE\r\nKích cỡ	H50xDia80\r\nMàu sắc	Light-Wood-Black\r\nChất liệu	MDF-Oak-Veneer-Metal\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS\r\n----------\r\n• Đặt sản phẩm nơi khô thoáng\r\n\r\n• Không kéo, đẩy sản phẩm trên sàn gồ ghề\r\n\r\n• Luôn lau sạch mọi vết đổ, bẩn với vải mềm\r\n\r\n• Không sử dụng vật sắc nhọn chà xát lên sản phẩm', 20, 'ban-an-van-go-soi-carine', '2023-12-20 15:30:52', '2023-12-20 15:30:52'),
(61, 6, 'Bàn Làm Việc Liền Giá Sách gỗ sáng STUDENT', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086879/tsix/vwqlo9s86nbklpgrn54s.webp', 1791000, 'MFC / Kim loại', 'D74xW48xH146.5', 'STUDENT', '\r\n \r\nSản phẩm	Bàn làm việc\r\nBộ sưu tập	STUDENT\r\nKích cỡ	D74xW48xH146.5\r\nMàu sắc	Nâu / Đen\r\nChất liệu	MFC / Kim loại\r\nXuất xứ	Trung Quốc\r\nĐơn vị	PCS\r\n----------\r\nBộ sưu tập nội thất văn phòng Student: Sự kết hợp hoàn hảo giữa Thẩm mỹ và Công năng sử dụng\r\n\r\nTrong nhịp sống hiện đại, nơi mà hoạt động làm việc và học tập tại nhà trở nên ngày càng quan trọng, việc chọn một sản phẩm bàn học hay tủ kệ văn phòng phù hợp là điều không thể thiếu. Những vật dụng này không chỉ phải đảm bảo tính chất lượng và chắc chắn mà còn phải thể hiện sự thẩm mỹ và phù hợp với môi trường làm việc và nội thất trong gia đình. Bộ sưu tập Student chính là sự lựa chọn hoàn hảo cho nhu cầu của bạn.\r\n\r\nKhung sắt và về mặt hoàn thiện xuất sắc\r\n\r\nKhung sắt là yếu tố quan trọng tạo nên sự chắc chắn và độ bền của các sản phẩm nội thất trong bộ sưu tập Student. Khung sắt được chế tạo bằng công nghệ tiên tiến, giúp đảm bảo tính cứng cáp và độ bền vượt trội. Với mức độ hoàn thiện cao, bạn có thể yên tâm sử dụng các sản phẩm trong thời gian dài mà không cần lo lắng về sự trầy xước hoặc biến dạng.\r\n\r\nMặt bàn và ngăn tủ kệ được làm từ gỗ công nghiệp cao cấp, chất lượng và hoàn thiện tinh tế. Gỗ công nghiệp không chỉ giúp bảo vệ môi trường mà còn đảm bảo tính chất lượng và đẹp mắt. Sự hoàn thiện tỉ mỉ trên mặt gỗ tạo nên một bề mặt mịn màng và dễ dàng vệ sinh, giúp bàn luôn giữ được vẻ đẹp ban đầu suốt thời gian dài.\r\n\r\nThiết kế hiện đại và thẩm mỹ\r\n\r\nBộ sản phẩm Student không chỉ có tính chất lượng và chắc chắn mà còn mang đậm phong cách hiện đại. Thiết kế đơn giản, gọn gàng và tiện dụng giúp các sản phẩm phù hợp với mọi không gian làm việc và gia đình. Bạn có thể dễ dàng kết hợp bàn, tủ kệ với các loại ghế và trang trí nội thất khác để tạo nên một môi trường làm việc thú vị và sáng tạo.', 20, 'ban-lam-viec-lien-gia-sach-go-sang-student', '2023-12-20 15:41:20', '2023-12-20 15:41:20'),
(70, 6, 'Bàn Học JOY 60', 'https://res.cloudinary.com/tsix-project/image/upload/v1703086509/tsix/ndjs0qnhiwfwqq5tux7f.webp', 791000, 'MFC / Kim loại', 'D48xW60xH73', 'JOY 60', 'Trong nhịp sống hiện đại, nơi mà hoạt động làm việc và học tập tại nhà trở nên ngày càng quan trọng, việc chọn một sản phẩm bàn học/làm việc phù hợp cho con bạn và các thành viên khác trong gia đình là điều không thể thiếu.\r\n\r\nNhững vật dụng này không chỉ phải đảm bảo tính chất lượng và chắc chắn mà còn phải thể hiện sự thẩm mỹ và phù hợp với môi trường làm việc và nội thất trong gia đình. Bộ sưu tập Joy chính là sự lựa chọn hoàn hảo cho nhu cầu của bạn.\r\n\r\nKhung sắt sơn tĩnh điện chắc chắn\r\n\r\nKhung sắt là yếu tố quan trọng tạo nên sự chắc chắn và độ bền của bàn học Joy. Khung sắt được chế tạo bằng công nghệ tiên tiến, giúp đảm bảo tính cứng cáp và độ bền vượt trội. Với mức độ hoàn thiện cao, bạn có thể yên tâm sử dụng các sản phẩm trong thời gian dài mà không cần lo lắng về sự trầy xước hoặc biến dạng.\r\n\r\nMặt bàn được làm từ gỗ công nghiệp cao cấp, chất lượng và hoàn thiện tinh tế. Gỗ công nghiệp không chỉ giúp bảo vệ môi trường mà còn đảm bảo tính chất lượng và đẹp mắt. Sự hoàn thiện tỉ mỉ trên mặt gỗ tạo nên một bề mặt mịn màng và dễ dàng vệ sinh, giúp bàn luôn giữ được vẻ đẹp ban đầu suốt thời gian dài.\r\n\r\nThiết kế hiện đại và thẩm mỹ\r\n\r\nBộ sản phẩm Joy không chỉ có tính chất lượng và chắc chắn mà còn mang đậm phong cách hiện đại. Thiết kế đơn giản, gọn gàng và tiện dụng giúp các sản phẩm phù hợp với mọi không gian làm việc và gia đình. Bạn có thể dễ dàng kết hợp bàn, tủ kệ với các loại ghế và trang trí nội thất khác để tạo nên một môi trường làm việc thú vị và sáng tạo.', 20, 'ban-hoc-joy-60', '2023-12-20 15:35:11', '2023-12-20 15:53:43'),
(234, 5, 'Bàn ăn tròn Tokyo FD 120', 'https://res.cloudinary.com/tsix-project/image/upload/v1703085251/tsix/x601wzj97cdacqlkancj.jpg', 38570000, 'Chân gỗ beech - Mặt kính trắng trong cường lực', 'D1200-R1200-C750 mm', 'Tokyo FD 120', 'Bàn ăn tròn Tokyo FD 120 được nhập khẩu từ thương hiệu nổi tiếng Calligaris của Ý có thiết kế theo phong cách bàn ăn cổ điển. Bàn ăn nổi bật nhờ chân đế bằng gỗ sồi cứng với các cạnh tròn, mặt bàn bằng kính cường lực, 4 chân với các đường xiên vẽ chữ \"X\" được nối chính giữa bởi một yếu tố kết nối kim loại. Với những thiết kế đặc biệt trên, bàn ăn Tokyo mang đến sự thoải mái tuyệt đối cho tất cả mọi người.', 20, 'ban-an-tron-tokyo-fd-120', '2023-12-20 15:14:12', '2023-12-20 15:14:12'),
(253, 5, 'Bàn Ăn Gỗ Cao Su Màu Xám Vân Gỗ KENNY', 'https://res.cloudinary.com/tsix-project/image/upload/v1703085605/tsix/nemikjkxplqehmllqdwc.webp', 3591000, 'Gỗ Cao Su ', 'D120xR75xC75', 'KENNY', 'Tính năng nổi bật:\r\n\r\nSản phẩm được hoàn thiện với chất liệu gỗ MDF chất lượng với bề mặt ghế phủ lớp Veneer tần bì giúp bảo vệ lớp gỗ tốt, chống tình trạng mối mọt hay bị biến dạng bởi tác động nhiệt của thời tiết.\r\n\r\nMặt bàn và các chân ghế được hoàn thiện với chất lượng cao, mang lại tổng thể vừa đẹp mắt vừa có độ bền theo năm tháng. \r\n\r\n \r\nLợi ích:\r\n\r\nTính đa năng cao, có thể sử dụng trong nhiều mục đích khác nhau như: ăn uống, bàn trò chơi hay dùng để học tập, làm việc.\r\n\r\nBàn ăn giúp gắn kết mọi thành viên trong gia đình trong mọi bữa ăn.\r\n\r\nBàn ăn KENNY kích thước lớn rất phù hợp để tổ chức tiệc tối hoặc các sự kiện đặc biệt quan trọng.\r\n\r\nBàn ăn KENNY mang sắc xám đơn giản cùng thiết kế vân gỗ giúp tạo thêm điểm nhấn đặc biệt trong không gian bếp.\r\n\r\n \r\nKhông gian thích hợp:\r\n\r\nPhù hợp để đặt ở các phòng bếp-phòng ăn trong mọi gia đình. Tuyệt vời hơn, bạn có thể sử dụng bàn KENNY để làm nơi trang trí phòng khách như đặt tranh ảnh, hoa, nến, … hoặc thậm chí bạn có thể tận dụng để làm việc, làm bài tập.\r\n\r\n----------\r\n\r\nSản phẩm	Bàn ăn\r\nBộ sưu tập	KENNY\r\nKích cỡ	L120xW75xH75\r\nMàu sắc	Màu xám\r\nChất liệu	Rubber-wood-MDF-Ash-veneer\r\nXuất xứ	Việt Nam\r\nĐơn vị	PCS', 20, 'ban-an-go-cao-su-mau-xam-van-go-kenny', '2023-12-20 15:20:07', '2023-12-20 15:20:07'),
(264, 5, 'Bàn Ăn MDF Chân Sắt VERONA', 'https://res.cloudinary.com/tsix-project/image/upload/v1703085979/tsix/kebhp5ucvpvvychvnn55.webp', 995000, 'Gỗ công nghiệp bền chắc', 'D75xR75xC75', 'VERONA', 'Bàn ăn VERONA nổi bật với màu trắng tinh khôi được làm từ gỗ công nghiệp bền chắc. Rất phù hợp với những gia đình ít người và không gian phòng bếp hạn chế. Mặt bàn được xử lý kỹ càng, mang vẻ đẹp tinh xảo. Chân bàn làm từ kim loại, cho độ cứng cáp và chắc chắn cao. Bạn có thể kết hợp bàn cùng các sản phẩm khác trong cùng bộ sưu tập VERONA để hoàn thiện nội thất phòng ăn của gia đình bạn.\r\n----------\r\nSản phẩm	Bàn ăn\r\nBộ sưu tập	VERONA\r\nKích cỡ	L75xW75xH75 ∙ Black legs\r\nMàu sắc	Xám/ trắng\r\nChất liệu	MDF-Faux-granite\r\nXuất xứ	Việt Nam\r\nKiểu dáng	Functional\r\nĐơn vị	PCS\r\n----------\r\n• Đặt sản phẩm tại nơi khô ráo, thoáng mát; tránh để lâu ở những nơi ẩm thấp hay có nhiệt độ cao\r\n\r\n• Vệ sinh sản phẩm bằng khăn ẩm, sau đó lau khô.\r\n\r\n• Không dùng vật sắc nhọn chà xát sản phẩm', 20, 'ban-an-mdf-chan-sat-verona', '2023-12-20 15:26:20', '2023-12-20 15:26:56'),
(265, 5, 'Bàn ghế ăn mặt đá', 'https://res.cloudinary.com/tsix-project/image/upload/v1703156655/tsix/g75yu6evy4hym47yxiwo.jpg', 17990000, 'Gỗ tự nhiên - mặt đá', '(1210*1512)x800mm', 'T-SIX', 'Bộ bàn ghế ăn đẹp C815 hiện đại đang chinh phục rất nhiều khách hàng khó tính đến với Nội Thất Xinh. Hãy cùng tham khảo thông tin về sản phẩm này ngay dưới đây nhé!\r\n\r\nThông tin về bàn ghế ăn C815\r\nChất liệu: Gỗ tự nhiên, không mối mọt\r\nMặt bàn đá cẩm thạch kết hợp với chất liệu gỗ Sồi tạo điểm nhấn\r\nKích thước bàn ăn: (1210-1512)x800mm\r\nMặt bàn có thể co giãn kích thước linh loạt để phù hợp với không gian\r\nKiểu dáng thiết kế hiện đại\r\nMàu sắc trung tính nổi bật khi bày trí trong nhiều không gians\r\nBảo hành 1 năm về lỗi kỹ thuật', 20, 'ban-ghe-an-mat-đa', '2023-12-21 10:30:13', '2023-12-21 11:04:15'),
(266, 5, 'Bộ bàn ghế ăn đẹp 6 ghế', 'https://res.cloudinary.com/tsix-project/image/upload/v1703156635/tsix/uz9iyb1abnmtzhqjmagv.jpg', 3990000, 'Gỗ Sồi + mặt đá cẩm thạch', '1350x1350 mm', 'T-SIX', 'Bộ bàn ghế ăn đẹp 6 ghế BA195-1 - lựa chọn cao cấp cho phòng bếp\r\nXuất xứ: Nhập khẩu cao cấp\r\nKích thước bàn ăn cao cấp: 1350 x 1350 mm\r\nMặt bàn ghế ăn đẹp hình tròn, thiết kế mân xoay tiện nghi\r\nSử dụng mặt đá cẩm thạch sang trọng với vân đá tự nhiên đẹp\r\nBàn ăn hình tròn tiết kiệm diện tích bày trí trong ngôi nhà\r\nGhế ăn bọc da Microfiber êm ái, mềm mại như da thật\r\nKhung bàn ăn, ghế ăn được gia công từ chất liệu gỗ Sồi tự nhiên\r\nGam màu Nâu đất nổi bật, mang tới không gian ấm áp\r\nBộ bàn ghế ăn gồm có 1 bàn và 6 ghế', 20, 'bo-ban-ghe-an-đep-6-ghe', '2023-12-21 10:32:26', '2023-12-21 11:03:55'),
(267, 5, 'Bộ bàn ăn 6 ghế mặt đá', 'https://res.cloudinary.com/tsix-project/image/upload/v1703156691/tsix/rqfl0ofaclu8mksbysuu.jpg', 2199000, 'Bàn mặt đá - chân thép', '1600*900', 'T-SIX', 'Thông tin chi tiết về sản phẩm bàn ăn mặt đá BA1908\r\nKích thước bộ bàn ghế ăn: 1600*800*750 mm\r\nChất liệu: Khung thép phủ titan chống han rỉ và mang tới thẩm mỹ cao\r\nBàn ăn sử dụng mặt đá marble đẹp, có họa tiết sang trọng\r\nMặt bàn đá dễ vệ sinh, lau chùi, có khả năng chống nhiệt, chống trầy xước tốt\r\nGhế ăn chân thép bọc da cao cấp chuyên dụng trong sản xuất sofa đẹp mang tới cảm giác êm ái khi sử dụng\r\nKiểu dáng thiết kế đẹp, độc đáo thích hợp sử dụng cho không gian hiện đại\r\nBộ bàn ăn 6 ghế đang là xu hướng lựa chọn của nhiều gia đình hiện nay\r\nBảo hành 1 năm về lỗi kỹ thuật\r\nPhân phối toàn quốc', 20, 'bo-ban-an-6-ghe-mat-đa', '2023-12-21 10:37:28', '2023-12-21 11:04:51'),
(268, 5, 'Bàn ghế ăn thông minh', 'https://res.cloudinary.com/tsix-project/image/upload/v1703156611/tsix/kn5ypvojdcphayu3zpyn.jpg', 7999000, 'Gỗ cao cấp + mặt kính cường lực', '(1200-1500)x800x750', 'T-SIX', 'Thông tin về bộ bàn ghế ăn mã XBA182\r\n\r\nKích thước bàn ăn: 1200-1500)x800x750 mm\r\nBàn ăn sử dụng kính cường lực có tuổi thọ cao, vệ sinh dễ dàng\r\nBàn ghế ăn được phủ sơn Men 4k chống ngả màu, bong tróc\r\nGhế ăn bọc da sang trọng\r\nGam màu tương phản mang tới không gian nổi bật', 0, 'ban-ghe-an-thong-minh', '2023-12-21 10:39:10', '2023-12-21 11:03:31'),
(269, 5, 'Bàn ghế ăn', 'https://res.cloudinary.com/tsix-project/image/upload/v1703156588/tsix/y4udsjs82m6ltservvlv.jpg', 1234000, 'Gỗ Sồi tự nhiên', '1600x760x760 mm', 'T-SIX', 'Thông tin về bộ bàn ghế ăn mã TN01\r\nKích thước bàn: 1600*760*760 mm\r\nChất liệu: sản xuất từ gỗ Sồi tự nhiên không mối mọt\r\nBộ bàn ghế ăn có màu Nâu đất đậm nên rất nổi bật khi được bày trí trong không gian có tone màu sáng\r\nGhế ăn được bọc da Microfiber giúp mang tới vẻ đẹp sang trọng, sự êm ái khi sử dụng\r\nKiểu dáng bàn ghế ăn được thiết kế theo phong cách truyền thống, mang tới không gian gần gũi\r\nBộ bàn ghế ăn gồm 01 bàn và 06 ghế\r\nPhù hợp bày trí trong không gian có diện tích nhỏ\r\nSản phẩm được bảo hành 1 năm về lỗi kỹ thuật', 20, 'ban-ghe-an', '2023-12-21 10:43:14', '2023-12-21 11:03:08'),
(270, 6, 'Bàn trà mặt đá', 'https://res.cloudinary.com/tsix-project/image/upload/v1703156570/tsix/wbq6ierqnnmxbdywxuux.jpg', 2990000, 'Gỗ - Mặt đá', '1300*700*450mm', 'T-SIX', 'Các mẫu bàn trà mặt đá hiện đại đang là sản phẩm được ưa chuộng hiện nay. Vì sản phẩm này mang tới vẻ đẹp sang trọng hơn, dễ vệ sinh và lau chùi trong quá trình sử dụng. Tại showroom của chúng tôi, hiện có nhiều mẫu bàn trà đẹp khác nhau, trong đó có mẫu bàn trà mặt đá BT2301.\r\n\r\nMẫu bàn trà mặt đá BT2301 là sản phẩm mới được nhập khẩu nguyên chiếc. Bàn trà được sản xuất từ những chất liệu hiện đại như: khung gỗ chống ẩm, chống mối mọt, chân thép mạ crom chống gỉ sét, mặt đá có màu sắc tươi sáng. Mẫu bàn trà này thích hợp với nhiều mẫu ghế sofa khác nhau.\r\n\r\nĐể hiểu hơn về sản phẩm này, hãy tham khảo những thông tin ngắn về mẫu bàn trà mà chúng tôi chia sẻ dưới đây.\r\n\r\nThông tin về bàn trà mặt đá BT2301\r\nKhung gỗ chống ẩm, chống mối mọt\r\nMặt đá vân mây màu sắc tươi sáng\r\nMặt đá dễ dàng vệ sinh, lau chùi vì không thấm nước\r\nHạn chế tình trạng ố vàng trên mặt bàn trà\r\nKích thước: 1300*700*450 mm\r\nChân bàn thép mạ crom chắc chắn, chống gỉ hiệu quả và có tuổi thọ cao\r\nThiết kế 2 ngăn kéo tiện lợi\r\nMàu sắc chủ đạo: đen - trắng, thích hợp với nhiều mẫu sofa khác nhau\r\nSản phẩm có sẵn tại showroom cho khách hàng tham khảo', 20, 'ban-tra-mat-đa', '2023-12-21 10:49:12', '2023-12-21 11:02:50'),
(271, 6, 'Bàn trà mặt đá H-1612', 'https://res.cloudinary.com/tsix-project/image/upload/v1703156538/tsix/dkcbwof0temd14kzbxjv.jpg', 9900000, ' Gỗ cao cấp + mặt đá', '1200x600x450mm', 'T-SIX', 'Nhu cầu về đồ nội thất phòng khách đẹp, cao cấp đang ngày càng tăng cao vì ai cũng muốn sở hữu không gian nội thất ấn tượng trong ngôi nhà. Do đó, ngoài việc lựa chọn những mẫu Bàn trà mặt đá phòng khách ấn tượng được nhiều người chú ý. Nếu vậy, quý vị đừng bỏ qua thông tin về sản phẩm Bàn trà mặt đá mã H-1612 dưới đây của Nội Thất Xinh nhé!\r\n\r\nXem thêm\r\n\r\nTừ A-Z các kích thước bàn trà phòng khách chuẩn nhất 2022\r\nBàn trà gỗ tự nhiên cao cấp: gợi ý hoàn hảo cho phòng khách\r\nBàn trà mặt đá mã H-1612 có thiết kế kích thước đa dạng\r\nKích thước của Bàn trà mặt đá cũng là một trong những yếu tố quan trọng khi đi lựa chọn đồ nội thất. Do đó, mẫu Bàn trà mặt đá mã H-1612 của Nội Thất Xinh được thiết kế với nhiều kích thước đa dạng cho quý vị lựa chọn. Có kích thước nhỏ gọn dành cho phòng khách có diện tích khiêm tốn và cũng có mẫu thiết kế kích thước lớn cho phòng khách rộng.', 20, 'ban-tra-mat-đa-h-1612', '2023-12-21 10:51:39', '2023-12-21 11:02:18'),
(272, 6, 'Bàn trà phòng khách đẹp', 'https://res.cloudinary.com/tsix-project/image/upload/v1703156909/tsix/nw0wqczxlnvuedpasmgx.jpg', 9999000, 'Gỗ + Mặt Kính Cường Lực', '1300x700x445mm', 'VERONA', 'Thông tin chi tiết về Bàn trà phòng khách đẹp BT937\r\nXuất xứ: Mẫu bàn trà khẩu nguyên bộ.\r\nKích thước bàn trà: 1300x700x445mm.\r\nChất liệu: bàn trà làm kính cường lực sang trọng kết hợp với khung gỗ cao cấp sơn phủ PU 7 lớp sáng bóng, chống xước tốt.\r\nKiểu dáng bàn trà hình chữ nhật rộng rãi dễ kết hợp với các mẫu sofa đẹp, thảm trải sàn.\r\nMàu sắc hiện đại tự nhiên.\r\nBảo hành 12 tháng về chất lượng.\r\nSản phẩm có sẵn tại showroom 321 Trường Chinh, Thanh Xuân, Hà Nội.\r\n', 20, 'ban-tra-phong-khach-đep', '2023-12-21 11:08:38', '2023-12-22 02:58:11'),
(273, 6, 'Bàn trà sofa', 'https://res.cloudinary.com/tsix-project/image/upload/v1703157169/tsix/x4xxa09m01hhfqtevj6w.jpg', 3990000, 'Gỗ + Kim loại', ' 800x390, 700x290', 'T-SIX', 'Thông tin về bàn trà sofa BT924\r\nKích thước bàn trà nhỏ: 700*290 mm\r\nKích thước bàn trà lớn: 800*390 mm\r\nChất liệu: Gỗ cao cấp phủ sơn bệt màu trắng\r\nChân bàn sử dụng kim loại phun sơn tĩnh điện\r\nBàn trà lớn sử dụng mặt đá cẩm thạch có vân đẹp, sang trọng, dễ vệ sinh\r\nBàn trà gỗ thiết kế ngăn kéo tiện nghi\r\nMàu trắng chủ đạo khiến bàn trà sofa đẹp phù hợp bày trí trong nhiều không gian\r\nSản phẩm đang có sẵn tại showroom của Nội Thất Xinh', 20, 'ban-tra-sofa', '2023-12-21 11:12:52', '2023-12-21 11:12:52'),
(274, 6, 'Bàn sofa mặt đá đẹp', 'https://res.cloudinary.com/tsix-project/image/upload/v1703157310/tsix/eegxx2u5bjtdzhceeicu.jpg', 4989000, 'Gỗ + bàn mặt đá cẩm thạch', '1300*700 mm', 'T-SIX', 'Thông tin chi tiết về sản phẩm bàn trà sofa mặt đá BT945\r\nXuất xứ: Nhập khẩu nguyên bộ\r\nKích thước bàn sofa mặt đá: 1300*700 mm\r\nGiá trên là giá của bàn trà. Qúy khách có thể tham khảo thêm của giá kệ tivi đi theo liền bộ.\r\nKiểu dáng: bàn trà hiện đại hình chữ nhật gam màu trắng - đen sang trọng, chân bàn cao gọn gàng tinh tế.\r\nChất liệu: mặt bàn trà đá cẩm thạch xử lý công nghệ phủ bóng tinh tế, chống xước, chịu nhiệt tốt.\r\nKhung bàn cao cấp sơn 7K chống nước, chống xước và sáng bóng vượt trội\r\nBảo hành 12 tháng về chất lượng, bảo trì trọn đời.\r\nMẫu bàn trà mặt đá nhập khẩu có thể kết hợp thoải mái với nhiều kiểu bàn ghế sofa cao cấp khác nhau, tăng sức hút cho không gian sống.', 0, 'ban-sofa-mat-đa-đep', '2023-12-21 11:15:12', '2023-12-21 11:15:12'),
(275, 16, 'Bộ giường tủ phòng ngủ', 'https://res.cloudinary.com/tsix-project/image/upload/v1703157624/tsix/y3y6xjeaiww55womisgd.jpg', 12450000, ' Gỗ tự nhiên', '2x1.2m', 'T-SIX', 'Thông tin về sản phẩm GT124\r\nBộ combo phòng ngủ gồm có: Giường ngủ, tủ áo và bàn phấn\r\nKích thước giường ngủ: 2200*1920*1040 mm. Giá bán 14.800.000 đồng\r\nKích thước tủ quần áo: 2050*2400*600 mm. Giá bán 14.800.000 đồng\r\nKích thước bàn phấn: 960*410*1560 mm. Giá bán: 4.200.000 đồng\r\nChất liệu: Gỗ tự nhiên\r\nNguồn gốc: Nhập khẩu nguyên bộ\r\nPhòng cách thiết kế hiện đại đang được ưa chuộn hiện nay\r\nMàu sắc phù hợp với xu hướng nội thất được yêu thích\r\nBảo hành 12 tháng kể từ ngày giao hàng\r\nQuý vị có thể tham khảo thêm mẫu tủ góc với giá: 7.800.000 đồng', 20, 'bo-giuong-tu-phong-ngu', '2023-12-21 11:20:26', '2023-12-21 11:29:49'),
(276, 16, 'Bộ phòng ngủ GT125', 'https://res.cloudinary.com/tsix-project/image/upload/v1703157779/tsix/g530jslhmkjkefthrmrb.jpg', 12990000, 'Gỗ tự nhiên', '2000*2400 mm', 'T-SIX', 'Thông tin chi tiết GT125\r\nBộ phòng ngủ cao cấp gồm có: Giường ngủ, tủ áo và bàn phấn\r\nKích thước giường ngủ: 1800*2000 mm. Giá bán: 16.600.000 đồng\r\nKích thước tủ quần áo: 2000*2400 mm. Giá bán: 17.000.000 đồng\r\nBàn phấn có giá bán: 5.600.000 đồng\r\nChất liệu: Gỗ tự nhiên + Chất liệu da\r\nMàu sắc: Trắng + nâu đỏ\r\nXuất xứ: nhập khẩu nguyên bộ\r\nBảo hành 12 tháng', 20, 'bo-phong-ngu-gt125', '2023-12-21 11:22:59', '2023-12-21 11:29:40'),
(277, 16, 'Giường tủ phòng ngủ GT114', 'https://res.cloudinary.com/tsix-project/image/upload/v1703158134/tsix/kzgwvzemkia2uouauhgk.jpg', 21000000, 'Gỗ tự nhiên kết hợp', '2400*2400*600 mm', 'KENNY', 'Thông tin chi tiết giường tủ phòng ngủ GT114\r\nMã sản phẩm: GT114\r\nSet sản phẩm gồm: giường ngủ, tủ quần áo, bàn phấn\r\nKích thước giường ngủ: 2000*1800 mm\r\nKích thước tủ quần áo: 2400*2400*600 mm\r\nKích thước bàn phấn: 1016*1450*400 mm\r\nChất liệu: Gỗ tự nhiên kết hợp\r\nNguồn gốc: Nhập khẩu nguyên set\r\nMàu sắc đẹp sang không lo lỗi mốt\r\nSản phẩm có thêm tap giường bọc da cao cấp\r\nGiá trên bao gồm cả set 3 món đồ nội thất\r\nBáo giá cụ thể:\r\nGiường ngủ: 14.400.000đ\r\nTủ quần áo: 20.600.000đ\r\nBàn phấn: 4.800.000đ\r\nBảo hành: 12 tháng', 20, 'giuong-tu-phong-ngu-gt114', '2023-12-21 11:28:55', '2023-12-22 03:00:32'),
(278, 16, 'Bộ giường tủ phòng ngủ GT115', 'https://res.cloudinary.com/tsix-project/image/upload/v1703158293/tsix/gl3qikdgpn1pbvd16y3b.jpg', 30000000, 'Gỗ tự nhiên kết hợp', '2400*580*2400  mm', 'T-SIX', 'Thông tin chi tiết bộ giường tủ phòng ngủ GT115\r\nMã sản phẩm: GT115\r\nSet sản phẩm gồm: giường ngủ, tủ quần áo, bàn phấn\r\nKích thước giường ngủ: 2040*1060*2200 mm\r\nKích thước tủ quần áo: 2400*580*2400  mm\r\nKích thước bàn phấn: 1030*395*1400 mm\r\nChất liệu: Gỗ tự nhiên kết hợp\r\nNguồn gốc: Nhập khẩu nguyên set\r\nMàu sắc đẹp sang không lo lỗi mốt, nhẹ nhàng thanh lịch\r\nGiá trên bao gồm cả set 3 món đồ nội thất\r\nBáo giá cụ thể:\r\nGiường ngủ: 15.800.000đ\r\nTủ quần áo: 19.400.000đ\r\nBàn phấn: 5.200.000đ\r\nBảo hành: 12 tháng', 0, 'bo-giuong-tu-phong-ngu-gt115', '2023-12-21 11:31:33', '2023-12-21 11:31:33'),
(279, 16, 'Bộ giường tủ phòng ngủ giá rẻ GT123', 'https://res.cloudinary.com/tsix-project/image/upload/v1703158419/tsix/yzupurw0nml8tarqpnup.jpg', 24000000, ' Gỗ tự nhiên', '1920*2000*1030 mm', 'T-SIX', 'Thông tin chi tiết về bộ giường tủ phòng ngủ giá rẻ GT123\r\nXuất xứ: nhập khẩu trọn bộ\r\nChất liệu sản xuất: Gỗ tự nhiên cao cấp đã xử lý chống mối mọt, chống cong vênh, chống co ngót thích hợp với mọi điều kiện thời tiết.\r\nSản phẩm gồm: bộ giường ngủ cao cấp hiện đại, tủ áo và bàn phấn.\r\nKích thước giường: 1920*2000*1030 mm - giá bán: 14,400,000 đồng\r\nKích thước tủ quần áo: 2000*585*2200 mm - giá bán: 17,800,000 đồng\r\nKích thước bàn phấn: 1000*395*1435 mm - giá bán: 4,400,000 đồng\r\nThiết kế giường ngủ đơn, gam màu gỗ mộc mạc gần gũi toát lên nét đẹp hiện đại tinh tế.\r\nChân giường dạng chân cao hiện đại trẻ trung đồng bộ màu sắc cùng bàn trang điểm, tủ quần áo.\r\nKiểu dáng: hiện đại và ấn tượng giúp cho không gian phòng ngủ luôn toát lên sự tiện nghi, gần gũi.\r\nMàu sắc: nhẹ nhàng và thanh lịch rất hợp đặt trong không gian nội thất hiện đại của các gia đình\r\nBảo hành 12 tháng\r\n', 20, 'bo-giuong-tu-phong-ngu-gia-re-gt123', '2023-12-21 11:33:41', '2023-12-21 11:33:41'),
(280, 7, 'Ghế sofa văn phòng H8819-VP', 'https://res.cloudinary.com/tsix-project/image/upload/v1703158661/tsix/lgv16zczaa3qx4cyicqe.jpg', 24350000, 'Da bò thật', '2180*950 và 1219*950 mm', 'VERONA', 'Thông tin về ghế sofa văn phòng H8819-VP\r\nBộ sofa gồm có sofa văng ba và hai ghế đơn\r\nKích thước sofa văng ba: 2180*950 mm\r\nKích thước sofa đơn: 1219*950 mm\r\nXuất xứ: Nhập khẩu nguyên chiếc Malaysia\r\nChất liệu: Da bò thật 100%\r\nKhung xương: gỗ tự nhiên cao cấp không mối mọt\r\nĐệm mút chống lún, êm ái khi sử dụng\r\nMàu sắc sang trọng, thích hợp với nhiều không gian\r\nKiểu dáng thiết kế khá nhỏ gọn, phù hợp với phòng làm việc hiện đại\r\nBảo hành lâu dài theo chính sách của nhà sản xuất', 20, 'ghe-sofa-van-phong-h8819-vp', '2023-12-21 11:37:44', '2023-12-22 02:58:30'),
(281, 7, 'Bộ sofa văn phòng NTX205', 'https://res.cloudinary.com/tsix-project/image/upload/v1703159422/tsix/zrsqycbo4lyltdieul8i.jpg', 12458000, 'Da Hàn cao cấp', ' 2300*1000mm', 'T-SIX', 'Thông tin về bộ sofa văn phòng NTX205\r\nXuất xứ: Nội Thất Xinh\r\nKích thước ghế văng dài: 2300*1000mm\r\nKích thước ghế văng đơn: 1300*1000mm\r\nChất liệu: Bọc da Hàn cao cấp, có tuổi thọ sử dụng lâu dài\r\nKhung xương: gỗ tự nhiên được tẩm sấy kỹ lưỡng, chống mối mọt\r\nKiểu dáng ghế sofa da hợp xu hướng nội thất hiện đại\r\nMàu sắc sang trọng, đang được nhiều người yêu thích hiện nay\r\nBảo hành lâu dài, bảo trì trọn đời sản phẩm\r\nKích thước nhỏ gọn, thích hợp cho cả không gian phòng khách nhỏ\r\nSản phẩm có sẵn tại showroom cho quý vị trải nghiệm trực tiếp\r\nKhách hàng có thể tham khảo thêm các loại da bọc khác nhau:\r\n\r\nDa Hàn:  21,080,000 Đồng\r\nDa T:  21,800,000 Đồng\r\nDa HD:  24,680,000 Đồng\r\nDa Nano:  27,200,000 Đồng', 20, 'bo-sofa-van-phong-ntx205', '2023-12-21 11:50:23', '2023-12-21 11:50:23'),
(282, 7, 'Sofa văn phòng NTX226-2', 'https://res.cloudinary.com/tsix-project/image/upload/v1703159593/tsix/zdla1ljniy57adlymumy.jpg', 19237000, 'Vải nỉ cao cấp', '1800*900 mm', 'T-SIX', 'Thông tin về sofa văn phòng NTX226-2\r\nKích thước: (1800*900 mm)x2 \r\nKhung xương: gỗ tự nhiên chống mối mọt, không cong vênh\r\nĐệm mút cao cấp, chống lún giúp khách hàng cảm nhận thoải mái khi sử dụng\r\nLò xo nhập khẩu Malaysia, có độ đàn hồi cao\r\nBọc chất liệu vải nỉ nhập khẩu cao cấp, có độ thoáng cao\r\nSản xuất tại Nội Thất Xinh nên có giá cả hợp lý\r\nKhách hàng dễ dàng thay đổi kích thước, màu sắc theo yêu cầu\r\nBảo hành lâu dài', 20, 'sofa-van-phong-ntx226-2', '2023-12-21 11:53:13', '2023-12-21 11:53:13'),
(283, 7, 'Bộ sofa văn phòng NTX1886', 'https://res.cloudinary.com/tsix-project/image/upload/v1703159750/tsix/htpmnl3qwucbsxmdbrku.jpg', 23987000, ' Da malaysia cao cấp', '2300 x 900, 1200 x 900', 'KENNY', 'Thông tin về bộ sofa văn phòng NTX1886\r\nChất liệu: bọc Da malaysia cao cấp có chất lượng cao nhất hiện nay\r\nKhung xương sản xuất từ gỗ tự nhiên, không mối mọt\r\nLò xo nhập khẩu từ Malaysia, có độ đàn hồi cao\r\nĐệm mút cao cấp có khả năng chống lún xẹp tốt\r\nKích thước ghế sofa văng: 2300*900mm\r\nKích thước ghế đơn: 1200*900 mm\r\nMàu sắc trung tính, phù hợp với không gian hiện đại\r\nChân ghế inox sáng bóng, không rỉ, chịu lực tốt\r\nTạo điểm nhấn cho bộ ghế với đường viền màu đen\r\nTay vịn kiểu tay be, thoải mái gối đầu khi nằm thư giãn\r\nKiểu dáng hiện đại, tối giản không lo lỗi mốt\r\nSản xuất tại xưởng nên có giá thành cạnh tranh\r\nBảo hành sản phẩm lâu dài', 20, 'bo-sofa-van-phong-ntx1886', '2023-12-21 11:55:50', '2023-12-22 03:00:24'),
(284, 7, 'Bộ sofa văn phòng NTX1914', 'https://res.cloudinary.com/tsix-project/image/upload/v1703159946/tsix/ggn4kzldcc49poatnnpf.jpg', 21989000, 'Da Microfiber', '1200*900 mm', 'T-SIX', 'Thông tin về bộ sofa văn phòng NTX1914\r\nKích thước ghế văng dài: 2200*900 mm\r\nKích thước ghế đơn: 1200*900 mm\r\nChất liệu: bọc da Microfiber cao cấp, mềm mại như da thật\r\nKhung xương: sản xuất từ chất liệu gỗ tự nhiên chắc chẵn\r\nĐệm mút thiết kế 3 lớp êm ái, chống lún\r\nLò xo nhập khẩu từ Malaysia\r\nKiểu dáng thiết kế hiện đại, sang trọng\r\nMàu sắc và kích thước sản phẩm có thể thay đổi theo yêu cầu của khách hàng\r\nBảo hành sản phẩm dài hạn', 20, 'bo-sofa-van-phong-ntx1914', '2023-12-21 11:58:47', '2023-12-21 11:59:07'),
(285, 15, 'Kệ tivi phòng khách KTV2203', 'https://res.cloudinary.com/tsix-project/image/upload/v1703160283/tsix/rrw2kwju76fcpix2tuwm.jpg', 11390000, 'Mặt đá + Gỗ cao cấp chống ẩm', 'Mặt đá + Gỗ cao cấp chống ẩm', 'T-SIX', 'Thông tin chi tiết mẫu kệ tivi phòng khách KTV2203\r\nXuất xứ: nhập khẩu\r\nKích thước: (1800-2400)*400*450 mm\r\nGiá trên là giá của kệ tivi . Qúy khách tham khảo thêm bàn trà: https://noithatxinh.vn/ban-tra-mat-da-bt2203\r\nKệ tivi phòng khách được thiết kế thông minh, có thể kéo dài giúp phù hợp diện tích căn phòng\r\nGam màu trắng xám đen kết hợp tạo nên sự hiện đại và sang trọng nhất\r\nChất liệu: Gỗ cao cấp kết hợp với mặt đá bền chắc, chịu lực lớn\r\nChất liệu gỗ có khả năng chống ẩm cực tốt\r\nMặt đá sáng bóng dễ dàng vệ sinh\r\nKệ tivi có ngăn kéo cực tiện nghi\r\nNên kết hợp kệ tivi với bàn uống nước BT2203 đi kèm để có giá trị cao nhất\r\nBảo hành sản phẩm 12 tháng về lỗi kỹ thuật', 20, 'ke-tivi-phong-khach-ktv2203', '2023-12-21 12:04:43', '2023-12-21 12:04:43'),
(286, 15, 'Kệ tivi hiện đại KTV2202', 'https://res.cloudinary.com/tsix-project/image/upload/v1703160410/tsix/g26cop9uhyjmf6cucluf.jpg', 12990000, 'Mặt đá thế hệ mới', '2000*400*450 mm', 'VERONA', 'Thông tin chi tiết mẫu kệ tivi hiện đại KTV2202\r\nXuất xứ: nhập khẩu\r\nKích thước: 2000*400*450 mm\r\nGiá trên là giá của kệ tivi . Qúy khách tham khảo thêm bàn trà: https://noithatxinh.vn/ban-tra-sofa-bt2202\r\nKệ tivi phòng khách được thiết kế cực kì tinh tế và hiện đại\r\nGam màu xám đá cực sang, không lo lỗi mốt\r\nChất liệu mặt đá thế hệ mới cực sáng bóng, chống xước cực tốt, chắc chắn\r\nChân thép vuông mạ crom cực kì bền, chịu lực lớn, không gỉ\r\nMặt đá sáng bóng dễ dàng vệ sinh\r\nThiết kế đường kẻ sọc hai bên cực kì hút mắt\r\nKệ tivi có ngăn kéo cực tiện nghi\r\nBảo hành sản phẩm 12 tháng về lỗi kỹ thuật', 20, 'ke-tivi-hien-đai-ktv2202', '2023-12-21 12:06:54', '2023-12-22 02:58:24'),
(287, 15, 'Mẫu kệ tivi đẹp KTV920', 'https://res.cloudinary.com/tsix-project/image/upload/v1703160520/tsix/jxkqdizazk6vexqkwdet.jpg', 8990000, 'Gỗ + Mặt đá Marble', '(1700-2500) *355 mm', 'T-SIX', 'Thông tin về mẫu kệ tivi đẹp KTV920\r\nKích thước kệ tivi: (1700-2500) *355 mm\r\nKích thước kệ tivi có thể tùy chỉnh theo diện tích không gian\r\nChất liệu: gỗ công nghiệp cao cấp, chống mối mọt, cong vênh\r\nSử dụng mặt đá Marble đẹp, sang trọng và dễ dàng vệ sinh bụi bẩn\r\nKệ tivi đẹp khi được kết hợp với bàn trà BT920\r\nMàu sắc sang trọng, phù hợp với không gian hiện đại\r\nBảo hành sản phẩm 1 năm kể từ ngày giao hàng', 20, 'mau-ke-tivi-đep-ktv920', '2023-12-21 12:08:42', '2023-12-21 12:08:42'),
(288, 15, 'Kệ tivi phòng khách đẹp KTV947', 'https://res.cloudinary.com/tsix-project/image/upload/v1703160637/tsix/rzkh4tjqshwl7x6fur4q.jpg', 15990000, 'Gỗ + Mặt đá Marble', '(1800-2400)x350x465', 'VERONA', 'Thông tin chi tiết về kệ tivi phòng khách đẹp KTV947\r\nXuất xứ: Nhập Khẩu\r\nBảo hành: 12 Tháng\r\nMàu sắc: Trắng - Đen\r\nChất liệu: Gỗ + bàn mặt đá cẩm thạch\r\nKích thước: (1800-2400)x350x465 có thể kéo dài tối đa lên đến 2.4m giúp tăng công năng sử dụng.\r\nMẫu kệ tivi thiết kế hiện đại, trang bị nhiều ngăn kéo để độ đa năng tiện lợi.\r\nSử dụng kệ tivi KTV947 quý vị có thể kết hợp đồng bộ với bàn trà phòng khách đẹp BT947 để tăng thêm thẩm mỹ, sự hài hòa, tinh tế và đẳng cấp cho không gian.', 20, 'ke-tivi-phong-khach-đep-ktv947', '2023-12-21 12:10:39', '2023-12-22 02:58:18'),
(289, 15, 'Kệ tivi gỗ KTV909', 'https://res.cloudinary.com/tsix-project/image/upload/v1703160768/tsix/dptwxtrra803wthlcbbd.jpg', 7990000, 'Gỗ sồi Nga', '1800x450x450', 'T-SIX', 'Thông số của kệ tivi gỗ KTV909\r\nKích thước kệ tivi: 1800x450x450 mm\r\nChất liệu: gỗ Sồi nga cao cấp, không mối mọt\r\nKiểu dáng hiện đại, tối giản nhưng mang tới vẻ đẹp sang trọng\r\nMàu sắc: Tone màu nâu trầm giúp mang tới không gian hiện đại và đẳng cấp hơn\r\nPhủ sơn bóng chống thấm nước\r\nKệ tivi có kích thước phù hợp với nhiều không gian khác nhau\r\nNên kết hợp kệ tivi với bàn trà gỗ BT909\r\nBảo hành 12 tháng về lỗi của nhà sản xuất', 20, 'ke-tivi-go-ktv909', '2023-12-21 12:12:49', '2023-12-21 12:12:49'),
(290, 13, 'Rèm cửa cầu vồng đẹp CV83', 'https://res.cloudinary.com/tsix-project/image/upload/v1703161146/tsix/vzhkcuyquld8p0pvn8vc.jpg', 880000, 'Vải polyester cao cấp', 'Tùy chọn', 'T-SIX', 'Thông tin rèm cửa cầu vồng đẹp CV83:\r\nKhổ rộng: 2800mm\r\nKhổ dài tùy chỉnh theo yêu cầu khách hàng\r\nChất liệu vải Poyester cao cấp có độ bền cao\r\nCông dụng: điều chỉnh ánh sáng và cản năng\r\nKhả năng cản nắng của rèm cửa lên đến 80%\r\nKiểu dáng hiện đại, dễ dàng trong quá trình sử dụng\r\nVải cao cấp không bám bụi, bền màu\r\nRèm bền đẹp trong quá trình sử dung\r\nCó thể sử dụng làm rèm phòng ngủ, phòng khách hay văn phòng\r\nMẫu rèm cửa đẹp này có nhiều màu sắc cho các bạn lựa chọn.\r\nGiá sản phẩm tính theo m2\r\nGiá sản phẩm: 830.000đ/m2\r\nTư vấn, xem mẫu tại nhà cũng như miễn phí hoàn toàn phí thi công lắp đặt', 20, 'rem-cua-cau-vong-đep-cv83', '2023-12-21 12:19:06', '2023-12-21 12:19:06'),
(291, 13, 'Rèm cửa cầu vồng đẹp CV88', 'https://res.cloudinary.com/tsix-project/image/upload/v1703161248/tsix/tqblyzskcvgxyp1rhhuc.jpg', 880000, 'Vải polyester cao cấp', 'Tùy chọn', 'T-SIX', 'Thông tin rèm cửa cầu vồng đẹp CV88:\r\nKhổ rộng: 2800mm\r\nKhổ dài tùy chỉnh theo yêu cầu khách hàng\r\nChất liệu vải Poyester cao cấp có độ bền cao\r\nSử dụng điều chỉnh ánh sáng và cản năng\r\nKhả năng cản nắng của rèm cửa lên đến 80%\r\nThiết kế kiểu dáng đẹp, phù hợp các xu thế mới nhất\r\nTạo điểm nhấn cho không gian mới lạ\r\nVải cao cấp không bám bụi, bền màu\r\nMẫu rèm cửa cao cấp có tuổi thọ lâu bền\r\nDễ dàng vệ sinh trong quá trình sử dụng\r\nSử dụng được cho rèm cửa phòng ngủ, phòng khách hay văn phòng\r\nGiá sản phẩm tính theo m2\r\nGiá sản phẩm: 830.000đ/m2\r\nTư vấn, xem mẫu tại nhà cũng như miễn phí hoàn toàn phí thi công lắp đặt', 20, 'rem-cua-cau-vong-đep-cv88', '2023-12-21 12:21:01', '2023-12-21 12:21:01'),
(292, 13, 'Rèm cửa cầu vồng đẹp CV832', 'https://res.cloudinary.com/tsix-project/image/upload/v1703161466/tsix/omvsbciopvv6a8dg1ap8.jpg', 830000, 'Vải polyester cao cấp', 'Tùy chọn', 'CARINE', 'Thông tin rèm cửa cầu vồng đẹp CV83:\r\nKhổ rộng: 2800mm\r\nKhổ dài tùy chỉnh theo yêu cầu khách hàng\r\nChất liệu vải Poyester cao cấp có độ bền cao\r\nCông dụng: điều chỉnh ánh sáng và cản năng\r\nKhả năng cản nắng của rèm cửa lên đến 80%\r\nKiểu dáng hiện đại, dễ dàng trong quá trình sử dụng\r\nVải cao cấp không bám bụi, bền màu\r\nRèm bền đẹp trong quá trình sử dung\r\nCó thể sử dụng làm rèm phòng ngủ, phòng khách hay văn phòng\r\nMẫu rèm cửa đẹp này có nhiều màu sắc cho các bạn lựa chọn.\r\nGiá sản phẩm tính theo m2\r\nGiá sản phẩm: 830.000đ/m2\r\nTư vấn, xem mẫu tại nhà cũng như miễn phí hoàn toàn phí thi công lắp đặt', 20, 'rem-cua-cau-vong-đep-cv832', '2023-12-21 12:24:27', '2023-12-22 02:59:07'),
(293, 13, 'Rèm cửa cầu vồng đẹp CV78', 'https://res.cloudinary.com/tsix-project/image/upload/v1703161570/tsix/wlybhgj0oroxqtkcvn6h.jpg', 820000, 'Vải polyester cao cấp', 'Tùy chọn', 'KENNY', 'Thông tin rèm cửa cầu vồng đẹp CV79:\r\nKhổ rộng: 2800mm\r\nChất liệu vải Poyester cao cấp\r\nKiểu dáng hiện đại, dễ dàng khi sử dụng\r\nCó khả năng cản nắng cũng như ánh sáng tốt nhất\r\nKhả năng cản nắng tối đa 80%\r\nThao tác sử dụng dễ dàng, nhanh chóng\r\nVải cao cấp không bám bụi, bền màu\r\nRèm cửa không bị mục cũng như có tuổi thọ lâu dài\r\nGam màu hiện đại, cho không gian ấn tượng\r\nCó thể sử dụng làm rèm cửa đẹp này cho phòng ngủ, phòng khách hay văn phòng\r\nGiá sản phẩm tính theo m2\r\nGiá sản phẩm: 830.000đ/m2\r\nTư vấn, xem mẫu tại nhà cũng như miễn phí hòan toàn phí thi công lắp đặt\r\n ', 20, 'rem-cua-cau-vong-đep-cv78', '2023-12-21 12:26:11', '2023-12-22 03:00:00'),
(294, 13, 'Rèm cửa đẹp cao cấp RC58', 'https://res.cloudinary.com/tsix-project/image/upload/v1703161654/tsix/phdjcuwhia2vcid67zxd.jpg', 920000, 'Vải polyester cao cấp', 'Tùy chọn', 'T-SIX', 'Thông tin về mẫu rèm cửa đẹp cao cấp CR58:\r\nChất liệu: rèm 2 lớp gồm lớp vải và lớp voan\r\nKích thước khổ cao: tối đa 2800mm, có thể thay đổi theo yêu cầu\r\nKhổ ngang: không giới hạn theo yêu cầu khách hàng\r\nGiá bán sản phẩm tính theo mét ngang\r\nGam màu xanh dương mang đến không gian tươi sáng\r\nThiết kế rèm 2 lớp có khả năng cản nắng tốt nhất\r\nBền đẹp theo thời gian sử dụng\r\nKhông bám bụi trong quá trình sử dụng\r\nDễ dàng vệ sinh, làm sạch\r\nPhù hợp sử dụng cho cả phòng khách và phòng ngủ', 20, 'rem-cua-đep-cao-cap-rc58', '2023-12-21 12:27:35', '2023-12-21 12:27:35');

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
(5, 'Bàn ăn', 'ban-an', 17, '2023-11-09 07:42:10', '2023-12-21 17:03:01'),
(6, 'Bàn trà', 'ban-tra', 17, '2023-11-09 07:42:27', '2023-12-21 16:46:01'),
(7, 'Sofa văn phòng', 'sofa-van-phong', 18, '2023-11-09 07:42:39', '2023-12-21 16:46:12'),
(8, 'Ghế gỗ', 'ghe-go', 18, '2023-11-09 07:42:44', '2023-11-09 07:42:44'),
(13, 'Rèm', 'rem', 21, '2023-11-14 09:15:06', '2023-12-21 16:46:34'),
(15, 'Kệ tivi', 'ke-tivi', 20, '2023-12-20 14:52:38', '2023-12-21 16:47:13'),
(16, 'Giường ngủ', 'giuong-ngu', 19, '2023-12-21 11:16:37', '2023-12-21 16:47:47'),
(18, 'Đồng hồ', 'đong-ho', 21, '2023-12-22 02:40:56', '2023-12-22 02:40:56');

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
('002', 'Đinh Ngọc Hoàng', '0762752760', 'Zone6 đà nẵng', 'hoang', '$2a$10$kvf9FrnzBn5Nd/2TjvNzZeS34DLzIvnY3CVFu5GfxgfBFsob5Uxfe', 1, 0, '2023-11-01 12:28:04', '2023-12-21 10:53:42'),
('admin001', 'Admin', '0000000001', 'da nang', 'anotheradmin@gmail.com', '$2a$10$DEAfA8uUaCY6hJq6zrt34uZZNnpNJDEmOeFbjR5j75s2Z4oWjKMtq', 2, 0, '2023-11-15 06:13:54', '2023-11-15 06:13:54'),
('logom3jg', 'Hoàng nhân viên', '0174711841', 'đổi mk thành 123', 'ngochoang27810@gmail.com', '$2a$10$WWd2IJZ5m45qe4HkFXJp5OMJk4GbQpglIjWDr/UKYV4zwt7ENRkua', 1, 0, '2023-11-02 04:23:42', '2023-12-22 02:25:13'),
('logp0dvt', 'Đinh Hoàng', '0969925662', 'vn', 'hoang2@gmail.com', '$2a$10$Pt7co8cACK/.3POFfrlYz.uFZ.svOkKovLSCzlyrgjmTRUNNcqsGy', 0, -1, '2023-11-02 04:34:49', '2023-12-22 02:33:17'),
('logw1vzq', 'Huy', '09999999', 'Việt Nam', 'huy@gmail.com', '$2a$10$lc4O0FJxg40fo2YsIo6wa.yea8bNilcAjt/kxQZ9RbXQVt/RDkiDe', 1, 0, '2023-11-02 07:51:56', '2023-11-15 06:21:07'),
('lok3xqdz', NULL, NULL, NULL, 'hoang3', '$2a$10$uq7XawS9IeRP/otDtbnKRupP4UeMiJQ/dKfKhI8gwl8HpoMN/cijO', 1, -1, '2023-11-04 13:55:58', '2023-11-14 09:35:29'),
('lok462z2', 'Admin Tsix', '0761761761', 'FPT Polytechnic Đà Nẵng', 'admin@gmail.com', '$2a$10$r6li719UeWUVHmZJ1NgXBe3nNQajmv8I7AksmTYVvZfUJc61UVXkO', 2, 0, '2023-11-04 14:02:27', '2023-12-21 16:59:26'),
('lozdkbfy', 'Nhân viên hoàng', '0512612', 'dn', 'hoangnv@gmail.com', '$2a$10$f49A/BB7PtTZ5kJQN5XHw.P8jCVRvBQGWkxA1c4lsUgAPUc9ttyVy', 1, -1, '2023-11-15 06:22:01', '2023-11-15 08:02:07'),
('lozi12fc', 'Khách Hàng', '0923185811', '221 Lý Thái Tông, Đà nẵng', 'khachhang@gmail.com', '$2a$10$MsBUaAaoSXtlD/qTGnooSuIvj3E6XwFwDhcpePHTbSc4LrZLsA8m6', 0, 0, '2023-11-15 08:27:01', '2023-12-22 02:26:41'),
('lozk2vly', 'Nguyễn Văn Huy', '023123123', 'no password change', 'test@gmail.com', '$2a$10$xitXd2qsMFKIB7hdDSipLeQSP5zsY/fLNfiWMC.txYbzCSSxbEtmu', 0, 0, '2023-11-15 09:24:24', '2023-12-22 02:27:39'),
('lp46016w', 'Hoàng Ba', '0212121221', 'da nang 2', 'hoang3@gmail.com', '$2a$10$B8TXronH4oK07ShQyRjP7unDuwzRajtPx6TG213RYNqVFsqLgDy3u', 0, 0, '2023-11-18 14:49:08', '2023-12-22 02:28:00'),
('lqdx6uul', 'Trần Văn Long', '07654147881', 'Hòa Vang, Đà Nẵng', 'long93@gmail.com', '$2a$10$tWfFFBrhcPL0k1..mZgpt.gI6NIJRtcuzEHHDBA96.Txq6ZaFhHVm', 0, 0, '2023-12-20 15:19:54', '2023-12-20 15:19:54'),
('lqesch4v', 'Lê Văn Quân', '0763767271', 'Quản Nam', 'quan1@gmail.com', '$2a$10$Zb2jjGYkC8qePgpUYic8Ue2rLbiJQ4H/AfhxOqPTpdirVfhvcgZai', 0, 0, '2023-12-21 05:52:04', '2023-12-21 05:54:25'),
('lqeu9bfw', 'Trần Văn Quân', '0881231231', '124 Ngô Thị Nhậm, Đà Nẵng', 'quan3@gmail.com', '$2a$10$vnUNFqfjfrjpWwsqpWc2duw5jhvBfMZyIbhAJ9g/HpOLEZ3N8xPae', 0, 0, '2023-12-21 06:45:36', '2023-12-22 02:28:52'),
('lqeueibm', 'Lê Long Thái', NULL, NULL, 'lthai123@gmail.com', '$2a$10$Jq8UMTn9XyFRQVgj7EAYgO8IgCLbBbT/hUsDI.WTxbUCCQS5VP5rS', 0, 0, '2023-12-21 06:49:38', '2023-12-21 06:49:38'),
('lqfzqh0g', 'Nguyễn thành lam', '0687212525', 'nhà lam', 'lam@gmail.com', '$2a$10$l1oeJ1jguM43IsZu4W0IYuO2wTV1X5cPal/R6MQjbpv.b/IWactlC', 0, 0, '2023-12-22 02:06:41', '2023-12-22 02:06:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cate`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_cmt`);

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
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_cmt` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_pd` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id_subcate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
