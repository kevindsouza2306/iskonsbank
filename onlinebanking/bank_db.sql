-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2016 at 11:47 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bank_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `gender`, `dob`, `relationship`, `department`, `address`, `mobile`, `login_id`, `pwd`, `lastlogin`) VALUES
(1, 'admin', 'M', '1994-01-01', 'unmarried', 'developer', 'globsyn kolkata', '18003004000', 'admin', 'admin', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE IF NOT EXISTS `atm` (
`id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`id`, `cust_name`, `account_no`, `atm_status`) VALUES
(15, 'Rashid feroz', 34, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary1`
--

CREATE TABLE IF NOT EXISTS `beneficiary1` (
`id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `reciever_id` int(10) NOT NULL,
  `reciever_name` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary1`
--

INSERT INTO `beneficiary1` (`id`, `sender_id`, `sender_name`, `reciever_id`, `reciever_name`, `status`) VALUES
(21, 34, 'Rashid feroz', 35, 'Deepak rajwar', 'ACTIVE'),
(22, 34, 'Rashid feroz', 36, 'Shailesh kumar', 'ACTIVE'),
(23, 36, 'Shailesh kumar', 34, 'Rashid feroz', 'ACTIVE'),
(24, 35, 'Deepak rajwar', 34, 'Rashid feroz', 'ACTIVE'),
(25, 34, 'Rashid feroz', 38, 'isha dey', 'PENDING'),
(26, 34, 'Rashid feroz', 42, 'kevin', 'ACTIVE'),
(27, 34, 'Rashid feroz', 39, 'SUNNY', 'ACTIVE'),
(28, 55, 'sachin', 54, 'anu', 'ACTIVE'),
(29, 59, 'sfit', 58, 'vignesh', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `cheque_book`
--

CREATE TABLE IF NOT EXISTS `cheque_book` (
`id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `cheque_book_status` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cheque_book`
--

INSERT INTO `cheque_book` (`id`, `cust_name`, `account_no`, `cheque_book_status`) VALUES
(8, 'Rashid feroz', 34, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `nominee` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `color_passwd` varchar(240) NOT NULL,
  `pattern` varchar(240) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL,
  `accstatus` varchar(255) NOT NULL,
  `pwdlen` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `dob`, `nominee`, `account`, `address`, `mobile`, `email`, `password`, `color_passwd`, `pattern`, `branch`, `ifsc`, `lastlogin`, `accstatus`, `pwdlen`) VALUES
(53, 'natasha', 'F', '1994-02-02', 'kevin', 'savings', 'ic colony', '89889898989', 'nats@gmail.com', '±³õ”>‘ø¨TT&¡:J¿¨ÓJàV4vcž¡Á:=N', 'v÷}–¨{ðÈƒg“Y(Âú‡û‹pm)bZíÝ­	', '7412359', 'KOLKATA', 'K421A', '2016-03-08 04:14:59', 'ACTIVE', 8),
(55, 'sachin', 'M', '1993-05-03', 'kevin', 'savings', 'delhi', '9753656856', 'sachin@gmail.com', '‰r•ZâçCH/f¸LáûB	vˆ…×“êá¾i·', '½6ÌhD6´¬¾ÒLäã`µ	{pê}Ü5(ÚG#ýhµ%\0', '3245687', 'DELHI', 'D30AC', '2016-03-09 12:31:16', 'ACTIVE', 8),
(56, 'lina', 'F', '1995-01-13', 'james', 'savings', 'nalasopara', '7387557932', 'lina@gmail.com', 'Ä™˜µ‘ª\r™çð(V]„ îLî°‰x®äc%u\n…ó', '½6ÌhD6´¬¾ÒLäã`µ	{pê}Ü5(ÚG#ýhµ%\0', '321456987', 'BANGALORE', 'B6A9E', '2016-03-09 12:38:47', 'ACTIVE', 8),
(57, 'kevin', 'M', '1993-03-23', 'denzil', 'savings', 'New Link Road\r\n86/681,motilala Naga', '89998989898', 'kevin@gmail.com', '6Å4¼	Áì*åN‹íHÝãâ¡–»×ùø3‰ë', 'Å§¯û\rA)RaMŠªSË2Æ†«Æ|þÈÌà&EâVË', '142345732345592345', 'KOLKATA', 'K421A', '2016-03-13 08:09:38', 'ACTIVE', 10),
(58, 'vignesh', 'M', '1994-03-01', 'shelley', 'savings', 'hahjkhkjah', '90900909908', 'vignesh@gmail.com', 'ŽçÇ;Ì¾Ù65z,nì°KõŠb9h,PMS™Û2Q¿)G/', '¹‚ŽË4l4ôÚ­Î%ÑI3œù·÷s}“ã¢1ThwÙ', '14abcd86abcd3', 'KOLKATA', 'K421A', '2016-03-14 05:20:40', 'ACTIVE', 8),
(59, 'sfit', 'M', '1998-03-15', 'jaj', 'savings', 'borivali', '89889898989', 'sfit@gmail.com', 'Æˆ1fõç]§æ\n‹ÔÚø0“p–Õh6öNAÙ¿/L', 'ì$k€)£|‹V¤-,¯ûjP6€²ª	$¢=ßCZ¬', '32abcd14abcd56abcd98abcd7', 'KOLKATA', 'K421A', '2016-03-14 09:07:32', 'ACTIVE', 8),
(62, 'madhur', 'M', '1992-03-02', 'salvi', 'savings', 'borivali', '7878778887', 'madhur@gmail.com', 'ˆþ~FÍ÷$sŸmœ«¹‡r\rˆ«‡­´ÞºýgqBí¸.', '·È_-OJ÷í,o$PnØRL3úF¹äÃâÝ„?~C,', 'af6324a357e772660d76326577f0bb8a35d4e07ed5f26f1d3993dbbddc6a377f', 'KOLKATA', 'K421A', '2016-03-20 07:50:00', 'ACTIVE', 8),
(66, 'kevin', 'M', '2006-02-07', 'dsouza', 'savings', 'New Link Road\r\n86/681,motilala Naga', '99999999999', 'kevindsouza2306@gmail.com', 'Ž6^Á1çn1všüê3)ÊÞvc0ËbÌ5¬¹á(é', '™_†$#wëô0¸J\0÷³ô»&35ÈF¸Ò5yoÙÌ', '905debe28ab4745463ddac75d7b850ab95de3af1ede1c73859f8b433fe7e97cc', 'KOLKATA', 'K421A', '2016-03-31 09:45:38', 'ACTIVE', 8),
(67, 'anu', 'M', '2016-04-04', 'john abrahm', 'savings', 'daisar', '89889898989', 'anu2@gmail.com', '¦3BçúîVyY¹˜e‚e[Œî?ì¦dVÓ·+Ú‹_Jž', '½6ÌhD6´¬¾ÒLäã`µ	{pê}Ü5(ÚG#ýhµ%\0', '871d0129d2f7ed21e996259f4f39ce85a93f3ea136308c99407c93a74161be46', 'BANGALORE', 'B6A9E', '2016-03-31 10:21:21', 'ACTIVE', 8),
(68, 'sharma', 'M', '1994-01-01', 'shubham', 'savings', 'borivali', '12345678901', 'sharma@gmail.com', '½6ÌhD6´¬¾ÒLäã`µ	{pê}Ü5(ÚG#ýhµ%\0', '', '', 'DELHI', 'D30AC', '0000-00-00 00:00:00', 'ACTIVE', 0),
(69, 'Mohak', 'M', '1994-05-09', 'Madhur', 'savings', 'B-53,Sector 3 Borivali', '9967821447', 'sachin.ky93@gmail.com', 'å*Õð#Ø¼ÃéÈÏ}$Î¾-ç`ÉÚ½œ¸yŸ0', '', '', 'KOLKATA', 'K421A', '2016-04-15 11:06:05', 'ACTIVE', 0),
(72, 'sfit2', 'M', '2022-01-04', 'sfitt', 'savings', 'borivali', '09869123456', 'niraj4594@gmail.com', 'P¨ûìiÐ-¹OÏï/Z4WÝòÄ_dbEáYÚ+KÔÁÁu', '', '', 'BANGALORE', 'B6A9E', '2016-04-01 10:25:03', 'ACTIVE', 0),
(74, 'anu', 'F', '1994-10-19', 'kevin', 'savings', 'New Link Road\r\n86/681,motilala Naga', '89998989898', 'anu@gmail.com', '¦3BçúîVyY¹˜e‚e[Œî?ì¦dVÓ·+Ú‹_Jž', '½6ÌhD6´¬¾ÒLäã`µ	{pê}Ü5(ÚG#ýhµ%\0', '871d0129d2f7ed21e996259f4f39ce85a93f3ea136308c99407c93a74161be46', 'KOLKATA', 'K421A', '2016-04-15 11:16:14', 'ACTIVE', 8);

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE IF NOT EXISTS `forgot_password` (
  `confirm_code` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forgot_password`
--

INSERT INTO `forgot_password` (`confirm_code`, `email`) VALUES
('402ff074821dce0f380bbf8ba797664c', 'kevindsouza2306@gmail.com'),
('6ca5fa14e864a21271cd595b55d7b9c3', 'kevindsouza2306@gmail.com'),
('376fa8c90bde4a9f7bb6710d8c6142bf', 'anu2@gmail.com'),
('eb05f421662a2d4bf7bee4747e8c3803', 'kevindsouza2306@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `passbook34`
--

CREATE TABLE IF NOT EXISTS `passbook34` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook34`
--

INSERT INTO `passbook34` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2015-01-08', 'Rashid feroz', 'KOLKATA', 'K421A', 13000, 0, 13000.00, 'Account Open'),
(9, '2015-01-09', 'Rashid feroz', 'KOLKATA', 'K421A', 0, 500, 12500.00, 'TO Deepak rajwar'),
(10, '2015-01-10', 'Rashid feroz', 'KOLKATA', 'K421A', 100, 0, 12600.00, 'BY Deepak rajwar'),
(11, '2015-01-10', 'Rashid feroz', 'KOLKATA', 'K421A', 2593, 0, 15193.00, 'BY Deepak rajwar'),
(12, '2016-03-03', 'Rashid feroz', 'KOLKATA', 'K421A', 0, 2000, 13193.00, 'TO Deepak rajwar'),
(13, '2016-03-07', 'Rashid feroz', 'KOLKATA', 'K421A', 0, 300, 12893.00, 'TO kevin');

-- --------------------------------------------------------

--
-- Table structure for table `passbook35`
--

CREATE TABLE IF NOT EXISTS `passbook35` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook35`
--

INSERT INTO `passbook35` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2015-01-09', 'Deepak rajwar', 'DELHI', 'D30AC', 10002, 0, 10002.00, 'Account Open'),
(7, '2015-01-09', 'Deepak rajwar', 'DELHI', 'D30AC', 500, 0, 10502.00, 'BY Rashid feroz'),
(8, '2015-01-10', 'Deepak rajwar', 'DELHI', 'D30AC', 0, 100, 10402.00, 'TO Rashid feroz'),
(9, '2015-01-10', 'Deepak rajwar', 'DELHI', 'D30AC', 0, 2593, 7809.00, 'TO Rashid feroz'),
(10, '2016-03-03', 'Deepak rajwar', 'DELHI', 'D30AC', 2000, 0, 9809.00, 'BY Rashid feroz');

-- --------------------------------------------------------

--
-- Table structure for table `passbook36`
--

CREATE TABLE IF NOT EXISTS `passbook36` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook36`
--

INSERT INTO `passbook36` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2015-01-09', 'Shailesh kumar', 'BANGALORE', 'B6A9E', 95621, 0, 95621.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook37`
--

CREATE TABLE IF NOT EXISTS `passbook37` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook37`
--

INSERT INTO `passbook37` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2015-01-09', 'Ravi nandan', 'DELHI', 'D30AC', 9000, 0, 9000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook38`
--

CREATE TABLE IF NOT EXISTS `passbook38` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook38`
--

INSERT INTO `passbook38` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2015-01-09', 'Isha dey', 'KOLKATA', 'K421A', 10000, 0, 10000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook39`
--

CREATE TABLE IF NOT EXISTS `passbook39` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook39`
--

INSERT INTO `passbook39` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2015-01-10', 'sunny kumar', 'DELHI', 'D30AC', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook40`
--

CREATE TABLE IF NOT EXISTS `passbook40` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook40`
--

INSERT INTO `passbook40` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2015-01-11', 'Pankaj kumar', 'DELHI', 'D30AC', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook41`
--

CREATE TABLE IF NOT EXISTS `passbook41` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook41`
--

INSERT INTO `passbook41` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2015-01-11', 'Sharique hassan', 'KOLKATA', 'K421A', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook53`
--

CREATE TABLE IF NOT EXISTS `passbook53` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook53`
--

INSERT INTO `passbook53` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-08', 'natasha', 'KOLKATA', 'K421A', 1000898987, 0, 100000000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook55`
--

CREATE TABLE IF NOT EXISTS `passbook55` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook55`
--

INSERT INTO `passbook55` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-09', 'sachin', 'DELHI', 'D30AC', 5000, 0, 5000.00, 'Account Open'),
(2, '2016-03-09', 'sachin', 'DELHI', 'D30AC', 0, 400, 4600.00, 'TO anu');

-- --------------------------------------------------------

--
-- Table structure for table `passbook56`
--

CREATE TABLE IF NOT EXISTS `passbook56` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook56`
--

INSERT INTO `passbook56` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-09', 'lina', 'BANGALORE', 'B6A9E', 2000, 0, 2000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook57`
--

CREATE TABLE IF NOT EXISTS `passbook57` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook57`
--

INSERT INTO `passbook57` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-13', 'kevin', 'KOLKATA', 'K421A', 2147483647, 0, 100000000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook58`
--

CREATE TABLE IF NOT EXISTS `passbook58` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook58`
--

INSERT INTO `passbook58` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-14', 'vignesh', 'KOLKATA', 'K421A', 100089, 0, 100089.00, 'Account Open'),
(2, '2016-03-14', 'vignesh', 'KOLKATA', 'K421A', 10000, 0, 110089.00, 'BY sfit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook59`
--

CREATE TABLE IF NOT EXISTS `passbook59` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook59`
--

INSERT INTO `passbook59` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-14', 'sfit', 'KOLKATA', 'K421A', 10008991, 0, 10008991.00, 'Account Open'),
(2, '2016-03-14', 'sfit', 'KOLKATA', 'K421A', 0, 10000, 9998991.00, 'TO vignesh');

-- --------------------------------------------------------

--
-- Table structure for table `passbook62`
--

CREATE TABLE IF NOT EXISTS `passbook62` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook62`
--

INSERT INTO `passbook62` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-20', 'madhur', 'KOLKATA', 'K421A', 100023, 0, 100023.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook63`
--

CREATE TABLE IF NOT EXISTS `passbook63` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook63`
--

INSERT INTO `passbook63` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-23', 'tanu', 'KOLKATA', 'K421A', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook64`
--

CREATE TABLE IF NOT EXISTS `passbook64` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook64`
--

INSERT INTO `passbook64` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-28', 'kevin', 'BANGALORE', 'B6A9E', 100089892, 0, 100000000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook65`
--

CREATE TABLE IF NOT EXISTS `passbook65` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook65`
--

INSERT INTO `passbook65` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-31', 'anu', 'KOLKATA', 'K421A', 100090909, 0, 100000000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook66`
--

CREATE TABLE IF NOT EXISTS `passbook66` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook66`
--

INSERT INTO `passbook66` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-31', 'kevin', 'KOLKATA', 'K421A', 1000245, 0, 1000245.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook67`
--

CREATE TABLE IF NOT EXISTS `passbook67` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook67`
--

INSERT INTO `passbook67` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-03-31', 'anu', 'BANGALORE', 'B6A9E', 10007878, 0, 10007878.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook68`
--

CREATE TABLE IF NOT EXISTS `passbook68` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook68`
--

INSERT INTO `passbook68` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-04-01', 'sharma', 'DELHI', 'D30AC', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook69`
--

CREATE TABLE IF NOT EXISTS `passbook69` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook69`
--

INSERT INTO `passbook69` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-04-01', 'Mohak', 'KOLKATA', 'K421A', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook72`
--

CREATE TABLE IF NOT EXISTS `passbook72` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook72`
--

INSERT INTO `passbook72` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-04-01', 'sfit2', 'BANGALORE', 'B6A9E', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook74`
--

CREATE TABLE IF NOT EXISTS `passbook74` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook74`
--

INSERT INTO `passbook74` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2016-04-15', 'anu', 'KOLKATA', 'K421A', 1000123, 0, 1000123.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
`id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `gender` char(1) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `dob`, `relationship`, `department`, `doj`, `address`, `mobile`, `email`, `pwd`, `gender`, `lastlogin`) VALUES
(1, 'sunil', '1990-05-05', 'married', 'revenue', '1999-11-11', 'kestopur12', 'sunil@gmail', 'kul@gmail.com', 'wew', 'M', '2016-03-03 07:58:17'),
(2, 'akash', '1998-08-21', 'unmarried', 'revenue', '2013-08-03', 'kolkata', '9635722546', 'akash@gmail.com', '125', 'M', '2015-01-10 21:22:59'),
(4, 'pankaj', '1989-05-31', 'married', 'revenue', '2015-01-04', 'bhagalpur13', 'pankaj@gmai', 'pankaj@gmail.com', '789', 'M', '0000-00-00 00:00:00'),
(5, 'sharma', '1980-04-21', 'married', 'revenue', '1991-01-01', 'khidirpur', '9876543210', 'sharma@gmail.com', 'sharma', 'M', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`login_id`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_book`
--
ALTER TABLE `cheque_book`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `passbook34`
--
ALTER TABLE `passbook34`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook35`
--
ALTER TABLE `passbook35`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook36`
--
ALTER TABLE `passbook36`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook37`
--
ALTER TABLE `passbook37`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook38`
--
ALTER TABLE `passbook38`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook39`
--
ALTER TABLE `passbook39`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook40`
--
ALTER TABLE `passbook40`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook41`
--
ALTER TABLE `passbook41`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook53`
--
ALTER TABLE `passbook53`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook55`
--
ALTER TABLE `passbook55`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook56`
--
ALTER TABLE `passbook56`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook57`
--
ALTER TABLE `passbook57`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook58`
--
ALTER TABLE `passbook58`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook59`
--
ALTER TABLE `passbook59`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook62`
--
ALTER TABLE `passbook62`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook63`
--
ALTER TABLE `passbook63`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook64`
--
ALTER TABLE `passbook64`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook65`
--
ALTER TABLE `passbook65`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook66`
--
ALTER TABLE `passbook66`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook67`
--
ALTER TABLE `passbook67`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook68`
--
ALTER TABLE `passbook68`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook69`
--
ALTER TABLE `passbook69`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook72`
--
ALTER TABLE `passbook72`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook74`
--
ALTER TABLE `passbook74`
 ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `cheque_book`
--
ALTER TABLE `cheque_book`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `passbook34`
--
ALTER TABLE `passbook34`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `passbook35`
--
ALTER TABLE `passbook35`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `passbook36`
--
ALTER TABLE `passbook36`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook37`
--
ALTER TABLE `passbook37`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook38`
--
ALTER TABLE `passbook38`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook39`
--
ALTER TABLE `passbook39`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook40`
--
ALTER TABLE `passbook40`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook41`
--
ALTER TABLE `passbook41`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook53`
--
ALTER TABLE `passbook53`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook55`
--
ALTER TABLE `passbook55`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `passbook56`
--
ALTER TABLE `passbook56`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook57`
--
ALTER TABLE `passbook57`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook58`
--
ALTER TABLE `passbook58`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `passbook59`
--
ALTER TABLE `passbook59`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `passbook62`
--
ALTER TABLE `passbook62`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook63`
--
ALTER TABLE `passbook63`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook64`
--
ALTER TABLE `passbook64`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook65`
--
ALTER TABLE `passbook65`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook66`
--
ALTER TABLE `passbook66`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook67`
--
ALTER TABLE `passbook67`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook68`
--
ALTER TABLE `passbook68`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook69`
--
ALTER TABLE `passbook69`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook72`
--
ALTER TABLE `passbook72`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook74`
--
ALTER TABLE `passbook74`
MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
