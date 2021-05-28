-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 08:36 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `Sno` int(50) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `PhoneNo` varchar(50) NOT NULL,
  `Msg` text NOT NULL,
  `Date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`Sno`, `Name`, `Email`, `PhoneNo`, `Msg`, `Date`) VALUES
(1, 'first post', 'firstemail@gmail.com', '12214', 'first post', '2021-05-19'),
(9, 'afsf', 'afw#w@sfsef', '12412423', 'wtr30fjj \r\na[ ww09 \r\nw4tjw-4-tt\r\nis4Ts\r\n\r\ni0gssgjsgs\\g4-iw4\r\n4\r\ngww4g\r\n', '2021-05-20'),
(10, '', '', '', '', '2021-05-24'),
(11, 'Arun', 'Arun@gmail.com', '8757575757', 'NNAKKKAM\'sd\r\nsdkdkmv\r\nas,asm', '2021-05-24'),
(12, 'Arun', 'Arun@gmail.com', '8757575757', 'NNAKKKAM\'sd\r\nsdkdkmv\r\nas,asm', '2021-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `img_file` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'What is wiki?', 'The first post', 'first-slug', 'Other collaborative online encyclopedias were attempted before Wikipedia, but none were as successful.[12] Wikipedia began as a complementary project for Nupedia, a free online English-language encyclopedia project whose articles were written by experts and reviewed under a formal process.[13] It was founded on March 9, 2000, under the ownership of Bomis, a web portal company. Its main figures were Bomis CEO Jimmy Wales and Larry Sanger, editor-in-chief for Nupedia and later Wikipedia.[1][14] Nupedia was initially licensed under its own Nupedia Open Content License, but even before Wikipedia was founded, Nupedia switched to the GNU Free Documentation License at the urging of Richard Stallman.[15] Wales is credited with defining the goal of making a publicly editable encyclopedia,[16][17] while Sanger is credited with the strategy of using a wiki to reach that goal.[18] On January 10, 2001, Sanger proposed on the Nupedia mailing list to create a wiki as a \"feeder\" project for Nupedia.[19]\r\n\r\n', '2021-05-20', 'a.jpg'),
(2, 'League of Legends', 'The second post', 'second-slug', 'In the game, two teams of five players battle in player versus player combat, each team occupying and defending their half of the map. Each of the ten players controls a character, known as a \"champion\", with unique abilities and differing styles of play. During a match, champions become more powerful by collecting experience points, earning gold, and purchasing items to defeat the opposing team. In the game\'s main mode, Summoner\'s Rift, a team wins by pushing through to the enemy base and destroying their \"Nexus\", a large structure located within.\r\n\r\n', '2021-05-21', 'x.jpg'),
(3, 'Youtube', 'third tagline', 'third-slug', 'YouTube is an online video platform owned by Google. In total, users watch more than one billion hours of YouTube videos each day, and hundreds of hours of video content are uploaded to YouTube servers every minute. It was founded by Steve Chen, Chad Hurley, and Jawed Karim.', '2021-05-21', 'home-bg.jpg'),
(4, 'Twitch', 'Fourth Tagline', 'fourth-slug', 'YouTube is an online video platform owned by Google. In total, users watch more than one billion hours of YouTube videos each day, and hundreds of hours of video content are uploaded to YouTube servers every minute. It was founded by Steve Chen, Chad Hurley, and Jawed Karim.', '2021-05-21', 'a.jpg'),
(5, 'Tool', 'A tagline', 'new-slug', 'img_fileTool is an American rock band from Los Angeles. Formed in 1990, the group\'s line-up includes drummer Danny Carey, guitarist Adam Jones, and vocalist Maynard James Keenan. Justin Chancellor has been the band\'s bassist since 1995, replacing their original bassist Paul D\'Amour. Wikipedia', '2021-05-24', 'x.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`Sno`);

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
  MODIFY `Sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
