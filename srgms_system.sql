-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 28, 2023 at 12:30 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u395184583_bwlms_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(128) NOT NULL,
  `roleId` int(128) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp(),
  `deleted_at` date NOT NULL DEFAULT current_timestamp(),
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `roleId`, `firstname`, `lastname`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`, `deleted`) VALUES
(4, 1, 'superadmin', 'superadmin', 'superadmin', '$2y$10$iRXQ2V5fnxG/24hMjkO.e./vF8wKBqb1F1j6bifQsV9oq7CUf9iea', '2023-02-17', '2023-02-17', '2023-02-17', 0),
(5, 2, 'Joyce', 'Acidera', 'joyceacidera05@gmail.com', '$2y$10$bkbZw3BkhXhFBJAzAl2hx.Jc6mi0Qc/KH72f72mrxqC63u3wUoSi.', '2023-02-26', '2023-02-26', '2023-02-26', 1),
(6, 2, 'Jilliane', 'Aligato', 'kristinejilliane17@gmail.com', '$2y$10$0BKVNA0hHr87N8KMe.f71..vcOVnViNI8804OHzuScbPReaq4jPRW', '2023-02-28', '2023-02-28', '2023-02-28', 0),
(7, 2, 'Randy', 'Gervacio', 'randygervacio24@gmail.com', '$2y$10$HhTnH3uq3cnZhgQpAHR1ne1gu0hwt6VcuEQosvy2UweHalXCAyyt2', '2023-02-28', '2023-02-28', '2023-02-28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookId` int(128) NOT NULL,
  `bookPhoto` varchar(255) NOT NULL,
  `bookTitle` varchar(128) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `bookPublishDate` date NOT NULL,
  `bookOverview` varchar(225) NOT NULL,
  `bookQuantity` int(128) NOT NULL,
  `bookStatus` int(1) NOT NULL DEFAULT 0,
  `deleted_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookId`, `bookPhoto`, `bookTitle`, `categoryId`, `authorId`, `bookPublishDate`, `bookOverview`, `bookQuantity`, `bookStatus`, `deleted_at`, `deleted`) VALUES
(1, '', 'Earth Science', 1, 1, '2023-02-01', '', 10, 1, '2023-02-26 08:16:46', 0),
(2, '', 'Algebra', 2, 2, '2023-02-04', '', 8, 1, '2023-02-26 08:16:46', 1),
(3, '1677376949_82d05031102734c9d9c7.jpg', 'Sample', 1, 1, '2023-02-13', '', 0, 0, '2023-02-26 09:39:39', 1),
(4, '1677585314_2309c108df6be1639293.jpg', 'History', 3, 2, '2023-02-28', '', 20, 1, '2023-02-28 11:55:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `authorId` int(255) NOT NULL,
  `authorFirstName` varchar(128) NOT NULL,
  `authorLastName` varchar(128) NOT NULL,
  `deleted_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`authorId`, `authorFirstName`, `authorLastName`, `deleted_at`, `deleted`) VALUES
(1, 'Randy', 'Gervacio', '2023-02-26 11:34:35', 1),
(2, 'Marky', 'Manabat', '2023-02-26 11:34:35', 1),
(3, 'dsad', 'dasd', '2023-02-26 11:39:04', 1),
(4, 'A', 'B', '2023-02-26 11:39:19', 1),
(5, 'Hello', 'World', '2023-02-26 12:00:05', 1),
(6, 'Michi', 'Kaku', '2023-02-28 12:20:36', 0),
(7, 'Douglas', 'Adams', '2023-02-28 12:20:54', 0),
(8, 'Edgar', 'Samar', '2023-02-28 12:21:08', 0),
(9, 'Tony', 'Northrup', '2023-02-28 12:21:24', 0),
(10, 'James', 'Clear', '2023-02-28 12:21:44', 0),
(11, 'Jose Raymund', 'Canoy', '2023-02-28 12:21:58', 0),
(12, 'Excel Academic', 'Council', '2023-02-28 12:22:11', 0),
(13, 'Yuval Noah', 'Harari', '2023-02-28 12:22:27', 0),
(14, 'Deborah Francisco', 'Douglas', '2023-02-28 12:22:41', 0),
(15, 'Ken', 'Berry', '2023-02-28 12:22:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `categoryId` int(255) NOT NULL,
  `categoryName` varchar(128) NOT NULL,
  `deleted_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`categoryId`, `categoryName`, `deleted_at`, `deleted`) VALUES
(1, 'Science', '2023-02-26 10:53:01', 1),
(2, 'Mathematics', '2023-02-26 10:53:01', 0),
(3, 'Philippine History', '2023-02-28 11:54:45', 0),
(4, 'Science', '2023-02-28 12:17:02', 0),
(5, 'Science Ficiton', '2023-02-28 12:17:12', 0),
(6, 'Philippine Mythology', '2023-02-28 12:17:23', 0),
(7, 'Art and Photography', '2023-02-28 12:17:42', 0),
(8, 'English', '2023-02-28 12:17:54', 0),
(9, 'Politics and Social Sciences', '2023-02-28 12:18:11', 0),
(10, 'Memoir', '2023-02-28 12:18:19', 0),
(11, 'Health and Fitness', '2023-02-28 12:18:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `borrow_book`
--

CREATE TABLE `borrow_book` (
  `borrowId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `approve` int(11) NOT NULL DEFAULT 0,
  `status` enum('Returned','Not Yet Returned','Pending','Decline') NOT NULL DEFAULT 'Pending',
  `returnBook` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow_book`
--

INSERT INTO `borrow_book` (`borrowId`, `userId`, `bookId`, `quantity`, `borrow_date`, `return_date`, `approve`, `status`, `returnBook`) VALUES
(1, 15, 1, 2, '2023-02-26', '2023-02-27', 1, 'Returned', 1),
(2, 15, 2, 1, '2023-02-27', '2023-02-28', 2, 'Decline', 0),
(3, 15, 1, 1, '2023-03-01', '2023-03-03', 1, 'Returned', 1),
(4, 15, 2, 1, '2023-02-28', '2023-03-02', 0, 'Pending', 0),
(5, 15, 2, 1, '2023-02-28', '2023-03-04', 0, 'Pending', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(128) NOT NULL,
  `studentId` varchar(255) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `suffixName` varchar(128) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp(),
  `deleted_at` date NOT NULL DEFAULT current_timestamp(),
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `studentId`, `firstname`, `lastname`, `suffixName`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`, `deleted`) VALUES
(1, '2023-0001-LMS', 'Randy', 'Gervacio', '', 'randygervacio24@gmail.com', '', '2023-02-17', '2023-02-17', '2023-02-17', 0),
(13, '2023-0002-LMS', 'Herlene', 'Romanes', NULL, 'herlener@gmail.com', '$2y$10$ymAIpbFd49BnPcj.ql1kpO1a9OojFd9RBx21clI5ClCToif2S.CNO', '2023-02-24', '2023-02-24', '2023-02-24', 0),
(14, '2023-0003-LMS', 'Kristine Jilliane', 'Aligato', NULL, 'kristinejilliane17@gmail.com', '$2y$10$bja4/gLYSa58mL87P04SbuN8XgBYULKYCBxXNY9DV.QfAlKvQPTHm', '2023-02-24', '2023-02-24', '2023-02-24', 1),
(15, '2023-0004-LMS', 'Marky', 'Manabat', 'None', 'markreym0@gmail.com', '$2y$10$7kCXv.5YTCKYxJVyAVNrT.aQO74kw72hcDyhTsMuTQhdJVNltFA.q', '2023-02-26', '2023-02-26', '2023-02-26', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookId`),
  ADD KEY `authorId` (`authorId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`authorId`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `borrow_book`
--
ALTER TABLE `borrow_book`
  ADD PRIMARY KEY (`borrowId`),
  ADD KEY `bookId` (`bookId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookId` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_author`
--
ALTER TABLE `book_author`
  MODIFY `authorId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `categoryId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `borrow_book`
--
ALTER TABLE `borrow_book`
  MODIFY `borrowId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`authorId`) REFERENCES `book_author` (`authorId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `book_category` (`categoryId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `borrow_book`
--
ALTER TABLE `borrow_book`
  ADD CONSTRAINT `borrow_book_ibfk_1` FOREIGN KEY (`bookId`) REFERENCES `book` (`bookId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_book_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
