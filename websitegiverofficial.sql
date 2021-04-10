-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2021 at 04:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websitegiverofficial`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `number` varchar(15) NOT NULL,
  `concern` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `email`, `number`, `concern`, `date`) VALUES
(1, 'lakshya', 'lakshya@gmail.com', '9836572416', 'For Test Purposes', '2021-03-03 18:33:54'),
(2, 'lakshya', 'laksya', '023954879410', 'lakshya', '2021-03-03 18:34:11'),
(3, 'lakshya', 'laksya', '023954879410', 'lakshya', '2021-03-03 18:35:31'),
(4, 'tst', 'tst@tst.com', '01234567890', 'its a test mail to me\r\n', '2021-03-03 18:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `weblinks`
--

CREATE TABLE `weblinks` (
  `sno` int(11) NOT NULL,
  `webname` varchar(50) NOT NULL,
  `link` varchar(110) NOT NULL,
  `about` text NOT NULL,
  `readmin` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weblinks`
--

INSERT INTO `weblinks` (`sno`, `webname`, `link`, `about`, `readmin`, `datetime`) VALUES
(1, 'Foody Fooder', 'https://lakshyakumar266.github.io/Foody-Moody/#', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has\r\n                        a more-or-less normal distribution of letters, as opposed to using \'Content here, content\r\n                        here\', making it look like readable English.', 10, '2021-03-05 13:29:23'),
(2, 'Headshot Gaming', 'https://lakshyakumar266.github.io/Headshot_Gaming/index.html', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots\r\n                        in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard\r\n                        McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the\r\n                        more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the\r\n                        cites of the word in classical literature, discovered the undoubtable source.', 15, '2021-03-05 13:31:40'),
(3, 'Magic Notes', 'https://lakshyakumar266.github.io/Magic-Notes/', 'There are many variations of passages of Lorem Ipsum available, but the majority\r\n                        have suffered alteration in some form, by injected humour, or randomised words which don\'t\r\n                        look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to\r\n                        be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum\r\n                        generators on the Internet tend to repeat predefined chunks as necessary.', 10, '2021-03-05 13:32:37'),
(4, 'iDino Game', 'https://lakshyakumar266.github.io/iDino-Game/', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\r\n                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor\r\n                        in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur\r\n                        sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est\r\n                        laborum.', 15, '2021-03-05 13:33:17'),
(5, 'My Bloger', 'https://lakshyakumar266.github.io/My-Bloger', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium\r\n                        doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et\r\n                        quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas\r\n                        sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione\r\n                        voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,\r\n                        consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et\r\n                        dolore magnam aliquam quaerat voluptatem.', 20, '2021-03-05 13:34:09'),
(6, 'Music app', 'https://lakshyakumar266.github.io/Music-app/', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae beatae\r\n                        itaque cupiditate quo natus voluptatibus quidem praesentium dolore illum Voluptatem. Lorem\r\n                        ipsum Lorem ipsum dolor sit amet. Lorem ipsum dolor sit, amet consectetur adipisicing elit.\r\n                        Voluptatum corporis possimus voluptates.', 5, '2021-03-05 13:34:54'),
(7, 'spicey spicer', 'https://lakshyakumar266.github.io/spicey-spicer/', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae beatae\r\n                        itaque cupiditate quo natus voluptatibus quidem praesentium dolore illum Voluptatem. Lorem\r\n                        ipsum Lorem ipsum dolor sit amet. Lorem ipsum dolor sit, amet consectetur adipisicing elit.\r\n                        Voluptatum corporis possimus voluptates.', 8, '2021-03-05 13:35:43'),
(8, 'Cardia', 'https://lakshyakumar266.github.io/FitGym/index.html', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae beatae\r\n                        itaque cupiditate quo natus voluptatibus quidem praesentium dolore illum Voluptatem. Lorem\r\n                        ipsum Lorem ipsum dolor sit amet. Lorem ipsum dolor sit, amet consectetur adipisicing elit.\r\n                        Voluptatum corporis possimus voluptates.', 5, '2021-03-05 13:36:28'),
(9, 'Coding Information', 'https://lakshyakumar266.github.io/about-languages/index.html', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae beatae\r\n                        itaque cupiditate quo natus voluptatibus quidem praesentium dolore illum Voluptatem. Lorem\r\n                        ipsum Lorem ipsum dolor sit amet. Lorem ipsum dolor sit, amet consectetur adipisicing elit.\r\n                        Voluptatum corporis possimus voluptates.', 25, '2021-03-05 13:37:11'),
(10, 'The Quizzer', 'https://lakshyakumar266.github.io/Quizzer/index.html', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae beatae\r\n                        itaque cupiditate quo natus voluptatibus quidem praesentium dolore illum Voluptatem. Lorem\r\n                        ipsum Lorem ipsum dolor sit amet. Lorem ipsum dolor sit, amet consectetur adipisicing elit.\r\n                        Voluptatum corporis possimus voluptates.', 26, '2021-03-05 13:37:53'),
(11, 'Profilo', 'https://lakshyakumar266.github.io/simple-Website-Template/', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae beatae\r\n                        itaque cupiditate quo natus voluptatibus quidem praesentium dolore illum Voluptatem. Lorem\r\n                        ipsum Lorem ipsum dolor sit amet. Lorem ipsum dolor sit, amet consectetur adipisicing elit.\r\n                        Voluptatum corporis possimus voluptates.', 2, '2021-03-05 13:40:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `weblinks`
--
ALTER TABLE `weblinks`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `weblinks`
--
ALTER TABLE `weblinks`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
