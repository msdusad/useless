-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2016 at 10:49 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yehjob`
--

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_category`
--

CREATE TABLE `lk_tb_category` (
  `category_id` int(111) NOT NULL,
  `category_name` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_category`
--

INSERT INTO `lk_tb_category` (`category_id`, `category_name`) VALUES
(1, 'Accounting jobs'),
(2, 'IT Software - Application Programming, Maintenance'),
(3, 'Admin Support'),
(5, 'Customer Support'),
(6, 'IT & Networking'),
(7, 'Data Science & Analytics'),
(8, 'Banking / Insurance'),
(9, 'Content / Editors / Journalists'),
(10, 'Translation'),
(12, 'Export / Import'),
(13, 'Sales & Marketing'),
(14, 'Front Office Staff / Secretarial / Computer Operator'),
(15, 'Hotels / Restaurant Management'),
(16, 'HR / Admin / PM / IR / Training'),
(17, 'ITES / BPO / Operations / Customer Service / Telecalling'),
(18, 'Legal / Law'),
(19, 'Medical Professional / Healthcare Practitioner / Technician'),
(20, 'Mktg / Advtg / MR / Media Planning / PR / Corp. Comm.'),
(21, 'Packaging Development'),
(22, 'Production / Service Engineering / Manufacturing / Maintenance'),
(23, 'Project Management / Site Engineers'),
(24, 'Purchase / SCM'),
(29, 'Web, Mobile & Software Dev                 '),
(41, 'Teaching / Education / Language Specialist'),
(42, 'Telecom / IT-Hardware / Tech. Staff / Support'),
(44, 'Any Other'),
(45, 'Engineering & Architecture'),
(46, 'Design & Creative'),
(47, 'Writing'),
(48, 'Legal'),
(49, 'Customer Service'),
(50, 'Sales & Marketing'),
(51, 'Accounting & Consulting');

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_city`
--

CREATE TABLE `lk_tb_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(75) NOT NULL,
  `latitude` varchar(10) NOT NULL,
  `longitude` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_city`
--

INSERT INTO `lk_tb_city` (`city_id`, `city_name`, `latitude`, `longitude`, `state`) VALUES
(1, 'Port Blair', '11.67 N', '92.76 E', 'Andaman and Nicobar Islands'),
(2, 'Adilabad', '19.68 N', '78.53 E', 'Andhra Pradesh'),
(3, 'Adoni', '15.63 N', '77.28 E', 'Andhra Pradesh'),
(4, 'Alwal', '17.50 N', '78.54 E', 'Andhra Pradesh'),
(5, 'Anakapalle', '17.69 N', '83.00 E', 'Andhra Pradesh'),
(6, 'Anantapur', '14.70 N', '77.59 E', 'Andhra Pradesh'),
(7, 'Bapatla', '15.91 N', '80.47 E', 'Andhra Pradesh'),
(8, 'Belampalli', '19.06 N', '79.49 E', 'Andhra Pradesh'),
(9, 'Bhimavaram', '16.55 N', '81.53 E', 'Andhra Pradesh'),
(10, 'Bhongir', '17.52 N', '78.88 E', 'Andhra Pradesh'),
(11, 'Bobbili', '18.57 N', '83.37 E', 'Andhra Pradesh'),
(12, 'Bodhan', '18.66 N', '77.88 E', 'Andhra Pradesh'),
(13, 'Chilakalurupet', '16.10 N', '80.16 E', 'Andhra Pradesh'),
(14, 'Chinna Chawk', '14.47 N', '78.83 E', 'Andhra Pradesh'),
(15, 'Chirala', '15.84 N', '80.35 E', 'Andhra Pradesh'),
(16, 'Chittur', '13.22 N', '79.10 E', 'Andhra Pradesh'),
(17, 'Cuddapah', '14.48 N', '78.81 E', 'Andhra Pradesh'),
(18, 'Dharmavaram', '14.42 N', '77.71 E', 'Andhra Pradesh'),
(19, 'Dhone', '15.42 N', '77.88 E', 'Andhra Pradesh'),
(20, 'Eluru', '16.72 N', '81.11 E', 'Andhra Pradesh'),
(21, 'Gaddiannaram', '17.36 N', '78.52 E', 'Andhra Pradesh'),
(22, 'Gadwal', '16.23 N', '77.80 E', 'Andhra Pradesh'),
(23, 'Gajuwaka', '17.70 N', '83.21 E', 'Andhra Pradesh'),
(24, 'Gudivada', '16.44 N', '81.00 E', 'Andhra Pradesh'),
(25, 'Gudur', '14.15 N', '79.84 E', 'Andhra Pradesh'),
(26, 'Guntakal', '15.18 N', '77.37 E', 'Andhra Pradesh'),
(27, 'Guntur', '16.31 N', '80.44 E', 'Andhra Pradesh'),
(28, 'Hindupur', '13.83 N', '77.48 E', 'Andhra Pradesh'),
(29, 'Hyderabad', '17.40 N', '78.48 E', 'Andhra Pradesh'),
(30, 'Jagtial', '18.80 N', '78.91 E', 'Andhra Pradesh'),
(31, 'Kadiri', '14.12 N', '78.16 E', 'Andhra Pradesh'),
(32, 'Kagaznagar', '19.34 N', '79.48 E', 'Andhra Pradesh'),
(33, 'Kakinada', '16.96 N', '82.24 E', 'Andhra Pradesh'),
(34, 'Kallur', '15.69 N', '77.77 E', 'Andhra Pradesh'),
(35, 'Kamareddi', '18.32 N', '78.35 E', 'Andhra Pradesh'),
(36, 'Kapra', '17.37 N', '78.48 E', 'Andhra Pradesh'),
(37, 'Karimnagar', '18.45 N', '79.13 E', 'Andhra Pradesh'),
(38, 'Karnul', '15.83 N', '78.03 E', 'Andhra Pradesh'),
(39, 'Kavali', '14.92 N', '79.99 E', 'Andhra Pradesh'),
(40, 'Khammam', '17.25 N', '80.15 E', 'Andhra Pradesh'),
(41, 'Kodar', '16.98 N', '79.97 E', 'Andhra Pradesh'),
(42, 'Kondukur', '15.22 N', '79.91 E', 'Andhra Pradesh'),
(43, 'Koratla', '18.82 N', '78.72 E', 'Andhra Pradesh'),
(44, 'Kottagudem', '17.56 N', '80.64 E', 'Andhra Pradesh'),
(45, 'Kukatpalle', '17.49 N', '78.41 E', 'Andhra Pradesh'),
(46, 'Lalbahadur Nagar', '17.43 N', '78.50 E', 'Andhra Pradesh'),
(47, 'Machilipatnam', '16.19 N', '81.14 E', 'Andhra Pradesh'),
(48, 'Mahbubnagar', '16.74 N', '77.98 E', 'Andhra Pradesh'),
(49, 'Malkajgiri', '17.55 N', '78.59 E', 'Andhra Pradesh'),
(50, 'Mancheral', '18.88 N', '79.45 E', 'Andhra Pradesh'),
(51, 'Mandamarri', '18.97 N', '79.47 E', 'Andhra Pradesh'),
(52, 'Mangalagiri', '16.44 N', '80.56 E', 'Andhra Pradesh'),
(53, 'Markapur', '15.73 N', '79.28 E', 'Andhra Pradesh'),
(54, 'Miryalaguda', '16.87 N', '79.57 E', 'Andhra Pradesh'),
(55, 'Nalgonda', '17.06 N', '79.26 E', 'Andhra Pradesh'),
(56, 'Nandyal', '15.49 N', '78.48 E', 'Andhra Pradesh'),
(57, 'Narasapur', '16.45 N', '81.70 E', 'Andhra Pradesh'),
(58, 'Narasaraopet', '16.24 N', '80.04 E', 'Andhra Pradesh'),
(59, 'Nellur', '14.46 N', '79.98 E', 'Andhra Pradesh'),
(60, 'Nirmal', '19.12 N', '78.35 E', 'Andhra Pradesh'),
(61, 'Nizamabad', '18.68 N', '78.10 E', 'Andhra Pradesh'),
(62, 'Nuzvid', '16.78 N', '80.85 E', 'Andhra Pradesh'),
(63, 'Ongole', '15.50 N', '80.05 E', 'Andhra Pradesh'),
(64, 'Palakollu', '16.52 N', '81.75 E', 'Andhra Pradesh'),
(65, 'Palasa', '18.77 N', '84.42 E', 'Andhra Pradesh'),
(66, 'Palwancha', '17.60 N', '80.68 E', 'Andhra Pradesh'),
(67, 'Patancheru', '17.53 N', '78.27 E', 'Andhra Pradesh'),
(68, 'Piduguralla', '16.48 N', '79.90 E', 'Andhra Pradesh'),
(69, 'Ponnur', '16.07 N', '80.56 E', 'Andhra Pradesh'),
(70, 'Proddatur', '14.73 N', '78.55 E', 'Andhra Pradesh'),
(71, 'Qutubullapur', '17.43 N', '78.47 E', 'Andhra Pradesh'),
(72, 'Rajamahendri', '17.02 N', '81.79 E', 'Andhra Pradesh'),
(73, 'Rajampet', '14.18 N', '79.17 E', 'Andhra Pradesh'),
(74, 'Rajendranagar', '17.29 N', '78.39 E', 'Andhra Pradesh'),
(75, 'Ramachandrapuram', '17.56 N', '78.04 E', 'Andhra Pradesh'),
(76, 'Ramagundam', '18.80 N', '79.45 E', 'Andhra Pradesh'),
(77, 'Rayachoti', '14.05 N', '78.75 E', 'Andhra Pradesh'),
(78, 'Rayadrug', '14.70 N', '76.87 E', 'Andhra Pradesh'),
(79, 'Samalkot', '17.06 N', '82.18 E', 'Andhra Pradesh'),
(80, 'Sangareddi', '17.63 N', '78.08 E', 'Andhra Pradesh'),
(81, 'Sattenapalle', '16.40 N', '80.18 E', 'Andhra Pradesh'),
(82, 'Serilungampalle', '17.48 N', '78.33 E', 'Andhra Pradesh'),
(83, 'Siddipet', '18.11 N', '78.84 E', 'Andhra Pradesh'),
(84, 'Sikandarabad', '17.47 N', '78.52 E', 'Andhra Pradesh'),
(85, 'Sirsilla', '18.40 N', '78.81 E', 'Andhra Pradesh'),
(86, 'Srikakulam', '18.30 N', '83.90 E', 'Andhra Pradesh'),
(87, 'Srikalahasti', '13.76 N', '79.70 E', 'Andhra Pradesh'),
(88, 'Suriapet', '17.15 N', '79.62 E', 'Andhra Pradesh'),
(89, 'Tadepalle', '16.48 N', '80.60 E', 'Andhra Pradesh'),
(90, 'Tadepallegudem', '16.82 N', '81.52 E', 'Andhra Pradesh'),
(91, 'Tadpatri', '14.91 N', '78.00 E', 'Andhra Pradesh'),
(92, 'Tandur', '17.25 N', '77.58 E', 'Andhra Pradesh'),
(93, 'Tanuku', '16.75 N', '81.69 E', 'Andhra Pradesh'),
(94, 'Tenali', '16.24 N', '80.65 E', 'Andhra Pradesh'),
(95, 'Tirupati', '13.63 N', '79.41 E', 'Andhra Pradesh'),
(96, 'Tuni', '17.35 N', '82.55 E', 'Andhra Pradesh'),
(97, 'Uppal Kalan', '17.38 N', '78.55 E', 'Andhra Pradesh'),
(98, 'Vijayawada', '16.52 N', '80.63 E', 'Andhra Pradesh'),
(99, 'Vinukonda', '16.05 N', '79.75 E', 'Andhra Pradesh'),
(100, 'Visakhapatnam', '17.73 N', '83.30 E', 'Andhra Pradesh'),
(101, 'Vizianagaram', '18.12 N', '83.40 E', 'Andhra Pradesh'),
(102, 'Vuyyuru', '16.37 N', '80.85 E', 'Andhra Pradesh'),
(103, 'Wanparti', '16.37 N', '78.07 E', 'Andhra Pradesh'),
(104, 'Warangal', '18.01 N', '79.58 E', 'Andhra Pradesh'),
(105, 'Yemmiganur', '15.73 N', '77.48 E', 'Andhra Pradesh'),
(106, 'Itanagar', '27.14 N', '93.61 E', 'Arunachal Pradesh'),
(107, 'Barpeta', '26.32 N', '91.00 E', 'Assam'),
(108, 'Bongaigaon', '26.48 N', '90.54 E', 'Assam'),
(109, 'Dhuburi', '26.03 N', '89.97 E', 'Assam'),
(110, 'Dibrugarh', '27.49 N', '94.91 E', 'Assam'),
(111, 'Diphu', '25.84 N', '93.43 E', 'Assam'),
(112, 'Guwahati', '26.19 N', '91.75 E', 'Assam'),
(113, 'Jorhat', '26.76 N', '94.20 E', 'Assam'),
(114, 'Karimganj', '24.85 N', '92.36 E', 'Assam'),
(115, 'Lakhimpur', '27.24 N', '94.10 E', 'Assam'),
(116, 'Lanka', '25.93 N', '92.95 E', 'Assam'),
(117, 'Nagaon', '26.35 N', '92.68 E', 'Assam'),
(118, 'Sibsagar', '26.99 N', '94.63 E', 'Assam'),
(119, 'Silchar', '24.83 N', '92.77 E', 'Assam'),
(120, 'Tezpur', '26.63 N', '92.79 E', 'Assam'),
(121, 'Tinsukia', '27.50 N', '95.36 E', 'Assam'),
(122, 'Alipur Duar', '26.50 N', '89.53 E', 'West Bengal'),
(123, 'Arambagh', '22.88 N', '87.78 E', 'West Bengal'),
(124, 'Asansol', '23.69 N', '86.98 E', 'West Bengal'),
(125, 'Ashoknagar Kalyangarh', '22.84 N', '88.63 E', 'West Bengal'),
(126, 'Baharampur', '24.10 N', '88.24 E', 'West Bengal'),
(127, 'Baidyabati', '22.79 N', '88.33 E', 'West Bengal'),
(128, 'Baj Baj', '22.48 N', '88.17 E', 'West Bengal'),
(129, 'Bally', '22.65 N', '88.35 E', 'West Bengal'),
(130, 'Bally Cantonment', '22.65 N', '88.36 E', 'West Bengal'),
(131, 'Balurghat', '25.23 N', '88.77 E', 'West Bengal'),
(132, 'Bangaon', '23.05 N', '88.83 E', 'West Bengal'),
(133, 'Bankra', '22.58 N', '88.31 E', 'West Bengal'),
(134, 'Bankura', '23.24 N', '87.07 E', 'West Bengal'),
(135, 'Bansbaria', '22.95 N', '88.40 E', 'West Bengal'),
(136, 'Baranagar', '22.64 N', '88.37 E', 'West Bengal'),
(137, 'Barddhaman', '23.24 N', '87.86 E', 'West Bengal'),
(138, 'Basirhat', '22.66 N', '88.86 E', 'West Bengal'),
(139, 'Bhadreswar', '22.84 N', '88.35 E', 'West Bengal'),
(140, 'Bhatpara', '22.89 N', '88.42 E', 'West Bengal'),
(141, 'Bidhannagar', '22.57 N', '88.42 E', 'West Bengal'),
(142, 'Binnaguri', '26.74 N', '89.037 E', 'West Bengal'),
(143, 'Bishnupur', '23.08 N', '87.33 E', 'West Bengal'),
(144, 'Bolpur', '23.67 N', '87.70 E', 'West Bengal'),
(145, 'Calcutta', '22.57 N', '88.36 E', 'West Bengal'),
(146, 'Chakdaha', '22.48 N', '88.35 E', 'West Bengal'),
(147, 'Champdani', '22.81 N', '88.34 E', 'West Bengal'),
(148, 'Chandannagar', '22.89 N', '88.37 E', 'West Bengal'),
(149, 'Contai', '21.79 N', '87.75 E', 'West Bengal'),
(150, 'Dabgram', '', '', 'West Bengal'),
(151, 'Darjiling', '27.05 N', '88.26 E', 'West Bengal'),
(152, 'Dhulian', '24.68 N', '87.97 E', 'West Bengal'),
(153, 'Dinhata', '26.13 N', '89.47 E', 'West Bengal'),
(154, 'Dum Dum', '22.63 N', '88.42 E', 'West Bengal'),
(155, 'Durgapur', '23.50 N', '87.31 E', 'West Bengal'),
(156, 'Gangarampur', '25.40 N', '88.52 E', 'West Bengal'),
(157, 'Garulia', '22.83 N', '88.37 E', 'West Bengal'),
(158, 'Gayespur', '22.98 N', '88.51 E', 'West Bengal'),
(159, 'Ghatal', '22.67 N', '87.72 E', 'West Bengal'),
(160, 'Gopalpur', '', '', 'West Bengal'),
(161, 'Habra', '22.84 N', '88.62 E', 'West Bengal'),
(162, 'Halisahar', '22.95 N', '88.42 E', 'West Bengal'),
(163, 'Haora', '22.58 N', '88.33 E', 'West Bengal'),
(164, 'HugliChunchura', '22.91 N', '88.40 E', 'West Bengal'),
(165, 'Ingraj Bazar', '25.01 N', '88.14 E', 'West Bengal'),
(166, 'Islampur', '26.27 N', '88.20 E', 'West Bengal'),
(167, 'Jalpaiguri', '26.53 N', '88.71 E', 'West Bengal'),
(168, 'Jamuria', '23.70 N', '87.08 E', 'West Bengal'),
(169, 'Jangipur', '24.47 N', '88.07 E', 'West Bengal'),
(170, 'Jhargram', '22.45 N', '86.98 E', 'West Bengal'),
(171, 'Kaliyaganj', '25.63 N', '88.32 E', 'West Bengal'),
(172, 'Kalna', '23.22 N', '88.37 E', 'West Bengal'),
(173, 'Kalyani', '22.98 N', '88.48 E', 'West Bengal'),
(174, 'Kamarhati', '22.67 N', '88.37 E', 'West Bengal'),
(175, 'Kanchrapara', '22.95 N', '88.45 E', 'West Bengal'),
(176, 'Kandi', '23.95 N', '88.03 E', 'West Bengal'),
(177, 'Karsiyang', '26.88 N', '88.28 E', 'West Bengal'),
(178, 'Katwa', '23.65 N', '88.13 E', 'West Bengal'),
(179, 'Kharagpur', '22.34 N', '87.31 E', 'West Bengal'),
(180, 'Kharagpur Railway Settlement', '22.34 N', '87.26 E', 'West Bengal'),
(181, 'Khardaha', '22.73 N', '88.38 E', 'West Bengal'),
(182, 'Kharia', '', '', 'West Bengal'),
(183, 'Koch Bihar', '26.33 N', '89.46 E', 'West Bengal'),
(184, 'Konnagar', '22.70 N', '88.36 E', 'West Bengal'),
(185, 'Krishnanagar', '23.41 N', '88.51 E', 'West Bengal'),
(186, 'Kulti', '23.72 N', '86.89 E', 'West Bengal'),
(187, 'Madhyamgram', '22.70 N', '88.45 E', 'West Bengal'),
(188, 'Maheshtala', '22.51 N', '88.23 E', 'West Bengal'),
(189, 'Memari', '23.20 N', '88.12 E', 'West Bengal'),
(190, 'Midnapur', '22.33 N', '87.15 E', 'West Bengal'),
(191, 'Naihati', '22.91 N', '88.43 E', 'West Bengal'),
(192, 'Navadwip', '23.42 N', '88.37 E', 'West Bengal'),
(193, 'Ni Barakpur', '22.77 N', '88.36 E', 'West Bengal'),
(194, 'North Barakpur', '22.78 N', '88.37 E', 'West Bengal'),
(195, 'North Dum Dum', '22.64 N', '88.41 E', 'West Bengal'),
(196, 'Old Maldah', '', '', 'West Bengal'),
(197, 'Panihati', '22.69 N', '88.37 E', 'West Bengal'),
(198, 'Phulia', '23.24 N', '88.50 E', 'West Bengal'),
(199, 'Pujali', '22.47 N', '88.15 E', 'West Bengal'),
(200, 'Puruliya', '23.34 N', '86.36 E', 'West Bengal'),
(201, 'Raiganj', '25.62 N', '88.12 E', 'West Bengal'),
(202, 'Rajpur', '22.44 N', '88.44 E', 'West Bengal'),
(203, 'Rampur Hat', '24.17 N', '87.78 E', 'West Bengal'),
(204, 'Ranaghat', '23.19 N', '88.58 E', 'West Bengal'),
(205, 'Raniganj', '23.62 N', '87.11 E', 'West Bengal'),
(206, 'Rishra', '22.71 N', '88.36 E', 'West Bengal'),
(207, 'Shantipur', '23.26 N', '88.44 E', 'West Bengal'),
(208, 'Shiliguri', '26.73 N', '88.42 E', 'West Bengal'),
(209, 'Shrirampur', '22.74 N', '88.35 E', 'West Bengal'),
(210, 'Siuri', '23.91 N', '87.53 E', 'West Bengal'),
(211, 'South Dum Dum', '22.61 N', '88.41 E', 'West Bengal'),
(212, 'Titagarh', '22.74 N', '88.38 E', 'West Bengal'),
(213, 'Ulubaria', '22.47 N', '88.11 E', 'West Bengal'),
(214, 'UttarparaKotrung', '22.66 N', '88.35 E', 'West Bengal'),
(215, 'Araria', '26.15 N', '87.52 E', 'Bihar'),
(216, 'Arrah', '25.56 N', '84.66 E', 'Bihar'),
(217, 'Aurangabad', '24.75 N', '84.37 E', 'Bihar'),
(218, 'Bagaha', '27.10 N', '84.09 E', 'Bihar'),
(219, 'Begusarai', '25.42 N', '86.12 E', 'Bihar'),
(220, 'Bettiah', '26.81 N', '84.50 E', 'Bihar'),
(221, 'Bhabua', '25.05 N', '83.62 E', 'Bihar'),
(222, 'Bhagalpur', '25.26 N', '86.98 E', 'Bihar'),
(223, 'Bihar', '25.21 N', '85.52 E', 'Bihar'),
(224, 'Buxar', '25.58 N', '83.98 E', 'Bihar'),
(225, 'Chhapra', '25.78 N', '84.72 E', 'Bihar'),
(226, 'Darbhanga', '26.16 N', '85.88 E', 'Bihar'),
(227, 'Dehri', '24.91 N', '84.18 E', 'Bihar'),
(228, 'DighaMainpura', '', '', 'Bihar'),
(229, 'Dinapur', '25.64 N', '85.04 E', 'Bihar'),
(230, 'Dumraon', '25.55 N', '84.15 E', 'Bihar'),
(231, 'Gaya', '24.81 N', '85.00 E', 'Bihar'),
(232, 'Gopalganj', '26.47 N', '84.43 E', 'Bihar'),
(233, 'Goura', '', '', 'Bihar'),
(234, 'Hajipur', '', '', 'Bihar'),
(235, 'Jahanabad', '25.22 N', '84.98 E', 'Bihar'),
(236, 'Jamalpur', '25.32 N', '86.48 E', 'Bihar'),
(237, 'Jamui', '24.92 N', '86.22 E', 'Bihar'),
(238, 'Katihar', '25.55 N', '87.57 E', 'Bihar'),
(239, 'Khagaria', '25.50 N', '86.48 E', 'Bihar'),
(240, 'Khagaul', '25.58 N', '85.05 E', 'Bihar'),
(241, 'Kishanganj', '26.11 N', '87.95 E', 'Bihar'),
(242, 'Lakhisarai', '25.18 N', '86.09 E', 'Bihar'),
(243, 'Madhipura', '25.92 N', '86.78 E', 'Bihar'),
(244, 'Madhubani', '26.37 N', '86.06 E', 'Bihar'),
(245, 'Masaurhi', '25.35 N', '85.03 E', 'Bihar'),
(246, 'Mokama', '25.40 N', '85.92 E', 'Bihar'),
(247, 'Motihari', '26.66 N', '84.91 E', 'Bihar'),
(248, 'Munger', '25.39 N', '86.47 E', 'Bihar'),
(249, 'Muzaffarpur', '26.13 N', '85.38 E', 'Bihar'),
(250, 'Nawada', '24.88 N', '85.54 E', 'Bihar'),
(251, 'Patna', '25.62 N', '85.13 E', 'Bihar'),
(252, 'Phulwari', '25.60 N', '85.13 E', 'Bihar'),
(253, 'Purnia', '25.78 N', '87.47 E', 'Bihar'),
(254, 'Raxaul', '26.98 N', '84.85 E', 'Bihar'),
(255, 'Saharsa', '25.88 N', '86.59 E', 'Bihar'),
(256, 'Samastipur', '25.85 N', '85.78 E', 'Bihar'),
(257, 'Sasaram', '24.96 N', '84.01 E', 'Bihar'),
(258, 'Sitamarhi', '26.61 N', '85.48 E', 'Bihar'),
(259, 'Siwan', '26.23 N', '84.35 E', 'Bihar'),
(260, 'Supaul', '26.12 N', '86.60 E', 'Bihar'),
(261, 'Chandigarh', '30.75 N', '76.78 E', 'Chandigarh'),
(262, 'Ambikapur', '23.13 N', '83.20 E', 'Chhattisgarh'),
(263, 'Bhilai', '21.21 N', '81.38 E', 'Chhattisgarh'),
(264, 'Bilaspur', '22.09 N', '82.15 E', 'Chhattisgarh'),
(265, 'Charoda', '21.23 N', '81.50 E', 'Chhattisgarh'),
(266, 'Chirmiri', '23.21 N', '82.41 E', 'Chhattisgarh'),
(267, 'Dhamtari', '20.71 N', '81.55 E', 'Chhattisgarh'),
(268, 'Durg', '21.20 N', '81.28 E', 'Chhattisgarh'),
(269, 'Jagdalpur', '19.09 N', '82.03 E', 'Chhattisgarh'),
(270, 'Korba', '22.35 N', '82.69 E', 'Chhattisgarh'),
(271, 'Raigarh', '21.90 N', '83.39 E', 'Chhattisgarh'),
(272, 'Raipur', '21.24 N', '81.63 E', 'Chhattisgarh'),
(273, 'Rajnandgaon', '21.10 N', '81.04 E', 'Chhattisgarh'),
(274, 'Bhalswa Jahangirpur', '28.74 N', '77.17 E', 'Delhi'),
(275, 'Burari', '', '', 'Delhi'),
(276, 'Chilla Saroda Bangar', '', '', 'Delhi'),
(277, 'Dallo Pura', '', '', 'Delhi'),
(278, 'Delhi', '28.67 N', '77.21 E', 'Delhi'),
(279, 'Deoli', '28.49 N', '77.22 E', 'Delhi'),
(280, 'Dilli Cantonment', '28.57 N', '77.16 E', 'Delhi'),
(281, 'Gharoli', '', '', 'Delhi'),
(282, 'Gokalpur', '28.71 N', '77.28 E', 'Delhi'),
(283, 'Hastsal', '', '', 'Delhi'),
(284, 'Jaffrabad', '', '', 'Delhi'),
(285, 'Karawal Nagar', '', '', 'Delhi'),
(286, 'Khajuri Khas', '', '', 'Delhi'),
(287, 'Kirari Suleman Nagar', '', '', 'Delhi'),
(288, 'Mandoli', '', '', 'Delhi'),
(289, 'Mithe Pur', '', '', 'Delhi'),
(290, 'Molarband', '', '', 'Delhi'),
(291, 'Mundka', '', '', 'Delhi'),
(292, 'Mustafabad', '', '', 'Delhi'),
(293, 'Nangloi Jat', '28.68 N', '77.07 E', 'Delhi'),
(294, 'Ni Dilli', '28.60 N', '77.22 E', 'Delhi'),
(295, 'Pul Pehlad', '', '', 'Delhi'),
(296, 'Puth Kalan', '', '', 'Delhi'),
(297, 'Roshan Pura', '28.60 N', '76.99 E', 'Delhi'),
(298, 'Sadat Pur Gujran', '', '', 'Delhi'),
(299, 'Sultanpur Majra', '28.76 N', '77.06 E', 'Delhi'),
(300, 'Tajpul', '', '', 'Delhi'),
(301, 'Tigri', '28.50 N', '77.22 E', 'Delhi'),
(302, 'Ziauddin Pur', '', '', 'Delhi'),
(303, 'Madgaon', '15.28 N', '73.94 E', 'Goa'),
(304, 'Mormugao', '15.42 N', '73.78 E', 'Goa'),
(305, 'Panaji', '15.50 N', '73.81 E', 'Goa'),
(306, 'Ahmadabad', '23.03 N', '72.58 E', 'Gujarat'),
(307, 'Amreli', '21.61 N', '71.22 E', 'Gujarat'),
(308, 'Anand', '22.56 N', '72.95 E', 'Gujarat'),
(309, 'Anjar', '23.12 N', '70.02 E', 'Gujarat'),
(310, 'Bardoli', '21.12 N', '73.12 E', 'Gujarat'),
(311, 'Bharuch', '21.71 N', '72.97 E', 'Gujarat'),
(312, 'Bhavnagar', '21.79 N', '72.13 E', 'Gujarat'),
(313, 'Bhuj', '23.26 N', '69.66 E', 'Gujarat'),
(314, 'Borsad', '22.42 N', '72.90 E', 'Gujarat'),
(315, 'Botad', '22.18 N', '71.66 E', 'Gujarat'),
(316, 'Chandkheda', '23.15 N', '72.61 E', 'Gujarat'),
(317, 'Chandlodiya', '23.10 N', '72.56 E', 'Gujarat'),
(318, 'Dabhoi', '22.13 N', '73.41 E', 'Gujarat'),
(319, 'Dahod', '22.84 N', '74.25 E', 'Gujarat'),
(320, 'Dholka', '22.74 N', '72.44 E', 'Gujarat'),
(321, 'Dhoraji', '21.74 N', '70.44 E', 'Gujarat'),
(322, 'Dhrangadhra', '23.00 N', '71.46 E', 'Gujarat'),
(323, 'Disa', '24.26 N', '72.18 E', 'Gujarat'),
(324, 'Gandhidham', '23.07 N', '70.13 E', 'Gujarat'),
(325, 'Gandhinagar', '23.30 N', '72.63 E', 'Gujarat'),
(326, 'Ghatlodiya', '23.05 N', '72.55 E', 'Gujarat'),
(327, 'Godhra', '22.77 N', '73.60 E', 'Gujarat'),
(328, 'Gondal', '21.97 N', '70.80 E', 'Gujarat'),
(329, 'Himatnagar', '23.60 N', '72.96 E', 'Gujarat'),
(330, 'Jamnagar', '22.47 N', '70.07 E', 'Gujarat'),
(331, 'Jamnagar', '', '', 'Gujarat'),
(332, 'Jetpur', '21.75 N', '70.61 E', 'Gujarat'),
(333, 'Junagadh', '21.52 N', '70.45 E', 'Gujarat'),
(334, 'Kalol', '23.25 N', '72.49 E', 'Gujarat'),
(335, 'Keshod', '21.31 N', '70.23 E', 'Gujarat'),
(336, 'Khambhat', '22.32 N', '72.61 E', 'Gujarat'),
(337, 'Kundla', '21.35 N', '71.30 E', 'Gujarat'),
(338, 'Mahuva', '21.10 N', '71.75 E', 'Gujarat'),
(339, 'Mangrol', '21.12 N', '70.12 E', 'Gujarat'),
(340, 'Modasa', '23.47 N', '73.30 E', 'Gujarat'),
(341, 'Morvi', '22.82 N', '70.83 E', 'Gujarat'),
(342, 'Nadiad', '22.70 N', '72.85 E', 'Gujarat'),
(343, 'Navagam Ghed', '', '', 'Gujarat'),
(344, 'Navsari', '20.96 N', '72.92 E', 'Gujarat'),
(345, 'Palitana', '21.52 N', '71.83 E', 'Gujarat'),
(346, 'Patan', '23.86 N', '72.11 E', 'Gujarat'),
(347, 'Porbandar', '21.65 N', '69.60 E', 'Gujarat'),
(348, 'Puna', '', '', 'Gujarat'),
(349, 'Rajkot', '22.31 N', '70.79 E', 'Gujarat'),
(350, 'Ramod', '', '', 'Gujarat'),
(351, 'Ranip', '23.03 N', '72.54 E', 'Gujarat'),
(352, 'Siddhapur', '23.92 N', '72.37 E', 'Gujarat'),
(353, 'Sihor', '21.70 N', '71.97 E', 'Gujarat'),
(354, 'Surat', '21.20 N', '72.82 E', 'Gujarat'),
(355, 'Surendranagar', '22.71 N', '71.67 E', 'Gujarat'),
(356, 'Thaltej', '', '', 'Gujarat'),
(357, 'Una', '20.82 N', '71.03 E', 'Gujarat'),
(358, 'Unjha', '23.81 N', '72.38 E', 'Gujarat'),
(359, 'Upleta', '21.75 N', '70.27 E', 'Gujarat'),
(360, 'Vadodara', '22.31 N', '73.18 E', 'Gujarat'),
(361, 'Valsad', '20.62 N', '72.92 E', 'Gujarat'),
(362, 'Vapi', '20.37 N', '72.90 E', 'Gujarat'),
(363, 'Vastral', '', '', 'Gujarat'),
(364, 'Vejalpur', '', '', 'Gujarat'),
(365, 'Veraval', '20.92 N', '70.34 E', 'Gujarat'),
(366, 'Vijalpor', '', '', 'Gujarat'),
(367, 'Visnagar', '23.71 N', '72.54 E', 'Gujarat'),
(368, 'Wadhwan', '22.73 N', '71.72 E', 'Gujarat'),
(369, 'Ambala', '30.38 N', '76.77 E', 'Haryana'),
(370, 'Ambala Cantonment', '30.39 N', '76.86 E', 'Haryana'),
(371, 'Ambala Sadar', '30.35 N', '76.84 E', 'Haryana'),
(372, 'Bahadurgarh', '28.69 N', '76.92 E', 'Haryana'),
(373, 'Bhiwani', '28.81 N', '76.12 E', 'Haryana'),
(374, 'Charkhi Dadri', '28.60 N', '76.27 E', 'Haryana'),
(375, 'Dabwali', '29.95 N', '74.73 E', 'Haryana'),
(376, 'Faridabad', '28.38 N', '77.30 E', 'Haryana'),
(377, 'Gohana', '29.13 N', '76.70 E', 'Haryana'),
(378, 'Hisar', '29.17 N', '75.72 E', 'Haryana'),
(379, 'Jagadhri', '30.18 N', '77.29 E', 'Haryana'),
(380, 'Jind', '29.31 N', '76.30 E', 'Haryana'),
(381, 'Kaithal', '29.81 N', '76.40 E', 'Haryana'),
(382, 'Karnal', '29.69 N', '76.97 E', 'Haryana'),
(383, 'Narnaul', '28.04 N', '76.10 E', 'Haryana'),
(384, 'Narwana', '29.62 N', '76.12 E', 'Haryana'),
(385, 'Palwal', '28.15 N', '77.32 E', 'Haryana'),
(386, 'Panchkula', '30.70 N', '76.88 E', 'Haryana'),
(387, 'Panipat', '29.39 N', '76.96 E', 'Haryana'),
(388, 'Rewari', '28.19 N', '76.60 E', 'Haryana'),
(389, 'Rohtak', '28.90 N', '76.58 E', 'Haryana'),
(390, 'Sirsa', '29.53 N', '75.03 E', 'Haryana'),
(391, 'Sonipat', '28.99 N', '77.01 E', 'Haryana'),
(392, 'Thanesar', '29.98 N', '76.82 E', 'Haryana'),
(393, 'Tohana', '29.70 N', '75.90 E', 'Haryana'),
(394, 'Yamunanagar', '30.14 N', '77.28 E', 'Haryana'),
(395, 'Shimla', '31.11 N', '77.16 E', 'Himachal Pradesh'),
(396, 'Anantnag', '33.73 N', '75.15 E', 'Jammu and Kashmir'),
(397, 'Baramula', '34.20 N', '74.35 E', 'Jammu and Kashmir'),
(398, 'Bari Brahmana', '', '', 'Jammu and Kashmir'),
(399, 'Jammu', '32.71 N', '74.85 E', 'Jammu and Kashmir'),
(400, 'Kathua', '32.37 N', '75.52 E', 'Jammu and Kashmir'),
(401, 'Sopur', '34.30 N', '74.47 E', 'Jammu and Kashmir'),
(402, 'Srinagar', '34.09 N', '74.79 E', 'Jammu and Kashmir'),
(403, 'Udhampur', '32.93 N', '75.13 E', 'Jammu and Kashmir'),
(404, 'Adityapur', '22.80 N', '86.04 E', 'Jharkhand'),
(405, 'Bagbahra', '22.82 N', '86.20 E', 'Jharkhand'),
(406, 'Bhuli', '23.79 N', '86.38 E', 'Jharkhand'),
(407, 'Bokaro', '23.78 N', '85.96 E', 'Jharkhand'),
(408, 'Chaibasa', '22.56 N', '85.80 E', 'Jharkhand'),
(409, 'Chas', '23.65 N', '86.17 E', 'Jharkhand'),
(410, 'Daltenganj', '24.05 N', '84.06 E', 'Jharkhand'),
(411, 'Devghar', '24.49 N', '86.69 E', 'Jharkhand'),
(412, 'Dhanbad', '23.80 N', '86.42 E', 'Jharkhand'),
(413, 'Hazaribag', '24.01 N', '85.36 E', 'Jharkhand'),
(414, 'Jamshedpur', '22.79 N', '86.20 E', 'Jharkhand'),
(415, 'Jharia', '23.76 N', '86.42 E', 'Jharkhand'),
(416, 'Jhumri Tilaiya', '24.43 N', '85.52 E', 'Jharkhand'),
(417, 'Jorapokhar', '23.79 N', '86.36 E', 'Jharkhand'),
(418, 'Katras', '23.80 N', '86.28 E', 'Jharkhand'),
(419, 'Lohardaga', '23.43 N', '84.68 E', 'Jharkhand'),
(420, 'Mango', '22.85 N', '86.21 E', 'Jharkhand'),
(421, 'Phusro', '23.68 N', '85.86 E', 'Jharkhand'),
(422, 'Ramgarh', '23.63 N', '85.51 E', 'Jharkhand'),
(423, 'Ranchi', '23.36 N', '85.33 E', 'Jharkhand'),
(424, 'Sahibganj', '25.25 N', '87.62 E', 'Jharkhand'),
(425, 'Saunda', '23.64 N', '85.37 E', 'Jharkhand'),
(426, 'Sindari', '23.68 N', '86.49 E', 'Jharkhand'),
(427, 'Bagalkot', '16.19 N', '75.69 E', 'Karnataka'),
(428, 'Bangalore', '12.97 N', '77.56 E', 'Karnataka'),
(429, 'Basavakalyan', '17.87 N', '76.95 E', 'Karnataka'),
(430, 'Belgaum', '15.86 N', '74.50 E', 'Karnataka'),
(431, 'Bellary', '15.14 N', '76.91 E', 'Karnataka'),
(432, 'Bhadravati', '13.84 N', '75.69 E', 'Karnataka'),
(433, 'Bidar', '17.92 N', '77.52 E', 'Karnataka'),
(434, 'Bijapur', '16.83 N', '75.71 E', 'Karnataka'),
(435, 'Bommanahalli', '13.01 N', '77.63 E', 'Karnataka'),
(436, 'Byatarayanapura', '', '', 'Karnataka'),
(437, 'Challakere', '14.32 N', '76.65 E', 'Karnataka'),
(438, 'Chamrajnagar', '11.92 N', '76.95 E', 'Karnataka'),
(439, 'Channapatna', '12.66 N', '77.19 E', 'Karnataka'),
(440, 'Chik Ballapur', '13.47 N', '77.73 E', 'Karnataka'),
(441, 'Chikmagalur', '13.32 N', '75.76 E', 'Karnataka'),
(442, 'Chintamani', '13.40 N', '78.05 E', 'Karnataka'),
(443, 'Chitradurga', '14.23 N', '76.39 E', 'Karnataka'),
(444, 'Dasarahalli', '13.01 N', '77.49 E', 'Karnataka'),
(445, 'Davanagere', '14.46 N', '75.92 E', 'Karnataka'),
(446, 'Dod Ballapur', '13.30 N', '77.52 E', 'Karnataka'),
(447, 'Gadag', '15.44 N', '75.63 E', 'Karnataka'),
(448, 'Gangawati', '15.44 N', '76.52 E', 'Karnataka'),
(449, 'Gokak', '16.18 N', '74.81 E', 'Karnataka'),
(450, 'Gulbarga', '17.34 N', '76.82 E', 'Karnataka'),
(451, 'Harihar', '14.52 N', '75.80 E', 'Karnataka'),
(452, 'Hassan', '13.01 N', '76.08 E', 'Karnataka'),
(453, 'Haveri', '14.80 N', '75.40 E', 'Karnataka'),
(454, 'Hiriyur', '13.97 N', '76.60 E', 'Karnataka'),
(455, 'Hosakote', '', '', 'Karnataka'),
(456, 'Hospet', '15.28 N', '76.37 E', 'Karnataka'),
(457, 'Hubli', '15.36 N', '75.13 E', 'Karnataka'),
(458, 'Ilkal', '15.97 N', '76.13 E', 'Karnataka'),
(459, 'Jamkhandi', '16.51 N', '75.28 E', 'Karnataka'),
(460, 'Kanakapura', '12.54 N', '77.42 E', 'Karnataka'),
(461, 'Karwar', '14.82 N', '74.12 E', 'Karnataka'),
(462, 'Kolar', '13.14 N', '78.13 E', 'Karnataka'),
(463, 'Kollegal', '12.15 N', '77.12 E', 'Karnataka'),
(464, 'Koppal', '15.35 N', '76.15 E', 'Karnataka'),
(465, 'Krishnarajapura', '12.97 N', '77.74 E', 'Karnataka'),
(466, 'Mahadevapura', '', '', 'Karnataka'),
(467, 'Maisuru', '12.31 N', '76.65 E', 'Karnataka'),
(468, 'Mandya', '12.54 N', '76.89 E', 'Karnataka'),
(469, 'Mangaluru', '12.88 N', '74.84 E', 'Karnataka'),
(470, 'Nipani', '16.41 N', '74.38 E', 'Karnataka'),
(471, 'Pattanagere', '', '', 'Karnataka'),
(472, 'Puttur', '12.77 N', '75.22 E', 'Karnataka'),
(473, 'Rabkavi', '16.47 N', '75.11 E', 'Karnataka'),
(474, 'Raichur', '16.21 N', '77.35 E', 'Karnataka'),
(475, 'Ramanagaram', '12.72 N', '77.27 E', 'Karnataka'),
(476, 'Ranibennur', '14.62 N', '75.61 E', 'Karnataka'),
(477, 'Robertsonpet', '12.97 N', '78.28 E', 'Karnataka'),
(478, 'Sagar', '14.17 N', '75.03 E', 'Karnataka'),
(479, 'Shahabad', '17.13 N', '76.93 E', 'Karnataka'),
(480, 'Shahpur', '16.70 N', '76.83 E', 'Karnataka'),
(481, 'Shimoga', '13.93 N', '75.57 E', 'Karnataka'),
(482, 'Shorapur', '16.52 N', '76.75 E', 'Karnataka'),
(483, 'Sidlaghatta', '13.38 N', '77.87 E', 'Karnataka'),
(484, 'Sira', '13.75 N', '76.90 E', 'Karnataka'),
(485, 'Sirsi', '14.62 N', '74.85 E', 'Karnataka'),
(486, 'Tiptur', '13.27 N', '76.48 E', 'Karnataka'),
(487, 'Tumkur', '13.34 N', '77.10 E', 'Karnataka'),
(488, 'Udupi', '13.35 N', '74.75 E', 'Karnataka'),
(489, 'Ullal', '12.80 N', '74.85 E', 'Karnataka'),
(490, 'Yadgir', '16.77 N', '77.13 E', 'Karnataka'),
(491, 'Yelahanka', '13.10 N', '77.60 E', 'Karnataka'),
(492, 'Alappuzha', '9.50 N', '76.33 E', 'Kerala'),
(493, 'Beypur', '11.18 N', '75.82 E', 'Kerala'),
(494, 'Cheruvannur', '11.21 N', '75.84 E', 'Kerala'),
(495, 'Edakkara', '', '', 'Kerala'),
(496, 'Edathala', '10.03 N', '76.32 E', 'Kerala'),
(497, 'Kalamassery', '10.05 N', '76.27 E', 'Kerala'),
(498, 'Kannan Devan Hills', '', '', 'Kerala'),
(499, 'Kannangad', '12.34 N', '75.09 E', 'Kerala'),
(500, 'Kannur', '11.86 N', '75.35 E', 'Kerala'),
(501, 'Kayankulam', '9.17 N', '76.49 E', 'Kerala'),
(502, 'Kochi', '10.02 N', '76.22 E', 'Kerala'),
(503, 'Kollam', '8.89 N', '76.58 E', 'Kerala'),
(504, 'Kottayam', '9.60 N', '76.52 E', 'Kerala'),
(505, 'Koyilandi', '11.43 N', '75.70 E', 'Kerala'),
(506, 'Kozhikkod', '11.26 N', '75.78 E', 'Kerala'),
(507, 'Kunnamkulam', '10.65 N', '76.08 E', 'Kerala'),
(508, 'Malappuram', '11.07 N', '76.06 E', 'Kerala'),
(509, 'Manjeri', '11.12 N', '76.11 E', 'Kerala'),
(510, 'Nedumangad', '8.61 N', '77.00 E', 'Kerala'),
(511, 'Neyyattinkara', '8.40 N', '77.08 E', 'Kerala'),
(512, 'Palakkad', '10.78 N', '76.65 E', 'Kerala'),
(513, 'Pallichal', '', '', 'Kerala'),
(514, 'Payyannur', '12.10 N', '75.19 E', 'Kerala'),
(515, 'Ponnani', '10.78 N', '75.92 E', 'Kerala'),
(516, 'Talipparamba', '12.03 N', '75.36 E', 'Kerala'),
(517, 'Thalassery', '11.75 N', '75.49 E', 'Kerala'),
(518, 'Thiruvananthapuram', '8.51 N', '76.95 E', 'Kerala'),
(519, 'Thrippunithura', '9.94 N', '76.35 E', 'Kerala'),
(520, 'Thrissur', '10.52 N', '76.21 E', 'Kerala'),
(521, 'Tirur', '10.91 N', '75.92 E', 'Kerala'),
(522, 'Tiruvalla', '9.39 N', '76.57 E', 'Kerala'),
(523, 'Vadakara', '11.61 N', '75.58 E', 'Kerala'),
(524, 'Ashoknagar', '24.57 N', '77.72 E', 'Madhya Pradesh'),
(525, 'Balaghat', '21.80 N', '80.18 E', 'Madhya Pradesh'),
(526, 'Basoda', '23.85 N', '77.93 E', 'Madhya Pradesh'),
(527, 'Betul', '21.92 N', '77.90 E', 'Madhya Pradesh'),
(528, 'Bhind', '26.57 N', '78.77 E', 'Madhya Pradesh'),
(529, 'Bhopal', '23.24 N', '77.40 E', 'Madhya Pradesh'),
(530, 'BinaEtawa', '24.20 N', '78.20 E', 'Madhya Pradesh'),
(531, 'Burhanpur', '21.33 N', '76.22 E', 'Madhya Pradesh'),
(532, 'Chhatarpur', '24.92 N', '79.58 E', 'Madhya Pradesh'),
(533, 'Chhindwara', '22.07 N', '78.94 E', 'Madhya Pradesh'),
(534, 'Dabra', '25.90 N', '78.33 E', 'Madhya Pradesh'),
(535, 'Damoh', '23.85 N', '79.44 E', 'Madhya Pradesh'),
(536, 'Datia', '25.67 N', '78.45 E', 'Madhya Pradesh'),
(537, 'Dewas', '22.97 N', '76.05 E', 'Madhya Pradesh'),
(538, 'Dhar', '22.60 N', '75.29 E', 'Madhya Pradesh'),
(539, 'Gohad', '26.43 N', '78.45 E', 'Madhya Pradesh'),
(540, 'Guna', '24.65 N', '77.30 E', 'Madhya Pradesh'),
(541, 'Gwalior', '26.23 N', '78.17 E', 'Madhya Pradesh'),
(542, 'Harda', '22.33 N', '77.11 E', 'Madhya Pradesh'),
(543, 'Hoshangabad', '22.75 N', '77.71 E', 'Madhya Pradesh'),
(544, 'Indore', '22.72 N', '75.86 E', 'Madhya Pradesh'),
(545, 'Itarsi', '22.62 N', '77.76 E', 'Madhya Pradesh'),
(546, 'Jabalpur', '23.17 N', '79.94 E', 'Madhya Pradesh'),
(547, 'Jabalpur Cantonment', '23.16 N', '79.95 E', 'Madhya Pradesh'),
(548, 'Jaora', '23.64 N', '75.11 E', 'Madhya Pradesh'),
(549, 'Khandwa', '21.83 N', '76.35 E', 'Madhya Pradesh'),
(550, 'Khargone', '21.83 N', '75.60 E', 'Madhya Pradesh'),
(551, 'Mandidip', '23.10 N', '77.52 E', 'Madhya Pradesh'),
(552, 'Mandsaur', '24.07 N', '75.07 E', 'Madhya Pradesh'),
(553, 'Mau', '22.56 N', '75.75 E', 'Madhya Pradesh'),
(554, 'Morena', '26.51 N', '77.99 E', 'Madhya Pradesh'),
(555, 'Murwara', '23.85 N', '80.39 E', 'Madhya Pradesh'),
(556, 'Nagda', '23.46 N', '75.42 E', 'Madhya Pradesh'),
(557, 'Nimach', '24.47 N', '74.87 E', 'Madhya Pradesh'),
(558, 'Pithampur', '', '', 'Madhya Pradesh'),
(559, 'Raghogarh', '24.45 N', '77.20 E', 'Madhya Pradesh'),
(560, 'Ratlam', '23.35 N', '75.03 E', 'Madhya Pradesh'),
(561, 'Rewa', '24.53 N', '81.29 E', 'Madhya Pradesh'),
(562, 'Sagar', '23.85 N', '78.75 E', 'Madhya Pradesh'),
(563, 'Sarni', '22.04 N', '78.27 E', 'Madhya Pradesh'),
(564, 'Satna', '24.58 N', '80.83 E', 'Madhya Pradesh'),
(565, 'Sehore', '23.20 N', '77.08 E', 'Madhya Pradesh'),
(566, 'Sendhwa', '21.68 N', '75.10 E', 'Madhya Pradesh'),
(567, 'Seoni', '22.10 N', '79.55 E', 'Madhya Pradesh'),
(568, 'Shahdol', '23.30 N', '81.36 E', 'Madhya Pradesh'),
(569, 'Shajapur', '23.43 N', '76.27 E', 'Madhya Pradesh'),
(570, 'Sheopur', '25.67 N', '76.70 E', 'Madhya Pradesh'),
(571, 'Shivapuri', '25.43 N', '77.65 E', 'Madhya Pradesh'),
(572, 'Sidhi', '24.42 N', '81.88 E', 'Madhya Pradesh'),
(573, 'Singrauli', '23.84 N', '82.27 E', 'Madhya Pradesh'),
(574, 'Tikamgarh', '24.74 N', '78.83 E', 'Madhya Pradesh'),
(575, 'Ujjain', '23.19 N', '75.78 E', 'Madhya Pradesh'),
(576, 'Vidisha', '23.53 N', '77.80 E', 'Madhya Pradesh'),
(577, 'Achalpur', '21.26 N', '77.50 E', 'Maharashtra'),
(578, 'Ahmadnagar', '19.10 N', '74.74 E', 'Maharashtra'),
(579, 'Akola', '20.71 N', '77.00 E', 'Maharashtra'),
(580, 'Akot', '21.10 N', '77.05 E', 'Maharashtra'),
(581, 'Amalner', '21.05 N', '75.06 E', 'Maharashtra'),
(582, 'Ambajogai', '18.73 N', '76.38 E', 'Maharashtra'),
(583, 'Amravati', '20.95 N', '77.76 E', 'Maharashtra'),
(584, 'Anjangaon', '21.16 N', '77.31 E', 'Maharashtra'),
(585, 'Aurangabad', '19.89 N', '75.32 E', 'Maharashtra'),
(586, 'Badlapur', '19.15 N', '73.27 E', 'Maharashtra'),
(587, 'Ballarpur', '19.85 N', '79.35 E', 'Maharashtra'),
(588, 'Baramati', '18.15 N', '74.58 E', 'Maharashtra'),
(589, 'Barsi', '18.24 N', '75.69 E', 'Maharashtra'),
(590, 'Basmat', '19.32 N', '77.17 E', 'Maharashtra'),
(591, 'Bhadravati', '20.11 N', '79.12 E', 'Maharashtra'),
(592, 'Bhandara', '21.18 N', '79.65 E', 'Maharashtra'),
(593, 'Bhiwandi', '19.30 N', '73.05 E', 'Maharashtra'),
(594, 'Bhusawal', '21.05 N', '75.78 E', 'Maharashtra'),
(595, 'Bid', '18.99 N', '75.76 E', 'Maharashtra'),
(596, 'Mumbai', '18.96 N', '72.82 E', 'Maharashtra'),
(597, 'Buldana', '20.54 N', '76.18 E', 'Maharashtra'),
(598, 'Chalisgaon', '20.46 N', '74.99 E', 'Maharashtra'),
(599, 'Chandrapur', '19.96 N', '79.30 E', 'Maharashtra'),
(600, 'Chikhli', '20.35 N', '76.25 E', 'Maharashtra'),
(601, 'Chiplun', '17.53 N', '73.52 E', 'Maharashtra'),
(602, 'Chopda', '21.25 N', '75.28 E', 'Maharashtra'),
(603, 'Dahanu', '19.97 N', '72.73 E', 'Maharashtra'),
(604, 'Deolali', '19.95 N', '73.84 E', 'Maharashtra'),
(605, 'Dhule', '20.90 N', '74.77 E', 'Maharashtra'),
(606, 'Digdoh', '', '', 'Maharashtra'),
(607, 'Diglur', '18.55 N', '77.60 E', 'Maharashtra'),
(608, 'Gadchiroli', '20.17 N', '80.00 E', 'Maharashtra'),
(609, 'Gondiya', '21.47 N', '80.20 E', 'Maharashtra'),
(610, 'Hinganghat', '20.56 N', '78.83 E', 'Maharashtra'),
(611, 'Hingoli', '19.72 N', '77.14 E', 'Maharashtra'),
(612, 'Ichalkaranji', '16.69 N', '74.46 E', 'Maharashtra'),
(613, 'Jalgaon', '21.01 N', '75.56 E', 'Maharashtra'),
(614, 'Jalna', '19.85 N', '75.88 E', 'Maharashtra'),
(615, 'Kalyan', '19.25 N', '73.16 E', 'Maharashtra'),
(616, 'Kamthi', '21.23 N', '79.20 E', 'Maharashtra'),
(617, 'Karanja', '20.48 N', '77.48 E', 'Maharashtra'),
(618, 'Khadki', '18.57 N', '73.83 E', 'Maharashtra'),
(619, 'Khamgaon', '20.70 N', '76.56 E', 'Maharashtra'),
(620, 'Khopoli', '18.78 N', '73.33 E', 'Maharashtra'),
(621, 'Kolhapur', '16.70 N', '74.22 E', 'Maharashtra'),
(622, 'Kopargaon', '19.88 N', '74.48 E', 'Maharashtra'),
(623, 'Latur', '18.41 N', '76.58 E', 'Maharashtra'),
(624, 'Lonavale', '18.75 N', '73.42 E', 'Maharashtra'),
(625, 'Malegaon', '20.56 N', '74.52 E', 'Maharashtra'),
(626, 'Malkapur', '20.90 N', '76.19 E', 'Maharashtra'),
(627, 'Manmad', '20.26 N', '74.43 E', 'Maharashtra'),
(628, 'Mira Bhayandar', '19.29 N', '72.85 E', 'Maharashtra'),
(629, 'Nagpur', '21.16 N', '79.08 E', 'Maharashtra'),
(630, 'Nalasopara', '19.43 N', '72.78 E', 'Maharashtra'),
(631, 'Nanded', '19.17 N', '77.29 E', 'Maharashtra'),
(632, 'Nandurbar', '21.38 N', '74.23 E', 'Maharashtra'),
(633, 'Nashik', '20.01 N', '73.78 E', 'Maharashtra'),
(634, 'Navghar', '19.34 N', '72.90 E', 'Maharashtra'),
(635, 'Navi Mumbai', '19.11 N', '73.06 E', 'Maharashtra'),
(637, 'Osmanabad', '18.17 N', '76.03 E', 'Maharashtra'),
(638, 'Palghar', '19.68 N', '72.75 E', 'Maharashtra'),
(639, 'Pandharpur', '17.68 N', '75.31 E', 'Maharashtra'),
(640, 'Parbhani', '19.27 N', '76.76 E', 'Maharashtra'),
(641, 'Phaltan', '17.98 N', '74.43 E', 'Maharashtra'),
(642, 'Pimpri', '18.62 N', '73.80 E', 'Maharashtra'),
(643, 'Pune', '18.53 N', '73.84 E', 'Maharashtra'),
(644, 'Pune Cantonment', '18.50 N', '73.88 E', 'Maharashtra'),
(645, 'Pusad', '19.91 N', '77.57 E', 'Maharashtra'),
(646, 'Ratnagiri', '17.00 N', '73.29 E', 'Maharashtra'),
(647, 'SangliMiraj', '16.86 N', '74.57 E', 'Maharashtra'),
(648, 'Satara', '17.70 N', '74.00 E', 'Maharashtra'),
(649, 'Shahada', '21.55 N', '74.47 E', 'Maharashtra'),
(650, 'Shegaon', '20.78 N', '76.68 E', 'Maharashtra'),
(651, 'Shirpur', '21.35 N', '74.88 E', 'Maharashtra'),
(652, 'Sholapur', '17.67 N', '75.89 E', 'Maharashtra'),
(653, 'Shrirampur', '19.63 N', '74.64 E', 'Maharashtra'),
(654, 'Sillod', '20.30 N', '75.65 E', 'Maharashtra'),
(655, 'Thana', '19.20 N', '72.97 E', 'Maharashtra'),
(656, 'Udgir', '18.40 N', '77.11 E', 'Maharashtra'),
(657, 'Ulhasnagar', '19.23 N', '73.15 E', 'Maharashtra'),
(658, 'Uran Islampur', '17.05 N', '74.27 E', 'Maharashtra'),
(659, 'Vasai', '19.36 N', '72.80 E', 'Maharashtra'),
(660, 'Virar', '19.47 N', '72.79 E', 'Maharashtra'),
(661, 'Wadi', '', '', 'Maharashtra'),
(662, 'Wani', '20.07 N', '78.95 E', 'Maharashtra'),
(663, 'Wardha', '20.75 N', '78.60 E', 'Maharashtra'),
(664, 'Warud', '21.47 N', '78.27 E', 'Maharashtra'),
(665, 'Washim', '20.10 N', '77.13 E', 'Maharashtra'),
(666, 'Yavatmal', '20.41 N', '78.13 E', 'Maharashtra'),
(667, 'Imphal', '24.79 N', '93.94 E', 'Manipur'),
(668, 'Shillong', '25.57 N', '91.87 E', 'Meghalaya'),
(669, 'Tura', '25.52 N', '90.22 E', 'Meghalaya'),
(670, 'Aizawl', '23.71 N', '92.71 E', 'Mizoram'),
(671, 'Lunglei', '22.88 N', '92.73 E', 'Mizoram'),
(672, 'Dimapur', '25.92 N', '93.73 E', 'Nagaland'),
(673, 'Kohima', '25.67 N', '94.11 E', 'Nagaland'),
(674, 'Wokha', '26.10 N', '94.27 E', 'Nagaland'),
(675, 'Balangir', '20.71 N', '83.50 E', 'Orissa'),
(676, 'Baleshwar', '21.49 N', '86.95 E', 'Orissa'),
(677, 'Barbil', '22.12 N', '85.40 E', 'Orissa'),
(678, 'Bargarh', '21.34 N', '83.61 E', 'Orissa'),
(679, 'Baripada', '21.95 N', '86.73 E', 'Orissa'),
(680, 'Bhadrak', '21.06 N', '86.52 E', 'Orissa'),
(681, 'Bhawanipatna', '19.91 N', '83.17 E', 'Orissa'),
(682, 'Bhubaneswar', '20.27 N', '85.84 E', 'Orissa'),
(683, 'Brahmapur', '19.32 N', '84.80 E', 'Orissa'),
(684, 'Brajrajnagar', '21.82 N', '83.91 E', 'Orissa'),
(685, 'Dhenkanal', '20.67 N', '85.60 E', 'Orissa'),
(686, 'Jaypur', '18.86 N', '82.56 E', 'Orissa'),
(687, 'Jharsuguda', '21.87 N', '84.01 E', 'Orissa'),
(688, 'Kataka', '20.47 N', '85.88 E', 'Orissa'),
(689, 'Kendujhar', '21.63 N', '85.58 E', 'Orissa'),
(690, 'Paradwip', '20.32 N', '86.62 E', 'Orissa'),
(691, 'Puri', '19.81 N', '85.83 E', 'Orissa'),
(692, 'Raurkela', '22.24 N', '84.81 E', 'Orissa'),
(693, 'Raurkela Industrial Township', '', '', 'Orissa'),
(694, 'Rayagada', '19.18 N', '83.41 E', 'Orissa'),
(695, 'Sambalpur', '21.47 N', '83.97 E', 'Orissa'),
(696, 'Sunabeda', '18.69 N', '82.86 E', 'Orissa'),
(697, 'Karaikal', '10.93 N', '79.83 E', 'Pondicherry'),
(698, 'Ozhukarai', '11.94 N', '79.77 E', 'Pondicherry'),
(699, 'Pondicherry', '11.94 N', '79.83 E', 'Pondicherry'),
(700, 'Abohar', '30.14 N', '74.20 E', 'Punjab'),
(701, 'Amritsar', '31.64 N', '74.87 E', 'Punjab'),
(702, 'Barnala', '30.39 N', '75.54 E', 'Punjab'),
(703, 'Batala', '31.82 N', '75.21 E', 'Punjab'),
(704, 'Bathinda', '30.17 N', '74.97 E', 'Punjab'),
(705, 'Dhuri', '30.37 N', '75.87 E', 'Punjab'),
(706, 'Faridkot', '30.68 N', '74.74 E', 'Punjab'),
(707, 'Fazilka', '30.41 N', '74.02 E', 'Punjab'),
(708, 'Firozpur', '30.92 N', '74.61 E', 'Punjab'),
(709, 'Firozpur Cantonment', '30.95 N', '74.60 E', 'Punjab'),
(710, 'Gobindgarh', '30.66 N', '76.31 E', 'Punjab'),
(711, 'Gurdaspur', '32.04 N', '75.40 E', 'Punjab'),
(712, 'Hoshiarpur', '31.53 N', '75.91 E', 'Punjab'),
(713, 'Jagraon', '30.78 N', '75.48 E', 'Punjab'),
(714, 'Jalandhar', '31.33 N', '75.57 E', 'Punjab'),
(715, 'Kapurthala', '31.38 N', '75.38 E', 'Punjab'),
(716, 'Khanna', '30.71 N', '76.21 E', 'Punjab'),
(717, 'Kot Kapura', '30.59 N', '74.80 E', 'Punjab'),
(718, 'Ludhiana', '30.91 N', '75.84 E', 'Punjab'),
(719, 'Malaut', '30.23 N', '74.48 E', 'Punjab'),
(720, 'Maler Kotla', '30.54 N', '75.87 E', 'Punjab'),
(721, 'Mansa', '29.98 N', '75.39 E', 'Punjab'),
(722, 'Moga', '30.82 N', '75.17 E', 'Punjab'),
(723, 'Mohali', '30.78 N', '76.69 E', 'Punjab'),
(724, 'Pathankot', '32.27 N', '75.64 E', 'Punjab'),
(725, 'Patiala', '30.32 N', '76.39 E', 'Punjab'),
(726, 'Phagwara', '31.22 N', '75.76 E', 'Punjab'),
(727, 'Rajpura', '30.48 N', '76.59 E', 'Punjab'),
(728, 'Rupnagar', '30.98 N', '76.52 E', 'Punjab'),
(729, 'Samana', '30.15 N', '76.20 E', 'Punjab'),
(730, 'Sangrur', '30.25 N', '75.84 E', 'Punjab'),
(731, 'Sirhind', '30.65 N', '76.38 E', 'Punjab'),
(732, 'Sunam', '30.13 N', '75.80 E', 'Punjab'),
(733, 'Tarn Taran', '31.45 N', '74.92 E', 'Punjab'),
(734, 'Ajmer', '26.45 N', '74.64 E', 'Rajasthan'),
(735, 'Alwar', '27.56 N', '76.60 E', 'Rajasthan'),
(736, 'Balotra', '25.83 N', '72.23 E', 'Rajasthan'),
(737, 'Banswara', '23.54 N', '74.44 E', 'Rajasthan'),
(738, 'Baran', '25.10 N', '76.51 E', 'Rajasthan'),
(739, 'Bari', '26.65 N', '77.60 E', 'Rajasthan'),
(740, 'Barmer', '25.75 N', '71.39 E', 'Rajasthan'),
(741, 'Beawar', '26.10 N', '74.30 E', 'Rajasthan'),
(742, 'Bharatpur', '27.23 N', '77.49 E', 'Rajasthan'),
(743, 'Bhilwara', '25.35 N', '74.63 E', 'Rajasthan'),
(744, 'Bhiwadi', '', '', 'Rajasthan'),
(745, 'Bikaner', '28.03 N', '73.32 E', 'Rajasthan'),
(746, 'Bundi', '25.45 N', '75.63 E', 'Rajasthan'),
(747, 'Chittaurgarh', '24.89 N', '74.63 E', 'Rajasthan'),
(748, 'Chomun', '27.17 N', '75.72 E', 'Rajasthan'),
(749, 'Churu', '28.31 N', '74.96 E', 'Rajasthan'),
(750, 'Daosa', '26.88 N', '76.33 E', 'Rajasthan'),
(751, 'Dhaulpur', '26.70 N', '77.87 E', 'Rajasthan'),
(752, 'Didwana', '27.39 N', '74.57 E', 'Rajasthan'),
(753, 'Fatehpur', '27.99 N', '74.95 E', 'Rajasthan'),
(754, 'Ganganagar', '29.93 N', '73.86 E', 'Rajasthan'),
(755, 'Gangapur', '26.47 N', '76.72 E', 'Rajasthan'),
(756, 'Hanumangarh', '29.62 N', '74.29 E', 'Rajasthan'),
(757, 'Hindaun', '26.74 N', '77.02 E', 'Rajasthan'),
(758, 'Jaipur', '26.92 N', '75.80 E', 'Rajasthan'),
(759, 'Jaisalmer', '26.92 N', '70.90 E', 'Rajasthan'),
(760, 'Jalor', '25.35 N', '72.62 E', 'Rajasthan'),
(761, 'Jhalawar', '24.60 N', '76.15 E', 'Rajasthan'),
(762, 'Jhunjhunun', '28.13 N', '75.39 E', 'Rajasthan'),
(763, 'Jodhpur', '26.29 N', '73.02 E', 'Rajasthan'),
(764, 'Karauli', '26.50 N', '77.02 E', 'Rajasthan'),
(765, 'Kishangarh', '26.58 N', '74.86 E', 'Rajasthan'),
(766, 'Kota', '25.18 N', '75.83 E', 'Rajasthan'),
(767, 'Kuchaman', '27.15 N', '74.85 E', 'Rajasthan'),
(768, 'Ladnun', '27.64 N', '74.38 E', 'Rajasthan'),
(769, 'Makrana', '27.05 N', '74.72 E', 'Rajasthan'),
(770, 'Nagaur', '27.21 N', '73.73 E', 'Rajasthan'),
(771, 'Nawalgarh', '27.85 N', '75.27 E', 'Rajasthan'),
(772, 'Nimbahera', '24.62 N', '74.68 E', 'Rajasthan'),
(773, 'Nokha', '27.60 N', '73.42 E', 'Rajasthan'),
(774, 'Pali', '25.79 N', '73.32 E', 'Rajasthan'),
(775, 'Rajsamand', '25.07 N', '73.88 E', 'Rajasthan'),
(776, 'Ratangarh', '28.09 N', '74.60 E', 'Rajasthan'),
(777, 'Sardarshahr', '28.45 N', '74.48 E', 'Rajasthan'),
(778, 'Sawai Madhopur', '26.03 N', '76.34 E', 'Rajasthan'),
(779, 'Sikar', '27.61 N', '75.13 E', 'Rajasthan'),
(780, 'Sujangarh', '27.70 N', '74.46 E', 'Rajasthan'),
(781, 'Suratgarh', '29.32 N', '73.90 E', 'Rajasthan'),
(782, 'Tonk', '26.17 N', '75.78 E', 'Rajasthan'),
(783, 'Udaipur', '24.58 N', '73.69 E', 'Rajasthan'),
(784, 'Alandur', '13.03 N', '80.23 E', 'Tamil Nadu'),
(785, 'Ambattur', '13.11 N', '80.17 E', 'Tamil Nadu'),
(786, 'Ambur', '12.80 N', '78.72 E', 'Tamil Nadu'),
(787, 'Arakonam', '13.08 N', '79.67 E', 'Tamil Nadu'),
(788, 'Arani', '12.68 N', '79.28 E', 'Tamil Nadu'),
(789, 'Aruppukkottai', '9.51 N', '78.09 E', 'Tamil Nadu'),
(790, 'Attur', '11.60 N', '78.60 E', 'Tamil Nadu'),
(791, 'Avadi', '13.12 N', '80.11 E', 'Tamil Nadu'),
(792, 'Avaniapuram', '9.86 N', '78.12 E', 'Tamil Nadu'),
(793, 'Bodinayakkanur', '10.01 N', '77.35 E', 'Tamil Nadu'),
(794, 'Chengalpattu', '12.70 N', '79.97 E', 'Tamil Nadu'),
(795, 'Dharapuram', '10.74 N', '77.52 E', 'Tamil Nadu'),
(796, 'Dharmapuri', '12.13 N', '78.16 E', 'Tamil Nadu'),
(797, 'Dindigul', '10.36 N', '77.97 E', 'Tamil Nadu'),
(798, 'Erode', '11.35 N', '77.73 E', 'Tamil Nadu'),
(799, 'Gopichettipalaiyam', '11.46 N', '77.43 E', 'Tamil Nadu'),
(800, 'Gudalur', '11.76 N', '79.75 E', 'Tamil Nadu'),
(801, 'Gudiyattam', '12.95 N', '78.86 E', 'Tamil Nadu'),
(802, 'Hosur', '12.72 N', '77.82 E', 'Tamil Nadu'),
(803, 'Idappadi', '11.58 N', '77.85 E', 'Tamil Nadu'),
(804, 'Kadayanallur', '9.08 N', '77.35 E', 'Tamil Nadu'),
(805, 'Kambam', '9.74 N', '77.28 E', 'Tamil Nadu'),
(806, 'Kanchipuram', '12.84 N', '79.70 E', 'Tamil Nadu'),
(807, 'Karur', '10.96 N', '78.07 E', 'Tamil Nadu'),
(808, 'Kavundampalaiyam', '11.05 N', '76.92 E', 'Tamil Nadu'),
(809, 'Kovilpatti', '9.19 N', '77.86 E', 'Tamil Nadu'),
(810, 'Koyampattur', '11.01 N', '76.96 E', 'Tamil Nadu'),
(811, 'Krishnagiri', '12.54 N', '78.21 E', 'Tamil Nadu'),
(812, 'Kumarapalaiyam', '11.44 N', '77.73 E', 'Tamil Nadu'),
(813, 'Kumbakonam', '10.97 N', '79.38 E', 'Tamil Nadu'),
(814, 'Kuniyamuthur', '10.98 N', '76.95 E', 'Tamil Nadu'),
(815, 'Kurichi', '10.92 N', '76.96 E', 'Tamil Nadu'),
(816, 'Madhavaram', '13.02 N', '80.26 E', 'Tamil Nadu'),
(817, 'Madras', '13.09 N', '80.27 E', 'Tamil Nadu'),
(818, 'Madurai', '9.92 N', '78.12 E', 'Tamil Nadu'),
(819, 'Maduravoyal', '', '', 'Tamil Nadu'),
(820, 'Mannargudi', '10.67 N', '79.45 E', 'Tamil Nadu'),
(821, 'Mayiladuthurai', '11.11 N', '79.65 E', 'Tamil Nadu'),
(822, 'Mettupalayam', '11.30 N', '76.94 E', 'Tamil Nadu'),
(823, 'Mettur', '11.80 N', '77.80 E', 'Tamil Nadu'),
(824, 'Nagapattinam', '10.80 N', '79.84 E', 'Tamil Nadu'),
(825, 'Nagercoil', '8.18 N', '77.43 E', 'Tamil Nadu'),
(826, 'Namakkal', '11.23 N', '78.17 E', 'Tamil Nadu'),
(827, 'Nerkunram', '13.04 N', '80.26 E', 'Tamil Nadu'),
(828, 'Neyveli', '11.62 N', '79.48 E', 'Tamil Nadu'),
(829, 'Pallavaram', '12.99 N', '80.16 E', 'Tamil Nadu'),
(830, 'Pammal', '12.97 N', '80.11 E', 'Tamil Nadu'),
(831, 'Pannuratti', '11.78 N', '79.55 E', 'Tamil Nadu'),
(832, 'Paramakkudi', '9.54 N', '78.59 E', 'Tamil Nadu'),
(833, 'Pattukkottai', '10.43 N', '79.31 E', 'Tamil Nadu'),
(834, 'Pollachi', '10.67 N', '77.00 E', 'Tamil Nadu'),
(835, 'Pudukkottai', '10.39 N', '78.82 E', 'Tamil Nadu'),
(836, 'Puliyankudi', '9.18 N', '77.40 E', 'Tamil Nadu'),
(837, 'Punamalli', '13.05 N', '80.11 E', 'Tamil Nadu'),
(838, 'Rajapalaiyam', '9.46 N', '77.55 E', 'Tamil Nadu'),
(839, 'Ramanathapuram', '9.37 N', '78.83 E', 'Tamil Nadu'),
(840, 'Salem', '11.67 N', '78.16 E', 'Tamil Nadu'),
(841, 'Sankarankoil', '9.17 N', '77.54 E', 'Tamil Nadu'),
(842, 'Sivakasi', '9.46 N', '77.79 E', 'Tamil Nadu'),
(843, 'Srivilliputtur', '9.52 N', '77.63 E', 'Tamil Nadu'),
(844, 'Tambaram', '12.93 N', '80.12 E', 'Tamil Nadu'),
(845, 'Tenkasi', '8.96 N', '77.31 E', 'Tamil Nadu'),
(846, 'Thanjavur', '10.79 N', '79.13 E', 'Tamil Nadu'),
(847, 'Theni Allinagaram', '10.02 N', '77.48 E', 'Tamil Nadu'),
(848, 'Thiruthangal', '9.48 N', '77.83 E', 'Tamil Nadu'),
(849, 'Thiruvarur', '10.78 N', '79.64 E', 'Tamil Nadu'),
(850, 'Thuthukkudi', '8.81 N', '78.14 E', 'Tamil Nadu'),
(851, 'Tindivanam', '12.24 N', '79.65 E', 'Tamil Nadu'),
(852, 'Tiruchchirappalli', '10.81 N', '78.69 E', 'Tamil Nadu'),
(853, 'Tiruchengode', '11.38 N', '77.90 E', 'Tamil Nadu'),
(854, 'Tirunelveli', '8.73 N', '77.69 E', 'Tamil Nadu'),
(855, 'Tirupathur', '12.50 N', '78.57 E', 'Tamil Nadu'),
(856, 'Tiruppur', '11.09 N', '77.35 E', 'Tamil Nadu'),
(857, 'Tiruvannamalai', '12.24 N', '79.07 E', 'Tamil Nadu'),
(858, 'Tiruvottiyur', '13.16 N', '80.29 E', 'Tamil Nadu'),
(859, 'Udagamandalam', '11.42 N', '76.69 E', 'Tamil Nadu'),
(860, 'Udumalaipettai', '10.58 N', '77.24 E', 'Tamil Nadu'),
(861, 'Valparai', '10.38 N', '76.99 E', 'Tamil Nadu'),
(862, 'Vaniyambadi', '12.69 N', '78.60 E', 'Tamil Nadu'),
(863, 'Velampalaiyam', '', '', 'Tamil Nadu'),
(864, 'Velluru', '12.92 N', '79.13 E', 'Tamil Nadu'),
(865, 'Viluppuram', '11.95 N', '79.49 E', 'Tamil Nadu'),
(866, 'Virappanchatram', '11.40 N', '77.70 E', 'Tamil Nadu'),
(867, 'Virudhachalam', '11.51 N', '79.32 E', 'Tamil Nadu'),
(868, 'Virudunagar', '9.59 N', '77.95 E', 'Tamil Nadu'),
(869, 'Agartala', '23.84 N', '91.27 E', 'Tripura'),
(870, 'Agartala MCl', '', '', 'Tripura'),
(871, 'Badharghat', '', '', 'Tripura'),
(872, 'Agra', '27.19 N', '78.01 E', 'Uttar Pradesh'),
(873, 'Aligarh', '27.89 N', '78.06 E', 'Uttar Pradesh'),
(874, 'Allahabad', '25.45 N', '81.84 E', 'Uttar Pradesh'),
(875, 'Amroha', '28.91 N', '78.46 E', 'Uttar Pradesh'),
(876, 'Aonla', '28.28 N', '79.15 E', 'Uttar Pradesh'),
(877, 'Auraiya', '26.47 N', '79.50 E', 'Uttar Pradesh'),
(878, 'Ayodhya', '26.80 N', '82.20 E', 'Uttar Pradesh'),
(879, 'Azamgarh', '26.07 N', '83.18 E', 'Uttar Pradesh'),
(880, 'Baheri', '28.78 N', '79.50 E', 'Uttar Pradesh'),
(881, 'Bahraich', '27.58 N', '81.59 E', 'Uttar Pradesh'),
(882, 'Ballia', '25.76 N', '84.15 E', 'Uttar Pradesh'),
(883, 'Balrampur', '27.43 N', '82.18 E', 'Uttar Pradesh'),
(884, 'Banda', '25.48 N', '80.33 E', 'Uttar Pradesh'),
(885, 'Baraut', '29.10 N', '77.26 E', 'Uttar Pradesh'),
(886, 'Bareli', '28.36 N', '79.41 E', 'Uttar Pradesh'),
(887, 'Basti', '26.80 N', '82.74 E', 'Uttar Pradesh'),
(888, 'Behta Hajipur', '', '', 'Uttar Pradesh'),
(889, 'Bela', '25.92 N', '81.99 E', 'Uttar Pradesh'),
(890, 'Bhadohi', '25.40 N', '82.56 E', 'Uttar Pradesh'),
(891, 'Bijnor', '29.38 N', '78.13 E', 'Uttar Pradesh'),
(892, 'Bisalpur', '28.30 N', '79.80 E', 'Uttar Pradesh'),
(893, 'Biswan', '27.50 N', '81.00 E', 'Uttar Pradesh'),
(894, 'Budaun', '28.04 N', '79.12 E', 'Uttar Pradesh'),
(895, 'Bulandshahr', '28.41 N', '77.85 E', 'Uttar Pradesh'),
(896, 'Chandausi', '28.46 N', '78.78 E', 'Uttar Pradesh'),
(897, 'Chandpur', '29.14 N', '78.27 E', 'Uttar Pradesh'),
(898, 'Chhibramau', '27.15 N', '79.52 E', 'Uttar Pradesh'),
(899, 'Chitrakut Dham', '25.20 N', '80.84 E', 'Uttar Pradesh'),
(900, 'Dadri', '28.57 N', '77.55 E', 'Uttar Pradesh'),
(901, 'Deoband', '29.70 N', '77.67 E', 'Uttar Pradesh'),
(902, 'Deoria', '26.51 N', '83.78 E', 'Uttar Pradesh'),
(903, 'Etah', '27.57 N', '78.64 E', 'Uttar Pradesh'),
(904, 'Etawah', '26.78 N', '79.01 E', 'Uttar Pradesh'),
(905, 'Faizabad', '26.78 N', '82.14 E', 'Uttar Pradesh'),
(906, 'Faridpur', '28.22 N', '79.53 E', 'Uttar Pradesh'),
(907, 'Farrukhabad', '27.40 N', '79.57 E', 'Uttar Pradesh'),
(908, 'Fatehpur', '25.93 N', '80.81 E', 'Uttar Pradesh'),
(909, 'Firozabad', '27.15 N', '78.39 E', 'Uttar Pradesh'),
(910, 'Gajraula', '28.85 N', '78.23 E', 'Uttar Pradesh'),
(911, 'Ganga Ghat', '26.52 N', '80.45 E', 'Uttar Pradesh'),
(912, 'Gangoh', '29.77 N', '77.25 E', 'Uttar Pradesh'),
(913, 'Ghaziabad', '28.66 N', '77.41 E', 'Uttar Pradesh'),
(914, 'Ghazipur', '25.59 N', '83.59 E', 'Uttar Pradesh'),
(915, 'Gola Gokarannath', '28.08 N', '80.47 E', 'Uttar Pradesh'),
(916, 'Gonda', '27.14 N', '81.95 E', 'Uttar Pradesh'),
(917, 'Gorakhpur', '26.76 N', '83.36 E', 'Uttar Pradesh'),
(918, 'Hapur', '28.73 N', '77.77 E', 'Uttar Pradesh'),
(919, 'Hardoi', '27.42 N', '80.12 E', 'Uttar Pradesh'),
(920, 'Hasanpur', '28.72 N', '78.28 E', 'Uttar Pradesh'),
(921, 'Hathras', '27.60 N', '78.04 E', 'Uttar Pradesh'),
(922, 'Jahangirabad', '28.42 N', '78.10 E', 'Uttar Pradesh'),
(923, 'Jalaun', '26.15 N', '79.35 E', 'Uttar Pradesh'),
(924, 'Jaunpur', '25.76 N', '82.69 E', 'Uttar Pradesh'),
(925, 'Jhansi', '25.45 N', '78.56 E', 'Uttar Pradesh'),
(926, 'Kadi', '23.31 N', '72.33 E', 'Uttar Pradesh'),
(927, 'Kairana', '29.40 N', '77.20 E', 'Uttar Pradesh'),
(928, 'Kannauj', '27.06 N', '79.91 E', 'Uttar Pradesh'),
(929, 'Kanpur', '26.47 N', '80.33 E', 'Uttar Pradesh'),
(930, 'Kanpur Cantonment', '26.50 N', '80.28 E', 'Uttar Pradesh'),
(931, 'Kasganj', '27.81 N', '78.63 E', 'Uttar Pradesh'),
(932, 'Khatauli', '29.28 N', '77.72 E', 'Uttar Pradesh'),
(933, 'Khora', '', '', 'Uttar Pradesh'),
(934, 'Khurja', '28.26 N', '77.85 E', 'Uttar Pradesh'),
(935, 'Kiratpur', '29.52 N', '78.20 E', 'Uttar Pradesh'),
(936, 'Kosi Kalan', '27.80 N', '77.44 E', 'Uttar Pradesh'),
(937, 'Laharpur', '27.72 N', '80.90 E', 'Uttar Pradesh'),
(938, 'Lakhimpur', '27.95 N', '80.78 E', 'Uttar Pradesh'),
(939, 'Lakhnau', '26.85 N', '80.92 E', 'Uttar Pradesh'),
(940, 'Lakhnau Cantonment', '26.81 N', '80.97 E', 'Uttar Pradesh'),
(941, 'Lalitpur', '24.70 N', '78.41 E', 'Uttar Pradesh'),
(942, 'Loni', '28.75 N', '77.28 E', 'Uttar Pradesh'),
(943, 'Mahoba', '25.30 N', '79.87 E', 'Uttar Pradesh'),
(944, 'Mainpuri', '27.24 N', '79.02 E', 'Uttar Pradesh'),
(945, 'Mathura', '27.50 N', '77.68 E', 'Uttar Pradesh'),
(946, 'Mau', '25.96 N', '83.56 E', 'Uttar Pradesh'),
(947, 'Mauranipur', '25.24 N', '79.13 E', 'Uttar Pradesh'),
(948, 'Mawana', '29.11 N', '77.91 E', 'Uttar Pradesh'),
(949, 'Mirat', '28.99 N', '77.70 E', 'Uttar Pradesh'),
(950, 'Mirat Cantonment', '29.02 N', '77.67 E', 'Uttar Pradesh'),
(951, 'Mirzapur', '25.16 N', '82.56 E', 'Uttar Pradesh'),
(952, 'Modinagar', '28.92 N', '77.62 E', 'Uttar Pradesh'),
(953, 'Moradabad', '28.84 N', '78.76 E', 'Uttar Pradesh'),
(954, 'Mubarakpur', '26.09 N', '83.28 E', 'Uttar Pradesh'),
(955, 'Mughal Sarai', '25.30 N', '83.12 E', 'Uttar Pradesh'),
(956, 'Muradnagar', '28.78 N', '77.50 E', 'Uttar Pradesh');
INSERT INTO `lk_tb_city` (`city_id`, `city_name`, `latitude`, `longitude`, `state`) VALUES
(957, 'Muzaffarnagar', '29.48 N', '77.69 E', 'Uttar Pradesh'),
(958, 'Nagina', '29.45 N', '78.43 E', 'Uttar Pradesh'),
(959, 'Najibabad', '29.62 N', '78.33 E', 'Uttar Pradesh'),
(960, 'Nawabganj', '26.94 N', '81.19 E', 'Uttar Pradesh'),
(961, 'Noida', '28.58 N', '77.33 E', 'Uttar Pradesh'),
(962, 'Obra', '24.42 N', '82.98 E', 'Uttar Pradesh'),
(963, 'Orai', '25.99 N', '79.45 E', 'Uttar Pradesh'),
(964, 'Pilibhit', '28.64 N', '79.81 E', 'Uttar Pradesh'),
(965, 'Pilkhuwa', '28.72 N', '77.65 E', 'Uttar Pradesh'),
(966, 'Rae Bareli', '26.23 N', '81.23 E', 'Uttar Pradesh'),
(967, 'Ramgarh Nagla Kothi', '', '', 'Uttar Pradesh'),
(968, 'Rampur', '28.82 N', '79.02 E', 'Uttar Pradesh'),
(969, 'Rath', '25.58 N', '79.57 E', 'Uttar Pradesh'),
(970, 'Renukut', '24.20 N', '83.03 E', 'Uttar Pradesh'),
(971, 'Saharanpur', '29.97 N', '77.54 E', 'Uttar Pradesh'),
(972, 'Sahaswan', '28.08 N', '78.74 E', 'Uttar Pradesh'),
(973, 'Sambhal', '28.59 N', '78.56 E', 'Uttar Pradesh'),
(974, 'Sandila', '27.08 N', '80.52 E', 'Uttar Pradesh'),
(975, 'Shahabad', '27.65 N', '79.95 E', 'Uttar Pradesh'),
(976, 'Shahjahanpur', '27.88 N', '79.90 E', 'Uttar Pradesh'),
(977, 'Shamli', '29.46 N', '77.31 E', 'Uttar Pradesh'),
(978, 'Sherkot', '29.35 N', '78.58 E', 'Uttar Pradesh'),
(979, 'Shikohabad', '27.12 N', '78.58 E', 'Uttar Pradesh'),
(980, 'Sikandarabad', '28.44 N', '77.69 E', 'Uttar Pradesh'),
(981, 'Sitapur', '27.57 N', '80.69 E', 'Uttar Pradesh'),
(982, 'Sukhmalpur Nizamabad', '', '', 'Uttar Pradesh'),
(983, 'Sultanpur', '26.26 N', '82.06 E', 'Uttar Pradesh'),
(984, 'Tanda', '26.55 N', '82.65 E', 'Uttar Pradesh'),
(985, 'Tilhar', '27.98 N', '79.73 E', 'Uttar Pradesh'),
(986, 'Tundla', '27.20 N', '78.28 E', 'Uttar Pradesh'),
(987, 'Ujhani', '28.02 N', '79.02 E', 'Uttar Pradesh'),
(988, 'Unnao', '26.55 N', '80.49 E', 'Uttar Pradesh'),
(989, 'Varanasi', '25.32 N', '83.01 E', 'Uttar Pradesh'),
(990, 'Vrindavan', '27.58 N', '77.70 E', 'Uttar Pradesh'),
(991, 'Dehra Dun', '30.34 N', '78.05 E', 'Uttaranchal'),
(992, 'Dehra Dun Cantonment', '30.34 N', '77.97 E', 'Uttaranchal'),
(993, 'Gola Range', '', '', 'Uttaranchal'),
(994, 'Haldwani', '29.23 N', '79.52 E', 'Uttaranchal'),
(995, 'Haridwar', '29.98 N', '78.16 E', 'Uttaranchal'),
(996, 'Kashipur', '29.22 N', '78.96 E', 'Uttaranchal'),
(997, 'Pithoragarh', '29.58 N', '80.22 E', 'Uttaranchal'),
(998, 'Rishikesh', '30.12 N', '78.29 E', 'Uttaranchal'),
(999, 'Rudrapur', '', '', 'Uttaranchal'),
(1000, 'Rurki', '29.87 N', '77.89 E', 'Uttaranchal');

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_experience`
--

CREATE TABLE `lk_tb_experience` (
  `exp_id` int(11) NOT NULL,
  `experience` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_experience`
--

INSERT INTO `lk_tb_experience` (`exp_id`, `experience`) VALUES
(1, 0),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(9, 8),
(10, 9),
(11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_industry`
--

CREATE TABLE `lk_tb_industry` (
  `industry_id` int(11) NOT NULL,
  `industry_name` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_industry`
--

INSERT INTO `lk_tb_industry` (`industry_id`, `industry_name`) VALUES
(1, 'Accounting/Finance'),
(2, 'Advertising/PR/MR/Events'),
(3, 'Agriculture/Dairy'),
(4, 'Animation'),
(5, 'Architecture/Interior Designing'),
(6, 'Auto/Auto Ancillary'),
(7, 'Aviation / Aerospace Firms'),
(8, 'Banking/Financial Services/Broking'),
(9, 'BPO/ITES'),
(10, 'Brewery / Distillery'),
(11, 'Broadcasting'),
(12, 'Ceramics /Sanitary ware'),
(13, 'Chemicals/PetroChemical/Plastic/Rubber'),
(14, 'Construction/Engineering/Cement/Metals'),
(15, 'Consumer Durables'),
(16, 'Courier/Transportation/Freight'),
(17, 'Defence/Government'),
(18, 'Education/Teaching/Training'),
(19, 'Electricals / Switchgears'),
(20, 'Export/Import'),
(21, 'Facility Management'),
(22, 'Fertilizers/Pesticides'),
(23, 'FMCG/Foods/Beverage'),
(24, 'Food Processing'),
(25, 'Fresher/Trainee'),
(26, 'Gems & Jewellery'),
(27, 'Glass'),
(28, 'Heat Ventilation Air Conditioning'),
(29, 'Hotels/Restaurants/Airlines/Travel'),
(30, 'Industrial Products/Heavy Machinery'),
(31, 'Insurance'),
(32, 'Internet/Ecommerce'),
(33, 'IT-Hardware & Networking'),
(34, 'IT-Software/Software Services'),
(35, 'KPO / Research /Analytics'),
(36, 'Leather'),
(37, 'Media/Dotcom/Entertainment'),
(38, 'Medical/Healthcare/Hospital'),
(39, 'Mining'),
(40, 'NGO/Social Services'),
(41, 'ffice Equipment/Automation'),
(42, 'Oil and Gas/Power/Infrastructure/Energy'),
(43, 'Paper'),
(44, 'Pharma/Biotech/Clinical Research'),
(45, 'Printing/Packaging'),
(46, 'Publishing'),
(47, 'Real Estate/Property'),
(48, 'Recruitment'),
(49, 'Retail'),
(50, 'Security/Law Enforcement'),
(51, 'Semiconductors/Electronics'),
(52, 'Shipping/Marine'),
(53, 'Steel'),
(54, 'Strategy /Management Consulting Firms'),
(55, 'Sugar'),
(56, 'Telcom/ISP'),
(57, 'Textiles/Garments/Accessories'),
(58, 'Tyres'),
(59, 'Water Treatment / Waste Management'),
(60, 'Wellness/Fitness/Sports'),
(61, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_job_type`
--

CREATE TABLE `lk_tb_job_type` (
  `job_type_id` int(11) NOT NULL,
  `job_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_job_type`
--

INSERT INTO `lk_tb_job_type` (`job_type_id`, `job_type`) VALUES
(1, 'Full time'),
(2, 'Part time'),
(3, 'Temporary'),
(4, 'Contract'),
(5, 'Internship');

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_keywords`
--

CREATE TABLE `lk_tb_keywords` (
  `lk_keywords_id` int(11) NOT NULL,
  `keywords` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_keywords`
--

INSERT INTO `lk_tb_keywords` (`lk_keywords_id`, `keywords`) VALUES
(1, 'Good communication skills'),
(2, 'Customer Calling'),
(3, 'Customer service'),
(4, 'SAP - ERP'),
(5, 'CRM'),
(6, 'html css'),
(7, 'php'),
(8, 'mysql'),
(9, 'javascrip'),
(10, 'java'),
(11, 'javascript'),
(12, 'html'),
(13, 'css'),
(21, 'Good knowledge of ERP'),
(15, 'Developing'),
(16, 'Programming'),
(17, 'Testing'),
(18, 'sql'),
(19, 'xml'),
(20, 'oracle'),
(22, 'Microsoft Excel and other Microsoft programs'),
(23, 'Content Writing Content Development writing development Social Media Marketing Digital Marketing Online Marketing Content Designing Web Content & Messaging Social Marketing'),
(24, 'Content Writing'),
(25, 'Content Development'),
(26, 'writing development'),
(27, 'Social Media Marketing'),
(28, 'Digital Marketing'),
(29, 'Online Marketing'),
(30, 'Content Designing'),
(31, 'Web Content & Messaging'),
(32, 'Social Marketing'),
(33, 'Hadoop'),
(34, 'jQuery'),
(35, 'good communication skills.'),
(36, 'Ajax'),
(37, 'joomla'),
(38, 'OSCommerce'),
(39, 'Drupal'),
(40, 'CSS...');

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_location`
--

CREATE TABLE `lk_tb_location` (
  `location_id` int(11) NOT NULL,
  `locations` varchar(111) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_location`
--

INSERT INTO `lk_tb_location` (`location_id`, `locations`) VALUES
(1, 'Bengaluru/Bangalore'),
(2, 'Mumbai'),
(3, 'Chennai'),
(4, 'Pune'),
(5, 'Hyderabad / Secunderabad'),
(6, 'Agra'),
(7, 'Ahmedabad'),
(8, 'Ajmer'),
(9, 'Aligarh'),
(10, 'Allahabad'),
(11, 'Ambala'),
(12, 'Amritsar'),
(13, 'Asansol'),
(14, 'Aurangabad'),
(15, 'Bareilly'),
(16, 'Bathinda'),
(17, 'Bhagalpur'),
(18, 'Bhilai/Bhillai'),
(19, 'Bhopal'),
(20, 'Bhubaneshwar'),
(21, 'Bikaner'),
(22, 'Bokaro'),
(23, 'Cuttack'),
(24, 'Dehradun'),
(25, 'Delhi'),
(26, 'Delhi/NCR(National Capital Region)'),
(27, 'Dhanbad'),
(28, 'Dharmasala'),
(29, 'Ernakulam / Kochi/ Cochin'),
(30, 'Faizabad'),
(31, 'Faridabad'),
(32, 'Firozpur'),
(33, 'Gandhinagar'),
(34, 'Gaya'),
(35, 'Ghaziabad'),
(36, 'Gorakhpur'),
(37, 'Greater Noida'),
(38, 'Gurgaon'),
(39, 'Guwahati'),
(40, 'Gwalior'),
(41, 'Indore'),
(42, 'Itanagar'),
(43, 'Jaipur'),
(44, 'Jaisalmer'),
(45, 'Jammu'),
(46, 'Jamshedpur'),
(47, 'Jodhpur'),
(48, 'Kanchipuram'),
(49, 'Kanpur'),
(50, 'Kolkata'),
(51, 'Kota'),
(52, 'Lucknow'),
(53, 'Ludhiana'),
(54, 'Meerut'),
(55, 'Mohali'),
(56, 'Muzaffarpur'),
(57, 'Nagpur'),
(58, 'Navi Mumbai'),
(59, 'Noida'),
(60, 'Panipat'),
(61, 'Patiala'),
(62, 'Patna'),
(63, 'Raipur'),
(64, 'Rajkot'),
(65, 'Ranchi'),
(66, 'Rohtak'),
(67, 'Roorkee'),
(68, 'Shimla'),
(69, 'Siliguri'),
(70, 'Surat'),
(71, 'Trivandrum'),
(72, 'Udaipur'),
(73, 'Vadodara/Baroda'),
(74, 'Varanasi'),
(75, 'Visakhapatnam/Vizag'),
(82, 'Haridwar'),
(83, 'dflkldfjlk'),
(84, 'rampur'),
(85, 'Raiganj'),
(86, 'surendrapur'),
(87, 'Roshanpur');

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_position`
--

CREATE TABLE `lk_tb_position` (
  `position_id` int(11) NOT NULL,
  `position` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_position`
--

INSERT INTO `lk_tb_position` (`position_id`, `position`) VALUES
(1, 'Domain Expert'),
(2, 'Sr. Project Leader'),
(3, 'Solution Architect'),
(4, 'Quality Analyst'),
(5, 'Database Architect/DBA'),
(6, 'Network/System Administrator'),
(7, 'Project Leader'),
(8, 'Module Leader'),
(9, 'Sr. Programmer'),
(10, 'Programmer'),
(11, 'Test Engineer'),
(13, 'Sales Executive/Officer'),
(14, 'Counter Sales'),
(15, 'Sales/Business Development Manager'),
(16, 'Sales Promotion Manager'),
(17, 'Retail Store Manager'),
(18, 'Branch Manager'),
(19, 'Area Sales Manager'),
(20, 'Sales Executive/Officer'),
(21, 'Software Developer'),
(22, 'Team Lead/Technical Lead'),
(23, 'System Analyst'),
(24, 'Technical Architect'),
(25, 'Database Architect/Designer'),
(26, 'Project Lead'),
(27, 'Testing Engineer'),
(28, 'Product Manager'),
(29, 'Graphic/Web Designer'),
(30, 'DBA'),
(31, 'Network Administrator'),
(32, 'System Administrator'),
(33, 'System Security'),
(34, 'Technical Support Engineer'),
(35, 'Maintenance Engineer'),
(36, 'Webmaster'),
(37, 'IT/Networking-Manager'),
(38, 'System Integration Technician'),
(39, 'Business Analyst'),
(40, 'Project Manager-IT/Software'),
(41, 'Program Manager'),
(42, 'Trainee'),
(43, 'Fresher'),
(44, 'IT/Technical Content Developer'),
(45, 'Associate/Senior Associate -(NonTechnical)'),
(46, 'Associate/Senior Associate -(Technical)'),
(47, 'Team Leader -(NonTechnical)'),
(48, 'Team Leader -(Technical)'),
(49, 'Assistant Manager/Manager -(NonTechnical)'),
(50, 'Assistant Manager/Manager-(Technical)'),
(51, 'Technical/Process Trainer'),
(52, 'Voice & Accent Trainer'),
(53, 'Soft Skills Trainer'),
(54, 'Industrial Engineer'),
(55, 'Design Engineer/Manager'),
(56, 'Factory Head'),
(57, 'Engineering Manager'),
(58, 'Production Manager'),
(59, 'Product Development Executive'),
(60, 'Product Development Manager'),
(61, 'Service/Maintenance Engineer'),
(62, 'Accounts Executive/Accountant'),
(63, 'Accounts Manager'),
(64, 'Financial Accountant'),
(65, 'HR Executive'),
(66, 'HR Manager'),
(67, 'Recruitment Executive'),
(68, 'Recruitment Manager'),
(69, 'Training Manager'),
(70, 'Project Manager-IT/Software'),
(71, 'Program Manager'),
(72, 'IT/Technical Content Developer'),
(73, 'IT/Networking-Manager'),
(74, 'System Administrator'),
(75, 'Trainer/Faculty'),
(78, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_qualification`
--

CREATE TABLE `lk_tb_qualification` (
  `qualification_id` int(11) NOT NULL,
  `qualification_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_qualification`
--

INSERT INTO `lk_tb_qualification` (`qualification_id`, `qualification_name`) VALUES
(1, 'B.A'),
(2, 'B.Arch'),
(3, 'BCA'),
(4, 'B.B.A'),
(5, 'B.Com'),
(6, 'B.Ed'),
(7, 'BDS'),
(8, 'BHM'),
(9, 'B.Pharma'),
(10, 'B.Sc'),
(11, 'B.Tech/B.E.'),
(12, 'LLB'),
(13, 'MBBS'),
(14, 'Diploma'),
(15, 'BVSC'),
(16, 'CA'),
(17, 'ICWA (CMA)'),
(18, 'Integrated PG'),
(19, 'LLM'),
(20, 'M.A'),
(21, 'M.Arch'),
(22, 'M.Com'),
(23, 'M.Ed'),
(24, 'M.Pharma'),
(25, 'M.Sc'),
(26, 'M.Tech'),
(27, 'MBA/PGDM'),
(28, 'MCA'),
(29, 'MS'),
(30, 'PG Diploma'),
(31, 'MVSC'),
(32, 'MCM'),
(33, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_salary`
--

CREATE TABLE `lk_tb_salary` (
  `salary_id` int(11) NOT NULL,
  `salary` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_salary`
--

INSERT INTO `lk_tb_salary` (`salary_id`, `salary`) VALUES
(1, 0),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(9, 8),
(10, 9),
(11, 10),
(12, 11),
(13, 12),
(14, 13),
(15, 14),
(16, 15),
(17, 16),
(18, 17),
(19, 18),
(20, 19),
(21, 20),
(22, 21),
(23, 22),
(24, 23),
(25, 24),
(26, 25),
(27, 26),
(28, 27),
(29, 28),
(30, 29),
(31, 30),
(32, 31),
(33, 32),
(34, 33),
(35, 34),
(36, 35),
(37, 36),
(38, 37),
(39, 38),
(40, 39),
(41, 40);

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_skills`
--

CREATE TABLE `lk_tb_skills` (
  `skill_id` int(11) NOT NULL,
  `category_id` int(100) NOT NULL,
  `skill` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lk_tb_skills`
--

INSERT INTO `lk_tb_skills` (`skill_id`, `category_id`, `skill`) VALUES
(26, 29, 'Desktop Software Development'),
(27, 29, 'Ecommerce Development'),
(30, 29, 'Game Development'),
(31, 29, 'Mobile Development'),
(32, 29, 'Product Management'),
(33, 29, 'QA & Testing'),
(34, 29, 'Scripts & Utilities'),
(35, 29, 'Web Development'),
(36, 29, 'Web & Mobile Design'),
(37, 29, 'Other - Software Development'),
(38, 6, 'Database Administration'),
(39, 6, 'ERP / CRM Software'),
(40, 6, 'Information Security'),
(41, 6, 'Network & System Administration'),
(42, 6, 'Other - IT & Networking'),
(43, 7, 'A/B Testing'),
(44, 7, 'Data Visualization'),
(45, 7, 'Data Extraction / ETL'),
(46, 7, 'Data Mining & Management'),
(47, 7, 'Machine Learning'),
(48, 7, 'Quantitative Analysis'),
(49, 7, 'Other - Data Science & Analytics'),
(50, 45, 'Civil & Structural Engineering'),
(51, 45, 'Contract Manufacturing'),
(52, 45, 'Electrical Engineering'),
(53, 45, 'Interior Design'),
(54, 45, 'Mechanical Engineering'),
(55, 45, 'Product Design'),
(56, 45, 'Other - Engineering & Architecture'),
(57, 46, 'Illustration'),
(58, 46, 'Logo Design & Branding'),
(59, 46, 'Photography'),
(60, 46, 'Presentations'),
(61, 46, 'Video Production'),
(62, 46, 'Voice Talent'),
(63, 46, 'Other - Design & Creative'),
(64, 46, 'Animation'),
(65, 46, 'Audio Production'),
(66, 46, 'Graphic Design'),
(67, 47, 'Academic Writing & Research'),
(68, 47, 'Article & Blog Writing'),
(69, 47, 'Copywriting'),
(70, 47, 'Creative Writing'),
(71, 47, 'Editing & Proofreading'),
(72, 47, 'Grant Writing'),
(73, 47, 'Resumes & Cover Letters'),
(74, 47, 'Technical Writing'),
(75, 47, 'Web Content'),
(76, 47, 'Other - Writing'),
(77, 10, 'General Translation'),
(78, 10, 'Legal Translation'),
(79, 10, 'Medical Translation'),
(80, 10, 'Technical Translation'),
(81, 48, 'Contract Law'),
(82, 48, 'Corporate Law'),
(83, 48, 'Criminal Law'),
(84, 48, 'Family Law'),
(85, 48, 'Intellectual Property Law'),
(86, 48, 'Paralegal Services'),
(87, 48, 'Other - Legal'),
(88, 3, 'Data Entry'),
(89, 3, 'Personal / Virtual Assistant'),
(90, 3, 'Project Management'),
(91, 3, 'Transcription'),
(92, 3, 'Web Research'),
(93, 3, 'Other - Admin Support'),
(94, 49, 'Customer Service'),
(95, 49, 'Technical Support'),
(96, 49, 'Other - Customer Service'),
(97, 50, 'Display Advertising'),
(98, 50, 'Email & Marketing Automation'),
(99, 50, 'Lead Generation'),
(100, 50, 'Market & Customer Research'),
(101, 50, 'Marketing Strategy'),
(102, 50, 'Public Relations'),
(103, 50, 'SEM - Search Engine Marketing'),
(104, 50, 'SEO - Search Engine Optimization'),
(105, 50, 'SMM - Social Media Marketing'),
(106, 50, 'Telemarketing & Telesales'),
(107, 50, 'Other - Sales & Marketing'),
(108, 51, 'Accounting'),
(109, 51, 'Financial Planning'),
(110, 51, 'Human Resources'),
(111, 51, 'Management Consulting'),
(112, 51, 'Other - Accounting & Consulting'),
(113, 1, 'Accounting Clerk '),
(114, 1, 'Accounts Payable'),
(115, 1, 'Accounts Receivable'),
(116, 1, 'Banking and Financial Services'),
(117, 1, 'Billing'),
(118, 1, 'Bookkeeping'),
(119, 1, 'Cost Accounting'),
(120, 1, 'Credit and Collections '),
(121, 1, 'Financial Analyst'),
(122, 1, 'Internal Audit Preparation'),
(123, 1, 'Payroll'),
(124, 1, 'Public Accounting'),
(125, 1, 'Senior Accountant'),
(126, 1, 'Staff Accountant '),
(127, 1, 'Tax Accounting'),
(128, 8, 'Banking -General'),
(129, 8, 'Bank Assurance'),
(130, 8, 'Personal/ Retail Banking'),
(131, 8, 'Portfolio/Fund Mgmt'),
(132, 8, 'Equity Analyst'),
(133, 8, 'Treasury'),
(134, 8, 'Underwriter'),
(135, 8, 'Mergers 0AMP0 Acquisitions'),
(136, 8, 'Risk/Credit/Economic Analyst'),
(137, 8, 'Insurance Advisor'),
(138, 8, 'Trading'),
(139, 8, 'Corporate Advisory'),
(140, 8, 'Mutual Funds'),
(141, 8, 'Merchant Banking'),
(142, 8, 'IPO'),
(143, 8, 'Relationship Mgmt'),
(144, 8, 'Claims/Collection Mgmt'),
(145, 8, 'Project/Structured Finance'),
(146, 8, 'Insurance Analyst'),
(147, 8, 'Stock Broking'),
(148, 9, 'Business Content Developer'),
(149, 9, 'Business Editor'),
(150, 9, 'Features Writer/Resident Write'),
(151, 9, 'Fashion Content Developer'),
(152, 9, 'Investigative Journalist'),
(153, 9, 'Political Editor'),
(154, 9, 'Sports Content Developer'),
(155, 9, 'IT/Technical Content Developer'),
(156, 9, 'Features Content Developer'),
(157, 9, 'Managing Editor'),
(158, 9, 'Intnl Business Editor'),
(159, 9, 'Fashion Editor'),
(160, 9, 'Political Content Developer '),
(161, 9, 'Sports Editor'),
(162, 9, 'IT/Technical Editor'),
(163, 9, 'Features Editor'),
(164, 9, 'Proof Reader'),
(165, 9, 'Chief of Bureau/Editor in Chie'),
(166, 9, 'Freelance Journalist'),
(167, 9, 'Principal Correspondent'),
(168, 9, 'Freelance Journalist'),
(169, 9, 'Principal Correspondent'),
(170, 9, 'Other Content/Journalism'),
(171, 12, 'Business Development'),
(172, 12, 'Freight/Logistics'),
(173, 12, 'Floor'),
(174, 12, 'Other Exp/Imp'),
(175, 12, 'Production'),
(176, 12, 'Documentation/Shipping'),
(177, 12, 'Merchandiser'),
(178, 12, 'QA/QC'),
(179, 12, 'Agent'),
(180, 12, 'Purchase'),
(181, 13, 'Channel Sales'),
(182, 13, 'Direct/Commission Sales'),
(183, 13, 'Technical Sales'),
(184, 13, 'Telesales'),
(185, 13, 'Advertising/Media/Arts'),
(186, 13, 'Banquet Sales'),
(187, 13, 'Healthcare Sales'),
(188, 13, 'Merchandising'),
(189, 13, 'Corporate Sales'),
(190, 13, 'Relationship/Account Servicing'),
(191, 13, 'Institutional Sales'),
(192, 13, 'Engineering/Manufacturing'),
(193, 13, 'Counter Sales'),
(194, 13, 'FMCG Sales'),
(195, 13, 'International Business'),
(196, 13, 'Medical Rep'),
(197, 13, 'Client Servicing'),
(198, 13, 'Client Servicing'),
(199, 14, 'Front Office'),
(200, 14, 'Receptionists'),
(201, 14, 'Personal/Secretarial'),
(202, 14, 'Stenography'),
(203, 14, 'Data entry'),
(204, 14, 'Other FOS/Sect/CompOpt'),
(205, 15, 'Food 0AMP0 Beverage'),
(206, 15, 'Operations'),
(207, 15, 'Guest Relation'),
(208, 15, 'Culinary/Kitchen'),
(209, 15, 'Housekeeping'),
(210, 15, 'Ground Staff'),
(211, 15, 'Cashier'),
(212, 15, 'Host/Hostess'),
(213, 15, 'Masseur'),
(214, 15, 'Lobby/Duty'),
(215, 15, 'Other Hospitality'),
(216, 15, 'Restaurant'),
(217, 15, 'Banquet Sales'),
(218, 15, 'Security'),
(219, 15, 'Laundry'),
(220, 15, 'Catering/Convention'),
(221, 15, 'Conferences 0AMP0 Banqueting'),
(222, 15, 'Concierge'),
(223, 15, 'Front Desk'),
(224, 15, 'Maintenance'),
(225, 15, 'Waiters/Waitresses/Steward'),
(226, 15, 'Health Club'),
(227, 15, 'Bartender'),
(228, 15, 'Cabin Crew'),
(229, 15, 'Travel Desk'),
(230, 16, 'Recruitment'),
(231, 16, 'Compensation/Payroll'),
(232, 16, 'Consulting'),
(233, 16, 'Training 0AMP0 Development'),
(234, 16, 'Performance Mgmt'),
(235, 16, 'Industrial/Labour Relations'),
(236, 16, 'Admin/Facilities Mgmt'),
(237, 16, 'Employee Relations'),
(238, 16, 'Other HR/PM/IR/Tng'),
(239, 18, 'Corporate'),
(240, 18, 'Civil Law'),
(241, 18, 'Employment 0AMP0 Industrial'),
(242, 18, 'Tax'),
(243, 18, 'Cyber Laws'),
(244, 18, 'Other Legal/Law'),
(245, 18, 'Advisor/External Consulting'),
(246, 18, 'Financial Services'),
(247, 18, 'Property'),
(248, 18, 'Patent 0AMP0 IP'),
(249, 18, 'Insurance'),
(250, 18, 'Regulatory Affairs'),
(251, 18, 'Private Attorney/Lawyer'),
(252, 18, 'Criminal'),
(253, 18, 'Mergers 0AMP0 Acquisitions'),
(254, 18, 'Family'),
(255, 19, 'Admin Services/Medical Facilites'),
(256, 19, 'Surgery'),
(257, 19, 'Documentation/Medical Writing'),
(258, 19, 'Pediatrics'),
(259, 19, 'General Practitioner'),
(260, 19, 'Medical Imaging'),
(261, 19, 'Neurology'),
(262, 19, 'Aged Care'),
(263, 19, 'Pathology'),
(264, 19, 'Psychiatry'),
(265, 19, 'Occupational Therapy'),
(266, 19, 'Hepatology'),
(267, 19, 'Nursing'),
(268, 19, 'Clinical Research'),
(269, 19, 'Lab/Medical Technician'),
(270, 19, 'Dental'),
(271, 19, 'Cardiologist'),
(272, 19, 'Microbiology'),
(273, 19, 'Dietician/Nutritionist'),
(274, 19, 'Pharmacy'),
(275, 19, 'Medical Superintendent/Director'),
(276, 19, 'Ophthalmology'),
(277, 19, 'ENT Specialist'),
(278, 19, 'Regulatory Affairs'),
(279, 19, 'Other Healthcare'),
(280, 19, 'Medical Officer'),
(281, 19, 'Anaesthetist'),
(282, 19, 'Radiology'),
(283, 19, 'Gynaecology'),
(284, 19, 'Critical Care'),
(285, 19, 'Orthopaedics'),
(286, 19, 'Physiotherapy'),
(287, 19, 'Dermatologist'),
(288, 19, 'Nephrology'),
(289, 19, 'Oncology'),
(290, 19, 'Natural Therapy'),
(291, 19, 'Paramedic'),
(292, 20, 'Community Relations'),
(293, 20, 'Account Direction'),
(294, 20, 'Public Relations'),
(295, 20, 'Event Management'),
(296, 20, 'Photographer'),
(297, 20, 'Printing'),
(298, 20, 'Road Shows'),
(299, 20, 'Consumer PR 0AMP0 Publicity'),
(300, 20, 'Graphic Design'),
(301, 20, 'Media Planning'),
(302, 20, 'Copywriter'),
(303, 20, 'Visualiser'),
(304, 20, 'Strategy'),
(305, 20, 'Other Advtg/PR/Events'),
(306, 20, 'Art'),
(307, 20, 'Client Servicing'),
(308, 20, 'Media Relations'),
(309, 20, 'Creative Direction'),
(310, 20, 'Media Buying'),
(311, 20, 'Film Production'),
(312, 22, 'Production/Manufacturing/Maint'),
(313, 22, 'Product Development'),
(314, 22, 'Plant Maintenance'),
(315, 22, 'Industrial Engineering '),
(316, 22, 'Workman/Foreman/Technician'),
(317, 22, 'Packaging'),
(318, 22, 'Production Management'),
(319, 22, 'Design Engineering'),
(320, 22, 'Equipment'),
(321, 22, 'Service and Repair'),
(322, 22, 'Environment'),
(323, 22, 'Other Prod/Mfg'),
(324, 22, 'Engineering'),
(325, 22, 'QA/QC'),
(326, 22, 'Inventory Control/ Materials'),
(327, 22, 'Safety/ Health'),
(328, 22, 'Procurement'),
(329, 22, 'Store Keeper/ Warehouse'),
(330, 23, 'Mechanical'),
(331, 23, 'Production'),
(332, 23, 'Maintenance'),
(333, 23, 'CAD/CAE'),
(334, 23, 'Bridge'),
(335, 23, 'Aviation'),
(336, 23, 'Oil 0AMP0 Gas'),
(337, 23, 'Commercial'),
(338, 23, 'Plumbing'),
(339, 23, 'Pipeline Design'),
(340, 23, 'Water/Waste water'),
(341, 23, 'Water Supply and Sanitation'),
(342, 23, 'Traffic/Transportation'),
(343, 23, 'Telecom'),
(344, 23, 'Design'),
(345, 23, 'Project Management'),
(346, 23, 'Quality'),
(347, 23, 'Plant/Facilities/Maintenance'),
(348, 23, 'Process/Chemical'),
(349, 23, 'Structural/Stress'),
(350, 23, 'Industrial/Utility'),
(351, 23, 'Highway/Roadway'),
(352, 23, 'Weld Shop'),
(353, 23, 'Defence'),
(354, 23, 'Food production'),
(355, 23, 'Print/Packaging'),
(356, 23, 'Geotechnical'),
(357, 23, 'Urban Development'),
(358, 23, 'Electrical/Electronic'),
(359, 23, 'Civil'),
(360, 23, 'Automotive'),
(361, 23, 'Building/Residential'),
(362, 23, 'HVAC'),
(363, 23, 'Hydraulics'),
(364, 23, 'Pipeline Construction'),
(365, 23, 'Railway'),
(366, 23, 'Fire Protection'),
(367, 23, 'Paint Shop'),
(368, 23, 'Tool Room'),
(369, 23, 'Land development'),
(370, 23, 'Press Shop'),
(371, 23, 'Other EP Mgmt/St Eng/CE'),
(372, 24, 'Purchasing/Sourcing'),
(373, 24, 'Logistics'),
(374, 24, 'Planning'),
(375, 24, 'Packaging'),
(376, 24, 'Commodity Trading'),
(377, 24, 'Fleet Management'),
(378, 24, 'Customs'),
(379, 24, 'Supply Chain Management'),
(380, 24, 'E-procurement'),
(381, 24, 'Warehouse'),
(382, 24, 'Distribution'),
(383, 24, 'Trade Finance'),
(384, 24, 'Vehicle rental/Leasing'),
(385, 24, 'Other Logistics'),
(386, 24, 'Material Management'),
(387, 24, 'Operations'),
(388, 24, 'Import/Export'),
(389, 24, 'Shipping'),
(390, 24, 'Freight Forwarders'),
(391, 24, 'Couriers'),
(392, 29, 'Mobile'),
(393, 41, 'Teacher'),
(394, 41, 'Counseling'),
(395, 41, 'Translation'),
(396, 41, 'Other Education'),
(397, 41, 'Lecturer/Professor'),
(398, 41, 'Language Specialist'),
(399, 41, 'Private Tuition'),
(400, 41, 'Special Education Teaching'),
(401, 41, 'Librarian'),
(402, 41, 'Transcription'),
(403, 5, 'Any Process - International BPO'),
(404, 5, 'Voice Process - Domestic BPO'),
(405, 5, 'Any Process - Domestic BPO Type'),
(406, 5, 'Non Voice Process - Both BPO'),
(407, 5, 'Medical Transcription'),
(408, 5, 'Account Services'),
(409, 5, 'Technical/Process Training'),
(410, 5, 'Voice 0AMP0 Accent Training'),
(411, 5, 'Migrations/ Transitions'),
(412, 5, 'Voice Process - International'),
(413, 5, 'Voice Process - Both BPO Type'),
(414, 5, 'Technical Process'),
(415, 5, 'Work Flow Analysis'),
(416, 5, 'Back-end/Transactions Processing'),
(417, 5, 'ITES Operations'),
(418, 5, 'Non-Voice Process - Domestic BPO Type'),
(419, 5, 'Shift Supervision'),
(420, 5, 'Other Customer Service'),
(421, 5, 'Any Process - Both BPO Type'),
(422, 5, 'Blended Process - International'),
(423, 5, 'Blended Process - Both BPO Type'),
(424, 5, 'Telemarketing'),
(425, 5, 'Non-Voice Process - International'),
(426, 5, 'Blended Process - Domestic BPO Type'),
(427, 5, 'Soft Skills Training'),
(428, 5, 'Training'),
(429, 21, 'Product Development'),
(430, 21, 'Design Engineering'),
(431, 21, 'Plant Maintenance'),
(432, 21, 'Safety/ Health'),
(433, 21, 'Packaging'),
(434, 21, 'Service and Repair'),
(435, 21, 'Metallurgy'),
(436, 21, 'Production/Manufacturing/Maintenace'),
(437, 21, 'Engineering'),
(438, 21, 'Industrial Engineering'),
(439, 21, 'Procurement'),
(440, 21, 'Environment'),
(441, 21, 'Factory Head'),
(442, 21, 'Other Prod/Mfg'),
(443, 21, 'Production Management'),
(444, 21, 'QA/QC'),
(445, 21, 'Inventory Control/ Materials'),
(446, 21, 'Equipment'),
(447, 21, 'Workman/Foreman/Technician'),
(448, 21, 'Store Keeper/ Warehouse'),
(449, 42, 'Network Planning'),
(450, 42, 'Customer Support'),
(451, 42, 'Embedded Technology'),
(452, 42, 'GSM'),
(453, 42, 'H/W Installation/Maintenance'),
(454, 42, 'Switching/Router'),
(455, 42, 'Security'),
(456, 42, 'Trainer/Faculty'),
(457, 42, 'Hardware Design'),
(458, 42, 'RF Engineering'),
(459, 42, 'GPRS'),
(460, 42, 'Other IT Hardware'),
(461, 17, 'Associate/Senior Associate -(NonTechnical)'),
(462, 17, 'Associate/Senior Associate -(Technical)'),
(463, 17, 'Team Leader -(NonTechnical)'),
(464, 17, 'Team Leader -(Technical)'),
(465, 17, 'Assistant Manager/Manager -(NonTechnical)'),
(466, 17, 'Associate/Senior Associate -(NonTechnical)'),
(467, 17, 'Associate/Senior Associate -(Technical)'),
(468, 17, 'Team Leader -(NonTechnical)'),
(469, 17, 'Team Leader -(Technical)'),
(470, 17, 'Assistant Manager/Manager -(Technical)'),
(471, 17, 'Operations Manager'),
(472, 17, 'Transitions/Migrations Manager'),
(473, 17, 'Head/VP/GM-Operations'),
(474, 17, 'Head/VP/GM-Training & Development'),
(475, 17, 'Head/VP/GM-Transitions'),
(476, 17, 'Service Delivery Leader'),
(477, 17, 'Fresher'),
(478, 17, 'Trainee');

-- --------------------------------------------------------

--
-- Table structure for table `lk_tb_state`
--

CREATE TABLE `lk_tb_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lk_tb_state`
--

INSERT INTO `lk_tb_state` (`state_id`, `state_name`) VALUES
(1, 'Andaman and Nicobar Islands'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli'),
(10, 'Delhi'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Orissa'),
(27, 'Pondicherry'),
(28, 'Punjab'),
(29, 'Rajasthan'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Tripura'),
(33, 'Uttaranchal'),
(34, 'Uttar Pradesh'),
(35, 'West Bengal'),
(36, 'Noida'),
(37, 'Delhi Ncr'),
(38, 'Gurgaon');

-- --------------------------------------------------------

--
-- Table structure for table `tb_countries`
--

CREATE TABLE `tb_countries` (
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_countries`
--

INSERT INTO `tb_countries` (`id`, `country`) VALUES
(1, 'Afghanistan'),
(2, 'Aland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia, Plurinational State of'),
(28, 'Bonaire, Sint Eustatius and Saba'),
(29, 'Bosnia and Herzegovina'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British Indian Ocean Territory'),
(34, 'Brunei Darussalam'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Cambodia'),
(39, 'Cameroon'),
(40, 'Canada'),
(41, 'Cape Verde'),
(42, 'Cayman Islands'),
(43, 'Central African Republic'),
(44, 'Chad'),
(45, 'Chile'),
(46, 'China'),
(47, 'Christmas Island'),
(48, 'Cocos (Keeling) Islands'),
(49, 'Colombia'),
(50, 'Comoros'),
(51, 'Congo'),
(52, 'Congo, The Democratic Republic of the'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Cote d''Ivoire'),
(56, 'Croatia'),
(57, 'Cuba'),
(58, 'Curacao'),
(59, 'Cyprus'),
(60, 'Czech Republic'),
(61, 'Denmark'),
(62, 'Djibouti'),
(63, 'Dominica'),
(64, 'Dominican Republic'),
(65, 'Ecuador'),
(66, 'Egypt'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Falkland Islands (Malvinas)'),
(73, 'Faroe Islands'),
(74, 'Fiji'),
(75, 'Finland'),
(76, 'France'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'Germany'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Greece'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guernsey'),
(93, 'Guinea'),
(94, 'Guinea-Bissau'),
(95, 'Guyana'),
(96, 'Haiti'),
(97, 'Heard Island and McDonald Islands'),
(98, 'Holy See (Vatican City State)'),
(99, 'Honduras'),
(100, 'Hong Kong'),
(101, 'Hungary'),
(102, 'Iceland'),
(103, 'India'),
(104, 'Indonesia'),
(105, 'Iran, Islamic Republic of'),
(106, 'Iraq'),
(107, 'Ireland'),
(108, 'Isle of Man'),
(109, 'Israel'),
(110, 'Italy'),
(111, 'Jamaica'),
(112, 'Japan'),
(113, 'Jersey'),
(114, 'Jordan'),
(115, 'Kazakhstan'),
(116, 'Kenya'),
(117, 'Kiribati'),
(118, 'Korea, Democratic People''s Republic of'),
(119, 'Korea, Republic of'),
(120, 'Kuwait'),
(121, 'Kyrgyzstan'),
(122, 'Lao People''s Democratic Republic'),
(123, 'Latvia'),
(124, 'Lebanon'),
(125, 'Lesotho'),
(126, 'Liberia'),
(127, 'Libyan Arab Jamahiriya'),
(128, 'Liechtenstein'),
(129, 'Lithuania'),
(130, 'Luxembourg'),
(131, 'Macao'),
(132, 'Macedonia, The former Yugoslav Republic of'),
(133, 'Madagascar'),
(134, 'Malawi'),
(135, 'Malaysia'),
(136, 'Maldives'),
(137, 'Mali'),
(138, 'Malta'),
(139, 'Marshall Islands'),
(140, 'Martinique'),
(141, 'Mauritania'),
(142, 'Mauritius'),
(143, 'Mayotte'),
(144, 'Mexico'),
(145, 'Micronesia, Federated States of'),
(146, 'Moldova, Republic of'),
(147, 'Monaco'),
(148, 'Mongolia'),
(149, 'Montenegro'),
(150, 'Montserrat'),
(151, 'Morocco'),
(152, 'Mozambique'),
(153, 'Myanmar'),
(154, 'Namibia'),
(155, 'Nauru'),
(156, 'Nepal'),
(157, 'Netherlands'),
(158, 'New Caledonia'),
(159, 'New Zealand'),
(160, 'Nicaragua'),
(161, 'Niger'),
(162, 'Nigeria'),
(163, 'Niue'),
(164, 'Norfolk Island'),
(165, 'Northern Mariana Islands'),
(166, 'Norway'),
(167, 'Oman'),
(168, 'Pakistan'),
(169, 'Palau'),
(170, 'Palestinian Territory, Occupied'),
(171, 'Panama'),
(172, 'Papua New Guinea'),
(173, 'Paraguay'),
(174, 'Peru'),
(175, 'Philippines'),
(176, 'Pitcairn'),
(177, 'Poland'),
(178, 'Portugal'),
(179, 'Puerto Rico'),
(180, 'Qatar'),
(181, 'Reunion'),
(182, 'Romania'),
(183, 'Russian Federation'),
(184, 'Rwanda'),
(185, 'Saint Barthelemy'),
(186, 'Saint Helena, Ascension and Tristan Da Cunha'),
(187, 'Saint Kitts and Nevis'),
(188, 'Saint Lucia'),
(189, 'Saint Martin (French Part)'),
(190, 'Saint Pierre and Miquelon'),
(191, 'Saint Vincent and The Grenadines'),
(192, 'Samoa'),
(193, 'San Marino'),
(194, 'Sao Tome and Principe'),
(195, 'Saudi Arabia'),
(196, 'Senegal'),
(197, 'Serbia'),
(198, 'Seychelles'),
(199, 'Sierra Leone'),
(200, 'Singapore'),
(201, 'Sint Maarten (Dutch Part)'),
(202, 'Slovakia'),
(203, 'Slovenia'),
(204, 'Solomon Islands'),
(205, 'Somalia'),
(206, 'South Africa'),
(207, 'South Georgia and The South Sandwich Islands'),
(208, 'South Sudan'),
(209, 'Spain'),
(210, 'Sri Lanka'),
(211, 'Sudan'),
(212, 'Suriname'),
(213, 'Svalbard and Jan Mayen'),
(214, 'Swaziland'),
(215, 'Sweden'),
(216, 'Switzerland'),
(217, 'Syrian Arab Republic'),
(218, 'Taiwan, Province of China'),
(219, 'Tajikistan'),
(220, 'Tanzania, United Republic of'),
(221, 'Thailand'),
(222, 'Timor-Leste'),
(223, 'Togo'),
(224, 'Tokelau'),
(225, 'Tonga'),
(226, 'Trinidad and Tobago'),
(227, 'Tunisia'),
(228, 'Turkey'),
(229, 'Turkmenistan'),
(230, 'Turks and Caicos Islands'),
(231, 'Tuvalu'),
(232, 'Uganda'),
(233, 'Ukraine'),
(234, 'United Arab Emirates'),
(235, 'United Kingdom'),
(236, 'United States'),
(237, 'United States Minor Outlying Islands'),
(238, 'Uruguay'),
(239, 'Uzbekistan'),
(240, 'Vanuatu'),
(241, 'Venezuela, Bolivarian Republic of'),
(242, 'Viet Nam'),
(243, 'Virgin Islands, British'),
(244, 'Virgin Islands, U.S.'),
(245, 'Wallis and Futuna'),
(246, 'Western Sahara'),
(247, 'Yemen'),
(248, 'Zambia'),
(249, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jobseeker`
--

CREATE TABLE `tb_jobseeker` (
  `jobseeker_id` int(111) NOT NULL,
  `social_id` varchar(100) DEFAULT NULL,
  `linkedin_id` varchar(200) DEFAULT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `jobseeker_email` varchar(100) NOT NULL,
  `jobseeker_password` varchar(100) DEFAULT NULL,
  `register_date` date NOT NULL,
  `jobseeker_phone` varchar(50) NOT NULL,
  `jobseeker_profile_img` varchar(255) NOT NULL,
  `social_type` varchar(50) DEFAULT NULL,
  `jobseeker_status` int(11) NOT NULL,
  `match_number` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jobseeker`
--

INSERT INTO `tb_jobseeker` (`jobseeker_id`, `social_id`, `linkedin_id`, `fname`, `lname`, `jobseeker_email`, `jobseeker_password`, `register_date`, `jobseeker_phone`, `jobseeker_profile_img`, `social_type`, `jobseeker_status`, `match_number`) VALUES
(1, NULL, NULL, 'ravi', 'duhan', 'rv.aryan4@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2016-03-01', '', '', NULL, 1, NULL),
(2, NULL, NULL, 'tech', 'vedic', 'techvedic.web@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2016-03-01', '', '', NULL, 1, NULL),
(3, '1166615060034975', NULL, 'Nikhil', 'Verma', '', NULL, '2016-03-03', '', '', 'Facebook', 0, NULL),
(4, NULL, 'TN0bWQs7dX', 'Guddu', 'Kumar', 'guddukmr786@gmail.com', NULL, '2016-03-03', '', '', 'Linkedin', 0, NULL),
(5, '915532225181648', NULL, 'Guddu', 'Kumar', '', NULL, '2016-03-03', '', '', 'Facebook', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jobseeker_info`
--

CREATE TABLE `tb_jobseeker_info` (
  `jobseeker_details_id` int(11) NOT NULL,
  `jobseeker_id` int(11) NOT NULL,
  `category_name` varchar(111) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `experience` varchar(10) NOT NULL,
  `qualification_name` varchar(50) NOT NULL,
  `location` varchar(255) NOT NULL,
  `whatsapp_link` varchar(111) NOT NULL,
  `linkedin` varchar(111) NOT NULL,
  `upload_resume` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jobseeker_info`
--

INSERT INTO `tb_jobseeker_info` (`jobseeker_details_id`, `jobseeker_id`, `category_name`, `skill`, `experience`, `qualification_name`, `location`, `whatsapp_link`, `linkedin`, `upload_resume`) VALUES
(1, 2, 'Accounting jobs', 'audditing, accounting', '1.2', 'B.Com', 'Delhi,Noida', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_job_like`
--

CREATE TABLE `tb_job_like` (
  `like_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `jobseeker_id` int(11) NOT NULL,
  `recruiter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_job_like`
--

INSERT INTO `tb_job_like` (`like_id`, `job_id`, `jobseeker_id`, `recruiter_id`) VALUES
(1, 1, 0, 1),
(2, 10, 0, 1),
(3, 19, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_keywords`
--

CREATE TABLE `tb_keywords` (
  `keyword_id` int(11) NOT NULL,
  `post_job_id` int(11) NOT NULL,
  `keywords` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_keywords`
--

INSERT INTO `tb_keywords` (`keyword_id`, `post_job_id`, `keywords`) VALUES
(1, 1, 'Good communication skills,Customer Calling, Customer service'),
(2, 2, 'SAP - ERP , CRM '),
(3, 3, 'html css'),
(4, 4, 'php, mysql, javascrip'),
(5, 5, 'java , javascript'),
(6, 6, 'java , javascript'),
(7, 7, 'html, css, javascript'),
(8, 0, 'html, css, javascript'),
(9, 8, 'java , javascript'),
(15, 14, 'Good knowledge of ERP, Microsoft Excel and other Microsoft programs'),
(11, 10, 'Developing, Programming, Testing'),
(12, 11, 'sql,xml,oracle'),
(13, 12, 'html, css, javascript'),
(14, 13, 'html, css, javascript'),
(16, 0, 'Content Writing Content Development writing development Social Media Marketing Digital Marketing Online Marketing Content Designing Web Content & Messaging Social Marketing'),
(17, 0, 'Content Writing, Content Development, writing development, Social Media Marketing, Digital Marketing, Online Marketing, Content Designing, Web Content & Messaging, Social Marketing'),
(18, 15, 'Hadoop, MySql, jQuery'),
(19, 0, 'Content Writing, Content Development, writing development, Social Media Marketing, Digital Marketing, Online Marketing, Content Designing, Web Content & Messaging, Social Marketing'),
(20, 0, 'good communication skills.'),
(21, 16, 'Ajax,PHP,MYSQL'),
(24, 19, 'OSCommerce, MySQL, Joomla, Drupal, Javascript, HTML, Ajax, CSS...'),
(25, 21, 'OSCommerce, MySQL, Joomla, Drupal, Javascript, HTML, Ajax, CSS...'),
(26, 22, 'OSCommerce, MySQL, Joomla, Drupal, Javascript, HTML, Ajax, CSS...'),
(27, 23, 'OSCommerce, MySQL, Joomla, Drupal, Javascript, HTML, Ajax, CSS...');

-- --------------------------------------------------------

--
-- Table structure for table `tb_location`
--

CREATE TABLE `tb_location` (
  `location_id` int(11) NOT NULL,
  `post_job_id` int(10) NOT NULL,
  `location` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_location`
--

INSERT INTO `tb_location` (`location_id`, `post_job_id`, `location`) VALUES
(1, 1, 'Delhi,Noida,Hyderabad,Gudur'),
(2, 2, 'Delhi,Alwal,Hindupur'),
(3, 3, 'Port Blair,Adoni'),
(12, 10, 'Noida'),
(13, 11, 'Agra,Ahmedabad,Aligarh,'),
(16, 14, 'Gurgaon,'),
(17, 0, 'Noida,'),
(18, 0, 'Noida,'),
(20, 0, 'Noida,'),
(21, 0, 'Delhi,'),
(25, 19, ',rampur'),
(26, 21, 'Ahmedabad,Allahabad,Raiganj'),
(27, 22, 'Ajmer,Amritsar,Bareilly,surendrapur'),
(28, 23, 'Ahmedabad,Amritsar,Roshanpur');

-- --------------------------------------------------------

--
-- Table structure for table `tb_post_job`
--

CREATE TABLE `tb_post_job` (
  `post_job_id` int(11) NOT NULL,
  `recruiter_id` int(11) NOT NULL,
  `company_name` varchar(299) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `job_description` text NOT NULL,
  `recuriter_email` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `category_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `company_desc` longtext NOT NULL,
  `whatsapp_id` varchar(50) NOT NULL,
  `linkedin_profile` varchar(50) NOT NULL,
  `job_views` int(100) NOT NULL,
  `likes` int(111) NOT NULL,
  `job_post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_post_job`
--

INSERT INTO `tb_post_job` (`post_job_id`, `recruiter_id`, `company_name`, `job_title`, `position`, `job_description`, `recuriter_email`, `phone`, `category_id`, `job_type_id`, `salary`, `experience`, `company_desc`, `whatsapp_id`, `linkedin_profile`, `job_views`, `likes`, `job_post_date`) VALUES
(1, 2, 'sidhivinayakamconsultants', 'Hiring Graduate Fresher/undergraduate Fresher! hiring for Voice Process!!i', 'Hiring Graduate Fresher/undergraduate Fresher! hiring for Voice Process!!i', '<ul itemprop="description" class="listing mt10" style="margin-top: 10px; font-family: Roboto, sans-serif; list-style-type: none; font-size: 13px; line-height: 18px; font-style: normal; font-variant: normal; font-weight: normal;">Hiring for International Voice Process</ul><div><span style="font-family: Roboto, sans-serif; font-size: 12px;">Eligibility :</span><font class="hlite" style="font-size: 12px; font-style: inherit; font-variant: inherit; line-height: inherit; padding: 0px; margin: 0px; font-weight: 700;">Graduate</font><span style="font-family: Roboto, sans-serif; font-size: 12px;">,under</span><font class="hlite" style="font-size: 12px; font-style: inherit; font-variant: inherit; line-height: inherit; padding: 0px; margin: 0px; font-weight: 700;">graduate</font><span style="font-family: Roboto, sans-serif; font-size: 12px;">&nbsp;</span><font class="hlite" style="font-size: 12px; font-style: inherit; font-variant: inherit; line-height: inherit; padding: 0px; margin: 0px; font-weight: 700;">fresher</font><span style="font-family: Roboto, sans-serif; font-size: 12px;">&nbsp;</span><span style="font-family: Roboto, sans-serif; font-size: 12px;">& experienced as well.</span></div><div><span style="font-family: Roboto, sans-serif; font-size: 12px;">Designation :Associate,Sr.Associate.</span></div><div><span style="font-family: Roboto, sans-serif; font-size: 12px;">Salary: up to 18000/- per month.(take home) + performance incentives - 2000 to &nbsp;5000</span></div><div><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;">Rotational shifts with 5 days working.</span><span style="font-family: Roboto, sans-serif; font-size: 12px;"><br></span></div><div><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;">Two-way cabs provided.</span><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;"><br></span></div><div><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;">Salary from 12k-18k based on experience.</span><br style="padding: 0px; margin: 0px; font-size: 12px; line-height: 18px;"></div><div><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;"><br></span></div>', 'sidhivinayakamconsultants@gmail.com', '01145733736', 5, 1, '1-3', '0-1', '<span style="font-size: 12px; line-height: 18px;">One of our client is looking to hire graduate freshers (from any&nbsp;field)&nbsp;</span><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;">for US Telecom process(voice)</span>', '', '', 19, 0, '2016-02-29 16:49:12'),
(2, 2, 'sidhivinayakamconsultants', 'IT SAP Frehsers for Dubai', 'IT SAP Frehsers for Dubai', 'Looking for&nbsp;SAP consultants for Dubai Location.&nbsp;<div><br></div><div><ul style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13.3333px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 17.3333px;"><li>Should have Strong Consulting experience .</li><li>Should be Willing to work as an Individual Contributor & Solution Provider</li><li>Good communication & presentations skills.</li><li>Should be Interested to get into a Long-term & Permanent Opportunity.</li><li><span style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px;">Preferably an MBA /MBA Finance professional with an experience of minimum 1-2 years&nbsp;</span><br></li><li><span style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px;"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px;">Should be a&nbsp;</span><mark style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; line-height: 16px; font-weight: 600 !important; color: inherit !important; background-color: transparent !important;">SAP</mark><span style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px;">&nbsp;Certified&nbsp;</span><mark style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; line-height: 16px; font-weight: 600 !important; color: inherit !important; background-color: transparent !important;">Consultant</mark><span style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px;">&nbsp;in the areas of BW and BPC</span><br></span></li><li><span style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px;"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px;"><mark style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; line-height: 16px; font-weight: 600 !important; color: inherit !important; background-color: transparent !important;">SAP</mark><span style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px;">&nbsp;Certification in SSM & BOBJ is desirable.</span></span></span></li></ul><div><font color="#222222" face="Arial, Helvetica, sans-serif"><span style="font-size: 12px;"><br></span></font></div></div>', 'sidhivinayakamconsultants@gmail.com', '01145733736', 6, 4, '10-17', '1-5', '<span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13.3333px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 17.3333px;">We are a professionally managed organization providing Executive Search, Recruitment and contract-staffing Solutions to corporations.&nbsp;</span><br>', '', '', 8, 0, '2016-02-29 16:59:45'),
(3, 1, 'Techvedic Pvt Ltd.', 'ui developer', 'ui developer', '<ul itemprop="description" class="listing mt10" style="margin-top: 10px; font-family: Roboto, sans-serif; list-style-type: none; font-size: 13px; line-height: 18px; font-style: normal; font-variant: normal; font-weight: normal;">Hiring for International Voice Process<li><span style="font-family: Roboto, sans-serif; font-size: 12px;">Eligibility :</span><font class="hlite" style="font-size: 12px; font-style: inherit; font-variant: inherit; line-height: inherit; padding: 0px; margin: 0px; font-weight: 700;">Graduate</font><span style="font-family: Roboto, sans-serif; font-size: 12px;">,under</span><font class="hlite" style="font-size: 12px; font-style: inherit; font-variant: inherit; line-height: inherit; padding: 0px; margin: 0px; font-weight: 700;">graduate</font><span style="font-family: Roboto, sans-serif; font-size: 12px;">&nbsp;</span><font class="hlite" style="font-size: 12px; font-style: inherit; font-variant: inherit; line-height: inherit; padding: 0px; margin: 0px; font-weight: 700;">fresher</font><span style="font-family: Roboto, sans-serif; font-size: 12px;">&nbsp;</span><span style="font-family: Roboto, sans-serif; font-size: 12px;">& experienced as well.</span></li><li><span style="font-family: Roboto, sans-serif; font-size: 12px;">Designation :Associate,Sr.Associate.</span></li><li><span style="font-family: Roboto, sans-serif; font-size: 12px;">Salary: up to 18000/- per month.(take home) + performance incentives - 2000 to &nbsp;5000</span></li><li><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;">Rotational shifts with 5 days working.</span><span style="font-family: Roboto, sans-serif; font-size: 12px;"><br></span></li><li><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;">Two-way cabs provided.</span><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;"><br></span></li><li><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;">Salary from 12k-18k based on experience.</span></li></ul><div><span style="font-family: Roboto, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 18px;"><br></span></div>', 'techvedic.web@gmail.com', '1234567891', 17, 1, '1-8', '1-3', '<br>', '', '', 19, 0, '2016-03-01 14:28:58'),
(10, 4, 'ABC recruiters', 'Developer/Programmer/Testing Job.  for B.tech Freshers in an MNC', 'Developer/Programmer/Testing Job.  for B.tech Freshers in an MNC', 'There is an urgent requirement of <font class="hlite">Freshers</font>&nbsp;<span style="color: inherit; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit;">in</span><span style="color: inherit;"> a Leading MNC-</span><div><span style="color: inherit;"><br></span></div><div>&nbsp;Work involves Developing/Programming/ and Testing&nbsp;</div><div><br></div><div>&nbsp;This may involve a lot of research, going through logs, etc.&nbsp;<br></div><div>&nbsp;<br>&nbsp;Those who<gs id="918f60fe-2589-4d7c-9aeb-18ce823c90fd" ginger_software_uiphraseguid="cfe4cdc1-1392-48b1-9698-addcade6c57a" class="GINGER_SOFTWARE_mark"> <gs id="0404c0fa-1970-4b68-bf28-25662b8cd5d0" ginger_software_uiphraseguid="3ad27865-4872-4065-b12d-8ff5d1cc5031" class="GINGER_SOFTWARE_mark">has attende</gs></gs><gs id="0404c0fa-1970-4b68-bf28-25662b8cd5d0" ginger_software_uiphraseguid="3ad27865-4872-4065-b12d-8ff5d1cc5031" class="GINGER_SOFTWARE_mark">d</gs> in the last 3 months, please do not apply.<span style="color: inherit;"><br></span></div>', 'Na@gmail.com', '9876543210', 29, 1, '2-4', '0-1', '<span itemprop="description">We are a professional consulting services \r\nfirm with deep domain expertise in BFSI, Oil and Gas, Infrastructure, \r\nManufacturing, Retail and Telecom industries<gs id="efac487f-3968-4b86-86c6-d3f7a3f6dcda" ginger_software_uiphraseguid="e2144507-40b5-4cbe-9cb1-c5c2ec193c4a" class="GINGER_SOFTWARE_mark">.</gs></span><span itemprop="description">We <gs id="1ba0e49e-d12b-474d-a757-3f03a6d55db1" ginger_software_uiphraseguid="e2144507-40b5-4cbe-9cb1-c5c2ec193c4a" class="GINGER_SOFTWARE_mark">specialize</gs> in Products, <gs id="9e34f466-a15f-497f-bb40-632524c6721e" ginger_software_uiphraseguid="e2144507-40b5-4cbe-9cb1-c5c2ec193c4a" class="GINGER_SOFTWARE_mark">Ecommerce</gs> and \r\nConsulting assignments and our capabilities include Product Development,\r\n Integration, Migration, Deployment, and Maintenance<gs id="5f49d207-8491-4c06-b04a-513f2907d0f7" ginger_software_uiphraseguid="e2144507-40b5-4cbe-9cb1-c5c2ec193c4a" class="GINGER_SOFTWARE_mark"> ,</gs> QA and Testing \r\nservices, IT Infrastructure Implementation, Migration and Support. &nbsp;</span><br>', '', '', 5, 0, '2016-03-02 17:13:23'),
(11, 1, 'Techvedic Pvt Ltd.', 'Application developer ', 'Application developer ', 'Analyze, design develop, troubleshoot and debug software programs for commercial or end user applications. Writes code, completes programming and performs testing and debugging of applications.<br><br>As a member of the software engineering division, you will perform high-level design based on provided external specifications. Specify, design and implement minor changes to existing software architecture. Build highly complex enhancements and resolve complex bugs. Build and execute unit tests and unit plans. Review integration and regression test plans created by QA. Communicate with QA and porting engineering as necessary to discuss minor changes to product functionality and to ensure quality and consistency across specific products.<br><br>Duties and tasks are varied and complex needing independent judgment. Fully competent in own area of expertise. May have project lead role and or supervise lower level personnel. BS or MS degree or equivalent experience relevant to functional area. 4 years of software engineering or related experience.<br><br>', 'techvedic.web@gmail.com', '78787878787', 7, 1, '5-7', '4-8', '<br>', '', '', 5, 0, '2016-03-02 17:18:31'),
(14, 2, 'sidhivinayakamconsultants', 'Junior Accountant', 'Junior Accountant', '<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px; text-align: justify;">Roles & Responsibilities</span><br style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;"><ul style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px; text-align: justify;"><li>Vendor Payment through cheques/NEFT</li><li>Vendor Invoice booking</li><li>Preparation of Employee Reimbursement</li><li>Reconciliation of Bank Accounts and other ledgers Accounts</li><li>Deposits of Cheques to Bank</li><li>Deposit of Witholding Tax Challans</li><li>Day to day voucher entry in SAP</li></ul><div style="text-align: justify;"><ul style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px;"><li>B.Com/ M.Com with 2-3 years of relevant industrial experience</li><li>Excellent oral and written English communication skills</li><li>Strong interpersonal skills</li><li>Excellent organizational skills</li><li>Excellent multi-tasking skills&nbsp;</li></ul></div>', 'sidhivinayakamconsultants@gmail.com', '911145733736', 1, 1, '3-5', '2-3', '<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 16px; text-align: justify;">Our Clinet is a global leader in providing architects, engineers, geospatial professionals, constructors, and owner-operators with comprehensive software solutions for advancing the design, construction, and operations of infrastructure</span><br>', '', '', 3, 0, '2016-03-04 13:42:23'),
(19, 1, 'Techvedic Pvt Ltd.', 'Web Developer', 'php developer', 'Get 3-4 times more profile views by recruiters when recruiters search for resumes with a featured tagGet 3-4 times more profile views by recruiters when recruiters search for resumes with a featured tag', 'techvedic.web@gmail.com', '4545656563', 14, 1, '2-4', '2-6', 'Get 3-4 times more profile views by recruiters when recruiters search for resumes with a featured tagGet 3-4 times more profile views by recruiters when recruiters search for resumes with a featured tagGet 3-4 times more profile views by recruiters when recruiters search for resumes with a featured tag', '', '', 0, 0, '2016-03-07 15:51:26');
INSERT INTO `tb_post_job` (`post_job_id`, `recruiter_id`, `company_name`, `job_title`, `position`, `job_description`, `recuriter_email`, `phone`, `category_id`, `job_type_id`, `salary`, `experience`, `company_desc`, `whatsapp_id`, `linkedin_profile`, `job_views`, `likes`, `job_post_date`) VALUES
(20, 3, 'Nik MNC', 'Tech Mahindra Hiring for International Voice Process', 'Associate/Senior Associate (NonTechnical)', '<!--[if gte mso 9]><xml>\\r\\n <w:WordDocument>\\r\\n <w:View>Normal</w:View>\\r\\n <w:Zoom>0</w:Zoom>\\r\\n <w:TrackMoves/>\\r\\n <w:TrackFormatting/>\\r\\n <w:PunctuationKerning/>\\r\\n <w:ValidateAgainstSchemas/>\\r\\n <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\\r\\n <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\\r\\n <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\\r\\n <w:DoNotPromoteQF/>\\r\\n <w:LidThemeOther>EN-US</w:LidThemeOther>\\r\\n <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\\r\\n <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\\r\\n <w:Compatibility>\\r\\n <w:BreakWrappedTables/>\\r\\n <w:SnapToGridInCell/>\\r\\n <w:WrapTextWithPunct/>\\r\\n <w:UseAsianBreakRules/>\\r\\n <w:DontGrowAutofit/>\\r\\n <w:SplitPgBreakAndParaMark/>\\r\\n <w:EnableOpenTypeKerning/>\\r\\n <w:DontFlipMirrorIndents/>\\r\\n <w:OverrideTableStyleHps/>\\r\\n </w:Compatibility>\\r\\n <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\\r\\n <m:mathPr>\\r\\n <m:mathFont m:val=\\"Cambria Math\\"/>\\r\\n <m:brkBin m:val=\\"before\\"/>\\r\\n <m:brkBinSub m:val=\\"--\\"/>\\r\\n <m:smallFrac m:val=\\"off\\"/>\\r\\n <m:dispDef/>\\r\\n <m:lMargin m:val=\\"0\\"/>\\r\\n <m:rMargin m:val=\\"0\\"/>\\r\\n <m:defJc m:val=\\"centerGroup\\"/>\\r\\n <m:wrapIndent m:val=\\"1440\\"/>\\r\\n <m:intLim m:val=\\"subSup\\"/>\\r\\n <m:naryLim m:val=\\"undOvr\\"/>\\r\\n </m:mathPr></w:WordDocument>\\r\\n</xml><![endif]--><!--[if gte mso 9]><xml>\\r\\n <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"false\\"\\r\\n DefSemiHidden=\\"false\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"\\r\\n LatentStyleCount=\\"371\\">\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"0\\" QFormat=\\"true\\" Name=\\"Normal\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 7\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 8\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 9\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 7\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 8\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 9\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 7\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 8\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 9\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Normal Indent\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"footnote text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"annotation text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"header\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"footer\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index heading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"35\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"caption\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"table of figures\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"envelope address\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"envelope return\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"footnote reference\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"annotation reference\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"line number\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"page number\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"endnote reference\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"endnote text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"table of authorities\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"macro\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"toa heading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Bullet\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Number\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Bullet 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Bullet 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Bullet 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Bullet 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Number 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Number 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Number 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Number 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"10\\" QFormat=\\"true\\" Name=\\"Title\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Closing\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Signature\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"Default Paragraph Font\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text Indent\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Continue\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Continue 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Continue 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Continue 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Continue 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Message Header\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"11\\" QFormat=\\"true\\" Name=\\"Subtitle\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Salutation\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Date\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text First Indent\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text First Indent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Note Heading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text Indent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text Indent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Block Text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Hyperlink\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"FollowedHyperlink\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"22\\" QFormat=\\"true\\" Name=\\"Strong\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"20\\" QFormat=\\"true\\" Name=\\"Emphasis\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Document Map\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Plain Text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"E-mail Signature\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Top of Form\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Bottom of Form\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Normal (Web)\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Acronym\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Address\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Cite\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Code\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Definition\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Keyboard\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Preformatted\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Sample\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Typewriter\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Variable\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Normal Table\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"annotation subject\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"No List\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Outline List 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Outline List 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Outline List 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Simple 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Simple 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Simple 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Classic 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Classic 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Classic 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Classic 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Colorful 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Colorful 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Colorful 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Columns 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Columns 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Columns 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Columns 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Columns 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 7\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 8\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 7\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 8\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table 3D effects 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table 3D effects 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table 3D effects 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Contemporary\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Elegant\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Professional\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Subtle 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Subtle 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Web 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Web 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Web 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Balloon Text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"Table Grid\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Theme\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" Name=\\"Placeholder Text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"1\\" QFormat=\\"true\\" Name=\\"No Spacing\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" Name=\\"Revision\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"34\\" QFormat=\\"true\\"\\r\\n Name=\\"List Paragraph\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"29\\" QFormat=\\"true\\" Name=\\"Quote\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"30\\" QFormat=\\"true\\"\\r\\n Name=\\"Intense Quote\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"19\\" QFormat=\\"true\\"\\r\\n Name=\\"Subtle Emphasis\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"21\\" QFormat=\\"true\\"\\r\\n Name=\\"Intense Emphasis\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"31\\" QFormat=\\"true\\"\\r\\n Name=\\"Subtle Reference\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"32\\" QFormat=\\"true\\"\\r\\n Name=\\"Intense Reference\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"33\\" QFormat=\\"true\\" Name=\\"Book Title\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"37\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"Bibliography\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"TOC Heading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"41\\" Name=\\"Plain Table 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"42\\" Name=\\"Plain Table 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"43\\" Name=\\"Plain Table 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"44\\" Name=\\"Plain Table 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"45\\" Name=\\"Plain Table 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"40\\" Name=\\"Grid Table Light\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\" Name=\\"Grid Table 1 Light\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\" Name=\\"Grid Table 6 Colorful\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\" Name=\\"Grid Table 7 Colorful\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\" Name=\\"List Table 1 Light\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\" Name=\\"List Table 6 Colorful\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\" Name=\\"List Table 7 Colorful\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 6\\"/>\\r\\n </w:LatentStyles>\\r\\n</xml><![endif]--><!--[if gte mso 10]>\\r\\n<style>\\r\\n /* Style Definitions */\\r\\n table.MsoNormalTable\\r\\n {mso-style-name:\\"Table Normal\\";\\r\\n mso-tstyle-rowband-size:0;\\r\\n mso-tstyle-colband-size:0;\\r\\n mso-style-noshow:yes;\\r\\n mso-style-priority:99;\\r\\n mso-style-parent:\\"\\";\\r\\n mso-padding-alt:0in 5.4pt 0in 5.4pt;\\r\\n mso-para-margin:0in;\\r\\n mso-para-margin-bottom:.0001pt;\\r\\n mso-pagination:widow-orphan;\\r\\n font-size:10.0pt;\\r\\n font-family:\\"Times New Roman\\",serif;}\\r\\n</style>\\r\\n<![endif]-->Any Graduates /Undergraduates with verbal English<br>Candidates should have an excellent communication skills <br>Candidates with 0-5 yrs can apply<br>Salary is no bar <br>Age should be between 18 - 35 Years<br>Confident and self-motivated with positive attitude<br>Candidate should be flexible to work in 24*7 environments.<br>Transport facility available for both sides.<br>Please note ***B.E/B.Tech''s are not eligible*** <br><br><span style="&quot;\\&quot;font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-font-family:\\r\\nCalibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times&quot;" new="&quot;&quot;" roman";\\r\\nmso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\\"="&quot;&quot;"></span>', 'niku69@yahoo.co.in', '9845788457', 17, 1, '2-4', '3-4', '<!--[if gte mso 9]><xml>\\r\\n <w:WordDocument>\\r\\n <w:View>Normal</w:View>\\r\\n <w:Zoom>0</w:Zoom>\\r\\n <w:TrackMoves/>\\r\\n <w:TrackFormatting/>\\r\\n <w:PunctuationKerning/>\\r\\n <w:ValidateAgainstSchemas/>\\r\\n <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\\r\\n <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\\r\\n <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\\r\\n <w:DoNotPromoteQF/>\\r\\n <w:LidThemeOther>EN-US</w:LidThemeOther>\\r\\n <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\\r\\n <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\\r\\n <w:Compatibility>\\r\\n <w:BreakWrappedTables/>\\r\\n <w:SnapToGridInCell/>\\r\\n <w:WrapTextWithPunct/>\\r\\n <w:UseAsianBreakRules/>\\r\\n <w:DontGrowAutofit/>\\r\\n <w:SplitPgBreakAndParaMark/>\\r\\n <w:EnableOpenTypeKerning/>\\r\\n <w:DontFlipMirrorIndents/>\\r\\n <w:OverrideTableStyleHps/>\\r\\n </w:Compatibility>\\r\\n <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\\r\\n <m:mathPr>\\r\\n <m:mathFont m:val=\\"Cambria Math\\"/>\\r\\n <m:brkBin m:val=\\"before\\"/>\\r\\n <m:brkBinSub m:val=\\"--\\"/>\\r\\n <m:smallFrac m:val=\\"off\\"/>\\r\\n <m:dispDef/>\\r\\n <m:lMargin m:val=\\"0\\"/>\\r\\n <m:rMargin m:val=\\"0\\"/>\\r\\n <m:defJc m:val=\\"centerGroup\\"/>\\r\\n <m:wrapIndent m:val=\\"1440\\"/>\\r\\n <m:intLim m:val=\\"subSup\\"/>\\r\\n <m:naryLim m:val=\\"undOvr\\"/>\\r\\n </m:mathPr></w:WordDocument>\\r\\n</xml><![endif]--><!--[if gte mso 9]><xml>\\r\\n <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"false\\"\\r\\n DefSemiHidden=\\"false\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"\\r\\n LatentStyleCount=\\"371\\">\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"0\\" QFormat=\\"true\\" Name=\\"Normal\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 7\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 8\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 9\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 7\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 8\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index 9\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 7\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 8\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"toc 9\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Normal Indent\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"footnote text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"annotation text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"header\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"footer\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"index heading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"35\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"caption\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"table of figures\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"envelope address\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"envelope return\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"footnote reference\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"annotation reference\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"line number\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"page number\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"endnote reference\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"endnote text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"table of authorities\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"macro\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"toa heading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Bullet\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Number\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Bullet 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Bullet 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Bullet 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Bullet 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Number 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Number 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Number 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Number 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"10\\" QFormat=\\"true\\" Name=\\"Title\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Closing\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Signature\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"Default Paragraph Font\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text Indent\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Continue\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Continue 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Continue 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Continue 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"List Continue 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Message Header\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"11\\" QFormat=\\"true\\" Name=\\"Subtitle\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Salutation\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Date\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text First Indent\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text First Indent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Note Heading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text Indent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Body Text Indent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Block Text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Hyperlink\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"FollowedHyperlink\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"22\\" QFormat=\\"true\\" Name=\\"Strong\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"20\\" QFormat=\\"true\\" Name=\\"Emphasis\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Document Map\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Plain Text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"E-mail Signature\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Top of Form\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Bottom of Form\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Normal (Web)\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Acronym\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Address\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Cite\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Code\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Definition\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Keyboard\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Preformatted\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Sample\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Typewriter\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"HTML Variable\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Normal Table\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"annotation subject\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"No List\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Outline List 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Outline List 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Outline List 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Simple 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Simple 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Simple 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Classic 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Classic 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Classic 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Classic 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Colorful 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Colorful 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Colorful 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Columns 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Columns 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Columns 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Columns 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Columns 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 7\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Grid 8\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 7\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table List 8\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table 3D effects 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table 3D effects 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table 3D effects 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Contemporary\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Elegant\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Professional\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Subtle 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Subtle 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Web 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Web 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Web 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Balloon Text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"Table Grid\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n Name=\\"Table Theme\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" Name=\\"Placeholder Text\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"1\\" QFormat=\\"true\\" Name=\\"No Spacing\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" Name=\\"Revision\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"34\\" QFormat=\\"true\\"\\r\\n Name=\\"List Paragraph\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"29\\" QFormat=\\"true\\" Name=\\"Quote\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"30\\" QFormat=\\"true\\"\\r\\n Name=\\"Intense Quote\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"19\\" QFormat=\\"true\\"\\r\\n Name=\\"Subtle Emphasis\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"21\\" QFormat=\\"true\\"\\r\\n Name=\\"Intense Emphasis\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"31\\" QFormat=\\"true\\"\\r\\n Name=\\"Subtle Reference\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"32\\" QFormat=\\"true\\"\\r\\n Name=\\"Intense Reference\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"33\\" QFormat=\\"true\\" Name=\\"Book Title\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"37\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" Name=\\"Bibliography\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"TOC Heading\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"41\\" Name=\\"Plain Table 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"42\\" Name=\\"Plain Table 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"43\\" Name=\\"Plain Table 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"44\\" Name=\\"Plain Table 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"45\\" Name=\\"Plain Table 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"40\\" Name=\\"Grid Table Light\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\" Name=\\"Grid Table 1 Light\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\" Name=\\"Grid Table 6 Colorful\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\" Name=\\"Grid Table 7 Colorful\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"Grid Table 1 Light Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"Grid Table 6 Colorful Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"Grid Table 7 Colorful Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\" Name=\\"List Table 1 Light\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\" Name=\\"List Table 6 Colorful\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\" Name=\\"List Table 7 Colorful\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 1\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 2\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 3\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 4\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 5\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n Name=\\"List Table 1 Light Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n Name=\\"List Table 6 Colorful Accent 6\\"/>\\r\\n <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n Name=\\"List Table 7 Colorful Accent 6\\"/>\\r\\n </w:LatentStyles>\\r\\n</xml><![endif]--><!--[if gte mso 10]>\\r\\n<style>\\r\\n /* Style Definitions */\\r\\n table.MsoNormalTable\\r\\n {mso-style-name:\\"Table Normal\\";\\r\\n mso-tstyle-rowband-size:0;\\r\\n mso-tstyle-colband-size:0;\\r\\n mso-style-noshow:yes;\\r\\n mso-style-priority:99;\\r\\n mso-style-parent:\\"\\";\\r\\n mso-padding-alt:0in 5.4pt 0in 5.4pt;\\r\\n mso-para-margin:0in;\\r\\n mso-para-margin-bottom:.0001pt;\\r\\n mso-pagination:widow-orphan;\\r\\n font-size:10.0pt;\\r\\n font-family:\\"Times New Roman\\",serif;}\\r\\n</style>\\r\\n<![endif]-->Tech Mahindra is part of the US $15.4 billion Mahindra Group and is a leading global systems integrator and business transformation consulting organization, focused primarily on the telecommunications industry. Tech Mahindra helps companies innovate and transform by leveraging its unique insights, differentiated services and flexible partnering models. This has helped customers reduce operating costs, generate new revenue streams and gain competitive advantage. Tech Mahindra expanded its IT portfolio in 2009 by acquiring the leading global business and information technology services company, Mahindra Satyam (earlier known as Satyam Computer Services).<br><br>Tech Mahindra''s capabilities spread across a broad spectrum, including Business Support Systems (BSS), Operations Support Systems (OSS), Network Design &amp; Engineering, Next Generation Networks, Mobility Solutions, Security consulting and Testing.<br><br>Tech Mahindra''s solutions portfolio includes Consulting, Application Development &amp; Management, Network Services, Solution Integration, Product Engineering, Infrastructure Managed Services, Remote Infrastructure Management and BSG (comprises BPO, Services and Consulting). <br>', '9815477854', 'http://www.linkdin.com/techvedic', 0, 0, '2016-03-08 10:58:13');
INSERT INTO `tb_post_job` (`post_job_id`, `recruiter_id`, `company_name`, `job_title`, `position`, `job_description`, `recuriter_email`, `phone`, `category_id`, `job_type_id`, `salary`, `experience`, `company_desc`, `whatsapp_id`, `linkedin_profile`, `job_views`, `likes`, `job_post_date`) VALUES
(21, 1, 'Techvedic Pvt Ltd.', 'php Developer', 'php developer', '<code><span class="html">was having a problem clearing all session \r\nvariables, deleting the session, and creating a new session without \r\nleaving old session stuff behind in all browsers.&nbsp; The below code is \r\nperfect for a logout script to totally delete everything and start new</span></code>', 'techvedic.web@gmail.com', '4545656563', 6, 1, '1-2', '3-4', '<code><span class="html">was having a problem clearing all session \r\nvariables, deleting the session, and creating a new session without \r\nleaving old session stuff behind in all browsers.&nbsp; The below code is \r\nperfect for a logout script to totally delete everything and start new</span></code>', '', '', 0, 0, '2016-03-08 15:13:05'),
(22, 1, 'Techvedic Pvt Ltd.', 'Hr Executive', 'software Developer', '<code><span class="html">It even works in Chrome which seems to not work as other browsers when trying do logout and start a new session</span></code>', 'techvedic.web@gmail.com', '4545656563', 6, 1, '1-4', '3-5', '<code><span class="html">It even works in Chrome which seems to not work as other browsers when trying do logout and start a new session</span></code><code><span class="html">It even works in Chrome which seems to not work as other browsers when trying do logout and start a new session</span></code>', '', '', 0, 0, '2016-03-08 15:37:49'),
(23, 1, 'Techvedic Pvt Ltd.', 'web design', 'software Developer', '<code><span class="html">It even works in Chrome which seems to not work as other browsers when trying do logout and start a new session</span></code>', 'techvedic.web@gmail.com', '43455565645', 9, 1, '1-3', '2-4', '<code><span class="html">It even works in Chrome which seems to not work as other browsers when trying do logout and start a new session</span></code>', '', '', 0, 0, '2016-03-08 16:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_qualifications`
--

CREATE TABLE `tb_qualifications` (
  `qualification_id` int(11) NOT NULL,
  `post_job_id` int(11) NOT NULL,
  `qualifications` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_qualifications`
--

INSERT INTO `tb_qualifications` (`qualification_id`, `post_job_id`, `qualifications`) VALUES
(1, 1, 'B.A,B.Com,B.Sc,B.Tech/B.E.,PG Diploma'),
(2, 3, 'BCA'),
(9, 10, 'BCA,B.Tech/B.E.,M.Tech,MCA'),
(10, 11, 'BCA,B.Sc,B.Tech/B.E.'),
(13, 14, 'B.Com,Diploma,M.A,M.Com'),
(14, 0, 'B.A,B.Com,B.Sc,M.A,M.Com,M.Ed,PG Diploma'),
(15, 0, 'B.A,B.B.A,B.Com,B.Sc,M.A,M.Com,M.Sc'),
(17, 0, 'B.A,B.Com,B.Sc,Integrated PG,M.A,M.Com,M.Sc'),
(18, 0, 'B.A,M.A'),
(22, 19, 'B.Arch,B.Ed'),
(23, 21, 'B.A,BCA,B.Ed,B.Tech/B.E.'),
(24, 22, 'B.Arch,B.Pharma'),
(25, 23, 'B.Arch,BHM');

-- --------------------------------------------------------

--
-- Table structure for table `tb_recruiter`
--

CREATE TABLE `tb_recruiter` (
  `recruiter_id` int(11) NOT NULL,
  `social_id` varchar(200) DEFAULT NULL,
  `linkedin_id` varchar(200) DEFAULT NULL,
  `recruiter_name` varchar(50) NOT NULL,
  `recruiter_company` varchar(100) NOT NULL,
  `company_logo` varchar(100) NOT NULL,
  `recuriter_email` varchar(100) DEFAULT NULL,
  `recruiter_phone` varchar(50) NOT NULL,
  `recruiter_password` varchar(100) DEFAULT NULL,
  `recruiter_profile_img` varchar(100) DEFAULT NULL,
  `recruiter_reg_date` date NOT NULL,
  `recruiter_status` enum('0','1') NOT NULL DEFAULT '0',
  `social_type` varchar(100) DEFAULT NULL,
  `match_number` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_recruiter`
--

INSERT INTO `tb_recruiter` (`recruiter_id`, `social_id`, `linkedin_id`, `recruiter_name`, `recruiter_company`, `company_logo`, `recuriter_email`, `recruiter_phone`, `recruiter_password`, `recruiter_profile_img`, `recruiter_reg_date`, `recruiter_status`, `social_type`, `match_number`) VALUES
(1, NULL, NULL, 'Techvedic', 'Techvedic Pvt Ltd.', '1456737104.jpg', 'techvedic.web@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '1456737095cbc6fb087951fc39f7d330c4f33_large.jpeg', '2016-02-29', '1', NULL, NULL),
(2, NULL, NULL, 'sidhivinayakam', 'sidhivinayakamconsultants', '', 'sidhivinayakamconsultants@gmail.com', '', '9da25877625704ff2b9935d75122d8d2', NULL, '2016-02-29', '1', NULL, NULL),
(3, '1166615060034975', NULL, 'Nikhil Verma', 'Nik MNC', '', 'niku69@yahoo.co.in', '9845788457', NULL, NULL, '2016-02-29', '0', 'Facebook', NULL),
(4, NULL, NULL, 'jovelyn Boruah', 'ABC recruiters', '', 'jovelynboruah@gmail.com', '', '9da25877625704ff2b9935d75122d8d2', NULL, '2016-03-02', '1', NULL, NULL),
(5, NULL, NULL, 'akky', 'techvedic', '', 'akash21info@gmail.com', '', '25f9e794323b453885f5181f1b624d0b', NULL, '2016-03-03', '0', NULL, NULL),
(6, NULL, 'TN0bWQs7dX', 'Guddu Kumar', '', '', 'guddukmr786@gmail.com', '', NULL, NULL, '2016-03-03', '0', 'Linkedin', NULL),
(7, '915532225181648', NULL, 'Guddu Kumar', '', '', NULL, '', NULL, NULL, '2016-03-03', '0', 'Facebook', NULL),
(8, '996632933709382', NULL, 'Pooja Pahuja', '', '', NULL, '', NULL, NULL, '2016-03-04', '0', 'Facebook', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_skills`
--

CREATE TABLE `tb_skills` (
  `skills_id` int(11) NOT NULL,
  `post_job_id` int(11) NOT NULL,
  `skills` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_skills`
--

INSERT INTO `tb_skills` (`skills_id`, `post_job_id`, `skills`) VALUES
(1, 1, 'Any Process - International BPO'),
(2, 2, 'ERP / CRM Software'),
(3, 3, 'Game Development'),
(4, 4, 'Desktop Software Development,Ecommerce Development,Game Development'),
(5, 6, 'Desktop Software Development,Ecommerce Development,Mobile Development'),
(6, 7, 'Desktop Software Development,Ecommerce Development,Game Development'),
(7, 0, 'Business Content Developer,Features Writer/Resident Write,Investigative Journalist'),
(8, 8, 'Any Process - International BPO,Voice Process - Domestic BPO,Account Services'),
(9, 9, 'Customer Service'),
(10, 10, 'Desktop Software Development,Ecommerce Development,QA & Testing,Web Development,Web & Mobile Design,Other - Software Development,Mobile'),
(11, 11, 'Data Visualization,Data Mining & Management,Quantitative Analysis'),
(12, 12, 'Scripts & Utilities,Web & Mobile Design'),
(13, 13, 'Any Process - International BPO,Any Process - Domestic BPO Type'),
(14, 14, 'Accounts Payable,Accounts Receivable,Banking and Financial Services,Billing,Cost Accounting,Staff Accountant ,Tax Accounting'),
(15, 0, 'Academic Writing & Research,Article & Blog Writing,Copywriting,Creative Writing,Editing & Proofreading,Technical Writing,Web Content'),
(16, 0, 'Academic Writing & Research,Article & Blog Writing,Copywriting,Creative Writing,Editing & Proofreading,Technical Writing,Web Content'),
(18, 0, 'Academic Writing & Research,Article & Blog Writing,Creative Writing,Technical Writing,Web Content,Other - Writing'),
(19, 0, 'IT/Technical Content Developer'),
(20, 16, 'Training 0AMP0 Development,Performance Mgmt'),
(22, 18, 'Database Administration,ERP / CRM Software'),
(23, 19, 'Receptionists,Data entry'),
(24, 21, 'ERP / CRM Software,Network & System Administration'),
(25, 22, 'Information Security,Other - IT & Networking'),
(26, 23, 'Features Writer/Resident Write,IT/Technical Content Developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lk_tb_category`
--
ALTER TABLE `lk_tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `lk_tb_city`
--
ALTER TABLE `lk_tb_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `lk_tb_experience`
--
ALTER TABLE `lk_tb_experience`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `lk_tb_industry`
--
ALTER TABLE `lk_tb_industry`
  ADD PRIMARY KEY (`industry_id`);

--
-- Indexes for table `lk_tb_job_type`
--
ALTER TABLE `lk_tb_job_type`
  ADD PRIMARY KEY (`job_type_id`);

--
-- Indexes for table `lk_tb_keywords`
--
ALTER TABLE `lk_tb_keywords`
  ADD PRIMARY KEY (`lk_keywords_id`);

--
-- Indexes for table `lk_tb_location`
--
ALTER TABLE `lk_tb_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `locations` (`locations`);

--
-- Indexes for table `lk_tb_position`
--
ALTER TABLE `lk_tb_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `lk_tb_qualification`
--
ALTER TABLE `lk_tb_qualification`
  ADD PRIMARY KEY (`qualification_id`);

--
-- Indexes for table `lk_tb_salary`
--
ALTER TABLE `lk_tb_salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `lk_tb_skills`
--
ALTER TABLE `lk_tb_skills`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `lk_tb_state`
--
ALTER TABLE `lk_tb_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tb_countries`
--
ALTER TABLE `tb_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jobseeker`
--
ALTER TABLE `tb_jobseeker`
  ADD PRIMARY KEY (`jobseeker_id`);

--
-- Indexes for table `tb_jobseeker_info`
--
ALTER TABLE `tb_jobseeker_info`
  ADD PRIMARY KEY (`jobseeker_details_id`);

--
-- Indexes for table `tb_job_like`
--
ALTER TABLE `tb_job_like`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `tb_keywords`
--
ALTER TABLE `tb_keywords`
  ADD PRIMARY KEY (`keyword_id`);

--
-- Indexes for table `tb_location`
--
ALTER TABLE `tb_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `tb_post_job`
--
ALTER TABLE `tb_post_job`
  ADD PRIMARY KEY (`post_job_id`);

--
-- Indexes for table `tb_qualifications`
--
ALTER TABLE `tb_qualifications`
  ADD PRIMARY KEY (`qualification_id`);

--
-- Indexes for table `tb_recruiter`
--
ALTER TABLE `tb_recruiter`
  ADD PRIMARY KEY (`recruiter_id`),
  ADD UNIQUE KEY `recuriter_email` (`recuriter_email`),
  ADD UNIQUE KEY `recuriter_email_2` (`recuriter_email`);

--
-- Indexes for table `tb_skills`
--
ALTER TABLE `tb_skills`
  ADD PRIMARY KEY (`skills_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lk_tb_category`
--
ALTER TABLE `lk_tb_category`
  MODIFY `category_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `lk_tb_experience`
--
ALTER TABLE `lk_tb_experience`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `lk_tb_industry`
--
ALTER TABLE `lk_tb_industry`
  MODIFY `industry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `lk_tb_job_type`
--
ALTER TABLE `lk_tb_job_type`
  MODIFY `job_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lk_tb_keywords`
--
ALTER TABLE `lk_tb_keywords`
  MODIFY `lk_keywords_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `lk_tb_location`
--
ALTER TABLE `lk_tb_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `lk_tb_position`
--
ALTER TABLE `lk_tb_position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `lk_tb_qualification`
--
ALTER TABLE `lk_tb_qualification`
  MODIFY `qualification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `lk_tb_salary`
--
ALTER TABLE `lk_tb_salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `lk_tb_skills`
--
ALTER TABLE `lk_tb_skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;
--
-- AUTO_INCREMENT for table `lk_tb_state`
--
ALTER TABLE `lk_tb_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tb_countries`
--
ALTER TABLE `tb_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `tb_jobseeker`
--
ALTER TABLE `tb_jobseeker`
  MODIFY `jobseeker_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_jobseeker_info`
--
ALTER TABLE `tb_jobseeker_info`
  MODIFY `jobseeker_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_job_like`
--
ALTER TABLE `tb_job_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_keywords`
--
ALTER TABLE `tb_keywords`
  MODIFY `keyword_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tb_location`
--
ALTER TABLE `tb_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tb_post_job`
--
ALTER TABLE `tb_post_job`
  MODIFY `post_job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tb_qualifications`
--
ALTER TABLE `tb_qualifications`
  MODIFY `qualification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_recruiter`
--
ALTER TABLE `tb_recruiter`
  MODIFY `recruiter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_skills`
--
ALTER TABLE `tb_skills`
  MODIFY `skills_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
