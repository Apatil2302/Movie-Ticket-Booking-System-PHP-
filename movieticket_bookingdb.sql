-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2025 at 06:34 AM
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
-- Database: `movieticket_bookingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `seat_label` varchar(10) NOT NULL,
  `status` enum('confirmed','cancelled') NOT NULL DEFAULT 'confirmed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `show_id`, `seat_label`, `status`, `created_at`, `updated_at`) VALUES
(45, 1, 2, 'E8', 'confirmed', '2025-10-10 04:24:07', NULL),
(46, 1, 5, 'D7', 'confirmed', '2025-10-10 04:52:47', NULL),
(49, 2, 4, 'F2', 'confirmed', '2025-10-10 05:34:15', NULL),
(50, 2, 6, 'C1', 'confirmed', '2025-10-26 04:23:26', NULL),
(51, 2, 6, 'C2', 'confirmed', '2025-10-26 04:23:26', NULL),
(52, 5, 7, 'D5', 'confirmed', '2025-11-03 14:48:50', NULL),
(53, 5, 7, 'D6', 'confirmed', '2025-11-03 14:48:50', '2025-11-03 14:50:44'),
(54, 6, 10, 'B1', 'confirmed', '2025-11-06 17:34:29', NULL),
(55, 6, 10, 'B2', 'confirmed', '2025-11-06 17:34:29', NULL),
(56, 6, 10, 'B3', 'confirmed', '2025-11-06 17:34:29', NULL),
(57, 6, 10, 'B4', 'confirmed', '2025-11-06 17:34:29', '2025-11-06 17:35:14'),
(58, 6, 10, 'C1', 'confirmed', '2025-11-06 17:34:29', NULL),
(59, 6, 10, 'C2', 'confirmed', '2025-11-06 17:34:29', NULL),
(60, 6, 10, 'C3', 'confirmed', '2025-11-06 17:34:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `poster_url` varchar(500) DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 120,
  `rating` varchar(20) DEFAULT 'U',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `poster_url`, `duration`, `rating`, `created_at`) VALUES
(1, 'Tron: Ares', 'Get ready for a thrilling ride where the virtual AI led world meets our own! When Ares, a powerful program, enters reality, the battle between man and AI begins. With mind-blowing visuals, edge-of-the-seat action, and an emotional story, Tron: Ares is a big-screen spectacle you just can`t miss!', 'assets/posters/1760071335_images__5_.jpg', 169, 'U/A', '2025-10-09 13:41:00'),
(3, 'Interstellar', 'A team travels through a wormhole in search of a new home for humanity.', 'assets/posters/1760071241_images__4_.jpg', 169, 'U/A', '2025-10-09 13:43:38'),
(4, 'Inception', 'A thief who steals corporate secrets through dream-sharing technology.', 'assets/posters/1760071209_Inception-LeonardoDiCaprio-ChristopherNolan-HollywoodSciFiMoviePoster.jpg', 148, 'U/A', '2025-10-09 13:43:38'),
(5, 'Jolly LLB 3', 'In this uproarious courtroom comedy, the smart-alec Jolly Mishra and the Jugadu Jolly Tyagi find themselves back in Judge Tripathi\'s court ensuing a rollercoaster ride of razor-sharp banter, outrageous legal maneuvers, and heartfelt moments as these lawyers try to outsmart, outplay, and outtalk each other. Packed with laugh-out-loud chaos, dramatic twists, and unexpected bursts of compassion, it\'s the ultimate legal showdow', 'assets/posters/1760071171_Jolly_LLB_3_poster.jpg', 160, '8', '2025-10-10 03:56:08'),
(6, 'Sunny Sanskari Ki Tulsi Kumari', 'Set against the backdrop of Delhi, the film is based on a humorously convoluted premise of two ex-lovers trying to win their love back. Amidst an extravagantly dramatic tale of innocent deception and comical misunderstandings, an accidental love story blossoms. Who would get their happy ending in the middle of the hilarious chaos?', 'assets/posters/1760070870_0.jpg', 180, 'U/A', '2025-10-10 04:33:29'),
(7, 'Kantara: A Legend Chapter-1', 'The moment has arrived. The divine forest whispers. A Legend was born!', 'assets/posters/1760072239_MV5BNDU2ZTYxYTMtMjhlZC00ZjEwLThhNDUtMzdlNWM4ZDcyYTM1XkEyXkFqcGc___V1_.jpg', 120, 'U/A', '2025-10-10 04:57:19'),
(8, 'Nikka Zaildar 4', 'Nikka, a village boy, falls for the beautiful city girl Angel Preet. Determined to win her heart and his traditional grandmother Bebe`s approval, he sets out on a mission. The two marry, but a shocking secret soon turns their happily-ever-after into a rollercoaster of chaos, drama, and surprises.', 'assets/posters/1760072327_images__6_.jpg', 120, 'U/A', '2025-10-10 04:58:47'),
(13, 'Ek Deewane Ki Deewaniyat', 'Love. Obsession. Heartbreak...', 'assets/posters/1761464608_Ek-Deewane-Ki-Deewaniya_1761405742538_1761405742644.webp', 160, 'U/A', '2025-10-26 07:43:28'),
(14, 'Predator: Badlands', 'Predator: Badlands is a 2025 sci-fi action film and the latest installment in the Predator franchise. It is directed by Dan Trachtenberg, who also directed the 2022 film Prey', 'assets/posters/1762450345_MV5BNTdjZGUxMTItNjRkNS00N2VhLWE4MjMtMjVhODMwMGIxNjUwXkEyXkFqcGc___V1_.jpg', 107, 'U', '2025-11-06 17:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `screens`
--

CREATE TABLE `screens` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `total_rows` int(11) NOT NULL DEFAULT 5,
  `total_cols` int(11) NOT NULL DEFAULT 8,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `screens`
--

INSERT INTO `screens` (`id`, `name`, `total_rows`, `total_cols`, `created_at`) VALUES
(1, 'Screen 1', 6, 10, '2025-10-09 13:43:03'),
(2, 'Screen 2', 5, 8, '2025-10-09 13:43:03'),
(3, 'Screen 3', 5, 8, '2025-10-10 04:07:32'),
(4, 'Screen 4', 5, 6, '2025-11-06 17:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `show_datetime` datetime NOT NULL,
  `price` int(11) NOT NULL DEFAULT 200,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `movie_id`, `screen_id`, `show_datetime`, `price`, `created_at`) VALUES
(1, 1, 1, '2025-10-10 19:14:01', 250, '2025-10-09 13:44:01'),
(2, 1, 2, '2025-10-11 19:14:01', 200, '2025-10-09 13:44:01'),
(4, 5, 1, '2025-10-10 19:30:00', 300, '2025-10-10 04:08:40'),
(5, 5, 3, '2025-10-10 19:30:00', 300, '2025-10-10 04:09:25'),
(6, 5, 3, '2025-10-10 19:30:00', 300, '2025-10-10 04:09:40'),
(7, 13, 1, '2025-11-02 09:30:00', 200, '2025-10-26 07:44:16'),
(8, 13, 2, '2025-11-04 09:30:00', 200, '2025-10-26 07:44:35'),
(9, 13, 3, '2025-11-25 09:30:00', 200, '2025-10-26 07:44:48'),
(10, 14, 4, '2025-11-10 09:30:00', 250, '2025-11-06 17:33:10'),
(11, 14, 4, '2025-11-10 15:00:00', 300, '2025-11-06 17:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(190) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `role`, `created_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$G90OwB2cDZaSJtqAt83QPepjQVDFCReEsgvXHkc87ojRxpCb0t4hS', 'admin', '2025-10-09 13:41:00'),
(2, 'Rajat Mehta', 'raj@gmail.com', '$2y$10$4yM4UwvIah8oHo75UXYbde7u1DzXDx3kywO2ovhFrArPUn3pbvpxC', 'user', '2025-10-09 13:45:13'),
(3, 'Shanu Mishra', 'shanu@gmail.com', '$2y$10$8lYm40Uow2bwuKCjRCF6sOn1dIgnfUELaSkMcDRt68vUy.KYuJQGi', 'user', '2025-10-10 05:57:37'),
(4, 'Manav Kumar', 'manav@gmail.com', '$2y$10$R0a2VnX64WR03DGcw641M.UsnHA3QQTlC2gRzp.C4SUTZmXYtfTPi', 'user', '2025-10-10 05:58:27'),
(5, 'Komal', 'komal@gmail.com', '$2y$10$gQVLdIRsrwMfk6BU99lpRO0p7S12jqfele7D0SlMnn8.bALFiYZVa', 'user', '2025-10-10 06:01:21'),
(6, 'John Doe', 'john12@gmail.com', '$2y$10$bZd8sgJvtczYDPf2hfaYMOmFSqWaAOd90prxxbo99xannyJtPVhji', 'user', '2025-11-06 17:34:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_show_seat` (`show_id`,`seat_label`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screens`
--
ALTER TABLE `screens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `screen_id` (`screen_id`),
  ADD KEY `show_datetime` (`show_datetime`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `screens`
--
ALTER TABLE `screens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shows_ibfk_2` FOREIGN KEY (`screen_id`) REFERENCES `screens` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
