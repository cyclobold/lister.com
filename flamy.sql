-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 03:24 PM
-- Server version: 10.5.9-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flamy`
--

-- --------------------------------------------------------

--
-- Table structure for table `flm_users`
--

CREATE TABLE `flm_users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(300) NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flm_users`
--

INSERT INTO `flm_users` (`id`, `firstname`, `lastname`, `username`, `password`, `user_type`, `date_created`) VALUES
(8, 'James', 'ADEYEMO', 'jamesolu', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2020-03-03 11:58:00'),
(9, 'Bj', 'Bisola', 'bbjade', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2019-12-12 17:50:39'),
(10, 'OLUMIDE', 'ADEYEMO', 'oluade', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2020-11-03 06:06:31'),
(11, 'Abiodun', 'Onaolapo', 'abiodun', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2021-02-19 12:11:25'),
(12, 'admin', 'admin', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 2, '2021-06-21 13:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `flm_users2`
--

CREATE TABLE `flm_users2` (
  `id` int(11) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(300) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flm_users2`
--

INSERT INTO `flm_users2` (`id`, `firstname`, `lastname`, `username`, `password`, `date_created`) VALUES
(1, 'adeolu', 'kehinde', 'adejade', 'password', '2019-12-16 13:12:28'),
(8, 'Jimoh', 'ADEYEMO', 'jamesolu', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-12-02 13:02:28'),
(9, 'Bj', 'Bisola', 'bbjade', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-12-12 17:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `likes_count`
--

CREATE TABLE `likes_count` (
  `count_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `counts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes_count`
--

INSERT INTO `likes_count` (`count_id`, `post_id`, `counts`) VALUES
(4, 3, 1),
(5, 2, 1),
(6, 5, 0),
(7, 7, 1),
(8, 8, 1),
(9, 6, 1),
(10, 9, 0),
(11, 11, 0),
(12, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_description` text DEFAULT NULL,
  `post_body` longtext NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `author_id`, `post_title`, `post_description`, `post_body`, `created_date`, `status`) VALUES
(1, 9, 'My first post', NULL, 'Aliquam mollit laoreet irure! Viverra, pariatur magna aliquip! Dolore beatae! Gravida, dui, aute facilisis dui necessitatibus per numquam nostra tortor? Ut sit. Sociis erat auctor fermentum id, tristique vero excepteur, laborum! Maecenas, imperdiet? Egestas fugit, eros consequatur litora ratione mauris amet consequatur pellentesque a nesciunt proident dolorem esse? Natoque. Mollit, justo minima mollitia! Justo similique magni, nascetur arcu duis, deleniti provident scelerisque quibusdam quaerat ultrices quia, magnam laborum nihil mauris quaerat itaque, natus quod rerum aenean. Harum ipsam, consequuntur corporis. Esse, adipiscing eaque sed? Ultrices mattis ipsam placeat tempus sem elementum dolor, vulputate repellendus quaerat nulla! Quis soluta. Odio eleifend.', '2019-12-09 14:00:06', 0),
(2, 9, 'Nigerian government issues', NULL, 'Bla blasVulputate, iste nostrum ante! Vitae, vehicula natus, vestibulum. Orci penatibus dolor, cubilia eiusmod cum totam blanditiis, dolores. Egestas, penatibus integer cillum, totam fames recusandae aliquam libero sit porttitor autem tempora hic, ea! Consectetuer nihil dignissim ipsum vivamus, pede aptent tenetur proin diam iure dignissim quidem suscipit eu, fermentum neque earum, congue vestibulum porta, habitasse curabitur occaecati est. Per bibendum placeat laboriosam. Integer. Nihil augue hymenaeos aliq', '2019-12-09 14:03:05', 1),
(3, 8, 'New from James', NULL, 'Here is my post.... Aperiam repellendus odio rutrum leo iaculis, dis minim odit facilis eaque sem repudiandae adipiscing dolores nulla dolores, sem cras iusto lacus ducimus, class? Auctor. Cubilia nostrud debitis hendrerit mattis, lacinia impedit mattis hymenaeos nesciunt distinctio facilisis occaecati aenean? Etiam deserunt cupiditate lacus, corporis esse. Ratione voluptatum quibusdam! Lorem ex perferendis possimus, accusantium sem exercitation ea proident do dolore deleniti morbi cubilia temporibus. Class dicta repellendus amet', '2019-12-09 14:04:02', 1),
(4, 9, 'My third post', NULL, 'This is my third post.ptates deserunt repellat arcu, incidunt lobortis dis ut, sunt placerat, impedit sagittis sociis officia, lacus vestibulum provident porro phasellus placerat. Torquent asperiores natoque scelerisque! Mi? Alias cursus occaecati ad neque. Ligula recusandae aenean lectus modi posuere itaque eleifend deserunt maecenas. Consequat ornare irure? Platea? Neque! Eos debitis rhoncus diamlorem parturient! Minima per, error laboris tempora, sapien modi. Ratione blandit cumque! Laborum mi dapibus magnam platea, dolorum pretium conubia repellendus pretium, aliquam porttitor excepturi nisl eveniet sunt, eveniet co', '2019-12-09 14:18:52', 0),
(5, 9, 'New Ideology', NULL, 'Augue distinctio accumsan parturient fuga earum massa laboris dapibus curabitur purus aliquet massa eaque irure! Felis, at voluptate, potenti tortor? Nullam, nonummy et occaecati habitasse fugiat voluptate fermentum! Pretium vero, ipsa assumenda dignissimos reiciendis condimentum aptent sequi repellat fugit perferendis? Ipsam voluptatum ridiculus laudantium eius, quidem, tristique semper doloremque tellus? Voluptate odit wisi tristique! Commodo commodi dolorem minima magna labore. Gravida quaerat turpis, massa, esse, provident elementum adipiscing quas nihil, mollis convallis curabitur dolores natu', '2019-12-10 13:02:38', 1),
(6, 9, 'How to program', NULL, '<p><strong>Molestias aliqua sit placerat hendrerit nemo praesentium, laoreet, pulvinar, fuga amet facere ipsa consectetur, deserunt, debitis. Nemo massa, occaecati dolorem, incididunt feugiat arcu totam? Delectus mollit, nobis architecto, possimus blandit dolor cursus</strong>.<tt> Lobortis animi, sem ultrices quia ullamcorper? Et tempora, cras quia adipisicing ridiculus quasi optio beatae sequi laoreet condimentum, rerum etiam ex eleifend convallis eiusmod gravida purus. Dictumst irure tortor nulla, beatae ullamco eros vestibulum</tt>, o<em>rnare tristique laboriosam iste commodo dignissimos! Magnam ultricies, semper, nemo placeat fusce, labore parturient phasellus voluptatum beatae sagittis orci elit sollicitudin veniam. Aliquet debitis adipisicing dolore placeat optio convallis morbi porta taciti pariatur, dignissimos</em></p>', '2019-12-10 13:38:40', 1),
(7, 9, 'Important Message', NULL, '<blockquote>\r\n<p>Here is the best thing in the work - Olu Adeyemo</p>\r\n</blockquote>\r\n\r\n<p>This is the most important text.Proident praesentium provident diam curae suscipit mollit curae anim, aliquip recusandae fusce, occaecat, assumenda elementum, parturient. Maxime sit. Natoque placeat! Aspernatur, nam explicabo placeat? Assumenda, lorem adipisci do, nostrud cubilia, duis soluta, amet molestie, egestas nulla, dolor asperiores sociosqu nesciunt! Earum sequi nihil erat, semper odio tincidunt nobis! Amet turpis harum tincidunt itaque odit commodo optio fusce fugi&nbsp;</p>', '2019-12-10 13:41:41', 1),
(8, 9, 'Here today', NULL, '<p><strong>Nascetur consequatur dolor netus, laborum assumenda at perferendis! Beatae varius laudantium impedit! Duis nostrud? Autem tincidunt, architecto accumsan aute aliquid. Irure? Risus tenetur aperiam</strong> taciti dolore illum, fugit? Quibusdam mus doloremque eligendi, felis tempus consequatur eget! Illo iste aliquip accusamus hic minus iusto quis? Aliquet elementum eu fermentum quo bibendum cupidatat class? Magnam eaque. Error, scelerisque. Accusantium? Labore repellat tellus nunc. Diamlorem sociosqu montes fusce! Sodales do donec totam provident, curae sed, vulputate itaque do nisl, primis fugit mollis dictumst, ullamco senectus aspernatur aenean? Auctor</p>', '2019-12-12 17:49:37', 1),
(9, 8, 'Today in FlamyTech', NULL, '<p><strong>Getting Started is very important.&nbsp;&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><strong>Getting Started is the best - Albert Einstein</strong></p>\r\n</blockquote>\r\n\r\n<p>Odit ultricies optio maecenas est anim, sagittis curabitur ipsum optio placeat soluta? Lacinia commodi, minus aspernatur expedita potenti, iure asperiores cum. Molestiae deleniti? Fugiat, risus dignissimos, conubia aliquet nisi nullam reprehenderit cupidatat, cupiditate animi, curabitur reprehenderit consequat laboris, egestas eligendi, nesciunt mattis massa quam numquam minima ullam luctus temporibus distinctio ac ipsa. Vestibulum voluptates mollit! Lacinia accumsan, cras, eius minima posuere ad aliquam, fugiat ut. Metus. Sodales duis suspendisse duis, dolores habitasse ab reprehenderit. Posuere nam? Fugit anim sollicitudin duis? Praesentium tenetur cum inceptos. Mollit ipsa dicta excepturi accusamus leo aenean pharetra ridiculus nisl adipiscing deleniti commodi ligula? Posuere eget</p>', '2020-03-03 12:01:42', 1),
(10, 8, 'New Post Today', NULL, '<p>Ornare porta, reprehenderit! Tincidunt sapiente dapibus diamlorem ante vestibulum mollis sint consequatur laudantium! Incidunt sed. Fuga! Habitasse quidem. Odit deleniti explicabo accusamus mus penatibus. Iste diam, commodo cupiditate varius enim! Faucibus voluptatem autem distinctio leo maecenas, ullam voluptas montes! Auctor proident aliquam accusamus aliqua consequuntur ac, litora nisi? Eaque cursus. Quia. Repellendus molestie lacus corrupti viverra? Ipsa? Aliquip. Etiam ultrices, adipiscing sapiente dignissimos adipisci ea tempora impedit culpa nisi sodales! Excepturi in. Fusce blanditiis non? Placeat soluta metus magni laudantium, excepturi platea leo, nostra labore scelerisque provident temporibus. Nemo tempora! Ac, vestibulum torquent repellat sagittis dui, vel purus, totam dolorum</p>', '2020-03-03 12:07:29', 0),
(11, 8, 'This is my new post', NULL, '<p>I am here with Eta. This is my new app</p>', '2020-07-16 11:51:40', 1),
(12, 8, 'This is the new post', NULL, '<p>This post should be private</p>', '2020-09-23 09:25:46', 0),
(13, 11, 'New Post', NULL, '<p>This is new post</p>\r\n\r\n<blockquote>\r\n<p>You can become the best</p>\r\n</blockquote>\r\n\r\n<p>Ullam montes ullam magni rutrum fringilla montes labore neque nisl nam rerum<strong>. Nunc congue, tincidunt nesciunt molestiae tempus aptent pariatur pulvinar. Hymenaeos cillum tortor, consectetur fringilla netus architecto sapiente risus at maecenas, magna</strong> dignissimos, dolores itaque proin nisi habitasse laudantium orci sagittis, mauris error, duis condimentum corporis gravida. Illum, aliquid, iusto mollit eget congue sociis inceptos habitasse lacinia quia rem voluptates malesuada! Int</p>', '2021-02-19 12:12:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_likes`
--

CREATE TABLE `posts_likes` (
  `like_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `like_author_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts_likes`
--

INSERT INTO `posts_likes` (`like_id`, `post_id`, `like_author_id`, `date_created`) VALUES
(74, 7, 9, '2019-12-10 23:49:15'),
(82, 8, 9, '2019-12-12 17:51:05'),
(84, 6, 9, '2019-12-12 19:09:12'),
(88, 3, 9, '2019-12-16 13:37:50'),
(89, 2, 9, '2019-12-16 13:37:52'),
(109, 13, 11, '2021-02-19 12:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `permissions` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `description`, `permissions`) VALUES
(1, 'normal_user', 'This is the normal user', 'No auth'),
(2, 'admin_user', 'This is admin user', 'Auth');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flm_users`
--
ALTER TABLE `flm_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flm_users2`
--
ALTER TABLE `flm_users2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes_count`
--
ALTER TABLE `likes_count`
  ADD PRIMARY KEY (`count_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `posts_likes`
--
ALTER TABLE `posts_likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flm_users`
--
ALTER TABLE `flm_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `flm_users2`
--
ALTER TABLE `flm_users2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likes_count`
--
ALTER TABLE `likes_count`
  MODIFY `count_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts_likes`
--
ALTER TABLE `posts_likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
