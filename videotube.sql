-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 26, 2022 lúc 10:43 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `videotube`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Film & Animation'),
(2, 'Autos & Vehicles'),
(3, 'Music'),
(4, 'Pets & Animals'),
(5, 'Sports'),
(6, 'Travel & Events'),
(7, 'Gaming'),
(8, 'People & Blogs'),
(9, 'Comedy'),
(10, 'Entertainment'),
(11, 'News & Politics'),
(12, 'Howto & Style'),
(13, 'Education'),
(14, 'Science & Technology'),
(15, 'Nonprofits & Activism');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` mediumtext NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `videoId`, `responseTo`, `body`, `datePosted`) VALUES
(1, 'reece-kenney', 155, 0, 'Hi everyone! ', '2018-10-06 14:25:14'),
(2, 'reece-kenney', 155, 0, 'Nice video!', '2018-10-06 14:42:27'),
(3, 'reece-kenney', 155, 0, 'test comment', '2018-10-06 15:09:34'),
(4, 'reece-kenney', 155, 0, 'test 123', '2018-10-06 15:12:27'),
(5, 'reece-kenney', 155, 0, 'Hi guys!', '2018-10-06 15:13:22'),
(6, 'reece-kenney', 155, 0, 'This is a dog', '2018-10-06 15:14:18'),
(7, 'reece-kenney', 155, 0, 'fsfsdsd', '2018-10-06 15:17:12'),
(8, 'reece-kenney', 155, 0, 'gdsfdsfg', '2018-10-06 15:19:05'),
(9, 'reece-kenney', 155, 0, 'hgvjkbj', '2018-10-06 15:30:55'),
(10, 'reece-kenney', 155, 0, 'test', '2018-10-06 15:32:06'),
(11, 'reece-kenney', 155, 0, 'Test comment', '2018-10-06 15:35:42'),
(12, 'reece-kenney', 155, 0, 'fdsasdfsdf', '2018-10-06 16:03:42'),
(13, 'reece-kenney', 155, 0, 'fsdfadsfsdf', '2018-10-06 16:43:47'),
(14, 'reece-kenney', 155, 0, 'Hi!', '2018-10-06 16:45:26'),
(15, 'reece-kenney', 155, 0, 'fdsfsdfd sdf ', '2018-10-06 16:46:05'),
(16, 'reece-kenney', 155, 0, 'dfsfasdf asdf ', '2018-10-06 16:56:15'),
(17, 'reece-kenney', 155, 0, 'fsdfsdfsdsdf asdf ', '2018-10-06 17:07:12'),
(18, 'reece-kenney', 155, 0, 'asfasdfas asdf ', '2018-10-06 17:07:33'),
(19, 'reece-kenney', 155, 0, 'Hello', '2018-10-06 17:08:05'),
(20, 'reece-kenney', 155, 0, 'fdsafasdf', '2018-10-06 17:24:44'),
(21, 'reece-kenney', 155, 0, 'fgdgdsfgfdsg  fgsd', '2018-10-07 11:12:40'),
(22, 'reece-kenney', 155, 0, 'fsdfd', '2018-10-07 11:20:01'),
(23, 'reece-kenney', 155, 0, 'dsfsdf', '2018-10-07 11:21:01'),
(24, 'reece-kenney', 155, 0, 'gdgdf', '2018-10-07 11:46:02'),
(25, 'reece-kenney', 155, 0, 'vxzvxcv', '2018-10-07 11:51:38'),
(26, 'reece-kenney', 155, 0, 'gdsgdsgs ', '2018-10-07 11:52:42'),
(27, 'reece-kenney', 155, 0, 'dsfasdfas', '2018-10-07 12:03:41'),
(28, 'reece-kenney', 155, 0, 'dfasdfasdf asdf ', '2018-10-07 12:03:54'),
(29, 'reece-kenney', 155, 0, 'fgsdfg sdfg ', '2018-10-07 12:09:11'),
(30, 'reece-kenney', 155, 0, 'sdfsdf sdf ', '2018-10-07 12:10:30'),
(31, 'reece-kenney', 155, 0, 'sdf sdaf ', '2018-10-07 12:10:55'),
(32, 'reece-kenney', 155, 31, 'response :)', '2018-10-07 12:17:53'),
(33, 'reece-kenney', 155, 0, 'Test', '2018-10-07 12:19:20'),
(34, 'reece-kenney', 155, 0, 'cvzxcv zv', '2018-10-07 12:27:35'),
(35, 'reece-kenney', 155, 0, 'dgfsdfg', '2018-10-07 12:51:32'),
(36, 'reece-kenney', 155, 0, 'dfsd sfd s', '2018-10-07 13:03:39'),
(37, 'reece-kenney', 155, 0, 'sdfsdfs', '2018-10-07 13:18:02'),
(38, 'reece-kenney', 155, 37, 'This is a response!!!', '2018-10-07 13:41:53'),
(39, 'reece-kenney', 155, 38, 'asdf asfd asdf ', '2018-10-07 13:55:31'),
(40, 'reece-kenney', 155, 39, 'HELLO EVERYONE', '2018-10-07 13:57:13'),
(41, 'reece-kenney', 155, 33, 'Hi there :) ', '2018-10-07 14:00:10'),
(42, 'reece-kenney', 155, 41, 'Hi to you too!', '2018-10-07 14:00:27'),
(43, 'thong', 164, 0, 'sanng hói\n', '2022-04-20 15:13:06'),
(44, 'thong', 164, 43, 'bê ?ê\n', '2022-04-20 15:13:16'),
(45, 'thong', 164, 44, 'bê ?ê', '2022-04-20 15:13:32'),
(46, 'thong', 164, 45, 'gay', '2022-04-20 15:13:56'),
(47, 'TNuuu', 201, 0, 'Chào Thông qq', '2022-04-24 20:38:46'),
(48, 'owenthong', 203, 0, 'haha', '2022-04-26 10:27:37'),
(49, 'owenthong', 204, 0, 'SANG OI', '2022-04-26 10:37:09'),
(50, 'owenthong', 214, 0, 'dd', '2022-04-26 10:55:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `username`, `videoId`) VALUES
(22, 'reece-kenney', 154),
(23, 'reece-kenney', 155),
(31, 'reece-kenney', 0),
(33, 'reece-kenney', 161),
(35, 'thong', 164),
(36, 'thong', 0),
(37, 'TNuuu', 201),
(38, 'ngocngheo', 203),
(39, 'thucthuc', 215),
(40, 'owenthong', 211);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) NOT NULL,
  `userFrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `subscribers`
--

INSERT INTO `subscribers` (`id`, `userTo`, `userFrom`) VALUES
(9, 'donkey-kong', 'reece-kenney'),
(11, 'littlemac', 'reece-kenney'),
(17, 'mickey-mouse', 'thong'),
(19, 'reece-kenney', 'thong'),
(20, 'donkey-kong', 'thong'),
(21, 'thong', 'TNuuu'),
(22, 'anhemconnmiagi', 'thucthuc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `videoId`, `filePath`, `selected`) VALUES
(25, 154, 'uploads/videos/thumbnails/154-5bb0ba5aa936c.jpg', 1),
(26, 154, 'uploads/videos/thumbnails/154-5bb0ba5ad39b8.jpg', 0),
(27, 154, 'uploads/videos/thumbnails/154-5bb0ba5b1b7a3.jpg', 0),
(28, 155, 'uploads/videos/thumbnails/155-5bb7a68e7dccb.jpg', 1),
(29, 155, 'uploads/videos/thumbnails/155-5bb7a68e9fa5f.jpg', 0),
(30, 155, 'uploads/videos/thumbnails/155-5bb7a68ecb38c.jpg', 0),
(31, 156, 'uploads/videos/thumbnails/156-5bba23fbd942d.jpg', 0),
(32, 156, 'uploads/videos/thumbnails/156-5bba23fc048bd.jpg', 0),
(33, 156, 'uploads/videos/thumbnails/156-5bba23fc30d48.jpg', 1),
(34, 157, 'uploads/videos/thumbnails/157-5bba24337107c.jpg', 1),
(35, 157, 'uploads/videos/thumbnails/157-5bba243393bec.jpg', 0),
(36, 157, 'uploads/videos/thumbnails/157-5bba2433c32f8.jpg', 0),
(37, 158, 'uploads/videos/thumbnails/158-5bba245c7fee8.jpg', 1),
(38, 158, 'uploads/videos/thumbnails/158-5bba245c9c372.jpg', 0),
(39, 158, 'uploads/videos/thumbnails/158-5bba245cbf323.jpg', 0),
(40, 159, 'uploads/videos/thumbnails/159-5bba247ebfcc4.jpg', 1),
(41, 159, 'uploads/videos/thumbnails/159-5bba247ee4ad9.jpg', 0),
(42, 159, 'uploads/videos/thumbnails/159-5bba247f22bfa.jpg', 0),
(43, 160, 'uploads/videos/thumbnails/160-5bba2c7c483e6.jpg', 1),
(44, 160, 'uploads/videos/thumbnails/160-5bba2c7c77d22.jpg', 0),
(45, 160, 'uploads/videos/thumbnails/160-5bba2c7cbc94b.jpg', 0),
(46, 161, 'uploads/videos/thumbnails/161-5bba2cb995c1d.jpg', 1),
(47, 161, 'uploads/videos/thumbnails/161-5bba2cba21a63.jpg', 0),
(48, 161, 'uploads/videos/thumbnails/161-5bba2cbae6700.jpg', 0),
(49, 162, 'uploads/videos/thumbnails/162-5bba2cdb87604.jpg', 1),
(50, 162, 'uploads/videos/thumbnails/162-5bba2cdbc068a.jpg', 0),
(51, 162, 'uploads/videos/thumbnails/162-5bba2cdc29934.jpg', 0),
(52, 163, 'uploads/videos/thumbnails/163-5bba2d59ae676.jpg', 1),
(53, 163, 'uploads/videos/thumbnails/163-5bba2d59d15fb.jpg', 0),
(54, 163, 'uploads/videos/thumbnails/163-5bba2d5a0cd2b.jpg', 0),
(55, 164, 'uploads/videos/thumbnails/164-5bba2d7cb0414.jpg', 1),
(56, 164, 'uploads/videos/thumbnails/164-5bba2d7ccc263.jpg', 0),
(57, 164, 'uploads/videos/thumbnails/164-5bba2d7cf3ce6.jpg', 0),
(58, 191, 'uploads/videos/thumbnails/191-62603c13d8aaa.jpg', 1),
(59, 191, 'uploads/videos/thumbnails/191-62603c146b188.jpg', 0),
(60, 191, 'uploads/videos/thumbnails/191-62603c1574136.jpg', 0),
(61, 192, 'uploads/videos/thumbnails/192-62603c3745192.jpg', 1),
(62, 192, 'uploads/videos/thumbnails/192-62603c37ed202.jpg', 0),
(63, 192, 'uploads/videos/thumbnails/192-62603c38efc7e.jpg', 0),
(64, 193, 'uploads/videos/thumbnails/193-62603c636dfad.jpg', 1),
(65, 193, 'uploads/videos/thumbnails/193-62603c640ff0e.jpg', 0),
(66, 193, 'uploads/videos/thumbnails/193-62603c6536548.jpg', 0),
(67, 198, 'uploads/videos/thumbnails/198-62644840d26c6.jpg', 1),
(68, 198, 'uploads/videos/thumbnails/198-62644841186db.jpg', 0),
(69, 198, 'uploads/videos/thumbnails/198-626448415e5ae.jpg', 0),
(70, 199, 'uploads/videos/thumbnails/199-6264484d49394.jpg', 1),
(71, 199, 'uploads/videos/thumbnails/199-6264484d7f55a.jpg', 0),
(72, 199, 'uploads/videos/thumbnails/199-6264484dc4c9b.jpg', 0),
(73, 200, 'uploads/videos/thumbnails/200-6264489bdff8f.jpg', 1),
(74, 200, 'uploads/videos/thumbnails/200-6264489c4433f.jpg', 0),
(75, 200, 'uploads/videos/thumbnails/200-6264489cc63da.jpg', 0),
(76, 201, 'uploads/videos/thumbnails/201-6264f52f46a3c.jpg', 1),
(77, 201, 'uploads/videos/thumbnails/201-6264f5311fd17.jpg', 0),
(78, 201, 'uploads/videos/thumbnails/201-6264f53450f48.jpg', 0),
(79, 202, 'uploads/videos/thumbnails/202-6264fc1faa98a.jpg', 1),
(80, 202, 'uploads/videos/thumbnails/202-6264fc2088c90.jpg', 0),
(81, 202, 'uploads/videos/thumbnails/202-6264fc21ec369.jpg', 0),
(82, 203, 'uploads/videos/thumbnails/203-626570936a42a.jpg', 1),
(83, 203, 'uploads/videos/thumbnails/203-6265709400ee2.jpg', 0),
(84, 203, 'uploads/videos/thumbnails/203-6265709505a0e.jpg', 0),
(85, 204, 'uploads/videos/thumbnails/204-626576891817e.jpg', 1),
(86, 204, 'uploads/videos/thumbnails/204-6265768952ca7.jpg', 0),
(87, 204, 'uploads/videos/thumbnails/204-6265768994bcc.jpg', 0),
(88, 205, 'uploads/videos/thumbnails/205-626576bc14a60.jpg', 1),
(89, 205, 'uploads/videos/thumbnails/205-626576bc32611.jpg', 0),
(90, 205, 'uploads/videos/thumbnails/205-626576bc570f0.jpg', 0),
(91, 206, 'uploads/videos/thumbnails/206-626576dc84cad.jpg', 1),
(92, 206, 'uploads/videos/thumbnails/206-626576dca8600.jpg', 0),
(93, 206, 'uploads/videos/thumbnails/206-626576dcd84c4.jpg', 0),
(94, 207, 'uploads/videos/thumbnails/207-62657747d249b.jpg', 1),
(95, 207, 'uploads/videos/thumbnails/207-626577480da3a.jpg', 0),
(96, 207, 'uploads/videos/thumbnails/207-626577484f8d4.jpg', 0),
(97, 208, 'uploads/videos/thumbnails/208-6265775ed1ac2.jpg', 1),
(98, 208, 'uploads/videos/thumbnails/208-6265775f08b12.jpg', 0),
(99, 208, 'uploads/videos/thumbnails/208-6265775f43617.jpg', 0),
(100, 209, 'uploads/videos/thumbnails/209-62657938c0b74.jpg', 1),
(101, 209, 'uploads/videos/thumbnails/209-626579396c475.jpg', 0),
(102, 209, 'uploads/videos/thumbnails/209-6265793aab6bd.jpg', 0),
(103, 210, 'uploads/videos/thumbnails/210-62657bcc28828.jpg', 1),
(104, 210, 'uploads/videos/thumbnails/210-62657bcc6a627.jpg', 0),
(105, 210, 'uploads/videos/thumbnails/210-62657bcccd228.jpg', 0),
(106, 211, 'uploads/videos/thumbnails/211-62657cd2908df.jpg', 1),
(107, 211, 'uploads/videos/thumbnails/211-62657cd3ad628.jpg', 0),
(108, 211, 'uploads/videos/thumbnails/211-62657cd5cc11a.jpg', 0),
(109, 212, 'uploads/videos/thumbnails/212-62657ef50f885.jpg', 1),
(110, 212, 'uploads/videos/thumbnails/212-62657ef558eb6.jpg', 0),
(111, 212, 'uploads/videos/thumbnails/212-62657ef5ca588.jpg', 0),
(112, 213, 'uploads/videos/thumbnails/213-62657f6675d44.jpg', 1),
(113, 213, 'uploads/videos/thumbnails/213-62657f66923fc.jpg', 0),
(114, 213, 'uploads/videos/thumbnails/213-62657f66b34c4.jpg', 0),
(115, 214, 'uploads/videos/thumbnails/214-62657fe26e514.jpg', 1),
(116, 214, 'uploads/videos/thumbnails/214-62657fe28a3d7.jpg', 0),
(117, 214, 'uploads/videos/thumbnails/214-62657fe2ab326.jpg', 0),
(118, 215, 'uploads/videos/thumbnails/215-626580b2e0a42.jpg', 1),
(119, 215, 'uploads/videos/thumbnails/215-626580b31008a.jpg', 0),
(120, 215, 'uploads/videos/thumbnails/215-626580b343399.jpg', 0),
(121, 216, 'uploads/videos/thumbnails/216-62658184db2e5.jpg', 1),
(122, 216, 'uploads/videos/thumbnails/216-626581850702b.jpg', 0),
(123, 216, 'uploads/videos/thumbnails/216-626581852f7f7.jpg', 0),
(124, 217, 'uploads/videos/thumbnails/217-62664b1dad112.jpg', 0),
(125, 217, 'uploads/videos/thumbnails/217-62664b1dd1cc8.jpg', 0),
(126, 217, 'uploads/videos/thumbnails/217-62664b1e09a92.jpg', 1),
(127, 218, 'uploads/videos/thumbnails/218-6267a82e2e133.jpg', 1),
(128, 218, 'uploads/videos/thumbnails/218-6267a82f06454.jpg', 0),
(129, 218, 'uploads/videos/thumbnails/218-6267a8308e120.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `profilePic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(9, 'Nữ', 'Thục', 'TNuuu', 'thucnu@gmail.com', '111111', '2022-04-24 20:37:52', 'assets/images/profilePictures/default.png'),
(10, 'Sang', 'Hói', 'sanghoi', 'sang@gmail.com', 'b0412597dcea813655574dc54a5b74967cf85317f0332a2591be7953a016f8de56200eb37d5ba593b1e4aa27cea5ca27100f94dccd5b04bae5cadd4454dba67d', '2022-04-24 22:41:40', 'assets/images/profilePictures/default.png'),
(11, 'Nghèo', 'Ngọc', 'ngocngheo', 'giau@gmail.com', 'b0412597dcea813655574dc54a5b74967cf85317f0332a2591be7953a016f8de56200eb37d5ba593b1e4aa27cea5ca27100f94dccd5b04bae5cadd4454dba67d', '2022-04-24 22:43:03', 'assets/images/profilePictures/default.png'),
(12, 'Nụ', 'Thục', 'thucthuc', 'nu@gmail.com', 'b0412597dcea813655574dc54a5b74967cf85317f0332a2591be7953a016f8de56200eb37d5ba593b1e4aa27cea5ca27100f94dccd5b04bae5cadd4454dba67d', '2022-04-24 23:09:28', 'assets/images/profilePictures/default.png'),
(13, 'Thông', 'Hoàng', 'owenthong', 'thongowen3@gmail.com', 'b0412597dcea813655574dc54a5b74967cf85317f0332a2591be7953a016f8de56200eb37d5ba593b1e4aa27cea5ca27100f94dccd5b04bae5cadd4454dba67d', '2022-04-24 23:21:05', 'assets/images/profilePictures/default.png'),
(14, 'Hài', 'Dăng', 'danghai', 'hai@gmail.com', 'b0412597dcea813655574dc54a5b74967cf85317f0332a2591be7953a016f8de56200eb37d5ba593b1e4aa27cea5ca27100f94dccd5b04bae5cadd4454dba67d', '2022-04-24 23:45:55', 'assets/images/profilePictures/default.png'),
(15, 'Mơ', 'Cà', 'lecamo', 'mo@gmail.com', 'b0412597dcea813655574dc54a5b74967cf85317f0332a2591be7953a016f8de56200eb37d5ba593b1e4aa27cea5ca27100f94dccd5b04bae5cadd4454dba67d', '2022-04-24 23:48:18', 'assets/images/profilePictures/default.png'),
(16, 'Anh', 'Ú', 'anhemconnmiagi', 'anh@gmail.com', 'b0412597dcea813655574dc54a5b74967cf85317f0332a2591be7953a016f8de56200eb37d5ba593b1e4aa27cea5ca27100f94dccd5b04bae5cadd4454dba67d', '2022-04-24 23:50:30', 'assets/images/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `privacy` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL,
  `duration` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
(203, 'ngocngheo', 'Black Shark Lucifer T1', '', 0, 'uploads/videos/6265707dc6e3c.mp4', 1, '2022-04-24 22:45:01', 7, '00:21'),
(204, 'thucthuc', 'Bạn Sang hát karaoke nè hihi', '', 0, 'uploads/videos/6265768647569.mp4', 1, '2022-04-24 23:10:46', 10, '00:16'),
(205, 'thucthuc', 'Sống trên đời phải biết đều', '', 0, 'uploads/videos/626576bb1b1ab.mp4', 1, '2022-04-24 23:11:39', 3, '00:10'),
(206, 'thucthuc', 'khi bọn tôi 60 tủi', '', 1, 'uploads/videos/626576da5ca07.mp4', 1, '2022-04-24 23:12:10', 7, '00:15'),
(207, 'sanghoi', 'Câu kéo bạn Thục', '', 1, 'uploads/videos/626577443df39.mp4', 1, '2022-04-24 23:13:56', 5, '00:22'),
(208, 'sanghoi', 'mình là đầy tớ chụp ảnh', '', 1, 'uploads/videos/6265775d63658.mp4', 1, '2022-04-24 23:14:21', 7, '00:11'),
(209, 'owenthong', 'Flydigi Cyberfox T1', '', 1, 'uploads/videos/6265791fdfbde.mp4', 1, '2022-04-24 23:21:51', 1, '01:08'),
(210, 'owenthong', 'Nokia huyền thoại', '', 1, 'uploads/videos/62657bc758b3b.mp4', 1, '2022-04-24 23:33:11', 1, '00:17'),
(211, 'owenthong', 'owen', 'aaa', 0, 'uploads/videos/62657cb5608be.mp4', 1, '2022-04-24 23:37:09', 5, '00:25'),
(212, 'danghai', 'chưa biết ai hơn ai nha Sang Hói', '', 1, 'uploads/videos/62657eed5206e.mp4', 1, '2022-04-24 23:46:37', 4, '00:41'),
(213, 'lecamo', 'thơm ngon mời bạn xem nhé', '', 1, 'uploads/videos/62657f655628c.mp4', 1, '2022-04-24 23:48:37', 1, '00:06'),
(214, 'anhemconnmiagi', 'ét ô ét', 'e', 1, 'uploads/videos/62657fe1745bf.mp4', 1, '2022-04-24 23:50:41', 8, '00:04'),
(215, 'anhemconnmiagi', 'bới ngta thằng sang hói phá xe tui', '', 1, 'uploads/videos/626580b0aeebb.mp4', 1, '2022-04-24 23:54:08', 2, '00:10'),
(216, 'anhemconnmiagi', 'cứu Sang', '', 1, 'uploads/videos/62658183b6161.mp4', 1, '2022-04-24 23:57:39', 4, '00:09'),
(217, 'thucthuc', 'bắp luộc đê', 'sang hài nữ mơ', 1, 'uploads/videos/62664b1ba5876.mp4', 1, '2022-04-25 14:17:47', 7, '00:15'),
(218, 'owenthong', 'Magnetic', '', 1, 'uploads/videos/6267a813c1f73.mp4', 1, '2022-04-26 15:06:43', 0, '00:34');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
