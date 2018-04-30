-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 05:06 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `dhaka_hotels`
--

CREATE TABLE `dhaka_hotels` (
  `ID` int(5) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone_no` varchar(15) NOT NULL,
  `Fax_no` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `WEb_site` varchar(100) NOT NULL,
  `Floor_01` varchar(30) NOT NULL,
  `Floor_02` varchar(30) NOT NULL,
  `Floor_03` varchar(30) NOT NULL,
  `Floor_04` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dhaka_hotels`
--

INSERT INTO `dhaka_hotels` (`ID`, `Name`, `Address`, `Phone_no`, `Fax_no`, `Email`, `WEb_site`, `Floor_01`, `Floor_02`, `Floor_03`, `Floor_04`) VALUES
(1, 'Pan Pacific Sonargaon Hotel, Dhaka', '107 , Kazi Nazrul Islam Avenue, Dhaka, Bangladesh', '+880 2 811 1005', '+880 2 811 3324', 'none', 'https://www.panpacific.com/en/hotels-resorts/bangladesh/dhaka.html', '23', '12', '06', '14'),
(2, 'Ruposhi Bangla Hotel', '1 Minto Road, Shahbagh, Dhaka, Bangladesh.', '+88-02-8330001', '+88-02-8312975', ' sales@ruposhibanglahotel.com', 'http://www.ruposhibanglahotel.com/', 'single - 02, double - 01', 'single - 00, double - 10', 'single - 14, double - 21', 'single - 05, double - 09'),
(3, 'Radisson Water Garden Hotel, Dhaka', 'Airport Road, Dhaka Cantonment 1206 Bangladesh.', '+ 88 02 8754555', '+ 88 02 8754554', 'reservations.dhaka@radisson.com', 'https://www.radissonblu.com/en/hotel-dhaka', 'single - 03, double - 08', 'single - 10, double - 23', 'single - 05, double - 22', 'single - 11, double - 07');

-- --------------------------------------------------------

--
-- Table structure for table `fare_query`
--

CREATE TABLE `fare_query` (
  `Hotel_Name` varchar(10) NOT NULL,
  `Floor_Type` varchar(10) NOT NULL,
  `Single_Double` varchar(10) NOT NULL,
  `Fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fare_query`
--

INSERT INTO `fare_query` (`Hotel_Name`, `Floor_Type`, `Single_Double`, `Fare`) VALUES
('PPSH', 'First', 'Single', 1200),
('PPSH', 'First', 'Double', 2200),
('PPSH', 'Second', 'Single', 1400),
('PPSH', 'Second', 'Double', 2500),
('PPSH', 'Third', 'Single', 2600),
('PPSH', 'Third', 'Double', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `id` int(6) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`id`, `Name`, `Email`, `Password`) VALUES
(1, 'Tohid', 'tohidfahim3110@gmail.com', 'tohid'),
(2, 'Ansar', 'ansarulcse@gmail.com', 'ansar'),
(3, 'Abdullah', 'hbkamk@gmail.com', 'abdullah'),
(4, 'Sazal', 'sazalcse@gmail.com', 'sazal'),
(5, 'Sabbir', 'sa@gmail.com', 'sabbir'),
(6, 'Fahim', 'fahimtohid3110@gmail.com', 'fahim');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dhaka_hotels`
--
ALTER TABLE `dhaka_hotels`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
