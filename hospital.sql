-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 09:52 PM
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
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_number` int(5) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `specialty` varchar(50) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `telephone` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_number`, `firstname`, `surname`, `specialty`, `address`, `telephone`) VALUES
(1, 'Elicia', 'Kellogg', 'Orthopedic', '09 Lake View Crossin', 123456234),
(2, 'Audrye', 'Landis', 'surgeon', '62238 Knutson Crossi', 1238765432),
(3, 'Harp', 'Walkley', 'neurologist', '9 Arizona Court', 722675436),
(4, 'Masha', 'Duce', 'surgeon', '71 Washington Hill', 440654378),
(5, 'Christi', 'Sainteau', 'neurologist', '6 Parkside Trail', 624765434),
(6, 'Kim', 'Buie', 'surgeon', '4486 Reindahl Avenue', 771567876),
(7, 'Nils', 'Cordoba', 'paediatrician', '81 Loftsgordon Plaza', 521098067),
(8, 'Clea', 'Hughman', 'Physiotherapist', '67 Veith Avenue', 467876234),
(9, 'Paulo', 'Knewstub', 'paediatrician', '021 Anderson Circle', 389765009),
(10, 'Florance', 'Tran', 'surgeon', '7874 Monterey Plaza', 447000650);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_patient`
--

CREATE TABLE `doctor_patient` (
  `doc_number` int(11) NOT NULL,
  `patient_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_patient`
--

INSERT INTO `doctor_patient` (`doc_number`, `patient_number`) VALUES
(1, 123),
(2, 124),
(3, 302),
(5, 301),
(6, 300),
(7, 129),
(8, 127),
(9, 125),
(10, 126);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `nurse_number` int(5) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `rotation` varchar(20) DEFAULT NULL,
  `salary` decimal(20,0) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `dept_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`nurse_number`, `firstname`, `surname`, `rotation`, `salary`, `address`, `telephone`, `dept_code`) VALUES
(11, 'Jane', 'Bloodworthe', '1', '60', '5089 Russell Lane', 405, 111),
(12, 'Sally', 'Kovnot', '2', '60', '16692 Heath Place', 608, 121),
(13, 'Andrews', 'Riach', '3', '408', '78 Killdeer Avenue', 249, 126),
(14, 'Tilly', 'Lowing', '4', '408', '9967 Boyd Junction', 249, 137),
(15, 'Jeremy', 'Jerosch', '5', '1000', '36757 Kenwood Trail', 395, 142),
(16, 'Maurisius', 'Inwood', '6', '1500', '768 Fremont Alley', 495, 149),
(17, 'Ambia', 'Frossell', '7', '5000', '698 Warbler Alley', 641, 154),
(18, 'Kitty', 'Kitman', '8', '60', '9 Ronald Regan Drive', 170, 160),
(19, 'Row', 'Aburrow', '9', '790', '86 Calypso Way', 967, 165),
(20, 'Bow', 'Tack', '10', '4500', '5 Forest Trail', 217, 173),
(21, 'Ariana', 'Tack', '11', '428', '5 Forest Trail', 217, 185);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_number` int(5) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `telephone` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_number`, `firstname`, `surname`, `address`, `telephone`) VALUES
(123, 'Laurie', 'Blooman', '68283 Sommers Pass', 2147483647),
(124, 'Matt', 'Albrighton', '8234 Clemons Lane', 2147483647),
(125, 'Alba', 'Bladge', '480 Susan Avenue', 1408630725),
(126, 'Cash', 'Rate', '04480 Center Center', 2147483647),
(127, 'Haven', 'Clifforth', '8933 Comanche Lane', 2147483647),
(128, 'Honor', 'Cousans', '75613 Hayes Way', 2147483647),
(129, 'Salami', 'Fochs', '34440 Declaration La', 2147483647),
(300, 'Nessa', 'Neasam', '59 Dixon Park', 2147483647),
(301, 'Karen', 'Gowans', '980 Tennessee Juncti', 2147483647),
(302, 'Kunal', 'Kumar', '93005 Sachs Circle', 1641440909);

-- --------------------------------------------------------

--
-- Table structure for table `patient_ward`
--

CREATE TABLE `patient_ward` (
  `patient_number` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `diagnosis` varchar(50) DEFAULT NULL,
  `bed_number` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_ward`
--

INSERT INTO `patient_ward` (`patient_number`, `ward_id`, `diagnosis`, `bed_number`) VALUES
(1, 48, 'Cholera', 195),
(2, 31, 'Covid', 198),
(3, 31, 'Covid', 197),
(4, 48, 'Typhoid', 193),
(5, 31, 'Covid', 199),
(6, 50, 'Typhoid', 196),
(7, 45, 'Malaria', 197),
(8, 24, 'Ulcer', 192),
(9, 26, 'Fever', 192),
(10, 24, 'Malaria', 191);

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `ward_id` int(11) NOT NULL,
  `ward_number` int(10) DEFAULT NULL,
  `total_beds` int(50) DEFAULT NULL,
  `nurse_number` int(11) DEFAULT NULL,
  `dept_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`ward_id`, `ward_number`, `total_beds`, `nurse_number`, `dept_code`) VALUES
(24, 102, 10, 13, 111),
(26, 317, 3, 13, 126),
(27, 459, 4, 14, 142),
(31, 205, 2, 12, 121),
(44, 459, 4, 21, 160),
(45, 517, 5, 21, 149),
(46, 659, 6, 16, 154),
(47, 705, 7, 14, 165),
(48, 802, 7, 14, 173),
(49, 917, 9, 16, 185),
(50, 105, 10, 21, 137);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_number`);

--
-- Indexes for table `doctor_patient`
--
ALTER TABLE `doctor_patient`
  ADD PRIMARY KEY (`doc_number`,`patient_number`),
  ADD KEY `patient_number` (`patient_number`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`nurse_number`),
  ADD KEY `dept_code` (`dept_code`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_number`);

--
-- Indexes for table `patient_ward`
--
ALTER TABLE `patient_ward`
  ADD PRIMARY KEY (`patient_number`,`ward_id`),
  ADD KEY `ward_id` (`ward_id`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`ward_id`),
  ADD KEY `nurse_number` (`nurse_number`),
  ADD KEY `dept_code` (`dept_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_number` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `nurse_number` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_number` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `ward`
--
ALTER TABLE `ward`
  MODIFY `ward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor_patient`
--
ALTER TABLE `doctor_patient`
  ADD CONSTRAINT `doctor_patient_ibfk_1` FOREIGN KEY (`doc_number`) REFERENCES `doctor` (`doc_number`),
  ADD CONSTRAINT `doctor_patient_ibfk_2` FOREIGN KEY (`patient_number`) REFERENCES `patient` (`patient_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
