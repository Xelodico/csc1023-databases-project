-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2024 at 10:10 AM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `probinson21`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `ApplicationFeedback`
-- (See below for the actual view)
--
CREATE TABLE `ApplicationFeedback` (
`ApplicationID` int(11)
,`Name` varchar(101)
,`JobTitle` varchar(50)
,`OverallRating` decimal(18,5)
,`CandidateStrengths` text
,`CandidateImprovements` text
);

-- --------------------------------------------------------

--
-- Table structure for table `Applications`
--

CREATE TABLE `Applications` (
  `ApplicationID` int(11) NOT NULL,
  `JobID` int(11) NOT NULL,
  `SeekerID` int(11) NOT NULL,
  `DateApplied` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Applications`
--

INSERT INTO `Applications` (`ApplicationID`, `JobID`, `SeekerID`, `DateApplied`) VALUES
(1, 41, 1, '2023-07-12'),
(2, 55, 1, '2023-12-14'),
(3, 39, 28, '2023-05-26'),
(4, 35, 20, '2023-12-06'),
(5, 54, 8, '2024-01-11'),
(6, 31, 18, '2023-11-05'),
(7, 48, 20, '2024-01-06'),
(8, 57, 9, '2023-06-21'),
(9, 57, 24, '2023-08-27'),
(10, 31, 12, '2023-09-27'),
(11, 56, 25, '2023-05-27'),
(12, 53, 22, '2023-03-26'),
(13, 41, 22, '2023-07-23'),
(14, 42, 2, '2023-05-15'),
(15, 46, 22, '2023-05-11'),
(16, 60, 27, '2023-09-11'),
(17, 49, 12, '2023-12-11'),
(18, 59, 3, '2024-02-11'),
(19, 54, 22, '2023-07-23'),
(20, 33, 30, '2023-10-11'),
(21, 55, 15, '2023-11-09'),
(22, 33, 2, '2023-09-25'),
(23, 57, 9, '2023-04-12'),
(24, 60, 10, '2023-12-28'),
(25, 52, 19, '2024-01-09'),
(26, 36, 29, '2023-07-28'),
(27, 35, 7, '2023-05-06'),
(28, 34, 27, '2024-02-18'),
(29, 47, 11, '2023-11-02'),
(30, 57, 8, '2023-03-31'),
(31, 35, 12, '2023-08-23'),
(32, 44, 10, '2023-09-06'),
(33, 37, 25, '2023-04-14'),
(34, 57, 16, '2023-08-22'),
(35, 35, 20, '2024-01-03'),
(36, 42, 16, '2024-01-02'),
(37, 58, 2, '2023-09-09'),
(38, 55, 25, '2023-05-02'),
(39, 60, 1, '2023-06-07'),
(40, 31, 28, '2023-06-05'),
(91, 59, 13, '2024-08-01'),
(92, 61, 40, '2024-03-11'),
(93, 68, 54, '2024-02-05'),
(94, 48, 54, '2024-08-13'),
(95, 60, 65, '2024-09-11'),
(96, 82, 22, '2024-02-16'),
(97, 44, 57, '2024-09-16'),
(98, 62, 45, '2024-04-18'),
(99, 63, 28, '2024-11-28'),
(100, 53, 8, '2024-08-08'),
(101, 45, 53, '2024-05-19'),
(102, 53, 5, '2024-11-16'),
(103, 36, 15, '2024-08-02'),
(104, 48, 3, '2024-07-11'),
(105, 52, 54, '2024-01-25'),
(106, 62, 14, '2024-10-02'),
(107, 37, 67, '2024-04-23'),
(108, 80, 7, '2024-08-04'),
(109, 44, 14, '2024-05-09'),
(110, 87, 30, '2024-10-17'),
(111, 74, 13, '2024-10-27'),
(112, 74, 2, '2024-10-11'),
(113, 44, 24, '2024-09-03'),
(114, 56, 22, '2024-01-03'),
(115, 58, 24, '2024-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `ApplicationStatus`
--

CREATE TABLE `ApplicationStatus` (
  `ApplicationID` int(11) NOT NULL,
  `StatusID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ApplicationStatus`
--

INSERT INTO `ApplicationStatus` (`ApplicationID`, `StatusID`) VALUES
(1, 4),
(2, 4),
(3, 1),
(4, 4),
(5, 4),
(6, 1),
(7, 2),
(8, 4),
(9, 2),
(10, 3),
(11, 1),
(12, 1),
(13, 3),
(14, 2),
(15, 4),
(16, 3),
(17, 4),
(18, 1),
(19, 4),
(20, 2),
(21, 2),
(22, 2),
(23, 3),
(24, 3),
(25, 1),
(26, 2),
(27, 2),
(28, 3),
(29, 4),
(30, 1),
(31, 4),
(32, 4),
(33, 1),
(34, 3),
(35, 3),
(36, 2),
(37, 2),
(38, 3),
(39, 1),
(40, 1),
(91, 2),
(92, 3),
(93, 4),
(94, 2),
(95, 2),
(96, 3),
(97, 3),
(98, 1),
(99, 4),
(100, 3),
(101, 3),
(102, 1),
(103, 2),
(104, 1),
(105, 2),
(106, 4),
(107, 1),
(108, 2),
(109, 1),
(110, 1),
(111, 4),
(112, 4),
(113, 3),
(114, 4),
(115, 2);

-- --------------------------------------------------------

--
-- Table structure for table `EducationLevels`
--

CREATE TABLE `EducationLevels` (
  `EducationLevelID` int(11) NOT NULL,
  `EducationLevelName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EducationLevels`
--

INSERT INTO `EducationLevels` (`EducationLevelID`, `EducationLevelName`) VALUES
(1, 'High School Diploma'),
(2, 'Associate Degree'),
(3, 'Bachelor\'s Degree'),
(4, 'Master\'s Degree'),
(5, 'Doctorate (Ph.D.)'),
(6, 'Professional Certification'),
(7, 'Vocational/Technical Training'),
(8, 'No Degree'),
(9, 'Online Course Certification'),
(10, 'Trade School Certification');

-- --------------------------------------------------------

--
-- Table structure for table `EmployerContactDepartments`
--

CREATE TABLE `EmployerContactDepartments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EmployerContactDepartments`
--

INSERT INTO `EmployerContactDepartments` (`DepartmentID`, `DepartmentName`) VALUES
(1, 'Human Resources'),
(2, 'Recruitment'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'Information Technology'),
(6, 'Sales'),
(7, 'Operations'),
(8, 'Research and Development'),
(9, 'Customer Service'),
(10, 'Legal');

-- --------------------------------------------------------

--
-- Table structure for table `EmployerContactPosition`
--

CREATE TABLE `EmployerContactPosition` (
  `PositionID` int(11) NOT NULL,
  `PositionName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EmployerContactPosition`
--

INSERT INTO `EmployerContactPosition` (`PositionID`, `PositionName`) VALUES
(1, 'Human Resources Manager'),
(2, 'Undergraduate Recruitment Specialist'),
(3, 'Postgraduate Recruitment Specialist'),
(4, 'Hiring Manager'),
(5, 'Talent Acquisition Director'),
(6, 'CEO (Chief Executive Officer)'),
(7, 'CFO (Chief Financial Officer)'),
(8, 'CTO (Chief Technology Officer)'),
(9, 'Marketing Manager'),
(10, 'Sales Director'),
(11, 'Project Manager');

-- --------------------------------------------------------

--
-- Table structure for table `EmployerContacts`
--

CREATE TABLE `EmployerContacts` (
  `ContactID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `DoB` date NOT NULL,
  `StreetName` varchar(30) NOT NULL,
  `City` varchar(40) NOT NULL,
  `County` varchar(40) DEFAULT NULL,
  `Postcode` varchar(40) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNo` varchar(20) NOT NULL,
  `EmployerID` int(11) NOT NULL,
  `PositionID` int(11) NOT NULL,
  `DepartmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EmployerContacts`
--

INSERT INTO `EmployerContacts` (`ContactID`, `FirstName`, `MiddleName`, `LastName`, `DoB`, `StreetName`, `City`, `County`, `Postcode`, `Email`, `PhoneNo`, `EmployerID`, `PositionID`, `DepartmentID`) VALUES
(1, 'Ryan', 'Alan', 'Mellor', '1980-05-15', '92 Edentrillick Rd', 'Hillsborough', 'Down', 'BT26 6QX', 'RyanMellor@teleworm.co.uk', '078 0025 5134', 196, 3, 1),
(2, 'Louise', 'Susie', 'Bryan', '1965-04-12', '277 Shankill Rd', 'Belfast', 'Antrim', 'BT13 1FT', 'LouiseBryan@armyspy.com', '079 6557 7883', 191, 4, 2),
(3, 'Declan', 'Howe', 'Kaur', '1987-02-03', '671 Shore Rd', 'Newtownabbey', NULL, 'BT37 0ST', 'DeclanKaur@dayrep.com', '078 6512 7345', 202, 4, 2),
(4, 'Isabella', 'Jane', 'Humphreys', '1989-12-14', '75 North St', 'Craigavon', NULL, 'BT67 9AH', 'IsabellaHumphreys@jourrapide.com', '070 8991 5416', 184, 10, 1),
(5, 'Gabriel', NULL, 'Ball', '1974-01-31', '68 Rathconvil Rd', 'Armagh', 'Armagh', 'BT60 2DJ', 'GabrielBall@teleworm.com', '078 1946 9078', 194, 10, 1),
(6, 'Sophie', 'Anne', 'Fletcher', '1983-09-25', '45 Main Street', 'Lisburn', 'Antrim', 'BT28 1XX', 'SophieFletcher@jourrapide.com', '077 1234 5678', 199, 5, 3),
(7, 'Ethan', 'James', 'Matthews', '1990-06-18', '29 Elm Avenue', 'Newtownards', 'Down', 'BT23 4YZ', 'EthanMatthews@rhyta.com', '078 9876 5432', 201, 8, 6),
(8, 'Olivia', 'Grace', 'Watson', '1978-11-03', '12 Oak Road', 'Dungannon', NULL, 'BT71 5AB', 'OliviaWatson@gmail.com', '079 5678 1234', 189, 11, 5),
(9, 'Noah', 'Alexander', 'Dixon', '1985-03-12', '88 Pine Street', 'Armagh', 'Armagh', 'BT61 7CD', 'NoahDixon@outlook.com', '077 8765 4321', 203, 2, 4),
(10, 'Ava', 'Rose', 'Turner', '1992-07-28', '55 Birch Lane', 'Banbridge', 'Down', 'BT32 8EF', 'AvaTurner@aol.com', '078 2345 6789', 187, 9, 7),
(11, 'Emma', 'Grace', 'Roberts', '1982-12-08', '15 Willow Lane', 'Belfast', 'Antrim', 'BT7 3FG', 'EmmaRoberts@armyspy.com', '077 1122 3344', 186, 4, 2),
(12, 'Mia', NULL, 'Connor ', '1995-05-20', '21 Cedar Street ', 'Newry ', 'Down', 'BT35 6GH ', 'MiaOConnor@teleworm.us', '078 2233 4455 ', 204, 6, 3),
(13, 'Liam', 'Thomas', 'Kennedy ', '1989-08-17', '33 Birch Road ', 'Derry ', NULL, 'BT48 5JK ', 'LiamKennedy@rhyta.com', '075 3344 5566 ', 188, 1, 9),
(14, 'Lucas', NULL, 'Murphy ', '1976-02-28', '44 Elm Avenue ', 'Lisburn ', NULL, 'BT28 9LH ', 'LucasMurphy@hotmail.com', '079 4455 6677 ', 197, 10, 1),
(15, 'Ella', 'Mae', 'Stewart ', '1998-11-14', '77 Oak Street ', 'Craigavon ', 'Armagh', 'BT66 8ZY ', 'EllaStewart@msn.com', '076 5566 7788 ', 185, 7, 4),
(16, 'Aiden', NULL, 'Jones ', '1984-09-03', '8 Pine Road ', 'Coleraine ', 'Derry', 'BT52 4TU ', 'AidenJones@live.com ', '077 6677 8899 ', 200, 3, 8),
(17, 'Aria', 'Lily', 'Evans ', '1993-06-25', '99 Maple Lane ', 'Newtownabbey ', NULL, 'BT36 7OP ', 'AriaEvans@jourrapide.com', '078 7788 9900 ', 195, 9, 7),
(18, 'Caleb', NULL, 'Turnbull ', '1970-03-19', '12 Willow Lane ', 'Belfast ', 'Antrim', 'BT7 2FG ', 'CalebTurnbull@gmail.com ', '075 8899 0011 ', 182, 11, 5),
(19, 'Scarlett', NULL, 'Cunningham ', '1987-07-10', '25 Cedar Street ', 'Dungannon ', 'Tyrone', 'BT71 8EF ', 'ScarlettCunningham@icloud.com', '076 0011 2233 ', 192, 5, 3),
(20, 'Logan', 'Lee', 'Doherty ', '1996-01-02', '38 Birch Road ', 'Derry ', 'Derry', 'BT48 6JK ', 'LoganDoherty@inbox.com', '077 2233 4455 ', 203, 2, 4),
(41, 'Joshua', 'James', 'Morrison', '1955-05-23', '302 Caliangt Lane', 'Omagh', 'Antrim', 'BT38 0DV', 'jmorrison@surveymonkey.com', '079 7675 1747', 211, 6, 1),
(42, 'Bradley', NULL, 'Holt', '1978-05-19', '325 Packers Place', 'Antrim', 'Londonderry', 'BT43 41WD', 'bholt@google.com', '072 6752 5223', 234, 3, 9),
(43, 'Alonzo', 'Michael', 'Jones', '1986-07-13', '21 Starling Terrace', 'Belfast', 'Antrim', 'BT67 8TR', 'ajones2@msn.com', '071 0867 7254', 220, 1, 7),
(44, 'Correna', NULL, 'Vivash', '1969-02-02', '34 Merry Parkway', 'Strabane', 'Down', 'BT2 95ZK', 'cvivash3@xrea.com', '077 7209 6490', 188, 8, 3),
(45, 'Matt', NULL, 'Stillwell', '1959-04-27', '81 Commercial Alley', 'Downpatrick', NULL, 'BT9 3XR', 'mstillwell4@geocities.com', '075 7027 7657', 225, 4, 5),
(46, 'Holmes', 'William', 'Dickie', '1993-07-15', '606 Dexter Road', 'Omagh', NULL, 'BT11 4BS', 'hdickie5@shinystat.com', '071 9956 5912', 202, 11, 1),
(47, 'Adrian', NULL, 'Longbottom', '1958-06-14', '73 Mayer Lane', 'Larne', NULL, 'BT47 27EA', 'alongbottom6@nhs.uk', '071 4347 3108', 201, 10, 6),
(48, 'Annabelle', 'Lisa', 'Keys', '1955-05-22', '66 Schiller Center', 'Limavady', NULL, 'BT58 43GD', 'akeys7@mediafire.com', '078 2341 4884', 211, 9, 1),
(49, 'Frederik', 'Joseph', 'Ferran', '1966-01-18', '66 Oriole Trail', 'Belfast', NULL, 'BT7 92TD', 'fferran8@mapquest.com', '077 9059 7213', 196, 3, 8),
(50, 'Dewie', 'William', 'Hughie', '1969-11-06', '23 Fulton Pass', 'Newtownabbey', NULL, 'BT3 14WN', 'dhughie@jalbum.net', '075 9811 5671', 214, 4, 8),
(51, 'Nicole', 'Marie', 'Nixon', '1971-01-06', '98 Armistice Crossing', 'Newtownards', 'Londonderry', 'BT64 43KY', 'nnixon345@multiply.com', '070 8546 6423', 203, 7, 7),
(52, 'Edwin', NULL, 'McDonald', '1986-11-01', '62 White Place', 'Craigavon', NULL, 'BT69 4VD', 'emcdonald@bt.com', '071 6561 3858', 215, 4, 10),
(53, 'Anna', 'Marie', 'Renne', '1983-03-04', '17 Gateway Terrace', 'Omagh', 'Tyrone', 'BT96 09RP', 'arennec@si.edu', '079 9994 7279', 210, 9, 5),
(54, 'Tawnie', 'Rose', 'Baugh', '1978-01-04', '4 Browning Parkway', 'Antrim', NULL, 'BT29 83NW', 'tbaughd@wordpress.com', '073 6489 5076', 206, 6, 5),
(55, 'Carol', 'Julie', 'Lambert', '1977-11-10', '1 Kings Junction', 'Strabane', 'Armagh', 'BT9 46SO', 'carollambert@etsy.com', '076 8355 6989', 192, 9, 10),
(56, 'Aleeya', 'Elizabeth', 'Lillico', '1963-12-10', '201 Thackeray Road', 'Newtownards', 'Down', 'BT6 23MY', 'alillicof@slashdot.org', '077 8277 7297', 191, 2, 3),
(57, 'Bessie', 'Elizabeth', 'Littlewood', '1970-08-29', '59 Mesta Center', 'Portadown', 'Derry', 'BT2 1WP', 'blittlewoodg@taobao.com', '070 3118 5830', 225, 5, 8),
(58, 'Tanhya', NULL, 'Kienl', '1967-05-10', '286 Butterfield Park', 'Omagh', 'Down', 'BT5 99ZR', 'tkienlh@nasa.gov', '079 5716 3467', 184, 9, 9),
(59, 'Imogen', 'Louise', 'Charlton', '1967-12-08', '5 Melvin Street', 'Carrickfergus', 'Tyrone', 'BT34 43ON', 'icharlton@gov.uk', '077 5387 2440', 230, 9, 3),
(60, 'Daniele', NULL, 'Dincey', '1963-10-06', '26 Helena Hill', 'Craigavon', 'Derry', 'BT8 8DG', 'ddinceyj@aol.com', '075 4719 8776', 206, 7, 8),
(61, 'Randal', NULL, 'Gerald', '1966-08-30', '74 Porter Junction', 'Lisburn', 'Tyrone', 'BT35 92GM', 'rgerald@tumblr.com', '074 8813 6648', 187, 8, 8),
(62, 'Raynard', 'Louise', 'Raleston', '1992-09-19', '26 Farmco Circle', 'Coleraine', 'Londonderry', 'BT33 74TC', 'rralestonl@tripod.com', '075 2776 4604', 229, 1, 3),
(63, 'Nilson', 'James', 'Ellis', '1990-09-09', '62 Riverside Terrace', 'Carrickfergus', 'Tyrone', 'BT5 18YD', 'nellis@sundaytimes.com', '077 5504 2624', 208, 11, 7),
(64, 'Sammie', 'Joseph', 'Kingsley', '1963-04-19', '457 Towne Road', 'Belfast', 'Londonderry', 'BT46 02JY', 'skingsley@joomla.org', '076 5234 8193', 184, 4, 1),
(65, 'Finlay', NULL, 'Sutton', '1983-07-18', '59 Kensington Junction', 'Belfast', 'Antrim', 'BT2 1LQ', 'fsutton@uu.edu', '076 3567 7540', 207, 7, 9),
(66, 'Kate', NULL, 'Jenkins', '1964-01-20', '376 Hayes Road', 'Enniskillen', NULL, 'BT76 42WG', 'katejenkins374@ocn.com', '076 4964 5309', 185, 4, 7),
(67, 'Marian', 'James', 'Scott', '1962-04-28', '27 Mockingbird Junction', 'Bangor', 'Londonderry', 'BT2 5BC', 'mscott@accuweather.com', '077 6713 9729', 196, 7, 8),
(68, 'Claire', NULL, 'Blankett', '1982-05-01', '8 Gale Rd', 'Newtownabbey', 'Fermanagh', 'BT2 65GX', 'cblankettr@elegantthemes.com', '076 7112 0748', 206, 10, 3),
(69, 'Annie', 'Rose', 'Summerlie', '1956-08-15', '99 Anniversary Circle', 'Omagh', 'Antrim', 'BT0 1QN', 'asummerlies@uk.gov', '071 1829 2706', 225, 8, 10),
(70, 'Meryl', NULL, 'Bayfield', '1980-09-08', '337 Troy Crossing', 'Belfast', 'Antrim', 'BT34 98RN', 'mbayfieldt@purevolume.com', '079 5953 4689', 202, 5, 3),
(71, 'Renard', 'Joseph', 'McEnnis', '1964-04-12', '72 Lighthouse Bay Court', 'Enniskillen', NULL, 'BT80 38CB', 'rmcennis@rakuten.co.uk', '075 8325 0558', 192, 5, 7),
(72, 'Peggie', 'William', 'Butler', '1969-07-23', '61 Talisman Trail', 'Strabane', NULL, 'BT52 57EQ', 'pbutler@edublogs.org', '072 4515 9218', 201, 11, 4),
(73, 'Taylor', 'Marie', 'Allen', '1969-03-16', '3 Bluejay Avenue', 'Bangor', 'Armagh', 'BT0 52RS', 'tAllen@mashable.com', '076 6227 4853', 182, 10, 6),
(74, 'Stanley', 'James', 'Baldwin', '1988-07-03', '4150 Randy Hill', 'Newry', 'Down', 'BT5 6GS', 'sbaldwin@squarespace.com', '074 4652 2373', 190, 1, 3),
(75, 'Stillman', NULL, 'Powell', '1985-08-16', '4 Hovde Lane', 'Enniskillen', 'Fermanagh', 'BT1 24OS', 'spowell@zdnet.com', '070 6479 1271', 233, 7, 1),
(76, 'Olva', 'Rose', 'Reynard', '1974-03-08', '14 Corben Terrace', 'Newry', 'Antrim', 'BT0 69MV', 'oreynard@cornell.edu', '078 9356 3041', 236, 11, 1),
(77, 'Dominic', 'James', 'Cabell', '1956-02-10', '417 Delladonna Avenue', 'Lurgan', 'Fermanagh', 'BT7 35WV', 'dcabell10@parallels.com', '073 1761 2549', 195, 10, 2),
(78, 'Kyle', 'Michael', 'Phillips', '1992-02-23', '52 Merchant Lane', 'Craigavon', 'Armagh', 'BT51 4QU', 'kmichaelphillips@bbc.co.uk', '078 0979 6059', 206, 5, 5),
(79, 'Samuel', 'David', 'Mitchell', '1991-10-23', '80 Mcbride Rd', 'Craigavon', NULL, 'BT5 8MA', 'smitchell12@nature.com', '076 6965 5385', 207, 2, 1),
(80, 'Wyatt', NULL, 'McFarlan', '1964-11-05', '97 Sunnyside Way', 'Omagh', NULL, 'BT04 0XH', 'wmcfarlan13@yelp.com', '073 6333 6214', 190, 11, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `EmployerRecruitmentRateBetweenJuneToDecember2023`
-- (See below for the actual view)
--
CREATE TABLE `EmployerRecruitmentRateBetweenJuneToDecember2023` (
`EmployerID` int(11)
,`CompanyName` varchar(50)
,`NewRecruits` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `Employers`
--

CREATE TABLE `Employers` (
  `EmployerID` int(11) NOT NULL,
  `CompanyName` varchar(50) NOT NULL,
  `IndustryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employers`
--

INSERT INTO `Employers` (`EmployerID`, `CompanyName`, `IndustryID`) VALUES
(181, 'Ledner, VonRueden and Murazik', 3),
(182, 'Stokes-Thompson', 8),
(183, 'Streich-Lehner', 5),
(184, 'Hane LLC', 10),
(185, 'Weissnat Group', 4),
(186, 'Krajcik and Sons', 9),
(187, 'Herman-Rempel', 2),
(188, 'Lebsack-Botsford', 7),
(189, 'Hintz Group', 1),
(190, 'McCullough Group', 6),
(191, 'Klein, Bruen and Lindgren', 11),
(192, 'Robel Group', 3),
(193, 'Fadel-Pouros', 8),
(194, 'Smitham and Sons', 4),
(195, 'Stehr, Willms and Blick', 1),
(196, 'Maggio, Johnson and Greenholt', 5),
(197, 'Gulgowski Inc', 10),
(198, 'Mertz-Schowalter', 7),
(199, 'Volkman, Satterfield and Bauch', 6),
(200, 'Labadie LLC', 11),
(201, 'Donnelly, Moore and Runte', 2),
(202, 'Leffler-Nitzsche', 9),
(203, 'Schmidt, Homenick and MacGyver', 4),
(204, 'Tremblay LLC', 8),
(205, 'Beahan-Braun', 10),
(206, 'Schmitt-Parisian', 1),
(207, 'Mraz-Ortiz', 6),
(208, 'Von-Bailey', 3),
(209, 'Cartwright-Huel', 11),
(210, 'Mraz-Mohr', 7),
(211, 'Cremin, Langosh and Wunsch', 6),
(212, 'Schultz, Howell and Friesen', 1),
(213, 'Keeling Inc', 6),
(214, 'Erdman Inc', 3),
(215, 'Kuhlman-McCullough', 5),
(216, 'Dickinson-Wolff', 9),
(217, 'Osinski, Mills and Boehm', 11),
(218, 'Leannon, Schuppe and Boyer', 11),
(219, 'Hansen LLC', 8),
(220, 'Mosciski-Barrows', 3),
(221, 'Robel, Brekke and Ankunding', 9),
(222, 'Gerhold-Hoppe', 3),
(223, 'Renner, Hermann and Schroeder', 6),
(224, 'Connelly, Collins and Corwin', 3),
(225, 'Luettgen, Upton and Wolf', 8),
(226, 'Kuhlman-Schmeler', 3),
(227, 'Hilll-McKenzie', 2),
(228, 'Wilkinson-Wisozk', 5),
(229, 'Kshlerin and Sons', 4),
(230, 'MacGyver-Mann', 2),
(231, 'Kulas-Wuckert', 1),
(232, 'Davis-Hodkiewicz', 10),
(233, 'Schiller-Parker', 6),
(234, 'Becker-Keeling', 11),
(235, 'Klein, Herzog and Lowe', 1),
(236, 'Sanford-Kassulke', 4),
(237, 'Schumm, Walter and Gibson', 1),
(238, 'Hudson and Sons', 1),
(239, 'O\'Connell-Schaefer', 1),
(240, 'Hamill and Sons', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ExperienceLevels`
--

CREATE TABLE `ExperienceLevels` (
  `ExperienceLevelID` int(11) NOT NULL,
  `ExperienceLevelName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ExperienceLevels`
--

INSERT INTO `ExperienceLevels` (`ExperienceLevelID`, `ExperienceLevelName`) VALUES
(1, 'Entry Level'),
(2, 'Mid-Level'),
(3, 'Senior Level'),
(4, 'Managerial'),
(5, 'Executive'),
(6, 'Internship'),
(7, 'Graduate Trainee'),
(8, 'Experienced Professional'),
(9, 'Director'),
(10, 'C-Level Executive'),
(11, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `Feedback`
--

CREATE TABLE `Feedback` (
  `FeedbackID` int(11) NOT NULL,
  `ApplicationID` int(11) NOT NULL,
  `TechnicalSkillsRating` decimal(11,1) NOT NULL,
  `CommunicationSkillsRating` decimal(11,1) NOT NULL,
  `TeamFitRating` decimal(11,1) NOT NULL,
  `ProblemSolvingRating` decimal(11,1) NOT NULL,
  `RecommendedJob` tinyint(1) NOT NULL DEFAULT 0,
  `Strengths` text DEFAULT NULL,
  `Improvements` text DEFAULT NULL
) ;

--
-- Dumping data for table `Feedback`
--

INSERT INTO `Feedback` (`FeedbackID`, `ApplicationID`, `TechnicalSkillsRating`, `CommunicationSkillsRating`, `TeamFitRating`, `ProblemSolvingRating`, `RecommendedJob`, `Strengths`, `Improvements`) VALUES
(1, 24, 1.9, 5.3, 5.7, 5.9, 1, 'Strong presentation skills', 'Work on your body language during the interview'),
(2, 35, 2.0, 3.8, 3.6, 8.7, 1, 'Outstanding leadership qualities', 'Work on your body language during the interview'),
(3, 10, 3.5, 4.4, 1.7, 1.4, 0, 'Ability to prioritize tasks effectively', 'Practice answering behavioral questions more confidently'),
(4, 3, 8.4, 5.9, 4.6, 7.0, 0, 'Outstanding leadership qualities', NULL),
(5, 20, 1.9, 7.1, 7.9, 5.3, 0, 'Positive attitude and strong work ethic', NULL),
(6, 6, 5.3, 9.5, 7.9, 7.8, 0, 'Strong analytical skills', 'Consider seeking additional training or certifications in relevant areas'),
(7, 27, 6.6, 3.8, 4.8, 9.7, 0, 'Strong presentation skills', NULL),
(8, 18, 5.0, 4.2, 6.5, 9.6, 0, 'Great attention to detail', NULL),
(9, 29, 6.2, 4.4, 1.1, 1.9, 1, 'Strong problem-solving abilities', 'Work on your body language during the interview'),
(10, 8, 4.3, 4.7, 4.2, 8.3, 0, 'Strong presentation skills', 'Work on your body language during the interview'),
(11, 9, 2.3, 3.1, 1.0, 6.0, 0, 'Strong presentation skills', NULL),
(12, 38, 8.0, 1.2, 10.0, 5.4, 0, 'Positive attitude and strong work ethic', 'Practice answering behavioral questions more confidently'),
(13, 37, 8.5, 4.9, 8.8, 6.4, 0, 'Good decision-making abilities', 'Consider seeking additional training or certifications in relevant areas'),
(14, 39, 7.8, 4.4, 1.4, 1.4, 0, 'Impressive technical knowledge', 'Work on your body language during the interview'),
(15, 36, 3.8, 8.1, 4.7, 7.4, 0, 'Impressive technical knowledge', 'Consider seeking additional training or certifications in relevant areas'),
(16, 33, 9.8, 6.1, 1.9, 6.5, 0, 'Excellent time management skills', 'Consider seeking additional training or certifications in relevant areas'),
(17, 18, 9.7, 5.6, 8.9, 1.4, 0, 'Exceptional teamwork skills', NULL),
(18, 18, 3.9, 3.9, 4.5, 1.1, 1, 'Effective project management skills', NULL),
(19, 17, 8.2, 5.8, 7.8, 3.7, 1, 'Adaptable and quick learner', 'Work on your body language during the interview'),
(20, 24, 8.2, 7.0, 2.3, 2.8, 1, 'Great interpersonal skills', 'Work on your body language during the interview'),
(21, 10, 8.4, 5.7, 9.2, 9.3, 1, 'Highly organized and efficient', 'Provide more specific examples in your responses'),
(22, 8, 3.7, 9.2, 8.5, 5.5, 1, 'Effective project management skills', 'Work on your body language during the interview'),
(23, 12, 7.1, 1.2, 5.4, 9.6, 1, 'Strong presentation skills', 'Work on your body language during the interview'),
(24, 14, 6.3, 7.2, 2.9, 2.2, 1, 'Excellent customer service skills', 'Provide more specific examples in your responses'),
(25, 12, 3.1, 6.3, 4.0, 3.6, 0, 'Ability to work independently and collaboratively', 'Practice answering behavioral questions more confidently'),
(26, 25, 5.0, 5.4, 1.3, 8.7, 0, 'Great interpersonal skills', 'Provide more specific examples in your responses'),
(27, 9, 6.6, 1.8, 2.5, 3.1, 0, 'Outstanding leadership qualities', 'Provide more specific examples in your responses'),
(28, 30, 5.8, 9.5, 7.2, 5.9, 0, 'Effective project management skills', 'Consider seeking additional training or certifications in relevant areas'),
(29, 35, 7.1, 1.0, 4.1, 4.5, 1, NULL, NULL),
(30, 6, 6.9, 9.0, 4.3, 3.2, 1, 'Adaptable and quick learner', 'Provide more specific examples in your responses'),
(31, 17, 7.1, 5.3, 7.0, 9.4, 1, 'Innovative and creative thinking', 'Work on your body language during the interview'),
(32, 33, 1.8, 4.1, 1.8, 4.2, 0, 'Exceptional teamwork skills', 'Improve your communication skills'),
(33, 21, 4.2, 7.0, 4.3, 6.3, 0, 'Exceptional teamwork skills', 'Improve your communication skills'),
(34, 27, 3.2, 5.4, 4.7, 5.7, 1, 'Great interpersonal skills', 'Practice answering behavioral questions more confidently'),
(35, 27, 6.4, 5.7, 2.0, 9.1, 1, 'Outstanding leadership qualities', 'Consider seeking additional training or certifications in relevant areas'),
(36, 5, 4.6, 9.7, 5.6, 6.2, 1, 'Strong analytical skills', NULL),
(37, 28, 9.1, 7.1, 5.2, 2.3, 1, 'Positive attitude and strong work ethic', 'Improve your communication skills'),
(38, 36, 6.9, 2.6, 8.1, 4.3, 1, 'Impressive technical knowledge', NULL),
(39, 34, 7.7, 4.8, 10.0, 9.0, 0, 'Good decision-making abilities', 'Practice answering behavioral questions more confidently'),
(40, 25, 9.9, 6.7, 1.7, 4.6, 1, 'Great interpersonal skills', 'Work on your body language during the interview'),
(41, 27, 1.9, 4.5, 7.6, 7.9, 0, 'Effective project management skills', 'Improve your communication skills'),
(42, 3, 3.9, 7.6, 5.9, 2.6, 1, 'Good decision-making abilities', NULL),
(43, 6, 8.6, 2.3, 4.2, 3.7, 1, 'Good decision-making abilities', 'Research the company more thoroughly before the interview'),
(44, 12, 5.2, 8.3, 1.7, 1.3, 0, NULL, 'Consider seeking additional training or certifications in relevant areas'),
(45, 22, 2.9, 2.9, 9.3, 2.3, 0, NULL, 'Provide more specific examples in your responses'),
(46, 6, 2.9, 4.3, 1.8, 10.0, 1, 'Excellent time management skills', 'Provide more specific examples in your responses'),
(47, 28, 8.6, 8.9, 10.0, 4.9, 1, 'Ability to work well under pressure', 'Provide more specific examples in your responses'),
(48, 1, 1.6, 8.7, 2.8, 3.4, 0, 'Good decision-making abilities', NULL),
(49, 14, 7.0, 3.7, 2.7, 6.8, 1, 'Outstanding leadership qualities', NULL),
(50, 1, 6.6, 3.1, 2.1, 1.8, 1, 'Excellent time management skills', 'Practice answering behavioral questions more confidently');

-- --------------------------------------------------------

--
-- Table structure for table `Industries`
--

CREATE TABLE `Industries` (
  `IndustryID` int(11) NOT NULL,
  `IndustryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Industries`
--

INSERT INTO `Industries` (`IndustryID`, `IndustryName`) VALUES
(1, 'Information Technology'),
(2, 'Healthcare'),
(3, 'Finance and Banking'),
(4, 'Manufacturing'),
(5, 'Education'),
(6, 'Retail'),
(7, 'Hospitality and Tourism'),
(8, 'Telecommunications'),
(9, 'Media and Entertainment'),
(10, 'Energy and Utilities'),
(11, 'Government Services');

-- --------------------------------------------------------

--
-- Table structure for table `Interviews`
--

CREATE TABLE `Interviews` (
  `InterviewID` int(11) NOT NULL,
  `ApplicationID` int(11) NOT NULL,
  `InterviewDate` date NOT NULL,
  `TypeID` int(11) NOT NULL,
  `FollowUpRequired` tinyint(1) DEFAULT 0,
  `FollowUpDate` date DEFAULT NULL
) ;

--
-- Dumping data for table `Interviews`
--

INSERT INTO `Interviews` (`InterviewID`, `ApplicationID`, `InterviewDate`, `TypeID`, `FollowUpRequired`, `FollowUpDate`) VALUES
(1, 23, '2023-10-14', 3, 0, NULL),
(2, 27, '2024-01-05', 3, 0, NULL),
(3, 35, '2023-04-23', 4, 1, '2023-05-01'),
(4, 12, '2023-09-25', 4, 1, '2023-10-03'),
(5, 37, '2023-12-18', 4, 1, '2024-01-15'),
(6, 25, '2023-04-07', 3, 1, '2023-04-24'),
(7, 9, '2023-09-14', 6, 1, '2023-09-24'),
(8, 40, '2024-02-07', 1, 1, '2024-02-12'),
(9, 4, '2023-05-12', 6, 0, NULL),
(10, 8, '2023-04-20', 2, 1, '2023-05-02'),
(11, 3, '2023-10-02', 3, 0, NULL),
(12, 32, '2023-04-22', 2, 1, '2023-04-30'),
(13, 10, '2023-04-02', 2, 0, NULL),
(14, 8, '2024-02-03', 5, 0, NULL),
(15, 30, '2023-02-26', 2, 0, NULL),
(16, 37, '2024-02-05', 3, 0, NULL),
(17, 38, '2023-04-04', 4, 1, '2023-04-12'),
(18, 30, '2023-12-04', 2, 0, NULL),
(19, 3, '2023-10-11', 3, 0, NULL),
(20, 20, '2023-10-23', 6, 1, '2023-11-09'),
(21, 17, '2023-11-30', 6, 1, '2023-12-10'),
(22, 22, '2024-01-18', 4, 1, '2024-01-25'),
(23, 8, '2023-07-29', 1, 1, '2023-08-05'),
(24, 14, '2023-05-07', 5, 1, '2023-05-19'),
(25, 15, '2023-09-27', 3, 0, NULL),
(26, 10, '2023-02-28', 5, 0, NULL),
(27, 15, '2023-09-27', 5, 0, NULL),
(28, 8, '2023-06-05', 3, 0, NULL),
(29, 6, '2024-01-07', 3, 1, '2024-01-22'),
(30, 14, '2023-05-06', 2, 1, '2023-05-15'),
(106, 17, '2023-10-19', 2, 0, NULL),
(107, 99, '2023-09-05', 3, 1, '2024-07-14'),
(109, 19, '2023-07-30', 1, 0, NULL),
(110, 33, '2023-10-27', 1, 0, NULL),
(111, 111, '2023-12-03', 5, 1, '2024-11-21'),
(112, 110, '2024-02-13', 2, 0, NULL),
(113, 18, '2023-11-25', 3, 0, NULL),
(131, 30, '2023-12-04', 4, 1, '2024-07-14'),
(132, 93, '2023-09-02', 1, 1, '2024-09-27'),
(133, 2, '2023-10-01', 3, 1, '2024-04-01'),
(134, 107, '2024-01-13', 2, 0, NULL),
(135, 97, '2023-10-02', 2, 0, NULL),
(136, 20, '2023-12-16', 4, 0, NULL),
(137, 106, '2023-07-16', 2, 1, '2024-08-07'),
(138, 100, '2023-09-17', 3, 0, NULL),
(139, 98, '2023-12-15', 6, 0, NULL),
(140, 6, '2023-12-29', 3, 1, '2024-06-02'),
(141, 105, '2024-02-29', 2, 1, '2024-10-14'),
(142, 105, '2023-12-21', 2, 0, NULL),
(143, 8, '2023-12-22', 2, 0, NULL),
(144, 24, '2023-08-08', 1, 1, '2024-03-24'),
(146, 92, '2023-08-31', 5, 1, '2024-07-06'),
(147, 103, '2023-11-09', 6, 0, NULL),
(148, 37, '2023-12-23', 1, 1, '2024-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `InterviewTypes`
--

CREATE TABLE `InterviewTypes` (
  `TypeID` int(11) NOT NULL,
  `TypeName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `InterviewTypes`
--

INSERT INTO `InterviewTypes` (`TypeID`, `TypeName`) VALUES
(1, 'In-Person'),
(2, 'Phone'),
(3, 'Online (Zoom, MS Teams etc.)'),
(4, 'Personality Test'),
(5, 'Group'),
(6, 'Screening');

-- --------------------------------------------------------

--
-- Table structure for table `JobListings`
--

CREATE TABLE `JobListings` (
  `JobID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `EmployerID` int(11) NOT NULL,
  `Description` text NOT NULL,
  `Requirements` varchar(50) NOT NULL,
  `EducationLevelID` int(11) NOT NULL,
  `Salary` decimal(8,2) NOT NULL DEFAULT 0.00,
  `LocationID` int(11) NOT NULL,
  `DatePosted` date NOT NULL,
  `Deadline` date DEFAULT NULL
) ;

--
-- Dumping data for table `JobListings`
--

INSERT INTO `JobListings` (`JobID`, `Title`, `EmployerID`, `Description`, `Requirements`, `EducationLevelID`, `Salary`, `LocationID`, `DatePosted`, `Deadline`) VALUES
(31, 'Accounting Assistant IV', 208, 'Managing social media accounts and engaging with followers', 'Experience working with cross-functional teams', 6, 19000.00, 10, '2023-02-24', '2024-08-29'),
(32, 'Occupational Therapist', 193, 'Implementing safety protocols and ensuring compliance with regulations', 'Strong communication skills', 4, 83000.00, 6, '2023-01-21', '2024-12-10'),
(33, 'Account Representative I', 208, 'Creating marketing campaigns and analyzing results', 'Experience working in a fast-paced environment', 1, 133000.00, 7, '2023-09-02', '2024-11-08'),
(34, 'Senior Developer', 203, 'Managing customer inquiries and complaints', '1-2 years of experience in a related field', 4, 41000.00, 3, '2023-01-24', '2024-06-20'),
(35, 'Biostatistician II', 194, 'Creating marketing campaigns and analyzing results', 'Strong communication skills', 1, 13900.00, 8, '2023-02-11', NULL),
(36, 'Clinical Specialist', 209, 'Developing strategic partnerships with other businesses', 'Experience with data analysis and reporting', 8, 13000.00, 14, '2023-11-10', '2024-03-22'),
(37, 'Programmer II', 183, 'Organizing community events and volunteer opportunities', 'Bachelor\'s degree in a relevant discipline', 8, 61000.00, 3, '2023-08-12', '2024-08-08'),
(38, 'Associate Professor', 209, 'Coordinating schedules and meetings for team members', 'Bachelor\'s degree in a relevant discipline', 5, 10500.00, 11, '2023-03-30', '2024-07-27'),
(39, 'Legal Assistant', 202, 'Conducting performance evaluations and providing feedback to employees', 'Certification in a specific technology or tool', 5, 86000.00, 15, '2023-03-28', NULL),
(40, 'Quality Engineer', 205, 'Organizing community events and volunteer opportunities', 'Certification in a specific technology or tool', 3, 64000.00, 4, '2023-07-12', '2024-07-10'),
(41, 'Environmental Specialist', 199, 'Creating marketing campaigns and analyzing results', 'Experience working in a fast-paced environment', 2, 22000.00, 17, '2023-09-14', NULL),
(42, 'Structural Analysis Engineer', 188, 'Conducting performance evaluations and providing feedback to employees', 'Certification in a specific technology or tool', 7, 133000.00, 12, '2023-06-04', '2024-07-27'),
(43, 'Information Systems Manager', 210, 'Managing customer inquiries and complaints', 'Experience with data analysis and reporting', 5, 94000.00, 5, '2023-01-26', '2024-09-11'),
(44, 'Physical Therapy Assistant', 203, 'Managing customer inquiries and complaints', 'Certification in a specific technology or tool', 9, 113000.00, 10, '2023-05-29', '2024-02-03'),
(45, 'Occupational Therapist', 198, 'Training new employees on company policies and procedures', 'Bachelor\'s degree in a relevant discipline', 6, 61000.00, 6, '2023-03-08', '2024-08-24'),
(46, 'Cost Accountant', 181, 'Researching market trends and competitor strategies', '1-2 years of experience in a related field', 7, 100000.00, 1, '2024-01-05', NULL),
(47, 'Design Engineer', 192, 'Managing social media accounts and engaging with followers', 'Experience with data analysis and reporting', 10, 94600.00, 14, '2023-02-11', '2024-05-05'),
(48, 'Administrative Assistant III', 189, 'Maintaining inventory levels and ordering supplies as needed', 'Experience leading a team', 8, 125000.00, 17, '2024-01-05', '2024-09-02'),
(49, 'VP Marketing', 195, 'Managing customer inquiries and complaints', 'Experience with data analysis and reporting', 6, 23900.00, 8, '2023-06-02', '2024-09-15'),
(50, 'Accounting Assistant II', 198, 'Training new employees on company policies and procedures', 'Experience with data analysis and reporting', 3, 58000.00, 12, '2023-08-25', '2024-10-05'),
(51, 'Quality Engineer', 206, 'Researching market trends and competitor strategies', 'Experience with project management software', 9, 32000.00, 10, '2023-01-18', '2024-03-05'),
(52, 'Professor', 208, 'Developing strategic partnerships with other businesses', 'Strong communication skills', 6, 119000.00, 9, '2023-07-01', '2024-11-25'),
(53, 'Environmental Tech', 200, 'Designing and implementing employee wellness programs', 'Strong communication skills', 7, 72000.00, 18, '2023-07-01', NULL),
(54, 'Editor', 190, 'Organizing community events and volunteer opportunities', 'Experience working with cross-functional teams', 7, 115000.00, 5, '2023-03-24', '2024-11-26'),
(55, 'Compensation Analyst', 206, 'Developing strategic partnerships with other businesses', 'Experience working in a fast-paced environment', 4, 31900.00, 18, '2023-06-27', '2024-05-19'),
(56, 'Executive Secretary', 199, 'Creating marketing campaigns and analyzing results', '1-2 years of experience in a related field', 6, 56000.00, 18, '2023-12-26', '2024-04-16'),
(57, 'Compensation Analyst', 184, 'Developing software applications and troubleshooting issues', 'Experience working with cross-functional teams', 10, 95000.00, 17, '2023-08-28', '2024-03-17'),
(58, 'Administrative Assistant III', 204, 'Designing and implementing employee wellness programs', 'Bachelor\'s degree in a relevant discipline', 4, 46000.00, 1, '2023-01-20', '2024-03-12'),
(59, 'Assistant Professor', 195, 'Implementing safety protocols and ensuring compliance with regulations', 'Strong communication skills', 8, 110000.00, 18, '2023-04-18', '2024-10-11'),
(60, 'Senior Quality Engineer', 189, 'Maintaining inventory levels and ordering supplies as needed', 'Bachelor\'s degree in a relevant discipline', 9, 44000.00, 20, '2023-12-08', NULL),
(61, 'Software Consultant', 237, 'Attending industry conferences and events', 'Ability to work independently', 3, 131500.00, 45, '2023-04-22', '2024-09-30'),
(62, 'Dental Hygienist', 224, 'Assisting with budget planning', 'Ability to work under pressure', 3, 67000.00, 4, '2023-04-19', '2024-06-23'),
(63, 'Mechanical Systems Engineer', 197, 'Maintaining cleanliness and organization of workspace', 'Bachelor\'s degree in related field', 6, 12000.00, 52, '2023-11-19', '2024-08-18'),
(64, 'Business Systems Development Analyst', 206, 'Providing administrative support', 'Experience with customer service', 10, 102000.00, 32, '2023-11-01', '2024-08-30'),
(65, 'Programmer Analyst I', 221, 'Analyzing data and preparing reports', 'Ability to multitask', 5, 22000.00, 2, '2023-06-11', '2024-09-19'),
(66, 'Pharmacist', 221, 'Updating social media accounts', 'Bachelor\'s degree in related field', 8, 39000.00, 37, '2023-10-23', '2024-06-30'),
(67, 'Graphic Designer', 231, 'Assisting customers with product inquiries', 'Ability to meet deadlines', 7, 14900.00, 60, '2023-10-20', '2024-11-21'),
(68, 'Clinical Specialist', 234, 'Managing inventory levels', 'Strong communication skills', 2, 27000.00, 45, '2023-06-18', '2024-07-26'),
(69, 'Administrative Officer', 201, 'Managing inventory levels', 'Team player', 9, 20000.00, 58, '2023-11-10', '2024-03-06'),
(70, 'Environmental Tech', 191, 'Attending industry conferences and events', '2+ years of experience in similar role', 4, 8400.00, 36, '2023-03-28', '2024-11-09'),
(71, 'Nurse Practicioner', 213, 'Analyzing data and preparing reports', 'Experience with customer service', 3, 57800.00, 54, '2023-08-19', '2024-05-12'),
(72, 'Marketing Manager', 210, 'Troubleshooting technical issues', 'Knowledge of marketing principles', 7, 29000.00, 29, '2023-02-06', '2024-04-07'),
(73, 'Health Coach IV', 238, 'Analyzing data and preparing reports', 'Experience with data analysis', 10, 78000.00, 49, '2023-09-11', '2024-03-24'),
(74, 'Software Engineer I', 209, 'Collaborating with cross-functional teams', 'Ability to work under pressure', 9, 7800.00, 50, '2023-09-29', '2024-01-11'),
(75, 'Legal Assistant', 217, 'Organizing events and meetings', '2+ years of experience in similar role', 8, 131000.00, 46, '2023-07-31', '2024-02-10'),
(76, 'Marketing Assistant', 226, 'Collaborating with cross-functional teams', 'Bachelor\'s degree in related field', 3, 99000.00, 8, '2023-09-07', '2024-02-22'),
(77, 'Financial Analyst', 187, 'Implementing new processes and procedures', 'Ability to meet deadlines', 4, 22000.00, 34, '2023-02-16', '2024-06-04'),
(78, 'Assistant Professor', 186, 'Training new employees', 'Excellent organizational skills', 1, 101000.00, 11, '2023-02-22', '2024-07-28'),
(79, 'Operator', 181, 'Implementing new processes and procedures', 'Ability to work under pressure', 4, 55000.00, 27, '2023-04-12', '2024-04-29'),
(80, 'Occupational Therapist', 229, 'Updating social media accounts', 'Strong writing skills', 7, 87000.00, 24, '2023-02-16', '2024-04-07'),
(81, 'Analog Circuit Design manager', 227, 'Managing inventory levels', 'Strong communication skills', 5, 19000.00, 30, '2023-06-08', '2024-04-02'),
(82, 'Sales Associate', 219, 'Coordinating travel arrangements', 'Strong communication skills', 7, 83000.00, 23, '2023-05-03', '2024-06-18'),
(83, 'Marketing Assistant', 190, 'Assisting with budget planning', 'Experience with data analysis', 1, 109000.00, 13, '2023-05-28', '2024-08-20'),
(84, 'Human Resources Assistant II', 225, 'Troubleshooting technical issues', 'Team player', 3, 96000.00, 2, '2023-10-29', '2024-09-02'),
(85, 'Human Resources Manager', 225, 'Implementing new processes and procedures', 'Team player', 7, 128000.00, 13, '2023-09-17', '2024-10-22'),
(86, 'Executive Secretary', 181, 'Coordinating schedules for team members', 'Proficient in Microsoft Office', 8, 141000.00, 31, '2023-09-29', '2024-08-05'),
(87, 'Data Coordinator', 223, 'Coordinating travel arrangements', 'Knowledge of marketing principles', 4, 81000.00, 22, '2023-05-14', '2024-10-03'),
(88, 'Structural Analysis Engineer', 193, 'Training new employees', 'Excellent organizational skills', 8, 43000.00, 41, '2023-10-27', '2024-05-21'),
(89, 'Financial Advisor', 228, 'Organizing events and meetings', '2+ years of experience in similar role', 3, 42000.00, 7, '2023-04-03', '2024-02-18'),
(90, 'Electrical Engineer', 200, 'Managing inventory levels', 'Ability to work independently', 6, 69000.00, 13, '2023-03-03', '2024-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `JobListingType`
--

CREATE TABLE `JobListingType` (
  `JobID` int(11) NOT NULL,
  `TypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JobListingType`
--

INSERT INTO `JobListingType` (`JobID`, `TypeID`) VALUES
(31, 1),
(32, 7),
(33, 11),
(34, 2),
(35, 10),
(36, 7),
(37, 1),
(38, 8),
(39, 11),
(40, 2),
(41, 1),
(42, 2),
(43, 8),
(44, 3),
(45, 10),
(46, 6),
(47, 1),
(48, 8),
(49, 6),
(50, 4),
(51, 10),
(52, 8),
(53, 5),
(54, 2),
(55, 6),
(56, 7),
(57, 9),
(58, 4),
(59, 3),
(60, 11),
(61, 6),
(62, 9),
(63, 1),
(64, 11),
(65, 10),
(66, 7),
(67, 2),
(68, 2),
(69, 11),
(70, 1),
(71, 11),
(72, 1),
(73, 5),
(74, 2),
(75, 1),
(76, 8),
(77, 6),
(78, 1),
(79, 2),
(80, 5),
(81, 10),
(82, 4),
(83, 4),
(84, 1),
(85, 4),
(86, 8),
(87, 1),
(88, 6),
(89, 4),
(90, 3);

-- --------------------------------------------------------

--
-- Table structure for table `JobLocations`
--

CREATE TABLE `JobLocations` (
  `LocationID` int(11) NOT NULL,
  `StreetName` varchar(30) NOT NULL,
  `City` varchar(40) NOT NULL,
  `County` varchar(40) DEFAULT NULL,
  `Postcode` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JobLocations`
--

INSERT INTO `JobLocations` (`LocationID`, `StreetName`, `City`, `County`, `Postcode`) VALUES
(1, '12 Great Victora Street', 'Belfast', 'Antrim', 'BT1 1AA'),
(2, '45 Elm Avenue', 'Lisburn', 'Down', 'BT27 4AB'),
(3, '789 Oak Road', 'Derry', 'Londonderry', 'BT48 6XY'),
(4, '10 Maple Lane', 'Newry', 'Armagh', 'BT35 7CD'),
(5, '555 Pine Street', 'Armagh', 'Armagh', 'BT61 7EF'),
(6, '82 Knockbreda Park', 'Belfast', 'Antrim', 'BT6 0HG'),
(7, '3 Wandsworth Rd', 'Belfast', 'Antrim', 'BT4 3LS'),
(8, '10 Cavanakeeran Rd', 'Dungannon', 'Tyrone', 'BT70 2RD'),
(9, '68 Rathconvil Rd', 'Armagh', 'Armagh', 'BT60 2DJ'),
(10, '3 St Johns Place', 'Larne', 'Antrim', 'BT40 1TB'),
(11, '200 Newtownsaville Rd', 'Omagh', 'Tyrone', 'BT78 2RN'),
(12, '22 Drumhirk Avenue', 'Newtownards', 'Down', 'BT23 7QB'),
(13, '34 Carnew Road', 'Banbridge', 'Down', 'BT32 5PS'),
(14, '5 Abercorn Avenue', 'Portrush', 'Antrim', 'BT56 8HW'),
(15, '20 Whitesides Hill', 'Ballyworkan', 'Armagh', 'BT62 3RJ'),
(16, '134 Duncrun Rd', 'Limavady', 'Londonderry', 'BT49 0JQ'),
(17, '4 Glenmaquill Rd', 'Magherafelt', 'Londonderry', 'BT45 5EW'),
(18, '56 Railway Rd', 'Coleraine', 'Londonderry', 'BT52 1PF'),
(19, '45 Carrickmannon Rd', 'Newtownards', 'Down', 'BT23 6JH'),
(20, '11 Bachelors Walk', 'Lisburn', 'Down', 'BT28 1XJ'),
(21, '48 Village Green Hill', 'Holywood', 'Down', 'BT07 8AV'),
(22, '83 Warbler Way', 'Banbridge', 'Derry', 'BT79 76OD'),
(23, '76 Del Mar Hill', 'Ballymoney', 'Tyrone', 'BT92 7OU'),
(24, '10 Mcbride Crossing', 'Downpatrick', 'Armagh', 'BT6 9EP'),
(25, '8 Tennessee Terrace', 'Carrickfergus', 'Tyrone', 'BT42 84IK'),
(26, '79 Summit Road', 'Ballymoney', 'Armagh', 'BT8 7PR'),
(27, '822 Butternut Avenue', 'Newtownabbey', 'Tyrone', 'BT08 1EG'),
(28, '6 Welch Way', 'Carrickfergus', 'Armagh', 'BT4 29BD'),
(29, '4 Dwight Point', 'Banbridge', 'Fermanagh', 'BT3 9NP'),
(30, '16 Myrtle Court', 'Magherafelt', 'Down', 'BT0 2TP'),
(31, '37 Loomis Avenue', 'Bangor', 'Armagh', 'BT55 6ND'),
(32, '947 Evergreen Street', 'Banbridge', 'Armagh', 'BT25 43CP'),
(33, '32 Pleasure Crossing', 'Downpatrick', 'Fermanagh', 'BT4 3HC'),
(34, '153 Eggendart Trail', 'Holywood', 'Armagh', 'BT0 22JK'),
(35, '90 Bonner Street', 'Lisburn', 'Armagh', 'BT01 60OS'),
(36, '10 Sheridan Terrace', 'Craigavon', 'Tyrone', 'BT51 21HS'),
(37, '57 Myrtle Junction', 'Enniskillen', 'Tyrone', 'BT8 1PN'),
(38, '21 Mill Hill', 'Bangor', 'Armagh', 'BT7 4NE'),
(39, '64 Algoma Way', 'Craigavon', 'Antrim', 'BT0 43GO'),
(40, '2 Laurel Drive', 'Newry', 'Derry', 'BT5 5HR'),
(41, '47 Maple Terrace', 'Enniskillen', 'Fermanagh', 'BT33 4XA'),
(42, '2 Graedel Park', 'Enniskillen', 'Down', 'BT4 84CW'),
(43, '888 Glendale Junction', 'Ballymoney', 'Antrim', 'BT92 89RR'),
(44, '71 Galgorm Rd', 'Ballymena', 'Antrim', 'BT81 2WJ'),
(45, '3 Hoard Drive', 'Coleraine', 'Tyrone', 'BT4 0WD'),
(46, '73 Onsgard Court', 'Ballymoney', 'Antrim', 'BT42 6NG'),
(47, '46 Nancy Hill', 'Larne', 'Antrim', 'BT37 23RF'),
(48, '35 Mosinee Hill', 'Lisburn', 'Armagh', 'BT00 09EX'),
(49, '4 Morningstar Hill', 'Lisburn', 'Armagh', 'BT2 8EM'),
(50, '13 Macpherson Court', 'Carrickfergus', 'Tyrone', 'BT37 42GX'),
(51, '81 Mitchell Junction', 'Banbridge', 'Derry', 'BT5 3XJ'),
(52, '3 Ian Drive', 'Newtownards', 'Down', 'BT1 53BM'),
(53, '56 Dorton Drive', 'Newtownards', 'Tyrone', 'BT26 6HY'),
(54, '58 Luster Terrace', 'Newtownards', 'Down', 'BT91 08FI'),
(55, '28 Randy Pass', 'Comber', 'Down', 'BT8 07BO'),
(56, '35 Lough Rd', 'Holywood', 'Antrim', 'BT61 4MM'),
(57, '70 Myrtle Court', 'Comber', 'Armagh', 'BT83 91TW'),
(58, '53 Bridewell Drive', 'Portstewart', 'Fermanagh', 'BT7 54DX'),
(59, '187 Moira Rd', 'Downpatrick', 'Antrim', 'BT50 85SO'),
(60, '22 Downshire Park', 'Newry', 'Armagh', 'BT6 0FU');

-- --------------------------------------------------------

--
-- Stand-in structure for view `JobSeekerApplicationStatus`
-- (See below for the actual view)
--
CREATE TABLE `JobSeekerApplicationStatus` (
`SeekerID` int(11)
,`Name` varchar(101)
,`ApplicationID` int(11)
,`JobTitle` varchar(50)
,`Employer` varchar(50)
,`CurrentStatus` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `JobSeekers`
--

CREATE TABLE `JobSeekers` (
  `SeekerID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `DoB` date NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNo` varchar(20) NOT NULL,
  `StreetName` varchar(30) NOT NULL,
  `City` varchar(40) NOT NULL,
  `County` varchar(40) DEFAULT NULL,
  `Postcode` varchar(40) NOT NULL,
  `EducationLevelID` int(11) NOT NULL,
  `ExperienceLevelID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JobSeekers`
--

INSERT INTO `JobSeekers` (`SeekerID`, `FirstName`, `MiddleName`, `LastName`, `DoB`, `Email`, `PhoneNo`, `StreetName`, `City`, `County`, `Postcode`, `EducationLevelID`, `ExperienceLevelID`) VALUES
(1, 'Leia', 'David', 'Angelo', '1988-01-11', 'langelo0@yellowbook.com', '028 9012 3456', '12 Rosemary Street', 'Belfast', 'Antrim', 'BT1 1AA', 2, 6),
(2, 'Carrie', NULL, 'Gronow', '1966-03-25', 'cgronow1@marriott.com', '028 7198 7654', '42 Main Street', 'Londonderry', 'Derry', 'BT48 8DD', 2, 3),
(3, 'Sly', 'James', 'Halworth', '1980-07-31', 'shalworth2@yellowpages.com', '028 9234 5678', '8 High Street', 'Newtownabbey', 'Antrim', 'BT36 6EE', 1, 7),
(4, 'Declan', NULL, 'Freeman', '2003-10-04', 'dfreeman3@xinhuanet.com', '028 7123 4567', '15 Queen\'s Road', 'Belfast', 'Antrim', 'BT3 9ZZ', 6, 10),
(5, 'Jordan', 'Margaret', 'Matterson', '1965-05-24', 'jmatterson4@wikimedia.org', '028 9087 6543', '23 Donegall Square', 'Belfast', 'Antrim', 'BT1 5XY', 5, 3),
(6, 'Andre', 'Michael', 'Watkins', '1978-07-09', 'awatkins@nifty.com', '028 9013 5790', '5 Castle Street', 'Belfast', 'Antrim', 'BT4 1ZZ', 6, 11),
(7, 'Regan', 'Margaret', 'Nash', '2003-06-23', 'rnash6@slate.com', '028 9456 7890', '10 Abbey Street', 'Newtownabbey', 'Antrim', 'BT37 9CC', 7, 7),
(8, 'Alexandra', NULL, 'Hill', '1952-09-20', 'alexandraHill78@yahoo.com', '028 9123 4567', '7 Park Lane', 'Holywood', 'Down', 'BT18 9WW', 4, 6),
(9, 'Cinderella', 'Catherine', 'Buckham', '1993-03-19', 'cbuckham8@ted.com', '028 9234 5678', '20 Main Street', 'Newtownards', 'Down', 'BT23 7YY', 8, 10),
(10, 'Eli', 'John', 'Boorer', '1993-01-16', 'eboorer9@auda.org.au', '028 9012 3456', '4 Queen\'s Road', 'Belfast', 'Antrim', 'BT1 9ZZ', 9, 5),
(11, 'Rachel', 'Catherine', 'Attow', '1990-08-10', 'rattowa@sphinn.com', '028 9234 5678', '1 High Street', 'Bangor', 'Down', 'BT20 5ZZ', 5, 1),
(12, 'Charles', 'John', 'Plowman', '1959-05-09', 'cplowmanb@mtv.com', '028 9087 6543', '36 Fountain Street', 'Belfast', 'Antrim', 'BT1 5DD', 4, 4),
(13, 'Zoe', NULL, 'Burke', '1994-09-18', 'zburke384@simplemachines.org', '028 9123 4567', '2 Castle Lane', 'Holywood', 'Down', 'BT18 9BB', 9, 3),
(14, 'Will', NULL, 'Young', '1990-09-14', 'wyoung@typepad.com', '028 9456 7890', '9 Main Street', 'Newtownabbey', 'Antrim', 'BT37 9EE', 3, 6),
(15, 'Reid', 'Elizabeth', 'Courcey', '1965-08-25', 'rcourceye@examiner.com', '028 9013 5790', '14 Victoria Square', 'Belfast', 'Fermanagh', 'BT1 4XY', 8, 5),
(16, 'Peter', 'Michael', 'Koene', '1975-10-31', 'pkoenef@ehow.com', '028 9123 4567', '3 High Street', 'Holywood', 'Down', 'BT18 9EE', 1, 5),
(17, 'Lorianne', NULL, 'Stevens', '1975-07-08', 'lstevens@examiner.com', '028 9234 5678', '50 Main Street', 'Newtownards', 'Down', 'BT23 7YY', 1, 2),
(18, 'Trixie', NULL, 'Purcell', '1977-02-10', 'tpurcellh@squarespace.com', '028 9123 4567', '25 Fountain Street', 'Holywood', 'Down', 'BT18 9DD', 10, 3),
(19, 'Caprice', NULL, 'Lyons', '1954-01-24', 'clyons@ox.ac.uk', '028 9234 5678', '18 Ferry Street', 'Newtownabbey', 'Derry', 'BT37 9RR', 8, 10),
(20, 'Zara', 'Catherine', 'Doohey', '1991-03-06', 'zdooheyj@tumblr.com', '028 9012 3456', '6 Queen\'s Road', 'Belfast', 'Antrim', 'BT1 9ZZ', 5, 8),
(21, 'Sue', NULL, 'Fraiser', '1987-04-09', 'sfraiser@live.co.uk', '028 9123 4567', '15 Main Street', 'Holywood', 'Down', 'BT18 9EE', 10, 2),
(22, 'Terry', NULL, 'Potter', '1980-05-13', 'tpotterl@msn.com', '028 9456 7890', '3 Castle Lane', 'Newtownabbey', 'Antrim', 'BT37 9BB', 5, 11),
(23, 'Cherey', NULL, 'Lorner', '1976-03-13', 'clornerm@feedburner.com', '028 9234 5678', '7 Fountain Street', 'Newtownards', 'Down', 'BT23 7DD', 3, 4),
(24, 'Amara', 'Catherine', 'Mason', '1977-11-29', 'amason@behance.net', '028 9123 4567', '28 High Street', 'Holywood', 'Down', 'BT18 9EE', 4, 4),
(25, 'Joseito', NULL, 'Gallandre', '1953-01-16', 'jgallandreo@bluehost.com', '028 9087 6543', '2 Queen\'s Road', 'Belfast', 'Derry', 'BT1 9ZZ', 1, 5),
(26, 'Ashby', NULL, 'Goodwin', '2004-02-22', 'agoodwin@unicef.org', '028 9123 4567', '5 Castle Street', 'Holywood', 'Down', 'BT18 9ZZ', 1, 6),
(27, 'Orly', 'James', 'Reiner', '1950-02-25', 'oreinerq@mapquest.com', '028 9234 5678', '11 Fountain Street', 'Newtownards', 'Down', 'BT23 7DD', 9, 3),
(28, 'Edithe', 'Thomas', 'Roscamps', '1991-03-30', 'eroscampsr@behance.net', '028 9012 3456', '9 Donegall Square', 'Belfast', 'Fermanagh', 'BT1 5XY', 10, 5),
(29, 'Lara', NULL, 'Cooper', '1997-02-02', 'laracooper@outlook.com', '028 9123 4567', '1 High Street', 'Holywood', 'Down', 'BT18 9EE', 7, 3),
(30, 'Conroy', NULL, 'Cuttin', '1967-10-07', 'ccuttint@imageshack.com', '028 9234 5678', '16 Main Street', 'Newtownabbey', 'Antrim', 'BT37 9EE', 7, 10),
(31, 'Archie', NULL, 'Kent', '1975-01-25', 'ArchieKent@rhyta.com', '079 6406 9563', '70 Derry Rd', 'Omagh', NULL, 'BT78 5ED', 2, 7),
(40, 'Richie', NULL, 'Hanaby', '1994-03-23', 'rhanaby0@msn.com', '028 2001  2889', '277 Surrey Drive', 'Banbridge', NULL, 'BT65 91KI', 2, 7),
(41, 'Zoe', 'Elizabeth', 'Barton', '1986-10-02', 'zbarton@amazonaws.com', '028 9934 3336', '766 Gerald Avenue', 'Downpatrick', 'Derry', 'BT7 4PV', 1, 4),
(42, 'Isabelle', 'Tee', 'Parkinson', '1969-09-22', 'isparkinson2@desdev.co.uk', '027 7595 8784', '218 Lawn Point', 'Antrim', 'Fermanagh', 'BT85 7CO', 4, 1),
(43, 'Audrey', 'Marie', 'Shemmans', '1959-07-11', 'ashemmans3@live.com', '028 1584 8833', '6 Macpherson Rd', 'Derry', 'Derry', 'BT8 26HF', 2, 2),
(44, 'Ellen', 'Grace', 'Cartwright', '2000-09-13', 'ecartwright@imgur.com', '029 7200 5276', '595 High St', 'Antrim', 'Antrim', 'BT35 7UG', 2, 1),
(45, 'Vergil', 'Louise', 'Drennan', '1997-09-05', 'vdrennan5@engadget.com', '029 8808 4766', '69 Warbler Hill', 'Coleraine', NULL, 'BT98 95UU', 3, 8),
(46, 'Lilly', 'Michael', 'Marsden', '1975-03-13', 'lmarsden@wordpress.org', '026 1214 7596', '77 Hudson Street', 'Banbridge', 'Antrim', 'BT32 4ZV', 5, 5),
(47, 'Cherry', 'Marie', 'McGinney', '1992-08-07', 'cmcginney7@redcross.org', '028 9777 4860', '8 Antrim Rd', 'Limavady', 'Tyrone', 'BT0 26WA', 8, 9),
(48, 'Jewel', 'Grace', 'Ward', '1973-03-03', 'jward@zdnet.com', '029 2733 1735', '1 Mayer Circle', 'Larne', NULL, 'BT5 2DN', 9, 3),
(49, 'Ruby', 'Elizabeth', 'Sullivan', '1968-09-11', 'rsullivan@amazon.co.uk', '029 6644 9171', '1 Kenwood Pass', 'Carrickfergus', NULL, 'BT9 3DQ', 3, 8),
(50, 'Matias', 'Michael', 'Mariotte', '1977-01-28', 'mmariottea@paginegialle.it', '029 3013 6311', '49 Tomscot Crossing', 'Belfast', NULL, 'BT98 24XZ', 5, 6),
(51, 'Lily', NULL, 'Aspinall', '1981-09-02', 'laspinall67@wordpress.org', '029 3718 5559', '90 Aberg Avenue', 'Lisburn', 'Down', 'BT2 2VH', 4, 3),
(52, 'Mason', NULL, 'Cobson', '2000-08-02', 'mcobsonc@studiopress.com', '089 9781 1618', '37 Esker Street', 'Newry', 'Fermanagh', 'BT3 4WT', 10, 11),
(53, 'Annice', NULL, 'Saltburn', '1962-06-27', 'asaltburn@ameblo.com', '087 8474 5337', '8 Dryden Trail', 'Banbridge', 'Tyrone', 'BT1 26EH', 7, 6),
(54, 'William', 'Will', 'Bassingham', '1982-08-06', 'wbassinghame@ustream.tv', '029 6933 5120', '377 Pierstorff Pass', 'Enniskillen', NULL, 'BT0 95SO', 8, 3),
(55, 'Ruthanne', 'Anne', 'Sedgwick', '1961-04-21', 'rsedgwickf@comcast.net', '029 6090 8964', '4662 Kinsman Drive', 'Coleraine', 'Down', 'BT29 2BR', 7, 1),
(56, 'Damian', 'Louise', 'Crilly', '2000-07-25', 'dcrilly@who.net', '029 6103 9571', '194 Railwasy Rd', 'Coleraine', NULL, 'BT4 66YP', 6, 10),
(57, 'Clemence', 'James', 'Armsby', '1964-03-23', 'carmsbyh@icloud.com', '078 4316 3176', '8142 Bowman Pass', 'Enniskillen', 'Down', 'BT97 51GA', 1, 8),
(58, 'Catherine', 'Anne', 'Yamin-Ali', '1998-01-21', 'cayaminalu@google.uk', '028 8482 4824', '9715 Upham Road', 'Limavady', 'Tyrone', 'BT1 89IH', 9, 11),
(59, 'Nora', 'William', 'Callam', '1961-01-21', 'ncallamj@drupal.org', '029 1041 4615', '57 Grayhawk Park', 'Carrickfergus', NULL, 'BT43 6HR', 10, 7),
(60, 'Phoebe', 'James', 'Howarth', '1955-10-10', 'phowarth@bbc.co.uk', '029 5863 5473', '4421 Eggendart Parkway', 'Bangor', 'Antrim', 'BT5 52KN', 7, 9),
(61, 'Leena', 'Joseph', 'de Savery', '1970-10-04', 'ldesaveryl@delicious.com', '029 2021 5618', '5 Lakewood Gardens Terrace', 'Craigavon', NULL, 'BT7 41SK', 3, 9),
(62, 'Noah', 'Michael', 'Young', '2000-08-10', 'nyoung68@cnn.com', '039 4516 3020', '942 Homewood Alley', 'Carrickfergus', NULL, 'BT96 1DI', 10, 4),
(63, 'Michael', 'James', 'Harper', '1991-11-12', 'mjharper@washington.edu', '029 4401 1242', '934 Browning Place', 'Derry', 'Down', 'BT4 3LU', 5, 6),
(64, 'Max', 'Michael', 'Blaxley', '1985-03-18', 'mblaxleyo@mapy.com', '042 9393 9982', '4682 Darwin Trail', 'Newtownabbey', 'Tyrone', 'BT0 86SB', 2, 2),
(65, 'Elisabeth', NULL, 'Brussels', '1990-03-19', 'ebrusselsp@nature.com', '083 5213 5931', '18 Northwestern Circle', 'Newry', 'Armagh', 'BT93 0EC', 2, 4),
(66, 'Hewitt', 'Grace', 'Ramsay', '1960-07-23', 'hramsay@creativecommons.org', '027 2849 8147', '317 Morrow Point', 'Enniskillen', 'Fermanagh', 'BT5 01SK', 9, 2),
(67, 'Joline', NULL, 'Denniston', '1959-03-29', 'jdennistonr@ucoz.ru', '078 3744 8689', '806 Hintze Park', 'Derry', 'Tyrone', 'BT7 88MC', 7, 8),
(68, 'Ash', 'Thomas', 'Lowton', '1958-08-12', 'alowtons@123-reg.co.uk', '079 6173 1006', '33 Ann St', 'Coleraine', 'Fermanagh', 'BT53 07AU', 4, 5),
(69, 'Ben', 'James', 'Marsh', '1995-10-04', 'bmarsh@scientificamerican.com', '028 7244 2848', '75 Hallows Point', 'Downpatrick', 'Antrim', 'BT9 8ZC', 10, 10),
(88, 'Jacob', 'James', 'Palmer', '1989-09-09', 'JacobPalmer@jourrapide.com', '029 3782 3763', '46 The Beeches', 'Londonderry', NULL, 'BT43 8XS', 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `JobSeekerSkills`
--

CREATE TABLE `JobSeekerSkills` (
  `SeekerID` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JobSeekerSkills`
--

INSERT INTO `JobSeekerSkills` (`SeekerID`, `SkillID`) VALUES
(1, 6),
(2, 9),
(3, 3),
(4, 5),
(5, 2),
(6, 5),
(7, 5),
(8, 7),
(9, 8),
(10, 2),
(11, 7),
(12, 4),
(13, 10),
(14, 5),
(15, 4),
(16, 4),
(17, 7),
(18, 5),
(19, 2),
(20, 2),
(21, 9),
(22, 4),
(23, 7),
(24, 3),
(25, 6),
(26, 7),
(27, 2),
(28, 4),
(29, 9),
(30, 9),
(31, 2),
(40, 3),
(41, 3),
(42, 8),
(43, 8),
(44, 10),
(45, 9),
(46, 2),
(47, 1),
(48, 4),
(49, 6),
(50, 4),
(51, 1),
(52, 10),
(53, 8),
(54, 9),
(55, 9),
(56, 6),
(57, 3),
(58, 10),
(59, 3),
(60, 5),
(61, 6),
(62, 2),
(63, 6),
(64, 3),
(65, 1),
(66, 2),
(67, 3),
(68, 8),
(69, 9),
(88, 5);

-- --------------------------------------------------------

--
-- Table structure for table `JobStatus`
--

CREATE TABLE `JobStatus` (
  `StatusID` int(11) NOT NULL,
  `StatusName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JobStatus`
--

INSERT INTO `JobStatus` (`StatusID`, `StatusName`) VALUES
(1, 'Pending'),
(2, 'Reviewed'),
(3, 'Accepted'),
(4, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `JobTypes`
--

CREATE TABLE `JobTypes` (
  `TypeID` int(11) NOT NULL,
  `TypeName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JobTypes`
--

INSERT INTO `JobTypes` (`TypeID`, `TypeName`) VALUES
(1, 'Full-Time'),
(2, 'Part-Time'),
(3, 'Contract'),
(4, 'Freelance'),
(5, 'Temporary'),
(6, 'Internship'),
(7, 'Remote'),
(8, 'Flexible Hours'),
(9, 'Shift Work'),
(10, 'Seasonal'),
(11, 'Hybrid');

-- --------------------------------------------------------

--
-- Table structure for table `Skills`
--

CREATE TABLE `Skills` (
  `SkillID` int(11) NOT NULL,
  `SkillName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Skills`
--

INSERT INTO `Skills` (`SkillID`, `SkillName`) VALUES
(1, 'Programming Languages'),
(2, 'Web Development'),
(3, 'Data Analysis'),
(4, 'Project Management'),
(5, 'Communication Skills'),
(6, 'Graphic Design'),
(7, 'Customer Service'),
(8, 'Problem Solving'),
(9, 'Teamwork'),
(10, 'Leadership');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Top15HighestScoringCandidates`
-- (See below for the actual view)
--
CREATE TABLE `Top15HighestScoringCandidates` (
`SeekerID` int(11)
,`Name` varchar(101)
,`OverallRating` decimal(18,5)
);

-- --------------------------------------------------------

--
-- Structure for view `ApplicationFeedback`
--
DROP TABLE IF EXISTS `ApplicationFeedback`;

CREATE ALGORITHM=UNDEFINED DEFINER=`probinson21`@`localhost` SQL SECURITY DEFINER VIEW `ApplicationFeedback`  AS SELECT DISTINCT `a`.`ApplicationID` AS `ApplicationID`, concat(`js`.`FirstName`,' ',`js`.`LastName`) AS `Name`, `j`.`Title` AS `JobTitle`, (`f`.`TechnicalSkillsRating` + `f`.`CommunicationSkillsRating` + `f`.`TeamFitRating` + `f`.`ProblemSolvingRating`) / 4 AS `OverallRating`, `f`.`Strengths` AS `CandidateStrengths`, `f`.`Improvements` AS `CandidateImprovements` FROM (((`Feedback` `f` join `Applications` `a` on(`f`.`ApplicationID` = `a`.`ApplicationID`)) join `JobSeekers` `js` on(`a`.`SeekerID` = `js`.`SeekerID`)) join `JobListings` `j` on(`a`.`JobID` = `j`.`JobID`)) GROUP BY `js`.`LastName`, `js`.`FirstName`, `a`.`ApplicationID`, `j`.`Title`, `f`.`Strengths`, `f`.`Improvements` ORDER BY `js`.`LastName` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `EmployerRecruitmentRateBetweenJuneToDecember2023`
--
DROP TABLE IF EXISTS `EmployerRecruitmentRateBetweenJuneToDecember2023`;

CREATE ALGORITHM=UNDEFINED DEFINER=`probinson21`@`localhost` SQL SECURITY DEFINER VIEW `EmployerRecruitmentRateBetweenJuneToDecember2023`  AS SELECT `e`.`EmployerID` AS `EmployerID`, `e`.`CompanyName` AS `CompanyName`, count(distinct `a`.`ApplicationID`) AS `NewRecruits` FROM (((`Employers` `e` left join `JobListings` `j` on(`j`.`EmployerID` = `e`.`EmployerID`)) left join `Applications` `a` on(`j`.`JobID` = `a`.`JobID`)) left join `ApplicationStatus` `ast` on(`a`.`ApplicationID` = `ast`.`ApplicationID`)) WHERE `a`.`DateApplied` between '2023-06-01' and '2023-12-31' AND `ast`.`StatusID` = 3 GROUP BY `e`.`EmployerID`, `e`.`CompanyName` ORDER BY `e`.`CompanyName` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `JobSeekerApplicationStatus`
--
DROP TABLE IF EXISTS `JobSeekerApplicationStatus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`probinson21`@`localhost` SQL SECURITY DEFINER VIEW `JobSeekerApplicationStatus`  AS SELECT `js`.`SeekerID` AS `SeekerID`, concat(`js`.`FirstName`,' ',`js`.`LastName`) AS `Name`, `a`.`ApplicationID` AS `ApplicationID`, `jl`.`Title` AS `JobTitle`, `e`.`CompanyName` AS `Employer`, `jst`.`StatusName` AS `CurrentStatus` FROM (((((`JobSeekers` `js` left join `Applications` `a` on(`js`.`SeekerID` = `a`.`SeekerID`)) left join `ApplicationStatus` `ast` on(`a`.`ApplicationID` = `ast`.`ApplicationID`)) left join `JobListings` `jl` on(`jl`.`JobID` = `a`.`JobID`)) left join `JobStatus` `jst` on(`jst`.`StatusID` = `ast`.`StatusID`)) left join `Employers` `e` on(`e`.`EmployerID` = `jl`.`EmployerID`)) ORDER BY `js`.`LastName` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `Top15HighestScoringCandidates`
--
DROP TABLE IF EXISTS `Top15HighestScoringCandidates`;

CREATE ALGORITHM=UNDEFINED DEFINER=`probinson21`@`localhost` SQL SECURITY DEFINER VIEW `Top15HighestScoringCandidates`  AS SELECT `js`.`SeekerID` AS `SeekerID`, concat(`js`.`FirstName`,' ',`js`.`LastName`) AS `Name`, (`f`.`TechnicalSkillsRating` + `f`.`CommunicationSkillsRating` + `f`.`TeamFitRating` + `f`.`ProblemSolvingRating`) / 4 AS `OverallRating` FROM ((`JobSeekers` `js` join `Applications` `a` on(`js`.`SeekerID` = `a`.`SeekerID`)) join `Feedback` `f` on(`a`.`ApplicationID` = `f`.`ApplicationID`)) GROUP BY `js`.`FirstName`, `js`.`LastName` ORDER BY (`f`.`TechnicalSkillsRating` + `f`.`CommunicationSkillsRating` + `f`.`TeamFitRating` + `f`.`ProblemSolvingRating`) / 4 DESC LIMIT 0, 15 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Applications`
--
ALTER TABLE `Applications`
  ADD PRIMARY KEY (`ApplicationID`),
  ADD KEY `JobID` (`JobID`),
  ADD KEY `SeekerID` (`SeekerID`),
  ADD KEY `ApplicationID` (`ApplicationID`);

--
-- Indexes for table `ApplicationStatus`
--
ALTER TABLE `ApplicationStatus`
  ADD PRIMARY KEY (`ApplicationID`,`StatusID`),
  ADD KEY `StatusID` (`StatusID`);

--
-- Indexes for table `EducationLevels`
--
ALTER TABLE `EducationLevels`
  ADD PRIMARY KEY (`EducationLevelID`);

--
-- Indexes for table `EmployerContactDepartments`
--
ALTER TABLE `EmployerContactDepartments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `EmployerContactPosition`
--
ALTER TABLE `EmployerContactPosition`
  ADD PRIMARY KEY (`PositionID`);

--
-- Indexes for table `EmployerContacts`
--
ALTER TABLE `EmployerContacts`
  ADD PRIMARY KEY (`ContactID`),
  ADD UNIQUE KEY `ContactID` (`ContactID`),
  ADD KEY `PositionID` (`PositionID`),
  ADD KEY `DepartmentID` (`DepartmentID`),
  ADD KEY `EmployerID` (`EmployerID`),
  ADD KEY `LastName` (`LastName`);

--
-- Indexes for table `Employers`
--
ALTER TABLE `Employers`
  ADD PRIMARY KEY (`EmployerID`),
  ADD KEY `IndustryID` (`IndustryID`);

--
-- Indexes for table `ExperienceLevels`
--
ALTER TABLE `ExperienceLevels`
  ADD PRIMARY KEY (`ExperienceLevelID`);

--
-- Indexes for table `Feedback`
--
ALTER TABLE `Feedback`
  ADD PRIMARY KEY (`FeedbackID`),
  ADD KEY `ApplicationID` (`ApplicationID`);

--
-- Indexes for table `Industries`
--
ALTER TABLE `Industries`
  ADD PRIMARY KEY (`IndustryID`);

--
-- Indexes for table `Interviews`
--
ALTER TABLE `Interviews`
  ADD PRIMARY KEY (`InterviewID`),
  ADD KEY `ApplicationID` (`ApplicationID`),
  ADD KEY `TypeID` (`TypeID`);

--
-- Indexes for table `InterviewTypes`
--
ALTER TABLE `InterviewTypes`
  ADD PRIMARY KEY (`TypeID`);

--
-- Indexes for table `JobListings`
--
ALTER TABLE `JobListings`
  ADD PRIMARY KEY (`JobID`),
  ADD KEY `LocationID` (`LocationID`),
  ADD KEY `EmployerID` (`EmployerID`),
  ADD KEY `Title` (`Title`),
  ADD KEY `EducationLevelID` (`EducationLevelID`);

--
-- Indexes for table `JobListingType`
--
ALTER TABLE `JobListingType`
  ADD PRIMARY KEY (`JobID`,`TypeID`),
  ADD KEY `TypeID` (`TypeID`);

--
-- Indexes for table `JobLocations`
--
ALTER TABLE `JobLocations`
  ADD PRIMARY KEY (`LocationID`),
  ADD KEY `City` (`City`);

--
-- Indexes for table `JobSeekers`
--
ALTER TABLE `JobSeekers`
  ADD PRIMARY KEY (`SeekerID`),
  ADD KEY `EducationLevelID` (`EducationLevelID`),
  ADD KEY `ExperienceLevelID` (`ExperienceLevelID`),
  ADD KEY `LastName` (`LastName`);

--
-- Indexes for table `JobSeekerSkills`
--
ALTER TABLE `JobSeekerSkills`
  ADD PRIMARY KEY (`SeekerID`,`SkillID`),
  ADD KEY `SkillID` (`SkillID`);

--
-- Indexes for table `JobStatus`
--
ALTER TABLE `JobStatus`
  ADD PRIMARY KEY (`StatusID`);

--
-- Indexes for table `JobTypes`
--
ALTER TABLE `JobTypes`
  ADD PRIMARY KEY (`TypeID`);

--
-- Indexes for table `Skills`
--
ALTER TABLE `Skills`
  ADD PRIMARY KEY (`SkillID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Applications`
--
ALTER TABLE `Applications`
  MODIFY `ApplicationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `EducationLevels`
--
ALTER TABLE `EducationLevels`
  MODIFY `EducationLevelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `EmployerContactDepartments`
--
ALTER TABLE `EmployerContactDepartments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `EmployerContactPosition`
--
ALTER TABLE `EmployerContactPosition`
  MODIFY `PositionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `EmployerContacts`
--
ALTER TABLE `EmployerContacts`
  MODIFY `ContactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `Employers`
--
ALTER TABLE `Employers`
  MODIFY `EmployerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `ExperienceLevels`
--
ALTER TABLE `ExperienceLevels`
  MODIFY `ExperienceLevelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Feedback`
--
ALTER TABLE `Feedback`
  MODIFY `FeedbackID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Industries`
--
ALTER TABLE `Industries`
  MODIFY `IndustryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Interviews`
--
ALTER TABLE `Interviews`
  MODIFY `InterviewID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `InterviewTypes`
--
ALTER TABLE `InterviewTypes`
  MODIFY `TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `JobListings`
--
ALTER TABLE `JobListings`
  MODIFY `JobID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `JobLocations`
--
ALTER TABLE `JobLocations`
  MODIFY `LocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `JobSeekers`
--
ALTER TABLE `JobSeekers`
  MODIFY `SeekerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `JobStatus`
--
ALTER TABLE `JobStatus`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `JobTypes`
--
ALTER TABLE `JobTypes`
  MODIFY `TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Skills`
--
ALTER TABLE `Skills`
  MODIFY `SkillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Applications`
--
ALTER TABLE `Applications`
  ADD CONSTRAINT `Applications_ibfk_1` FOREIGN KEY (`JobID`) REFERENCES `JobListings` (`JobID`),
  ADD CONSTRAINT `Applications_ibfk_2` FOREIGN KEY (`SeekerID`) REFERENCES `JobSeekers` (`SeekerID`);

--
-- Constraints for table `ApplicationStatus`
--
ALTER TABLE `ApplicationStatus`
  ADD CONSTRAINT `ApplicationStatus_ibfk_1` FOREIGN KEY (`ApplicationID`) REFERENCES `Applications` (`ApplicationID`),
  ADD CONSTRAINT `ApplicationStatus_ibfk_2` FOREIGN KEY (`StatusID`) REFERENCES `JobStatus` (`StatusID`);

--
-- Constraints for table `EmployerContacts`
--
ALTER TABLE `EmployerContacts`
  ADD CONSTRAINT `EmployerContacts_ibfk_1` FOREIGN KEY (`PositionID`) REFERENCES `EmployerContactPosition` (`PositionID`),
  ADD CONSTRAINT `EmployerContacts_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `EmployerContactDepartments` (`DepartmentID`),
  ADD CONSTRAINT `EmployerContacts_ibfk_3` FOREIGN KEY (`EmployerID`) REFERENCES `Employers` (`EmployerID`);

--
-- Constraints for table `Employers`
--
ALTER TABLE `Employers`
  ADD CONSTRAINT `Employers_ibfk_2` FOREIGN KEY (`IndustryID`) REFERENCES `Industries` (`IndustryID`);

--
-- Constraints for table `Feedback`
--
ALTER TABLE `Feedback`
  ADD CONSTRAINT `Feedback_ibfk_1` FOREIGN KEY (`ApplicationID`) REFERENCES `Applications` (`ApplicationID`);

--
-- Constraints for table `Interviews`
--
ALTER TABLE `Interviews`
  ADD CONSTRAINT `Interviews_ibfk_1` FOREIGN KEY (`ApplicationID`) REFERENCES `Applications` (`ApplicationID`),
  ADD CONSTRAINT `Interviews_ibfk_3` FOREIGN KEY (`TypeID`) REFERENCES `InterviewTypes` (`TypeID`);

--
-- Constraints for table `JobListings`
--
ALTER TABLE `JobListings`
  ADD CONSTRAINT `JobListings_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `JobLocations` (`LocationID`),
  ADD CONSTRAINT `JobListings_ibfk_2` FOREIGN KEY (`EmployerID`) REFERENCES `Employers` (`EmployerID`),
  ADD CONSTRAINT `JobListings_ibfk_3` FOREIGN KEY (`EducationLevelID`) REFERENCES `EducationLevels` (`EducationLevelID`);

--
-- Constraints for table `JobListingType`
--
ALTER TABLE `JobListingType`
  ADD CONSTRAINT `JobListingType_ibfk_1` FOREIGN KEY (`JobID`) REFERENCES `JobListings` (`JobID`),
  ADD CONSTRAINT `JobListingType_ibfk_2` FOREIGN KEY (`TypeID`) REFERENCES `JobTypes` (`TypeID`);

--
-- Constraints for table `JobSeekers`
--
ALTER TABLE `JobSeekers`
  ADD CONSTRAINT `JobSeekers_ibfk_2` FOREIGN KEY (`EducationLevelID`) REFERENCES `EducationLevels` (`EducationLevelID`),
  ADD CONSTRAINT `JobSeekers_ibfk_3` FOREIGN KEY (`ExperienceLevelID`) REFERENCES `ExperienceLevels` (`ExperienceLevelID`);

--
-- Constraints for table `JobSeekerSkills`
--
ALTER TABLE `JobSeekerSkills`
  ADD CONSTRAINT `JobSeekerSkills_ibfk_1` FOREIGN KEY (`SeekerID`) REFERENCES `JobSeekers` (`SeekerID`),
  ADD CONSTRAINT `JobSeekerSkills_ibfk_2` FOREIGN KEY (`SkillID`) REFERENCES `Skills` (`SkillID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
