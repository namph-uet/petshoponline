-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 22, 2021 lúc 04:22 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.3.28

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
  `name` varchar(10) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_fee`
--

INSERT INTO `tbl_fee` (`id`, `name`, `price`) VALUES
(1, 'fee', 5),
(2, 'delivery', 1),
(3, 'discount', 10);

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
(40, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '', 609, 1, '15,', '2,'),
(41, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/091218am2cd43b_ad23f564a47043fbb05fd123ecf4eb8f_mv2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">240$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/052244pm_ps.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">320$</div>			</div>			</div>', 533, 1, '14,15,', '1,1,'),
(42, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'd', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/052244pm_ps.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">320$</div>			</div>			</div>', 305, 1, '15,', '1,'),
(43, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/052244pm_ps.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">320$</div>			</div>			</div>', 305, 1, '15,', '1,'),
(44, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/091218am2cd43b_ad23f564a47043fbb05fd123ecf4eb8f_mv2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">240$</div>			</div>			</div>', 229, 1, '14,', '1,'),
(45, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(46, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'd', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(47, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(48, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'd', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(49, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'd', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(50, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'd', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(51, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(52, '17021164-Phạm Hoàng Nam', 373262971, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(53, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(54, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(55, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(56, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'd', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(57, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'd', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(58, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(59, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(60, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(61, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '', 0, 1, '', ''),
(62, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '', 0, 1, '', ''),
(63, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '', 0, 1, '', ''),
(64, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(65, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,'),
(66, 'Nam Pham Hoang', 2147483647, 'Ha Noi, Viet Nam', 'sdf', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/053340pmIMG_20210503_170815_868.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">5$</div>			</div>			</div>', 5.75, 1, '18,', '1,');

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
(2, 'Stanley', 2, 'Meet Stanley! This handsome, baby-doll faced prince can\'t wait to venture off to his new home. His coat is absolutely beautiful and perfect to pet all day! He hopes you like getting puppy kisses because he\'s not shy about giving them out! Stanley will arrive healthy with his vaccinations up to date. He is so excited to meet you. He can\'t wait to jump into your arms and shower you with puppy kisses! Don’t miss out!', 'Stanley Baby', 2, 1, 12, 300, '2.png,1.png,3.png,', 2, 1),
(3, 'French Bulldogs', 1, 'Stop right there and look no further! Marly is the one you have been looking for. She will win your heart with her first puppy kiss. Marly is the perfect cuddle buddy. She is always ready to curl up with you and snuggle up right next to you. Marly will be sure to come home to you happy, healthy, and full of kisses just for you. She will be up to date on her vaccinations and pre-spoiled. What more could you ask for? Make this cutie your cuddle buddy, and she will be sure to be that perfect addition that you have searched for.', 'Marly', 1, 1, 5, 150, '3.png,2.png', 3, 1),
(10, 'Germanian Little Pug 2', 1, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Baby', 4, 1, 5, 3434, '090941am2cd43b_393a4609550a4aa8a3dc4c01e44d8948_mv2.png,090941am2cd43b_816aedd775f249dd9b406405978343b2_mv2.png,090941am2cd43b_681753fc0b7448f0830b9947823e39ea_mv2.png,', 1, 1),
(11, 'Germanian Little Pug 3', 2, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Little', 3, 3, 6, 240, '091031am2cd43b_d0f2670282bb4c6585a269ef1949140b_mv2.png,091031am2cd43b_fadfa56613b14525b8b0ac16ad415908_mv2.png,091031am3.png,', 2, 1),
(12, 'Germanian Little Pug 4', 2, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Little', 3, 3, 6, 240, '091058am2cd43b_816aedd775f249dd9b406405978343b2_mv2.png,091058am2cd43b_b72e1390822f451d9865262bb057fa19_mv2.png,', 3, 1),
(13, 'Germanian Little Pug 5', 2, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Little', 3, 3, 6, 240, '091151am2cd43b_d0f2670282bb4c6585a269ef1949140b_mv2.png,091151am2cd43b_fadfa56613b14525b8b0ac16ad415908_mv2.png,091151am3.png,091151am398-3980500_bulldog-sitting-cute-puppies-and-dogs-book.png,', 2, 1),
(14, 'Germanian Little Pug 6', 2, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Little', 3, 3, 4, 240, '091218am2cd43b_ad23f564a47043fbb05fd123ecf4eb8f_mv2.png,091218am2cd43b_d0f2670282bb4c6585a269ef1949140b_mv2.png,091218am2cd43b_fadfa56613b14525b8b0ac16ad415908_mv2.png,', 1, 1),
(15, 'saadsad', 1, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'saadsad', 3, 3, 0, 320, '052244pm_ps.jpg,', 2, 1),
(18, 'Nước tẩy trang tươi mát LOreal Micellar Water Refreshing (400ml)', 1, 'Nước tẩy trang tươi mát LOreal Micellar Water là loại nước tẩy trang đa chức năng khi mang đến công dụng tẩy trang, làm sạch, giữ ẩm và giúp da mềm mịn chỉ trong một bước. Sản phẩm giúp lấy đi mọi cặn trang điểm, bụi bẩn mà không làm khô da hay gây kích ứng, mang đến cho bạn cảm giác thoải mái dễ chịu. Nước tẩy trang sử dụng được cho cả mắt, mặt và môi.', ' LOreal Micellar Water Refreshing', 12, 1, -18, 5, '053340pmIMG_20210503_170815_868.jpg,', 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
