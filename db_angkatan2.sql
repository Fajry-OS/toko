-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2024 at 04:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_angkatan2`
--

-- --------------------------------------------------------

--
-- Table structure for table `btn_class`
--

CREATE TABLE `btn_class` (
  `id` int(11) NOT NULL,
  `btn_name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `btn_class`
--

INSERT INTO `btn_class` (`id`, `btn_name`) VALUES
(1, 'btn-outline-primary'),
(2, 'btn-outline-secondary'),
(3, 'btn-outline-success'),
(4, 'btn-outline-danger');

-- --------------------------------------------------------

--
-- Table structure for table `card_class`
--

CREATE TABLE `card_class` (
  `id` int(11) NOT NULL,
  `card_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_class`
--

INSERT INTO `card_class` (`id`, `card_name`) VALUES
(1, 'border-primary border-2'),
(2, 'border-0');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(9) NOT NULL,
  `id_intro` int(9) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `question` varchar(35) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `id_intro`, `email`, `nama`, `phone`, `question`, `deskripsi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'administrator@gmail.com', 'dasdqwd', '231321', 'dsdad', 'dasdasd', '2024-07-24', NULL, NULL),
(2, 1, 'adera@gmail.com', 'adera', '31231231231', 'New subject', 'New Message asdadadadjhalsdfhaksfh;fha;osdhif', '2024-07-24', NULL, NULL),
(3, 1, 'pimpinan@gmail.com', 'aderiandi', '231321', 'dsdad', 'dawdrafa', '2024-07-24', NULL, NULL),
(4, 1, 'susi@gmail.com', 'dasda', 'dasda', 'dasdad', 'sdasdas', '2024-07-24', NULL, NULL),
(5, 1, 'yuti@fsdfs.vo', 'ade', '2018', 'asdasq', 'qwer  fghdf', '2024-07-24', NULL, NULL),
(6, 1, 'koko@gmail.com', 'eqwdasd', '2431231', '231231', 'asdd ascfasdfdfds', '2024-07-25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `intro`
--

CREATE TABLE `intro` (
  `id` int(9) NOT NULL,
  `judulwebsite` varchar(45) DEFAULT NULL,
  `judul` varchar(45) DEFAULT NULL,
  `subjudul` varchar(45) DEFAULT NULL,
  `isikonten` varchar(255) DEFAULT NULL,
  `gambar` varchar(70) DEFAULT NULL,
  `gambar2` varchar(70) DEFAULT NULL,
  `gambar3` varchar(20) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  `update_at` date DEFAULT NULL,
  `delete_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intro`
--

INSERT INTO `intro` (`id`, `judulwebsite`, `judul`, `subjudul`, `isikonten`, `gambar`, `gambar2`, `gambar3`, `status`, `created_at`, `update_at`, `delete_at`) VALUES
(1, 'Fajry - PPKD Jakarta Pusat', 'Black Belt', 'Koding Skill Anda', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Provident iste unde ea omnis accusantium tempora.', 'LogoPhp.png', 'php.PNG', 'form.png', 1, '2024-07-22', NULL, NULL),
(2, 'Octo - PPKD Jakarta Pusat', 'AI Masa Depan', 'Pengaruh AI untuk perkembangan zaman', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Provident iste unde ea omnis accusantium tempora.', 'LogoPhp.png', 'php.PNG', NULL, 0, '2024-07-22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `lvl_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `lvl_name`) VALUES
(1, '------'),
(2, 'User'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(9) NOT NULL,
  `id_intro` int(9) NOT NULL,
  `pilihedisi` varchar(45) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `deskripsi` varchar(65) DEFAULT NULL,
  `card_class` varchar(25) DEFAULT NULL,
  `header` varchar(30) DEFAULT NULL,
  `subtitle` varchar(30) DEFAULT NULL,
  `btn_class` varchar(30) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `id_intro`, `pilihedisi`, `harga`, `deskripsi`, `card_class`, `header`, `subtitle`, `btn_class`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Complete Edition Series S3', 100000, 'Panduan Menjadi Full Stack WEB DEVELOPER', 'border-primary border-2', 'Most Popular', 'eBook download', 'btn-outline-primary', '2024-07-22', '2024-07-26', NULL),
(2, 2, 'Ultimate Edition', 40000, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Provide', 'border-0', 'Limited Edition', 'download, updates &extras', 'btn-outline-primary', '2024-07-22', NULL, NULL),
(3, 1, 'Deluxe', 10003455, 'Paket Gumoh', 'border-primary border-2', 'Syariah Edition', 'Book Of Legend', 'btn-outline-success', '2024-07-26', NULL, NULL),
(4, 2, 'sasdfas', 12321321, 'sdfasdfaf', 'border-primary border-2', 'awe rawf', 'faw fasd', 'btn-outline-success', '2024-07-26', NULL, NULL),
(5, 1, 'Deluxe', 100000, 'Paket Gumoh', 'border-primary border-2', 'Syariah Edition', 'Book Of Legend', 'btn-outline-success', '2024-07-26', NULL, NULL),
(6, 1, 'asdasda', 2147483647, 'sdffdasdf', 'border-primary border-2', 'awe rawf', 'faw fasd', 'btn-outline-success', '2024-07-26', NULL, NULL),
(7, 1, 'Deluxe', 100000, 'Paket Gumoh', 'border-primary border-2', 'Syariah Edition', 'Book Of Legend', 'btn-outline-success', '2024-07-26', NULL, NULL),
(8, 1, 'asdasda', 2147483647, 'sdffdasdf', 'border-primary border-2', 'awe rawf', 'faw fasd', 'btn-outline-success', '2024-07-26', NULL, NULL),
(9, 1, 'asdasd', 2222, 'aaaa', 'aaaa', 'aaaa', 'aaaa', 'aaaaa', '2024-07-26', NULL, '2024-07-30'),
(10, 1, 'hhhh', 33333, 'bbb', 'bbb', 'bbbb', 'bbb', 'bbbbb', '2024-07-26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(9) NOT NULL,
  `id_intro` int(9) NOT NULL,
  `rating` float(2,1) DEFAULT NULL,
  `author` varchar(25) DEFAULT NULL,
  `header_review` varchar(50) DEFAULT NULL,
  `isi_review` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `id_intro`, `rating`, `author`, `header_review`, `isi_review`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5.0, 'Review By Marion', 'A must buy for every aspiring web dev', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, tempora earum reiciendis consequuntur impedit accusamus.', '2024-07-24', NULL, NULL),
(2, 1, 4.0, 'Review By Fajry', 'A must buy for every aspiring web dev', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, tempora earum reiciendis consequuntur impedit accusamus.', '2024-07-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(9) NOT NULL,
  `id_intro` int(9) DEFAULT NULL,
  `chapter` varchar(25) DEFAULT NULL,
  `judul_chapter` varchar(45) DEFAULT NULL,
  `isi_chapter` varchar(180) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `id_intro`, `chapter`, `judul_chapter`, `isi_chapter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Chapter 1', 'Your First Web Page', 'This is the first item\'s accordion body. It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element.\r\n\r\nThese classes control ', '2024-07-24', NULL, NULL),
(2, 1, 'Chapter 2', 'Your Second Web Page', 'This is the second item\'s accordion body. It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element.\r\n\r\nThese classes contro', '2024-07-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_level` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `btn_class`
--
ALTER TABLE `btn_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_class`
--
ALTER TABLE `card_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pricing_intro` (`id_intro`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_review_intro` (`id_intro`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_topics_intro` (`id_intro`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `btn_class`
--
ALTER TABLE `btn_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `card_class`
--
ALTER TABLE `card_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `intro`
--
ALTER TABLE `intro`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pricing`
--
ALTER TABLE `pricing`
  ADD CONSTRAINT `fk_pricing_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_review_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `fk_topics_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_level` FOREIGN KEY (`id_level`) REFERENCES `levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
