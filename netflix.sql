-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 11:55 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix`
--

-- --------------------------------------------------------

--
-- Table structure for table `netflix_shows`
--

CREATE TABLE `netflix_shows` (
  `show_id` int(11) NOT NULL,
  `seasons` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `netflix_shows`
--

INSERT INTO `netflix_shows` (`show_id`, `seasons`, `duration`) VALUES
(4, 5, 48),
(5, 4, 55);

-- --------------------------------------------------------

--
-- Table structure for table `netflix_titles`
--

CREATE TABLE `netflix_titles` (
  `show_id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `cast` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `netflix_titles`
--

INSERT INTO `netflix_titles` (`show_id`, `type`, `title`, `director`, `cast`, `country`, `date_added`, `rating`) VALUES
(1, 'Movie', 'The Shawshank Redemption', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton', 'United States', '2018-09-01', 'R'),
(2, 'Movie', 'The Godfather', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 'United States', '2018-09-01', 'R'),
(3, 'Movie', 'The Godfather: Part II', 'Francis Ford Coppola', 'Al Pacino, Robert De Niro, Robert Duvall', 'United States', '2018-09-01', 'R'),
(4, 'TV Show', 'Breaking Bad', '', 'Bryan Cranston, Aaron Paul, Anna Gunn', 'United States', '2013-08-02', 'TV-MA'),
(5, 'TV Show', 'Stranger Things', '', 'Winona Ryder, David Harbour, Finn Wolfhard', 'United States', '2016-07-15', 'TV-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `netflix_shows`
--
ALTER TABLE `netflix_shows`
  ADD PRIMARY KEY (`show_id`);

--
-- Indexes for table `netflix_titles`
--
ALTER TABLE `netflix_titles`
  ADD PRIMARY KEY (`show_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `netflix_shows`
--
ALTER TABLE `netflix_shows`
  ADD CONSTRAINT `Foreign key` FOREIGN KEY (`show_id`) REFERENCES `netflix_titles` (`show_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
