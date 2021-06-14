-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 14, 2021 lúc 06:31 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoppet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'Mai Thị Lan Anh', 'maithilananh011299@gmail.com', '0946957269', 'hello anh yêu em'),
(3, 'Mai Thị Lan Anh', 'maithilananh011299@gmail.com', '0946957269', 'test mess');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_fee`
--

CREATE TABLE `tbl_fee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_fee`
--

INSERT INTO `tbl_fee` (`id`, `name`, `price`) VALUES
(1, 'Phí dịch vụ', 1),
(2, 'Phí vận chuyển', 15000),
(3, 'Giảm giá', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  `infocart` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `post_id` varchar(11) DEFAULT NULL,
  `quantity_order` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `name`, `phone`, `address`, `note`, `method`, `infocart`, `total`, `active`, `post_id`, `quantity_order`) VALUES
(67, 'Mai Thị Lan Anh', 946957269, 'Xóm Tây Sơn - Xã Nga Hải', 'Nhanh nhanh dùm', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/034705pmTiffy Dey 2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Tiffy Dey</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	3</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">375000	vnd</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/034431pmPhil Domina.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Phil Domina</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	1</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">61000	vnd</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/123207pmxịt rửa tay.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Xịt rửa tay hương trà xanh</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	1</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">25000	vnd</div>			</div>			</div>', 0, 1, '28,27,26,', '3,1,1,'),
(68, 'Mai Thị Lan Anh', 946957269, 'Xóm Tây Sơn - Xã Nga Hải', 'Nhanh nhanh dùm', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/034705pmTiffy Dey 2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Tiffy Dey</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	1</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">125000	vnd</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/034431pmPhil Domina.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Phil Domina</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	1</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">61000	vnd</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/123207pmxịt rửa tay.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Xịt rửa tay Pharmacity hương trà xanh</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	1</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">25000	vnd</div>			</div>			</div>', 0, 1, '28,27,26,', '1,1,1,'),
(69, 'Mai Thị Lan Anh', 946957269, 'Xóm Tây Sơn - Xã Nga Hải', 'note', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/034431pmPhil Domina.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Phil Domina</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	1</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">61000	vnd</div>			</div>			</div>', 70510, 1, '27,', '1,'),
(70, 'Mai Thị Lan Anh', 946957269, 'Xóm Tây Sơn - Xã Nga Hải', 'note', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/034431pmPhil Domina.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Phil Domina</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	1</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">61000	vnd</div>			</div>			</div>', 70510, 1, '27,', '1,'),
(71, 'Mai Thị Lan Anh', 946957269, 'Xóm Tây Sơn - Xã Nga Hải', 'note', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/034431pmPhil Domina.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Phil Domina</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	1</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">61000	vnd</div>			</div>			</div>', 70510, 1, '27,', '1,'),
(72, 'Mai Thị Lan Anh', 946957269, 'Xóm Tây Sơn - Xã Nga Hải', 'note', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/034705pmTiffy Dey 2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Tiffy Dey</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	1</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">125000	vnd</div>			</div>			</div>', 128750, 1, '28,', '1,'),
(73, 'Mai Thị Lan Anh', 946957269, 'Xóm Tây Sơn - Xã Nga Hải', 'note', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/063246pmSiro trị viêm mũi dị ứng.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Siro</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbsp Số lượng:	1</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">70000	vnd</div>			</div>			</div>', 78700, 1, '21,', '1,');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `origin` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `background` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `type`, `content`, `name`, `age`, `origin`, `quantity`, `price`, `image`, `background`, `active`) VALUES
(21, 'Siro', 1, 'Thuốc chống dị ứng Siro Rinofil 2.5g/5ml làm giảm các triệu chứng viêm mũi dị ứng theo mùa, viêm mũi dị ứng quanh năm như hắt hơi, sổ mũi, ngứa, nghẹt mũi, kèm kích ứng mắt, chảy nước mắt, ngứa họng và ho.\r\n\r\nGiảm các triệu chứng mề đay mãn tính tự phát\r\n\r\nTác dụng và cơ chế của thuốc: Thuốc kháng histamin thế hệ II chống dị ứng-mày đay, giảm ngứa.', 'Siro trị viêm mũi dị ứng, mày đay Rinofil 15ml', NULL, 5, 0, 70000, '063246pmSiro trị viêm mũi dị ứng.jpg,', 1, 1),
(23, 'Nước muối Pharmacity 0,9% (500ml)', NULL, 'Nước muối sinh lý có tên hóa học là Natri Clorid, được pha chế theo tỷ lệ 0,9% tức 1 lít nước pha với 9 gram muối tinh khiết, là dung dịch đẳng trương có áp suất thẩm thấu tương đương với dịch trong cơ thể người.', 'Nước muối Pharmacity  ', NULL, 5, 10, 10000, '104914amnước muối.png,', 1, 1),
(26, 'Xịt rửa tay Pharmacity hương trà xanh', NULL, 'Sản phẩm giúp làm sạch tay và kháng khuẩn.', 'Xịt rửa tay Pharmacity ', NULL, 5, 99, 25000, '123207pmxịt rửa tay.png,', 1, 1),
(27, 'Phil Domina', NULL, 'Thuốc Phil Domina thường được sử dụng trong điều trị nám, tàn nhang.', 'Phil Domina', NULL, 5, 15, 61000, '034431pmPhil Domina.png,', 1, 1),
(28, 'Tiffy Dey', NULL, 'Thuốc Tiffy Dey được sử dụng nhiều trong đơn kê điều trị  các triệu chứng cảm thông thường, viêm mũi dị ứng, viêm mũi vận mạch, viêm xoang,... ', 'Tiffy Dey', NULL, 5, 45, 125000, '034705pmTiffy Dey 2.png,034705pmTiffy Dey 3.png,034705pmTiffy Dey.png,', 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_fee`
--
ALTER TABLE `tbl_fee`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_fee`
--
ALTER TABLE `tbl_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
