-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2025-03-02 17:43:47
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
-- 表的结构 `dating`
--

CREATE TABLE `dating` (
  `account` varchar(20) NOT NULL,
  `vipGrade` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `money` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `country` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `dating`
--

INSERT INTO `dating` (`account`, `vipGrade`, `name`, `money`, `type`, `country`, `id`) VALUES
('513203', '1', '한준석', '10万원', '1', '韩国', 1),
('5132031', '1', '정유나', '20万원', '2', '韩国', 2),
('5132033', '3', 'たかはし しょうた', '200万円', '1', '日本', 3),
('5132034', '1', 'たなか あおい', '33万円', '2', '日本', 4),
('5132035', '2', '박서연', '55万원', '2', '韩国', 5),
('5132036', '2', 'いとう しおり', '60万円', '2', '日本', 6),
('5132037', '3', 'さき かずや', '120万円', '2', '日本', 7),
('5132037', '3', 'さき かずや', '100万円', '1', '日本', 8),
('65165106520', '3', 'ほしの えり', '50万円', '1', '日本', 9),
('65165106521', '2', 'さとう さくら', '15万円', '1', '日本', 10),
('65165106523', '2', 'たかはし しょうた', '15万円', '2', '日本', 11),
('65165106524', '3', 'William Thompson', '3000USTD', '1', '英国', 12),
('65165106525', '1', 'わたなべ みほ', '10万円', '1', '日本', 13),
('65165106526', '1', 'やまもと ゆうき', '5万円', '1', '日本', 14),
('65165106527', '1', 'くろばね れいな', '12万円', '2', '日本', 15),
('65169419615', '2', 'くすのき しおり', '10万円', '2', '日本', 16),
('5132038', '3', 'Emma Müller', '6000US', '2', '美国', 17),
('5132038', '3', 'Emma Müller', '5000US', '1', '美国', 18);

-- --------------------------------------------------------

--
-- 表的结构 `gift`
--

CREATE TABLE `gift` (
  `id` int(11) NOT NULL,
  `giftDate` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `letter`
--

CREATE TABLE `letter` (
  `id` int(11) NOT NULL,
  `account` varchar(20) NOT NULL,
  `content` varchar(500) NOT NULL,
  `img` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `letter`
--

INSERT INTO `letter` (`id`, `account`, `content`, `img`, `date`, `name`) VALUES
(1, 'asdsdd', '心いっぱいの感謝の気持ちを込めて、この手紙を書かせていただきます。少し前まで、私は貴プラットフォームを通じて、今の彼女と出会うことができました。彼女の現れは私の生活を明るく照らしました。プラットフォームの正確なマッチングと思いやりのあるサービスのおかげで、私たちは広い人ごみの中を越えて、一緒になることができました。\r\n\r\n最初のオンライン交流から、オフラインでのデートのときのドキドキする瞬間まで、どの一歩もプラットフォームの力なしには成り立ちませんでした。今、私たちの関係は安定しており、未来に向かって大いに期待しています。心から貴プラットフォームが提供してくれた素敵な交友環境に感謝いたします。これにより、愛の花がきれいに咲きました。プラットフォームがますます素敵なものになり、もっと多くの人が幸せを手に入れられるように、心から願っています 。', '', '2025-02-23', 'くすのき しおり'),
(2, 'asdasd', '貴プラットフォームに加入する前は、私はずっと広い人ごみの中で、生涯一緒にいる相手を見つけることを期待していました。思いも寄らなかったことに、プラットフォームが巧みに私と私の夫をつないでくれました。初めてプラットフォームで彼の情報を見たとき、妙な感じが自然に湧いてきました。チャットを始めてから、私たちは驚いたことに、たくさんの共感を見つけました。', '', '2021-05-25', 'たなか あおい'),
(3, '65165106525', 'オンラインでのやり取りの盛んな交流から、オフラインで会ったときの彼の暖かい笑顔や思いやりのある行動まで、どの瞬間もプラットフォームの存在によって可能になりました。付き合いが深まるにつれて、私たちの愛情はますます厚くなりました。今、私たちは未来の生活に満ち溢れた期待を抱いており、たくさんの素敵な未来の計画を立てています。', '', '2019-6-19', 'たかはし しょうた'),
(4, 'asdasddd', 'こんにちは！心からの感謝の気持ちを皆さんにお伝えしたいと思います。貴プラットフォームを通じて、イギリスに住んでいる彼氏と出会うことができました。彼の登場により、私の世界はこれまで以上に輝き始めました。\r\n\r\n元々は遠く離れていた私たちが、プラットフォームの正確なマッチングと心のこもったサービスを通じて、素敵な縁をつなぐことができました。オンラインで時差を越えた盛り上がったチャットから、オフラインで国境を越えて会ったときのドキドキする瞬間まで、どの一歩もプラットフォームのおかげです。今、私たちの関係は安定しており、未来に対して大いに期待を抱いています。', '', '2021-05-25', '樱井 葵'),
(5, '65165106525', 'When I first saw her profile on the platform, it was as if I had been enchanted, and my heart rate unconsciously accelerated. During our online communication, we were like two people who had opened a chatterbox and just couldn\'t stop. From those strange and niche hobbies to our wild fantasies about the future, every conversation was like exploring a whole new world, full of constant surprises.\r\n\r\nFinally, the day of our offline date arrived. I was so nervous that I didn\'t know what to do with my', '', '2022-09-24', 'William'),
(6, 'asdasdddd', '제 마음 가득 감사의 마음이 넘쳐서, 빨리 이야기하고 싶습니다. 귀하의 플랫폼에 가입하기 전에 제가 사랑을 찾는 길은 아주 길었고, 자주 실망했습니다. 하지만 가입한 후에는 모든 게 달라졌습니다.\r\n\r\n플랫폼의 정확한 필터 기능이 너무 강력합니다. 제가 취미, 성격 취향 등 조건을 설정하자 곧 그녀의 프로필을 볼 수 있었습니다. 첫 번째 온라인 소통할 때 제가 문제를 만났는데, 플랫폼 고객센터가 신속하게 대응하고, 인내심 있게 안내해줘서 소통이 원활하게 이어질 수 있었습니다. 오프라인 데이트 때는 플랫폼에서 추천한 장소가 너무 낭만적이고 적절해서 우리 만남이 특히나 아름답게 됐습니다.', '', '2024-05-15', '박지원'),
(7, '65165106525', 'With a heart full of gratitude, I am earnestly writing this letter. \"May I find a heart - to - heart person and stay with him until the end of our days.\" The once - beautiful expectation for love has now become a reality on your platform. Not long ago, with the help of the platform\'s precise matching and meticulous and considerate services, I met my current girlfriend. She is like a warm sun, instantly lighting up my life.', '', '2023-07-18', 'Sophia'),
(8, 'asdasddddd', 'From the instant sense of familiarity in our first online conversation to the heart - pounding moment during our offline date, along the way, the platform has played an extremely important role. Now, our relationship is firm, and we are full of anticipation for the future. I sincerely thank your platform for creating a high - quality dating environment, allowing the flower of love to bloom brightly. May the platform thrive and help more people encounter good fortune and harvest happiness.', '', '2024-07-13', 'Rossi'),
(9, '65165106525', '감사합니다! 귀하의 플랫폼을 통해 제 여자친구와 만났습니다. 온라인으로 열심히 소통하고, 오프라인 데이트에서 설레는 감정을 느끼는데, 모두 플랫폼의 도움 덕분입니다. 지금 우리 사이의 감정은 안정적이고, 미래에 대한 기대감이 넘쳐납니다. 플랫폼이 제공하는 우수한 환경에 감사드립니다. 이로 인해 사랑이 피어나게 된 것입니다. 플랫폼이 더욱 더 발전해 더 많은 사람들이 행복을 가질 수 있도록 기원합니다. ', '', '2023-03-28', '김지윤');

-- --------------------------------------------------------

--
-- 表的结构 `orderlist`
--

CREATE TABLE `orderlist` (
  `id` int(11) NOT NULL,
  `account` varchar(20) NOT NULL,
  `makeMoney` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `date` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `orderlist`
--

INSERT INTO `orderlist` (`id`, `account`, `makeMoney`, `type`, `date`, `status`) VALUES
(1, '1234', '80000', '0', '2025-02-28 18:03:12', '1'),
(2, '12345', '112000', '0', '2025-02-28 18:15:25', '1'),
(3, '12345', '3000', '0', '2025-03-02 23:03:10', '1'),
(4, '12345', '1000000', '1', '2025-\r\n03-02 23:17:11', '1'),
(5, '12345', '1000000', '0', '2025-\r\n03-02 23:18:35', '1'),
(6, '12345', '10000', '0', '2025-03\r\n-02 23:19:45', '1'),
(7, '12345', '10000', '0', '2025-03\r\n-02 23:19:45', '1'),
(8, '12345', '1000', '0', '2025-03-02 23:46:13', '1'),
(9, '12345', '10000', '1', '2025-03-02 23:47:21', '1'),
(10, '12345', '550000', '1', '2025-03-02 23:50:13', '1'),
(11, '12345', '10000', '0', '2025-03-02 23:50:47', '1'),
(12, '12345', '786', '1', '2025-03-03 00:09:47', '1'),
(13, '12345', '15200', '1', '2025-03-03 00:34:22', '0');

-- --------------------------------------------------------

--
-- 表的结构 `square`
--

CREATE TABLE `square` (
  `id` int(11) NOT NULL,
  `account` varchar(20) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `source` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `vipGrade` varchar(20) NOT NULL,
  `likes` varchar(10) NOT NULL,
  `comment` varchar(10) NOT NULL,
  `share` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `square`
--

INSERT INTO `square` (`id`, `account`, `avatar`, `title`, `content`, `source`, `date`, `name`, `vipGrade`, `likes`, `comment`, `share`) VALUES
(1, '123', '24.jpg', 'Sweating profusely o', 'Fitness is not a momentary impulse but a day - by - day perseverance. In this space full of strength, we water the most beautiful flower of figure with our sweat. ', 'Snipaste_2025-02-26_14-52-30.png', '2020-2-27 14:58', 'Marry', '3', '6万+', '3256', '1325'),
(2, '1234', '23.jpg', 'ヨガは私の変身を見届けた ', '私は初めてのときは下手でしたが、今では上手になりました。心も落ち着き、ヨガは私の成長を見てきました。今日もヨガルームでたくさんのことを学びました。', 'Snipaste_2025-02-26_14-51-47.png', '2019-2-28 18:03', '樱井 葵', '2', '2万+', '2000+', '359'),
(3, '12345', 'Snipaste_2025-02-28_21-59-韩国风景14.jpg', '산꼭대기', '주말에 산에 올라가 친구들과 산속에서 놀며 웃었어요. 행복이 이렇게 간단하죠. ', 'Snipaste_2025-02-28_22-00-韩国02.jpg', '2024-8-27', '박지원', '3', '1万+', '896', '156'),
(4, '123451', 'Snipaste_2025-02-28_22-21-44.jpg', 'I\'m driving to see y', 'Driving with my dog to embrace love, the wind and the dog\'s fur are both sweet.', 'Snipaste_2025-02-28_21-51-美国人44.jpg', '2024-8-26', 'David', '3', '5000+', '999+', '512'),
(5, '123452', 'Snipaste_2025-02-28_22-22-44.jpg', 'LOVE PARTY に感謝いたします', 'このプラットフォームで今の妻と出会いました。皆さん、きれいでしょう？', 'Snipaste_2025-02-28_21-35-45.jpg', '2024-11-12', 'さとう けんた', '2', '999+', '258', '12'),
(6, '123453', 'Snipaste_2025-02-28_22-11-24.jpg', 'Be at home alone', 'Staying at home taking selfies, I\'m like a mischievous elf. With so many funny expressions and full of joy, each photo is my masterpiece of fun!', 'Snipaste_2025-02-28_21-32-41.jpg', '2024-05-08', 'Emily', '3', '10万+', '2万+', '3000+'),
(7, '123454', 'Snipaste_2025-02-28_22-15-头像11.jpg', 'このプラットフォームでイギリス人の彼氏と', 'イギリスに来て、ボーイフレンドと顔合わせ成功！', 'Snipaste_2025-02-28_21-34-56.jpg', '2025-01-09', 'ふじわら しずか', '3', '1万+', '1000+', '460');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `inviteCode` varchar(20) DEFAULT NULL,
  `dataError` varchar(20) DEFAULT NULL,
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
  `likeSquare` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `account`, `password`, `inviteCode`, `dataError`, `age`, `gender`, `bankCard`, `money`, `avatar`, `vipCode`, `createDate`, `vipGrade`, `name`, `vipStatus`, `likeSquare`) VALUES
(1, '123', '123', '', NULL, NULL, NULL, NULL, NULL, 'Snipaste_2025-02-26_14-21-25.png', NULL, '2025-02-25 16:37:10', '1', '千本', '', ''),
(2, '12345', '12345', '1208', NULL, '26', '女', NULL, '1686986', 'Snipaste_2025-02-28_22-13-头像38.jpg', '566814', '2025-02-26 17:29:35', '3', '박지원', '已激活', '21'),
(3, '1234', '1234', '1234', '1', '25', '女', NULL, '88000', 'Snipaste_2025-02-28_21-45瑞士-59.jpg', '566814', '2025-02-26 17:30:40', '1', 'dd', '制作中', '2375'),
(7, '123', '12312312', '1234', NULL, NULL, NULL, NULL, NULL, 'Snipaste_2025-02-26_14-21-25.png', NULL, '2025-02-26 17:51:24', '1', '千本', '', ''),
(8, '122', '122', '122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-26 17:51:39', '1', '', '', ''),
(9, '132', '132', '122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-26 17:54:13', '1', '', '', ''),
(10, '1324', '132', '122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-26 17:55:55', '1', '', '', ''),
(11, '13245', '132', '122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-26 17:56:35', '1', '', '', ''),
(12, '132456', '132', '122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-26 17:57:39', '1', '', '', ''),
(13, '12345', '12345', '1234', NULL, NULL, NULL, NULL, NULL, 'Snipaste_2025-02-28_22-13-头像38.jpg', NULL, '2025-02-26 17:57:59', '1', '박지원', '', '21'),
(14, 'abcd', 'abcd', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-26 21:20:08', '1', '', '', ''),
(15, 'qwer', 'qwer', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-26 21:20:30', '1', '', '', ''),
(16, 'bbbb', 'bbbb', 'asdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-27 20:12:31', '1', '', '', ''),
(17, 'cccc', 'cccc', 'ccc', NULL, NULL, '女', NULL, NULL, NULL, NULL, '2025-02-27 20:13:17', '1', '', '', ''),
(18, 'dddd', 'dddd', '123', NULL, NULL, '男', NULL, NULL, NULL, NULL, '2025-02-27 20:16:20', '1', '', '', ''),
(19, 'ffff', 'ffff', '1208', NULL, NULL, '男', NULL, NULL, NULL, NULL, '2025-02-27 20:17:57', '1', '', '', ''),
(20, '123', '123', '1108', NULL, '22', '女', NULL, '88000', 'Snipaste_2025-02-26_14-21-25.png', '566814', '2025-02-25 16:37:10', '3', '千本', '已激活', ''),
(21, 'ccca', 'ccca', '1208', NULL, NULL, '男', NULL, NULL, 'Snipaste_2025-02-26_14-47-58.png', NULL, '2025-02-28 20:16:45', '1', '爱奈', '', ''),
(22, '1111', 'ffff', '1208', NULL, NULL, '男', NULL, NULL, 'Snipaste_2025-02-26_14-35-54.png', NULL, '2025-02-28 20:23:09', '1', '乔', '', ''),
(23, 'abcde', 'abcde', '1208', NULL, NULL, '男', NULL, NULL, 'Snipaste_2025-02-26_14-23-23.png', NULL, '2025-02-28 20:32:57', '1', '九', '', ''),
(24, 'eeee', 'eeee', '1208', NULL, NULL, '男', NULL, NULL, 'Snipaste_2025-02-26_14-41-11.png', NULL, '2025-02-28 20:33:47', '1', '秋叶', '', ''),
(25, 'ssss', 'ssss', '1208', NULL, NULL, '女', NULL, NULL, 'Snipaste_2025-02-26_14-41-11.png', NULL, '2025-02-28 20:45:54', '1', '秋奈', '制作中', '');

--
-- 转储表的索引
--

--
-- 表的索引 `dating`
--
ALTER TABLE `dating`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `gift`
--
ALTER TABLE `gift`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `letter`
--
ALTER TABLE `letter`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `square`
--
ALTER TABLE `square`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account` (`account`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dating`
--
ALTER TABLE `dating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `gift`
--
ALTER TABLE `gift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `letter`
--
ALTER TABLE `letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `square`
--
ALTER TABLE `square`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
