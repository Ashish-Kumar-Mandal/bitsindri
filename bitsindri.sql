-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 12:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitsindri`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `acmt_id` int(11) NOT NULL,
  `file` varchar(50) NOT NULL,
  `usr_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `achievement`
--

INSERT INTO `achievement` (`acmt_id`, `file`, `usr_id`) VALUES
(2, '01032021171044.jpg', 1),
(3, '01032021171057.jpg', 1),
(4, '01032021171104.jpg', 1),
(5, '01032021171111.jpg', 1),
(6, '01032021171117.jpg', 1),
(7, '01032021171124.jpg', 1),
(8, '01032021171131.jpg', 1),
(9, '01032021171137.jpg', 1),
(10, '01032021171143.jpg', 1),
(11, '01032021171150.jpg', 1),
(12, '01032021171156.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `name`) VALUES
(1, 'Chemical'),
(2, 'Civil'),
(3, 'Computer Science'),
(4, 'Electrical'),
(5, 'Electronics & Communication'),
(6, 'Information Technology'),
(7, 'Mechanical'),
(8, 'Metallurgy'),
(9, 'Mining'),
(10, 'Production'),
(11, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `desn_id` int(3) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`desn_id`, `type`) VALUES
(1, 'Operator'),
(2, 'Student'),
(3, 'Assistant Professor'),
(4, 'Professor'),
(5, 'Professor & HOD');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `glr_id` int(11) NOT NULL,
  `file` varchar(50) NOT NULL,
  `usr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`glr_id`, `file`, `usr_id`) VALUES
(3, '02032021234903.jpg', 1),
(4, '02032021234910.jpg', 1),
(5, '02032021234915.jpg', 1),
(6, '02032021234921.jpg', 1),
(7, '02032021234927.jpg', 1),
(8, '02032021234931.jpg', 1),
(9, '02032021234937.jpg', 1),
(10, '02032021234944.jpg', 1),
(11, '02032021234949.jpg', 1),
(12, '02032021234954.jpg', 1),
(13, '02032021235014.jpg', 1),
(14, '02032021235021.jpg', 1),
(15, '02032021235029.jpg', 1),
(16, '02032021235036.jpg', 1),
(17, '02032021235043.jpg', 1),
(18, '02032021235051.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_id`, `name`, `email`, `subject`, `msg`, `created`) VALUES
(1, 'ashish', '666kmandal@gmail.com', 'test', 'msg here', '2021-03-09 15:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `link` varchar(300) DEFAULT NULL,
  `file` varchar(150) DEFAULT NULL,
  `start_date_time` timestamp NULL DEFAULT NULL,
  `end_date_time` timestamp NULL DEFAULT NULL,
  `usr_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `msg`, `link`, `file`, `start_date_time`, `end_date_time`, `usr_id`, `created`, `updated`) VALUES
(10, 'Notice for Diploma to Degree (Lateral Entry) Admission in B.Tech 3rd sem session 2020-21 through JCECEB, Ranchi 2nd counselling posted on 5-1-2021Notice for Diploma to Degree (Lateral Entry) Admission in B.Tech 3rd sem session 2020-21 through JCECEB, Ranchi 2nd counselling.', 'https://bitsindri.ac.in/docs/Notice%20for%20Diploma%20to%20Degree%20(Lateral%20Enry)%20Admission%20in%20B.Tech%203rd%20sem%20session%202020-21%20through%20JCECEB,%20Ranchi%202nd%20counselling.pdf', NULL, '2021-01-31 18:30:00', '2021-02-10 14:27:00', 1, '2021-02-26 14:27:52', '2021-02-26 14:27:52'),
(11, 'Notice for B.Tech 2nd sem form filling (JUT, Ranchi) session 2019-20- (posted on 8-1-2021)Notice for B.Tech 2nd sem form filling (JUT, Ranchi) session 2019-20.', 'https://bitsindri.ac.in/docs/Notice%20for%20B.Tech%202nd%20sem%20form%20filling%20(JUT,%20Ranchi)%20session%202019-20.pdf', NULL, '2021-02-01 18:30:00', '2021-03-07 14:29:00', 1, '2021-02-26 14:32:23', '2021-02-26 14:30:09'),
(12, 'Notice for Tentative date of B.Tech 3rd Semester Examination 2020', 'https://bitsindri.ac.in/docs/Notice%20for%20tentative%C2%A0date%20of%20B.Tech%203rd%20Semester%20Examination%202020.pdf', NULL, '2021-02-25 18:30:00', '2021-03-14 14:31:00', 1, '2021-02-26 14:31:29', '2021-02-26 14:31:29'),
(13, 'Consent for students of B TECH  3 rd and 4th year and M TECH 1st and 2nd year for residing in Hostel  (Posted on 25-2-2021)Consent for students of B TECH 3 rd and 4th year and M TECH 1st and 2nd year for residing in Hostel.', 'https://bitsindri.ac.in/docs/Consent%20for%20Hostels.pdf', NULL, '2021-02-24 18:30:00', '2021-03-14 14:33:00', 1, '2021-02-26 14:33:47', '2021-02-26 14:33:47'),
(14, 'Notice for GATE Scholarship of M.Tech 1st sem 2020-21 students  (Posted on 26-2-2021)Notice for GATE Scholarship of M.Tech 1st sem 2020-21 students.', 'https://bitsindri.ac.in/docs/gatescholarshipnotice-26-2-2021.PDF', NULL, '2021-02-28 18:30:00', '2021-03-14 14:35:00', 1, '2021-02-26 14:35:31', '2021-02-26 14:35:31'),
(16, 'college viode', 'https://www.youtube.com/watch?v=BS6mAxCwP0E', NULL, '2021-06-06 18:30:00', '2021-07-01 09:42:00', 1, '2021-06-07 09:42:21', '2021-06-07 09:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `sdr_id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `usr_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`sdr_id`, `file`, `heading`, `description`, `usr_id`) VALUES
(2, '01032021181736.jpg', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_contact`
--

CREATE TABLE `teacher_contact` (
  `tchr_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `mob` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `desn_fk` int(3) NOT NULL,
  `dept_fk` int(3) NOT NULL,
  `usr_fk` int(6) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_contact`
--

INSERT INTO `teacher_contact` (`tchr_id`, `name`, `mob`, `email`, `desn_fk`, `dept_fk`, `usr_fk`, `created`, `updated`) VALUES
(1, 'Dr. Md F Ansari', '9934394179', 'hod.it@bitsindri.ac.in', 5, 6, 1, '2021-03-09 17:08:03', '2021-03-09 17:08:03'),
(2, 'Dr. D K Singh', '9431445854', 'director@bitsindri.ac.in', 4, 6, 1, '2021-03-09 18:25:01', '2021-03-09 18:25:01'),
(3, ' Dr. S C Dutta ', '9431379679', 'scdutta@bitsindri.ac.in', 3, 6, 1, '2021-03-09 18:31:15', '2021-03-09 18:31:15'),
(4, 'Prof. Parbati Mahanto', '9470978517', 'pmahanto.it@bitsindri.ac.in', 3, 6, 1, '2021-03-09 18:32:00', '2021-03-09 18:32:00'),
(5, 'Prof. Rajiv Ranjan', '9507420028', 'rajivranjan.it@bitsindri.ac.in', 3, 6, 1, '2021-03-09 18:32:53', '2021-03-09 18:32:53'),
(6, 'Dr. Amit Kumar Gupta', '9835785852', 'hod.che@bitsindri.ac.in', 5, 1, 1, '2021-03-09 18:34:13', '2021-03-09 18:34:13'),
(7, 'Dr. Amar Kumar', '9334281501', 'akumar.che@bitsindri.ac.in', 3, 1, 1, '2021-03-09 18:34:51', '2021-03-10 05:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `usr_id` int(11) NOT NULL,
  `desn_fk` int(3) NOT NULL,
  `dept_fk` int(3) DEFAULT 0,
  `name` varchar(30) NOT NULL,
  `mobile` decimal(10,0) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`usr_id`, `desn_fk`, `dept_fk`, `name`, `mobile`, `email`, `password`, `updated`, `created`) VALUES
(1, 1, 11, 'Ashish Kumar Mandal', '8228972907', '666kmandal@gmail.com', '829bc05e9555023e3c988c5637fec5b2', '2021-02-26 19:24:30', '2021-02-26 19:24:30'),
(2, 2, 6, 'Ashish Kumar', '9155035586', 'abc@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2021-02-26 19:26:00', '2021-02-26 19:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `link` varchar(150) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `title`, `link`, `updated`, `created`) VALUES
(4, 'bit', 'https://youtu.be/7wQ9V7mBY0o', '2021-06-07 10:45:03', '2021-06-07 10:45:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`acmt_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`desn_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`glr_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`sdr_id`);

--
-- Indexes for table `teacher_contact`
--
ALTER TABLE `teacher_contact`
  ADD PRIMARY KEY (`tchr_id`),
  ADD KEY `desn_fk` (`desn_fk`),
  ADD KEY `dept_fk` (`dept_fk`),
  ADD KEY `usr_id` (`usr_fk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`usr_id`),
  ADD KEY `desn_fk` (`desn_fk`),
  ADD KEY `dept_fk` (`dept_fk`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement`
--
ALTER TABLE `achievement`
  MODIFY `acmt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `desn_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `glr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `sdr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_contact`
--
ALTER TABLE `teacher_contact`
  MODIFY `tchr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_contact`
--
ALTER TABLE `teacher_contact`
  ADD CONSTRAINT `teacher_contact_ibfk_1` FOREIGN KEY (`desn_fk`) REFERENCES `designation` (`desn_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_contact_ibfk_2` FOREIGN KEY (`dept_fk`) REFERENCES `department` (`dept_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_contact_ibfk_3` FOREIGN KEY (`usr_fk`) REFERENCES `user` (`usr_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`dept_fk`) REFERENCES `department` (`dept_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`desn_fk`) REFERENCES `designation` (`desn_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
