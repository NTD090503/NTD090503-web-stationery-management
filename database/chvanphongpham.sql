-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 06, 2024 lúc 01:29 PM
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
-- Cơ sở dữ liệu: `chvanphongpham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `ten_slider` varchar(255) NOT NULL,
  `anh_slider` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id_slider`, `ten_slider`, `anh_slider`, `type`) VALUES
(7, 'slide image123', 'slide2.jpg', '0'),
(8, 'slide gg', 'slide3.jpg', '0'),
(9, 'slide image', 'slide3.jpg', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbinhluan`
--

CREATE TABLE `tblbinhluan` (
  `id_binhluan` int(11) NOT NULL,
  `binhluan_ten` varchar(30) NOT NULL,
  `binhluan` varchar(50) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `blog_id` int(2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblbinhluan`
--

INSERT INTO `tblbinhluan` (`id_binhluan`, `binhluan_ten`, `binhluan`, `id_sanpham`, `blog_id`, `date`) VALUES
(1, 'Trần Ngọc', '', 1, 1, '2023-10-17'),
(2, 'NT', '', 1, 0, '2023-10-17'),
(3, 'TT23', 'Xin chào', 27, 0, '2023-10-18'),
(4, '', '', 25, 0, '2023-10-30'),
(5, 'An', 'uuuu', 25, 0, '2023-10-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblkhachhang`
--

CREATE TABLE `tblkhachhang` (
  `id_khachhang` int(11) NOT NULL,
  `id_taikhoan` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblkhachhang`
--

INSERT INTO `tblkhachhang` (`id_khachhang`, `id_taikhoan`, `ten`, `diachi`, `sdt`, `email`) VALUES
(46, '74', 'Ngoc 18', 'VinhPhuc', '22222', 't@gmai.com'),
(49, '32', 'Đại', 'VP', '0927253633', 'dai@gmail.com'),
(52, '36', 'Dai', 'i', '9', 'ty@gmail.com'),
(91, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(92, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(93, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(94, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(95, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(96, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(97, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(98, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(99, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(100, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(101, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(102, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(103, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(104, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(105, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(106, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(107, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(108, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(109, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(110, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(111, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(112, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(113, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(114, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(115, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(116, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(117, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(118, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(119, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(120, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(121, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(122, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(123, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(124, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(125, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(126, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(127, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(128, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(129, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(130, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(131, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(132, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(133, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(134, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(135, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(136, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(137, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(138, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(139, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(140, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(141, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(142, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(143, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(144, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(145, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(146, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(147, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(148, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(149, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(150, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(151, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(152, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(153, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(154, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(155, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(156, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(157, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(158, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(159, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(160, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(161, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(162, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(163, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(164, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(165, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(166, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(167, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(168, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(169, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(170, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(171, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(172, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(173, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(174, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(175, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(176, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(177, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(178, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(179, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(180, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(181, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(182, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(183, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(184, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(185, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(186, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(187, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(188, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(189, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(190, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(191, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(192, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(193, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(194, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(195, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(196, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(197, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(198, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(199, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(200, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(201, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(202, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(203, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(204, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(205, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(206, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(207, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(208, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(209, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(210, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(211, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(212, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(213, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(214, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(215, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(216, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(217, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(218, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(219, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(220, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(221, '458', '', '', '', 'trangoc@gmail.com'),
(222, '458', '', '', '', 'trangoc@gmail.com'),
(223, '458', '', '', '', 'trangoc@gmail.com'),
(224, '458', '', '', '', 'trangoc@gmail.com'),
(225, '458', '', '', '', 'trangoc@gmail.com'),
(226, '458', '', '', '', 'trangoc@gmail.com'),
(227, '458', '', '', '', 'trangoc@gmail.com'),
(228, '458', '', '', '', 'trangoc@gmail.com'),
(229, '458', '', '', '', 'trangoc@gmail.com'),
(230, '458', '', '', '', 'trangoc@gmail.com'),
(231, '458', '', '', '', 'trangoc@gmail.com'),
(232, '458', '', '', '', 'trangoc@gmail.com'),
(233, '458', '', '', '', 'trangoc@gmail.com'),
(234, '458', '', '', '', 'trangoc@gmail.com'),
(235, '458', '', '', '', 'trangoc@gmail.com'),
(236, '458', '', '', '', 'trangoc@gmail.com'),
(237, '458', '', '', '', 'trangoc@gmail.com'),
(238, '458', '', '', '', 'trangoc@gmail.com'),
(239, '458', '', '', '', 'trangoc@gmail.com'),
(240, '458', '', '', '', 'trangoc@gmail.com'),
(241, '458', '', '', '', 'trangoc@gmail.com'),
(242, '458', '', '', '', 'trangoc@gmail.com'),
(243, '458', '', '', '', 'trangoc@gmail.com'),
(244, '458', '', '', '', 'trangoc@gmail.com'),
(245, '458', '', '', '', 'trangoc@gmail.com'),
(246, '458', '', '', '', 'trangoc@gmail.com'),
(247, '458', '', '', '', 'trangoc@gmail.com'),
(248, '458', '', '', '', 'trangoc@gmail.com'),
(249, '458', '', '', '', 'trangoc@gmail.com'),
(250, '458', '', '', '', 'trangoc@gmail.com'),
(251, '458', '', '', '', 'trangoc@gmail.com'),
(252, '458', '', '', '', 'trangoc@gmail.com'),
(253, '458', '', '', '', 'trangoc@gmail.com'),
(254, '458', '', '', '', 'trangoc@gmail.com'),
(255, '458', '', '', '', 'trangoc@gmail.com'),
(256, '458', '', '', '', 'trangoc@gmail.com'),
(257, '458', '', '', '', 'trangoc@gmail.com'),
(258, '458', '', '', '', 'trangoc@gmail.com'),
(259, '458', '', '', '', 'trangoc@gmail.com'),
(260, '458', '', '', '', 'trangoc@gmail.com'),
(261, '458', '', '', '', 'trangoc@gmail.com'),
(262, '458', '', '', '', 'trangoc@gmail.com'),
(263, '458', '', '', '', 'trangoc@gmail.com'),
(264, '458', '', '', '', 'trangoc@gmail.com'),
(265, '458', '', '', '', 'trangoc@gmail.com'),
(266, '458', '', '', '', 'trangoc@gmail.com'),
(267, '458', '', '', '', 'trangoc@gmail.com'),
(268, '458', '', '', '', 'trangoc@gmail.com'),
(269, '458', '', '', '', 'trangoc@gmail.com'),
(270, '458', '', '', '', 'trangoc@gmail.com'),
(271, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(272, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(273, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(274, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(275, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(276, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(277, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(278, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(279, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(280, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(281, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(282, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(283, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(284, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(285, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(286, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(287, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(288, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(289, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(290, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(291, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(292, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(293, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(294, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(295, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(296, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(297, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(298, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(299, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(300, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(301, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(302, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(303, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(304, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(305, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(306, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(307, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(308, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(309, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(310, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(311, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(312, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(313, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(314, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(315, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(316, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(317, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(318, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(319, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(320, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(321, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(322, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(323, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(324, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(325, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(326, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(327, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(328, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(329, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(330, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(331, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(332, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(333, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(334, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(335, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(336, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(337, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(338, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(339, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(340, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(341, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(342, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(343, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(344, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(345, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(346, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(347, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(348, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(349, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(350, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(351, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(352, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(353, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(354, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(355, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(356, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(357, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(358, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(359, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(360, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(361, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(362, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(363, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(364, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(365, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(366, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(367, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(368, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(369, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(370, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(371, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(372, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(373, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(374, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(375, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(376, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(377, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(378, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(379, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(380, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(381, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(382, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(383, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(384, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(385, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(386, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(387, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(388, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(389, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(390, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(391, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(392, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(393, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(394, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(395, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(396, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(397, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(398, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(399, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(400, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(401, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(402, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(403, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(404, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(405, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(406, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(407, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(408, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(409, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(410, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(411, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(412, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(413, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(414, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(415, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(416, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(417, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(418, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(419, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(420, '458', 'Ngoc', 'Ha Noi', '2282717171', 'trangoc@gmail.com'),
(421, '15495', 'Ngoc12', 'VP', '122344333322', 'ngoc2@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhanvien`
--

CREATE TABLE `tblnhanvien` (
  `id_nhanvien` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `CMND` int(11) NOT NULL,
  `trangThai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnhanvien`
--

INSERT INTO `tblnhanvien` (`id_nhanvien`, `id_taikhoan`, `ten`, `email`, `pass`, `sdt`, `diachi`, `CMND`, `trangThai`) VALUES
(1, 2, 'dgfhgjh2222', 'uuu@gmail.com', '852', '98764532122', 'sdffghgjghkjljhgf', 2147483647, ''),
(2, 5, 'qưẻtyui 1221121221212', 'abc12345678@gmail.com', '9999', '01234567890', 'sdfghjkljhgfdf', 2147483647, ''),
(3, 6, 'ádfghjkl', 'addddd@gmail.com', '963', '852963741', 'gdhfjghkhljkgdgf', 0, '0'),
(4, 7, 'qưẻtyui', 'qqqqqqqqaaa@gmail.com', '852741', '7986319985', 'ádfj,mngscsdvfgbngb', 0, '0'),
(7, 12, 'cô giáo', 'cogiao@gmail.com', '852', '85296', 'cóadasd', 0, '0'),
(9, 34, 'cô giáo Ánh', 'anh@gmail.com', '1', '09293772723', 'HN', 2147483647, 'Làm việc'),
(10, 15498, '1', 'abcd@gmail.com', '1', '98764532111', 'hanoi', 2147483647, 'Làm việc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblquestion`
--

CREATE TABLE `tblquestion` (
  `id` int(11) NOT NULL,
  `cauhoi` varchar(255) NOT NULL,
  `traloi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblquestion`
--

INSERT INTO `tblquestion` (`id`, `cauhoi`, `traloi`) VALUES
(5, 'Bút khi nào hàng về ?', ''),
(6, 'Bạn đang ở đâu ?', 'Tôi đây'),
(10, 'Quỳnh đang làm gì ?', ''),
(11, 'Bạn đang ở đâu ?', 'Tôi đây'),
(12, 'Kẹo còn không ?', 'Tôi đây');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsanpham`
--

CREATE TABLE `tblsanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `loaisp_id` int(11) NOT NULL,
  `giasp` float NOT NULL,
  `khuyenmai` float NOT NULL,
  `anhsp` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `chitiet_sp` text NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblsanpham`
--

INSERT INTO `tblsanpham` (`id_sanpham`, `tensp`, `loaisp_id`, `giasp`, `khuyenmai`, `anhsp`, `soluong`, `chitiet_sp`, `tinhtrang`) VALUES
(21, 'Bút Chì', 96, 400000, 12, 'butchi.png', 100, '<p>Rẻ bất ngờ</p>\r\n', 1),
(23, 'Gấu bông mèo ', 31, 1000000, 15, 'butchi.png', 30, '<p>Ngon thơm</p>', 1),
(24, 'Giấu note', 94, 400000, 15, 'giấy note.jpeg', 30, '<p>Ngon bổ rẻ</p>\r\n', 1),
(28, 'Hình dán  ', 75, 400000, 12, 'gấu2.jpeg', 30, '<p>Giá rẻ</p>', 1),
(29, 'Thước kẻ', 96, 400000, 15, 'thước kẻ.jpeg', 30, '<p>Gi&ograve;n</p>\r\n', 1),
(30, 'Vở kẻ ngang', 95, 1000000, 20, 'vở.jpeg', 30, '<p>Dai dẻo ngọt</p>\r\n', 1),
(34, 'Vở ô li  ', 28, 24000, 2, 'vở.jpeg', 34, '<p>tttt</p>', 1),
(38, 'Gấu xinh', 101, 23888, 5, 'xinh.jpeg', 32, '', 1),
(41, 'but chi 88 ', 75, 90000, 88, 'butchi.png', 9999998, 'đẹp_ok', 1),
(42, 'but chi cuba', 24, 111, 11, 'butchi.png', 1, 'đẹp_ok', 1),
(47, 'but chi cuba', 78, 10000000, 88, 'butchi.png', 9999999, 'đẹp_ok', 1),
(49, 'but chi 2', 79, 500000, 88, 'butchi.png', 300, 'đẹp_ok', 1),
(51, 'Thước kẻ', 28, 7000, 10, 'thước kẻ.jpeg', 98, 'bền và đẹp', 1),
(65, 'Bút chì kim', 28, 2000, 0.2, 'sticker.jpeg', 6, '222', 1),
(67, 'Vở ô ly   ', 28, 222, 222, 'sticker.jpeg', 212, '222', 1),
(68, '222', 28, 2222, 2222, 'giấy note.jpeg', 2222, '2222', 1),
(69, 'Chuột', 31, 62272, 0.2, 'vở.jpeg', 20, 'sjsjs', 1),
(70, 'Máy tính', 31, 22222, 2222, 'xinh.jpeg', 212, 'Quỳnh', 1),
(71, 'Băng dinh', 31, 22, 22, 'vở2.jpeg', 10, '2222', 1),
(72, 'Bút', 24, 20000, 0.5, 'butchi.png', 20, 'uuuu', 1),
(73, 'Gấu', 75, 20000, 0.3, 'xinh.jpeg', 10, 'Quỳnh', 1),
(74, 'Gấu 2', 75, 20000, 0.4, 'gấu.jpeg', 20, 'Quỳnh', 1),
(75, 'Túi', 79, 30000, 0.4, 'balo2.jpeg', 20, 'Túi', 1),
(76, 'Túi chéo', 79, 20000, 0.4, 'balo.jpeg', 20, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltintuc`
--

CREATE TABLE `tbltintuc` (
  `id_tintuc` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltintuc`
--

INSERT INTO `tbltintuc` (`id_tintuc`, `tieude`, `noidung`) VALUES
(1, 'Quỳnh ', 'top102');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltk`
--

CREATE TABLE `tbltk` (
  `id_taikhoan` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `quyen` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltk`
--

INSERT INTO `tbltk` (`id_taikhoan`, `ten`, `email`, `pass`, `sdt`, `quyen`, `diachi`) VALUES
(15496, 'dai', 'dai@gmail.com', '1', '0328828854', 0, 'hanoi'),
(15497, 'user1', 'user1@gmail.com', '0', '01234567890', 1, 'tpHCM'),
(15498, '1', 'abcd@gmail.com', '1', '98764532111', 0, 'hanoi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `sanpham_anh` varchar(255) NOT NULL,
  `session_idA` varchar(255) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `sanpham_tieude` varchar(255) NOT NULL,
  `sanpham_gia` float NOT NULL,
  `quantitys` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `sanpham_anh`, `session_idA`, `sanpham_id`, `sanpham_tieude`, `sanpham_gia`, `quantitys`) VALUES
(38, 'thước kẻ.jpeg', 'hkd0k7bh20m6hp723vl26j9atl', 51, 'Thước kẻ', 7000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `ten_danhmuc`) VALUES
(16, 'Văn phòng phẩm'),
(18, 'Gấu bông'),
(24, 'Gia dụng'),
(25, 'Balo & Túi ví'),
(35, 'Đồ chơi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `cartA_id` int(11) NOT NULL,
  `sanpham_anh` varchar(255) NOT NULL,
  `session_idA` varchar(255) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `sanpham_tieude` varchar(255) NOT NULL,
  `sanpham_gia` float NOT NULL,
  `quantitys` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`cartA_id`, `sanpham_anh`, `session_idA`, `sanpham_id`, `sanpham_tieude`, `sanpham_gia`, `quantitys`) VALUES
(27, 'thước kẻ.jpeg', 'ggm4kcia5lo6u2bb6sq31k2ria', 51, 'Thước kẻ', 7000, 1),
(28, 'butchi.png', 'ggm4kcia5lo6u2bb6sq31k2ria', 41, 'but chi 88', 9898990000, 1),
(29, 'sticker.jpeg', 'ggm4kcia5lo6u2bb6sq31k2ria', 65, 'Bút chì kim', 2000, 1),
(30, 'sticker.jpeg', 'ggm4kcia5lo6u2bb6sq31k2ria', 65, 'Bút chì kim', 2000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoadon`
--

CREATE TABLE `tbl_hoadon` (
  `id_hoadon` int(11) NOT NULL,
  `session_idA` varchar(50) NOT NULL,
  `tongtien` float NOT NULL,
  `date_thongke` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hoadon`
--

INSERT INTO `tbl_hoadon` (`id_hoadon`, `session_idA`, `tongtien`, `date_thongke`) VALUES
(11, 'ggm4kcia5lo6u2bb6sq31k2ria', 9899000000, '2024-04-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loai_sp`
--

CREATE TABLE `tbl_loai_sp` (
  `id_loaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loai_sp`
--

INSERT INTO `tbl_loai_sp` (`id_loaisp`, `tenloaisp`) VALUES
(28, 'Đồ gia dụng'),
(31, 'Dụng cụ nhà'),
(75, 'Gối bông Idol'),
(79, 'Túi đeo chéo'),
(107, 'abcde'),
(108, 'abcdfeeygysdhgyd'),
(109, '1234');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `code_oder` varchar(255) NOT NULL,
  `session_idA` varchar(255) DEFAULT NULL,
  `register_id` int(11) NOT NULL,
  `giaohang` varchar(255) NOT NULL,
  `thanhtoan` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `code_oder`, `session_idA`, `register_id`, `giaohang`, `thanhtoan`, `order_date`, `status`) VALUES
(27, 'ggm4kcia', 'ggm4kcia5lo6u2bb6sq31k2ria', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-19', '1'),
(28, 'ggm4kcia', 'ggm4kcia5lo6u2bb6sq31k2ria', 21, 'Giao hàng chuyển phát nhanh', 'tienmat', '2024-04-19', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_vnpay`
--

CREATE TABLE `tbl_vnpay` (
  `id_vnpay` int(11) NOT NULL,
  `vnp_amount` float NOT NULL,
  `vnp_bankCode` varchar(255) NOT NULL,
  `vnp_banktranno` varchar(255) NOT NULL,
  `vnp_cardtype` varchar(255) NOT NULL,
  `vnp_orderinfo` varchar(255) NOT NULL,
  `vnp_paydate` date NOT NULL,
  `vnp_tmncode` varchar(255) NOT NULL,
  `vnp_transactionno` varchar(255) NOT NULL,
  `code_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Chỉ mục cho bảng `tblbinhluan`
--
ALTER TABLE `tblbinhluan`
  ADD PRIMARY KEY (`id_binhluan`);

--
-- Chỉ mục cho bảng `tblkhachhang`
--
ALTER TABLE `tblkhachhang`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `tblnhanvien`
--
ALTER TABLE `tblnhanvien`
  ADD PRIMARY KEY (`id_nhanvien`);

--
-- Chỉ mục cho bảng `tblquestion`
--
ALTER TABLE `tblquestion`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbltintuc`
--
ALTER TABLE `tbltintuc`
  ADD PRIMARY KEY (`id_tintuc`);

--
-- Chỉ mục cho bảng `tbltk`
--
ALTER TABLE `tbltk`
  ADD PRIMARY KEY (`id_taikhoan`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`cartA_id`);

--
-- Chỉ mục cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Chỉ mục cho bảng `tbl_loai_sp`
--
ALTER TABLE `tbl_loai_sp`
  ADD PRIMARY KEY (`id_loaisp`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  ADD PRIMARY KEY (`id_vnpay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tblbinhluan`
--
ALTER TABLE `tblbinhluan`
  MODIFY `id_binhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tblkhachhang`
--
ALTER TABLE `tblkhachhang`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT cho bảng `tblnhanvien`
--
ALTER TABLE `tblnhanvien`
  MODIFY `id_nhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tblquestion`
--
ALTER TABLE `tblquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `tbltintuc`
--
ALTER TABLE `tbltintuc`
  MODIFY `id_tintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbltk`
--
ALTER TABLE `tbltk`
  MODIFY `id_taikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15500;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `cartA_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  MODIFY `id_hoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_loai_sp`
--
ALTER TABLE `tbl_loai_sp`
  MODIFY `id_loaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  MODIFY `id_vnpay` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
