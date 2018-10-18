-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018 年 10 月 18 日 20:06
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
  `age` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `cmt`, `indate`, `age`) VALUES
(2, 'ナルト', 'http://', 'メモ', '2018-09-22 18:41:41', 20),
(3, 'ワンピースaaaaa', 'http://', 'メモ', '2018-09-22 18:41:41', 10),
(4, 'ヒロアカ', 'http://', 'メモ', '2018-09-22 18:41:41', 20),
(5, 'ブリーチ', 'http://', 'メモ', '2018-09-22 18:41:41', 30),
(6, '進撃の巨人aaa', 'http://', 'メモ', '2018-09-22 18:43:13', 40),
(7, 'アオハライド', 'http://', 'メモ', '2018-09-22 18:43:13', 30),
(9, '名探偵コナン', 'http://', 'メモ', '2018-09-22 18:43:13', 10);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_db_table`
--

INSERT INTO `gs_db_table` (`id`, `name`, `email`, `naiyou`, `indate`, `age`) VALUES
(1, '本名泰浩3333', 'test@test.jp', 'ちょっと暑いです。教室。\r\nマジです。', '2018-09-22 14:16:32', 20),
(2, '織田信長', 'test1@test.jp', 'メモ', '2018-09-22 16:02:48', 10),
(3, '徳川家康', 'test2@test.jp', 'メモ', '2018-09-22 16:06:06', 30),
(13, '前田慶次', 'test@test.jp', '最高だぜaaaaaa', '2018-09-29 18:02:47', 20);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_rvw_table`
--

CREATE TABLE IF NOT EXISTS `gs_rvw_table` (
`id` int(12) NOT NULL,
  `star` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `cmt` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_rvw_table`
--

INSERT INTO `gs_rvw_table` (`id`, `star`, `name`, `cmt`, `mail`, `indate`) VALUES
(8, '1', 'なんとも言えない', '機能なども含めてまあまあでして。', 'test@test.jp', '2018-10-13 16:41:22'),
(9, '2', '最高だった', 'aaaaaa', 'yasuhon93@gmail.com', '2018-10-17 14:13:12');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, '管理者 やす', 'kanri1', 'kanri1', 1, 0),
(2, '一般人　にいだ', 'ippan1', 'ippan1', 0, 0);

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
-- Indexes for table `gs_rvw_table`
--
ALTER TABLE `gs_rvw_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`,`name`,`lid`,`lpw`,`kanri_flg`,`life_flg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gs_db_table`
--
ALTER TABLE `gs_db_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `gs_rvw_table`
--
ALTER TABLE `gs_rvw_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
