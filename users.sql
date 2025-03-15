-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2025-03-15 02:23:01
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `lp`
--

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `inviteCode` varchar(20) DEFAULT NULL,
  `dataError` varchar(20) DEFAULT '0',
  `age` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `bankCard` varchar(20) DEFAULT NULL,
  `money` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `vipCode` varchar(20) DEFAULT NULL,
  `createDate` varchar(20) NOT NULL,
  `vipGrade` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vipStatus` varchar(20) NOT NULL,
  `likeSquare` varchar(255) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `account`, `password`, `inviteCode`, `dataError`, `age`, `gender`, `bankCard`, `money`, `avatar`, `vipCode`, `createDate`, `vipGrade`, `name`, `vipStatus`, `likeSquare`, `city`) VALUES
(2, '12345', '12345', '1208', NULL, '26', '女', NULL, '1686986', 'Snipaste_2025-02-28_22-13-头像38.jpg', '566814', '2025-02-26 17:29:35', '3', '박지원', '3', '21', ''),
(3, '1234', '1234', '1234', '0', '25', '女', NULL, '89000', '人设 (1).jpg', '566814', '2025-02-26 17:30:40', '3', '美奈子', '3', '23751161513', ''),
(13, '12345', '12345', '1234', NULL, NULL, NULL, NULL, NULL, 'Snipaste_2025-02-28_22-13-头像38.jpg', NULL, '2025-02-26 17:57:59', '1', '박지원', '', '21', ''),
(20, '123', '123', '1108', NULL, '22', '女', NULL, '88000', 'Snipaste_2025-02-26_14-21-25.png', '566814', '2025-02-25 16:37:10', '3', '千本', '3', '', ''),
(29, '158168688', '123321', '1208', '1', NULL, '男', NULL, '280000', 'IMG_0061.png', '558623', '2025-03-09 16:56:05', '1', '長澤まさみ', '3', '', ''),
(30, '88998899', '123456789', '1208', NULL, NULL, '男', NULL, NULL, NULL, NULL, '2025-03-09 17:09:23', '', '', '', '', ''),
(31, '6535333', 'aa123456', '1208', NULL, NULL, '女', NULL, NULL, NULL, NULL, '2025-03-09 17:11:57', '', '', '', '', ''),
(32, 'yj773707', '773707', '1208', NULL, NULL, '男', NULL, NULL, NULL, NULL, '2025-03-09 17:12:29', '', '', '', '', ''),
(33, '1314520', '12345678', '1208', NULL, NULL, '男', NULL, NULL, NULL, NULL, '2025-03-09 21:53:45', '', '', '', '', ''),
(34, '258963', '258963', '1208', NULL, NULL, '男', NULL, '653000', 'image_1 (14).png', '957763', '2025-03-10 11:12:47', '3', '佐藤優奈', '3', '14', ''),
(35, '15666', '123321', '1208', NULL, NULL, '女', NULL, '280000', 'IMG_0061.png', '857852', '2025-03-10 14:16:37', '3', '長澤まさみ', '3', '', ''),
(36, '1212123', '123456', '1208', NULL, NULL, '男', NULL, '160000', 'IMG_0119.jpeg', '257354', '2025-03-10 15:43:37', '3', '花泽美穗', '3', '', ''),
(37, 'Qwe7575775', 'qwe8686886', '1208', NULL, NULL, '女', NULL, '520000', 'IMG_0055.jpeg', '357143', '2025-03-11 16:52:29', '3', '美奈子', '3', '', ''),
(38, 'kaede', 'Aa123456..', '1208', NULL, NULL, '男', NULL, '980000', 'IMG_0057.jpeg', '657892', '2025-03-12 20:45:24', '3', '矢野枫', '3', '', ''),
(39, '16888', '123456', '1208', NULL, NULL, '男', NULL, '450000', 'IMG_0001.jpeg', '558212', '2025-03-13 10:21:59', '3', '早川奈子', '3', '', ''),
(40, '16889', '123456', '1208', NULL, NULL, '女', NULL, '660000', 'IMG_0001.jpeg', '685551', '2025-03-13 10:25:29', '3', '早川奈子', '3', '', ''),
(41, '16885', '123456', '1208', NULL, NULL, '女', NULL, '773000', 'IMG_0005.jpeg', '664599', '2025-03-13 10:35:51', '3', '春島優井', '3', '', ''),
(42, '16808', '123456', '1208', NULL, NULL, '女', NULL, '650000', 'IMG_0006.jpeg', '336258', '2025-03-13 10:37:57', '3', '田中千島', '3', '', ''),
(43, 'scxn521', 'AA123456aa', '1208', NULL, NULL, '女', NULL, '662000', 'IMG_0002.jpeg', '112536', '2025-03-13 10:38:21', '3', '森川幸乃', '3', '', ''),
(44, '16887', '123456', '1208', NULL, NULL, '女', NULL, '522000', 'IMG_0007.jpeg', '668893', '2025-03-13 10:40:43', '3', '中村優里', '3', '', ''),
(45, 'rxqz9912', 'AA123456aa', '1208', NULL, NULL, '女', NULL, '880000', 'IMG_0004.png', '556587', '2025-03-13 11:37:38', '3', '日向晴子', '3', '', ''),
(46, 'mkjy5186', 'AA123456aa', '1208', NULL, NULL, '女', NULL, '583000', 'IMG_0005.png', '896558', '2025-03-13 11:41:27', '3', '美空结衣', '3', '', ''),
(47, 'scyz818', 'AA123456aa', '1208', NULL, NULL, '女', NULL, '890000', 'IMG_0006.png', '662532', '2025-03-13 11:43:17', '3', '石原桜子', '3', '', ''),
(48, 'rina', 'AA123456..', '1208', NULL, NULL, '女', NULL, '520000', 'IMG_0058.jpeg', '852006', '2025-03-13 14:11:49', '3', '吉冈梨奈', '3', '', ''),
(49, 'yukino', 'Aa123456..', '1208', 'undefined', 'undefined', '女', '', '660000', 'IMG_0059.jpeg', '225689', '2025-03-13 14:14:14', '3', '森川雪乃', '3', '', ''),
(50, '158910355', '158910355', '1208', '0', NULL, '女', NULL, NULL, 'Snipaste_2025-02-17_19-32-25.png', NULL, '2025-03-14 16:08:14', '1', 'ヤマナカ ナオミ', '0', '', ''),
(51, 'love', '102431', '1208', '0', NULL, '女', NULL, NULL, NULL, NULL, '2025-03-14 16:10:41', '', '', '', '', ''),
(52, '893538736', '893538736', '1208', '0', NULL, '女', NULL, NULL, 'Snipaste_2025-02-18_22-02-32.png', NULL, '2025-03-14 16:33:07', '1', 'ヤマモト ミコ', '0', '', ''),
(53, 'zz3222378911', 'zz3222378911', '1208', '0', NULL, '女', NULL, NULL, 'Snipaste_2025-02-19_16-06-19.png', NULL, '2025-03-14 16:43:22', '1', 'ヤマモト アヤコ', '0', '', ''),
(54, '6389547048', '6389547048', '1208', '0', 'undefined', '0', 'undefined', 'undefined', 'Snipaste_2025-03-14_16-49-14.png', 'undefined', '2025-03-14 16:45:03', '1', 'ヤマナカ ミコ', '0', '', ''),
(55, 'TETU0523', 'Tetu2451', '1208', '0', '', '男', '', '0', 'IMG_1028.jpeg', '585866', '2025-03-14 16:50:32', '1', 'T2', '0', '', '');

--
-- 转储表的索引
--

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
