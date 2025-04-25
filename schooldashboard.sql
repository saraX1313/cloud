-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2025 at 05:03 PM
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
-- Database: `schooldashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`) VALUES
(1, 'grad1'),
(2, 'gard2'),
(3, 'grad3'),
(4, 'grad4'),
(5, 'grad5');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `class_id`, `image`) VALUES
(16, 'aly saad', 'ahmed@gamil', '01111111111111111', 1, 'wallpaperflare.com_wallpaper (2).jpg'),
(17, 'hasan eldin', 'abdoo1@gmail.com', '01111111111111111', 2, 'wallpaperflare.com_wallpaper.jpg'),
(18, 'karam hossam', 'abdoo1@gmail.com', '01111111111111111', 3, 'wallpaperflare.com_wallpaper (1).jpg'),
(19, 'gomaa', 'saleh@gmail', '10112870167', 5, 'wallpaperflare.com_wallpaper (5).jpg'),
(21, 'mahmoad elkasrawy', 'abdoo1@gmail.com', '10112870167', 4, 'wallpaperflare.com_wallpaper (5).jpg'),
(23, 'mahmoad eedesdfxfd', 'abdoo1@gmail.com', '887658765564', 5, 'wallpaperflare.com_wallpaper (4).jpg'),
(24, 'hasan eldin', 'abdoo1@gmail.com', '986076078', 3, 'wallpaperflare.com_wallpaper (4).jpg'),
(25, 'hasan klbjjlh lkj', 'abdoo1@gmail.com', '986076078', 4, 'wallpaperflare.com_wallpaper (4).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(1, 'math'),
(2, 'arabic'),
(3, 'english'),
(4, 'french'),
(5, 'gymnastic'),
(6, 'science');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`) VALUES
(1, 'hassan'),
(2, 'jeo '),
(3, 'ahmed'),
(4, 'mohamed'),
(5, 'karam hossam');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_student`
--

CREATE TABLE `teacher_student` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `teacher_student`
--

INSERT INTO `teacher_student` (`id`, `teacher_id`, `student_id`) VALUES
(2, 1, 16),
(3, 5, 17),
(4, 1, 18),
(5, 5, 19),
(7, 1, 21),
(9, 4, 23),
(10, 5, 24),
(11, 5, 25);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(7, 'abdalrahman', 'abd@gmail.com', '$2y$10$HCIukWANjBidjvAdQo57durIlr6nBhQCkm5/fhZHQ3QdI04H.xkiG', '2024-12-19 13:46:44'),
(8, 'abdalrahman', 'abdjk@gmail.com', '$2y$10$nMymAFhGg4sWOm24g2BB1uf7UPBRJI6cm2H/0Pn8egyjs5fWdJ3yy', '2024-12-19 13:47:16'),
(9, 'hasan eldin', 'abdoo1@gmail.com', '$2y$10$D3M62b9/q/mWMgNZfaB2kOYXu7ovOkL6hw8b///wt41fCAtNog9G2', '2024-12-19 14:00:05'),
(11, 'hasan eldin', 'abdoo133@gmail.com', '$2y$10$p.n9BGUfWljoTiiQRVNf6OGeFIB5fkB3G0xsLLaj28728s0LV.ez2', '2024-12-19 14:01:01'),
(13, 'abdoo', 'abdoo22@gmail.com', '$2y$10$JTpik90KoDqLgogCKVXRPuQh44kryRg0Oy5fbt.Qml5.xS.h5d11y', '2024-12-19 14:10:49'),
(14, 'abdoo', 'abdoo222@gmail.com', '$2y$10$TVXqB0.OO/LwB/JkkH/cTOd7BvI2oHtSEilpOKtU8g5f8m06lZRYO', '2024-12-19 14:13:07'),
(15, 'abdoo', 'abdoo227@gmail.com', '$2y$10$tAcAC0CuKSb7GCiMni6xCO2p4RGEL/S.3aYNMXNf.gJSd3YRe32xC', '2024-12-19 15:02:46'),
(16, 'sara', 'sara@gmail', '$2y$10$yhx5Alf2LJGKrCKkbWl4runXUQbSaUOWu1kM4q5/2ea..Ydcm9KBC', '2024-12-22 11:51:27'),
(18, 'sara777', 'sara777@gmail', '$2y$10$Qb0OIWm5OMP/Lx0WGccPFOO6Yu6ZJhDf58WutLtOBrfSPf5AWEwya', '2024-12-22 11:53:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_student`
--
ALTER TABLE `teacher_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `student_id` (`student_id`);

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
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_student`
--
ALTER TABLE `teacher_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher_student`
--
ALTER TABLE `teacher_student`
  ADD CONSTRAINT `teacher_student_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_student_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
