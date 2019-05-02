-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2019 at 11:34 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Home'),
(3, 'Intership'),
(4, 'Logic Games'),
(5, 'Funny'),
(8, 'Schoolarship');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(27, 2, 'Informatika', 'Author', '2019-02-12', 'code-solid.svg', '<p>;asjldjfdkhflsjfl</p>', 'Informatika', 0, 'Published', 0),
(28, 2, 'Wordprss', 'Author', '2019-02-12', 'wordpress.png', '<p>wordpress</p>', 'wordpress', 0, 'Published', 1),
(29, 2, 'Wordprss', 'Author', '2019-02-12', 'wordpress.png', '<p>wordpress</p>', 'wordpress', 0, 'Published', 0),
(30, 2, 'Informatika', 'Author', '2019-02-12', 'code-solid.svg', '<p>;asjldjfdkhflsjfl</p>', 'Informatika', 0, 'Published', 0),
(31, 2, 'Wordprss', 'Author', '2019-02-12', 'wordpress.png', '<p>wordpress</p>', 'wordpress', 0, 'Published', 0),
(32, 2, 'Informatika', 'Author', '2019-02-12', 'code-solid.svg', '<p>;asjldjfdkhflsjfl</p>', 'Informatika', 0, 'Published', 1),
(33, 2, 'Informatika', 'Author', '2019-02-12', 'code-solid.svg', '<p>;asjldjfdkhflsjfl</p>', 'Informatika', 0, 'Published', 0),
(34, 2, 'Wordprss', 'Author', '2019-02-12', 'wordpress.png', '<p>wordpress</p>', 'wordpress', 1, 'Published', 2),
(38, 2, 'Messi do studioje ne FSHN?', 'Author', '2019-02-13', 'Lionel-Messi-703448.jpg', '<p>Pritet qe ditet e fundit messi do vije te studioje ne FSHN.</p>', 'messi', 0, 'Published', 4),
(42, 3, 'emili', 'Author', '2019-03-31', '47250096_257444141596122_6300137606373965824_n.jpg', '<p>Emili bukuroshja</p>', 'emili', 0, 'Published', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(11, 'sh_renato', '$2y$10$CZC.blgve4l1mhp4gNbQoeJ9O5jnkkdDV9KSok6TOkBUUbxxqHjSW', 'Renato', 'shkulaku', 'shkulaku@yahoo.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, '0e3ed67031293d4bb2a29336ae847dcc', 1554064902),
(2, '090af6a8284ae592b2b50e65bf12d4a1', 1554107984),
(3, '92b1d036da59708ae9e18c2d36b5f878', 1554107973),
(4, 'b6e6ab0219cc4bed0035483ad479333e', 1554282189),
(5, 'c5c8bce881ebffd8db71c2f3d6320bbe', 1554566574),
(6, '977df22252e84f079d1f42713b6e9a60', 1554838255),
(7, 'e914fa87bb4ce96244b03cea57c414a8', 1554903935),
(8, 'a96c35e75c243595ed536216e06f0f63', 1555264984),
(9, '42685d38b307b463e85267121e2e23ac', 1555414957),
(10, 'df5655a6d123f1f293e42588ce99ca1d', 1555415104),
(11, 'ebc2986a6997682e3e882fa49d45a995', 1555506374),
(12, '2ae1b416b18038ef5c315690b15fb5da', 1555670684),
(13, '846b4e9e784f8d934cd4f2be8d753e17', 1555707755),
(14, '4f5827cf81d363e8c6bbcb4250634613', 1556030576),
(15, 'b50f50957c5378f856f9a2d55a44c9f9', 1556039327),
(16, 'cb2a15b84fae603e056174743fffe302', 1556108181),
(17, '481eb96a8d0111617c7e6f70b46a1c6e', 1556442522),
(18, 'a8347d7d1db733836dc233f7458d977e', 1556631647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
