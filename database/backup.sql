-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 07, 2024 at 07:47 PM
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
-- Database: `e_taaviz`
--

-- --------------------------------------------------------

--
-- Table structure for table `mother_child_protection`
--

CREATE TABLE `mother_child_protection` (
  `id` int(6) UNSIGNED NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `husband_mobile_number` varchar(20) NOT NULL,
  `mcts_rch_id` varchar(20) NOT NULL,
  `last_menstrual_period` date NOT NULL,
  `expected_delivery_date` date NOT NULL,
  `number_of_pregnancies` int(6) NOT NULL,
  `last_delivery_conducted_at` varchar(255) NOT NULL,
  `current_delivery` varchar(255) NOT NULL,
  `child_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `birth_weight` decimal(10,2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birth_registration_number` varchar(255) NOT NULL,
  `mcts_rch_id_child` varchar(20) NOT NULL,
  `aww_number` varchar(20) NOT NULL,
  `block_village_ward` varchar(255) NOT NULL,
  `asha_name` varchar(255) NOT NULL,
  `anm_name` varchar(255) NOT NULL,
  `clinic` varchar(255) NOT NULL,
  `hospital` varchar(255) NOT NULL,
  `phc_town` varchar(255) NOT NULL,
  `anm_contact_number` varchar(20) NOT NULL,
  `hospital_contact_number` varchar(20) NOT NULL,
  `awc_reg_no` varchar(20) NOT NULL,
  `awc_reg_date` date NOT NULL,
  `sub_center_reg_no` varchar(20) NOT NULL,
  `sub_center_reg_date` date NOT NULL,
  `referred_to` varchar(255) NOT NULL,
  `child_aadhar_no` varchar(20) NOT NULL,
  `mother_aadhar_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mother_child_protection`
--

INSERT INTO `mother_child_protection` (`id`, `mother_name`, `dob`, `father_name`, `address`, `mobile_number`, `husband_mobile_number`, `mcts_rch_id`, `last_menstrual_period`, `expected_delivery_date`, `number_of_pregnancies`, `last_delivery_conducted_at`, `current_delivery`, `child_name`, `date_of_birth`, `birth_weight`, `gender`, `birth_registration_number`, `mcts_rch_id_child`, `aww_number`, `block_village_ward`, `asha_name`, `anm_name`, `clinic`, `hospital`, `phc_town`, `anm_contact_number`, `hospital_contact_number`, `awc_reg_no`, `awc_reg_date`, `sub_center_reg_no`, `sub_center_reg_date`, `referred_to`, `child_aadhar_no`, `mother_aadhar_no`) VALUES
(4, 'aaaaaaaaaaaaaaaa', '0000-00-00', 'aaaaaaaaaaaaaaaaaaaa', '', '', '', '', '2024-03-13', '2024-03-18', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(5, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(6, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(7, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(8, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(9, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(10, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(11, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(12, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(13, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(14, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(15, 'aaaaaaaaaaaaaaaa', '2022-05-11', 'aaaaaaaaaaaaaaaaaaaa', 'gaafaf', '1236548856', '2541369876', '78', '2024-03-13', '2024-03-18', 8, '46', '4', 'miyaya', '2024-03-11', 0.00, 'Female', '1236', 'gauri', '45', 'hasah', 'nanan', 'gags', 'ahah', 'aaba', 'gaga', '7895745622', '1236547895', '', '0000-00-00', '', '0000-00-00', 'sweeta', '', ''),
(17, 'abha', '2004-06-14', 'shyam', 'sector 3', '9718752322', '9718752322', '789644', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '444444444', ''),
(18, 'abha', '2004-06-14', 'shyam', 'sector 3', '9718752322', '9718752322', '789644', '2024-03-10', '2024-03-22', 4, '12', '10', 'sheeta', '2023-06-15', 30.00, 'Female', '25', 'saha', '78', 'sihi', 'meena', 'daya', 'raj nusrhing', 'aims', 'sultanpur', '9718752322', '10', '12', '2024-03-10', '12', '2024-03-11', 'daaf', '444444444', '1265478952211'),
(22, 'sdfgthy', '2014-06-02', 'sdfghj', 'asdfghj', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(23, 'sdfgthy', '2014-06-02', 'sdfghj', 'asdfghj', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(24, '', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(25, '', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(26, '', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(27, '', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(28, '', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(29, 'Radha', '2020-02-05', 'shyam', 'sector-3', '9718752322', '9718752322', '87964', '0000-00-00', '0000-00-00', 0, '', '', 'ritika', '2021-06-08', 29.00, 'Female', '125633255', '45', '87', 'sihi village', 'sikha', '98564', 'raj nursing', 'aiims', 'vetnam collony', '9875423155', '9685741235', '1254169', '2023-05-30', '2365445', '2024-03-03', 'Dr.Sita', '2365147896', '1236547895'),
(30, 'Radha', '2020-02-06', 'shyam', 'sector-3', '9718752322', '9718752322', '87964', '0000-00-00', '0000-00-00', 0, '', '', 'ritika', '2021-06-08', 29.00, 'Female', '125633255', '45', '87', 'sihi village', 'sikha', '98564', 'raj nursing', 'aiims', 'vetnam collony', '9875423155', '9685741235', '1254169', '2023-05-30', '2365445', '2024-03-03', 'Dr.Sita', '2365147896', '1236547895'),
(31, 'hvcserth', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(32, 'hvcserth', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(33, 'hvcserth', '2019-01-04', 'hgfds', 'hgfds', '52254', '874', '752582', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(34, 'hvcserth', '2019-01-04', 'hgfds', 'hgfds', '52254', '874', '752582', '0000-00-00', '0000-00-00', 0, '', '', 'ghfdsfgh', '2024-03-13', 12.00, 'Female', '5841', '84152', '5852', 'tyrew', 'ghg', 'gyt', 'gtr', 'gtres', 'gf', '5552', '5852', '', '0000-00-00', '', '0000-00-00', '5852', '684126841', '6841269841'),
(35, 'hvcserth', '2019-01-04', 'hgfds', 'hgfds', '52254', '874', '752582', '0000-00-00', '0000-00-00', 0, '', '', 'ghfdsfgh', '2024-03-13', 12.00, 'Female', '5841', '84152', '5852', 'tyrew', 'ghg', 'gyt', 'gtr', 'gtres', 'gf', '5552', '5852', '', '0000-00-00', '', '0000-00-00', '5852', '684126841', '6841269841'),
(36, 'hvcserth', '2019-01-04', 'hgfds', 'hgfds', '52254', '874', '752582', '0000-00-00', '0000-00-00', 0, '', '', 'ghfdsfgh', '2024-03-13', 12.00, 'Female', '5841', '84152', '5852', 'tyrew', 'ghg', 'gyt', 'gtr', 'gtres', 'gf', '5552', '5852', '', '0000-00-00', '', '0000-00-00', '5852', '684126841', '6841269841'),
(37, 'hvcserth', '2019-01-04', 'hgfds', 'hgfds', '52254', '874', '752582', '0000-00-00', '0000-00-00', 0, '', '', 'ghfdsfgh', '2024-03-13', 12.00, 'Female', '5841', '84152', '5852', 'tyrew', 'ghg', 'gyt', 'gtr', 'gtres', 'gf', '5552', '5852', '', '0000-00-00', '', '0000-00-00', '5852', '684126841', '6841269841'),
(38, 'hvcserth', '2019-01-04', 'hgfds', 'hgfds', '52254', '874', '752582', '0000-00-00', '0000-00-00', 0, '', '', 'ghfdsfgh', '2024-03-13', 12.00, 'Female', '5841', '84152', '5852', 'tyrew', 'ghg', 'gyt', 'gtr', 'gtres', 'gf', '5552', '5852', '', '0000-00-00', '', '0000-00-00', '5852', '684126841', '6841269841'),
(39, 'hgfdsa', '0000-00-00', '', 'ytreswa', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(40, 'hgfdsa', '0000-00-00', '', 'ytreswa', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(41, 'hgfdsa', '2024-03-04', '', 'ytreswa', '7414', '2', '552', '0000-00-00', '0000-00-00', 0, '', '', '4741', '2024-03-04', 111.00, 'Female', '1', '', '', '', '', '', 'bbbbbbbbbbbbbbbbbb', 'ggfffffffffffffffffff', 'bbbbbbbbbbbbbbbbbbbbb', '', '1111111111111', '111111111111111', '2024-03-12', '4444444444444444', '2024-03-19', 'bbbbbbbbbbbbb', '11111111111111111', '55555555555555555555'),
(42, 'hgfdsa', '2024-03-04', '', 'ytreswa', '7414', '2', '552', '0000-00-00', '0000-00-00', 0, '', '', '4741', '2024-03-04', 111.00, 'Female', '1', '', '', '', '', '', 'bbbbbbbbbbbbbbbbbb', 'ggfffffffffffffffffff', 'bbbbbbbbbbbbbbbbbbbbb', '', '1111111111111', '111111111111111', '2024-03-12', '4444444444444444', '2024-03-19', 'bbbbbbbbbbbbb', '11111111111111111', '55555555555555555555'),
(43, 'hgfdsa', '2024-03-04', '', 'ytreswa', '7414', '2', '552', '0000-00-00', '0000-00-00', 0, '', '', '4741', '2024-03-04', 111.00, 'Female', '1', '', '', '', '', '', 'bbbbbbbbbbbbbbbbbb', 'ggfffffffffffffffffff', 'bbbbbbbbbbbbbbbbbbbbb', '', '1111111111111', '111111111111111', '2024-03-12', '4444444444444444', '2024-03-19', 'bbbbbbbbbbbbb', '11111111111111111', '55555555555555555555'),
(44, 'hgfdsa', '2024-03-04', 'vvvvvvvvvvvvv', 'ytreswa', '7414', '2', '552', '0000-00-00', '0000-00-00', 0, '', '', '4741', '2024-03-04', 111.00, 'Female', '1', '', '', '', '', '', 'bbbbbbbbbbbbbbbbbb', 'ggfffffffffffffffffff', 'bbbbbbbbbbbbbbbbbbbbb', '', '1111111111111', '111111111111111', '2024-03-12', '4444444444444444', '2024-03-19', 'bbbbbbbbbbbbb', '11111111111111111', '55555555555555555555'),
(45, 'hgfdsa', '2024-03-04', 'vvvvvvvvvvvvv', 'ytreswa', '7414', '2', '552', '0000-00-00', '0000-00-00', 0, '', '', '4741', '2024-03-04', 111.00, 'Female', '1', '', '', '', '', '', 'bbbbbbbbbbbbbbbbbb', 'ggfffffffffffffffffff', 'bbbbbbbbbbbbbbbbbbbbb', '', '1111111111111', '111111111111111', '2024-03-12', '4444444444444444', '2024-03-19', 'bbbbbbbbbbbbb', '11111111111111111', '55555555555555555555'),
(46, 'hgfdsa', '2024-03-04', 'vvvvvvvvvvvvv', 'ytreswa', '7414', '2', '552', '0000-00-00', '0000-00-00', 0, '', '', '4741', '2024-03-04', 111.00, 'Female', '1', '', '', '', '', '', 'bbbbbbbbbbbbbbbbbb', 'ggfffffffffffffffffff', 'bbbbbbbbbbbbbbbbbbbbb', '', '1111111111111', '111111111111111', '2024-03-12', '4444444444444444', '2024-03-19', 'bbbbbbbbbbbbb', '11111111111111111', '55555555555555555555'),
(47, 'hgfdsa', '2024-03-04', 'vvvvvvvvvvvvv', 'ytreswa', '7414', '2', '552', '0000-00-00', '0000-00-00', 0, '', '', '4741', '2024-03-04', 111.00, 'Female', '1', '', '4444444', 'bbbbbbbbbbbbb', 'ggggggggggggg', 'xxxxxxxxxxxxxxxx', 'bbbbbbbbbbbbbbbbbb', 'ggfffffffffffffffffff', 'bbbbbbbbbbbbbbbbbbbbb', '', '1111111111111', '111111111111111', '2024-03-12', '4444444444444444', '2024-03-19', 'bbbbbbbbbbbbb', '11111111111111111', '55555555555555555555'),
(48, 'hgfdsa', '2024-03-04', 'vvvvvvvvvvvvv', 'ytreswa', '7414', '2', '552', '0000-00-00', '0000-00-00', 0, '', '', '4741', '2024-03-04', 111.00, 'Female', '1', '', '4444444', 'bbbbbbbbbbbbb', 'ggggggggggggg', 'xxxxxxxxxxxxxxxx', 'bbbbbbbbbbbbbbbbbb', 'ggfffffffffffffffffff', 'bbbbbbbbbbbbbbbbbbbbb', '', '1111111111111', '111111111111111', '2024-03-12', '4444444444444444', '2024-03-19', 'bbbbbbbbbbbbb', '11111111111111111', '55555555555555555555'),
(49, 'hgfdsa', '2024-03-04', 'vvvvvvvvvvvvv', 'ytreswa', '7414', '2', '552', '0000-00-00', '0000-00-00', 0, '', '', '4741', '2024-03-04', 111.00, 'Female', '1', '', '4444444', 'bbbbbbbbbbbbb', 'ggggggggggggg', 'xxxxxxxxxxxxxxxx', 'bbbbbbbbbbbbbbbbbb', 'ggfffffffffffffffffff', 'bbbbbbbbbbbbbbbbbbbbb', '', '1111111111111', '111111111111111', '2024-03-12', '4444444444444444', '2024-03-19', 'bbbbbbbbbbbbb', '11111111111111111', '55555555555555555555'),
(50, 'hgfdsa', '2024-03-04', 'vvvvvvvvvvvvv', 'ytreswa', '7414', '2', '552', '0000-00-00', '0000-00-00', 0, '', '', '4741', '2024-03-04', 111.00, 'Female', '1', '', '4444444', 'bbbbbbbbbbbbb', 'ggggggggggggg', 'xxxxxxxxxxxxxxxx', 'bbbbbbbbbbbbbbbbbb', 'ggfffffffffffffffffff', 'bbbbbbbbbbbbbbbbbbbbb', '', '1111111111111', '111111111111111', '2024-03-12', '4444444444444444', '2024-03-19', 'bbbbbbbbbbbbb', '11111111111111111', '55555555555555555555'),
(51, '', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '4444444444', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', ''),
(52, 'sansk', '2018-06-05', 'gfsgh', 'fdggh', '97458', '987552', '22255', '2019-02-06', '2024-03-04', 1, '888', '555', 'ttsxc', '2024-03-04', 12.00, 'Female', '1254', 'fgffff', 'sssss', 'ffddd', 'sssss', 'jjhgf', 'asdf', 'xfffx', 'ttttt', '2555', '55555', '2255', '2024-03-04', '1254', '2024-03-14', 'fddf', '111111111111111', '1111111111111111'),
(53, '', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', '', '', '0000-00-00', 0.00, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mother_child_protection`
--
ALTER TABLE `mother_child_protection`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mother_child_protection`
--
ALTER TABLE `mother_child_protection`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
