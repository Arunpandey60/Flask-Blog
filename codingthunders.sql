-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 02:53 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunders`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` bigint(12) NOT NULL,
  `msg` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(41, 'Arun', 7045727144, 'jbadjkvbka\r\n', '2021-02-12 12:03:01', 'ap40407@gmail.com'),
(42, 'Varun', 7045727144, 'please send the mail', '2021-02-14 09:01:41', 'ap40407@gmail.com'),
(43, 'Varun', 7045727144, 'please send the mail', '2021-02-14 09:06:05', 'ap40407@gmail.com'),
(44, 'Arun', 7045727144, 'please revert back as soon as possible', '2021-02-14 09:13:40', 'ap40407@gmail.com'),
(45, 'Arun', 7045727144, 'please revert back as soon as possible', '2021-02-14 09:14:44', 'ap40407@gmail.com'),
(46, 'Arun', 7045727144, 'please revert back as soon as possible', '2021-02-14 09:14:54', 'ap40407@gmail.com'),
(47, 'Arun', 7045727144, 'please revert back as soon as possible', '2021-02-14 09:15:11', 'ap40407@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` varchar(120) NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'HTML & CSS', 'html and css info', 'html-css-post', 'HTML (the Hypertext Markup Language) and CSS (Cascading Style Sheets) are two of the core technologies for building Web ', 'html.jpg', '2021-02-10 01:12:25'),
(2, 'JAVASCRIPT', 'Javascript info', 'Javascript-post', 'JavaScript is a text-based programming language used both on the client-side and server-side  ', 'javas.jpg', '2021-02-05 02:22:25'),
(7, 'FLASK', 'Flask info', 'flask-python', 'Flask is a micro web framework written in Python. It is classified as a microframework ', 'flask.png', '2021-02-10 04:20:00'),
(8, 'ANGULAR', 'Angular info', 'Angular-js', 'AngularJS is a JavaScript-based front-end web framework mainly maintained by Google ', 'ang.png', '2021-04-10 12:45:20'),
(9, 'REACT', 'React info', 'React-js', 'React is an open-source, front end, JavaScript library for building user interfaces ', 'react.png', '2021-02-10 12:22:45'),
(10, 'NODE-JS', 'Nodejs info', 'node-js', 'Node.js is an open-source, cross-platform, back-end JavaScript runtime environment', 'node.png', '2021-02-10 05:20:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
