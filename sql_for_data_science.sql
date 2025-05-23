-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 02:39 PM
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
-- Database: `sql_for_data_science`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `address` char(25) DEFAULT NULL,
  `salary` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `age`, `address`, `salary`) VALUES
(1, 'Alice', 28, 'New York', 55000.00),
(2, 'Bob', 35, 'Los Angeles', 62000.00),
(3, 'Charlie', 30, 'Chicago', 58000.00),
(4, 'David', 40, 'Houston', 72000.00),
(5, 'Eve', 26, 'Phoenix', 48000.00),
(6, 'Frank', 38, 'Philadelphia', 69000.00),
(7, 'Grace', 31, 'San Antonio', 53000.00),
(8, 'Heidi', 29, 'San Diego', 60000.00),
(9, 'Ivan', 34, 'Dallas', 64000.00),
(10, 'Judy', 27, 'San Jose', 51000.00),
(11, 'Karl', 36, 'Austin', 70000.00),
(12, 'Laura', 33, 'Jacksonville', 62000.00),
(13, 'Mallory', 41, 'Fort Worth', 75000.00),
(14, 'Niaj', 25, 'Columbus', 46000.00),
(15, 'Olivia', 32, 'Charlotte', 59000.00),
(16, 'Peggy', 37, 'Indianapolis', 68000.00),
(17, 'Quentin', 29, 'Seattle', 61000.00),
(18, 'Rupert', 39, 'Denver', 72000.00),
(19, 'Sybil', 28, 'Washington', 56000.00),
(20, 'Trent', 35, 'Boston', 63000.00);

-- --------------------------------------------------------

--
-- Table structure for table `customers1`
--

CREATE TABLE `customers1` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  `ADDRESS` char(25) DEFAULT NULL,
  `SALARY` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers2`
--

CREATE TABLE `customers2` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  `ADDRESS` char(25) DEFAULT NULL,
  `SALARY` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers3`
--

CREATE TABLE `customers3` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) DEFAULT 'Not Available',
  `AGE` int(11) NOT NULL,
  `ADDRESS` char(25) DEFAULT NULL,
  `SALARY` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers4`
--

CREATE TABLE `customers4` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  `ADDRESS` char(25) DEFAULT NULL,
  `SALARY` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers5`
--

CREATE TABLE `customers5` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `AGE` int(11) NOT NULL CHECK (`AGE` >= 18),
  `ADDRESS` char(25) DEFAULT NULL,
  `SALARY` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deep_customers`
--

CREATE TABLE `deep_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `address` char(25) DEFAULT NULL,
  `salary` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deep_customers`
--

INSERT INTO `deep_customers` (`id`, `name`, `age`, `address`, `salary`) VALUES
(1, 'Alice', 28, 'New York', 55000.00),
(2, 'Bob', 35, 'Los Angeles', 62000.00),
(3, 'Charlie', 30, 'Chicago', 58000.00),
(4, 'David', 40, 'Houston', 72000.00),
(5, 'Eve', 26, 'Phoenix', 48000.00),
(6, 'Frank', 38, 'Philadelphia', 69000.00),
(7, 'Grace', 31, 'San Antonio', 53000.00),
(8, 'Heidi', 29, 'San Diego', 60000.00),
(9, 'Ivan', 34, 'Dallas', 64000.00),
(10, 'Judy', 27, 'San Jose', 51000.00),
(11, 'Karl', 36, 'Austin', 70000.00),
(12, 'Laura', 33, 'Jacksonville', 62000.00),
(13, 'Mallory', 41, 'Fort Worth', 75000.00),
(14, 'Niaj', 25, 'Columbus', 46000.00),
(15, 'Olivia', 32, 'Charlotte', 59000.00),
(16, 'Peggy', 37, 'Indianapolis', 68000.00),
(17, 'Quentin', 29, 'Seattle', 61000.00),
(18, 'Rupert', 39, 'Denver', 72000.00),
(19, 'Sybil', 28, 'Washington', 56000.00),
(20, 'Trent', 35, 'Boston', 63000.00);

-- --------------------------------------------------------

--
-- Table structure for table `new_customers`
--

CREATE TABLE `new_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `address` char(25) DEFAULT NULL,
  `salary` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_customers`
--

INSERT INTO `new_customers` (`id`, `name`, `age`, `address`, `salary`) VALUES
(1, 'Alice', 28, 'New York', 55000.00),
(2, 'Bob', 35, 'Los Angeles', 62000.00),
(3, 'Charlie', 30, 'Chicago', 58000.00),
(4, 'David', 40, 'Houston', 72000.00),
(5, 'Eve', 26, 'Phoenix', 48000.00),
(6, 'Frank', 38, 'Philadelphia', 69000.00),
(7, 'Grace', 31, 'San Antonio', 53000.00),
(8, 'Heidi', 29, 'San Diego', 60000.00),
(9, 'Ivan', 34, 'Dallas', 64000.00),
(10, 'Judy', 27, 'San Jose', 51000.00),
(11, 'Karl', 36, 'Austin', 70000.00),
(12, 'Laura', 33, 'Jacksonville', 62000.00),
(13, 'Mallory', 41, 'Fort Worth', 75000.00),
(14, 'Niaj', 25, 'Columbus', 46000.00),
(15, 'Olivia', 32, 'Charlotte', 59000.00),
(16, 'Peggy', 37, 'Indianapolis', 68000.00),
(17, 'Quentin', 29, 'Seattle', 61000.00),
(18, 'Rupert', 39, 'Denver', 72000.00),
(19, 'Sybil', 28, 'Washington', 56000.00),
(20, 'Trent', 35, 'Boston', 63000.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `DATE` datetime DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `salary` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shall_customers`
--

CREATE TABLE `shall_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `address` char(25) DEFAULT NULL,
  `salary` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_age` (`age`);

--
-- Indexes for table `customers2`
--
ALTER TABLE `customers2`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `customers3`
--
ALTER TABLE `customers3`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `customers4`
--
ALTER TABLE `customers4`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customers5`
--
ALTER TABLE `customers5`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `deep_customers`
--
ALTER TABLE `deep_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CUSTOMER_ID` (`CUSTOMER_ID`);

--
-- Indexes for table `shall_customers`
--
ALTER TABLE `shall_customers`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
