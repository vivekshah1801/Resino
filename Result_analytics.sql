-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 30, 2020 at 03:08 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Result_analytics`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` varchar(20) NOT NULL,
  `subject_id` varchar(20) DEFAULT NULL,
  `exam_type` varchar(20) DEFAULT NULL,
  `max_marks` int(11) DEFAULT NULL,
  `exam_year` int(11) DEFAULT NULL,
  `sem` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `subject_id`, `exam_type`, `max_marks`, `exam_year`, `sem`) VALUES
('1', 'AF111', 'Sessional_1', 36, 2018, 1),
('10', 'AF117', 'Sessional_2', 36, 2018, 1),
('11', 'AF111', 'Sessional_3', 36, 2018, 1),
('12', 'AF115', 'Sessional_3', 36, 2018, 1),
('13', 'AF122', 'Sessional_3', 36, 2018, 1),
('14', 'CT116', 'Sessional_3', 36, 2018, 1),
('15', 'AF117', 'Sessional_3', 36, 2018, 1),
('16', 'AF111', 'External', 60, 2018, 1),
('17', 'AF115', 'External', 60, 2018, 1),
('18', 'AF122', 'External', 60, 2018, 1),
('19', 'CT116', 'External', 60, 2018, 1),
('2', 'AF115', 'Sessional_1', 36, 2018, 1),
('20', 'AF117', 'External', 60, 2018, 1),
('21', 'ES110', 'External', 60, 2018, 1),
('22', 'AF201', 'Sessional_1', 36, 2019, 2),
('23', 'AF215', 'Sessional_1', 36, 2019, 2),
('24', 'AF212', 'Sessional_1', 36, 2019, 2),
('25', 'AF214', 'Sessional_1', 36, 2019, 2),
('26', 'CT215', 'Sessional_1', 36, 2019, 2),
('27', 'AF201', 'Sessional_2', 36, 2019, 2),
('28', 'AF215', 'Sessional_2', 36, 2019, 2),
('29', 'AF212', 'Sessional_2', 36, 2019, 2),
('3', 'AF122', 'Sessional_1', 36, 2018, 1),
('30', 'AF214', 'Sessional_2', 36, 2019, 2),
('31', 'CT215', 'Sessional_2', 36, 2019, 2),
('32', 'AF201', 'Sessional_3', 36, 2019, 2),
('33', 'AF215', 'Sessional_3', 36, 2019, 2),
('34', 'AF212', 'Sessional_3', 36, 2019, 2),
('35', 'AF214', 'Sessional_3', 36, 2019, 2),
('36', 'CT215', 'Sessional_3', 36, 2019, 2),
('37', 'AF201', 'External', 60, 2019, 2),
('38', 'AF215', 'External', 60, 2019, 2),
('39', 'AF212', 'External', 60, 2019, 2),
('4', 'CT116', 'Sessional_1', 36, 2018, 1),
('40', 'AF214', 'External', 60, 2019, 2),
('41', 'CT215', 'External', 60, 2019, 2),
('42', 'AM210', 'External', 60, 2019, 2),
('43', 'AF301', 'Sessional_1', 36, 2019, 3),
('44', 'CE308', 'Sessional_1', 36, 2019, 3),
('45', 'CE310', 'Sessional_1', 36, 2019, 3),
('46', 'CE311', 'Sessional_1', 36, 2019, 3),
('47', 'CE313', 'Sessional_1', 36, 2019, 3),
('48', 'AF301', 'Sessional_2', 36, 2019, 3),
('49', 'CE308', 'Sessional_2', 36, 2019, 3),
('5', 'AF117', 'Sessional_1', 36, 2018, 1),
('50', 'CE310', 'Sessional_2', 36, 2019, 3),
('51', 'CE311', 'Sessional_2', 36, 2019, 3),
('52', 'CE313', 'Sessional_2', 36, 2019, 3),
('53', 'AF301', 'Sessional_3', 36, 2019, 3),
('54', 'CE308', 'Sessional_3', 36, 2019, 3),
('55', 'CE310', 'Sessional_3', 36, 2019, 3),
('56', 'CE311', 'Sessional_3', 36, 2019, 3),
('57', 'CE313', 'Sessional_3', 36, 2019, 3),
('58', 'AF301', 'External', 60, 2019, 3),
('59', 'CE308', 'External', 60, 2019, 3),
('6', 'AF111', 'Sessional_2', 36, 2018, 1),
('60', 'CE310', 'External', 60, 2019, 3),
('61', 'CE311', 'External', 60, 2019, 3),
('62', 'CE313', 'External', 60, 2019, 3),
('63', 'AF310', 'External', 60, 2019, 3),
('7', 'AF115', 'Sessional_2', 36, 2018, 1),
('8', 'AF122', 'Sessional_2', 36, 2018, 1),
('9', 'CT116', 'Sessional_2', 36, 2018, 1);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `exam_id` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `marks_obtained` decimal(10,2) DEFAULT NULL,
  `marks_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`exam_id`, `student_id`, `marks_obtained`, `marks_status`) VALUES
('1', '18CEUON016', '36.00', 'Present'),
('2', '18CEUON016', '30.00', 'Present'),
('5', '18CEUON016', '32.00', 'Present'),
('3', '18CEUON016', '35.00', 'Present'),
('4', '18CEUON016', '32.00', 'Present'),
('6', '18CEUON016', '31.00', 'Present'),
('11', '18CEUON016', '26.00', 'Present'),
('7', '18CEUON016', '31.00', 'Present'),
('12', '18CEUON016', '30.00', 'Present'),
('8', '18CEUON016', '34.00', 'Present'),
('13', '18CEUON016', '31.00', 'Present'),
('9', '18CEUON016', '30.00', 'Present'),
('14', '18CEUON016', '30.00', 'Present'),
('10', '18CEUON016', '35.00', 'Present'),
('15', '18CEUON016', '35.00', 'Present'),
('16', '18CEUON016', '46.00', 'Present'),
('17', '18CEUON016', '46.00', 'Present'),
('20', '18CEUON016', '55.00', 'Present'),
('18', '18CEUON016', '39.00', 'Present'),
('19', '18CEUON016', '49.00', 'Present'),
('21', '18CEUON016', '46.00', 'Present'),
('22', '18CEUON016', '32.00', 'Present'),
('27', '18CEUON016', '24.00', 'Present'),
('32', '18CEUON016', '26.00', 'Present'),
('23', '18CEUON016', '35.00', 'Present'),
('28', '18CEUON016', '32.00', 'Present'),
('24', '18CEUON016', '25.00', 'Present'),
('29', '18CEUON016', '27.00', 'Present'),
('34', '18CEUON016', '27.00', 'Present'),
('25', '18CEUON016', '36.00', 'Present'),
('30', '18CEUON016', '32.00', 'Present'),
('35', '18CEUON016', '35.00', 'Present'),
('26', '18CEUON016', '34.00', 'Present'),
('37', '18CEUON016', '51.00', 'Present'),
('39', '18CEUON016', '53.00', 'Present'),
('40', '18CEUON016', '48.00', 'Present'),
('38', '18CEUON016', '51.00', 'Present'),
('42', '18CEUON016', '49.00', 'Present'),
('41', '18CEUON016', '49.00', 'Present'),
('33', '18CEUON016', '28.00', 'Present'),
('31', '18CEUON016', '33.00', 'Present'),
('36', '18CEUON016', '29.00', 'Present'),
('43', '18CEUON016', '23.00', 'Present'),
('48', '18CEUON016', '22.00', 'Present'),
('53', '18CEUON016', '31.00', 'Present'),
('44', '18CEUON016', '22.00', 'Present'),
('49', '18CEUON016', '25.00', 'Present'),
('54', '18CEUON016', '23.00', 'Present'),
('45', '18CEUON016', '30.00', 'Present'),
('50', '18CEUON016', '30.00', 'Present'),
('55', '18CEUON016', '22.00', 'Present'),
('46', '18CEUON016', '26.00', 'Present'),
('51', '18CEUON016', '29.00', 'Present'),
('56', '18CEUON016', '24.00', 'Present'),
('47', '18CEUON016', '28.00', 'Present'),
('52', '18CEUON016', '25.00', 'Present'),
('57', '18CEUON016', '22.00', 'Present'),
('58', '18CEUON016', '40.00', 'Present'),
('63', '18CEUON016', '24.00', 'Present'),
('59', '18CEUON016', '40.00', 'Present'),
('60', '18CEUON016', '45.00', 'Present'),
('61', '18CEUON016', '45.00', 'Present'),
('62', '18CEUON016', '45.00', 'Present'),
('1', '18CEUON012', '30.00', 'Present'),
('6', '18CEUON012', '30.00', 'Present'),
('11', '18CEUON012', '30.00', 'Present'),
('12', '18CEUON012', '30.00', 'Present'),
('7', '18CEUON012', '30.00', 'Present'),
('2', '18CEUON012', '30.00', 'Present'),
('5', '18CEUON012', '30.00', 'Present'),
('10', '18CEUON012', '30.00', 'Present'),
('15', '18CEUON012', '30.00', 'Present'),
('13', '18CEUON012', '30.00', 'Present'),
('8', '18CEUON012', '30.00', 'Present'),
('3', '18CEUON012', '30.00', 'Present'),
('4', '18CEUON012', '30.00', 'Present'),
('9', '18CEUON012', '30.00', 'Present'),
('14', '18CEUON012', '30.00', 'Present'),
('16', '18CEUON012', '40.00', 'Present'),
('17', '18CEUON012', '40.00', 'Present'),
('20', '18CEUON012', '40.00', 'Present'),
('18', '18CEUON012', '40.00', 'Present'),
('19', '18CEUON012', '40.00', 'Present'),
('21', '18CEUON012', '40.00', 'Present'),
('1', '1', '36.00', 'Present'),
('6', '1', '36.00', 'Present'),
('11', '1', '36.00', 'Present'),
('12', '1', '36.00', 'Present'),
('7', '1', '36.00', 'Present'),
('2', '1', '36.00', 'Present'),
('5', '1', '36.00', 'Present'),
('10', '1', '36.00', 'Present'),
('15', '1', '36.00', 'Present'),
('13', '1', '36.00', 'Present'),
('8', '1', '36.00', 'Present'),
('3', '1', '36.00', 'Present'),
('4', '1', '36.00', 'Present'),
('9', '1', '36.00', 'Present'),
('14', '1', '36.00', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `student_spi_cpi`
--

CREATE TABLE `student_spi_cpi` (
  `student_id` varchar(20) NOT NULL,
  `sem` int(5) NOT NULL,
  `spi` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_spi_cpi`
--

INSERT INTO `student_spi_cpi` (`student_id`, `sem`, `spi`) VALUES
('1', 1, '9.23'),
('1', 2, '9.54'),
('1', 3, '8.99'),
('1', 4, '9.40'),
('1', 5, '9.20'),
('18CEUON012', 1, '8.00'),
('18CEUON012', 2, '8.67'),
('18CEUON012', 3, '7.89'),
('18CEUON016', 1, '5.00'),
('18CEUON016', 2, '9.50'),
('18CEUON016', 3, '9.30'),
('18CEUON016', 4, '8.50'),
('2', 1, '8.00'),
('2', 2, '8.00'),
('2', 3, '8.00'),
('2', 4, '8.00');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` varchar(20) NOT NULL,
  `Subject_name` varchar(255) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `sem` int(11) DEFAULT NULL,
  `isViva` tinyint(1) DEFAULT NULL,
  `isPrac` tinyint(1) DEFAULT NULL,
  `isLab` tinyint(1) DEFAULT NULL,
  `isElective` tinyint(1) DEFAULT NULL,
  `credit` decimal(5,1) DEFAULT NULL,
  `Batch` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `Subject_name`, `subject_code`, `branch`, `sem`, `isViva`, `isPrac`, `isLab`, `isElective`, `credit`, `Batch`) VALUES
('AF111', 'MATHEMATICS-I', 'Maths-I', 'CE', 1, 0, 0, 0, 0, '4.0', 2018),
('AF111', 'MATHEMATICS I', 'Maths-I', 'IT', 1, 0, 0, 0, 0, '4.0', 2018),
('AF115', 'ENGINEERING GRAPHICS', 'EG', 'CE', 1, 1, 1, 1, 0, '5.5', 2018),
('AF115', 'ENGINEERING GRAPHICS', 'EG', 'IT', 1, 1, 1, 1, 0, '5.5', 2018),
('AF117', 'ENGINEERING MECHANICS', 'EM', 'CE', 1, 1, 0, 1, 0, '4.0', 2018),
('AF117', 'ENGINEERING MECHANICS', 'EM', 'IT', 1, 1, 1, 1, 0, '4.0', 2018),
('AF122', 'BASIC ELECT. & ELECTRO. ENGG.', 'BEEE', 'CE', 1, 1, 1, 1, 0, '5.0', 2018),
('AF122', 'BASIC ELECT. & ELECTRO. ENGG', 'BEEE', 'IT', 1, 1, 1, 1, 0, '5.0', 2018),
('AF136', 'WORK SHOP-I', 'WS-I', 'CE', 1, 1, 1, 1, 0, '1.0', 2018),
('AF136', 'WORKSHOP - I', 'WS-I', 'IT', 1, 1, 1, 1, 0, '1.0', 2018),
('AF201', 'MATHEMATICS - II', 'Maths-II', 'CE', 2, 0, 0, 0, 0, '4.0', 2018),
('AF201', 'MATHEMATICS - II', 'Maths-III', 'IT', 2, 0, 0, 0, 0, '4.0', 2018),
('AF212', 'ELECTRONICS PRINCIPLES', 'EP', 'CE', 2, 1, 1, 1, 0, '5.0', 2018),
('AF212', 'ELECTRICAL PRINCIPLES', 'EP', 'IT', 2, 1, 1, 1, 0, '5.0', 2018),
('AF214', 'MECHANICS OF SOLIDS', 'MOS', 'CE', 2, 1, 0, 1, 0, '4.0', 2018),
('AF214', 'MECHANICAL OF SOLIDS', 'MOS', 'IT', 2, 1, 1, 1, 0, '4.0', 2018),
('AF215', 'HEAT POWER', 'HP', 'CE', 2, 1, 0, 1, 0, '5.0', 2018),
('AF215', 'HEAT POWER', 'HP', 'IT', 2, 1, 1, 1, 0, '5.0', 2018),
('AF301', 'MATHEMATICS - III', 'Maths-III', 'CE', 3, 0, 0, 0, 0, '4.0', 2018),
('AF301', 'MATHEMATICS - III', 'Maths-III', 'IT', 3, 0, 0, 0, 0, '4.0', 2018),
('AF310', 'FINANCIAL & MANAGERIAL ACCOUNTING', 'FMA', 'CE', 3, 0, 0, 1, 0, '3.0', 2018),
('AF410', 'FINANCIAL & MANAGERIAL ACCOUNTING', 'FMA', 'IT', 4, 0, 0, 0, 0, '3.0', 2018),
('AF411', 'MATHEMATICS - IV', 'Maths-IV', 'IT', 4, 0, 0, 0, 0, '4.0', 2018),
('AM210', 'ENGG.ECO.&PRINCIPLES OF MANAGEMENT', 'EEPM', 'CE', 2, 0, 0, 1, 0, '3.0', 2018),
('AM210', 'ENGG. ECO. & PRINCIPLES OF MANAGEMENT', 'EEPM', 'IT', 2, 0, 0, 0, 0, '3.0', 2018),
('CE308', 'DESIGN OF DIGITAL CIRCUITS', 'DDC', 'CE', 3, 1, 1, 1, 0, '5.0', 2018),
('CE310', 'DATA STRUCTURES & ALGORITHMS', 'DSA', 'CE', 3, 1, 1, 1, 0, '5.0', 2018),
('CE311', 'OBJECT ORIENTED PROG. WITH JAVA', 'OOPJ', 'CE', 3, 1, 1, 1, 0, '5.0', 2018),
('CE313', 'DATABASE MANAGEMENT SYSTEM', 'DBMS', 'CE', 3, 1, 0, 1, 0, '5.0', 2018),
('CE409', 'COMPUTER PERIPHERALS', 'CPI', 'CE', 4, 1, 1, 1, 0, '1.0', 2018),
('CE410', 'JAVA TECHNOLOGY', 'JT', 'CE', 4, 1, 1, 1, 0, '5.0', 2018),
('CE414', 'DESIGN & ANALYSIS OF ALGORITHM', 'DAA', 'CE', 4, 1, 1, 1, 0, '5.0', 2018),
('CE415', 'DISCRETE MATHEMATICS', 'DM', 'CE', 4, 1, 1, 1, 0, '5.0', 2018),
('CE417', 'COMPUTER SYSTEM ARCHITECTURE', 'CSA', 'CE', 4, 1, 1, 1, 0, '5.0', 2018),
('CE418', 'SOFTWARE ENGINEERING', 'SE', 'CE', 4, 1, 1, 1, 0, '5.0', 2018),
('CE419', 'SOFTWARE PROJECT', 'SP', 'CE', 4, 1, 0, 1, 0, '1.0', 2018),
('CT116', 'ELE. OF LINUX OS & C PROG.-I', 'ELCP', 'CE', 1, 1, 1, 1, 0, '5.0', 2018),
('CT116', 'ELE. OF LINUX OS & C PROG-I', 'ELCP', 'IT', 1, 1, 1, 1, 0, '5.0', 2018),
('CT215', 'C PROGRAMMING II', 'CP-II', 'CE', 2, 1, 1, 1, 0, '5.0', 2018),
('CT215', 'C PROGRAMMING II', 'CP-II', 'IT', 2, 1, 1, 1, 0, '5.0', 2018),
('CT217', 'ELECTRONICS WORKSHOP', 'EWS', 'CE', 2, 1, 1, 1, 0, '1.0', 2018),
('CT217', 'ELECTRONICS WORKSHOP', 'EWS', 'IT', 2, 1, 1, 1, 0, '1.0', 2018),
('ES110', 'ENVIRONMENTAL SCIENCE', 'ES', 'CE', 1, 0, 0, 1, 0, '3.0', 2018),
('ES110', 'ENVIRONMENTAL SCIENCE', 'ES', 'IT', 1, 0, 0, 0, 0, '3.0', 2018),
('IT301', 'DESIGN OF DIGITAL CIRCUITS', 'DDC', 'IT', 3, 1, 1, 1, 0, '5.0', 2018),
('IT303', 'OBJECT ORIENTED PROGRAMMING', 'OOP', 'IT', 3, 1, 1, 1, 0, '5.0', 2018),
('IT304', 'DISCRETE MATHEMATICS', 'DM', 'IT', 3, 1, 1, 1, 0, '5.0', 2018),
('IT305', 'COMMUNICATION SYSTEMS', 'CS', 'IT', 3, 1, 1, 1, 0, '5.0', 2018),
('IT306', 'COMPUTER PERIPHERALS', 'CPI', 'IT', 3, 1, 1, 1, 0, '3.0', 2018),
('IT402', 'COMPUTER ORGANIZATION', 'CO', 'IT', 4, 1, 1, 1, 0, '5.0', 2018),
('IT403', 'MICROPROCESSOR ARCHI. PROGRAMMING & INTERFACING', 'MAPI', 'IT', 4, 1, 1, 1, 0, '5.0', 2018),
('IT406', 'DATA STRUCTURES & ALGORITHM', 'DSA', 'IT', 4, 1, 1, 1, 0, '5.0', 2018),
('IT407', 'COMPUTER & COMMUNICATION NETWORK', 'CCN', 'IT', 4, 1, 1, 1, 0, '5.0', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `student_id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `university` varchar(100) DEFAULT NULL,
  `Batch` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`student_id`, `name`, `password`, `branch`, `sem`, `email`, `contact`, `university`, `Batch`) VALUES
('1', 'harvey', 'spectre', 'CE', 6, 'user@gmail.com', '9876543212', 'DDU', 2018),
('18CEUON012', 'anthony', '12345', 'CE', 5, 'anthony@gmail.com', '1234567890', 'DDU', 2018),
('18CEUON016', 'priyavardhan', '12345', 'CE', 4, 'priyavardhan0123@gmail.com', '1234123459', 'univ', 2018),
('2', 'user', 'user', 'IT', 6, 'user@gmail.com', '1234567890', 'ddu', 2017);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`),
  ADD KEY `exam_ibfk_1` (`subject_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD KEY `marks_ibfk_2` (`student_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `student_spi_cpi`
--
ALTER TABLE `student_spi_cpi`
  ADD PRIMARY KEY (`student_id`,`sem`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`,`branch`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`student_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_3` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_spi_cpi`
--
ALTER TABLE `student_spi_cpi`
  ADD CONSTRAINT `student_spi_cpi_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
