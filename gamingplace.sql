-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 16, 2016 at 11:54 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamingplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, ' Xbox one Games'),
(2, 'PS4 Games'),
(3, 'Nintendo Wii Games'),
(4, 'Xbox 360'),
(5, 'PS 3 Games');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `transaction_id`, `qty`, `price`, `address`, `address2`, `city`, `state`, `zipcode`) VALUES
(1, 1, 1, '0', 1, '14999.99', 'Awolowo hall, Obafemi Awolowo University, ', 'Computer building', 'ILE-IFE', '0', 12345678);

-- --------------------------------------------------------

--
-- Table structure for table `products.php`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` decimal(65,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products.php`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `description`, `image`, `price`) VALUES
(1, 1, 'BioShock Infinite', 'Indebted to the wrong people, with his life on the line, veteran of the U.S. Cavalry and now hired gun, Booker DeWitt has only one opportunity to wipe his slate clean. He must rescue Elizabeth, a mysterious girl imprisoned since childhood and locked up in the flying city of Columbia.', 'game1.jpg', '14999.99'),
(2, 3, 'Super Mario Galaxy 2 ', 'Super Mario Galaxy 2 is a platforming video game developed and published by Nintendo for the Wii. It was first announced at E3 2009 and is the sequel to Super Mario Galaxy.', 'game2.jpg', '23999.99'),
(3, 5, 'Watch Dogs', 'Play as Marcus Holloway, a brilliant young hacker living in the birthplace of the tech revolution, the San Francisco Bay Area. \r\nTeam up with Dedsec, a notorious group of hackers, to execute the biggest hack in history; take down ctOS 2.0, an invasive operating system being used by criminal masterminds to monitor and manipulate citizens on a massive scale. \r\n\r\n', 'game3.jpg', '16999.99'),
(4, 2, 'FIFA 17', 'Powered by Frostbite on PC, FIFA 17 delivers authentic, true-to-life action, takes players to new football worlds and introduces fans to characters full of depth and emotion.', 'game4.jpg', '18999.99'),
(5, 1, 'Call of Duty®: Infinite Warfare', 'Infinite Warfare delivers three unique game modes: Campaign, Multiplayer, and Zombies.', 'game5.jpg', '19999.99'),
(6, 4, 'Blur ', 'Blur is the PC game based on the full time action racing game. Every one in the game is a professional racer and the concept of the game is a lot similar to the Death Race and Split Second. The game is alot more than just racing. You have to be on the top of the race and get the bonus rewards which will help you to defeat your opponents. The best thing in this game is that you never know what will happen next. This game is a true addiction, once you are in. It is hard to bail out. The cars introduced in the game are really amazing and modified one which remind me of another game called Need for Speed Rivals. There are more than 30 modified top racing cars in the game. You can also modify the engine according to your own need. The maps of the game are really amazing and the street view is just great. The colors and night effects of the game are really appreciable which remind me of Race Injection. The more you will play the more you will get addicted.', 'game6.jpg', '14999.99');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `join_date`) VALUES
(2, 'Ogunsola', 'Timileyin', 'ogunsola.timileyin@gmail.com', 'Timtoy', 'ab976816d45b4931cf9b81da36933354', '2016-11-15 10:24:09'),
(3, 'Oluwadamilola', 'Babalola', 'Babalola@gmail.com', 'babs', 'ab976816d45b4931cf9b81da36933354', '2016-11-15 10:27:24'),
(4, 'Emmanuel', 'AKINDE', 'ibukunbamise@yahoo.com', 'harkindey', '111579b7670547a9523d50e9e827b99c', '2016-11-15 14:55:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products.php`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products.php`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
