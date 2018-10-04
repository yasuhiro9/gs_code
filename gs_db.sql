-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018 年 9 月 27 日 21:11
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `cmt` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL,
  `age` int(2) NOT NULL,
  `star` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `cmt`, `indate`, `age`, `star`) VALUES
(1, '花火', 'http://', 'メモ', '2018-09-22 18:35:55', 30, NULL),
(2, 'ナルト', 'http://', 'メモ', '2018-09-22 18:41:41', 20, NULL),
(3, 'ワンピース', 'http://', 'メモ', '2018-09-22 18:41:41', 10, NULL),
(4, 'ヒロアカ', 'http://', 'メモ', '2018-09-22 18:41:41', 20, NULL),
(5, 'ブリーチ', 'http://', 'メモ', '2018-09-22 18:41:41', 30, NULL),
(6, '進撃の巨人', 'http://', 'メモ', '2018-09-22 18:43:13', 40, NULL),
(7, 'アオハライド', 'http://', 'メモ', '2018-09-22 18:43:13', 30, NULL),
(8, 'リアル鬼ごっこ', 'http://', 'メモ', '2017-05-26 18:43:13', 20, NULL),
(9, '名探偵コナン', 'http://', 'メモ', '2018-09-22 18:43:13', 10, NULL),
(10, 'honna', 'http://', 'asdfghjk\r\n\r\n', '2018-09-27 19:56:14', 20, ''),
(11, 'honna', 'http://', 'すげー！！', '2018-09-27 21:10:17', 20, '3');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_db_table`
--

CREATE TABLE IF NOT EXISTS `gs_db_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL,
  `age` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_db_table`
--

INSERT INTO `gs_db_table` (`id`, `name`, `email`, `naiyou`, `indate`, `age`) VALUES
(1, '本名泰浩1', 'test@test.jp', 'ちょっと暑いです。教室。\r\nマジです。', '2018-09-22 14:16:32', 10),
(2, '織田信長', 'test1@test.jp', 'メモ', '2018-09-22 16:02:48', 10),
(3, '徳川家康', 'test2@test.jp', 'メモ', '2018-09-22 16:06:06', 30),
(4, '伊達1政宗', 'test3@test.jp', 'メモ', '2018-09-22 16:09:56', 20),
(5, 'デンゼル・ワシントン', 'test4@test.jp', 'メモ', '2018-09-22 16:09:56', 10),
(6, 'ディカプリオ', 'test5@test.jp', 'メモ', '2018-09-22 16:09:56', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_db_table`
--
ALTER TABLE `gs_db_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `gs_db_table`
--
ALTER TABLE `gs_db_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
