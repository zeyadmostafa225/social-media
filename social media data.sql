-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 أبريل 2024 الساعة 13:55
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_media`
--

-- --------------------------------------------------------

--
-- بنية الجدول `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(600) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `Phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `Email`, `address`, `Phone`) VALUES
(1, 'زياد مصطفي السيد احمد', '01068081279', 'ziadmostafa223@gmail.com', 'القناطر الخيرية', '01068081279'),
(2, 'احمد سليم محمد عبد الدايم', '01023027286', 'ahmedsaleem21@gmail.com', 'الفيوم', '01023027286'),
(3, 'محمد محمود محمد اسماعيل', '01152668127', 'mohamedmahmoud008@gmail.com', 'امبابه', '01152668127'),
(4, 'محمود عادل عبدالنبي سيد', '01013908266', 'mahmoudadel800@gmail.com', 'امبابه', '01013908266'),
(5, 'مروان عبدالمجيد محمد عبدالمجيد', '01154763328', 'marwanabdulmajeed223@gmail', 'القناطر الخيرية', '01154763328'),
(6, 'عبدالله طاهر ابراهيم النجار', '0102906762', 'abdullahtaher655@gmail.com', 'اكتوبر', '0102906762'),
(7, 'زياد رافت مبروك احمد', '01021746160', 'ziadraafat43@gmail.com', 'اوسيم', '01021746160'),
(8, 'مروان محمود سيد محمد ابو شادي', '01114242313', 'marwanmahmoud98@gmail.com', 'امبابه', '01114242313'),
(9, 'يوسف احمد عبدالصادق عبدالكريم', '01115904925', 'yousefahmed32@gmail.com', 'شبرا', '01115904925'),
(10, 'مؤمن اسامه عبد العاطي علي', '01147485642', 'momenosama954@gmail.com', 'امبابه', '01147485642'),
(11, 'محمود محمد رمضان عباس محمود', '01149676938', 'mahmoudmuhammad765@gmail.com', 'امبابه', '01149676938'),
(12, 'اسلام خميس حسين مرزوق', '01116115969', 'islamkhamis765@gmail.com', 'الهرم', '01116115969'),
(13, 'علي خالد علي خالد عبدالرحمن', '01127758532', 'alikhaled542@gmail.com', 'الهرم', '01127758532'),
(14, 'ندي محمد احمد محمود', '01003193105', 'nadamohammed217@gmail.com', 'رمسيس', '01003193105'),
(15, 'فاطمه سيد احمد مرسي', '01117815122', 'fatimasayed321@gmail.com', 'الهرم', '01117815122'),
(16, 'ندي علاءالدين علي عبدالعظيم', '01015276320', 'nadaalaaaldin543@gmail.com', 'حلوان', '01015276320'),
(17, 'دعاء محمد خليفه عيد', '01154737889', 'doaamohammed54@gmail.com', 'حلوان', '01154737889'),
(18, 'مني انور حمدناالله فضل', '01118562825', 'monaanwar543@gmail.com', 'فيصل', '01118562825'),
(19, 'مريم احمد عبدالحميد حامد', '01157238475', 'mariamahmed43@gmail.com', 'الهرم', '01157238475'),
(20, 'فرحه محمد احمد عبدالعال', '01117841800', 'farhamohammed43@gmail.com', 'بولاق الدكرور', '01117841800');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
