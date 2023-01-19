-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-01-19 23:46:31
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `bookname` varchar(64) NOT NULL,
  `bookurl` text NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `bookname`, `bookurl`, `comment`, `date`, `img`) VALUES
(1, '世界をつくり変える男 イーロン・マスク', 'https://www.amazon.co.jp/', '興味深い', '2023-01-07 11:18:17', ''),
(2, '世界をつくり変える男 イーロン・マスク', 'https://www.amazon.co.jp/%E3%82%A4%E3%83%BC%E3%83%AD%E3%83%B3%E3%83%BB%E3%83%9E%E3%82%B9%E3%82%AF-%E4%B8%96%E7%95%8C%E3%82%92%E3%81%A4%E3%81%8F%E3%82%8A%E5%A4%89%E3%81%88%E3%82%8B%E7%94%B7-%E7%AB%B9%E5%86%85-%E4%B8%80%E6%AD%A3/dp/4478102848/ref=sr_1_10?keywords=%E3%82%A4%E3%83%BC%E3%83%AD%E3%83%B3%E3%83%9E%E3%82%B9%E3%82%AF&qid=1670747480&sr=8-10', 'イーロン・マスクは天才', '2022-12-10 15:03:57', ''),
(3, '野口英世', 'https://www.amazon.co.jp/', '教科書に出てくる本', '2022-12-10 15:05:29', ''),
(4, 'トークいらずの営業術', 'https://daigo.jp/', '口下手な人でもトップ営業になれる。', '2022-12-10 15:05:52', ''),
(5, '運転者', 'https://www.amazon.co.jp/%E9%81%8B%E8%BB%A2%E8%80%85-%E6%9C%AA%E6%9D%A5%E3%82%92%E5%A4%89%E3%81%88%E3%82%8B%E9%81%8E%E5%8E%BB%E3%81%8B%E3%82%89%E3%81%AE%E4%BD%BF%E8%80%85-%E5%96%9C%E5%A4%9A%E5%B7%9D%E6%B3%B0-ebook/dp/B07Q84X6BN/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=3OU4M0UGQS1FE&keywords=%E9%81%8B%E8%BB%A2%E8%80%85&qid=1670747795&sprefix=%E9%81%8B%E8%BB%A2%E8%80%85%2Caps%2C276&sr=8-1', '未来を変える過去からの使者だった。', '2022-12-10 21:52:49', ''),
(6, 'これだけは知っておきたい心理学の基本と実践テクニック', 'https://www.amazon.co.jp/%E3%81%93%E3%82%8C%E3%81%A0%E3%81%91%E3%81%AF%E7%9F%A5%E3%81%A3%E3%81%A6%E3%81%8A%E3%81%8D%E3%81%9F%E3%81%84%E3%80%8C%E5%BF%83%E7%90%86%E5%AD%A6%E3%80%8D%E3%81%AE%E5%9F%BA%E6%9C%AC%E3%81%A8%E5%AE%9F%E8%B7%B5%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF-%E3%81%93%E3%82%8C%E3%81%A0%E3%81%91%E3%81%AF%E7%9F%A5%E3%81%A3%E3%81%A6%E3%81%8A%E3%81%8D%E3%81%9F%E3%81%84%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E5%8C%A0%E8%8B%B1%E4%B8%80-ebook/dp/B01MQ4YWK0/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=1JR0ZKXRKUZIJ&keywords=%E3%81%93%E3%82%8C%E3%81%A0%E3%81%91%E3%81%AF%E7%9F%A5%E3%81%A3%E3%81%A6%E3%81%8A%E3%81%8D%E3%81%9F%E3%81%84%E5%BF%83%E7%90%86%E5%AD%A6%E3%81%AE%E5%9F%BA%E6%9C%AC%E3%81%A8%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF&qid=1670747902&sprefix=%E3%81%93%E3%82%8C%E3%81%A0%E3%81%91%E3%81%AF%E7%9F%A5%E3%81%A3%E3%81%A6%E3%81%8A%E3%81%8D%E3%81%9F%E3%81%84%E5%BF%83%E7%90%86%E5%AD%A6%E3%81%AE%E5%9F%BA%E6%9C%AC%E3%81%A8%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF%2Caps%2C201&sr=8-1', '日常で使えるテクニックがわかった。', '2022-12-11 08:32:00', ''),
(7, 'ノーリフト 持ち上げない介護抱え上げない看護', 'https://www.amazon.co.jp/', '', '2022-12-11 08:34:42', ''),
(8, 'ノーリフト 持ち上げない介護抱え上げない看護', 'https://www.amazon.co.jp/', '', '2022-12-11 08:34:46', ''),
(9, '認知症の人が見ている世界', 'https://www.amazon.co.jp/', '', '2022-12-11 08:39:53', ''),
(10, '認知症の人が見ている世界', 'https://www.amazon.co.jp/', '', '2022-12-11 12:22:17', ''),
(11, '非特異的腰痛のリハビリテーション ', 'https://www.amazon.co.jp/', '', '2022-12-11 17:11:45', ''),
(12, 'ノーリフト 持ち上げない介護抱え上げない看護', 'https://www.amazon.co.jp/', '', '2022-12-11 17:12:08', ''),
(13, '社会福祉施設のBCP', 'https://www.amazon.co.jp/%E7%A4%BE%E4%BC%9A%E7%A6%8F%E7%A5%89%E6%96%BD%E8%A8%AD%E3%83%BB%E4%BA%8B%E6%A5%AD%E6%89%80%E3%81%AEBCP2-%E5%AD%A6%E3%81%B6%E6%95%99%E8%A8%93-%E6%B4%BB%E3%81%8B%E3%81%99%E5%AE%9F%E8%B7%B5-%E5%8B%95%E3%81%8FBCP%E3%82%92%E5%89%B5%E3%82%8B-%E3%82%8F%E3%81%8B%E3%82%8BBCP%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA2/dp/4904874749/ref=sr_1_6?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=29HYQ8Q6MWA8N&keywords=%E5%BE%8C%E8%97%A4%E5%8A%9F&qid=1670748855&sprefix=%E5%BE%8C%E8%97%A4+%E8%87%B3%E5%8A%9F%2Caps%2C237&sr=8-6', '参考になりました。', '2022-12-11 17:54:36', ''),
(14, 'Elon Musk', 'amazon.com', '世界を変える男', '2022-12-11 19:05:42', ''),
(15, 'aaa', 'aaa', 'aaa', '2022-12-24 21:54:37', ''),
(21, 'bbb', 'kkk', 'gg', '2023-01-14 20:33:06', ''),
(22, '', '', '', '2023-01-14 20:56:33', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', '$2y$10$MZKETljuBRpCEp7bJsUC4uYBxGA7WNgopc/wa800DSZTWg20Fduta', 1, 0),
(2, 'テスト2一般', 'test2', 'test2', 0, 0),
(3, 'テスト３', 'test3', 'test3', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- テーブルの AUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
