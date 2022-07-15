-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 04:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingstudio`
--

-- --------------------------------------------------------

--
-- Table structure for table `coding_studio_data`
--

CREATE TABLE `coding_studio_data` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `pass` varchar(1000) NOT NULL,
  `cpass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coding_studio_data`
--

INSERT INTO `coding_studio_data` (`id`, `name`, `email`, `phone`, `pass`, `cpass`) VALUES
(1, 'Vidyut kumar', 'admin@vanik.org', '1234567890', '123456', '123456'),
(2, 'Surya da', 'admin@vanik.org', '1234567890', '12345678', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Id` int(11) NOT NULL,
  `country_name` varchar(1000) NOT NULL,
  `country_short_name` varchar(1000) NOT NULL,
  `country_phone_code` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Id`, `country_name`, `country_short_name`, `country_phone_code`) VALUES
(1, 'Afghanistan', 'AF', '93'),
(2, 'Algeria', 'DZ', '213'),
(3, 'Albania', 'AL', '355'),
(4, 'Andorra', 'AD', '376'),
(5, 'Angola', 'AO', '244'),
(6, 'Anguilla', 'AI', '1264'),
(7, 'Antarctica', 'AQ', '0'),
(8, 'Antigua And Barbuda', 'AG', '1268'),
(9, 'Argentina', 'AR', '54'),
(10, 'American Samoa', 'AS', '1684'),
(11, 'Armenia', 'AM', '374'),
(12, 'Australia', 'AU', '61'),
(13, 'Austria', 'AT', '43'),
(14, 'Bahamas The', 'BS', '1242'),
(15, 'Aruba', 'AW', '297'),
(16, 'Bahrain', 'BH', '973'),
(17, 'Bangladesh', 'BD', '880'),
(18, 'Barbados', 'BB', '1246'),
(19, 'Belarus', 'BY', '375'),
(20, 'Belgium', 'BE', '32'),
(21, 'Benin', 'BJ', '229'),
(22, 'Bermuda', 'BM', '1441'),
(23, 'Bolivia', 'BO', '591'),
(24, 'Azerbaijan', 'AZ', '994'),
(25, 'Bhutan', 'BT', '975'),
(26, 'Belize', 'BZ', '501'),
(27, 'Botswana', 'BW', '267'),
(28, 'Brazil', 'BR', '55'),
(29, 'British Indian Ocean Territory', 'IO', '246'),
(30, 'Brunei', 'BN', '673'),
(31, 'Bosnia and Herzegovina', 'BA', '387'),
(32, 'Bulgaria', 'BG', '359'),
(33, 'Burkina Faso', 'BF', '226'),
(34, 'Burundi', 'BI', '257'),
(35, 'Cambodia', 'KH', '855'),
(36, 'Canada', 'CA', '1'),
(37, 'Bouvet Island', 'BV', '0'),
(38, 'Cayman Islands', 'KY', '1345'),
(39, 'Central African Republic', 'CF', '236'),
(40, 'Christmas Island', 'CX', '61'),
(41, 'Cape Verde', 'CV', '238'),
(42, 'Cameroon', 'CM', '237'),
(43, 'Cocos (Keeling) Islands', 'CC', '672'),
(44, 'Colombia', 'CO', '57'),
(45, 'Comoros', 'KM', '269'),
(46, 'Cook Islands', 'CK', '682'),
(47, 'Costa Rica', 'CR', '506'),
(48, 'Chile', 'CL', '56'),
(49, 'China', 'CN', '86'),
(50, 'Chad', 'TD', '235'),
(51, 'Cuba', 'CU', '53'),
(52, 'Cyprus', 'CY', '357'),
(53, 'Czech Republic', 'CZ', '420'),
(54, 'Democratic Republic Of The Congo', 'CD', '243'),
(55, 'Croatia (Hrvatska)', 'HR', '385'),
(56, 'Denmark', 'DK', '45'),
(57, 'Djibouti', 'DJ', '253'),
(58, 'Dominica', 'DM', '1767'),
(59, 'Dominican Republic', 'DO', '1809'),
(60, 'East Timor', 'TP', '670'),
(61, 'Ecuador', 'EC', '593'),
(62, 'Egypt', 'EG', '20'),
(63, 'El Salvador', 'SV', '503'),
(64, 'Equatorial Guinea', 'GQ', '240'),
(65, 'Eritrea', 'ER', '291'),
(66, 'Ethiopia', 'ET', '251'),
(67, 'Falkland Islands', 'FK', '500'),
(68, 'Faroe Islands', 'FO', '298'),
(69, 'Estonia', 'EE', '372'),
(70, 'French Guiana', 'GF', '594'),
(71, 'French Southern Territories', 'TF', '0'),
(72, 'Gambia The', 'GM', '220'),
(73, 'Georgia', 'GE', '995'),
(74, 'Fiji Islands', 'FJ', '679'),
(75, 'France', 'FR', '33'),
(76, 'Finland', 'FI', '358'),
(77, 'Ghana', 'GH', '233'),
(78, 'Gibraltar', 'GI', '350'),
(79, 'Greece', 'GR', '30'),
(80, 'Greenland', 'GL', '299'),
(81, 'Grenada', 'GD', '1473'),
(82, 'Guadeloupe', 'GP', '590'),
(83, 'Guam', 'GU', '1671'),
(84, 'Guatemala', 'GT', '502'),
(85, 'Guernsey and Alderney', 'XU', '44'),
(86, 'Guinea-Bissau', 'GW', '245'),
(87, 'French Polynesia', 'PF', '689'),
(88, 'Germany', 'DE', '49'),
(89, 'Gabon', 'GA', '241'),
(90, 'Guyana', 'GY', '592'),
(91, 'Haiti', 'HT', '509'),
(92, 'Heard and McDonald Islands', 'HM', '0'),
(93, 'Hong Kong S.A.R.', 'HK', '852'),
(94, 'Hungary', 'HU', '36'),
(95, 'Iceland', 'IS', '354'),
(96, 'India', 'IN', '91'),
(97, 'Indonesia', 'ID', '62'),
(98, 'Iran', 'IR', '98'),
(99, 'Iraq', 'IQ', '964'),
(100, 'Israel', 'IL', '972'),
(101, 'Italy', 'IT', '39'),
(102, 'Jamaica', 'JM', '1876'),
(103, 'Japan', 'JP', '81'),
(104, 'Honduras', 'HN', '504'),
(105, 'Guinea', 'GN', '224'),
(106, 'Jersey', 'XJ', '44'),
(107, 'Jordan', 'JO', '962'),
(108, 'Kazakhstan', 'KZ', '7'),
(109, 'Korea North', 'KP', '850'),
(110, 'Korea South', 'KR', '82'),
(111, 'Ireland', 'IE', '353'),
(112, 'Kuwait', 'KW', '965'),
(113, 'Kyrgyzstan', 'KG', '996'),
(114, 'Laos', 'LA', '856'),
(115, 'Latvia', 'LV', '371'),
(116, 'Lebanon', 'LB', '961'),
(117, 'Lesotho', 'LS', '266'),
(118, 'Liberia', 'LR', '231'),
(119, 'Liechtenstein', 'LI', '423'),
(120, 'Kiribati', 'KI', '686'),
(121, 'Kenya', 'KE', '254'),
(122, 'Luxembourg', 'LU', '352'),
(123, 'Macau S.A.R.', 'MO', '853'),
(124, 'Malawi', 'MW', '265'),
(125, 'Malaysia', 'MY', '60'),
(126, 'Maldives', 'MV', '960'),
(127, 'Mali', 'ML', '223'),
(128, 'Malta', 'MT', '356'),
(129, 'Libya', 'LY', '218'),
(130, 'Lithuania', 'LT', '370'),
(131, 'Macedonia', 'MK', '389'),
(132, 'Marshall Islands', 'MH', '692'),
(133, 'Martinique', 'MQ', '596'),
(134, 'Mauritania', 'MR', '222'),
(135, 'Mauritius', 'MU', '230'),
(136, 'Mayotte', 'YT', '269'),
(137, 'Man (Isle of)', 'XM', '44'),
(138, 'Mexico', 'MX', '52'),
(139, 'Moldova', 'MD', '373'),
(140, 'Mongolia', 'MN', '976'),
(141, 'Montserrat', 'MS', '1664'),
(142, 'Madagascar', 'MG', '261'),
(143, 'Morocco', 'MA', '212'),
(144, 'Mozambique', 'MZ', '258'),
(145, 'Myanmar', 'MM', '95'),
(146, 'Namibia', 'NA', '264'),
(147, 'Nauru', 'NR', '674'),
(148, 'Nepal', 'NP', '977'),
(149, 'Monaco', 'MC', '377'),
(150, 'Micronesia', 'FM', '691'),
(151, 'Netherlands Antilles', 'AN', '599'),
(152, 'Netherlands The', 'NL', '31'),
(153, 'New Caledonia', 'NC', '687'),
(154, 'New Zealand', 'NZ', '64'),
(155, 'Nicaragua', 'NI', '505'),
(156, 'Niue', 'NU', '683'),
(157, 'Norfolk Island', 'NF', '672'),
(158, 'Northern Mariana Islands', 'MP', '1670'),
(159, 'Niger', 'NE', '227'),
(160, 'Oman', 'OM', '968'),
(161, 'Pakistan', 'PK', '92'),
(162, 'Palau', 'PW', '680'),
(163, 'Palestinian Territory Occupied', 'PS', '970'),
(164, 'Panama', 'PA', '507'),
(165, 'Papua new Guinea', 'PG', '675'),
(166, 'Paraguay', 'PY', '595'),
(167, 'Norway', 'NO', '47'),
(168, 'Nigeria', 'NG', '234'),
(169, 'Peru', 'PE', '51'),
(170, 'Philippines', 'PH', '63'),
(171, 'Pitcairn Island', 'PN', '0'),
(172, 'Qatar', 'QA', '974'),
(173, 'Republic Of The Congo', 'CG', '242'),
(174, 'Romania', 'RO', '40'),
(175, 'Russia', 'RU', '70'),
(176, 'Rwanda', 'RW', '250'),
(177, 'Saint Helena', 'SH', '290'),
(178, 'Reunion', 'RE', '262'),
(179, 'Poland', 'PL', '48'),
(180, 'Portugal', 'PT', '351'),
(181, 'Puerto Rico', 'PR', '1787'),
(182, 'Saint Kitts And Nevis', 'KN', '1869'),
(183, 'Saint Pierre and Miquelon', 'PM', '508'),
(184, 'Saint Vincent And The Grenadines', 'VC', '1784'),
(185, 'Samoa', 'WS', '684'),
(186, 'San Marino', 'SM', '378'),
(187, 'Sao Tome and Principe', 'ST', '239'),
(188, 'Saudi Arabia', 'SA', '966'),
(189, 'Senegal', 'SN', '221'),
(190, 'Serbia', 'RS', '381'),
(191, 'Seychelles', 'SC', '248'),
(192, 'Sierra Leone', 'SL', '232'),
(193, 'Saint Lucia', 'LC', '1758'),
(194, 'Singapore', 'SG', '65'),
(195, 'Slovakia', 'SK', '421'),
(196, 'Slovenia', 'SI', '386'),
(197, 'Smaller Territories of the UK', 'XG', '44'),
(198, 'Solomon Islands', 'SB', '677'),
(199, 'Somalia', 'SO', '252'),
(200, 'South Africa', 'ZA', '27'),
(201, 'South Georgia', 'GS', '0'),
(202, 'Spain', 'ES', '34'),
(203, 'Sri Lanka', 'LK', '94'),
(204, 'Suriname', 'SR', '597'),
(205, 'Swaziland', 'SZ', '268'),
(206, 'Sweden', 'SE', '46'),
(207, 'Switzerland', 'CH', '41'),
(208, 'Syria', 'SY', '963'),
(209, 'Taiwan', 'TW', '886'),
(210, 'Tajikistan', 'TJ', '992'),
(211, 'Tanzania', 'TZ', '255'),
(212, 'Thailand', 'TH', '66'),
(213, 'Sudan', 'SD', '249'),
(214, 'Svalbard And Jan Mayen Islands', 'SJ', '47'),
(215, 'South Sudan', 'SS', '211'),
(216, 'Togo', 'TG', '228'),
(217, 'Tonga', 'TO', '676'),
(218, 'Tunisia', 'TN', '216'),
(219, 'Tokelau', 'TK', '690'),
(220, 'Turkmenistan', 'TM', '7370'),
(221, 'Turks And Caicos Islands', 'TC', '1649'),
(222, 'Tuvalu', 'TV', '688'),
(223, 'Ukraine', 'UA', '380'),
(224, 'United Arab Emirates', 'AE', '971'),
(225, 'United Kingdom', 'GB', '44'),
(226, 'United States', 'US', '1'),
(227, 'Turkey', 'TR', '90'),
(228, 'Trinidad And Tobago', 'TT', '1868'),
(229, 'United States Minor Outlying Islands', 'UM', '1'),
(230, 'Uruguay', 'UY', '598'),
(231, 'Uzbekistan', 'UZ', '998'),
(232, 'Vanuatu', 'VU', '678'),
(233, 'Vatican City State (Holy See)', 'VA', '39'),
(234, 'Uganda', 'UG', '256'),
(235, 'Venezuela', 'VE', '58'),
(236, 'Virgin Islands (British)', 'VG', '1284'),
(237, 'Virgin Islands (US)', 'VI', '1340'),
(238, 'Wallis And Futuna Islands', 'WF', '681'),
(239, 'Western Sahara', 'EH', '212'),
(240, 'Yemen', 'YE', '967'),
(241, 'Yugoslavia', 'YU', '38'),
(242, 'Zimbabwe', 'ZW', '263'),
(243, 'Vietnam', 'VN', '84'),
(244, 'Zambia', 'ZM', '260');

-- --------------------------------------------------------

--
-- Table structure for table `cs_phpvalidation`
--

CREATE TABLE `cs_phpvalidation` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `company` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `smg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_phpvalidation`
--

INSERT INTO `cs_phpvalidation` (`id`, `name`, `company`, `email`, `password`, `phone`, `smg`) VALUES
(1, 'vidyut kumar', 'ghfhfhfg', 'admin@vanik.org', 'vanik12345', '1234567890', 'asdadasdafgd'),
(2, 'fghfghf', '5645654', 'admin@vanik.org', 'vanik12345', '1234567890', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `file_upload`
--

CREATE TABLE `file_upload` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_upload`
--

INSERT INTO `file_upload` (`id`, `name`, `size`, `type`) VALUES
(1, '566-0.08 MB.pdf', '0.08', 'pdf');

-- --------------------------------------------------------

--
-- Table structure for table `form_data`
--

CREATE TABLE `form_data` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `submitted_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `form_data`
--

INSERT INTO `form_data` (`id`, `name`, `email`, `file_name`, `submitted_on`) VALUES
(3, 'vzx zxczx', 'vidyut.srat006@gmail.com', '30mb.jpg', '2021-09-02 10:32:44'),
(4, 'vzx zxczx', 'vidyut.srat006@gmail.com', '40mb.jpg', '2021-09-02 10:36:45'),
(32, '43534543', '38vidyut@mostlikers.com', '40mb.jpg', '2021-09-03 13:46:04'),
(33, '43534543', 'mondalbidyut38@gmail.com', '40mb.jpg', '2021-09-13 11:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `google_login`
--

CREATE TABLE `google_login` (
  `id` bigint(20) NOT NULL,
  `pwd` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tel` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `G_id` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `G_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `G_givenname` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `G_familyname` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `G_photo` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `G_email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `G_idtoken` mediumtext COLLATE latin1_general_ci NOT NULL,
  `login_type` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `google_login`
--

INSERT INTO `google_login` (`id`, `pwd`, `tel`, `G_id`, `G_name`, `G_givenname`, `G_familyname`, `G_photo`, `G_email`, `G_idtoken`, `login_type`) VALUES
(54, '123456', '4433093999', 'login_with_vkweb', 'Admin', 'login_with_vkweb', 'login_with_vkweb', '123.jpg', '38vidyut@most.com', 'login_with_vkweb', 'login_with_vkweb'),
(61, 'login_with_google', 'login_with_google', '110082795668038672050', 'Bidyut Mandal', 'Bidyut', 'Mandal', 'https://lh3.googleusercontent.com/a-/AOh14GhH6CXmOjcAlbPJgszvL6vizW5Yq1yy4q2b7hrVEg=s96-c', 'mondalbidyut38@gmail.com', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ2M2RiZTczYWFkODhjODU0ZGUwZDhkNmMwMTRjMzZkYzI1YzQyOTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTEwMDgyNzk1NjY4MDM4NjcyMDUwIiwiZW1haWwiOiJtb25kYWxiaWR5dXQzOEBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjVNLXpLMTlnT0M0RlBaWnd6WnN4OEEiLCJuYW1lIjoiQmlkeXV0IE1hbmRhbCIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHaEg2Q1htT2pjQWxiUEpnc3p2TDZ2aXpXNVlxMXl5NHEyYjdoclZFZz1zOTYtYyIsImdpdmVuX25hbWUiOiJCaWR5dXQiLCJmYW1pbHlfbmFtZSI6Ik1hbmRhbCIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjQ3MTAyMjk0LCJleHAiOjE2NDcxMDU4OTQsImp0aSI6IjI2OTM3M2NiY2M1NjhiNjU2ZTMwNDg1NmM5NDE1YzQ0YzA1ODBiZjUifQ.eT_9mZYG4jk8ZxXp-Nf61i_t7qJhIUVC3GHAC_z9BgXbf8kUMbBtCuYkzgf-VUvkTaPlgnYVoVpm_GNX2g1Lh46p55KbBE8AzrQVMH-I8_JcBS6K4JN-rgO3P7Ql7B4qdk3pGoAD8h5GnsTVVHGKwuvhFLS02KwFfUBxWi9busoeYi8oO3CfHi7_TyIwCFRA4Tmwse7SAHN0VFN9ACtLss275U7DnCAi-JavtJzaaQnMJOcanhpk6_q77Q2ZkCJGKy9cZQt97b0aUwBuoHtDWs8rA_0XqeQxvVj8dJiJEnE0DhvUS66tDAvWst2GwwXpdjpMCZODU8-8cA1b-9BD7g', 'login_with_google'),
(59, 'Tufan', '9337024267', 'login_with_vkweb', 'Kuta tufan', 'login_with_vkweb', 'login_with_vkweb', 'login_with_vkweb', 'tufanray35@gmail.com', 'login_with_vkweb', 'login_with_vkweb'),
(63, 'login_with_google', 'login_with_google', '102334998785071074689', 'Mr.masterVk', 'Mr.masterVk', '', 'https://lh3.googleusercontent.com/a-/AOh14GiUAyZI1kmdMuV2SkKj3DfIVUdmRQ_lkkcnbLt5=s96-c', 'vidyut.star006@gmail.com', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ2M2RiZTczYWFkODhjODU0ZGUwZDhkNmMwMTRjMzZkYzI1YzQyOTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAyMzM0OTk4Nzg1MDcxMDc0Njg5IiwiZW1haWwiOiJ2aWR5dXQuc3RhcjAwNkBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjdUS1NhTm56aF90c0lOVXllcnZPWFEiLCJuYW1lIjoiTXIubWFzdGVyVmsiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2lVQXlaSTFrbWRNdVYyU2tLajNEZklWVWRtUlFfbGtrY25iTHQ1PXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6Ik1yLm1hc3RlclZrIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2NDY4ODA4ODcsImV4cCI6MTY0Njg4NDQ4NywianRpIjoiMmRlZjFkMTMwOWM4ZjViZDkyZWNiOWY0ZTc2MzE0OWQxMzJmODMxNiJ9.clkSWx4ou17vdMfFyjXY9McZGsyxWoRUwtowX2hzxSwdcYhIM8vl3Pef8f8sdqBWgYQ_Cuo6Aj1Fj6JYiOlt6L7JpAN0Smc8Nx8VkAXGtpbK8PQCIqa4F66VoBOeKQsLbF4aghos54P6tbUBObIZhwCJWaAsvA8hNd8OikNcT7VOvBuk8M4vOsxtYPj4MukjlLu0hOUnPpiW3fgJ3whsiISjHqSKbFnmS9AjGnrNNqbOpJsTutFx5Vl6k9dLMyDVK4qv5BQ8Gxn5SH0Xs9DGAzrEIZTCyMTKuVSjsI8X8r0jPBE6owODGZ5h39_ifDvgxjXLfrct7KW1zcrDbXFZaQ', 'login_with_google'),
(62, 'login_with_google', 'login_with_google', '107576614173355657032', 'Vidyut Kumar', 'Vidyut', 'Kumar', 'https://lh3.googleusercontent.com/a-/AOh14GgxWFsjShA7ewK270b1Zy8TIA98x2QZwmBGB_ZA=s96-c', 'vidyut.languameter@gmail.com', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ2M2RiZTczYWFkODhjODU0ZGUwZDhkNmMwMTRjMzZkYzI1YzQyOTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA3NTc2NjE0MTczMzU1NjU3MDMyIiwiZW1haWwiOiJ2aWR5dXQubGFuZ3VhbWV0ZXJAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJpTnBRNF9SMDhLaHlhamlCam9LSGZnIiwibmFtZSI6IlZpZHl1dCBLdW1hciIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHZ3hXRnNqU2hBN2V3SzI3MGIxWnk4VElBOTh4MlFad21CR0JfWkE9czk2LWMiLCJnaXZlbl9uYW1lIjoiVmlkeXV0IiwiZmFtaWx5X25hbWUiOiJLdW1hciIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjQ3MDU0MTcyLCJleHAiOjE2NDcwNTc3NzIsImp0aSI6IjdkODBkY2E3ZjZjOGM1OGY5YzdmZTlkMjM3ZDFhZDlhNDRmMDViMGMifQ.ckAJnbKqYv1ZvE4mx0XihANsZpQmnAFZ-OJs34an8JN3ba6FYygeXTRBISXPXj5mkgjMjhcZqE4PPynMAQWjdjs-jkDlLzdgRyX66zdB7McHGKJbi2BbT1ZJIGrRkZiCEhKf0AMoYver-hXsaiy04cedtJyH5F7XckBKnvOatXVpiYocCvOfnIPrHnxBmDC6sXwthMv0c5q1lujLFdy5UTopJylMbyZFbN0teLkhg7pOaySxLujxh_fS5iA0CB71dxHWUZw_0b_gRCtL5xyyqpkmvbhJtkmdhoKKD88ZZjo0s-7thF5UgmbiAa5xFIEY6Rl35Ug-mibtYCJfdrfdqw', 'login_with_google'),
(64, '123456', '1212312312312', 'login_with_vkweb', 'vk', 'login_with_vkweb', 'login_with_vkweb', 'login_with_vkweb', 'vidyut.star0061@gmail.com', 'login_with_vkweb', 'login_with_vkweb'),
(65, '123456', '1234567890', 'login_with_vkweb', 'Vidyut Mandal', 'login_with_vkweb', 'login_with_vkweb', 'login_with_vkweb', 'vidyut.kumar006@gmail.com', 'login_with_vkweb', 'login_with_vkweb'),
(66, 'login_with_google', 'login_with_google', '104875500763275337998', 'online massage', 'online', 'massage', 'https://lh3.googleusercontent.com/a/AATXAJzB60-SJL_w93H2z_YJSzgxamy8DNFMG1w-q5X7=s96-c', 'onlinemassage09@gmail.com', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ2M2RiZTczYWFkODhjODU0ZGUwZDhkNmMwMTRjMzZkYzI1YzQyOTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA0ODc1NTAwNzYzMjc1MzM3OTk4IiwiZW1haWwiOiJvbmxpbmVtYXNzYWdlMDlAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJ6M0p4QmlZQU9fOU1pTXJELU81Uy1nIiwibmFtZSI6Im9ubGluZSBtYXNzYWdlIiwicGljdHVyZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FBVFhBSnpCNjAtU0pMX3c5M0gyel9ZSlN6Z3hhbXk4RE5GTUcxdy1xNVg3PXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6Im9ubGluZSIsImZhbWlseV9uYW1lIjoibWFzc2FnZSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjQ2ODgwOTEzLCJleHAiOjE2NDY4ODQ1MTMsImp0aSI6IjI3YmNhYmU5Y2NlZDliMDFlMzhmMGI4ZTRiNWE5MTkxNDIyMzE1ZDYifQ.LLRwQSdPAnqj46e9lzr5vQiX3XrXPelBZo94qKk3PsUw6lQZ9YkMq2EhvTCxLZCqLWXCeJn3gbMm7SjGrJgke11nnFE85v2Qcg2-AesfPQIHcZ6XrjkpWYkitRt8wd1o5ZHNE2UP2wuVw8v9TBA3Ai_TEF364u88LbH8_7A_mSifNgB7Uj_qolxrh_8sgPlDOxhRvMbI_bdhsO6sKelhHFgArDzqlB_Um1trJPxV7oKJjcnxf2E3STLoT7cpSE11XyvlPMnuEfxQEB9DACBSP6Q0-vWZ-szTvAfZlEgteZDCS8mKeYdP_J0C3xjcMaYCWzTC-JAMi_PwJQOkjux3ug', 'login_with_google'),
(67, 'login_with_fb', 'login_with_fb', '1685526511792390', 'Bidyut Mandal', 'Bidyut Mandal', 'login_with_fb', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1685526511792390&height=50&width=50&ext=1649694331&hash=AeQbsmbt5idkE9tMz28', 'vidyut.star006@gmail.com', 'login_with_fb', 'login_with_fb'),
(68, 'login_with_google', 'login_with_google', '107808473645953926063', 'Amit Jena', 'Amit', 'Jena', 'https://lh3.googleusercontent.com/a-/AOh14GhiDJXs8B0BlqkSlniWvE5H88_3zaL6jHhJFEuNdg=s96-c', '180101120037@cutm.ac.in', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjcyOTE4OTQ1MGQ0OTAyODU3MDQyNTI2NmYwM2U3MzdmNDVhZjI5MzIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA3ODA4NDczNjQ1OTUzOTI2MDYzIiwiaGQiOiJjdXRtLmFjLmluIiwiZW1haWwiOiIxODAxMDExMjAwMzdAY3V0bS5hYy5pbiIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiUXlFbWZ2SUpRYkx3enNpeURBdWZoQSIsIm5hbWUiOiJBbWl0IEplbmEiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2hpREpYczhCMEJscWtTbG5pV3ZFNUg4OF8zemFMNmpIaEpGRXVOZGc9czk2LWMiLCJnaXZlbl9uYW1lIjoiQW1pdCIsImZhbWlseV9uYW1lIjoiSmVuYSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjQ3OTI3OTAyLCJleHAiOjE2NDc5MzE1MDIsImp0aSI6ImVmYTYxY2FhYjFjZDVlOTk4ODI1ZWY5OWJmMTVjYmQ2MWZiNmEzNWYifQ.dSkx-OuLPICy-46ULN9O0VOLJIr5ZsobsI1twbVux4p5NRNJC0nPGNYET48ilcrKbpZNb4tGv5UbkoVqxBqniZ5xC1TDOBIXNgy1Lef3pLLNYp91fbLhSwDKvdfJxmtdLX3MBkFFmDpytNokev3ciiyrLsp2JqXZotr0Q7RnyKRwFMA89XReUSCW_nfkq6fJLWpkzJjnoHB8UHKHY6iSBcnp_GEQvz_7CSI6hQRjQIlDEH4KuOItjNFJlj3vlh0jvWd2O1OvKwUQHLfTphz_1Go56CpbO9tuL_WLhyUbkyWfGmBIEaGtQkEahOrpzIvf6HVUr-e1x-xS3iLGrQaWTw', 'login_with_google'),
(69, 'login_with_google', 'login_with_google', '109368969385171625268', 'Bidyut Polosoft', 'Bidyut', 'Polosoft', 'https://lh3.googleusercontent.com/a/AATXAJwmr2MD07tdTTzDOju36e0R1MGmu0OBF2pbKKar=s96-c', 'bidyutpolosoft38@gmail.com', 'eyJhbGciOiJSUzI1NiIsImtpZCI6Ijc0ODNhMDg4ZDRmZmMwMDYwOWYwZTIyZjNjMjJkYTVmZTM5MDZjY2MiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA5MzY4OTY5Mzg1MTcxNjI1MjY4IiwiZW1haWwiOiJiaWR5dXRwb2xvc29mdDM4QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiODJjc0RGeEpKYUNjM1MyTmhDY0NidyIsIm5hbWUiOiJCaWR5dXQgUG9sb3NvZnQiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd21yMk1EMDd0ZFRUekRPanUzNmUwUjFNR211ME9CRjJwYktLYXI9czk2LWMiLCJnaXZlbl9uYW1lIjoiQmlkeXV0IiwiZmFtaWx5X25hbWUiOiJQb2xvc29mdCIsImxvY2FsZSI6ImVuLUdCIiwiaWF0IjoxNjU0OTIzOTY1LCJleHAiOjE2NTQ5Mjc1NjUsImp0aSI6Ijc4MWQ5YmY2OGEyZWYwZDljMjlhYWUwMWViMjM4MGIxOGM2NjZhOGUifQ.NXGEQPYJmYj3QCRLbKsXhn3Hv_3MfOokEDd2M1sFVylzQgNg-9wJxMgvEz6oT5Vko7JDEtxHZGA8DFWpnngOD1wGvUI7iAsJv62q7OX6q3rM7WEZgGfGgRzR0SzY8fTsnVJJ_dBoAbdSnXw3HteuFQPIonoxVy0GrAEbCridXdfyrmfbp3LCP-CTij9I8z8yZDNQAHg8I7-ZVd6PmYfPN0a1lAgZ0Ts91krdWjIg5O7umhF_xT85v6kzGmF43Z0sofsiyLj8Wxwci0xlN88pTxJspFHXtfoLms7cIqrjTblKOOoBjx8xHSxecK7osggoxh8mOQNLHePVdoVhYSOEOw', 'login_with_google');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `link`, `email`) VALUES
(1, 'wre', 'er', '1@gmail.com'),
(4, 'row2', 'row2', 'row2@gmail.com'),
(27, 'wre', 'er', '1@gmail.com'),
(28, 'row2', 'row2', 'row2@gmail.com'),
(30, 'row2', 'row2', 'row2@gmail.com'),
(32, 'row2', 'row2', 'row2@gmail.com'),
(33, 'wre', 'er', '1@gmail.com'),
(35, 'wre', 'er', '1@gmail.com'),
(37, 'row26', 'row26', 'row2@gmail.com'),
(40, '2', '2', 'row2@gmail.com'),
(41, '1', '1', '1@gmail.com'),
(51, 'e', 'wer', 'we@gmail.xom'),
(52, 'er', 'wer', 'we@gmail.xom'),
(53, 'ewr', 'ewr', 'we@gmail.xom');

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE `product_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `MRP` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_tbl`
--

INSERT INTO `product_tbl` (`id`, `name`, `MRP`, `price`) VALUES
(1, 'Select Product', '0', '0'),
(2, 'PHP', '100', '50'),
(3, 'JavaScript', '200', '150'),
(4, 'jQurey', '300', '250'),
(5, 'AngularJS', '400', '350'),
(6, 'Angular', '500', '50');

-- --------------------------------------------------------

--
-- Table structure for table `script_fetch`
--

CREATE TABLE `script_fetch` (
  `id` int(11) NOT NULL,
  `Name` varchar(1000) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `script_fetch`
--

INSERT INTO `script_fetch` (`id`, `Name`, `Email`, `Phone`, `Password`, `Address`) VALUES
(118, 'werew', 'werewr', 'ewrewr', 'ewrew', 'rewr');

-- --------------------------------------------------------

--
-- Table structure for table `snapshot`
--

CREATE TABLE `snapshot` (
  `Id` int(11) NOT NULL,
  `Image` varchar(20000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `Id` int(11) NOT NULL,
  `statename` varchar(1000) NOT NULL,
  `countryname` varchar(1000) NOT NULL,
  `country_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`Id`, `statename`, `countryname`, `country_id`) VALUES
(1, 'Berat', 'Albania', ''),
(2, 'Bulqize', 'Albania', ''),
(3, 'Elbasan', 'Albania', ''),
(4, 'Devoll', 'Albania', ''),
(5, 'Fier', 'Albania', ''),
(6, 'Delvine', 'Albania', ''),
(7, 'Dibre', 'Albania', ''),
(8, 'Durres', 'Albania', ''),
(9, 'Gramsh', 'Albania', ''),
(10, 'Has', 'Albania', ''),
(11, 'Gjirokaster', 'Albania', ''),
(12, 'Kavaje', 'Albania', ''),
(13, 'Kruje', 'Albania', ''),
(14, 'Kolonje', 'Albania', ''),
(15, 'Kucove', 'Albania', ''),
(16, 'Kukes', 'Albania', ''),
(17, 'Korce', 'Albania', ''),
(18, 'Kurbin', 'Albania', ''),
(19, 'Lezhe', 'Albania', ''),
(20, 'Lushnje', 'Albania', ''),
(21, 'Mallakaster', 'Albania', ''),
(22, 'Malsi e Madhe', 'Albania', ''),
(23, 'Mirdite', 'Albania', ''),
(24, 'Permet', 'Albania', ''),
(25, 'Pogradec', 'Albania', ''),
(26, 'Sarande', 'Albania', ''),
(27, 'Shkoder', 'Albania', ''),
(28, 'Librazhd', 'Albania', ''),
(29, 'Mat', 'Albania', ''),
(30, 'Peqin', 'Albania', ''),
(31, 'Puke', 'Albania', ''),
(32, 'Tepelene', 'Albania', ''),
(33, 'Skrapar', 'Albania', ''),
(34, 'Vlore', 'Albania', ''),
(35, 'Tropoje', 'Albania', ''),
(36, 'Tirane', 'Albania', ''),
(37, 'Badakhshan', 'Afghanistan', ''),
(38, 'Badgis', 'Afghanistan', ''),
(39, 'Balkh', 'Afghanistan', ''),
(40, 'Baglan', 'Afghanistan', ''),
(41, 'Farah', 'Afghanistan', ''),
(42, 'Herat', 'Afghanistan', ''),
(43, 'Bamiyan', 'Afghanistan', ''),
(44, 'Faryab', 'Afghanistan', ''),
(45, 'Hilmand', 'Afghanistan', ''),
(46, 'Jawzjan', 'Afghanistan', ''),
(47, 'Kabul', 'Afghanistan', ''),
(48, 'Khawst', 'Afghanistan', ''),
(49, 'Kunar', 'Afghanistan', ''),
(50, 'Gawr', 'Afghanistan', ''),
(51, 'Gazni', 'Afghanistan', ''),
(52, 'Kapisa', 'Afghanistan', ''),
(53, 'Lagman', 'Afghanistan', ''),
(54, 'Nangarhar', 'Afghanistan', ''),
(55, 'Paktika', 'Afghanistan', ''),
(56, 'Parwan', 'Afghanistan', ''),
(57, 'Qunduz', 'Afghanistan', ''),
(58, 'Nuristan', 'Afghanistan', ''),
(59, 'Nimruz', 'Afghanistan', ''),
(60, 'Lawghar', 'Afghanistan', ''),
(61, 'Samangan', 'Afghanistan', ''),
(62, 'Sar-e Pul', 'Afghanistan', ''),
(63, 'Takhar', 'Afghanistan', ''),
(64, 'Qandahar', 'Afghanistan', ''),
(65, 'Wardag', 'Afghanistan', ''),
(66, 'Paktiya', 'Afghanistan', ''),
(67, 'Zabul', 'Afghanistan', ''),
(68, 'Uruzgan', 'Afghanistan', ''),
(69, 'Adrar', 'Algeria', ''),
(70, 'al-Bayadh', 'Algeria', ''),
(71, 'Algiers', 'Algeria', ''),
(72, 'al-Aghwat', 'Algeria', ''),
(73, 'ash-Shalif', 'Algeria', ''),
(74, 'at-Tarif', 'Algeria', ''),
(75, 'Bashshar', 'Algeria', ''),
(76, 'al-Wad', 'Algeria', ''),
(77, 'Annabah', 'Algeria', ''),
(78, 'Batnah', 'Algeria', ''),
(79, 'Bijayah', 'Algeria', ''),
(80, 'Bumardas', 'Algeria', ''),
(81, 'Burj Bu Arririj', 'Algeria', ''),
(82, 'Biskrah', 'Algeria', ''),
(83, 'Blidah', 'Algeria', ''),
(84, 'Buirah', 'Algeria', ''),
(85, 'Ilizi', 'Algeria', ''),
(86, 'Jijili', 'Algeria', ''),
(87, 'Khanshalah', 'Algeria', ''),
(88, 'Masilah', 'Algeria', ''),
(89, 'Midyah', 'Algeria', ''),
(90, 'Milah', 'Algeria', ''),
(91, 'Muaskar', 'Algeria', ''),
(92, 'Mustaghanam', 'Algeria', ''),
(93, 'Ghalizan', 'Algeria', ''),
(94, 'Ghardayah', 'Algeria', ''),
(95, 'Naama', 'Algeria', ''),
(96, 'Oran', 'Algeria', ''),
(97, 'Ouargla', 'Algeria', ''),
(98, 'Qalmah', 'Algeria', ''),
(99, 'Sakikdah', 'Algeria', ''),
(100, 'Satif', 'Algeria', ''),
(101, 'Suq Ahras', 'Algeria', ''),
(102, 'Tamanghasat', 'Algeria', ''),
(103, 'Tibazah', 'Algeria', ''),
(104, 'Tibissah', 'Algeria', ''),
(105, 'Jilfah', 'Algeria', ''),
(106, 'Tilimsan', 'Algeria', ''),
(107, 'Tisamsilt', 'Algeria', ''),
(108, 'Tiyarat', 'Algeria', ''),
(109, 'Wahran', 'Algeria', ''),
(110, 'Warqla', 'Algeria', ''),
(111, 'Wilaya d Alger', 'Algeria', ''),
(112, 'Qustantinah', 'Algeria', ''),
(113, 'Tinduf', 'Algeria', ''),
(114, 'Wilaya de Bejaia', 'Algeria', ''),
(115, 'Umm-al-Bawaghi', 'Algeria', ''),
(116, 'Tizi Wazu', 'Algeria', ''),
(117, 'Wilaya de Constantine', 'Algeria', ''),
(118, 'Eastern', 'American Samoa', ''),
(119, 'Swains Island', 'American Samoa', ''),
(120, 'Western', 'American Samoa', ''),
(121, 'Encamp', 'Andorra', ''),
(122, 'Canillo', 'Andorra', ''),
(123, 'La Massana', 'Andorra', ''),
(124, 'Les Escaldes', 'Andorra', ''),
(125, 'Ordino', 'Andorra', ''),
(126, 'Sant Julia de Loria', 'Andorra', ''),
(127, 'Andorra la Vella', 'Andorra', ''),
(128, 'Bengo', 'Angola', ''),
(129, 'Benguela', 'Angola', ''),
(130, 'Bie', 'Angola', ''),
(131, 'Huila', 'Angola', ''),
(132, 'Kwanza Norte', 'Angola', ''),
(133, 'Kwanza Sul', 'Angola', ''),
(134, 'Cunene', 'Angola', ''),
(135, 'Cabinda', 'Angola', ''),
(136, 'Huambo', 'Angola', ''),
(137, 'Lunda Sul', 'Angola', ''),
(138, 'Moxico', 'Angola', ''),
(139, 'Namibe', 'Angola', ''),
(140, 'Uige', 'Angola', ''),
(141, 'Lunda Norte', 'Angola', ''),
(142, 'Luanda', 'Angola', ''),
(143, 'Kuando-Kubango', 'Angola', ''),
(144, 'Zaire', 'Angola', ''),
(145, 'Malanje', 'Angola', ''),
(146, 'Other Provinces', 'Anguilla', ''),
(147, 'Sector claimed by Argentina/Ch', 'Antarctica', ''),
(148, 'Sector claimed by Argentina/UK', 'Antarctica', ''),
(149, 'Sector claimed by France', 'Antarctica', ''),
(150, 'Sector claimed by New Zealand', 'Antarctica', ''),
(151, 'Sector claimed by Norway', 'Antarctica', ''),
(152, 'Unclaimed Sector', 'Antarctica', ''),
(153, 'Sector claimed by Australia', 'Antarctica', ''),
(154, 'Barbuda', 'Antigua And Barbuda', ''),
(155, 'Saint George', 'Antigua And Barbuda', ''),
(156, 'Saint John', 'Antigua And Barbuda', ''),
(157, 'Saint Mary', 'Antigua And Barbuda', ''),
(158, 'Saint Paul', 'Antigua And Barbuda', ''),
(159, 'Saint Peter', 'Antigua And Barbuda', ''),
(160, 'Saint Philip', 'Antigua And Barbuda', ''),
(161, 'Buenos Aires', 'Argentina', ''),
(162, 'Catamarca', 'Argentina', ''),
(163, 'Chaco', 'Argentina', ''),
(164, 'Cordoba', 'Argentina', ''),
(165, 'Corrientes', 'Argentina', ''),
(166, 'Entre Rios', 'Argentina', ''),
(167, 'Chubut', 'Argentina', ''),
(168, 'Formosa', 'Argentina', ''),
(169, 'Jujuy', 'Argentina', ''),
(170, 'Mendoza', 'Argentina', ''),
(171, 'Distrito Federal', 'Argentina', ''),
(172, 'Misiones', 'Argentina', ''),
(173, 'Rio Negro', 'Argentina', ''),
(174, 'Salta', 'Argentina', ''),
(175, 'San Juan', 'Argentina', ''),
(176, 'San Luis', 'Argentina', ''),
(177, 'Santa Cruz', 'Argentina', ''),
(178, 'Tierra del Fuego', 'Argentina', ''),
(179, 'Tucuman', 'Argentina', ''),
(180, 'La Rioja', 'Argentina', ''),
(181, 'Neuquen', 'Argentina', ''),
(182, 'La Pampa', 'Argentina', ''),
(183, 'Santa Fe', 'Argentina', ''),
(184, 'Santiago del Estero', 'Argentina', ''),
(185, 'Aragatsotn', 'Armenia', ''),
(186, 'Ararat', 'Armenia', ''),
(187, 'Gegharkunik', 'Armenia', ''),
(188, 'Lori', 'Armenia', ''),
(189, 'Shirak', 'Armenia', ''),
(190, 'Syunik', 'Armenia', ''),
(191, 'Tavush', 'Armenia', ''),
(192, 'Vayots Dzor', 'Armenia', ''),
(193, 'Yerevan', 'Armenia', ''),
(194, 'Stepanakert', 'Armenia', ''),
(195, 'Kotaik', 'Armenia', ''),
(196, 'Armavir', 'Armenia', ''),
(197, 'Aruba', 'Aruba', ''),
(198, 'New South Wales', 'Australia', ''),
(199, 'Queensland', 'Australia', ''),
(200, 'South Australia', 'Australia', ''),
(201, 'Tasmania', 'Australia', ''),
(202, 'Western Australia', 'Australia', ''),
(203, 'Victoria', 'Australia', ''),
(204, 'Bundesland Salzburg', 'Austria', ''),
(205, 'Bundesland Tirol', 'Austria', ''),
(206, 'Burgenland', 'Austria', ''),
(207, 'Carinthia', 'Austria', ''),
(208, 'Karnten', 'Austria', ''),
(209, 'Liezen', 'Austria', ''),
(210, 'Lower Austria', 'Austria', ''),
(211, 'Oberosterreich', 'Austria', ''),
(212, 'Salzburg', 'Austria', ''),
(213, 'Niederosterreich', 'Austria', ''),
(214, 'Schleswig-Holstein', 'Austria', ''),
(215, 'Steiermark', 'Austria', ''),
(216, 'Tirol', 'Austria', ''),
(217, 'Styria', 'Austria', ''),
(218, 'Upper Austria', 'Austria', ''),
(219, 'Vorarlberg', 'Austria', ''),
(220, 'Wien', 'Austria', ''),
(221, 'Bundesland Steiermark', 'Austria', ''),
(222, 'Abseron', 'Azerbaijan', ''),
(223, 'Ganja', 'Azerbaijan', ''),
(224, 'Kalbacar', 'Azerbaijan', ''),
(225, 'Ganca', 'Azerbaijan', ''),
(226, 'Baki Sahari', 'Azerbaijan', ''),
(227, 'Mil-Qarabax', 'Azerbaijan', ''),
(228, 'Priaraks', 'Azerbaijan', ''),
(229, 'Mugan-Salyan', 'Azerbaijan', ''),
(230, 'Nagorni-Qarabax', 'Azerbaijan', ''),
(231, 'Lankaran', 'Azerbaijan', ''),
(232, 'Sirvan', 'Azerbaijan', ''),
(233, 'Xacmaz', 'Azerbaijan', ''),
(234, 'Qazax', 'Azerbaijan', ''),
(235, 'Saki', 'Azerbaijan', ''),
(236, 'Naxcivan', 'Azerbaijan', ''),
(237, 'Andros', 'Bahamas The', ''),
(238, 'Berry Islands', 'Bahamas The', ''),
(239, 'Abaco', 'Bahamas The', ''),
(240, 'Biminis', 'Bahamas The', ''),
(241, 'Cat Island', 'Bahamas The', ''),
(242, 'Crooked Island', 'Bahamas The', ''),
(243, 'Eleuthera', 'Bahamas The', ''),
(244, 'Exuma and Cays', 'Bahamas The', ''),
(245, 'Acklins Island', 'Bahamas The', ''),
(246, 'Grand Bahama', 'Bahamas The', ''),
(247, 'Inagua Islands', 'Bahamas The', ''),
(248, 'Long Island', 'Bahamas The', ''),
(249, 'Ragged Island', 'Bahamas The', ''),
(250, 'Rum Cay', 'Bahamas The', ''),
(251, 'San Salvador', 'Bahamas The', ''),
(252, 'Mayaguana', 'Bahamas The', ''),
(253, 'New Providence', 'Bahamas The', ''),
(254, 'al-Manamah', 'Bahrain', ''),
(255, 'al-Muharraq', 'Bahrain', ''),
(256, 'Jidd Hafs', 'Bahrain', ''),
(257, 'Mahama', 'Bahrain', ''),
(258, 'Manama', 'Bahrain', ''),
(259, 'Sitrah', 'Bahrain', ''),
(260, 'Hidd', 'Bahrain', ''),
(261, 'Badiyah', 'Bahrain', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`id`, `first_name`, `last_name`, `email_id`, `contact_number`, `password`, `update_date`) VALUES
(16, 'vidyut', 'kumar', 'vidyrat006@gmail.com', '1234567890', 'e10adc3949ba59abbe56e057f20f883e', '2021-09-17 08:09:26'),
(17, 'fgdgdfg', 'eterte', '38vidyut@mostlikers.com', '5465645', 'd5a8511c903e997201d0cfae4b6d4ede', '2021-09-17 13:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `contact_no` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `last_name`, `email_id`, `contact_no`) VALUES
(21, 'dfsf', 'sdfs', 'fsf', 0),
(23, 'sdf', 'sdfs', 'fsdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_information`
--

CREATE TABLE `users_information` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_information`
--

INSERT INTO `users_information` (`id`, `name`, `email`, `position`, `dob`) VALUES
(28, 'karthick', 'karthick@mostlikers.com', 'Programmer', '1992-12-01'),
(29, 'Arun Kumar', 'arun@mostlikers.com', 'Author', '1991-05-18'),
(30, 'Naveen Kumar', 'naveen@mostlikers.com', 'Software Developer', '1993-11-14'),
(31, 'Haashini', 'haashini@mostlikers.com', 'UI Developer', '2000-07-14'),
(32, 'Balaji', 'balaji@mostlikers.com', 'Web Developer', '1991-03-12'),
(33, '456456', 'mondalbidyut38@gmail.com', '456456', '2021-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `WatchLength` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `WatchLength`) VALUES
(1, '16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coding_studio_data`
--
ALTER TABLE `coding_studio_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cs_phpvalidation`
--
ALTER TABLE `cs_phpvalidation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_upload`
--
ALTER TABLE `file_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_data`
--
ALTER TABLE `form_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_login`
--
ALTER TABLE `google_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `script_fetch`
--
ALTER TABLE `script_fetch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `snapshot`
--
ALTER TABLE `snapshot`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_information`
--
ALTER TABLE `users_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coding_studio_data`
--
ALTER TABLE `coding_studio_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `cs_phpvalidation`
--
ALTER TABLE `cs_phpvalidation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `file_upload`
--
ALTER TABLE `file_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form_data`
--
ALTER TABLE `form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `google_login`
--
ALTER TABLE `google_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `script_fetch`
--
ALTER TABLE `script_fetch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `snapshot`
--
ALTER TABLE `snapshot`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users_information`
--
ALTER TABLE `users_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
