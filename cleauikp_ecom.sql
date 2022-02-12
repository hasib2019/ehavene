-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 12, 2022 at 01:04 PM
-- Server version: 10.3.32-MariaDB-log-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cleauikp_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_requests`
--

CREATE TABLE `agent_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `url`, `published`, `created_at`, `updated_at`) VALUES
(10, 'uploads/banners/pk7SEUuSIFTpRYkdGGhcpUXlVlo2icJPLkQxI6dV.jpg', '#', 1, '2021-11-22 02:04:55', '2021-11-22 02:05:04'),
(11, 'uploads/banners/aC2LhaYhkgQib36WW6pYMl0Y4eTRO4BZv0AEMDvS.jpg', '#', 1, '2021-11-22 02:05:32', '2021-11-22 02:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `create_by`, `created_at`, `updated_at`) VALUES
(9, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700986-min.jpg', 'www.geniusocean.com', 37, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-02-06 03:53:41', NULL),
(10, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700902-min.jpg', 'www.geniusocean.com', 14, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-03-06 03:54:21', NULL),
(12, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700821-min.jpg', 'www.geniusocean.com', 20, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-04-06 16:04:20', NULL),
(13, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700676-min.jpg', 'www.geniusocean.com', 58, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-05-06 16:04:36', NULL),
(14, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700595-min.jpg', 'www.geniusocean.com', 4, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-06-03 00:02:30', NULL),
(15, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700464-min.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-07-03 00:02:53', NULL),
(16, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700383-min.jpg', 'www.geniusocean.com', 9, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-08-03 00:03:14', NULL),
(17, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700322-min.jpg', 'www.geniusocean.com', 54, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:37', NULL),
(18, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700251-min.jpg', 'www.geniusocean.com', 169, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:59', NULL),
(20, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699136-min.jpg', 'www.geniusocean.com', 12, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-08-03 00:03:14', NULL),
(21, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699045-min.jpg', 'www.geniusocean.com', 38, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:37', NULL),
(22, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698954-min.jpg', 'www.geniusocean.com', 74, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:59', NULL),
(23, 7, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698893-min.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-08-03 00:03:14', NULL),
(24, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698832-min.jpg', 'www.geniusocean.com', 35, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:37', NULL);
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `create_by`, `created_at`, `updated_at`) VALUES
(25, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15557542831-min.jpg', 'www.geniusocean.com', 41, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:59', NULL),
(26, 2, 'asfsadfsadf', 'sdfsdaf', '1623839724Untitled-1.jpg', 'sdafasdfsd', 66, 1, NULL, NULL, 'asdfsdff', NULL, '2021-06-15 22:35:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Oil & gas', 'oil-and-gash', NULL, NULL),
(3, 'Manufacturing', 'manufacturing', NULL, NULL),
(4, 'Chemical Research', 'chemical_research', NULL, NULL),
(5, 'Agriculture', 'agriculture', NULL, NULL),
(6, 'Mechanical', 'mechanical', NULL, NULL),
(7, 'Entrepreneurs', 'entrepreneurs', NULL, NULL),
(8, 'Technology', 'technology', NULL, NULL),
(9, 'admin', 'android-charger', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `user_id`, `blog_id`, `name`, `email`, `comments`, `status`, `update_by`, `created_at`, `updated_at`) VALUES
(2, NULL, 26, 'Dr. Kodu', 'shakil7d7@gmail.com', 'test1223', 1, NULL, '2021-06-21 04:28:50', '2021-06-21 04:28:50'),
(6, NULL, 26, 'shakil', 'shakil@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 1, NULL, '2021-06-21 05:12:17', '2021-06-21 05:12:17'),
(7, NULL, 26, 'Dr fahim', 'shakil7c7@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 1, NULL, '2021-06-21 05:23:43', '2021-06-21 05:23:43'),
(8, NULL, 26, 'shakil', 'fahim.amin711@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 1, NULL, '2021-06-21 05:25:55', '2021-06-21 05:25:55'),
(9, NULL, 26, 'Supplier1', 'shakil@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 1, NULL, '2021-06-21 05:27:20', '2021-06-21 05:27:20'),
(11, NULL, 26, 'Dr fahim1', '111shakil7c7@gmail.com', '111 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha', 1, NULL, '2021-06-22 23:36:46', '2021-06-22 23:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `banner` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `created_at`, `updated_at`, `banner`, `featured`) VALUES
(145, 'Bioderma', 'uploads/brands/Bioderma_Biderma.png', '2021-05-17 08:24:50', '2022-02-12 22:11:20', 'uploads/brands/Bioderma_Bioderma 200.jpg', 1),
(146, 'Avene', 'uploads/brands/Avene_avene-logo.jpg', '2021-05-18 00:04:27', '2022-02-12 23:56:15', 'uploads/brands/Avene_Avene 200.png', 1),
(147, 'Babe Laboratorios', 'uploads/brands/Babe_Laboratorios_babe-laboratorios.jpg', '2021-06-06 00:02:08', '2022-02-13 00:01:17', 'uploads/brands/Babe_Laboratorios_Babe 2.jpg', 1),
(148, 'Natrol', 'uploads/brands/Natrol_natrol.jpg', '2021-06-06 00:03:41', '2022-02-13 00:06:01', 'uploads/brands/Natrol_Natrol Logo 2.jpg', 1),
(149, 'Nature Made', 'uploads/brands/Nature_Made_nature-made.jpg', '2021-06-06 00:05:21', '2022-02-13 00:08:50', 'uploads/brands/BmunyeX6PGFKGMTBqs2c09wn8Rzn6QTTI4BsBlYd.jpg', 1),
(150, 'Spring Valley', 'uploads/brands/Spring_Valley_spring-valley-company-log.jpg', '2021-06-06 00:06:58', '2022-02-12 23:03:20', 'uploads/brands/GQJdQRnXCtFdJWme2YThBVY0KlvB6FiBkmQxQdO9.jpg', 1),
(151, 'Ehavene', 'uploads/brands/Ehavene_Ehavene Logo JPG.jpg', '2021-06-06 00:08:12', '2022-02-12 22:17:29', 'uploads/brands/Wealzin_Wealzin 360.jpg', 1),
(152, 'Abbott', 'uploads/brands/Abbott_abbott-company-logo.jpg', '2021-06-06 00:09:40', '2022-02-12 22:54:39', 'uploads/brands/Opsonin_Pharma_Limited_Wealzin 360.jpg', 1),
(153, 'Nature\'s Bounty', 'uploads/brands/Nature\'s_Bounty_nature\'s-bounty-png-logo.jpg', '2021-06-06 00:11:10', '2022-02-12 22:27:32', 'uploads/brands/CeBojb6YqPB4KKouZ5MB1aE4ZfDIXtU6LgSetVHJ.jpg', 1),
(154, 'Vitabiotics', 'uploads/brands/Vitabiotics_Vitabiotics.jpg', '2021-06-06 00:13:56', '2022-02-13 00:20:20', 'uploads/brands/r1zYYTw4JT9d56pbsvjfvUSxcGCj7WoMGaUx5PgC.jpg', 1),
(155, 'Kirkland Signature', 'uploads/brands/Kirkland_Signature_kirkland-signature.jpg', '2021-06-06 00:39:27', '2022-02-13 00:15:39', 'uploads/brands/oWTQEHP2U8zV5BI3nrSq4dwohFumzMgc59gniaRy.jpg', 1),
(156, 'Johnson', 'uploads/brands/Johnson_johnsins.jpg', '2021-06-06 00:43:45', '2022-02-13 00:11:48', 'uploads/brands/WRUuz2culLTFE79ZfurtQFdZIln5P8zOHYPezdbA.png', 1),
(157, 'Fixderma', 'uploads/brands/Fixderma_fixderma.jpg', '2021-11-22 01:01:56', '2022-02-12 23:51:30', 'not-found.jpg', 1),
(158, 'Goli Nutrition', 'uploads/brands/Goli_Nutrition_goli-nutrition.jpg', '2021-11-22 02:32:21', '2022-02-12 23:40:56', 'uploads/brands/Goli_Nutrition_Goli Nutrition Logo.jpg', 1),
(159, 'youtheory', 'uploads/brands/youtheory_youtheory.jpg', '2021-11-22 07:56:11', '2022-02-12 23:36:13', 'uploads/brands/youtheory_youtheory Logo.jpg', 1),
(160, 'Neutrogena', 'uploads/brands/Neutrogena_neutrogena-logo.jpg', '2021-11-23 01:51:36', '2022-02-12 23:29:41', 'uploads/brands/Neutrogena_Neutrogena Logo.jpg', 1),
(161, 'Nestle', 'uploads/brands/Nestle_nestle-logo.jpg', '2021-11-23 01:54:33', '2022-02-12 23:09:44', 'uploads/brands/Nestle_Nestle.jpg', 1),
(162, 'The Body Shop', 'uploads/brands/The_Body_Shop_the-body-shop.jpg', '2022-02-13 01:57:32', '2022-02-13 01:57:32', 'not-found.jpg', 1),
(163, 'Centrum', 'uploads/brands/Centrum_centrum-logo.jpg', '2022-02-13 02:00:19', '2022-02-13 02:00:19', 'not-found.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '27', '2018-10-16 01:35:52', '2019-05-21 10:04:23'),
(2, 'system_default_currency', '27', '2018-10-16 01:36:58', '2019-03-13 01:49:19'),
(3, 'currency_format', '1', '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '1', '2018-10-17 03:01:59', '2019-01-20 02:10:55'),
(5, 'no_of_decimals', '2', '2018-10-17 03:01:59', '2021-08-03 07:58:21'),
(6, 'product_activation', '1', '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '0', '2018-10-28 07:44:16', '2021-06-02 04:22:31'),
(8, 'show_vendors', '1', '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '0', '2018-10-28 07:45:16', '2021-06-02 04:22:27'),
(10, 'stripe_payment', '0', '2018-10-28 07:45:47', '2021-08-02 08:18:18'),
(11, 'cash_payment', '1', '2018-10-28 07:46:05', '2019-01-24 03:40:18'),
(12, 'payumoney_payment', '0', '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '0', '2018-12-24 08:13:44', '2021-12-26 02:44:06'),
(14, 'paypal_sandbox', '1', '2019-01-16 12:44:18', '2019-01-16 12:44:18'),
(15, 'sslcommerz_sandbox', '0', '2019-01-16 12:44:18', '2021-10-12 17:06:20'),
(16, 'sslcommerz_payment', '1', '2019-01-24 09:39:07', '2021-06-10 00:55:10'),
(17, 'vendor_commission', '10', '2019-01-31 06:18:04', '2019-05-20 01:35:28'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"text\",\"label\":\"Products Type\"},{\"type\":\"file\",\"label\":\"Store Documents (eg: Trade License)\"}]', '2019-02-03 11:36:58', '2019-06-11 11:53:41'),
(19, 'google_analytics', '1', '2019-02-06 12:22:35', '2019-02-06 12:22:35'),
(20, 'facebook_login', '0', '2019-02-07 12:51:59', '2021-08-02 08:18:24'),
(21, 'google_login', '0', '2019-02-07 12:52:10', '2021-08-02 08:18:25'),
(22, 'twitter_login', '0', '2019-02-07 12:52:20', '2021-08-02 08:18:26'),
(23, 'payumoney_payment', '1', '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '1', '2019-04-15 11:45:04', '2021-06-06 05:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `banner`, `icon`, `featured`, `description`, `created_at`, `updated_at`) VALUES
(25, 'Medicated Items', 'uploads/categories/banner/medicen.jpg', 'uploads/categories/icon/medicen.jpg', 1, 'Medicated Care&nbsp;Medicated Care&nbsp;Medicated Care', '2021-11-22 17:16:25', '2021-11-23 04:16:25'),
(26, 'Baby & Toy\'s', 'uploads/categories/banner/skincare (1).jpg', 'uploads/categories/icon/skincare (1).jpg', 1, 'Unani Medicine', '2021-11-21 19:44:23', '2021-11-22 06:44:23'),
(27, 'Men\'s Care', 'uploads/categories/banner/Men\'s Care.jpg', 'uploads/categories/icon/Men\'s Care.jpg', 1, 'Ayurvedic Medicine', '2021-11-22 16:49:31', '2021-11-23 03:49:31'),
(28, 'Pet\'s Care', 'uploads/categories/banner/Pet\'s Care & Food\'s.jpg', 'uploads/categories/icon/Pet\'s Care & Food\'s.jpg', 1, 'Covid-19 Special', '2021-11-22 17:17:00', '2021-11-23 04:17:00'),
(29, 'Women\'s Care', 'uploads/categories/banner/lipstic.jpg', 'uploads/categories/icon/lipstic.jpg', 1, 'Women Care', '2021-11-22 17:17:21', '2021-11-23 04:17:21'),
(30, 'Health & Beauty', 'uploads/categories/banner/mecups.jpg', 'uploads/categories/icon/mecups.jpg', 1, 'Supplements and Vitamins', '2021-11-21 17:40:46', '2021-11-22 04:40:46'),
(31, 'Organic Product', 'uploads/categories/banner/Organic Product.jpg', 'uploads/categories/icon/Organic Product.jpg', 1, 'Baby and Mom care', '2021-11-21 17:55:52', '2021-11-22 04:55:52'),
(32, 'Foreign Food', 'uploads/categories/banner/Food & Ingredient.jpg', 'uploads/categories/icon/Food & Ingredient.jpg', 1, 'Devices', '2021-11-22 17:18:07', '2021-11-23 04:18:07'),
(33, 'Rare Item\'s', 'uploads/categories/banner/Rare Item\'s.jpg', 'uploads/categories/icon/Rare Item\'s.jpg', 1, 'Sexual Wellness', '2021-11-21 18:15:01', '2021-11-22 05:15:01'),
(34, 'Medical Devices', 'uploads/categories/banner/download-4-150x150.jpg', 'uploads/categories/icon/download-4-150x150.jpg', 1, 'Medical Equipment&nbsp;Medical Equipment', '2021-11-22 17:19:21', '2021-11-23 04:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'shakil', 'shakil333@gmail.com', 'test', NULL, NULL, '2021-06-07 05:18:56', '2021-06-07 05:18:56'),
(2, 'shakil', 'shakil333@gmail.com', 'test2', NULL, NULL, '2021-06-07 23:09:05', '2021-06-07 23:09:05'),
(3, 'Supplier2', 'shakil2@gmail.com', 'test3', NULL, NULL, '2021-06-07 23:10:26', '2021-06-07 23:10:26'),
(4, 'Gustavo Crain', 'gustavo@bestlocaldata.com', 'It is with sad regret to inform you that because of the Covid pandemic BestLocalData.com is shutting down at the end of the month.\r\n\r\nWe have lost family members and colleagues and have decided to shut down BestLocalData.com\r\n\r\nIt was a pleasure serving y', NULL, NULL, '2021-06-28 19:36:05', '2021-06-28 19:36:05'),
(5, 'Dora', 'armfield.dora49@gmail.com', 'Hello \r\n \r\nBody Revolution - Medico Postura™ Body Posture Corrector\r\nImprove Your Posture INSTANTLY!\r\n\r\nGet it while it\'s still 60% OFF!  FREE Worldwide Shipping!\r\n\r\nGet yours here: medicopostura.com\r\n \r\nThank You, \r\n \r\nDora\r\nContact Us', NULL, NULL, '2021-08-06 17:17:36', '2021-08-06 17:17:36'),
(6, 'Loyd Myres', 'loyd.myres@outlook.com', 'Hello, Apon Health - Online Drug House!\r\n\r\nWe offer qualitative organic SEO services for different types of web resources.\r\n\r\nOrganic SEO is a great marketing strategy to gain top 10 Google, especially for the small business websites.\r\n\r\nWith a small inve', NULL, NULL, '2021-09-11 19:18:50', '2021-09-11 19:18:50'),
(7, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'My name’s Eric and I just came across your website - aponhealth.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT', NULL, NULL, '2021-09-22 16:25:18', '2021-09-22 16:25:18'),
(8, 'Chris Hernandez', 'chris@capitalbusinessloans.xyz', 'Hello,\r\n\r\nIs the lack of working capital holding your business back? \r\n\r\nDon’t let things like bad credit or short time in business keep you from getting the funds you need.\r\n\r\nCapital Business Loans is a direct lender who will approve your loan today and', NULL, NULL, '2021-09-28 04:45:15', '2021-09-28 04:45:15'),
(9, 'Steve James', 'steve@explainervideos4u.xyz', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site aponhealth.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=zvGF7uRfH04\r\nhttps://www.youtube.com/watch?v=cZPsp217Iik\r\n', NULL, NULL, '2021-09-28 20:43:42', '2021-09-28 20:43:42'),
(10, 'Margie Nixon', 'johanfourieltd@gmail.com', 'Hello,\r\n\r\nMy name is Johan, I am a PHP programmer that specializes in data driven web applications.\r\n\r\nAnything related to PHP, MySQL, Data scraping etc. \r\n\r\nIf you have any custom jobs you can add me on skype to discuss your requirements.\r\n\r\nSkype: cmsde', NULL, NULL, '2021-10-01 01:33:17', '2021-10-01 01:33:17'),
(11, 'Austin Allen', 'austin@first-capital.xyz', 'Hello,\r\n\r\nDoes your business have all the working capital you need to grow the way you want?\r\n\r\nInstantly see how much you qualify for without affecting your credit or submitting\r\na single document.\r\n\r\nJust click on this link www.first-capital.xyz to get ', NULL, NULL, '2021-10-01 04:28:16', '2021-10-01 04:28:16'),
(12, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'My name’s Eric and I just came across your website - aponhealth.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT', NULL, NULL, '2021-10-03 11:28:34', '2021-10-03 11:28:34'),
(13, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'Hey, this is Eric and I ran across aponpharmacy.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads', NULL, NULL, '2021-10-07 18:24:00', '2021-10-07 18:24:00'),
(14, 'Austin Allen', 'austin@first-capital.xyz', 'Hello,\r\n\r\nDoes your business have all the working capital you need to grow the way you want?\r\n\r\nInstantly see how much you qualify for without affecting your credit or submitting\r\na single document.\r\n\r\nJust click on this link www.first-capital.xyz to get ', NULL, NULL, '2021-10-15 02:42:30', '2021-10-15 02:42:30'),
(15, 'RobertFoure', 'filehell63@gmail.com', 'What does Satoshi possess to offer brand new? \r\n \r\n<a href=https://rotf.lol/4dtwzu2b>https://tiny.one/bur6rmmd</a> \r\n \r\n \r\nFoldager Dale', NULL, NULL, '2022-01-27 23:55:40', '2022-01-27 23:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(18, 'BD', 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'U.S. Dollar', '$', 1.00000, 1, 'USD', '2018-10-09 11:35:08', '2018-10-17 05:50:52'),
(2, 'Australian Dollar', '$', 1.28000, 0, 'AUD', '2018-10-09 11:35:08', '2019-04-29 03:03:55'),
(5, 'Brazilian Real', 'R$', 3.25000, 0, 'BRL', '2018-10-09 11:35:08', '2019-04-29 03:05:32'),
(6, 'Canadian Dollar', '$', 1.27000, 0, 'CAD', '2018-10-09 11:35:08', '2019-04-29 03:05:34'),
(7, 'Czech Koruna', 'Kč', 20.65000, 0, 'CZK', '2018-10-09 11:35:08', '2019-04-29 03:05:51'),
(8, 'Danish Krone', 'kr', 6.05000, 0, 'DKK', '2018-10-09 11:35:08', '2019-04-29 03:05:49'),
(9, 'Euro', '€', 0.85000, 0, 'EUR', '2018-10-09 11:35:08', '2019-04-29 03:05:46'),
(10, 'Hong Kong Dollar', '$', 7.83000, 0, 'HKD', '2018-10-09 11:35:08', '2019-04-29 03:05:44'),
(11, 'Hungarian Forint', 'Ft', 255.24000, 0, 'HUF', '2018-10-09 11:35:08', '2019-04-29 03:05:39'),
(12, 'Israeli New Sheqel', '₪', 3.48000, 0, 'ILS', '2018-10-09 11:35:08', '2019-04-29 03:07:35'),
(13, 'Japanese Yen', '¥', 107.12000, 0, 'JPY', '2018-10-09 11:35:08', '2019-04-29 03:06:09'),
(14, 'Malaysian Ringgit', 'RM', 3.91000, 0, 'MYR', '2018-10-09 11:35:08', '2019-04-29 03:06:13'),
(15, 'Mexican Peso', '$', 18.72000, 0, 'MXN', '2018-10-09 11:35:08', '2019-04-29 03:06:17'),
(16, 'Norwegian Krone', 'kr', 7.83000, 0, 'NOK', '2018-10-09 11:35:08', '2019-04-29 03:06:21'),
(17, 'New Zealand Dollar', '$', 1.38000, 0, 'NZD', '2018-10-09 11:35:08', '2019-04-29 03:06:25'),
(18, 'Philippine Peso', '₱', 52.26000, 0, 'PHP', '2018-10-09 11:35:08', '2019-04-29 03:06:29'),
(19, 'Polish Zloty', 'zł', 3.39000, 0, 'PLN', '2018-10-09 11:35:08', '2019-04-29 03:06:33'),
(20, 'Pound Sterling', '£', 0.72000, 0, 'GBP', '2018-10-09 11:35:08', '2019-04-29 03:06:37'),
(21, 'Russian Ruble', 'руб', 55.93000, 0, 'RUB', '2018-10-09 11:35:08', '2019-04-29 03:06:40'),
(22, 'Singapore Dollar', '$', 1.32000, 0, 'SGD', '2018-10-09 11:35:08', '2019-04-29 03:06:45'),
(23, 'Swedish Krona', 'kr', 8.19000, 0, 'SEK', '2018-10-09 11:35:08', '2019-04-29 03:06:55'),
(24, 'Swiss Franc', 'CHF', 0.94000, 0, 'CHF', '2018-10-09 11:35:08', '2019-04-29 03:06:59'),
(26, 'Thai Baht', '฿', 31.39000, 0, 'THB', '2018-10-09 11:35:08', '2019-04-29 03:07:02'),
(27, 'Taka', '৳', 84.00000, 1, 'BDT', '2018-10-09 11:35:08', '2021-08-03 08:07:57'),
(28, 'Saudi riyal', 'SR', 22.38000, 0, 'SR', '2018-10-09 11:35:08', '2019-05-26 02:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 18, '2019-04-29 02:44:39', '2019-04-29 02:44:39'),
(12, 47, '2019-05-26 01:55:17', '2019-05-26 01:55:17'),
(58, 66, '2021-04-04 08:53:50', '2021-04-04 08:53:50'),
(59, 69, '2021-04-11 23:32:50', '2021-04-11 23:32:50'),
(60, 84, '2021-05-07 15:56:57', '2021-05-07 15:56:57'),
(61, 85, '2021-05-07 23:55:16', '2021-05-07 23:55:16'),
(62, 86, '2021-05-11 10:35:24', '2021-05-11 10:35:24'),
(63, 87, '2021-05-11 10:37:31', '2021-05-11 10:37:31'),
(64, 88, '2021-05-11 10:38:09', '2021-05-11 10:38:09'),
(65, 91, '2021-05-11 13:00:17', '2021-05-11 13:00:17'),
(66, 100, '2021-05-24 01:47:36', '2021-05-24 01:47:36'),
(67, 101, '2021-05-24 01:48:05', '2021-05-24 01:48:05'),
(68, 102, '2021-05-24 05:20:13', '2021-05-24 05:20:13'),
(69, 103, '2021-05-24 05:20:42', '2021-05-24 05:20:42'),
(70, 104, '2021-05-24 05:27:40', '2021-05-24 05:27:40'),
(71, 107, '2021-05-24 05:40:49', '2021-05-24 05:40:49'),
(72, 109, '2021-05-24 08:40:58', '2021-05-24 08:40:58'),
(73, 111, '2021-05-24 08:42:04', '2021-05-24 08:42:04'),
(74, 112, '2021-05-24 08:49:02', '2021-05-24 08:49:02'),
(75, 242, '2021-08-05 00:15:05', '2021-08-05 00:15:05'),
(76, 248, '2021-08-09 22:57:50', '2021-08-09 22:57:50'),
(77, 251, '2021-08-09 23:00:40', '2021-08-09 23:00:40'),
(78, 255, '2021-08-10 22:39:38', '2021-08-10 22:39:38'),
(79, 259, '2021-08-12 01:44:49', '2021-08-12 01:44:49'),
(80, 261, '2021-08-12 03:19:52', '2021-08-12 03:19:52'),
(81, 262, '2021-08-12 03:44:38', '2021-08-12 03:44:38'),
(82, 265, '2021-08-12 06:19:48', '2021-08-12 06:19:48'),
(83, 302, '2021-08-26 04:20:25', '2021-08-26 04:20:25'),
(84, 303, '2021-08-26 05:43:58', '2021-08-26 05:43:58'),
(85, 305, '2021-08-26 06:13:23', '2021-08-26 06:13:23'),
(86, 306, '2021-08-26 06:26:20', '2021-08-26 06:26:20'),
(87, 307, '2021-08-26 06:28:50', '2021-08-26 06:28:50'),
(88, 308, '2021-08-26 07:06:49', '2021-08-26 07:06:49'),
(89, 309, '2021-08-26 07:16:22', '2021-08-26 07:16:22'),
(90, 310, '2021-08-29 00:02:20', '2021-08-29 00:02:20'),
(91, 311, '2021-08-29 00:06:53', '2021-08-29 00:06:53'),
(92, 312, '2021-08-29 00:09:26', '2021-08-29 00:09:26'),
(93, 313, '2021-08-29 01:40:51', '2021-08-29 01:40:51'),
(94, 314, '2021-09-06 13:14:33', '2021-09-06 13:14:33'),
(95, 315, '2021-09-06 22:08:59', '2021-09-06 22:08:59'),
(96, 316, '2021-09-11 01:40:48', '2021-09-11 01:40:48'),
(97, 317, '2021-09-12 13:39:41', '2021-09-12 13:39:41'),
(98, 319, '2021-09-12 22:15:15', '2021-09-12 22:15:15'),
(99, 334, '2021-09-21 02:56:05', '2021-09-21 02:56:05'),
(100, 336, '2021-09-21 21:51:43', '2021-09-21 21:51:43'),
(101, 337, '2021-09-21 22:00:33', '2021-09-21 22:00:33'),
(102, 338, '2021-09-21 22:05:36', '2021-09-21 22:05:36'),
(103, 339, '2021-09-21 22:10:47', '2021-09-21 22:10:47'),
(104, 340, '2021-09-22 09:58:11', '2021-09-22 09:58:11'),
(105, 346, '2021-09-23 17:45:29', '2021-09-23 17:45:29'),
(106, 348, '2021-09-23 19:10:25', '2021-09-23 19:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) NOT NULL,
  `division_id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lon` varchar(15) DEFAULT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `url`) VALUES
(1, 1, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd'),
(2, 1, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd'),
(3, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd'),
(4, 1, 'Rangamati', 'রাঙ্গামাটি', NULL, NULL, 'www.rangamati.gov.bd'),
(5, 1, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd'),
(6, 1, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd'),
(7, 1, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd'),
(8, 1, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd'),
(9, 1, 'Coxsbazar', 'কক্সবাজার', NULL, NULL, 'www.coxsbazar.gov.bd'),
(10, 1, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd'),
(11, 1, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd'),
(12, 2, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd'),
(13, 2, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd'),
(14, 2, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd'),
(15, 2, 'Rajshahi', 'রাজশাহী', NULL, NULL, 'www.rajshahi.gov.bd'),
(16, 2, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd'),
(17, 2, 'Joypurhat', 'জয়পুরহাট', NULL, NULL, 'www.joypurhat.gov.bd'),
(18, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd'),
(19, 2, 'Naogaon', 'নওগাঁ', NULL, NULL, 'www.naogaon.gov.bd'),
(20, 3, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd'),
(21, 3, 'Satkhira', 'সাতক্ষীরা', NULL, NULL, 'www.satkhira.gov.bd'),
(22, 3, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd'),
(23, 3, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd'),
(24, 3, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd'),
(25, 3, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd'),
(26, 3, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd'),
(27, 3, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd'),
(28, 3, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd'),
(29, 3, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd'),
(30, 4, 'Jhalakathi', 'ঝালকাঠি', NULL, NULL, 'www.jhalakathi.gov.bd'),
(31, 4, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd'),
(32, 4, 'Pirojpur', 'পিরোজপুর', NULL, NULL, 'www.pirojpur.gov.bd'),
(33, 4, 'Barisal', 'বরিশাল', NULL, NULL, 'www.barisal.gov.bd'),
(34, 4, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd'),
(35, 4, 'Barguna', 'বরগুনা', NULL, NULL, 'www.barguna.gov.bd'),
(36, 5, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd'),
(37, 5, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd'),
(38, 5, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd'),
(39, 5, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd'),
(40, 6, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd'),
(41, 6, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd'),
(42, 6, 'Shariatpur', 'শরীয়তপুর', NULL, NULL, 'www.shariatpur.gov.bd'),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd'),
(44, 6, 'Tangail', 'টাঙ্গাইল', NULL, NULL, 'www.tangail.gov.bd'),
(45, 6, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd'),
(46, 6, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL, 'www.manikganj.gov.bd'),
(47, 6, 'Outside Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd'),
(48, 6, 'Dhaka-North', '', NULL, NULL, ''),
(49, 6, 'Dhaka-South', '', NULL, NULL, ''),
(50, 6, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd'),
(51, 6, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd'),
(52, 6, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd'),
(53, 6, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL, 'www.munshiganj.gov.bd'),
(54, 6, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd'),
(55, 7, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL, 'www.lalmonirhat.gov.bd'),
(56, 7, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd'),
(57, 7, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd'),
(58, 7, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd'),
(59, 7, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd'),
(60, 7, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd'),
(61, 7, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd'),
(62, 7, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd'),
(63, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd'),
(64, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd'),
(65, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd'),
(66, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `url`) VALUES
(1, 'Chattagram Division', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd'),
(2, 'Rajshahi Division', 'রাজশাহী', 'www.rajshahidiv.gov.bd'),
(3, 'Khulna Division', 'খুলনা', 'www.khulnadiv.gov.bd'),
(4, 'Barisal Division', 'বরিশাল', 'www.barisaldiv.gov.bd'),
(5, 'Sylhet Division', 'সিলেট', 'www.sylhetdiv.gov.bd'),
(6, 'Dhaka Division', 'ঢাকা', 'www.dhakadiv.gov.bd'),
(7, 'Rangpur Division', 'রংপুর', 'www.rangpurdiv.gov.bd'),
(8, 'Mymensingh Division', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointmnets`
--

CREATE TABLE `doctor_appointmnets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_start` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_count` bigint(10) NOT NULL DEFAULT 1,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_departments`
--

CREATE TABLE `doctor_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dep_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_education`
--

CREATE TABLE `doctor_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_experienceds`
--

CREATE TABLE `doctor_experienceds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_ratings`
--

CREATE TABLE `doctor_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patientId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratingNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_time_slots`
--

CREATE TABLE `doctor_time_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slot` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_time_slots`
--

INSERT INTO `doctor_time_slots` (`id`, `slot`, `created_at`, `updated_at`) VALUES
(1, '09:00', '2021-06-24 06:23:46', '2021-06-24 06:23:46'),
(2, '09:15', '2021-06-24 06:25:51', '2021-06-24 06:25:51'),
(3, '09:30', '2021-06-24 06:26:05', '2021-06-24 06:26:05'),
(4, '09:45', '2021-06-24 06:26:29', '2021-06-24 06:26:29'),
(5, '10:00', '2021-06-24 06:28:54', '2021-06-24 06:47:21'),
(6, '10:15', '2021-06-24 06:29:03', '2021-06-24 06:29:03'),
(7, '10:30', '2021-06-24 06:29:18', '2021-06-24 06:29:18'),
(8, '10:45', '2021-06-24 06:29:28', '2021-06-24 06:29:28'),
(9, '11:00', '2021-06-24 06:29:44', '2021-06-24 06:29:44'),
(10, '11:16', '2021-06-24 06:32:09', '2021-08-15 00:52:09'),
(11, '11:30', '2021-06-24 06:32:21', '2021-06-24 06:32:21'),
(12, '11:45', '2021-06-24 06:32:33', '2021-06-24 06:32:33'),
(13, '12:00', '2021-06-24 06:32:43', '2021-06-24 06:32:43'),
(14, '12:15', '2021-06-24 06:32:52', '2021-06-24 06:32:52'),
(15, '12:30', '2021-06-24 06:33:15', '2021-06-24 06:33:15'),
(16, '12:45', '2021-06-24 06:33:22', '2021-06-24 06:33:22'),
(17, '1:00', '2021-06-24 06:33:29', '2021-06-24 06:33:29'),
(18, '1:15', '2021-06-24 06:33:36', '2021-06-24 06:33:36'),
(19, '1:30', '2021-06-24 06:33:42', '2021-06-24 06:33:42'),
(20, '1:45', '2021-06-24 06:33:49', '2021-06-24 06:33:49'),
(22, '2:00', '2021-06-24 06:51:25', '2021-06-24 06:51:25'),
(23, '9:00', '2021-08-14 07:11:04', '2021-08-14 07:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `doc_departments`
--

CREATE TABLE `doc_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dep_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doc_departments`
--

INSERT INTO `doc_departments` (`id`, `dep_name`, `dep_code`, `dep_status`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(5, 'CARDIOLOGY', '211210', '1', '', '', '2021-06-19 04:56:44', '2021-06-19 04:57:20'),
(6, 'DENTRISTRY', '211211', '1', '', '', '2021-06-20 00:42:57', '2021-06-20 00:42:57'),
(7, 'GENERAL SURGERY', '211212', '1', '', '', '2021-06-20 00:43:39', '2021-06-20 00:43:39'),
(8, 'NEUROLOGY', '211213', '1', '', '', '2021-06-20 00:43:58', '2021-06-20 00:43:58'),
(9, 'ORTHOPEDICS', '211214', '1', '', '', '2021-06-20 00:44:19', '2021-06-20 00:44:19'),
(10, 'CORONA', '211215', '1', '', '', '2021-06-20 00:44:40', '2021-06-20 00:44:40'),
(11, 'DENTRISTRY', '211216', '0', '', '', '2021-08-14 09:30:47', '2021-08-14 09:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `email_templetes`
--

CREATE TABLE `email_templetes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `templete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templetes`
--

INSERT INTO `email_templetes` (`id`, `templete`, `description`, `footer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'invoice', '<h4>Dear,</h4><p>Greetings from Ehavene! Thank you for your order. </p><p style=\"padding-top: 10px\">We will contact you very soon to confirm your order. Enjoy hassle free shopping by avoiding traffic, bargaining and crowded shopping mall. You can shop', '<p style=\"padding-top: 10px\">    Sincerely,</p><p>Aponhealth Team</p><p>Helpline: +8801886335834</p><p>Find us on: http://www.aponhealth.com</p>', '1', '2021-07-05 02:28:59', '2021-07-05 02:28:59'),
(2, 'new_doctor', '<p>Hi dear,</p><p>Thanks for account create</p>', '<p>Sending Mail from Apon Health</p>', '1', '2021-07-05 04:52:40', '2021-07-05 04:52:40'),
(3, 'forget_password', '<h1>Forget Password Email</h1>You can reset password from bellow link:', '<br>    <p style=\"padding-top: 10px\">        Sincerely,    </p>    <p>Aponhealth Team</p>    <p>Helpline: +8801886335834</p>    <p>Find us on: http://www.aponhealth.com</p>', '1', '2021-07-05 04:54:54', '2021-07-05 04:54:54'),
(4, 'front_order', '<h4>Dear,</h4>    <p>Greetings from Apon Health! Thank you for your order. </p>    <p style=\"padding-top: 10px\">We will contact you very soon to confirm your order. Enjoy hassle free shopping by avoiding traffic, bargaining and crowded shopping mall. You ', '<br>    we will delivered your invoice soon.    <p style=\"padding-top: 10px\">        Sincerely,    </p>    <p>Aponhealth Team</p>    <p>Helpline: +8801886335834</p>    <p>Find us on: http://www.aponhealth.com</p>', '1', '2021-07-05 04:55:57', '2021-07-05 04:55:57'),
(5, 'medication_order', '<h4>Dear,</h4>    <p>Greetings from Apon Health! Thank you for your order. </p>    <p style=\"padding-top: 10px\">We will contact you very soon to confirm your order. Enjoy hassle free shopping by avoiding traffic, bargaining and crowded shopping mall. You ', '<br> we will delivered your invoice soon.    <p style=\"padding-top: 10px\">        Sincerely,    </p>    <p>Apon Health Team</p>    <p>Helpline: +8801886335834</p>    <p>Find us on: http://www.aponhealth.com</p>', '1', '2021-07-05 04:56:25', '2021-07-05 04:56:25'),
(6, 'welcome_new_user', '<p>Hi dear,</p><p>Thanks for account create</p>', '<br>    <p style=\"padding-top: 10px\">        Sincerely,    </p>    <p>Aponhealth Team</p>    <p>Helpline: +8801886335834</p>    <p>Find us on: http://www.aponhealth.com</p>', '1', '2021-07-05 04:57:29', '2021-07-05 04:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_brands`
--

CREATE TABLE `feature_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, '3', 'uploads/logo/yxMS4HepMvd7ZFr0A08l2nZts2kWygy2rBVDURUa.png', 'uploads/admin_logo/KHV9R8wLSxB0B4tv30JSrsEYi6ALRgZPn11vyWIZ.png', NULL, NULL, 'uploads/favicon/ixu59WXIsAnQHGAN99cMsXpn3crmRdDs46B07Qfp.png', 'Ehavane', 'La 53/1 Middle Badda Post Office Road Bir Uttam Rafiqul Islam Avenue', 'Fastest Online Shop in Bangladesh', '01755944277,01707063734', 'info@ehavane.com', 'https://www.facebook.com/ehavane/', 'https://www.instagram.com', 'https://twitter.com/Wealzinbd', NULL, NULL, '2022-02-12 15:41:12', '2022-02-13 02:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rm_id` int(20) DEFAULT NULL,
  `discription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark_date` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `source` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT 'Admin Message',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `user_id`, `rm_id`, `discription`, `remark`, `remark_date`, `photo`, `status`, `source`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 364, NULL, 'Charunta message', NULL, NULL, NULL, NULL, 'Customer Message', NULL, NULL, '2021-10-16 17:33:58', '2021-10-16 17:33:58'),
(7, 365, 8, 'test charunta 002', 'negative', '2021-10-22', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-16 17:49:58', '2021-10-16 18:02:10'),
(8, 365, 8, 'test test 002002', 'positive', '2021-10-16', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-16 17:52:06', '2021-10-16 18:02:10'),
(9, 365, NULL, 'Charunta address 002', NULL, NULL, NULL, NULL, 'Customer Message', NULL, NULL, '2021-10-16 18:02:08', '2021-10-16 18:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 19, '[\"274\"]', 1, '2021-05-29 08:08:54', '2021-05-29 08:08:54'),
(2, 20, '[\"275\"]', 1, '2021-05-29 08:09:40', '2021-05-29 08:09:40'),
(3, 21, '[\"276\"]', 1, '2021-05-29 08:09:56', '2021-05-29 08:09:56'),
(4, 18, '[\"273\"]', 1, '2021-05-29 08:10:09', '2021-05-29 08:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(11, 'default', '{\"uuid\":\"d76f3cd2-bf2b-4acf-9eb5-6c5f11337544\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-113333\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-113333.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-113333.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622633621, 1622633621),
(12, 'default', '{\"uuid\":\"10902352-d473-4ea9-98f8-fd803c09cf29\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-114213\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-114213.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-114213.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622634139, 1622634139),
(13, 'default', '{\"uuid\":\"c4c42edf-49f8-48b1-add8-7e66cdc4a13d\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-114939\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-114939.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-114939.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622634587, 1622634587),
(14, 'default', '{\"uuid\":\"c486e958-1e3f-421c-9392-875054dacad6\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-115056\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-115056.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-115056.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622634675, 1622634675),
(15, 'default', '{\"uuid\":\"3e22b602-2945-46f4-ab29-861db28ebaba\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-115423\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-115423.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-115423.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622634873, 1622634873),
(16, 'default', '{\"uuid\":\"33d14909-dadf-474f-a963-921bb241f147\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-120415\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-120415.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-120415.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622635473, 1622635473),
(17, 'default', '{\"uuid\":\"7275d4d8-5c78-46ef-a43a-c8d19bb30248\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-120511\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-120511.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-120511.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622635517, 1622635517),
(18, 'default', '{\"uuid\":\"e4b3966f-67ae-49ae-961b-20fe50b626c2\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-120717\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-120717.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-120717.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622635652, 1622635652),
(19, 'default', '{\"uuid\":\"fa9a53ba-7f78-4789-be39-c98174777dd9\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-123847\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-123847.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-123847.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622637533, 1622637533);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, '2019-01-20 12:13:20', '2021-11-22 02:16:10'),
(4, 'Arabic', 'sa', 1, '2019-04-29 03:47:40', '2019-05-24 01:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `softcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hardcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`id`, `softcode`, `hardcode`, `image`, `details`, `sort_details`, `updated_by`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'sales_commission', '15', '1623133745828121.jpg', NULL, 'customer commission', NULL, '71', NULL, '2021-06-08 00:29:05', '2021-09-21 00:28:31'),
(4, 'ref_commission', '12', '1623145103477908.jpg', NULL, 'sales_commission', NULL, '71', NULL, '2021-06-08 03:38:23', '2021-09-21 00:15:53'),
(6, 'discount', '10', '1623145103477908.jpg', NULL, 'product_discount', NULL, '71', NULL, '2021-10-11 03:04:08', '2021-10-12 18:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `medications`
--

CREATE TABLE `medications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guest_id` bigint(20) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `grand_total` double(8,2) DEFAULT NULL,
  `code` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `meduserorder` tinyint(1) DEFAULT 0,
  `upcoming` tinyint(1) DEFAULT NULL,
  `upcoming_date` date DEFAULT NULL,
  `confirm_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medications`
--

INSERT INTO `medications` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `payment_status`, `payment_details`, `shipping_cost`, `grand_total`, `code`, `date`, `viewed`, `meduserorder`, `upcoming`, `upcoming_date`, `confirm_by`, `confirm_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(359, 332, NULL, '{\"name\":\"hasib\",\"email\":\"hasib.2030.hu@gmail.com\",\"phone\":\"01618356180\",\"address\":\"217 3rd colony, lalkuthi, Mirpur-1\",\"region\":\"Dhaka Division\",\"city\":\"Dhaka-North\",\"area\":\"Mirpur\",\"post_code\":\"1216\"}', 'Cash On Delivery', 'unpaid', NULL, 50.00, 2390.00, '20211201-035442', 1638295200, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-12-01 20:55:04', '2021-12-01 20:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `medication_counts`
--

CREATE TABLE `medication_counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medication_details`
--

CREATE TABLE `medication_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medication_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medication_details`
--

INSERT INTO `medication_details` (`id`, `medication_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(868, 359, 332, 49, NULL, '890', NULL, NULL, 1, NULL, NULL, '2021-12-01 20:55:04', '2021-12-01 20:55:04'),
(869, 359, 332, 21, NULL, '1450', NULL, NULL, 1, NULL, NULL, '2021-12-01 20:55:04', '2021-12-01 20:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `medication_users`
--

CREATE TABLE `medication_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `patient_id`, `image`, `sms`, `read`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(26, 319, NULL, NULL, 'I need help...', '1', '319', NULL, '2021-09-12 22:29:43', '2021-09-12 22:29:43'),
(27, 319, 65, NULL, 'What kind of help do you need?', '1', '65', NULL, '2021-09-12 22:32:55', '2021-09-12 22:32:55'),
(28, 319, NULL, NULL, 'Thanks.. got it.. ..', '1', '319', NULL, '2021-09-12 22:33:24', '2021-09-12 22:33:24'),
(29, 333, NULL, NULL, 'hlw', '1', '333', NULL, '2021-09-21 03:08:15', '2021-09-21 03:08:15'),
(30, 332, NULL, NULL, 'hi', '1', '332', NULL, '2021-10-29 06:13:37', '2021-10-29 06:13:37'),
(31, 332, NULL, NULL, 'how are you', '1', '332', NULL, '2021-10-29 06:14:53', '2021-10-29 06:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_04_29_110825_table_extra_brand_field_create', 2),
(5, '2019_08_19_000000_create_failed_jobs_table', 3),
(10, '2021_05_03_130738_create_medication_counts_table', 6),
(11, '2021_05_07_172247_create_patient_behalves_table', 7),
(12, '2021_05_09_075547_create_medication_users_table', 8),
(13, '2021_04_26_202544_create_medications_table', 9),
(17, '2021_05_09_111023_create_medication_details_table', 10),
(18, '2021_05_12_230115_create_jobs_table', 11),
(19, '2021_05_18_074227_create_messages_table', 12),
(21, '2021_05_24_153806_create_histories_table', 13),
(23, '2021_06_07_105949_create_contacts_table', 15),
(25, '2021_06_14_092403_create_blog_categories_table', 16),
(26, '2021_06_14_093022_create_blogs_table', 16),
(38, '2021_06_17_060942_create_doc_departments_table', 20),
(40, '2021_06_18_202615_create_doctor_departments_table', 21),
(41, '2021_06_16_202843_create_doctor_ratings_table', 22),
(42, '2021_06_16_203023_create_doctor_experienceds_table', 22),
(43, '2021_06_16_203124_create_doctor_education_table', 22),
(45, '2021_06_21_094513_create_blog_comments_table', 23),
(47, '2021_06_16_203237_create_doctor_appointmnets_table', 24),
(48, '2021_06_24_104203_create_doctor_time_slots_table', 25),
(49, '2021_04_28_100759_create_prescription_images_table', 26),
(52, '2021_06_28_075503_create_request_orders_table', 27),
(54, '2021_07_05_055754_create_email_templetes_table', 28),
(56, '2021_08_01_220301_create_mobile_verifies_table', 29),
(57, '2021_08_04_142102_create_shipping_methods_table', 30),
(58, '2021_08_05_103455_create_shipping_addesses_table', 31),
(60, '2021_08_05_113028_create_special_offers_table', 32);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_verifies`
--

CREATE TABLE `mobile_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_verifies`
--

INSERT INTO `mobile_verifies` (`id`, `user_id`, `code`, `phone`, `created_at`, `updated_at`) VALUES
(17, NULL, '4550', '01738356180', '2021-08-07 07:13:11', '2021-08-07 07:13:11'),
(54, 324, '3278', NULL, '2021-09-18 03:21:15', '2021-09-18 03:21:15'),
(76, NULL, '3033', '01726004037', '2021-10-03 22:27:02', '2021-10-03 22:27:02'),
(79, NULL, '4131', '01818004037', '2021-10-04 05:06:58', '2021-10-04 05:06:58'),
(80, 356, '3757', NULL, '2021-10-11 07:26:54', '2021-10-11 07:26:54'),
(87, 366, '2689', NULL, '2021-11-22 08:18:20', '2021-11-22 08:18:20'),
(88, 367, '4153', NULL, '2021-11-25 05:43:33', '2021-11-25 05:43:33'),
(89, 368, '2272', NULL, '2021-11-27 04:04:26', '2021-11-27 04:04:26'),
(92, NULL, '4221', '01913331106', '2022-01-18 23:34:50', '2022-01-18 23:34:50'),
(93, NULL, '1629', '01911695556', '2022-02-02 01:45:12', '2022-02-02 01:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `grand_total` double(8,2) DEFAULT NULL,
  `discount` double(8,2) DEFAULT 0.00,
  `code` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(20) NOT NULL,
  `complain` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `meduserorder` tinyint(1) DEFAULT 0,
  `upcoming` tinyint(1) DEFAULT NULL,
  `upcoming_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `payment_status`, `delivery_status`, `payment_details`, `shipping_cost`, `grand_total`, `discount`, `code`, `date`, `complain`, `viewed`, `meduserorder`, `upcoming`, `upcoming_date`, `created_at`, `updated_at`) VALUES
(1, 332, NULL, '{\"name\":\"hasib\",\"email\":null,\"phone\":\"01618356180\",\"address\":\"217 3rd colony, lalkuthi, Mirpur-1\",\"region\":\"Dhaka Division\",\"city\":\"Dhaka-North\",\"area\":\"Mirpur\",\"post_code\":\"1216\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'paid', 'on_delivery', NULL, 50.00, 1490.00, 160.00, '20211121-100551', 1637431200, NULL, 1, 0, 0, NULL, '2021-11-22 03:05:51', '2021-11-30 03:26:02'),
(2, 332, NULL, '{\"name\":\"hasib\",\"email\":null,\"phone\":\"01618356180\",\"address\":\"217 3rd colony, lalkuthi, Mirpur-1\",\"region\":\"Dhaka Division\",\"city\":\"Dhaka-North\",\"area\":\"Mirpur\",\"post_code\":\"1216\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'paid', 'rejected', NULL, 50.00, 1490.00, 160.00, '20211125-125155', 1637776800, NULL, 1, 0, 0, NULL, '2021-11-25 05:51:55', '2021-12-13 03:11:13'),
(3, 379, NULL, '{\"name\":null,\"email\":\"admin@gmail.com\",\"phone\":\"01755944277\",\"address\":\"La 53\\/1 Middel Badda Dhaka 1212\",\"region\":\"Dhaka Division\",\"city\":\"Dhaka-North\",\"area\":\"Badda\",\"post_code\":\"1212\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 3501.50, 383.50, '20211212-093950', 1639245600, NULL, 0, 0, 0, NULL, '2021-12-13 02:39:50', '2021-12-13 02:39:50'),
(4, 379, NULL, '{\"name\":null,\"email\":\"admin@gmail.com\",\"phone\":\"01755944277\",\"address\":\"La 53\\/1 Middel Badda Dhaka 1212\",\"region\":\"Dhaka Division\",\"city\":\"Dhaka-North\",\"area\":\"Badda\",\"post_code\":\"1212\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 3020.00, 330.00, '20211212-094317', 1639245600, NULL, 1, 0, 0, NULL, '2021-12-13 02:43:17', '2021-12-14 01:40:56'),
(5, 379, NULL, '{\"name\":null,\"email\":null,\"phone\":\"01755944277\",\"address\":\"La 53\\/1 Middel Badda Dhaka 1212\",\"region\":\"Dhaka Division\",\"city\":\"Dhaka-North\",\"area\":\"Badda\",\"post_code\":\"1212\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 4631.00, 509.00, '20220108-045834', 1641578400, NULL, 0, 0, 0, NULL, '2022-01-08 21:58:34', '2022-01-08 21:58:34'),
(6, 385, NULL, '{\"name\":null,\"email\":null,\"phone\":\"01674437137\",\"address\":\"dhaka\",\"region\":\"Chattagram Division\",\"city\":\"Khagrachhari\",\"area\":\"Manikchari\",\"post_code\":\"9797\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 120.00, 1051.50, 103.50, '20220111-125510', 1641837600, NULL, 0, 0, 0, NULL, '2022-01-11 05:55:10', '2022-01-11 05:55:10'),
(7, 385, NULL, '{\"name\":null,\"email\":null,\"phone\":\"01674437137\",\"address\":\"dhaka\",\"region\":\"Chattagram Division\",\"city\":\"Khagrachhari\",\"area\":\"Manikchari\",\"post_code\":\"9797\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 120.00, 1533.00, 157.00, '20220111-125947', 1641837600, NULL, 0, 0, 0, NULL, '2022-01-11 05:59:47', '2022-01-11 05:59:47'),
(8, 367, NULL, '{\"name\":null,\"email\":null,\"phone\":\"01674437137\",\"address\":\"Dhaka\",\"region\":\"Chattagram Division\",\"city\":\"Khagrachhari\",\"area\":\"Ramgarh\",\"post_code\":\"1212\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 120.00, 1560.00, 160.00, '20220113-071028', 1642010400, NULL, 0, 0, 0, NULL, '2022-01-13 12:10:28', '2022-01-13 12:10:29'),
(9, NULL, 743073, '{\"name\":\"hasib09\",\"email\":\"hasib.9437.hu@gmail.com\",\"phone\":\"01738356180\",\"address\":\"217 3rd colony, lalkuthi, Mirpur-1\",\"region\":null,\"city\":\"Dhaka\",\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 2980.00, 320.00, '20220114-030336', 1642096800, NULL, 0, 0, 0, NULL, '2022-01-14 08:03:36', '2022-01-14 08:03:36'),
(10, 332, NULL, '{\"name\":\"hasib\",\"email\":\"hasib.2030.hu@gmail.com\",\"phone\":\"01618356180\",\"address\":\"217 3rd colony, lalkuthi, Mirpur-1\",\"region\":\"Dhaka Division\",\"city\":\"Dhaka-North\",\"area\":\"Mirpur\",\"post_code\":\"1216\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 828.50, 86.50, '20220114-030417', 1642096800, NULL, 0, 0, 0, NULL, '2022-01-14 08:04:17', '2022-01-14 08:04:17'),
(11, NULL, 613651, '{\"name\":\"test Man\",\"email\":\"testman@gmail.com\",\"phone\":\"01674437137\",\"address\":\"Dhaka\",\"region\":null,\"city\":\"Inside Dhaka\",\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 1490.00, 160.00, '20220114-101647', 1642096800, NULL, 0, 0, 0, NULL, '2022-01-14 15:16:47', '2022-01-14 15:16:47'),
(12, NULL, 678786, '{\"name\":\"Md Hasan\",\"email\":\"shibly@gmail.com\",\"phone\":\"01911695556\",\"address\":\"Gulshan\",\"region\":null,\"city\":\"Dhaka\",\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 950.00, 100.00, '20220114-124409', 1642096800, NULL, 0, 0, 0, NULL, '2022-01-14 17:44:09', '2022-01-14 17:44:09'),
(13, NULL, 445980, '{\"name\":\"test name check\",\"email\":\"test@gmail.com\",\"phone\":\"01674437137\",\"address\":\"dhaka\",\"region\":null,\"city\":\"dhaka\",\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 2588.00, 282.00, '20220115-031831', 1642183200, NULL, 1, 0, 0, NULL, '2022-01-15 20:18:31', '2022-01-19 01:58:33'),
(14, 379, NULL, '{\"name\":\"Ehavene.com\",\"email\":\"medihavene@gmail.com\",\"phone\":\"01755944277\",\"address\":\"La 53\\/1 Middel Badda Dhaka 1212\",\"region\":\"Dhaka Division\",\"city\":\"Dhaka-North\",\"area\":\"Badda\",\"post_code\":\"1212\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 2930.00, 320.00, '20220117-110554', 1642356000, NULL, 0, 0, 0, NULL, '2022-01-18 04:05:54', '2022-01-18 04:05:54'),
(15, NULL, 599114, '{\"name\":\"Md. Hasib Uzzaman\",\"email\":\"hasib.9437.hu@gmail.com\",\"phone\":\"01618356180\",\"address\":\"217 3rd colony, lalkuthi, Mirpur-1\",\"region\":null,\"city\":\"Dhaka\",\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'complain', NULL, 50.00, 4145.00, 455.00, '20220118-055824', 1642442400, 'this is emergency product', 1, 0, 0, NULL, '2022-01-18 22:58:24', '2022-01-18 23:01:28'),
(16, NULL, 605917, '{\"name\":\"Md Siam\",\"email\":\"siamahmed2784@gmail.com\",\"phone\":\"01714629121\",\"address\":\"Gulshan\",\"region\":null,\"city\":\"Dhaka\",\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 338.00, 32.00, '20220118-060714', 1642442400, NULL, 1, 0, 0, NULL, '2022-01-18 23:07:14', '2022-01-19 01:58:10'),
(17, NULL, 802682, '{\"name\":\"tanzirnur\",\"email\":\"tanzin@gamil.com\",\"phone\":\"01674437137\",\"address\":\"dhaka,Bangladesh\",\"region\":null,\"city\":\"Mohammadpur,Dhaka\",\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 981.50, 103.50, '20220118-090025', 1642442400, NULL, 1, 0, 0, NULL, '2022-01-19 02:00:25', '2022-01-19 02:01:00'),
(18, NULL, 172733, '{\"name\":\"Tanzir\",\"email\":\"tanzirnur@gmail.com\",\"phone\":\"01674437137\",\"address\":\"Dhaka\",\"region\":null,\"city\":null,\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 981.50, 103.50, '20220119-081025', 1642528800, NULL, 1, 0, 0, NULL, '2022-01-20 01:10:25', '2022-01-20 01:11:52'),
(19, 392, NULL, '{\"name\":\"test\",\"email\":\"dev@gmail.com\",\"phone\":\"01674437137\",\"address\":\"Dhaka\",\"region\":null,\"city\":null,\"area\":null,\"post_code\":null,\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 1540.00, 160.00, '20220119-084310', 1642528800, NULL, 0, 0, 0, NULL, '2022-01-20 01:43:10', '2022-01-20 01:43:10'),
(20, 392, NULL, '{\"name\":\"test\",\"email\":\"dev@gmail.com\",\"phone\":\"01674437137\",\"address\":\"Dhaka\",\"region\":null,\"city\":null,\"area\":null,\"post_code\":null,\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 1031.50, 103.50, '20220120-125904', 1642615200, NULL, 0, 0, 0, NULL, '2022-01-20 05:59:04', '2022-01-20 05:59:04'),
(21, NULL, 517631, '{\"name\":\"Ehavene\",\"email\":\"tanzirnur@gmail.com\",\"phone\":\"01674437137\",\"address\":\"Mohammadpur,Dhaka,Bangladesh\",\"region\":null,\"city\":null,\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 1490.00, 160.00, '20220120-011239', 1642615200, NULL, 0, 0, 0, NULL, '2022-01-20 06:12:39', '2022-01-20 06:12:39'),
(22, NULL, 254687, '{\"name\":\"Ehavene\",\"email\":\"tanzirnur@gmail.com\",\"phone\":\"01674437137\",\"address\":\"Mohammadpur,Dhaka,Bangladesh\",\"region\":null,\"city\":null,\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 50.00, 0.00, '20220120-011326', 1642615200, NULL, 0, 0, 0, NULL, '2022-01-20 06:13:26', '2022-01-20 06:13:26'),
(23, NULL, 688325, '{\"name\":\"test\",\"email\":\"dev@gmail.com\",\"phone\":\"01674437137\",\"address\":\"Dhaka\",\"region\":null,\"city\":null,\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 1540.00, 160.00, '20220120-012744', 1642615200, NULL, 1, 0, 0, NULL, '2022-01-20 06:27:44', '2022-01-20 06:52:20'),
(24, NULL, 202330, '{\"name\":\"tanzir\",\"email\":\"tanzirnur@gmail.com\",\"phone\":\"01674437137\",\"address\":\"Dhaka\",\"region\":null,\"city\":null,\"area\":null,\"post_code\":null,\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 1220.00, 130.00, '20220201-124223', 1643652000, NULL, 1, 0, 0, NULL, '2022-02-01 05:42:23', '2022-02-12 06:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 1, 65, 2, 'France-200ml', 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-11-22 03:05:51', '2021-11-22 03:05:51'),
(2, 2, 65, 1, 'France-200ml', 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-11-25 05:51:56', '2021-11-25 05:51:56'),
(3, 3, 65, 15, NULL, 1570.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-13 02:39:50', '2021-12-13 02:39:50'),
(4, 3, 65, 31, NULL, 1230.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-13 02:39:50', '2021-12-13 02:39:50'),
(5, 3, 65, 3, 'Usa-20gm', 1035.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-13 02:39:50', '2021-12-13 02:39:50'),
(6, 4, 65, 39, NULL, 1400.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-13 02:43:17', '2021-12-13 02:43:17'),
(7, 4, 65, 40, NULL, 1900.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-13 02:43:17', '2021-12-13 02:43:17'),
(8, 5, 65, 49, NULL, 890.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-08 21:58:34', '2022-01-08 21:58:34'),
(9, 5, 65, 7, NULL, 4200.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-08 21:58:34', '2022-01-08 21:58:34'),
(10, 6, 65, 3, NULL, 1035.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-11 05:55:10', '2022-01-11 05:55:10'),
(11, 7, 65, 15, NULL, 1570.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-11 05:59:47', '2022-01-11 05:59:47'),
(12, 8, 65, 2, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-13 12:10:29', '2022-01-13 12:10:29'),
(13, 9, 65, 2, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-14 08:03:36', '2022-01-14 08:03:36'),
(14, 9, 65, 1, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-14 08:03:36', '2022-01-14 08:03:36'),
(15, 10, 65, 4, NULL, 865.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-14 08:04:17', '2022-01-14 08:04:17'),
(16, 11, 65, 2, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-14 15:16:47', '2022-01-14 15:16:47'),
(17, 12, 65, 36, NULL, 1000.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-14 17:44:09', '2022-01-14 17:44:09'),
(18, 13, 65, 2, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-15 20:18:31', '2022-01-15 20:18:31'),
(19, 13, 65, 50, NULL, 1220.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-15 20:18:31', '2022-01-15 20:18:31'),
(20, 14, 65, 1, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-18 04:05:54', '2022-01-18 04:05:54'),
(21, 14, 65, 1, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-18 04:05:54', '2022-01-18 04:05:54'),
(22, 15, 65, 40, NULL, 1900.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-18 22:58:24', '2022-01-18 22:58:24'),
(23, 15, 65, 44, NULL, 1050.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-18 22:58:24', '2022-01-18 22:58:24'),
(24, 15, 65, 2, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-18 22:58:24', '2022-01-18 22:58:24'),
(25, 16, 65, 18, NULL, 320.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-18 23:07:14', '2022-01-18 23:07:14'),
(26, 17, 65, 3, NULL, 1035.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-19 02:00:25', '2022-01-19 02:00:25'),
(27, 18, 65, 3, NULL, 1035.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-20 01:10:25', '2022-01-20 01:10:25'),
(28, 19, 65, 2, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-20 01:43:10', '2022-01-20 01:43:10'),
(29, 20, 65, 3, NULL, 1035.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-20 05:59:04', '2022-01-20 05:59:04'),
(30, 21, 65, 2, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-20 06:12:39', '2022-01-20 06:12:39'),
(31, 23, 65, 2, NULL, 1600.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-01-20 06:27:44', '2022-01-20 06:27:44'),
(32, 24, 65, 41, NULL, 1300.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-02-01 05:42:23', '2022-02-01 05:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ipla13332212@gmail.com', '$2y$10$VvRU2RVkgDdJDAZLgWyIVe70r0GV1bq0akPMdtBAaFUthOolO4zh.', '2019-06-16 11:40:37'),
('hasib.9437.hu@gmail.com', 'F6wLeVLncgKlyxsC7YSGZ9jX8MHmJmXIUvknoFKerm9mad3wn1uwV0QHTX0sq4wP', '2021-08-03 12:01:01'),
('hasib.9437.hu@gmail.com', '2poyM2GgtI3oIDEUgdSJGmP9BRh3XajOL9iZPx7L5SBeXdfu2OeFWnqnMHTcvzOn', '2021-08-03 12:17:21'),
('hasib.9437.hu@gmail.com', '9NFnBu8Fveou8BuDl6MMWbllYxbijIzkXqe8ozMh8xIFfMBk5RLde4ysXVzPomql', '2021-08-03 12:19:08'),
('hasib.9437.hu@gmail.com', 'zrP4EbHd1yxW5Mya3OO3cOjIQWzN3Q80exYLBY2NqTxuE6JZrwkfzy6GMFg16yWJ', '2021-08-03 13:16:20'),
('kazimuhammadullah@gmail.com', 'RD5mrlsVqJOM1H0UYLPjj8rL263dcqI3jdmyPzmGVxi3KiCIXb9wN7EhYio1LxpL', '2021-10-04 03:35:38'),
('fahim.amin71@gmail.com', 'qnzEu3DQqfvlAsoN2zcSBKVGJAXukzPtRCSD0mwddFSsqdthFMo24ehiIFDnHSYL', '2021-10-04 04:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `patient_behalves`
--

CREATE TABLE `patient_behalves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'support_policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2019-06-12 18:34:49', '2019-01-22 05:13:15'),
(2, 'return_policy', 'Create Return Policy', '2021-08-17 07:40:51', '2021-08-17 01:40:51'),
(5, 'terms', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">We delivery products all over Bangladesh within 48 hours and 12 hours in dhaka after confirmation of order. Once our system processes your order, your products are inspected thoroughly to ensure they are in a perfect condition.</p><ul style=\"box-sizing: border-box; margin: 0px 0px 1em 1em; padding-left: 20px; list-style: disc; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">After they pass through the final round of quality check, they are packed and handed over to our trusted delivery partner.</li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Express delivery time: 1 to 12 hours (For Dhaka city only). We need phone confirmation for this fast delivery. It depends on the availability of product/s and relevant support. Delivery charge also depends on product size, weight and delivery destination.</li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Delivery charge may vary upon the product weight, size and also price.</li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Regular delivery time: 1 to 3 working days</li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Our delivery partners then bring the package to you at the earliest possibility. In case, they are unable to reach your provided address or at a suitable time, they will contact you to resolve the issue.</li></ul><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">How are items packaged</strong></p><ul style=\"box-sizing: border-box; margin: 0px 0px 1em 1em; padding-left: 20px; list-style: disc; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">We package our products in cardboard boxes with your invoice wrapped with along with it.&nbsp; Each individual product is packaged in bubble wrap while fragile items like bottles are safely secured with additional bubble wrap.</li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Ehavene widely opens for everyone to shop over the Internet and in store. Our dedicated Ehavene quality assurance team works round the clock to make sure the right products reach on time. We deliver products all over the Bangladesh. We process all deliveries through reputed courier services as well as our in-house delivery team. If there is any modification in delivery charge for a particular item, it is mentioned in product details. There are some points about delivery process</li></ul><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">Delivery Time &amp; Charges</strong></p><ul style=\"box-sizing: border-box; margin: 0px 0px 1em 1em; padding-left: 20px; list-style: disc; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px;\">Inside Dhaka: 1-2 days</p></li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px;\">Outside Dhaka: 2-3 days</p></li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px;\">Outside of dhaka Regular delivery charge will be 130 taka.</p></li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Inside of dhaka Regular delivery charge will be 60 taka.</li></ul><br>', '2021-12-21 20:36:39', '2021-12-22 07:36:39'),
(6, 'privacy_policy', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">Quick &amp; Secure Delivery Process Work</strong></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">We delivery products all over Bangladesh within 48 hours and 12 hours in dhaka after confirmation of order. Once our system processes your order, your products are inspected thoroughly to ensure they are in a perfect condition.</p><ul style=\"box-sizing: border-box; margin: 0px 0px 1em 1em; padding-left: 20px; list-style: disc; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">After they pass through the final round of quality check, they are packed and handed over to our trusted delivery partner.</li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Express delivery time: 1 to 12 hours (For Dhaka city only). We need phone confirmation for this fast delivery. It depends on the availability of product/s and relevant support. Delivery charge also depends on product size, weight and delivery destination.</li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Delivery charge may vary upon the product weight, size and also price.</li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Regular delivery time: 1 to 3 working days</li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Our delivery partners then bring the package to you at the earliest possibility. In case, they are unable to reach your provided address or at a suitable time, they will contact you to resolve the issue.</li></ul><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">How are items packaged</strong></p><ul style=\"box-sizing: border-box; margin: 0px 0px 1em 1em; padding-left: 20px; list-style: disc; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">We package our products in cardboard boxes with your invoice wrapped with along with it.&nbsp; Each individual product is packaged in bubble wrap while fragile items like bottles are safely secured with additional bubble wrap.</li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Ehavene widely opens for everyone to shop over the Internet and in store. Our dedicated Ehavene quality assurance team works round the clock to make sure the right products reach on time. We deliver products all over the Bangladesh. We process all deliveries through reputed courier services as well as our in-house delivery team. If there is any modification in delivery charge for a particular item, it is mentioned in product details. There are some points about delivery process</li></ul><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">Delivery Time &amp; Charges</strong></p><ul style=\"box-sizing: border-box; margin: 0px 0px 1em 1em; padding-left: 20px; list-style: disc; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px;\">Inside Dhaka: 1-2 days</p></li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px;\">Outside Dhaka: 2-3 days</p></li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px;\">Outside of dhaka Regular delivery charge will be 130 taka.</p></li><li style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; line-height: 28px; font-weight: 400; font-style: normal;\">Inside of dhaka Regular delivery charge will be 60 taka.</li></ul><br>', '2021-12-21 20:34:17', '2021-12-22 07:34:17'),
(7, 'seller_policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2019-06-12 18:39:53', '0000-00-00 00:00:00'),
(8, 'security', '<meta charset=\"utf-8\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size: 14pt; font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">WARRANTY POLICY</span></p>', '2021-06-29 08:52:55', '2021-06-29 02:52:54'),
(9, 'about', '<span style=\"color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Ehavene started its operations in janaury 01, 2021 as the first e-commerce portal in Bangladesh. Ehavene is an online marketplace where anyone can sell or else buy almost anything. Ehavene is a service oriented e-commerce business which gives you the authority to unleash your shopaholic attitude from home with quality products and world class customer support.</span><br style=\"box-sizing: border-box; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">At Ehavene, we strive to utilize the power of the internet in its highest peak to fulfil the needs of your busy life.</span><br style=\"box-sizing: border-box; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">We cover whole Bangladesh right now and still, anyone from outside of Bangladesh can purchase products online providing a Bangladeshi shipping address. Be comfy to experience the best shopping experience from us.Ehavene encouraged young generation to earn money from selling goods using the power of the Internet. Ehavene is proud to help many people established successful online businesses who make a living out of it.</span><br style=\"box-sizing: border-box; color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(100, 100, 100); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">In 2021, Ehavene launched Online Stores together with its classified service, providing a chance for users to visit an online shopping mall and also do online shopping at the best price.</span><br>', '2021-12-21 20:30:59', '2021-12-22 07:30:59'),
(10, 'dinratri-stories', '<meta charset=\"utf-8\"><p style=\"text-align: left;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 16pt;\">WHY SHOP ON </span><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 16pt;\">Apon Health</span></p><p style=\"text-align: left;\"><br></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><br></p>', '2021-06-29 09:05:56', '2021-06-29 03:05:56'),
(11, 'payments', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br>', '2019-06-12 18:54:23', '2019-06-12 12:54:23'),
(12, 'shipping', '<meta charset=\"utf-8\"><p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 10pt; text-align: center;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 14pt;\"><u>Shipping Policy</u></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><strong>How do we Deliver?</strong></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:11pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We process all deliveries through:</span></p><ul><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Our in house delivery team</em></span></li><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Reputed couriers</em></span></li></ul><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><strong>How much are the delivery charges?</strong></span></p><ul><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Within Dhaka city, the delivery charge is BDT 50 and outside Dhaka city, it is BDT 100.</em></span></li></ul><blockquote dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:11pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Note: This will vary from product to product</span></blockquote><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><strong>What is the estimated delivery time?</strong></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:11pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The estimated time of delivery for Order inside Dhaka city up to 3 Working days &amp; for outside Dhaka up to 5 working days.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><strong>Note</strong><span style=\"font-size: 11pt;\">:</span></span></p><ol><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Any order placed after 6 pm will be considered an order of next business day, not on the same day.</em></span></li><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Business Day: Saturday to Thursday except for public holidays.</em></span></li><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Delivery might be delayed due to the unavailability of the product or delay from the 3rd Party Delivery Service.</em></span></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><strong>Does Apon Health deliver internationally?</strong></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:11pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Apon Health doesn\'t deliver items internationally. You are more than welcome to make your purchases on our site from anywhere in the world, but you\'ll have to ensure the Delivery Address is within Bangladesh.</span></p>', '2021-08-17 07:38:05', '2021-08-17 01:38:05'),
(13, 'cancellation-return', '<meta charset=\"utf-8\"><meta charset=\"utf-8\"><strong style=\"font-weight:normal;\" id=\"docs-internal-guid-5c3ee82b-7fff-ac17-892b-2576e66dc4f4\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:22pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Return &amp; Replacement</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><br></p><br><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><br></p></strong>', '2021-08-17 07:38:24', '2021-08-17 01:38:24'),
(14, 'faq', '<meta charset=\"utf-8\"><strong style=\"font-weight:normal;\" id=\"docs-internal-guid-5c3ee82b-7fff-ac17-892b-2576e66dc4f4\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:22pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">FAQ</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:11pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Frequently Asked Questions (FAQs)</span></p></strong>', '2021-08-17 07:38:41', '2021-08-17 01:38:41'),
(15, 'career', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-06-07 09:35:08', '2021-06-07 03:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_images`
--

CREATE TABLE `prescription_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` tinyint(1) DEFAULT NULL,
  `read` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flash_deal_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `prescribed` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(8,2) NOT NULL,
  `purchase_price` double(8,2) DEFAULT NULL,
  `choice_options` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `variations` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `todays_deal` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `current_stock` int(10) NOT NULL DEFAULT 0,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'flat_rate',
  `shipping_cost` double(8,2) DEFAULT NULL,
  `num_of_sale` int(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `prescribed`, `description`, `short_description`, `unit_price`, `purchase_price`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Bioderma Sebium Foaming Gel 200ml', 'admin', 65, 25, 99, 280, 145, '[\"uploads\\/products\\/photos\\/1yKzf5YFHvoRhmYqcLKVCDpzc8TrninE5LFydarf.jpg\"]', 'uploads/products/thumbnail/qumx29BBWFxoSgYOQH2WRV51G8zKmnhHN3si7kjQ.jpg', 'uploads/products/featured/QoDKTi3l3KAoVdFvee9F3kj06SwELaUOXIRIGk63.jpg', 'uploads/products/flash_deal/ekcela6iKvdDVsHdkmIZlX874lgjKnk3fdG7jlIX.jpg', 'youtube', NULL, 'Bioderma Sebium Foaming Gel,Bioderma Sebium Foaming Gel Price In Bangladesh', 'EH1600', '<h4><a href=\"https://www.ehavene.com.bd/search?category_id=25\" target=\"_blank\">Bioderma Sebium Foaming Gel</a></h4><p>Specially designed for combination to oily skin, Bioderma Sebium Foaming Gel gently cleanse and purify your skin without drying it out. Sébium Foaming Gel contains our patented D.A.F complex that contributes to improve the tolerance threshold of your skin.</p><h4>Benefits :</h4><br><ul><li style=\"margin-left: 10px;\">Gently cleanses and purifies\r\n</li><li style=\"margin-left: 10px;\">Limits sebum secretion\r\n</li><li style=\"margin-left: 10px;\">Keeps pores from becoming clogged\r\n</li><li style=\"margin-left: 10px;\">Guarantees good skin and eye tolerance\r\n</li><li style=\"margin-left: 10px;\">Soap-free cleansing base\r\n</li><li style=\"margin-left: 10px;\">cented formula\r\n</li><li style=\"margin-left: 10px;\">Non-comedogenic\r\n</li><li style=\"margin-left: 10px;\">Non-drying\r\nSoap-free</li></ul><h4>Use :</h4><p>Bioderma Sebium Foaming Gel Apply on wet skin, work into a foam then rinse well and gently dry. Use morning and/or evening.</p>', NULL, 1600.00, 1420.00, '[]', '[]', '[]', 1, 1, 1, 0, '200ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 4, 'Bioderma Sebium Foaming Gel', 'Specially designed for combination to oily skin, Bioderma Sebium Foaming Gel gently cleanse and purify your skin without drying it out.', 'uploads/products/meta/XmZskxQwXe1z86cwgdHQIABNzQFnC7nmvjia6j3V.jpg', NULL, 'Bioderma-Sebium-Foaming-Gel-200ml-P3dJB', '2021-11-21 21:55:24', '2022-01-18 04:05:54'),
(2, 'Avene Cleanance Cleansing Gel 200ml', 'admin', 65, 25, 99, 282, 146, '[\"uploads\\/products\\/photos\\/uauyRguf59P2aNpUl7vokWLcejVczHwd6Bpxz6WC.jpg\"]', 'uploads/products/thumbnail/oTIO9a1fkpQsF0rCv1dJAWn2KF0VUqOo35s1ukpx.jpg', 'uploads/products/featured/mM8zd3vVanqex7ZqP8BdweD5IHBeqGyAIckEP2V7.jpg', 'uploads/products/flash_deal/TvNvBl0Ltz1cE3ShE1URGgm4LxNoBLTODijZafhG.jpg', 'youtube', NULL, 'Avene Cleanance Cleansing Gel Price In Bangladesh,Avene Cleanance Cleansing Gel', 'EH1600', '<h4>Avene Cleanance Cleansing Gel</h4><p>Avene Cleanance Cleansing Gel with monolaurin for gentle facial and body cleansing oily, blemished skin. Also suitable for late acne with normal to oily skin.\r\n \r\nThe Cleanance cleansing gel gently cleanses the skin of excess sebum and dead skin cells. Clogged pores open. Sebum-regulating and antibacterial agents prevent new blemishes and inflammation.</p><p>\r\n \r\n  • Soap-free surfactants\r\n</p><p>  • zinc gluconate against inflammation\r\n</p><p>  • monolaurin regulates Sebum over production\r\n</p><p>  • Do not dry out\r\n</p><p>  • Without parabens\r\n</p><p>  • pH 5</p>', NULL, 1600.00, 1420.00, '[]', '[]', '[]', 1, 1, 1, 0, '200ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 9, 'Avene Cleanance Cleansing Gel', 'Avene Cleanance Cleansing Gel with monolaurin for gentle facial and body cleansing oily, blemished skin. Also suitable for late acne with normal to oily skin.', NULL, NULL, 'Avene-Cleanance-Cleansing-Gel-200ml-L2mjL', '2021-11-22 00:15:05', '2022-01-20 06:27:44'),
(3, 'Fixderma Under Eye Cream 20gm', 'admin', 65, 25, 102, 284, 145, '[\"uploads\\/products\\/photos\\/8ZWAtA5JJ237zhg4OzosBori6NXkzIffNbr7hQav.jpg\"]', 'uploads/products/thumbnail/b8Lv9qkqRr8dyphE4Q0l4uyrKnvEzKYwDEqw9NjM.jpg', 'uploads/products/featured/eMhMoU1yLQyexXxLIgx6Va6iHbSt5Ur59pnJHcwn.jpg', 'uploads/products/flash_deal/ljvtyWshSwftJP7rJG6mpPiI4FRARmsNUd90XQIL.jpg', 'youtube', NULL, 'Fixderma Under Eye Cream,Fixderma Under Eye Cream Price in Bangladesh', 'EH1600', '<h4>Fixderma Under Eye Cream</h4><p>Fixderma Under Eye Cream&nbsp;contains a combination of ingredients which take care of all ingredients. Pephatight supports repair and maintenance of the extra-cellular membrane for superior skin firming effect. This extract of the microalgae Nannochloropsis occulata combined with a polysaccharide actively tightens and firm skin instantly and in the long term.</p><p>Fixderma Under Eye Cream Pullulan improves skin’s texture and appearance and provides an instant skin-tightening effect as it adheres to the skin and Green tea extract having EGCG (Epigallocatechin gallate), rich in antioxidants which hydrate, soothe inflammation.</p><p>Cleanse your face before applying eye creams, and make sure there is no makeup residue left behind.</p><p>Take a pea-sized amount of your eye cream and apply in small dots under your eyes, starting from the inner corner of your eye moving toward the outer corner.</p><p>Gently dab around the entire eye area and wait for a minute or two to let it soak into your skin.</p><p>Use daily for the best results. Avoid contact with eyes.</p><p>A unique algae based skin tightening formula that helps reduce dark circle &amp; wrinkles.Visible improvement within 4 weeks and significant improvement after 8 weeks.</p><p><img src=\"https://cdn.shopify.com/s/files/1/0505/3559/6226/products/Undereyecream4_1024x1024.png?v=1634621884\"></p>', NULL, 1035.00, 100.00, '[]', '[]', '[]', 1, 1, 1, 0, '20gm', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 5, 'Fixderma Under Eye Cream 20gm', 'Fixderma Under Eye Cream contains a combination of ingredients which take care of all ingredients.', 'uploads/products/meta/jMquzl3xIiMaMUyWjwsgxpOZtcTrWFByZs9LeQUg.jpg', NULL, 'Fixderma-Under-Eye-Cream-20gm-xqyK3', '2021-11-22 00:53:32', '2022-01-20 05:59:04'),
(4, 'Fixderma Foot Cream 60gm', 'admin', 65, 25, 101, 285, 157, '[\"uploads\\/products\\/photos\\/0cPO1RyrPaondZ2lFbWRV2NGYedtLQWqBJkxrztH.jpg\"]', 'uploads/products/thumbnail/buBTCnHA8Xv7uNGQQHWtVc5BUZYlJGfNB6xBeBYi.jpg', 'uploads/products/featured/iABrCicNyLdbvZfF0XNNsTWxlWSWYAI8Mx2WnBTO.jpg', 'uploads/products/flash_deal/kgaUPYRm1a8JSVvpQY8KiGJywrXsr3H8BiPOitop.jpg', 'youtube', NULL, 'Fixderma Foot Cream,Fixderma Foot Cream Price In Bangladesh', 'EH1600', '<h4>Fixderma Foot cream</h4><p>Dry skin leads to cracked heels, corn and calluses, irritation in the feet because of lack of moisturization, hydration. Countering these side effects occur in the feet, Fixderma Foot cream is a blend of excellent moisturizers, anti-inflammatory and cooling agent which helps to moisturize and soften skin and acts as a keratinolytic.\r\n</p><p>\r\nFixderma Foot cream added with a concentration of premium moisturizing agents like urea, allantoin, lactic acid. Menthol crystals are contributing a cooling sensation to the feet, calm irritation, itching, and burning to the feet. It moisturizes deeply &amp; protects, absorbed immediately without any greasy residue and exfoliate the darkened skin. Fixderma Foot cream is recommended for diabetic foot syndrome, scaly skin, psoriasis, atopic dermatitis and pruritus.</p>', NULL, 865.00, 750.00, '[]', '[]', '[]', 1, 1, 1, 0, '60gm', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Fixderma Foot Cream', 'Fixderma Foot cream added with a concentration of premium moisturizing agents like urea, allantoin, lactic acid. Menthol crystals are contributing a cooling sensation to the feet,', NULL, NULL, 'Fixderma-Foot-Cream-60gm-ZSKxR', '2021-11-22 01:54:04', '2022-01-14 08:04:17'),
(5, 'Goli Apple Cider Vinegar Gummy 60pcs', 'admin', 65, 30, 103, 286, 158, '[\"uploads\\/products\\/photos\\/9o1A51R3kg1JLxjXJMxCCmT1w8Wtu0SdaTCGMyVJ.jpg\",\"uploads\\/products\\/photos\\/d03KYoggF3anHRbKfMTgy6DXUEsG0tNogZVycN5G.jpg\"]', 'uploads/products/thumbnail/xWJPsVut5VGYYsFsMczGmlrO9mN2I28cX0jtzFmQ.jpg', 'uploads/products/featured/hp3a3PLiCPsAHLxq4rEETf1EMPB1KsYIUz4yScac.jpg', 'uploads/products/flash_deal/QeixEuNJffjkxLRnFIe26NJmigyAa8WXLJMikWtW.jpg', 'youtube', NULL, 'Goli Apple Cider Vinegar Gummy,Goli Apple Cider Vinegar Gummy Price in Bangladesh', 'EH1600', '<h4>Goli Apple Cider Vinegar<br></h4><p>Goli Apple Cider Vinegar is a vinegar made from fermented apple juice and has been used in cooking products and natural medicines for thousands of years. It has long been a staple in kitchens for its distinct taste, being added to sauces, marinades and salad dressings. Because of its health benefits, it has been used historically to remedy infections, open wounds and a variety of illnesses. In stores and supermarkets, it is often seen labelled as \'filtered\' (a clear liquid), or \'un-filtered - the latter containing something known as the \'mother\', which means there are protein, friendly bacteria and enzymes present, and gives this type of vinegar a cloudy appearance.</p>', NULL, 2290.00, 1800.00, '[]', '[]', '[]', 1, 1, 1, 0, '60 Capsules', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Goli Apple Cider Vinegar Gummy 60pcs', NULL, NULL, NULL, 'Goli-Apple-Cider-Vinegar-Gummy-60pcs-ObWw4', '2021-11-22 02:37:59', '2021-11-23 07:39:09'),
(6, 'Goli Superfruits in Mixed Fruit Gummies 60pcs', 'admin', 65, 30, 103, 286, 158, '[\"uploads\\/products\\/photos\\/bQDI7fofcfkbFreeUFUeTEG6LyfJZSqXFw0r8DYH.jpg\",\"uploads\\/products\\/photos\\/VYV4Wr0Pb9LHqDFjUFmPMdhCF31wWexoLI6K0mtI.jpg\"]', 'uploads/products/thumbnail/dhDnFWCQWtQLtiXDmSLfFkBX6gnOmXQtrC6d7jfC.jpg', 'uploads/products/featured/OYzYY6qiOpE0yHEjHx7XL0W7CAVkNDdmd1kFRJUV.jpg', 'uploads/products/flash_deal/MTxrwusIhxWOrjWeyDZ7910er8P7wgARMASPaDhK.jpg', 'youtube', NULL, 'Goli Superfruits in Mixed Fruit Gummies,Goli Superfruits in Mixed Fruit Gummies Price in Bangladesh', 'EH1600', '<h4>Goli Superfruits</h4><p>Goli Superfruits in Mixed Fruit Gummies help promote wellness and beauty from within. Goli Superfruits in Mixed Fruit Gummies with antioxidants and essential nutrients, these delicious mixed fruit-flavored gummies help promote collagen formation and skin elasticity. Our goal with Superfruits Gummies was to create an easy and delicious way for consumers to incorporate superfruits and collagen-enhancingº ingredients into their daily routine. We’ve included essential vitamins and minerals as well as Superfruits for beauty, wellness, and nutrition.</p>', NULL, 2490.00, 1800.00, '[]', '[]', '[]', 1, 1, 1, 0, '60 Capsules', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Goli Superfruits in Mixed Fruit Gummies', 'Goli Superfruits Gummies with antioxidants and essential nutrients, these delicious mixed fruit-flavored gummies help promote collagen formation and skin elasticity.', NULL, NULL, 'Goli-Superfruits-in-Mixed-Fruit-Gummies-60pcs-ItPmP', '2021-11-22 07:29:44', '2021-11-23 07:33:05'),
(7, 'youtheory Collagen Plus Biotin 390 Tablet', 'admin', 65, 30, 103, 287, 159, '[\"uploads\\/products\\/photos\\/M2AP0w66cXJnlbq7JJfDwQrmREEd2O3Z5PTopcPW.jpg\",\"uploads\\/products\\/photos\\/dq1TG9GtWI0R3ZYKY9EtjC9kyGlLRmskM6IySnhA.jpg\"]', 'uploads/products/thumbnail/4WIDjIiKpKuobOzl14DVjiul5Esgalih3Vs18q8T.jpg', 'uploads/products/featured/Pl8LnkVni9DthATJPEvFl2ke6YGyFrfzfyKwI3EN.jpg', 'uploads/products/flash_deal/RNYoioclOhXunXPCmtak7DNbQdTgHvjN4ImZm2Yl.jpg', 'youtube', NULL, 'youtheory Collagen Plus Biotin,youtheory Collagen Plus Biotin Price In Bangladesh', 'EH1600', 'Discover your inner beauty and strength with youtheory Collagen Plus Biotin tablets. The Accuweather Shop is bringing you great deals on lots of Youtheory Skin Supplements including Collagen Plus Biotin Hair, Skin &amp; Nail Formula, 6,000 Mg, 290 Tablets. Collagen is the single most abundant protein in the human body. It makes up nearly 80% of the skin and is responsible for its strength, elasticity and plumpness.', NULL, 4500.00, 3200.00, '[]', '[]', '[]', 1, 1, 1, 0, '390 Tablet', 300.00, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'youtheory Collagen Plus Biotin', 'Discover your inner beauty and strength with youtheory Collagen Plus Biotin Tablets. Collagen is the single most abundant protein in the human body.', NULL, NULL, 'youtheory-Collagen-Plus-Biotin-390-Tablet-oIdBR', '2021-11-22 08:02:27', '2022-01-08 21:58:34'),
(8, 'Ensure Complete Milk Powder Vanilla Flavor 850gm', 'admin', 65, 32, 138, 297, 145, '[\"uploads\\/products\\/photos\\/apKgcRNmgUWHbBC5BdqTO4HkfOvxW70DIzyufq9H.jpg\",\"uploads\\/products\\/photos\\/XAgSZpeD8HKSDfDXjGc0mjnfiW36Ik7ixV8DRiRG.jpg\"]', 'uploads/products/thumbnail/NS3QyJTA2hM2hMssXEo0tmVs4DORrY0cCL5If5yD.jpg', 'uploads/products/featured/Kz1IPbF7emFac7sWKuq1WlMnXRxIWeOuOmZixDT5.jpg', 'uploads/products/flash_deal/M50P6NMn3ve5OoGC9s1EVn2AcX2aQeCnhQDubw4A.jpg', 'youtube', NULL, '', 'EH1600', '<h4 style=\"box-sizing: inherit; clear: both; margin: 0px 0px 2rem; font-family: Poppins, sans-serif; font-weight: var(--rio-heading-font-weight,600); font-size: calc(2.4rem * var(--rio-typo-ratio, 1)); line-height: var(--rio-heading-line-height,var(--rio-body-line-height)); letter-spacing: normal; text-transform: none; color: var(--rio-heading-color,var(--rio-body-color)); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Descripition Ensure Complete Milk Powder :</h4><p style=\"box-sizing: inherit; margin: 0px 0px 1.5rem; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">This Ensure Complete Vanilla Powder provides balanced nutritional content with high quality proteins, essential vitamins, and resourceful calories. It is a gluten free product that is suitable for lactose intolerant people.</p><p style=\"box-sizing: inherit; margin: 0px 0px 1.5rem; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Ensure Complete Milk Powder Post the age of 45 an adults body needs a complete and balanced diet, and the Ensure Powder Milk Vanilla Flavour is the perfect health supplement. It has an ideal blend of all the 32 vital nutrients and is specifically designed for the adult body to keep your body active.</p><h4 style=\"box-sizing: inherit; clear: both; margin: 0px 0px 2rem; font-family: Poppins, sans-serif; font-weight: var(--rio-heading-font-weight,600); font-size: calc(2.4rem * var(--rio-typo-ratio, 1)); line-height: var(--rio-heading-line-height,var(--rio-body-line-height)); letter-spacing: normal; text-transform: none; color: var(--rio-heading-color,var(--rio-body-color)); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Benefits :</h4><ul style=\"box-sizing: inherit; padding-inline-start: 20px; margin-bottom: 2rem; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: inherit;\">NUTRITION TO HELP KEEP YOU STRONG AND HEALTHY.</li><li style=\"box-sizing: inherit;\">28 ESSENTIAL VITAMINS AND MINARALS.</li><li style=\"box-sizing: inherit;\">SOURCE OF CALCIUM.</li><li style=\"box-sizing: inherit;\">HIGH IN VITAMIN D.</li><li style=\"box-sizing: inherit;\">OMEGA-3.</li><li style=\"box-sizing: inherit;\">ANTIOXIDENT HIGH IN VITAMIN C AND E.</li></ul><h4 style=\"box-sizing: inherit; clear: both; margin: 0px 0px 2rem; font-family: Poppins, sans-serif; font-weight: var(--rio-heading-font-weight,600); font-size: calc(2.4rem * var(--rio-typo-ratio, 1)); line-height: var(--rio-heading-line-height,var(--rio-body-line-height)); letter-spacing: normal; text-transform: none; color: var(--rio-heading-color,var(--rio-body-color)); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Ingredients :</h4><p style=\"box-sizing: inherit; margin: 0px 0px 1.5rem; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: inherit;\">Ensure Complete Milk Powder</strong></p><p style=\"box-sizing: inherit; margin: 0px 0px 1.5rem; color: rgb(102, 102, 102); font-family: Poppins, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Hydrolized Corn Starch, Surcose, Sodium 7 Calcium Caseinates, High Oleic Sunflower Oil, Fructo-oligosaccharide, Soy Oil, Soy Protein Isolate, Minerals: Potassium Citrate, Magnesiun Chloride, Sodium Citrate, Potassium Chloride, Calcium Phosphate Tribasic, Zinc Sulfate, Potassium Phosphate Dibasic, Ferrous Sulfate, Manganese Sulfate, Cupric Sulfate, Sodium Molybdate, Chromium Chloride, Sodium Selenite, Potassium Iodide), Coconut Oil and Artificial Vanilla Flavor ( Vanilla, Ethyl Vanilla).</p>', NULL, 2990.00, 2200.00, '[]', '[]', '[]', 1, 1, 1, 0, '850gm', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Ensure Complete Milk Powder Vanilla Flavor', 'This Ensure Complete Vanilla Powder provides balanced nutritional content with high quality proteins, essential vitamins, and resourceful calories.', NULL, NULL, 'Ensure-Complete-Milk-Powder-Vanilla-Flavor-850gm-KvWRU', '2021-11-23 06:53:03', '2021-11-25 07:30:39'),
(10, 'Goli Ashwagandha Gummies 60pcs', 'admin', 65, 30, 103, 286, 158, '[\"uploads\\/products\\/photos\\/ztVLk7xb0PReUJlkkBunyHjePja8jx2lLM7Auz86.jpg\",\"uploads\\/products\\/photos\\/pCjA51UknxXJNDNJAqsmbZg0RkdIe6kiuaQMm6kA.jpg\"]', 'uploads/products/thumbnail/rx6dU4SFYqgvRCqDw1O8TZlpZ0vuM1kbAb3uK2U5.jpg', 'uploads/products/featured/6n01PdYeym46UoXMKhTviz4ZNfkyOLwjhrNpdQ7V.jpg', 'uploads/products/flash_deal/XyJ13CjZHvRO6PUm77hJjmjIda7NjI5UrwPUvCS4.jpg', 'youtube', NULL, 'Goli Ashwagandha Gummies,Goli Ashwagandha Gummies price in Bangladesh', 'EH1600', NULL, NULL, 2200.00, 1800.00, '[]', '[]', '[]', 1, 1, 1, 0, '60 Gummies', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Goli Ashwagandha Gummies', 'Goli Nutrition is happy to offer the first Goli Ashwagandha Gummies that is vegan, gelatin-free and gluten-free.', NULL, NULL, 'Goli-Ashwagandha-Gummies-60pcs-Byujf', '2021-11-23 07:15:13', '2021-11-23 07:15:31'),
(12, 'Bio Oil Skincare Oil 60ml', 'admin', 65, 29, 124, 292, 145, '[\"uploads\\/products\\/photos\\/6pBn3XwmKFY7Xdz5ZRBwRA1Rg8MYl0o2grFkqdjN.jpg\"]', 'uploads/products/thumbnail/10dWhaV0KYte2yV3mpYr8pSRaf3TBUewOc5FOaYX.jpg', 'uploads/products/featured/4mChi9LenodQUDqna9WSj8D4RECyeBRFaxeohZUu.jpg', 'uploads/products/flash_deal/a8pvNPq64BLZD8WVlrdweuxHFvtYkvl0oGUix8nA.jpg', 'youtube', NULL, 'Bio Oil Skincare Oil,Bio-Oil Skincare Oil Price In Bangladesh', 'EH1600', NULL, NULL, 690.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '60ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Bio Oil Skincare Oil', NULL, NULL, NULL, 'Bio-Oil-Skincare-Oil-60ml-Q6UGg', '2021-11-24 06:35:25', '2021-11-24 06:51:34'),
(13, 'Bio Oil Skincare Oil 125ml', 'admin', 65, 29, 124, 292, 145, '[\"uploads\\/products\\/photos\\/dtBCTNTt9QKyFaDUVVgVbqJ9DerwUSNf8m0OF9f5.jpg\"]', 'uploads/products/thumbnail/yVBem0lG3XIpES5W8opPXHL2dBiuis4j2UauTBGO.jpg', 'uploads/products/featured/AHA7dIkEcZEP1t0o0bGQH4hiIGeEE9twDZpuZgTo.jpg', 'uploads/products/flash_deal/spiln2BzgWTlJu5oEGs8U0bo489aPAy6E8mgWaOV.jpg', 'youtube', NULL, 'Bio Oil Skincare Oil,Bio Oil Skincare Oil Price In Bangladesh', 'EH1600', NULL, NULL, 1270.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '125ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Bio Oil Skincare Oil', NULL, NULL, NULL, 'Bio-Oil-Skincare-Oil-125ml-XsG7j', '2021-11-24 06:47:05', '2021-11-24 06:47:24'),
(14, 'Huggies Dry Pants Diaper S 4-8 kg 66 pcs', 'admin', 65, 26, 109, 293, 145, '[\"uploads\\/products\\/photos\\/SNAZC0F9TnT04XwyI6nibBvP34THEbIXf2IErMvv.jpg\"]', 'uploads/products/thumbnail/bg3ovcP7gAbqtshsJSJHZq8GqCaOWY8cMgtknCRj.jpg', 'uploads/products/featured/zektnvoeyDdjhRjMwInt890M0DvVhwiH4LzClYrt.jpg', 'uploads/products/flash_deal/u4gmHPkDLtEcyfTk9GTkOWNNsHmH3awtuAweIkfu.jpg', 'youtube', NULL, 'Huggies Dry Pants Diaper,Huggies Dry Pants Diaper Price In Bangladesh', 'EH1600', NULL, NULL, 1570.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, 'S', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Huggies Dry Pants Diaper', 'Huggies Dry Pants Diaper', NULL, NULL, 'Huggies-Dry-Pants-Diaper-S-4-8-kg-66-pcs-ITAXV', '2021-11-24 07:01:55', '2021-11-25 07:19:11'),
(15, 'Huggies Dry Pant Diaper M 6-12Kg 64 Pcs', 'admin', 65, 26, 109, 293, 145, '[\"uploads\\/products\\/photos\\/EBltKgGEkhtG0Mu79h3MCPFO4qUEtTIRz4oExmJ6.jpg\"]', 'uploads/products/thumbnail/MoC0IcBgCfc436E8rxZhEyIlRImovb5tRBDf2dd6.jpg', 'uploads/products/featured/HR708v6z9jZHyjOMxlWG19KPjmVVlMFYGQziefWL.jpg', 'uploads/products/flash_deal/np4z0KHyPZCNMvrHTd2103WTSnvEPuR0AkaV5jqt.jpg', 'youtube', NULL, 'Huggies Dry Pant Diaper,Huggies Dry Pant Diaper Price In Bangladesh', 'EH1600', 'Huggies Dry Pant Diaper', NULL, 1570.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, 'M', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 2, 'Huggies Dry Pant Diaper', 'Huggies Dry Pant Diaper', 'uploads/products/meta/vXVLEvqHPKdJE8gNE0TD8aBYt7z9clkVU879STqU.jpg', NULL, 'Huggies-Dry-Pant-Diaper-M-6-12Kg-64-Pcs-XVS0d', '2021-11-24 07:12:54', '2022-01-11 05:59:47'),
(16, 'Huggies Dry Pants Diaper XL 12-17kg 42pcs', 'admin', 65, 26, 109, 293, 145, '[\"uploads\\/products\\/photos\\/Mwp1S3EPt62Idnu1oeTVMzsJ04yov5eiRLJfWiBi.jpg\"]', 'uploads/products/thumbnail/C4LQY3KzEkhoOmwu8DolzyuQ8GHgZJnedeLmOn6K.jpg', 'uploads/products/featured/81cm7k0DTC1Mi8wzv5SbRdqQinkq5EeJl2AbYOcm.jpg', 'uploads/products/flash_deal/pjcTX4xY7mY6RxMdr1SgxcRFI0u6BMuyzc5DYrk6.jpg', 'youtube', NULL, 'Huggies Dry Pants Diaper XL 12-17kg,Huggies Dry Pants Diaper XL 12-17kg Price In Bangladesh', 'EH1600', 'The new&nbsp;Huggies Dry Pants Diaper XL 12-17kg is specially designed for active babies as it has an all-around soft garterized waistband and leg elastics, giving your baby 360 degree Comfort Fit that flexes with your baby’s active movements. It also ensures up to 12-hour dryness so baby is comfortable and free to move!', NULL, 1570.00, 1200.00, '[]', '[]', '[]', 1, 1, 1, 0, '42pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Huggies Dry Pants Diaper', 'The new Huggies Dry Pants Diaper is specially designed for active babies as it has an all-around soft garterized waistband and leg elastics,', 'uploads/products/meta/S4aG4fABOFXro7d3NqFz6mMo4xwwFqkCBd05gVHS.jpg', NULL, 'Huggies-Dry-Pants-Diaper-XL-12-17kg-42pcs-b4XtZ', '2021-11-25 06:30:34', '2021-11-25 07:18:32'),
(17, 'Huggies Dry Pants L 50pcs', 'admin', 65, 26, 109, 293, 145, '[\"uploads\\/products\\/photos\\/Wz9xVTyYqYeK1I4B2TAjQhSBMg15C0G0xU7Xo7lz.jpg\"]', 'uploads/products/thumbnail/ZZdq6ydEkBZv3SZDfmleGLvu4K2gnDZC8ZyTbtYS.jpg', 'uploads/products/featured/hS0eTW5NKRsdt41AxvLccNnMg3skc0HmySA13e2t.jpg', 'uploads/products/flash_deal/lfbXBUQDEd5SSDDqgQGSg3LiB3sBvrTYxVQZy38k.jpg', 'youtube', NULL, 'Huggies Dry Pants ,Huggies Dry Pants  Price In Bangladesh', 'EH1600', NULL, NULL, 1570.00, 1200.00, '[]', '[]', '[]', 1, 1, 1, 0, '50pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Huggies Dry Pants Diaper', 'Huggies Dry Pants Diaper we understand there is nothing more powerful than that moment, that hug, and every moment that follows.', 'uploads/products/meta/xNNddVfKkf82Vd1YFAc5O0W3idTbY1o4YtxJqSXG.jpg', NULL, 'Huggies-Dry-Pants-L-50pcs-vTztp', '2021-11-25 06:38:01', '2021-11-25 07:17:50'),
(18, 'Nair Lemon Hair Removal Cream 110ml', 'admin', 65, 29, 128, 296, 145, '[\"uploads\\/products\\/photos\\/UVIzpYKRRE39mrI4qJKDFtE44waGbqG0g0bfZZ1n.jpg\"]', 'uploads/products/thumbnail/1iwjjcf0BI402E1oi0xgg5afjXPt88PCppHGWAf0.jpg', 'uploads/products/featured/YbR2tLRCphi9sMlWGufqRgelSH5PCdd6VwPkwlsK.jpg', 'uploads/products/flash_deal/fKvg8DnrCgjfuZDoE2NepyLznxqnPJLgk1dVZagX.jpg', 'youtube', NULL, 'Nair Lemon Hair Removal Cream,Nair Lemon Hair Removal Cream Price In Bangladesh', 'EH1600', 'Nair hair removal cream is enriched with moisturizing properties and natural ingredients that leave the skin feeling soft and velvety and the effect stays much longer than a shave. Now you can have an at-home, professional finish hair removal experience that is extremely easy.', NULL, 320.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '111ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Nair hair removal cream', 'Nair hair removal cream is enriched with moisturizing properties and natural ingredients that leave the skin feeling soft and velvety and the effect stays much longer than a shave.', 'uploads/products/meta/YNgggrUSBFIzuU3nZWndtp8eP6sGDGr61Sk95MQp.jpg', NULL, 'Nair-Lemon-Hair-Removal-Cream-110ml-OhWiN', '2021-11-25 07:15:01', '2022-01-18 23:07:14'),
(19, 'Cerave Moisturising Cream 453gm', 'admin', 65, 29, 124, 298, 145, '[\"uploads\\/products\\/photos\\/9cHaICf2SVlm5wd39TSOrpJobq3fqaDntbUM2g8h.jpg\"]', 'uploads/products/thumbnail/LeSr86uPOWqglFEVd06pD5AD0Qx53SHPZDhGcCwf.jpg', 'uploads/products/featured/OqaqdK3cJlU0neq1TqJlFxxy0H7yxFs8urv5ldrF.jpg', 'uploads/products/flash_deal/jh9QGUQmZ9LwfGEcsVLU6QhszCKYxjlaxL80Y3p7.jpg', 'youtube', NULL, 'Cerave Moisturising Cream,Cerave Moisturising Cream Price In Bangladesh', 'EH1600', 'Cerave Moisturising Cream 453gm&nbsp;moisturising body cream. All day hydration for dry skin. Specifically formulated to moisturise sensitive skin that is dry. Also suitable to use on eczema-prone skin. Moisturises the protective skin barrier of the face and body.\r\n\r\nWith 3 naturally occurring ceramides and Hyaluronic Acid which are essential in supporting the skin barrier and retaining moisture. Utilises patented MVE® delivery technology to help replenish ceramides and deliver controlled, long lasting hydration.', NULL, 2330.00, 1850.00, '[]', '[]', '[]', 1, 1, 1, 0, '453gm', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Cerave Moisturising Cream', 'Cerave Moisturising Cream 453gm moisturising body cream. All day hydration for dry skin. Specifically formulated to moisturise sensitive skin that is dry.', 'uploads/products/meta/3yj5fFjsQyYU8uPkpjd0RD4z5A8GxjbVjrQKUo13.jpg', NULL, 'Cerave-Moisturising-Cream-453gm-ylZLv', '2021-11-25 07:41:06', '2021-11-25 07:41:21'),
(20, 'Amul Pure Ghee 905gm', 'admin', 65, 32, 138, 299, 145, '[\"uploads\\/products\\/photos\\/gEOwX7zf3O8XIBXGZiJtSYB3UErc90zOOCmK6O2l.jpg\"]', 'uploads/products/thumbnail/gsPLwxmE47u4rXTFXjf5p0N6uGbW1cEBDrqELY4q.jpg', 'uploads/products/featured/YCvVi7jdHUaiGYEH14RwYwoLTEJ2m0FOuUGLvXfW.jpg', 'uploads/products/flash_deal/hWJrEfC74kiWLe39w43Bz7ZwdfVZFXEkhuD1hIbz.jpg', 'youtube', NULL, 'Amul Pure Ghee,Amul Pure Ghee Price in Bangladesh', 'EH1600', NULL, NULL, 1270.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '905gm', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Amul Pure Ghee', NULL, 'uploads/products/meta/zyzkX9ss0pP8i4KRdD5VqKyTOVBeah2LjozDyAfY.jpg', NULL, 'Amul-Pure-Ghee-905gm-DJK4f', '2021-11-25 07:54:32', '2021-11-25 07:54:41'),
(21, 'Neutrogena Hydro Boost Moisturiser Gel Cream 50ml', 'admin', 65, 29, 124, 298, 145, '[\"uploads\\/products\\/photos\\/szEJD9Dyy4aaCD4nTVZvyDnb0fVofNB5mG2mK416.jpg\"]', 'uploads/products/thumbnail/eKelbFuG6eLFecubE1BKZIuwaPXaNFz33lszREpY.jpg', 'uploads/products/featured/t9eJzW5eBwmi7hklHazje8aJCHXXvvVuVlqijf8F.jpg', 'uploads/products/flash_deal/I232n481dM9Mv6HdglEGvlxSYBuHJ3RpBAz6E7Qp.jpg', 'youtube', NULL, 'Neutrogena Hydro Boost Moisturiser Gel Cream ,Neutrogena Hydro Boost Moisturiser Gel Cream  Price In Bangladesh', 'EH1600', '<p>When your skin’s moisture barrier is weakened, the water content of your skin decreases, leading to drier and more tired-looking skin.\r\nStep up your skin’s hydration with Neutrogena Hydro Boost Moisturiser Gel Cream, designed to intensely hydrate skin and help strengthen the resilience of your skin’s moisture barrier. The fresh water-like texture leaves skin evenly hydrated with a supple, dewy glow that lasts all day long.\r\n</p><ul><li style=\"margin-left: 20px;\">Hyaluronic Acid + Botanical Trehalose</li><li style=\"margin-left: 20px;\">Oil-free\r\nDoes not clog pores\r\n</li><li style=\"margin-left: 20px;\">Lightweight formula</li></ul>', NULL, 1450.00, 1100.00, '[]', '[]', '[]', 1, 1, 1, 0, '50ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Neutrogena Hydro Boost Moisturiser Gel Cream', 'Step up your skin’s hydration with Neutrogena Hydro Boost Moisturiser Gel Cream, designed to intensely hydrate skin and help strengthen the resilience of your skin’s moisture barrier.', NULL, NULL, 'Neutrogena-Hydro-Boost-Moisturiser-Gel-Cream-50ml-xGf4e', '2021-11-26 02:07:37', '2021-11-26 02:09:47'),
(22, 'Sunsilk Black Shine Shampoo 650ml', 'admin', 65, 29, 127, 300, 145, '[\"uploads\\/products\\/photos\\/0eQZzXHRM5v218L92T6Tx9hrTALBekXVDNqScogg.jpg\"]', 'uploads/products/thumbnail/fMbUjFkXROsY9PgfRtiliZe0P92W4am9pNKNw3A9.jpg', 'uploads/products/featured/AvP6sK3XcetdO78tGfG4j3Bv4Jyhci2qfg9Twhdj.jpg', 'uploads/products/flash_deal/n5cw0XkAfBq1ecDkLiys4jNTv3YtUw7CNjTkmIio.jpg', 'youtube', NULL, 'Sunsilk Black Shine Shampoo 650ml,Sunsilk Black Shine Shampoo 650ml Price In Bangladesh', 'EH1600', 'Sunsilk black shine shampoo&nbsp;for hair that shines like you do. Shiny hair gives you a boost of confidencee. Time to shine. This exclusive formula, with amla pearl complex, revives your black hair, leaving your hair looking fuller, beautifully moisturized and mesmerizingly shiny.', NULL, 860.00, 670.00, '[]', '[]', '[]', 1, 1, 1, 0, '650ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Sunsilk Black Shine Shampoo 650ml', 'Sunsilk black shine shampoo for hair that shines like you do. Shiny hair gives you a boost of confidencee. Time to shine.', NULL, NULL, 'Sunsilk-Black-Shine-Shampoo-650ml-DDGc5', '2021-11-26 02:19:42', '2021-11-26 03:46:32'),
(23, 'Pond’s White Beauty Fairness Cream 50gm', 'admin', 65, 29, 125, 301, 145, '[\"uploads\\/products\\/photos\\/5VlDfVizJ9vBMyWoJ8hWsQgoEUkXZr0GJyebW5nj.jpg\"]', 'uploads/products/thumbnail/g9nGeoWcN0TpKWLHAlxDKvxeOK9A1qXALFDlYCKW.jpg', 'uploads/products/featured/byMdMJ9Jct88NqO5Ect0iPHjHIg4CtC3RAaFTImt.jpg', 'uploads/products/flash_deal/epPzxFO0ugVRnrWEwCLs5uk9QGyCPJmFhsEqMCwI.jpg', 'youtube', NULL, 'Pond’s White Beauty Fairness Cream,Pond’s White Beauty Fairness Cream Price In Bangladesh', 'EH1600', NULL, NULL, 470.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '50gm', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Pond’s White Beauty Fairness Cream', NULL, NULL, NULL, 'Ponds-White-Beauty-Fairness-Cream-50gm-MUXhu', '2021-11-26 03:59:15', '2021-11-26 03:59:25'),
(24, 'CeraVe Hydrating Cleanser 236ml', 'admin', 65, 29, 125, 303, 145, '[\"uploads\\/products\\/photos\\/VZF0I2BQAkS7zmKYvOc4xysyikex7FbQ4p7Ok6Hv.jpg\"]', 'uploads/products/thumbnail/uZnDv2GQBlrjjVM9KLmfbVNVaSMoePV4k08TSPG1.jpg', 'uploads/products/featured/BcHRyyUFVLwhWmZnV5aECEyjry1lDV8U5FgvtP3S.jpg', 'uploads/products/flash_deal/4MfqudfsMHvQJeF4gSQW93H71jq2mkpCvnVgoZg6.jpg', 'youtube', NULL, 'Cerave Hydrating Cleanser,Cerave Hydrating Cleanser Price In Bangladesh', 'EH1600', NULL, NULL, 1230.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '236ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'CeraVe Hydrating Cleanser', NULL, NULL, NULL, 'CeraVe-Hydrating-Cleanser-236ml-ZEgAL', '2021-11-26 04:13:06', '2021-11-26 04:13:56'),
(25, 'Himalaya Confido Tablets 60pcs', 'admin', 65, 27, 114, 304, 145, '[\"uploads\\/products\\/photos\\/4AXkvRX9fFJBtnSlQMXgNnW66u9wfrDS7g2NsY5K.jpg\"]', 'uploads/products/thumbnail/7Td2zdPW1InMEMxmBXbZPgBdptLdfem4zVRJxfnM.jpg', 'uploads/products/featured/MpFLFlrUvGJN5jmAgKurwcWIqvA6i1n92mygStvM.jpg', 'uploads/products/flash_deal/x9xZoIy3amnbs8HqX1ZxptNoJs9eml8q0VIfpw7n.jpg', 'youtube', NULL, 'Himalaya Confido Tablets,Himalaya Confido Tablets Price In Bangladesh', 'EH1600', NULL, NULL, 420.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '60 Tablet', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Himalaya Confido Tablets', NULL, NULL, NULL, 'Himalaya-Confido-Tablets-60pcs-SBLj5', '2021-11-26 04:23:41', '2021-11-26 04:24:54'),
(26, 'Titan Enhancement Gel 50ml', 'admin', 65, 27, 114, 305, 145, '[\"uploads\\/products\\/photos\\/9MYTb5LnOHw4V8g3xAcXwpYDrsUS0vv8CRvRiMCf.jpg\"]', 'uploads/products/thumbnail/uACKu7Cso92UgmoPqrzdFvJ91GNTcHsUyRX4Dwaq.jpg', 'uploads/products/featured/s0giv2TTDpKzmijIomAivCgYu12WLuntBq9fHMXH.jpg', 'uploads/products/flash_deal/9b3kVZebDj15E10hyhEcJDycyCpDBVd3Kr52fA6m.jpg', 'youtube', NULL, 'Titan Enhancement Gel,Titan Enhancement Gel Price In Bangladesh', 'EH1600', NULL, NULL, 830.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '50ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Titan Enhancement Gel', NULL, 'uploads/products/meta/3TMc6KFLeFBspFJn0cBE5jZK3A8HN7VMBOcu29oK.jpg', NULL, 'Titan-Enhancement-Gel-50ml-U6qQp', '2021-11-26 04:33:42', '2021-11-26 04:35:10'),
(27, 'Durex Ultra Thin Air Condoms', 'admin', 65, 27, 114, 306, 145, '[\"uploads\\/products\\/photos\\/VPC9ixgQKvrGXxSAmNLl7IBnaeKEsEAGTvE2qOly.jpg\"]', 'uploads/products/thumbnail/FMqSHO5g2GQ3MOU0WO8znPf5XbFNLHTgeN3zKq9E.jpg', 'uploads/products/featured/RqumsRgrAi7C2Unt6mco0Xskryt4AEvC3n6kMHFO.jpg', 'uploads/products/flash_deal/6oI5GpqfX3LOqI0u4iCsYL0OZCpnwRLyrijVbPXH.jpg', 'youtube', NULL, 'Durex Ultra Thin Air Condoms,Durex Ultra Thin Air Condoms Price In Bangladesh', 'EH1600', NULL, NULL, 800.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '10pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Durex Ultra Thin Air Condoms', NULL, NULL, NULL, 'Durex-Ultra-Thin-Air-Condoms-qJaHJ', '2021-11-26 04:37:35', '2021-11-26 04:40:00'),
(28, 'Himalaya Himcolin Gel 30gm', 'admin', 65, 27, 114, 305, 145, '[\"uploads\\/products\\/photos\\/Hd8aPXebnVfnTA7SwknToodIuVq0Cmwcv3R6hgOi.jpg\"]', 'uploads/products/thumbnail/uDM4qSeaA7ThHQeGtidcTIyIhwd9C5scDl9I1euB.jpg', 'uploads/products/featured/L17xooU17fFMJ4S9DTuCMaFgcwxHNgmbxvqKxzDv.jpg', 'uploads/products/flash_deal/9HpdEAJpTMCLW39HpJK5WgquIrULKjVsjyOMw3mj.jpg', 'youtube', NULL, 'Himalaya Himcolin Gel,Himalaya Himcolin Gel Price In Banglsdesh', 'EH1600', NULL, NULL, 420.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '30gm', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Himalaya Himcolin Gel', NULL, 'uploads/products/meta/9KEsaZeyP9gA8qXcYk5ho4NFuoW1DO9wol6ODAee.jpg', NULL, 'Himalaya-Himcolin-Gel-30gm-InySM', '2021-11-26 04:50:22', '2021-11-26 04:50:38'),
(29, 'Whiskas Adult Dry Cat Food Tuna Flavour 7kg', 'admin', 65, 28, 119, 307, 145, '[\"uploads\\/products\\/photos\\/a7TNl0xOlRHfVR4nB2PyApeweUWVjKmRDqOATO4C.jpg\"]', 'uploads/products/thumbnail/phm2byHpk7mJe4Bf3YgnDXaUKevPT7ANW2h4qIZb.jpg', 'uploads/products/featured/r5GjZtCLIz2VvfpBLevr3UaujU1iqdkjLJpOXkUC.jpg', 'uploads/products/flash_deal/SkevAw7qLPVDQgVMJqPIcyc6HAoQiXjvax0qiYTS.jpg', 'youtube', NULL, 'Whiskas Adult Dry Cat Food Tuna Flavour,Whiskas Adult Dry Cat Food Tuna Flavour Price In Bangladesh', 'EH1600', NULL, NULL, 2390.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '7kg', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Whiskas Adult Dry Cat Food Tuna Flavour', NULL, 'uploads/products/meta/1ANWzd24h6UYfgqhyugWu7elWxJuHW08p8WLqxFU.jpg', NULL, 'Whiskas-Adult-Dry-Cat-Food-Tuna-Flavour-7kg-0iOx4', '2021-11-26 04:57:04', '2021-11-26 04:57:16'),
(30, 'Portable Bird Cage', 'admin', 65, 28, 117, 309, 145, '[\"uploads\\/products\\/photos\\/rxZeiER91MwohxIE8T26oDS7Vg1mobkaMZrFxTAL.jpg\"]', 'uploads/products/thumbnail/bDg7Nb14dlVuSodPgU7yYbzaAabbfMqaKl1CDovd.jpg', 'uploads/products/featured/nuEjkyjwEWh9YbPiNex5Bh1eFRqgk2JqaeW1MNl4.jpg', 'uploads/products/flash_deal/d047RtWtkyJoCwNzRcZZDR3lmIAQKEZehSLMtx15.jpg', 'youtube', NULL, 'Portable Bird Cage,Portable Bird Cage Price in Bangladesh', 'EH1600', NULL, NULL, 1190.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '1pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Portable Bird Cage', NULL, NULL, NULL, 'Portable-Bird-Cage-Vqid3', '2021-11-26 05:04:57', '2021-11-26 05:08:42'),
(31, 'Brit Freash Chicken Healthy Growth 2.5kg', 'admin', 65, 28, 118, 308, 145, '[\"uploads\\/products\\/photos\\/FWAVanyBk6wfmj5AqtFZXZjQ8vkqm423ITFfni9n.jpg\"]', 'uploads/products/thumbnail/7EBcLpvRJ6nm9FpSayJkdLElADA2gRUqFF4m8Kwa.jpg', 'uploads/products/featured/I4GIp9TtkKpEfcn23MUq6DgMqez2Das9RdGBmhYb.jpg', 'uploads/products/flash_deal/aT9Pk5InpKfLusLNer1jGg5TMXYwdaTio1lf14qI.jpg', 'youtube', NULL, 'Brit Freash Chicken Healthy Growth', 'EH1600', NULL, NULL, 1230.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '2.5kg', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Brit Freash Chicken Healthy Growth', NULL, 'uploads/products/meta/KSZdpCOhWAtvTIsSJdFe4FTApPtOdcKpELWeU73r.jpg', NULL, 'Brit-Freash-Chicken-Healthy-Growth-25kg-3Y2Sf', '2021-11-26 05:19:21', '2021-12-13 02:39:50'),
(32, 'Brit Care Adult Cat Snack Shiny Hair 50gm', 'admin', 65, 28, 119, 307, 145, '[\"uploads\\/products\\/photos\\/tYaaSRIbZSd5gZDiFyqZPwM36VOapY7VWKOAjhzG.jpg\"]', 'uploads/products/thumbnail/oZkxRhnFYc5ewXtHKOM0no87uZ1VN7qGlLgv2PAj.jpg', 'uploads/products/featured/x2QAoF6Y6a5UOHNgIpZZ0lW826lxhk2jzB8ZMIbC.jpg', 'uploads/products/flash_deal/jar3OILfbzgt7Srz3GiCZm84x5xoAQIGoQzgRasD.jpg', 'youtube', NULL, 'Brit Care Adult Cat Snack Shiny Hair', 'EH1600', NULL, NULL, 150.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '50gm', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Brit Care Adult Cat Snack Shiny Hair', NULL, 'uploads/products/meta/tmiNMzKsoSfIa8MgZa6H5EU0xOiPZrj8z4NzxeTr.jpg', NULL, 'Brit-Care-Adult-Cat-Snack-Shiny-Hair-50gm-Ys1Xe', '2021-11-26 05:30:42', '2021-11-26 05:31:06'),
(33, 'Kirkland Signature Raw Honey 1.36kg', 'admin', 65, 32, 138, 310, 145, '[\"uploads\\/products\\/photos\\/gny14NGYypKAWUzr5UDWKtxJRvQ4H7VCsjbmVguS.jpg\"]', 'uploads/products/thumbnail/pt3FsvbeQzM4M2b4OlpBHGBTYll8TdPlWdRU0Xi5.jpg', 'uploads/products/featured/gkS2vPSPPdBecWAJutpoWbOAoXwVAtIJZxP02V0z.jpg', 'uploads/products/flash_deal/LfFa9eMvdhPsi2r2cwxHq3ePVFI0X3ksdybjkRHa.jpg', 'youtube', NULL, 'Kirkland Signature Raw Honey 1.36kg', 'EH1600', NULL, NULL, 2900.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '1.36kg', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Kirkland Signature Raw Honey', NULL, 'uploads/products/meta/RwKT3vlxwMkWXQoaMH8VmpUrxkTmSllRmr05rwKQ.jpg', NULL, 'Kirkland-Signature-Raw-Honey-136kg-uMgWU', '2021-11-26 06:03:34', '2021-11-26 06:04:23'),
(34, 'Kirkland Signature Raw Honey 680gm', 'admin', 65, 32, 138, 310, 145, '[\"uploads\\/products\\/photos\\/zJZslWwXupRQu3gd7Qk88Ncmrx8eRkvAP5ABjxQx.jpg\"]', 'uploads/products/thumbnail/i7iH8cxrR2IgVZmEbmJZyZ07idwg6A0t8mevdY6b.jpg', 'uploads/products/featured/YqizmTCTVpDrVnP2k9aVAwB21tyX5niWU8FU77oz.jpg', 'uploads/products/flash_deal/s8yQFf2NWrZ55dIUKYeqSjQ8oOvXeKgzYJVJFHFj.jpg', 'youtube', NULL, 'Kirkland Signature Raw Honey', 'EH1600', NULL, NULL, 1440.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '680gm', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, NULL, NULL, NULL, NULL, 'Kirkland-Signature-Raw-Honey-680gm-IXzmK', '2021-11-26 06:15:08', '2021-11-26 06:15:34'),
(35, 'Accu Chek Active Blood Glucose Test Meter', 'admin', 65, 34, 142, 311, 145, '[\"uploads\\/products\\/photos\\/3SZNGqz6SX5lAaHgCPzai20AFbrbEVSl7Xf6aM0K.jpg\"]', 'uploads/products/thumbnail/i3dKqPwtNLw9Rh9TZXzx4BjVUdi1XkZrgTx8O5DR.jpg', 'uploads/products/featured/hf1DrZ9130CADbRuVaHrFjEboqxnDVxSpNpFc4wm.jpg', 'uploads/products/flash_deal/paj0UcXIeCFb7G5YpPK2a3y9QboWE3EqNbE8enb1.jpg', 'youtube', NULL, 'Accu Chek Active Blood Glucose Test Meter,Accu Chek Active Blood Glucose Test Meter Price In Bangladesh', 'EH1600', NULL, NULL, 2395.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '1pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Accu Chek Active Blood Glucose Test Meter', NULL, 'uploads/products/meta/SsgcWS83VizomQLpi4svi54fbOQLlQsXPUb4wyTj.jpg', NULL, 'Accu-Chek-Active-Blood-Glucose-Test-Meter-PPrLS', '2021-11-26 06:22:58', '2021-11-26 06:23:10'),
(36, 'Accu Chek Active Blood Glucose Test Strips 50pcs', 'admin', 65, 34, 142, 312, 145, '[\"uploads\\/products\\/photos\\/Ui42A9ndURXvLo06LAngJVB7ZouaB85fQRnFYBFu.jpg\"]', 'uploads/products/thumbnail/LGxM4SywMBwwvdPwN2LGMnU8HRoL4YKpBDKxzFVo.jpg', 'uploads/products/featured/kYf6xrF6OhI5SFRC6XBMZeUONEuCo4YyeS1eHdp2.jpg', 'uploads/products/flash_deal/9c4BaEan5BdCMEhpHjpFr1loMEYs8OFv2EJ5nZkx.jpg', 'youtube', NULL, 'Accu Chek Active Blood Glucose Test Strips,Accu Chek Active Blood Glucose Test Strips Price in bangladesh', 'EH1600', NULL, NULL, 1000.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '50pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, NULL, NULL, NULL, NULL, 'Accu-Chek-Active-Blood-Glucose-Test-Strips-50pcs-AM9Cp', '2021-11-26 06:28:01', '2022-01-14 17:44:09'),
(37, 'Accu Chek Softclix Blood Lancets', 'admin', 65, 34, 142, 313, 146, '[\"uploads\\/products\\/photos\\/EFHNu2Oqm1wMJTUiD2GNIV4VUcsC5sV5pxDErWUi.jpg\"]', 'uploads/products/thumbnail/aX2PtLPcEtOzqDbcJiVAeEEGk0xo9X72dwcUehlQ.jpg', 'uploads/products/featured/GGST6wV3ibN94DkQx8e7Xl8baVfsAHqzckkCaUcb.jpg', 'uploads/products/flash_deal/FJd3hFY0ddrVEYxEXlXeMIksFbhPiBSXQZ5ykbgt.jpg', 'youtube', NULL, 'Accu-Chek Accu-Chek Softclix Lancets ,Accu-Chek Accu-Chek Softclix Lancets price in Bangladesh', 'EH1600', NULL, NULL, 180.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '200pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Accu Chek Softclix Blood Lancets', NULL, NULL, NULL, 'Accu-Chek-Softclix-Blood-Lancets-XckAd', '2021-11-26 06:49:11', '2021-11-26 06:50:09'),
(38, 'DuLife Plus Nebulizer Machine', 'admin', 65, 34, 146, 314, 145, '[\"uploads\\/products\\/photos\\/6YFAHdg2hOuTq4JeBLgSx67ZuAH9qc4bbN7I8HXG.jpg\"]', 'uploads/products/thumbnail/KWttS6PuEViPKGQ68tDTlddbCxhNZ0T0cJPoBG1q.jpg', 'uploads/products/featured/8WpoiI94WRpNc6tiREMGrvs9dyZB483MdXIkvG19.jpg', 'uploads/products/flash_deal/zpjo779q5MQZdlthQ6ANA8m4xODtiTy9HeqcE9ZK.jpg', 'youtube', NULL, 'DuLife Plus Nebulizer Machine,DuLife Plus Nebulizer Machine price in Bangladesh', 'EH1600', NULL, NULL, 1490.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '1pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'DuLife Plus Nebulizer Machine', NULL, 'uploads/products/meta/e2Uhz2QG1IdLbl9uSxTpvPlzwK5oQqP87X7Slgxu.jpg', NULL, 'DuLife-Plus-Nebulizer-Machine-d3bOJ', '2021-11-26 07:00:32', '2021-11-26 07:00:41'),
(39, 'Hyfac Hydrafac Light Cream 40ml', 'admin', 65, 25, 99, 315, 145, '[\"uploads\\/products\\/photos\\/1oD0EpI5uajeWFrfSOZpJR2nfYycZyU1kLpAhQEP.jpg\"]', 'uploads/products/thumbnail/6JQWejSOfWm0Bbep3n07uMBQhFwjIzkpQN9Wy4ve.jpg', 'uploads/products/featured/TYgVeVeNpOB7eJg4PS4zng0ogxm42y3LKfU0rDqA.jpg', 'uploads/products/flash_deal/ayJfgfFixzgFjjqvaWVHFmDf0Ej6HxpGOS0WTSpc.jpg', 'youtube', NULL, 'Hyfac Hydrafac Light Cream', 'EH1600', NULL, NULL, 1400.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '40ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Hyfac Hydrafac Light Cream', NULL, NULL, NULL, 'Hyfac-Hydrafac-Light-Cream-40ml-vp9vG', '2021-11-26 07:48:25', '2021-12-13 02:43:17'),
(40, 'Frezyderm Anti Ageing Body Cream 200ml', 'admin', 65, 25, 98, 316, 145, '[\"uploads\\/products\\/photos\\/dYqxgTUJHWXTkAcpaZH45Wl0QqUWxfVpdP3mwCe4.jpg\"]', 'uploads/products/thumbnail/nnRpXOjwOFPxymzAdUYHcl3mXykQSMR8mRo2gqkI.jpg', 'uploads/products/featured/PnuzlBhx79hd6xT4e8O2M4b0gVWDtOQtbTFDdW13.jpg', 'uploads/products/flash_deal/WJT7zLS82fHNV6FFsRP0jhVkLsG8Y1466Xr0H1QN.jpg', 'youtube', NULL, 'Frezyderm Anti Ageing Body Cream', 'EH1600', NULL, NULL, 1900.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '200ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 2, 'Frezyderm Anti Ageing Body Cream', NULL, 'uploads/products/meta/F9JPgJm3PnSZ7HeqXqOTe6a6ROSAgc56uuCgIwPI.jpg', NULL, 'Frezyderm-Anti-Ageing-Body-Cream-200ml-zBULh', '2021-11-26 07:56:08', '2022-01-18 22:58:24'),
(41, 'Lipiol Facial Cream 40ml', 'admin', 65, 25, 99, 318, 145, '[\"uploads\\/products\\/photos\\/RT2bgB8VpVOI6eRB5EYv5SnbC8qkNYrFe9Lx0QqT.jpg\"]', 'uploads/products/thumbnail/DWSyfddCUYqnyvLPhuVKdTw5xjE8gQlZCNQC9MqV.jpg', 'uploads/products/featured/7nyjvILPFed6IQhHMtHJWWU13o1WGgoICcydDrz2.jpg', 'uploads/products/flash_deal/ykEkUFI6q5Gewm2IiZ8RUxzj3JgEMC42A5AZQjDU.jpg', 'youtube', NULL, 'Lipiol Facial Cream', 'EH1600', NULL, NULL, 1300.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '40ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Lipiol Facial Cream 40ml', NULL, 'uploads/products/meta/Bqt0QcJmkMquAu3OqckF73MPV90iFHK6KudCqkND.jpg', NULL, 'Lipiol-Facial-Cream-40ml-Q2YFP', '2021-11-26 08:03:35', '2022-02-01 05:42:23'),
(42, 'Babe Facial Oil Free Sunscreen Cream 50ml', 'admin', 65, 25, 99, 317, 145, '[\"uploads\\/products\\/photos\\/pLXfJPakXwOU58tj19uaah0LizznNpIdQEwMPYxW.jpg\"]', 'uploads/products/thumbnail/ZGNoiPR6eSaqmdy5yR8FL5FZdqt7Th3Oz1UuPHmY.jpg', 'uploads/products/featured/PC7sq7UzUskSFLndnkq455OW3EqG209GMfTbNDsP.jpg', 'uploads/products/flash_deal/3Z46IcrWyU7kuR9qR8DKIVSR9cfxa1XZrFB5YZMh.jpg', 'youtube', NULL, 'Babe Facial Oil Free Sunscreen Cream', 'EH1600', NULL, NULL, 1700.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '50ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Babe Facial Oil Free Sunscreen Cream', NULL, 'uploads/products/meta/7Gpn7ZJjFka06B4Uc1kEtShnf3y3oP8kJK6ORLH9.jpg', NULL, 'Babe-Facial-Oil-Free-Sunscreen-Cream-50ml-EFoB8', '2021-11-26 08:10:55', '2021-11-26 08:11:26'),
(43, 'Kidicare Plus Syrup 200ml', 'admin', 65, 26, 110, NULL, 145, '[\"uploads\\/products\\/photos\\/aGR5dFsSQ9ZQ5nbvsT9c8DnmtadMoGyzY7JvqZlX.jpg\"]', 'uploads/products/thumbnail/QvluEC442gzqW0UAaAXe3kstjSypFLigIJEW0D17.jpg', 'uploads/products/featured/jGAO88y6MaIhnI7oKlLfYEBkcUMrU1SXqLBdRufz.jpg', 'uploads/products/flash_deal/X4cm4cXq6wYPe7B5NGCzQZvCcZLYicNZ9vqoruxz.jpg', 'youtube', NULL, 'Kidicare Plus Syrup', 'EH1600', NULL, NULL, 690.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '200ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Kidicare Plus Syrup', NULL, NULL, NULL, 'Kidicare-Plus-Syrup-200ml-hgbW3', '2021-11-26 08:18:57', '2021-11-26 08:20:21'),
(44, 'Feroglobin Liquid 200ml', 'admin', 65, 26, 110, 319, 145, '[\"uploads\\/products\\/photos\\/72rPzAetukmPzA1Z3iNbS47ax9xuBu3dQBfMhRfM.jpg\"]', 'uploads/products/thumbnail/Bx0teoNXsTzfejyifgcMWudAXU3hOErkHOpN7RMr.jpg', 'uploads/products/featured/4RwOoA0XEmFF7vGoQPYGtU69yw4ooOQx8KqLM65Z.jpg', 'uploads/products/flash_deal/2ak0hFLLmLS4GP9kZzaJBhGyyPRqu6cDtamLySiL.jpg', 'youtube', NULL, 'Feroglobin Liquid', 'EH1600', NULL, NULL, 1050.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '200ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, NULL, NULL, NULL, NULL, 'Feroglobin-Liquid-200ml-acwYc', '2021-11-26 08:26:50', '2022-01-18 22:58:24');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `prescribed`, `description`, `short_description`, `unit_price`, `purchase_price`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `created_at`, `updated_at`) VALUES
(45, 'Hafif Anti Hair Lice Shampoo 50ml', 'admin', 65, 26, 105, 320, 145, '[\"uploads\\/products\\/photos\\/N2LrPoSAwCbpX7NXTfOVl8z1UVkO2lcErYwXRuSz.jpg\"]', 'uploads/products/thumbnail/zUvPnaQPj2ZRYgBty6w8wj1CiJLKdjTqatPcMwco.jpg', 'uploads/products/featured/K21ib5Agdip0lXkaeQAiPsQID4bQMbFxJGPMBlmT.jpg', 'uploads/products/flash_deal/iA49O2eKpOlci45J7lj11DZg3pxRhopzJWJSwKoz.jpg', 'youtube', NULL, 'Hafif Anti Hair Lice Shampoo', 'EH1600', NULL, NULL, 450.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '50ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Hafif Anti Hair Lice Shampoo', NULL, 'uploads/products/meta/T6IGF9I7EtUovvep2bkCUNv6dJCKCo5mKwIwY8dk.jpg', NULL, 'Hafif-Anti-Hair-Lice-Shampoo-50ml-x7JYn', '2021-11-26 08:43:25', '2021-11-26 08:43:39'),
(46, 'Dermavive Nappy Rash Cream 100gm', 'admin', 65, 26, 105, 321, 145, '[\"uploads\\/products\\/photos\\/8OgZ5OPU8c8V9mnPF41ZgBJ9DzuJI7e16ltpfEx2.jpg\"]', 'uploads/products/thumbnail/75jeBQjv6geVLOcgncw2G97xQlIhsU8AD1dzV26d.jpg', 'uploads/products/featured/RBERoCSKuZU0aVKMEpYqiTvVt2VbP02EVlevpM8L.jpg', 'uploads/products/flash_deal/T6na4lruMNjAecwqgzP1NmPb9LwpEfmsaOZDKXXr.jpg', 'youtube', NULL, 'Dermavive Nappy Rash Cream', 'EH1600', NULL, NULL, 1000.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '100ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, NULL, NULL, NULL, NULL, 'Dermavive-Nappy-Rash-Cream-100gm-6PsK9', '2021-11-26 08:50:46', '2021-11-26 08:50:59'),
(47, 'Natural Turmeric Powder 500gm', 'admin', 65, 31, 133, 322, 145, '[\"uploads\\/products\\/photos\\/2KJg1UVGzTKggUvRdNWpQXg3oJzTs2QCQJTLFwie.jpg\"]', 'uploads/products/thumbnail/MFsH6WBlNN12xN3CP4EwXwwtibQ0nAQg3BrqaxyB.jpg', 'uploads/products/featured/16NtIp3IJWOU9tX5gkAMMOYndNT0XKUTTq1ianTH.jpg', 'uploads/products/flash_deal/MYz7M4pm3JS7gikselRiuLTfILm7qorRqit4fL4M.jpg', 'youtube', NULL, 'Natural Turmeric Powder', 'EH1600', NULL, NULL, 150.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '500gm', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Natural Turmeric Powder', NULL, 'uploads/products/meta/xSxZanfuWcqbOe0SKJFXNjkcfqxBL30PaQX0gXhN.jpg', NULL, 'Natural-Turmeric-Powder-500gm-mTub7', '2021-11-26 09:04:28', '2021-11-26 09:04:55'),
(48, 'OFF Active Mosquito Repellent Spray', 'admin', 65, 33, 147, 323, 145, '[\"uploads\\/products\\/photos\\/ip9esK3skr587ENgBsfP46XwQRnigDorpYBjpHYo.jpg\"]', 'uploads/products/thumbnail/zSolSumWjLu7Uzdj9pIEbjLSUg7NjdK900uUWnyE.jpg', 'uploads/products/featured/SNjw8Hg2sxAiWubTqcUa8kcAGM38PiM9dGMilXbt.jpg', 'uploads/products/flash_deal/j4w65YonU1xb4ObwWmZzmeakVqvTza59S1CmfK1k.jpg', 'youtube', NULL, 'OFF Active Mosquito Repellent Spray,OFF Active Mosquito Repellent Spray Price In Bangladesh', 'EH1600', NULL, NULL, 1190.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '170ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'OFF Active Mosquito Repellent Spray', NULL, NULL, NULL, 'OFF-Active-Mosquito-Repellent-Spray-2oFwz', '2021-11-27 00:45:24', '2021-11-27 00:48:44'),
(49, 'Tiger Balm Mosquito Repellent Spray', 'admin', 65, 33, 147, 323, 145, '[\"uploads\\/products\\/photos\\/fSFwtZO3xf9quG970YfbzeOviQsRlK9r34KXxLrj.jpg\"]', 'uploads/products/thumbnail/LLCR3C71ygtDL687hDZ5RHtGUBErPvZjsxWyZfIA.jpg', 'uploads/products/featured/msutbETxnpcDkFlPuqi5bkhsHGuq0Rm8ag7HsKZs.jpg', 'uploads/products/flash_deal/k2iGqLrd8v0XfyxQEx48kJ1rjOIRN6K3KfI3E7TC.jpg', 'youtube', NULL, 'Tiger Balm Mosquito Repellent Spray,Tiger Balm Mosquito Repellent Spray Price in Bangladesh', 'EH1600', NULL, NULL, 890.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '60ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Tiger Balm Mosquito Repellent Spray', NULL, 'uploads/products/meta/IXDidxBiYZ3qO8A6rmNs3aHOefA9gtUQxnm7svnO.jpg', NULL, 'Tiger-Balm-Mosquito-Repellent-Spray-ZgrM6', '2021-11-27 00:52:51', '2022-01-08 21:58:34'),
(50, 'Ethylchloride Spray 100ml', 'admin', 65, 33, 147, 323, 145, '[\"uploads\\/products\\/photos\\/Ew9LfGt9IXKrucIIXnIjp9uCSl8bNvlrfYBSuUDu.jpg\"]', 'uploads/products/thumbnail/T2qadvrEQxpzX77ruYmEYghz43uGrBi2I4HZwfPK.jpg', 'uploads/products/featured/gyght7KQqOYIQwoZx1FipUEGggfmsxyv6Eonma7K.jpg', 'uploads/products/flash_deal/U2RRwF2VFBOPNgFRFa1cGSfDw9uuHLlV1ECsKpFS.jpg', 'youtube', 'channel/UC9cDen6Hba0-9WCxWIjKPlg', 'Ethylchloride Spray,Ethylchloride Spray in Bangladesh', 'EH1600', '<h2 style=\"text-align: center;\">Ethylchloride Spray 100ml</h2><p>Ethylchloride Spray helps relieve pain immediately. Its pain relieving effect is achieved when the previously compressed ethylchloride is sprayed out and evaporates, leading to a coldness and numbness of the sprayed areas of the skin, helping to relieve pain.</p><ul><li>This Spray does not contain any propellants and is handy to use.\r\n\r\nTo use: spray onto areas of skin to be treated from a distance from about 30cm until a fine white film is produced.\r\nDO NOT continue to spray to avoid skin burning.</li></ul>', 'Skin anaesthesia for prompt relief of pain.\r\n For external use only. Not for narcosis. Tin filled under pressure. To be stored at 15 degree Celcius to 25 degree Celcius out of the reach of children and protected from sunlight. Keep away from heat/ sparks/', 1220.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '100ml', NULL, 'amount', NULL, 'amount', 'flat_rate', 0.01, 1, 'Ethylchloride Spray 100ml', 'Ethylchloride Spray 100ml leading to a coldness and numbness of the sprayed areas of the skin, helping to relieve pain.', 'uploads/products/meta/kNeqaG5dNnwK9vOUUNci19ohM6E0Mb0WldkKg6zm.jpg', NULL, 'Ethylchloride-Spray-100ml-zwmxS', '2021-11-27 00:56:06', '2022-02-01 00:07:16'),
(51, 'Bioderma Crealine Gel Moussant 200ml', 'admin', 394, 25, 99, 280, 145, '[\"uploads\\/products\\/photos\\/GCb0ANjteOrg7GdGlvUZH6PU51oZteqFcQKpRPKK.jpg\",\"uploads\\/products\\/photos\\/v57kHADMIqsVx4OrcacRNHpV6v0jH9wTLSZ4sWof.jpg\"]', 'uploads/products/thumbnail/uRZhJuIzY4XFTunlKwW1nWHrbwPjZlf6Znu0qbET.jpg', 'uploads/products/featured/I6mhwOBsVTp6W9MQgmKsJG3ZABosfgSlQWlrMhhM.jpg', 'uploads/products/flash_deal/hEsvdgFj81UeanB7c75Z8ksEv1BOPmqALlUB1Lwz.jpg', 'youtube', NULL, 'Gel Moussant,Bioderma Crealine Gel Moussant', '011111', '<h2><a href=\"https://ehavene.com.bd/search?subcategory_id=98\" target=\"_blank\"></a>Bioderma Crealine <a href=\"https://ehavene.com.bd/search?subcategory_id=98\" target=\"_blank\">Gel&nbsp;Moussant</a>&nbsp;200ml</h2><p>Bioderma Crealine Gel Moussant is a mild, foaming cleansing gel that gently and thoroughly removes non-waterproof make-up whilemoisturizing and soothing the skin. It’s the ideal solution for sensitive, normal and combination skin.</p><p>Bioderma Crealine Gel Moussant 200ml gently cleanses, soothes and moisturizes sensitive skin. Thanks to its soothing and super fatting active ingredients, it quickly calms irritations. The DAF patented natural complex (dermatological advanced formulation) increases the tolerance threshold of the most sensitive skins. Its creamy foam leaves the skin soft and comfortable. Also used as make-up remover. Excellent cutaneous and ocular tolerance. Dermatologically and ophthalmologically tested. Without soap, perfume, paraben, hypoallergenic.</p><h4>Better understanding for better care</h4><p>Sensitive skin is often unable to play its essential role as a protective barrier against external irritants. Pollution, stress, and even make-up can all contribute to sensitive skin’s weakened barrier, which can lead to feelings of tightness, discomfort, and visible redness. In this state, the skin can be subject to dehydration, dryness, and an increased fragility. Sensitivity can be temporary or permanent depending on cause and it is with the utmost respect that we must care for it.</p><p style=\"text-align: center;\"><a href=\"https://www.facebook.com/ehavene.com.bd\" target=\"_blank\">Visit Our Social Page*</a><br></p>', '<p>Bioderma Crealine Gel Moussant is a mild, foaming cleansing gel that gently and thoroughly removes non-waterproof make-up whilemoisturizing and soothing the skin. It’s the ideal solution for sensitive, normal and combination skin.</p>', 1800.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, '200ml', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Bioderma Crealine Gel Moussant', 'Bioderma Crealine Gel Moussant is a mild, foaming cleansing gel that gently and thoroughly removes non-waterproof make-up while', NULL, NULL, 'Bioderma-Crealine-Gel-Moussant-200ml-CFKCi', '2022-02-03 01:12:49', '2022-02-03 01:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `stocks` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regular_medications`
--

CREATE TABLE `regular_medications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_orders`
--

CREATE TABLE `request_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_orders`
--

INSERT INTO `request_orders` (`id`, `patient_name`, `phone`, `medicine_details`, `image`, `address`, `read`, `remark`, `comment`, `redate`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Md. Hasib Uzzaman', '01738356180', '1. napa\r\n2. vaxin', 'uploads/request_image/zW69VP7gvwo7N1IACsMjUTqrx2TMePtAEEIF5oFg.png', '3rd colony Lalkuthi,  mirpur-1', '1', 'positive', 'test', '2021-08-31', 1, NULL, NULL, '2021-06-28 23:02:52', '2021-08-15 00:54:11'),
(2, 'Md. Hasib Uzzaman', '01738356180', '555', NULL, '3rd colony Lalkuthi,  mirpur-1', '1', 'hnegative', 'test', '2021-09-02', 1, NULL, NULL, '2021-06-29 04:52:38', '2021-08-15 00:54:33'),
(3, 'Md. Hasib Uzzaman', '01738356180', 'fgdsgdfsgdfsg', 'uploads/request_image/gGl3w3K3UEUJDaHgc76SyEFVLLbFJKoF5rAE5grT.jpg', '3rd colony Lalkuthi,  mirpur-1', '1', NULL, NULL, NULL, 1, NULL, NULL, '2021-06-29 05:21:16', '2021-06-29 05:21:16'),
(4, 'Md. Hasib Uzzaman', '01738356180', 'raj', 'uploads/request_image/ObQOz2EaYJLYlYEUCzUGGytXYKJmUOYBdyzjl8Wj.png', 'raj', '1', NULL, NULL, NULL, 1, NULL, NULL, '2021-07-07 08:41:42', '2021-07-07 08:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 2865, 128, 5, 'good', '2021-06-21 07:00:49', '2021-06-21 07:00:49'),
(2, 2865, 128, 4, 'sfgsdfgsdfgd', '2021-06-21 07:01:16', '2021-06-21 07:01:16'),
(3, 2865, 128, 3, 'xsgvxfgvxdg', '2021-06-21 07:01:49', '2021-06-21 07:01:49'),
(4, 2908, 332, 5, 'hbuyb', '2021-11-13 14:43:27', '2021-11-13 14:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `rmhistories`
--

CREATE TABLE `rmhistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rm_id` bigint(20) DEFAULT NULL,
  `discription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark_date` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmhistories`
--

INSERT INTO `rmhistories` (`id`, `rm_id`, `discription`, `remark`, `remark_date`, `photo`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 7, 'Test message 001', 'dnc', '2021-10-18', NULL, 1, NULL, NULL, '2021-10-16 17:30:05', '2021-10-16 17:30:05'),
(4, 7, 'Test Message 002', 'positive', '2021-10-17', NULL, 1, NULL, NULL, '2021-10-16 17:30:26', '2021-10-16 17:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"10\"]', '2018-10-10 04:39:47', '2019-07-02 07:28:42'),
(2, 'Accountant', '[\"2\",\"3\"]', '2018-10-10 04:52:09', '2018-10-10 04:52:09'),
(5, 'Agent', '[\"11\"]', '2021-04-28 15:12:16', '2021-04-28 15:12:16'),
(6, 'test', '[\"1\",\"2\",\"3\"]', '2021-04-29 08:46:46', '2021-05-03 01:59:19'),
(7, 'super-admin', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\"]', '2021-08-29 07:04:56', '2021-08-29 07:04:56'),
(8, 'Supplier1', '[\"1\",\"2\",\"3\"]', '2021-09-12 19:30:30', '2021-09-12 19:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(1, 'saree', 1, '2019-05-28 02:54:51', '2019-05-28 02:54:51'),
(2, 'loremipsum0.44472254877522377', 1, '2019-05-30 08:45:01', '2019-05-30 08:45:01'),
(3, 'north face', 5, '2019-05-30 19:06:05', '2019-07-25 15:35:45'),
(4, 'FUCIDIN', 5, '2019-05-30 19:07:06', '2019-07-25 14:29:26'),
(5, 'Sony', 1, '2019-06-13 17:28:11', '2019-06-13 17:28:11'),
(6, 'CS141', 2, '2019-06-14 14:56:17', '2019-06-14 14:56:29'),
(7, 'Thermaltake Core V51 Black Casing # CA-1C6-00M1WN-03 CS141', 1, '2019-06-14 14:56:45', '2019-06-14 14:56:45'),
(8, 'agrecaltior', 1, '2019-06-16 07:20:33', '2019-06-16 07:20:33'),
(9, 'Maximen coffee', 4, '2019-06-16 14:51:04', '2019-07-17 19:09:27'),
(10, 'Cappuccino Maximen Coffee', 2, '2019-06-16 14:53:12', '2019-06-16 14:53:15'),
(11, 'oven', 1, '2019-06-16 18:26:13', '2019-06-16 18:26:13'),
(12, 'Bra', 1, '2019-06-18 02:49:02', '2019-06-18 02:49:02'),
(13, 'Bras', 1, '2019-06-18 02:49:19', '2019-06-18 02:49:19'),
(14, 'Dell E2316H 23 Inch', 1, '2019-06-18 05:32:15', '2019-06-18 05:32:15'),
(15, 'ball pen', 2, '2019-06-18 10:01:56', '2019-06-18 10:02:21'),
(16, 'mini fan', 2, '2019-06-18 19:39:27', '2019-06-18 19:40:09'),
(17, 'Beatrice', 1, '2019-06-20 15:56:44', '2019-06-20 15:56:44'),
(18, 't-shirt', 6, '2019-06-21 02:55:29', '2019-06-21 02:55:44'),
(19, 't-shirt', 1, '2019-06-21 02:55:29', '2019-06-21 02:55:29'),
(20, 'I have football', 2, '2019-06-21 02:59:53', '2019-06-21 03:00:10'),
(21, 'I have a football', 1, '2019-06-21 03:01:28', '2019-06-21 03:01:28'),
(22, 'air conditioner usb rechargeable small fan', 1, '2019-06-21 08:28:05', '2019-06-21 08:28:05'),
(23, 'Pudaier', 12, '2019-06-21 12:21:22', '2019-07-08 07:01:42'),
(24, 'PRINTER PRICE', 1, '2019-06-22 03:31:34', '2019-06-22 03:31:34'),
(25, 'printer', 2, '2019-06-22 03:32:11', '2019-06-23 21:19:36'),
(26, 'lesar printer', 1, '2019-06-23 21:18:26', '2019-06-23 21:18:26'),
(27, 'Samsung Galaxy M20', 1, '2019-06-27 05:43:32', '2019-06-27 05:43:32'),
(28, 'stand camera', 1, '2019-06-27 05:53:22', '2019-06-27 05:53:22'),
(29, 'acer', 1, '2019-06-27 11:02:31', '2019-06-27 11:02:31'),
(30, 'Vr box', 3, '2019-06-29 13:46:58', '2019-07-02 15:39:52'),
(31, 'gree Ac', 1, '2019-06-29 15:26:43', '2019-06-29 15:26:43'),
(32, 'portable projector', 1, '2019-07-02 06:48:00', '2019-07-02 06:48:00'),
(33, 'projector', 1, '2019-07-02 06:48:11', '2019-07-02 06:48:11'),
(34, 'vr box with vr remote', 3, '2019-07-02 15:40:17', '2019-07-02 15:40:30'),
(35, 'phone back cover', 1, '2019-07-04 10:07:00', '2019-07-04 10:07:00'),
(36, 'router', 4, '2019-07-06 05:50:01', '2019-07-06 05:50:04'),
(37, 'shirt', 1, '2019-07-06 07:29:55', '2019-07-06 07:29:55'),
(38, 'nari', 1, '2019-07-06 10:51:39', '2019-07-06 10:51:39'),
(39, 'frame', 2, '2019-07-06 13:33:12', '2019-07-06 13:33:16'),
(40, 'TDP6 TABLET PRESS', 1, '2019-07-06 19:30:47', '2019-07-06 19:30:47'),
(41, 'headphones', 1, '2019-07-07 05:18:33', '2019-07-07 05:18:33'),
(42, 'i phone headphones', 1, '2019-07-07 05:19:26', '2019-07-07 05:19:26'),
(43, 'Power Guard 650VA UPS (Plastic Body)', 2, '2019-07-07 05:55:39', '2019-07-07 05:56:34'),
(44, 'REMAX TWS-2', 1, '2019-07-07 09:29:29', '2019-07-07 09:29:29'),
(45, 'blender', 1, '2019-07-07 11:59:32', '2019-07-07 11:59:32'),
(46, 'Chiffon Georgette Saree S-30', 4, '2019-07-08 04:15:45', '2019-07-25 06:24:28'),
(47, 'TV', 1, '2019-07-08 07:12:16', '2019-07-08 07:12:16'),
(48, '55″X9000E Sony 4K HDR Android LED TV', 1, '2019-07-08 11:09:42', '2019-07-08 11:09:42'),
(49, 'Sports', 1, '2019-07-08 13:16:06', '2019-07-08 13:16:06'),
(50, 'CARD READER SIYOTEM 4 IN ONE M-630', 1, '2019-07-11 07:16:16', '2019-07-11 07:16:16'),
(51, 'HGA24W255M–Gas freestanding cooker Stainless steel', 1, '2019-07-11 10:24:06', '2019-07-11 10:24:06'),
(52, 'samsung guru', 2, '2019-07-11 10:26:52', '2019-07-11 10:26:54'),
(53, 'All E-Nr Number results for   SMS46KI10M', 2, '2019-07-11 10:27:31', '2019-07-11 10:34:14'),
(54, 'KDV29VL30- No Frost, Top freezer', 1, '2019-07-11 10:43:20', '2019-07-11 10:43:20'),
(55, 'Serie | 4 NoFrost, Top freezer Door color inox EasyClean', 1, '2019-07-11 10:43:39', '2019-07-11 10:43:39'),
(56, 'smart watch', 2, '2019-07-11 12:29:19', '2019-07-11 12:29:19'),
(57, 'Cream', 2, '2019-07-12 12:37:42', '2019-07-12 14:14:53'),
(58, 'loremipsum0.18745574623383143', 1, '2019-07-14 06:44:47', '2019-07-14 06:44:47'),
(59, 'mountblanc', 3, '2019-07-14 11:39:47', '2019-07-25 15:34:43'),
(60, 'montblanc', 3, '2019-07-14 11:40:51', '2019-07-25 15:45:34'),
(61, 'timberland', 3, '2019-07-14 11:58:31', '2019-07-25 15:42:29'),
(62, 'vancleef', 3, '2019-07-14 11:59:37', '2019-07-25 15:35:40'),
(63, 'vans', 3, '2019-07-14 12:10:38', '2019-07-25 14:30:31'),
(64, 'cartier', 3, '2019-07-14 12:11:29', '2019-07-25 14:31:37'),
(65, 'michael kors', 3, '2019-07-14 12:11:41', '2019-07-25 15:51:57'),
(66, 'tiffany', 3, '2019-07-14 12:12:43', '2019-07-25 14:30:37'),
(67, 'van cleef', 5, '2019-07-14 12:14:38', '2019-07-25 15:51:28'),
(68, 'iwc', 3, '2019-07-14 12:15:45', '2019-07-25 15:44:31'),
(69, 'dickies', 5, '2019-07-14 12:36:12', '2019-07-25 15:50:28'),
(70, 'tifany', 3, '2019-07-14 12:37:13', '2019-07-25 15:50:52'),
(71, 'northface', 3, '2019-07-14 13:00:59', '2019-07-25 15:43:32'),
(72, 'gucci', 3, '2019-07-14 13:02:04', '2019-07-25 15:34:32'),
(73, 'lipstick', 2, '2019-07-16 09:30:17', '2019-07-16 09:31:02'),
(74, 'Bisque Georgette Saree for Women BG-78', 15, '2019-07-17 04:47:01', '2019-07-25 06:18:07'),
(75, 'Georgette Pink and Black for Women PB-123', 8, '2019-07-17 05:44:44', '2019-07-25 06:16:27'),
(76, 'Fiberglass Measuring Tape 30M100 Feet', 1, '2019-07-17 05:49:22', '2019-07-17 05:49:22'),
(77, 'Georgette Pink and Black for Women', 2, '2019-07-17 11:12:45', '2019-07-17 11:12:46'),
(78, 'Georgette Sky Blue and Pink Saree for Women SBP-34', 2, '2019-07-18 04:22:23', '2019-07-25 06:17:32'),
(79, 'Red Georgette Designer Soft Party Wear Saree WS-09', 5, '2019-07-18 05:25:59', '2019-07-25 06:22:15'),
(80, 'Georgette Red And Beige Color Embroidered Saree With Unstitched Blouse', 1, '2019-07-18 10:16:22', '2019-07-18 10:16:22'),
(81, 'Crome cast', 1, '2019-07-18 15:55:56', '2019-07-18 15:55:56'),
(82, 'Cast', 1, '2019-07-18 16:01:36', '2019-07-18 16:01:36'),
(83, 'ফিরিপস ব্লেন্ডার', 4, '2019-07-20 15:26:52', '2019-07-20 15:36:29'),
(84, 'ফিলিপস ব্লেন্ডার', 1, '2019-07-20 15:34:14', '2019-07-20 15:34:14'),
(85, 'nima blender', 1, '2019-07-24 07:13:02', '2019-07-24 07:13:02'),
(86, 'Red and Golden Embroidered Georgette Saree for Women RG098', 1, '2019-07-25 06:23:39', '2019-07-25 06:23:39'),
(87, 'Amazing Party Saree AP-091', 2, '2019-07-25 06:24:09', '2019-07-25 06:24:10'),
(88, 'loremipsum0.558336377672967', 1, '2019-07-25 09:30:56', '2019-07-25 09:30:56'),
(89, 'loremipsum0.07685602821441506', 1, '2019-07-25 11:16:03', '2019-07-25 11:16:03'),
(90, 'pendrive', 1, '2019-07-25 13:23:05', '2019-07-25 13:23:05'),
(91, 'acyvir injection', 3, '2021-06-06 01:55:53', '2021-06-06 01:56:00'),
(92, 'napa rapid', 2, '2021-06-09 03:46:53', '2021-08-05 01:07:04'),
(93, 'a', 1, '2021-08-05 01:06:42', '2021-08-05 01:06:42'),
(94, 'baby', 4, '2021-08-05 01:06:49', '2022-01-20 06:49:25'),
(95, 'new', 1, '2021-08-05 01:07:02', '2021-08-05 01:07:02'),
(96, 'napa', 14, '2021-08-05 01:07:09', '2022-01-28 05:24:23'),
(97, 'rilovir', 1, '2021-09-13 04:30:34', '2021-09-13 04:30:34'),
(98, 'paracetamol', 2, '2021-10-04 10:57:55', '2021-10-04 11:00:01'),
(99, 'https://www.arogga.com/', 1, '2021-10-22 19:45:13', '2021-10-22 19:45:13'),
(100, 'test product', 3, '2021-11-12 20:46:43', '2021-11-13 11:59:35'),
(101, 'স্তন নানা ধরনের চাকা', 1, '2022-01-20 06:48:27', '2022-01-20 06:48:27'),
(102, 'bag', 1, '2022-01-20 06:48:46', '2022-01-20 06:48:46'),
(103, 'boi', 1, '2022-01-20 06:48:56', '2022-01-20 06:48:56'),
(104, 'toy', 1, '2022-01-20 06:49:10', '2022-01-20 06:49:10'),
(105, 'baby toys', 1, '2022-01-20 06:49:40', '2022-01-20 06:49:40'),
(106, 'youtheory Collagen Plus Biotin 390 Tablet', 1, '2022-01-20 06:51:13', '2022-01-20 06:51:13'),
(107, 'bioderma sebium foaming gel price in bangladesh', 2, '2022-01-31 03:56:18', '2022-01-31 03:56:28'),
(108, 'Avene Cleanance Cleansing Gel 200ml', 1, '2022-02-01 02:56:37', '2022-02-01 02:56:37'),
(109, 'huggies dry pant diaper price in bangladesh', 1, '2022-02-01 06:21:19', '2022-02-01 06:21:19'),
(110, 'Huggies', 1, '2022-02-01 06:24:17', '2022-02-01 06:24:17'),
(111, 'huggies dry pants diaper', 1, '2022-02-06 09:32:53', '2022-02-06 09:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verification_status` int(1) NOT NULL DEFAULT 0,
  `verification_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT 0,
  `sslcommerz_status` int(1) NOT NULL DEFAULT 0,
  `stripe_status` int(1) DEFAULT 0,
  `paypal_status` int(1) NOT NULL DEFAULT 0,
  `paypal_client_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_client_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssl_store_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssl_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_to_pay` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`) VALUES
(1, '| Fastest Online Shop', 'https://www.ehavene.com.bd/', 11, 'https://www.ehavene.com.bd/', 'Ehavene is your digital Shop solution. We are here to help you look after your own shopping as a proactive measure helping you prevent illness as we strive to build a healthy community.', '2021-12-13 17:11:30', '2021-12-14 04:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addesses`
--

CREATE TABLE `shipping_addesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` int(11) DEFAULT NULL,
  `post_code` int(5) DEFAULT NULL,
  `label` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addesses`
--

INSERT INTO `shipping_addesses` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `region`, `city`, `area`, `shipping_cost`, `post_code`, `label`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(44, 333, 'shakil', 'shakil@gmail.com', '01234567890', 'London', '1', '3', '27', 100, 3434, 'Home', 1, NULL, NULL, '2021-09-21 02:11:55', '2021-09-21 02:11:55'),
(46, 335, 'shakil015', 'kmushakil64@gmail.com', '01533186152', 'test address 2', '1', '7', '63', 100, 99, 'Home', 1, NULL, NULL, '2021-09-21 18:12:40', '2021-09-21 19:16:03'),
(50, 339, 'shakil', 'kazimuhammadullah@gmail.com', '01533186152', 'London', '2', '15', '139', 100, 3434, NULL, NULL, NULL, NULL, '2021-09-21 22:10:46', '2021-09-21 22:10:46'),
(51, 340, 'towhid', 'towhid10@gmail.com', '07533498883', 'Dhaka', '6', '48', '512', 50, 1207, NULL, NULL, NULL, NULL, '2021-09-22 09:58:09', '2021-09-22 09:58:09'),
(52, 341, 'shakil', 'kazimuhammadullah@gmail.com', '01533186152', 'test address', '1', '7', '62', 100, 2233, 'Home', 1, NULL, NULL, '2021-09-22 18:30:17', '2021-09-22 18:30:17'),
(53, 342, 'shakil015', 'muhammadullah.shakil@gmail.com', '01718160843', 'test address.', '1', '9', '84', 100, 99, 'Home', 1, NULL, NULL, '2021-09-22 19:17:18', '2021-09-22 19:17:18'),
(54, 344, 'shakil', 'kazimuhammadullah@gmail.com', '01818004030', 'London', '2', '14', '130', 100, 3434, NULL, NULL, NULL, NULL, '2021-09-23 01:00:42', '2021-09-23 01:00:42'),
(55, 346, 'Shakil 017', 'fahim.amin71@gmail.com', '01726004037', 'test add', '2', '14', '126', 100, 1010, NULL, NULL, NULL, NULL, '2021-09-23 17:45:27', '2021-09-23 17:45:27'),
(56, 345, 'Kazi Muhammad Ullah', 'kazimuhammadullah3@gmail.com', '01676026311', 'test address', '1', '2', '20', 100, 99, 'Home', 1, NULL, NULL, '2021-09-23 17:51:12', '2021-09-27 17:53:39'),
(57, 348, 'shakil', 'shadsgdkil@gmail.com', '01776254332', 'London', '1', '5', '44', 100, 3434, NULL, NULL, NULL, NULL, '2021-09-23 19:10:24', '2021-09-23 19:10:24'),
(58, 349, 'shakil015', 'kmushakil64@gmail.com', '01533186152', 'test address', '1', '2', '22', 100, 99, 'Home', 1, NULL, NULL, '2021-09-23 19:58:35', '2021-09-23 19:58:35'),
(59, 350, 'habib', 'habibkhan101020@gmail.com', '01676610187', 'ryhdjn tjutre', '1', '6', '55', 100, 3600, 'Home', 1, NULL, NULL, '2021-09-26 01:25:16', '2021-09-26 01:25:16'),
(60, 352, 'shakil015', 'kmushakil64@gmail.com', '01676026364', 'test address.', '3', '21', '182', 100, 99, 'Office', 1, NULL, NULL, '2021-09-27 18:10:41', '2021-09-27 18:10:41'),
(61, 354, 'Nurul Amin Khalashi', 'fahim.amin71@gmail.com', '01726004037', 'House # 24, Road # 31, Block # D, Section 12, Pallabi, Dhaka-1212', '2', '14', '125', 100, 1212, 'Home', 1, NULL, NULL, '2021-09-28 06:08:06', '2021-09-28 06:08:06'),
(62, 332, 'hasib', 'hasib.2030.hu@gmail.com', '01618356180', '217 3rd colony, lalkuthi, Mirpur-1', '6', '48', '512', 50, 1216, 'Office', 1, NULL, NULL, '2021-09-29 00:11:29', '2021-10-29 06:12:42'),
(63, 351, 'shakil64', 'kazimuhammadullah@gmail.com', '01676026364', 'Block-D, House-24, Road-31, Section-12, Mirpur', '3', '28', '220', 100, 5566, 'Home', 1, NULL, NULL, '2021-10-11 03:18:08', '2021-10-11 18:17:21'),
(64, 323, 'Emu', NULL, '01723096437', NULL, '3', '20', '177', 100, NULL, 'Home', 1, NULL, NULL, '2021-10-12 00:52:31', '2021-10-12 00:52:31'),
(68, 340, 'test', 'info@rabibar.com', '099', 'fsfsf', '4', '30', '231', 120, 223, 'Office', 1, NULL, NULL, '2021-10-14 11:54:55', '2021-10-14 11:54:55'),
(69, 340, 'fdsfs', 'towhid10@hotmail.com', '123', 'ffsdfs', '1', '8', '69', 120, 111, 'Office', 1, NULL, NULL, '2021-10-14 11:56:11', '2021-10-14 11:56:11'),
(70, 365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-16 18:02:10', '2021-10-16 18:02:10'),
(71, 375, 'Sany', 'sani131315@gmail.com', '01620991936', 'sas hj has hjsa', '2', '14', '124', 120, 1216, 'Home', 1, NULL, NULL, '2021-12-12 05:33:38', '2021-12-12 05:33:38'),
(72, 379, 'Ehavene.com', 'medihavene@gmail.com', '01755944277', 'La 53/1 Middel Badda Dhaka 1212', '6', '48', '496', 50, 1212, 'Home', 1, NULL, NULL, '2021-12-13 02:38:52', '2021-12-13 02:38:52'),
(73, 385, 'test name', 'test@gmail.com', '01674437137', 'dhaka', '1', '10', '93', 120, 9797, 'Office', 1, NULL, NULL, '2022-01-11 05:54:34', '2022-01-11 05:54:34'),
(74, 367, 'Tanzir', 'tanzirnur@gmail.com', '01674437137', 'Dhaka', '1', '10', '94', 120, 1212, 'Office', 1, NULL, NULL, '2022-01-13 12:09:57', '2022-01-13 12:09:57'),
(75, 386, 'MD IMRAN', 'mufazzelanis@gmail.com', '01635011492', 'Dhaka', '1', '1', '8', 120, 1212, 'Office', 1, NULL, NULL, '2022-01-18 04:07:44', '2022-01-18 04:07:44'),
(76, 392, 'test', 'dev@gmail.com', '01674437137', 'Dhaka', NULL, NULL, NULL, 100, NULL, NULL, 1, NULL, NULL, '2022-01-20 01:17:02', '2022-01-20 01:17:02'),
(77, 397, 'Md Hasan', 'shiblyhm@gmail.com', '01911695556', 'badda', NULL, NULL, NULL, 100, NULL, NULL, 1, NULL, NULL, '2022-02-02 01:58:13', '2022-02-02 01:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `title`, `price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Inside Dhaka', '50', 1, NULL, NULL, '2021-08-04 09:00:39', '2021-08-05 01:02:06'),
(2, 'Outside Dhaka', '100', 1, NULL, NULL, '2021-08-04 09:01:48', '2021-08-05 01:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `created_at`, `updated_at`) VALUES
(1, 3, 'Demo Seller Shop', 'uploads/hop/logo/Gt1xw7vjTpMnwpADkGSilc35qrAfcw02kuZ36Jdn.png', '[]', 'House : Demo, Road : Demo, Section : Demo', 'www.facebook.com', 'www.google.com', 'www.twitter.com', 'www.youtube.com', 'Demo-Seller-Shop-1', '2018-11-27 10:23:13', '2019-05-23 13:17:42'),
(2, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-19', '2019-05-20 00:43:53', '2019-05-20 00:43:53'),
(3, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-20', '2019-05-23 14:01:57', '2019-05-23 14:01:57'),
(4, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-21', '2019-05-23 19:50:14', '2019-05-23 19:50:14'),
(5, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-22', '2019-05-23 19:51:08', '2019-05-23 19:51:08'),
(6, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-23', '2019-05-23 19:52:00', '2019-05-23 19:52:00'),
(7, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-24', '2019-05-23 19:52:30', '2019-05-23 19:52:30'),
(8, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-25', '2019-05-23 19:52:59', '2019-05-23 19:52:59'),
(9, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-26', '2019-05-23 19:53:24', '2019-05-23 19:53:24'),
(10, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-27', '2019-05-23 19:54:19', '2019-05-23 19:54:19'),
(11, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-28', '2019-05-23 19:54:45', '2019-05-23 19:54:45'),
(12, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-29', '2019-05-23 19:55:13', '2019-05-23 19:55:13'),
(13, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-30', '2019-05-23 19:55:53', '2019-05-23 19:55:53'),
(14, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-31', '2019-05-23 20:00:54', '2019-05-23 20:00:54'),
(15, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-32', '2019-05-23 20:01:24', '2019-05-23 20:01:24'),
(16, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-33', '2019-05-23 20:01:53', '2019-05-23 20:01:53'),
(17, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-34', '2019-05-23 20:02:33', '2019-05-23 20:02:33'),
(18, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-35', '2019-05-23 20:03:19', '2019-05-23 20:03:19'),
(19, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-36', '2019-05-23 20:03:43', '2019-05-23 20:03:43'),
(20, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-37', '2019-05-23 20:07:06', '2019-05-23 20:07:06'),
(21, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-38', '2019-05-23 20:07:33', '2019-05-23 20:07:33'),
(22, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-39', '2019-05-23 20:07:57', '2019-05-23 20:07:57'),
(23, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-40', '2019-05-23 20:08:31', '2019-05-23 20:08:31'),
(24, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-41', '2019-05-23 20:08:55', '2019-05-23 20:08:55'),
(25, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-42', '2019-05-23 20:09:21', '2019-05-23 20:09:21'),
(26, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-43', '2019-05-23 20:10:32', '2019-05-23 20:10:32'),
(27, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-44', '2019-05-23 20:10:58', '2019-05-23 20:10:58'),
(28, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-45', '2019-05-23 20:11:24', '2019-05-23 20:11:24'),
(29, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-46', '2019-05-23 20:11:47', '2019-05-23 20:11:47'),
(30, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-48', '2019-05-27 13:13:01', '2019-05-27 13:13:01'),
(31, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-49', '2019-05-27 13:14:19', '2019-05-27 13:14:19'),
(32, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-50', '2019-05-27 13:17:25', '2019-05-27 13:17:25'),
(33, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-51', '2019-05-27 13:18:24', '2019-05-27 13:18:24'),
(34, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-52', '2019-05-27 13:47:09', '2019-05-27 13:47:09'),
(35, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-53', '2019-05-27 14:39:26', '2019-05-27 14:39:26'),
(36, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-54', '2019-05-27 14:42:03', '2019-05-27 14:42:03'),
(37, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-55', '2019-05-27 15:11:31', '2019-05-27 15:11:31'),
(38, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-56', '2019-05-28 11:34:50', '2019-05-28 11:34:50'),
(39, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-57', '2019-05-30 13:25:48', '2019-05-30 13:25:48'),
(40, 58, 'Umme Hani Shop', NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, 'Umme-Hani-Shop-', '2019-06-14 02:24:11', '2019-06-14 02:24:11'),
(41, 59, 'London Shop', NULL, NULL, 'London', NULL, NULL, NULL, NULL, 'London-Shop-', '2019-06-14 02:27:49', '2019-06-14 02:27:49'),
(42, 60, 'Test shop', NULL, NULL, 'dhaka', NULL, NULL, NULL, NULL, 'Test-shop-', '2019-06-14 02:34:30', '2019-06-14 02:34:30'),
(43, 61, 'Quality Shop', NULL, NULL, '2/133 Gulisthan shopping Complex Dhaka-1000', NULL, NULL, NULL, NULL, 'Quality-Shop-', '2019-06-16 18:04:06', '2019-06-16 18:04:06'),
(44, 95, 'Pudaier', NULL, NULL, 'Banani, Dhaka', NULL, NULL, NULL, NULL, 'Pudaier-', '2019-06-21 11:08:28', '2019-06-21 11:08:28'),
(45, 104, 'Kenakatabd', NULL, '[]', 'Dhanmondi', 'Facebook.com/shopkenakata', NULL, NULL, NULL, 'Kenakatabd-', '2019-06-22 10:59:45', '2019-06-22 11:00:37'),
(46, 106, 'Haque International', 'uploads/hop/logo/lMks4amhFmaFtjpJ6gAJtcFmrZNSnDki8nyzVZzu.png', '[\"uploads\\/shop\\/sliders\\/phvQzgYqMOyOSTeA4rS6Vqumbh4hU3BVAEQENrkG.png\"]', 'House no.26/3, Jigatola, Puraton Kacha Bazar Road, Dhaka - 1209', NULL, NULL, NULL, NULL, 'Haque-International-46', '2019-06-23 14:11:35', '2019-06-23 14:21:09'),
(47, 108, 'EsonMay', NULL, '[]', 'GUANGZHOU, China', NULL, NULL, NULL, NULL, 'EsonMay-47', '2019-07-02 07:30:54', '2019-07-02 07:51:40'),
(48, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-73', '2021-04-27 01:30:24', '2021-04-27 01:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `published`, `created_at`, `updated_at`) VALUES
(62, 'uploads/sliders/7xtepXRL15CrklnMhWZwGsOgZZCZaG67OFALgxtE.jpg', 1, '2022-02-09 03:01:14', '2022-02-09 03:01:14'),
(63, 'uploads/sliders/A931wdTJni2ro4FE6LXD2dGqiKBKnCdjz2MJGats.jpg', 1, '2022-02-09 03:01:14', '2022-02-09 03:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `softcodes`
--

CREATE TABLE `softcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `softcodes`
--

INSERT INTO `softcodes` (`id`, `name`, `updated_by`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 'sales_commission', NULL, '71', NULL, '2021-06-08 00:27:59', '2021-06-08 03:31:32'),
(6, 'ref_commission', NULL, '71', NULL, '2021-06-08 03:35:35', '2021-06-08 03:35:35'),
(7, 'test', NULL, '65', NULL, '2021-09-19 03:09:29', '2021-09-19 03:09:29'),
(8, 'discount', NULL, '65', NULL, '2021-10-12 18:57:26', '2021-10-12 18:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

CREATE TABLE `special_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tamount` bigint(20) DEFAULT NULL,
  `upto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uamount` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `special_offers`
--

INSERT INTO `special_offers` (`id`, `title`, `tamount`, `upto`, `uamount`, `status`, `coupon`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Cashback', 100, 'upto', 5000, 1, NULL, NULL, NULL, '2021-08-05 06:50:32', '2021-08-05 06:50:32'),
(2, 'Cashback', 80, 'upto', 4000, 1, NULL, NULL, NULL, '2021-08-05 06:51:07', '2021-08-05 06:51:07'),
(3, 'Cashback', 60, 'upto', 3000, 1, NULL, NULL, NULL, '2021-08-05 06:51:29', '2021-08-05 06:51:29'),
(4, 'Cashback', 40, 'upto', 2000, 1, NULL, NULL, NULL, '2021-08-05 06:51:48', '2021-08-05 06:51:48'),
(5, 'Cashback', 20, 'upto', 1000, 1, NULL, NULL, NULL, '2021-08-05 06:52:09', '2021-08-05 06:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(11, 318, 1, '2021-09-12 19:09:58', '2021-09-12 19:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'tonnishanto@gmail.com', '2019-04-28 06:42:26', '2019-04-28 06:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `description`, `created_at`, `updated_at`) VALUES
(98, 'Skin & Body Care', 25, 'Diabetes Medicine', '2021-09-14 18:55:45', '2021-11-21 23:36:27'),
(99, 'Face Care Solution', 25, 'OTC', '2021-09-14 18:56:10', '2021-11-23 02:06:35'),
(100, 'Hair Treatment', 25, 'Prescription', '2021-09-14 18:56:40', '2021-11-21 23:37:29'),
(101, 'Foot Care', 25, 'Insulin', '2021-09-14 18:57:03', '2021-11-23 02:07:05'),
(102, 'Eye & Ear Care Product', 25, 'Eye &amp; Ear Care Product', '2021-11-22 00:37:27', '2021-11-22 00:37:27'),
(103, 'Supplement\'s', 30, NULL, '2021-11-22 02:27:05', '2021-11-22 06:45:16'),
(104, 'Whitening & Brightening', 25, NULL, '2021-11-23 02:16:32', '2021-11-23 02:16:32'),
(105, 'Baby Body & Skin Care', 26, NULL, '2021-11-23 02:48:45', '2021-11-26 08:40:32'),
(106, 'Baby Food\'s', 26, NULL, '2021-11-23 02:49:20', '2021-11-23 02:49:20'),
(107, 'Toy\'s', 26, NULL, '2021-11-23 02:50:00', '2021-11-23 02:50:00'),
(108, 'Feeding Accessories', 26, NULL, '2021-11-23 02:54:10', '2021-11-23 02:54:10'),
(109, 'Diaper & Wipes', 26, NULL, '2021-11-23 02:55:05', '2021-11-23 02:55:05'),
(110, 'Baby Special Care', 26, NULL, '2021-11-23 03:00:12', '2021-11-23 03:00:12'),
(111, 'Body & Skin Care', 27, NULL, '2021-11-23 03:53:55', '2021-11-23 03:53:55'),
(112, 'Men\'s Face Care', 27, NULL, '2021-11-23 03:54:23', '2021-11-23 03:54:23'),
(113, 'Hair Care Solution', 27, NULL, '2021-11-23 03:54:47', '2021-11-23 03:54:47'),
(114, 'Sexual Wellness', 27, NULL, '2021-11-23 03:55:19', '2021-11-23 03:55:19'),
(115, 'Smoking Relief', 27, NULL, '2021-11-23 03:56:57', '2021-11-23 03:56:57'),
(116, 'Shaving & Shower', 27, NULL, '2021-11-23 03:57:34', '2021-11-23 03:57:34'),
(117, 'Pet Accessories', 28, NULL, '2021-11-23 04:02:13', '2021-11-23 04:02:13'),
(118, 'Dog Food', 28, NULL, '2021-11-23 04:02:28', '2021-11-23 04:02:28'),
(119, 'Cat Food', 28, NULL, '2021-11-23 04:02:53', '2021-11-23 04:02:53'),
(120, 'Pet Medicine', 28, NULL, '2021-11-23 04:03:10', '2021-11-23 04:03:10'),
(121, 'Small Animal', 28, NULL, '2021-11-23 04:03:44', '2021-11-23 04:03:44'),
(122, 'Pet Vitamin & Supplement', 28, NULL, '2021-11-23 04:04:10', '2021-11-23 04:04:10'),
(123, 'Mother Care', 29, NULL, '2021-11-23 04:09:39', '2021-11-23 04:09:39'),
(124, 'Women\'s Skin Care', 29, NULL, '2021-11-23 04:10:11', '2021-11-23 04:10:11'),
(125, 'Face & Eye Care', 29, NULL, '2021-11-23 04:10:48', '2021-11-23 04:10:48'),
(126, 'Women\'s Makeup', 29, NULL, '2021-11-23 04:11:52', '2021-11-23 04:11:52'),
(127, 'Hair Care', 29, NULL, '2021-11-23 04:12:12', '2021-11-23 04:12:12'),
(128, 'Female Hygiene', 29, NULL, '2021-11-23 04:13:14', '2021-11-23 04:13:14'),
(129, 'Personal Care', 30, NULL, '2021-11-23 04:35:43', '2021-11-23 04:35:43'),
(130, 'Dental & Oral Care', 30, NULL, '2021-11-23 04:36:14', '2021-11-23 04:36:14'),
(131, 'Health & Wellness', 30, NULL, '2021-11-23 04:48:06', '2021-11-23 04:48:06'),
(132, 'Organic Food', 31, NULL, '2021-11-23 05:33:19', '2021-11-23 05:33:19'),
(133, 'Organic Ingredient', 31, NULL, '2021-11-23 05:33:59', '2021-11-26 08:56:22'),
(134, 'Organic Ghee & Milk', 31, NULL, '2021-11-23 05:34:54', '2021-11-23 05:34:54'),
(135, 'Herbal Tea', 31, NULL, '2021-11-23 05:35:53', '2021-11-23 05:35:53'),
(136, 'Organic Oil', 31, NULL, '2021-11-23 05:36:14', '2021-11-23 05:36:14'),
(137, 'Organic Honey', 31, NULL, '2021-11-23 05:36:38', '2021-11-23 05:36:38'),
(138, 'Food Ingredient', 32, NULL, '2021-11-23 05:45:49', '2021-11-23 05:45:49'),
(139, 'International Food', 32, NULL, '2021-11-23 05:46:41', '2021-11-23 05:46:41'),
(140, 'Soft Drink & Juice', 32, NULL, '2021-11-23 05:47:15', '2021-11-23 05:47:15'),
(141, 'Chocolate\'s Candy', 32, NULL, '2021-11-23 05:48:54', '2021-11-23 05:48:54'),
(142, 'Diabetes Device', 34, NULL, '2021-11-23 05:54:31', '2021-11-23 05:54:31'),
(143, 'Blood Pressure Device', 34, NULL, '2021-11-23 05:56:55', '2021-11-23 05:56:55'),
(144, 'Surgical Instruments', 34, NULL, '2021-11-23 05:57:46', '2021-11-23 05:57:46'),
(145, 'First Aid', 34, NULL, '2021-11-23 05:58:22', '2021-11-27 01:01:28'),
(146, 'Nebulization Device', 34, NULL, '2021-11-23 06:00:08', '2021-11-23 06:00:08'),
(147, 'Mosquito Repellent', 33, NULL, '2021-11-27 00:47:04', '2021-11-27 00:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `brands` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `sub_category_id`, `name`, `brands`, `description`, `created_at`, `updated_at`) VALUES
(280, 99, 'Foaming Gel', '[\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\",\"154\",\"155\",\"156\"]', '<p><br></p>', '2021-09-14 19:45:54', '2021-11-21 23:56:23'),
(281, 99, 'Face Wash', '[\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\",\"154\",\"155\",\"156\"]', 'OTC', '2021-09-14 21:11:38', '2021-11-21 23:57:33'),
(282, 99, 'Cleanser & Cleansing Gel', '[\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\",\"154\",\"155\",\"156\"]', '<p>Cleanser &amp; Cleansing Gel<br></p>', '2021-09-14 21:27:51', '2021-11-21 23:59:14'),
(283, 99, 'Lip Blam', '[\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\",\"154\",\"155\",\"156\"]', NULL, '2021-11-22 00:00:56', '2021-11-22 00:00:56'),
(284, 102, 'Under Eye Cream', '[\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\",\"154\",\"155\",\"156\"]', 'Under Eye Cream', '2021-11-22 00:38:58', '2021-11-22 00:38:58'),
(285, 101, 'Cream', '[\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\",\"154\",\"155\",\"156\",\"157\"]', NULL, '2021-11-22 00:59:49', '2021-11-22 01:03:50'),
(286, 103, 'Gummies Supplement', '[\"148\",\"149\",\"150\",\"151\",\"153\",\"154\",\"155\",\"158\",\"159\"]', 'Gummies Supplement', '2021-11-22 02:28:34', '2021-11-22 07:57:32'),
(287, 103, 'Collagen Supplement', '[\"148\",\"149\",\"150\",\"151\",\"153\",\"154\",\"155\",\"158\",\"159\"]', NULL, '2021-11-22 07:38:33', '2021-11-22 07:57:10'),
(288, 103, 'Biotin Tablet', '[\"148\",\"149\",\"150\",\"151\",\"153\",\"154\",\"155\",\"158\",\"159\"]', NULL, '2021-11-22 07:39:21', '2021-11-22 07:56:51'),
(289, 103, 'Multivitamin Supplement', '[\"148\",\"149\",\"150\",\"151\",\"153\",\"154\",\"155\",\"158\",\"159\"]', NULL, '2021-11-22 07:40:29', '2021-11-22 07:56:38'),
(290, 103, 'Joint Supplement', '[\"148\",\"149\",\"150\",\"151\",\"153\",\"154\",\"155\",\"158\"]', NULL, '2021-11-22 07:42:15', '2021-11-22 07:42:15'),
(291, 103, 'Dietary Supplement', '[\"148\",\"149\",\"150\",\"151\",\"153\",\"154\",\"155\",\"158\"]', NULL, '2021-11-22 07:46:16', '2021-11-22 07:46:16'),
(292, 124, 'Stretch Mark Oil', '[\"145\",\"146\",\"147\",\"151\",\"156\",\"157\",\"160\"]', NULL, '2021-11-24 06:32:12', '2021-11-24 06:32:12'),
(293, 109, 'Pant System Diaper', '[\"145\"]', NULL, '2021-11-25 06:49:29', '2021-11-25 06:49:29'),
(294, 109, 'Belt System Diaper', '[\"145\"]', NULL, '2021-11-25 06:50:09', '2021-11-25 06:50:09'),
(295, 109, 'Baby Wipes', '[\"145\"]', NULL, '2021-11-25 06:50:41', '2021-11-25 06:50:41'),
(296, 128, 'Hair Remover', '[\"145\"]', NULL, '2021-11-25 07:16:54', '2021-11-25 07:16:54'),
(297, 138, 'Milk Powder', '[\"145\"]', NULL, '2021-11-25 07:30:19', '2021-11-25 07:30:19'),
(298, 124, 'Moisturizer Cream', '[\"145\"]', NULL, '2021-11-25 07:36:36', '2021-11-25 07:36:36'),
(299, 138, 'Pure Ghee', '[\"145\"]', NULL, '2021-11-25 07:48:40', '2021-11-25 07:48:40'),
(300, 127, 'Hair Shampoo', '[\"145\"]', NULL, '2021-11-26 03:45:41', '2021-11-26 03:45:41'),
(301, 125, 'Fairness Cream', '[\"145\"]', NULL, '2021-11-26 03:54:08', '2021-11-26 03:54:08'),
(302, 125, 'Anti Spot Cream', '[\"145\"]', NULL, '2021-11-26 03:54:51', '2021-11-26 03:54:51'),
(303, 125, 'Face Wash Cleanser', '[\"145\"]', NULL, '2021-11-26 04:08:52', '2021-11-26 04:08:52'),
(304, 114, 'Sexual Tablet', '[\"145\"]', NULL, '2021-11-26 04:24:26', '2021-11-26 04:24:26'),
(305, 114, 'Enhancement Gel & Cream', '[\"145\"]', NULL, '2021-11-26 04:34:41', '2021-11-26 04:34:41'),
(306, 114, 'Condom', '[\"145\"]', NULL, '2021-11-26 04:36:26', '2021-11-26 04:36:26'),
(307, 119, 'Dry Cat Food', '[\"145\"]', NULL, '2021-11-26 04:53:15', '2021-11-26 04:53:15'),
(308, 118, 'Dry Dog Food', '[\"145\"]', NULL, '2021-11-26 04:53:52', '2021-11-26 04:53:52'),
(309, 117, 'Bird Cage', '[\"145\"]', NULL, '2021-11-26 05:03:23', '2021-11-26 05:03:23'),
(310, 138, 'Raw Honey', '[\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\"]', NULL, '2021-11-26 05:59:36', '2021-12-14 02:57:25'),
(311, 142, 'Blood Glucose Test Meter', '[\"145\"]', NULL, '2021-11-26 06:20:06', '2021-11-26 06:20:06'),
(312, 142, 'Blood Glucose Test Strips', '[\"145\"]', NULL, '2021-11-26 06:26:18', '2021-11-26 06:26:18'),
(313, 142, 'Blood Lancets', '[\"146\"]', NULL, '2021-11-26 06:45:41', '2021-11-26 06:45:41'),
(314, 146, 'Nebulizer Machine', '[\"145\"]', NULL, '2021-11-26 06:55:27', '2021-11-26 06:55:27'),
(315, 99, 'Lighting Cream', '[\"145\",\"146\",\"147\",\"157\",\"160\"]', NULL, '2021-11-26 07:49:54', '2021-11-26 07:49:54'),
(316, 98, 'Anti Ageing Cream & Lotion', '[\"145\"]', NULL, '2021-11-26 07:53:01', '2021-11-26 07:53:01'),
(317, 99, 'Sunscreen Cream', '[\"145\"]', NULL, '2021-11-26 08:08:40', '2021-11-26 08:08:40'),
(318, 99, 'Face Cream', '[\"145\"]', NULL, '2021-11-26 08:12:19', '2021-11-26 08:12:19'),
(319, 110, 'Baby Multivitamin', '[\"145\"]', NULL, '2021-11-26 08:20:04', '2021-11-26 08:20:04'),
(320, 105, 'Lice Shampoo', '[\"145\"]', NULL, '2021-11-26 08:39:41', '2021-11-26 08:39:41'),
(321, 105, 'Nappy Rash Cream', '[\"145\"]', NULL, '2021-11-26 08:45:58', '2021-11-26 08:45:58'),
(322, 133, 'Turmeric Powder', '[\"145\"]', NULL, '2021-11-26 08:55:31', '2021-11-26 08:55:31'),
(323, 147, 'Mosquito Repellent Spray', '[\"145\"]', NULL, '2021-11-27 00:47:26', '2021-11-27 00:47:26'),
(324, 147, 'Mosquito Repellent Cream', '[\"145\"]', NULL, '2021-11-27 00:47:52', '2021-11-27 00:47:52'),
(325, 147, 'Mosquito Repellent Lotion', '[\"145\"]', NULL, '2021-11-27 00:48:19', '2021-11-27 00:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `ref_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earning_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earning_date` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `ref_by`, `status`, `earning_type`, `earning_date`, `amount`, `updated_by`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(21, 333, NULL, 'AFF64188157', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-09-21 18:08:43', '2021-09-21 18:08:43'),
(22, 333, 223, NULL, 'Paid', 'Sales Commission', NULL, 60, NULL, NULL, NULL, '2021-09-21 21:39:58', '2021-09-21 21:39:58'),
(23, 340, NULL, 'AFF79147825', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-09-22 18:27:54', '2021-09-22 18:27:54'),
(24, 340, 234, NULL, 'Paid', 'Sales Commission', NULL, 113, NULL, NULL, NULL, '2021-09-23 00:12:47', '2021-09-23 00:12:47'),
(25, 345, NULL, 'AFF27224922', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-09-23 19:35:09', '2021-09-23 19:35:09'),
(26, 345, 242, NULL, 'Paid', 'Sales Commission', NULL, 246, NULL, NULL, NULL, '2021-09-23 20:11:19', '2021-09-23 20:11:19'),
(27, 345, 244, NULL, 'Paid', 'Sales Commission', NULL, 480, NULL, NULL, NULL, '2021-09-23 21:51:07', '2021-09-23 21:51:07'),
(28, 351, NULL, 'AFF62640406', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-09-27 18:07:54', '2021-09-27 18:07:54'),
(29, 351, 257, NULL, 'Paid', 'Sales Commission', NULL, 113, NULL, NULL, NULL, '2021-09-27 18:13:47', '2021-09-27 18:13:47'),
(30, 350, NULL, 'AFF49864162', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-09-28 05:51:32', '2021-09-28 05:51:32'),
(31, 332, NULL, 'AFF68731066', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-09-28 06:06:42', '2021-09-28 06:06:42'),
(32, 332, 258, NULL, 'Paid', 'Sales Commission', NULL, 113, NULL, NULL, NULL, '2021-09-28 06:11:31', '2021-09-28 06:11:31'),
(33, 345, 259, NULL, 'Paid', 'Sales Commission', NULL, 480, NULL, NULL, NULL, '2021-09-28 23:22:45', '2021-09-28 23:22:45'),
(34, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-11-22 08:16:06', '2021-11-22 08:16:06'),
(35, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-11-25 05:43:33', '2021-11-25 05:43:33'),
(36, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-11-27 04:04:26', '2021-11-27 04:04:26'),
(37, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-11-27 04:04:28', '2021-11-27 04:04:28'),
(38, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-03 08:10:17', '2021-12-03 08:10:17'),
(39, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-03 08:55:39', '2021-12-03 08:55:39'),
(40, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-11 04:07:50', '2021-12-11 04:07:50'),
(41, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-11 04:08:02', '2021-12-11 04:08:02'),
(42, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-12 05:30:21', '2021-12-12 05:30:21'),
(43, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-12 05:32:34', '2021-12-12 05:32:34'),
(44, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-12 05:45:40', '2021-12-12 05:45:40'),
(45, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-12 05:46:48', '2021-12-12 05:46:48'),
(46, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-12 05:56:09', '2021-12-12 05:56:09'),
(47, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-13 02:35:41', '2021-12-13 02:35:41'),
(48, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-25 00:07:25', '2021-12-25 00:07:25'),
(49, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-25 00:09:07', '2021-12-25 00:09:07'),
(50, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-01-08 00:16:24', '2022-01-08 00:16:24'),
(51, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-01-10 06:03:21', '2022-01-10 06:03:21'),
(52, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-01-11 05:48:46', '2022-01-11 05:48:46'),
(53, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-01-18 04:03:55', '2022-01-18 04:03:55'),
(54, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-01-18 23:23:02', '2022-01-18 23:23:02'),
(55, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-01-18 23:23:03', '2022-01-18 23:23:03'),
(56, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-01-18 23:23:03', '2022-01-18 23:23:03'),
(57, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-01-18 23:23:04', '2022-01-18 23:23:04'),
(58, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-01-18 23:23:25', '2022-01-18 23:23:25'),
(59, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-01-20 01:14:36', '2022-01-20 01:14:36'),
(60, 318, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-02-02 01:47:55', '2022-02-02 01:47:55'),
(61, 318, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-02-02 01:48:22', '2022-02-02 01:48:22'),
(62, 318, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-02-02 01:50:22', '2022-02-02 01:50:22'),
(63, 318, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-02-02 03:45:39', '2022-02-02 03:45:39'),
(64, 318, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2022-02-05 18:22:48', '2022-02-05 18:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(3) NOT NULL,
  `district_id` int(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `shipping_cost` int(11) DEFAULT 100,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `shipping_cost`, `bn_name`, `url`, `updated_at`, `created_at`) VALUES
(1, 1, 'Debidwar', 120, 'দেবিদ্বার', 'debidwar.comilla.gov.bd', NULL, NULL),
(2, 1, 'Barura', 120, 'বরুড়া', 'barura.comilla.gov.bd', NULL, NULL),
(3, 1, 'Brahmanpara', 120, 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd', NULL, NULL),
(4, 1, 'Chandina', 120, 'চান্দিনা', 'chandina.comilla.gov.bd', NULL, NULL),
(5, 1, 'Chauddagram', 120, 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd', NULL, NULL),
(6, 1, 'Daudkandi', 120, 'দাউদকান্দি', 'daudkandi.comilla.gov.bd', NULL, NULL),
(7, 1, 'Homna', 120, 'হোমনা', 'homna.comilla.gov.bd', NULL, NULL),
(8, 1, 'Laksam', 120, 'লাকসাম', 'laksam.comilla.gov.bd', NULL, NULL),
(9, 1, 'Muradnagar', 120, 'মুরাদনগর', 'muradnagar.comilla.gov.bd', NULL, NULL),
(10, 1, 'Nangalkot', 120, 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd', NULL, NULL),
(11, 1, 'Comilla Sadar', 120, 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd', NULL, NULL),
(12, 1, 'Meghna', 120, 'মেঘনা', 'meghna.comilla.gov.bd', NULL, NULL),
(13, 1, 'Monohargonj', 120, 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd', NULL, NULL),
(14, 1, 'Sadarsouth', 120, 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd', NULL, NULL),
(15, 1, 'Titas', 120, 'তিতাস', 'titas.comilla.gov.bd', NULL, NULL),
(16, 1, 'Burichang', 120, 'বুড়িচং', 'burichang.comilla.gov.bd', NULL, NULL),
(17, 1, 'Lalmai', 120, 'লালমাই', 'lalmai.comilla.gov.bd', NULL, NULL),
(18, 2, 'Chhagalnaiya', 120, 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd', NULL, NULL),
(19, 2, 'Feni Sadar', 120, 'ফেনী সদর', 'sadar.feni.gov.bd', NULL, NULL),
(20, 2, 'Sonagazi', 120, 'সোনাগাজী', 'sonagazi.feni.gov.bd', NULL, NULL),
(21, 2, 'Fulgazi', 120, 'ফুলগাজী', 'fulgazi.feni.gov.bd', NULL, NULL),
(22, 2, 'Parshuram', 120, 'পরশুরাম', 'parshuram.feni.gov.bd', NULL, NULL),
(23, 2, 'Daganbhuiyan', 120, 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd', NULL, NULL),
(24, 3, 'Brahmanbaria Sadar', 120, 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd', NULL, NULL),
(25, 3, 'Kasba', 120, 'কসবা', 'kasba.brahmanbaria.gov.bd', NULL, NULL),
(26, 3, 'Nasirnagar', 120, 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd', NULL, NULL),
(27, 3, 'Sarail', 120, 'সরাইল', 'sarail.brahmanbaria.gov.bd', NULL, NULL),
(28, 3, 'Ashuganj', 120, 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd', NULL, NULL),
(29, 3, 'Akhaura', 120, 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd', NULL, NULL),
(30, 3, 'Nabinagar', 120, 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd', NULL, NULL),
(31, 3, 'Bancharampur', 120, 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd', NULL, NULL),
(32, 3, 'Bijoynagar', 120, 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    ', NULL, NULL),
(33, 4, 'Rangamati Sadar', 120, 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd', NULL, NULL),
(34, 4, 'Kaptai', 120, 'কাপ্তাই', 'kaptai.rangamati.gov.bd', NULL, NULL),
(35, 4, 'Kawkhali', 120, 'কাউখালী', 'kawkhali.rangamati.gov.bd', NULL, NULL),
(36, 4, 'Baghaichari', 120, 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd', NULL, NULL),
(37, 4, 'Barkal', 120, 'বরকল', 'barkal.rangamati.gov.bd', NULL, NULL),
(38, 4, 'Langadu', 120, 'লংগদু', 'langadu.rangamati.gov.bd', NULL, NULL),
(39, 4, 'Rajasthali', 120, 'রাজস্থলী', 'rajasthali.rangamati.gov.bd', NULL, NULL),
(40, 4, 'Belaichari', 120, 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd', NULL, NULL),
(41, 4, 'Juraichari', 120, 'জুরাছড়ি', 'juraichari.rangamati.gov.bd', NULL, NULL),
(42, 4, 'Naniarchar', 120, 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd', NULL, NULL),
(43, 5, 'Noakhali Sadar', 120, 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd', NULL, NULL),
(44, 5, 'Companiganj', 120, 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd', NULL, NULL),
(45, 5, 'Begumganj', 120, 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd', NULL, NULL),
(46, 5, 'Hatia', 120, 'হাতিয়া', 'hatia.noakhali.gov.bd', NULL, NULL),
(47, 5, 'Subarnachar', 120, 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd', NULL, NULL),
(48, 5, 'Kabirhat', 120, 'কবিরহাট', 'kabirhat.noakhali.gov.bd', NULL, NULL),
(49, 5, 'Senbug', 120, 'সেনবাগ', 'senbug.noakhali.gov.bd', NULL, NULL),
(50, 5, 'Chatkhil', 120, 'চাটখিল', 'chatkhil.noakhali.gov.bd', NULL, NULL),
(51, 5, 'Sonaimori', 120, 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd', NULL, NULL),
(52, 6, 'Haimchar', 120, 'হাইমচর', 'haimchar.chandpur.gov.bd', NULL, NULL),
(53, 6, 'Kachua', 120, 'কচুয়া', 'kachua.chandpur.gov.bd', NULL, NULL),
(54, 6, 'Shahrasti', 120, 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd', NULL, NULL),
(55, 6, 'Chandpur Sadar', 120, 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd', NULL, NULL),
(56, 6, 'Matlab South', 120, 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd', NULL, NULL),
(57, 6, 'Hajiganj', 120, 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd', NULL, NULL),
(58, 6, 'Matlab North', 120, 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd', NULL, NULL),
(59, 6, 'Faridgonj', 120, 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd', NULL, NULL),
(60, 7, 'Lakshmipur Sadar', 120, 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd', NULL, NULL),
(61, 7, 'Kamalnagar', 120, 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd', NULL, NULL),
(62, 7, 'Raipur', 120, 'রায়পুর', 'raipur.lakshmipur.gov.bd', NULL, NULL),
(63, 7, 'Ramgati', 120, 'রামগতি', 'ramgati.lakshmipur.gov.bd', NULL, NULL),
(64, 7, 'Ramganj', 120, 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd', NULL, NULL),
(65, 8, 'Rangunia', 120, 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd', NULL, NULL),
(66, 8, 'Sitakunda', 120, 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd', NULL, NULL),
(67, 8, 'Mirsharai', 120, 'মীরসরাই', 'mirsharai.chittagong.gov.bd', NULL, NULL),
(68, 8, 'Patiya', 120, 'পটিয়া', 'patiya.chittagong.gov.bd', NULL, NULL),
(69, 8, 'Sandwip', 120, 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd', NULL, NULL),
(70, 8, 'Banshkhali', 120, 'বাঁশখালী', 'banshkhali.chittagong.gov.bd', NULL, NULL),
(71, 8, 'Boalkhali', 120, 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd', NULL, NULL),
(72, 8, 'Anwara', 120, 'আনোয়ারা', 'anwara.chittagong.gov.bd', NULL, NULL),
(73, 8, 'Chandanaish', 120, 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd', NULL, NULL),
(74, 8, 'Satkania', 120, 'সাতকানিয়া', 'satkania.chittagong.gov.bd', NULL, NULL),
(75, 8, 'Lohagara', 120, 'লোহাগাড়া', 'lohagara.chittagong.gov.bd', NULL, NULL),
(76, 8, 'Hathazari', 120, 'হাটহাজারী', 'hathazari.chittagong.gov.bd', NULL, NULL),
(77, 8, 'Fatikchhari', 120, 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd', NULL, NULL),
(78, 8, 'Raozan', 120, 'রাউজান', 'raozan.chittagong.gov.bd', NULL, NULL),
(79, 8, 'Karnafuli', 120, 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd', NULL, NULL),
(80, 9, 'Coxsbazar Sadar', 120, 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd', NULL, NULL),
(81, 9, 'Chakaria', 120, 'চকরিয়া', 'chakaria.coxsbazar.gov.bd', NULL, NULL),
(82, 9, 'Kutubdia', 120, 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd', NULL, NULL),
(83, 9, 'Ukhiya', 120, 'উখিয়া', 'ukhiya.coxsbazar.gov.bd', NULL, NULL),
(84, 9, 'Moheshkhali', 120, 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd', NULL, NULL),
(85, 9, 'Pekua', 120, 'পেকুয়া', 'pekua.coxsbazar.gov.bd', NULL, NULL),
(86, 9, 'Ramu', 120, 'রামু', 'ramu.coxsbazar.gov.bd', NULL, NULL),
(87, 9, 'Teknaf', 120, 'টেকনাফ', 'teknaf.coxsbazar.gov.bd', NULL, NULL),
(88, 10, 'Khagrachhari Sadar', 120, 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd', NULL, NULL),
(89, 10, 'Dighinala', 120, 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd', NULL, NULL),
(90, 10, 'Panchari', 120, 'পানছড়ি', 'panchari.khagrachhari.gov.bd', NULL, NULL),
(91, 10, 'Laxmichhari', 120, 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd', NULL, NULL),
(92, 10, 'Mohalchari', 120, 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd', NULL, NULL),
(93, 10, 'Manikchari', 120, 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd', NULL, NULL),
(94, 10, 'Ramgarh', 120, 'রামগড়', 'ramgarh.khagrachhari.gov.bd', NULL, NULL),
(95, 10, 'Matiranga', 120, 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd', NULL, NULL),
(96, 10, 'Guimara', 120, 'গুইমারা', 'guimara.khagrachhari.gov.bd', NULL, NULL),
(97, 11, 'Bandarban Sadar', 120, 'বান্দরবান সদর', 'sadar.bandarban.gov.bd', NULL, NULL),
(98, 11, 'Alikadam', 120, 'আলীকদম', 'alikadam.bandarban.gov.bd', NULL, NULL),
(99, 11, 'Naikhongchhari', 120, 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd', NULL, NULL),
(100, 11, 'Rowangchhari', 120, 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd', NULL, NULL),
(101, 11, 'Lama', 120, 'লামা', 'lama.bandarban.gov.bd', NULL, NULL),
(102, 11, 'Ruma', 120, 'রুমা', 'ruma.bandarban.gov.bd', NULL, NULL),
(103, 11, 'Thanchi', 120, 'থানচি', 'thanchi.bandarban.gov.bd', NULL, NULL),
(104, 12, 'Belkuchi', 120, 'বেলকুচি', 'belkuchi.sirajganj.gov.bd', NULL, NULL),
(105, 12, 'Chauhali', 120, 'চৌহালি', 'chauhali.sirajganj.gov.bd', NULL, NULL),
(106, 12, 'Kamarkhand', 120, 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd', NULL, NULL),
(107, 12, 'Kazipur', 120, 'কাজীপুর', 'kazipur.sirajganj.gov.bd', NULL, NULL),
(108, 12, 'Raigonj', 120, 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd', NULL, NULL),
(109, 12, 'Shahjadpur', 120, 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd', NULL, NULL),
(110, 12, 'Sirajganj Sadar', 120, 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd', NULL, NULL),
(111, 12, 'Tarash', 120, 'তাড়াশ', 'tarash.sirajganj.gov.bd', NULL, NULL),
(112, 12, 'Ullapara', 120, 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd', NULL, NULL),
(113, 13, 'Sujanagar', 120, 'সুজানগর', 'sujanagar.pabna.gov.bd', NULL, NULL),
(114, 13, 'Ishurdi', 120, 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd', NULL, NULL),
(115, 13, 'Bhangura', 120, 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd', NULL, NULL),
(116, 13, 'Pabna Sadar', 120, 'পাবনা সদর', 'pabnasadar.pabna.gov.bd', NULL, NULL),
(117, 13, 'Bera', 120, 'বেড়া', 'bera.pabna.gov.bd', NULL, NULL),
(118, 13, 'Atghoria', 120, 'আটঘরিয়া', 'atghoria.pabna.gov.bd', NULL, NULL),
(119, 13, 'Chatmohar', 120, 'চাটমোহর', 'chatmohar.pabna.gov.bd', NULL, NULL),
(120, 13, 'Santhia', 120, 'সাঁথিয়া', 'santhia.pabna.gov.bd', NULL, NULL),
(121, 13, 'Faridpur', 120, 'ফরিদপুর', 'faridpur.pabna.gov.bd', NULL, NULL),
(122, 14, 'Kahaloo', 120, 'কাহালু', 'kahaloo.bogra.gov.bd', NULL, NULL),
(123, 14, 'Bogra Sadar', 120, 'বগুড়া সদর', 'sadar.bogra.gov.bd', NULL, NULL),
(124, 14, 'Shariakandi', 120, 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd', NULL, NULL),
(125, 14, 'Shajahanpur', 120, 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd', NULL, NULL),
(126, 14, 'Dupchanchia', 120, 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd', NULL, NULL),
(127, 14, 'Adamdighi', 120, 'আদমদিঘি', 'adamdighi.bogra.gov.bd', NULL, NULL),
(128, 14, 'Nondigram', 120, 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd', NULL, NULL),
(129, 14, 'Sonatala', 120, 'সোনাতলা', 'sonatala.bogra.gov.bd', NULL, NULL),
(130, 14, 'Dhunot', 120, 'ধুনট', 'dhunot.bogra.gov.bd', NULL, NULL),
(131, 14, 'Gabtali', 120, 'গাবতলী', 'gabtali.bogra.gov.bd', NULL, NULL),
(132, 14, 'Sherpur', 120, 'শেরপুর', 'sherpur.bogra.gov.bd', NULL, NULL),
(133, 14, 'Shibganj', 120, 'শিবগঞ্জ', 'shibganj.bogra.gov.bd', NULL, NULL),
(134, 15, 'Paba', 120, 'পবা', 'paba.rajshahi.gov.bd', NULL, NULL),
(135, 15, 'Durgapur', 120, 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd', NULL, NULL),
(136, 15, 'Mohonpur', 120, 'মোহনপুর', 'mohonpur.rajshahi.gov.bd', NULL, NULL),
(137, 15, 'Charghat', 120, 'চারঘাট', 'charghat.rajshahi.gov.bd', NULL, NULL),
(138, 15, 'Puthia', 120, 'পুঠিয়া', 'puthia.rajshahi.gov.bd', NULL, NULL),
(139, 15, 'Bagha', 120, 'বাঘা', 'bagha.rajshahi.gov.bd', NULL, NULL),
(140, 15, 'Godagari', 120, 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd', NULL, NULL),
(141, 15, 'Tanore', 120, 'তানোর', 'tanore.rajshahi.gov.bd', NULL, NULL),
(142, 15, 'Bagmara', 120, 'বাগমারা', 'bagmara.rajshahi.gov.bd', NULL, NULL),
(143, 16, 'Natore Sadar', 120, 'নাটোর সদর', 'natoresadar.natore.gov.bd', NULL, NULL),
(144, 16, 'Singra', 120, 'সিংড়া', 'singra.natore.gov.bd', NULL, NULL),
(145, 16, 'Baraigram', 120, 'বড়াইগ্রাম', 'baraigram.natore.gov.bd', NULL, NULL),
(146, 16, 'Bagatipara', 120, 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd', NULL, NULL),
(147, 16, 'Lalpur', 120, 'লালপুর', 'lalpur.natore.gov.bd', NULL, NULL),
(148, 16, 'Gurudaspur', 120, 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd', NULL, NULL),
(149, 16, 'Naldanga', 120, 'নলডাঙ্গা', 'naldanga.natore.gov.bd', NULL, NULL),
(150, 17, 'Akkelpur', 120, 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd', NULL, NULL),
(151, 17, 'Kalai', 120, 'কালাই', 'kalai.joypurhat.gov.bd', NULL, NULL),
(152, 17, 'Khetlal', 120, 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd', NULL, NULL),
(153, 17, 'Panchbibi', 120, 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd', NULL, NULL),
(154, 17, 'Joypurhat Sadar', 120, 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd', NULL, NULL),
(155, 18, 'Chapainawabganj Sadar', 120, 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd', NULL, NULL),
(156, 18, 'Gomostapur', 120, 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd', NULL, NULL),
(157, 18, 'Nachol', 120, 'নাচোল', 'nachol.chapainawabganj.gov.bd', NULL, NULL),
(158, 18, 'Bholahat', 120, 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd', NULL, NULL),
(159, 18, 'Shibganj', 120, 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd', NULL, NULL),
(160, 19, 'Mohadevpur', 120, 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd', NULL, NULL),
(161, 19, 'Badalgachi', 120, 'বদলগাছী', 'badalgachi.naogaon.gov.bd', NULL, NULL),
(162, 19, 'Patnitala', 120, 'পত্নিতলা', 'patnitala.naogaon.gov.bd', NULL, NULL),
(163, 19, 'Dhamoirhat', 120, 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd', NULL, NULL),
(164, 19, 'Niamatpur', 120, 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd', NULL, NULL),
(165, 19, 'Manda', 120, 'মান্দা', 'manda.naogaon.gov.bd', NULL, NULL),
(166, 19, 'Atrai', 120, 'আত্রাই', 'atrai.naogaon.gov.bd', NULL, NULL),
(167, 19, 'Raninagar', 120, 'রাণীনগর', 'raninagar.naogaon.gov.bd', NULL, NULL),
(168, 19, 'Naogaon Sadar', 120, 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd', NULL, NULL),
(169, 19, 'Porsha', 120, 'পোরশা', 'porsha.naogaon.gov.bd', NULL, NULL),
(170, 19, 'Sapahar', 120, 'সাপাহার', 'sapahar.naogaon.gov.bd', NULL, NULL),
(171, 20, 'Manirampur', 120, 'মণিরামপুর', 'manirampur.jessore.gov.bd', NULL, NULL),
(172, 20, 'Abhaynagar', 120, 'অভয়নগর', 'abhaynagar.jessore.gov.bd', NULL, NULL),
(173, 20, 'Bagherpara', 120, 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd', NULL, NULL),
(174, 20, 'Chougachha', 120, 'চৌগাছা', 'chougachha.jessore.gov.bd', NULL, NULL),
(175, 20, 'Jhikargacha', 120, 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd', NULL, NULL),
(176, 20, 'Keshabpur', 120, 'কেশবপুর', 'keshabpur.jessore.gov.bd', NULL, NULL),
(177, 20, 'Jessore Sadar', 120, 'যশোর সদর', 'sadar.jessore.gov.bd', NULL, NULL),
(178, 20, 'Sharsha', 120, 'শার্শা', 'sharsha.jessore.gov.bd', NULL, NULL),
(179, 21, 'Assasuni', 120, 'আশাশুনি', 'assasuni.satkhira.gov.bd', NULL, NULL),
(180, 21, 'Debhata', 120, 'দেবহাটা', 'debhata.satkhira.gov.bd', NULL, NULL),
(181, 21, 'Kalaroa', 120, 'কলারোয়া', 'kalaroa.satkhira.gov.bd', NULL, NULL),
(182, 21, 'Satkhira Sadar', 120, 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd', NULL, NULL),
(183, 21, 'Shyamnagar', 120, 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd', NULL, NULL),
(184, 21, 'Tala', 120, 'তালা', 'tala.satkhira.gov.bd', NULL, NULL),
(185, 21, 'Kaliganj', 120, 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd', NULL, NULL),
(186, 22, 'Mujibnagar', 120, 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd', NULL, NULL),
(187, 22, 'Meherpur Sadar', 120, 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd', NULL, NULL),
(188, 22, 'Gangni', 120, 'গাংনী', 'gangni.meherpur.gov.bd', NULL, NULL),
(189, 23, 'Narail Sadar', 120, 'নড়াইল সদর', 'narailsadar.narail.gov.bd', NULL, NULL),
(190, 23, 'Lohagara', 120, 'লোহাগড়া', 'lohagara.narail.gov.bd', NULL, NULL),
(191, 23, 'Kalia', 120, 'কালিয়া', 'kalia.narail.gov.bd', NULL, NULL),
(192, 24, 'Chuadanga Sadar', 120, 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd', NULL, NULL),
(193, 24, 'Alamdanga', 120, 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd', NULL, NULL),
(194, 24, 'Damurhuda', 120, 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd', NULL, NULL),
(195, 24, 'Jibannagar', 120, 'জীবননগর', 'jibannagar.chuadanga.gov.bd', NULL, NULL),
(196, 25, 'Kushtia Sadar', 120, 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd', NULL, NULL),
(197, 25, 'Kumarkhali', 120, 'কুমারখালী', 'kumarkhali.kushtia.gov.bd', NULL, NULL),
(198, 25, 'Khoksa', 120, 'খোকসা', 'khoksa.kushtia.gov.bd', NULL, NULL),
(199, 25, 'Mirpur', 120, 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd', NULL, NULL),
(200, 25, 'Daulatpur', 120, 'দৌলতপুর', 'daulatpur.kushtia.gov.bd', NULL, NULL),
(201, 25, 'Bheramara', 120, 'ভেড়ামারা', 'bheramara.kushtia.gov.bd', NULL, NULL),
(202, 26, 'Shalikha', 120, 'শালিখা', 'shalikha.magura.gov.bd', NULL, NULL),
(203, 26, 'Sreepur', 120, 'শ্রীপুর', 'sreepur.magura.gov.bd', NULL, NULL),
(204, 26, 'Magura Sadar', 120, 'মাগুরা সদর', 'magurasadar.magura.gov.bd', NULL, NULL),
(205, 26, 'Mohammadpur', 120, 'মহম্মদপুর', 'mohammadpur.magura.gov.bd', NULL, NULL),
(206, 27, 'Paikgasa', 120, 'পাইকগাছা', 'paikgasa.khulna.gov.bd', NULL, NULL),
(207, 27, 'Fultola', 120, 'ফুলতলা', 'fultola.khulna.gov.bd', NULL, NULL),
(208, 27, 'Digholia', 120, 'দিঘলিয়া', 'digholia.khulna.gov.bd', NULL, NULL),
(209, 27, 'Rupsha', 120, 'রূপসা', 'rupsha.khulna.gov.bd', NULL, NULL),
(210, 27, 'Terokhada', 120, 'তেরখাদা', 'terokhada.khulna.gov.bd', NULL, NULL),
(211, 27, 'Dumuria', 120, 'ডুমুরিয়া', 'dumuria.khulna.gov.bd', NULL, NULL),
(212, 27, 'Botiaghata', 120, 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd', NULL, NULL),
(213, 27, 'Dakop', 120, 'দাকোপ', 'dakop.khulna.gov.bd', NULL, NULL),
(214, 27, 'Koyra', 120, 'কয়রা', 'koyra.khulna.gov.bd', NULL, NULL),
(215, 28, 'Fakirhat', 120, 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd', NULL, NULL),
(216, 28, 'Bagerhat Sadar', 120, 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd', NULL, NULL),
(217, 28, 'Mollahat', 120, 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd', NULL, NULL),
(218, 28, 'Sarankhola', 120, 'শরণখোলা', 'sarankhola.bagerhat.gov.bd', NULL, NULL),
(219, 28, 'Rampal', 120, 'রামপাল', 'rampal.bagerhat.gov.bd', NULL, NULL),
(220, 28, 'Morrelganj', 120, 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd', NULL, NULL),
(221, 28, 'Kachua', 120, 'কচুয়া', 'kachua.bagerhat.gov.bd', NULL, NULL),
(222, 28, 'Mongla', 120, 'মোংলা', 'mongla.bagerhat.gov.bd', NULL, NULL),
(223, 28, 'Chitalmari', 120, 'চিতলমারী', 'chitalmari.bagerhat.gov.bd', NULL, NULL),
(224, 29, 'Jhenaidah Sadar', 120, 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd', NULL, NULL),
(225, 29, 'Shailkupa', 120, 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd', NULL, NULL),
(226, 29, 'Harinakundu', 120, 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd', NULL, NULL),
(227, 29, 'Kaliganj', 120, 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd', NULL, NULL),
(228, 29, 'Kotchandpur', 120, 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd', NULL, NULL),
(229, 29, 'Moheshpur', 120, 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd', NULL, NULL),
(230, 30, 'Jhalakathi Sadar', 120, 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd', NULL, NULL),
(231, 30, 'Kathalia', 120, 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd', NULL, NULL),
(232, 30, 'Nalchity', 120, 'নলছিটি', 'nalchity.jhalakathi.gov.bd', NULL, NULL),
(233, 30, 'Rajapur', 120, 'রাজাপুর', 'rajapur.jhalakathi.gov.bd', NULL, NULL),
(234, 31, 'Bauphal', 120, 'বাউফল', 'bauphal.patuakhali.gov.bd', NULL, NULL),
(235, 31, 'Patuakhali Sadar', 120, 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd', NULL, NULL),
(236, 31, 'Dumki', 120, 'দুমকি', 'dumki.patuakhali.gov.bd', NULL, NULL),
(237, 31, 'Dashmina', 120, 'দশমিনা', 'dashmina.patuakhali.gov.bd', NULL, NULL),
(238, 31, 'Kalapara', 120, 'কলাপাড়া', 'kalapara.patuakhali.gov.bd', NULL, NULL),
(239, 31, 'Mirzaganj', 120, 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd', NULL, NULL),
(240, 31, 'Galachipa', 120, 'গলাচিপা', 'galachipa.patuakhali.gov.bd', NULL, NULL),
(241, 31, 'Rangabali', 120, 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd', NULL, NULL),
(242, 32, 'Pirojpur Sadar', 120, 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd', NULL, NULL),
(243, 32, 'Nazirpur', 120, 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd', NULL, NULL),
(244, 32, 'Kawkhali', 120, 'কাউখালী', 'kawkhali.pirojpur.gov.bd', NULL, NULL),
(245, 32, 'Zianagar', 120, 'জিয়ানগর', 'zianagar.pirojpur.gov.bd', NULL, NULL),
(246, 32, 'Bhandaria', 120, 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd', NULL, NULL),
(247, 32, 'Mathbaria', 120, 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd', NULL, NULL),
(248, 32, 'Nesarabad', 120, 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd', NULL, NULL),
(249, 33, 'Barisal Sadar', 120, 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd', NULL, NULL),
(250, 33, 'Bakerganj', 120, 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd', NULL, NULL),
(251, 33, 'Babuganj', 120, 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd', NULL, NULL),
(252, 33, 'Wazirpur', 120, 'উজিরপুর', 'wazirpur.barisal.gov.bd', NULL, NULL),
(253, 33, 'Banaripara', 120, 'বানারীপাড়া', 'banaripara.barisal.gov.bd', NULL, NULL),
(254, 33, 'Gournadi', 120, 'গৌরনদী', 'gournadi.barisal.gov.bd', NULL, NULL),
(255, 33, 'Agailjhara', 120, 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd', NULL, NULL),
(256, 33, 'Mehendiganj', 120, 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd', NULL, NULL),
(257, 33, 'Muladi', 120, 'মুলাদী', 'muladi.barisal.gov.bd', NULL, NULL),
(258, 33, 'Hizla', 120, 'হিজলা', 'hizla.barisal.gov.bd', NULL, NULL),
(259, 34, 'Bhola Sadar', 120, 'ভোলা সদর', 'sadar.bhola.gov.bd', NULL, NULL),
(260, 34, 'Borhan Sddin', 120, 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd', NULL, NULL),
(261, 34, 'Charfesson', 120, 'চরফ্যাশন', 'charfesson.bhola.gov.bd', NULL, NULL),
(262, 34, 'Doulatkhan', 120, 'দৌলতখান', 'doulatkhan.bhola.gov.bd', NULL, NULL),
(263, 34, 'Monpura', 120, 'মনপুরা', 'monpura.bhola.gov.bd', NULL, NULL),
(264, 34, 'Tazumuddin', 120, 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd', NULL, NULL),
(265, 34, 'Lalmohan', 120, 'লালমোহন', 'lalmohan.bhola.gov.bd', NULL, NULL),
(266, 35, 'Amtali', 120, 'আমতলী', 'amtali.barguna.gov.bd', NULL, NULL),
(267, 35, 'Barguna Sadar', 120, 'বরগুনা সদর', 'sadar.barguna.gov.bd', NULL, NULL),
(268, 35, 'Betagi', 120, 'বেতাগী', 'betagi.barguna.gov.bd', NULL, NULL),
(269, 35, 'Bamna', 120, 'বামনা', 'bamna.barguna.gov.bd', NULL, NULL),
(270, 35, 'Pathorghata', 120, 'পাথরঘাটা', 'pathorghata.barguna.gov.bd', NULL, NULL),
(271, 35, 'Taltali', 120, 'তালতলি', 'taltali.barguna.gov.bd', NULL, NULL),
(272, 36, 'Balaganj', 120, 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd', NULL, NULL),
(273, 36, 'Beanibazar', 120, 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd', NULL, NULL),
(274, 36, 'Bishwanath', 120, 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd', NULL, NULL),
(275, 36, 'Companiganj', 120, 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd', NULL, NULL),
(276, 36, 'Fenchuganj', 120, 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd', NULL, NULL),
(277, 36, 'Golapganj', 120, 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd', NULL, NULL),
(278, 36, 'Gowainghat', 120, 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd', NULL, NULL),
(279, 36, 'Jaintiapur', 120, 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd', NULL, NULL),
(280, 36, 'Kanaighat', 120, 'কানাইঘাট', 'kanaighat.sylhet.gov.bd', NULL, NULL),
(281, 36, 'Sylhet Sadar', 120, 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd', NULL, NULL),
(282, 36, 'Zakiganj', 120, 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd', NULL, NULL),
(283, 36, 'Dakshinsurma', 120, 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd', NULL, NULL),
(284, 36, 'Osmaninagar', 120, 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd', NULL, NULL),
(285, 37, 'Barlekha', 120, 'বড়লেখা', 'barlekha.moulvibazar.gov.bd', NULL, NULL),
(286, 37, 'Kamolganj', 120, 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd', NULL, NULL),
(287, 37, 'Kulaura', 120, 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd', NULL, NULL),
(288, 37, 'Moulvibazar Sadar', 120, 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd', NULL, NULL),
(289, 37, 'Rajnagar', 120, 'রাজনগর', 'rajnagar.moulvibazar.gov.bd', NULL, NULL),
(290, 37, 'Sreemangal', 120, 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd', NULL, NULL),
(291, 37, 'Juri', 120, 'জুড়ী', 'juri.moulvibazar.gov.bd', NULL, NULL),
(292, 38, 'Nabiganj', 120, 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd', NULL, NULL),
(293, 38, 'Bahubal', 120, 'বাহুবল', 'bahubal.habiganj.gov.bd', NULL, NULL),
(294, 38, 'Ajmiriganj', 120, 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd', NULL, NULL),
(295, 38, 'Baniachong', 120, 'বানিয়াচং', 'baniachong.habiganj.gov.bd', NULL, NULL),
(296, 38, 'Lakhai', 120, 'লাখাই', 'lakhai.habiganj.gov.bd', NULL, NULL),
(297, 38, 'Chunarughat', 120, 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd', NULL, NULL),
(298, 38, 'Habiganj Sadar', 120, 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd', NULL, NULL),
(299, 38, 'Madhabpur', 120, 'মাধবপুর', 'madhabpur.habiganj.gov.bd', NULL, NULL),
(300, 39, 'Sunamganj Sadar', 120, 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd', NULL, NULL),
(301, 39, 'South Sunamganj', 120, 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd', NULL, NULL),
(302, 39, 'Bishwambarpur', 120, 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd', NULL, NULL),
(303, 39, 'Chhatak', 120, 'ছাতক', 'chhatak.sunamganj.gov.bd', NULL, NULL),
(304, 39, 'Jagannathpur', 120, 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd', NULL, NULL),
(305, 39, 'Dowarabazar', 120, 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd', NULL, NULL),
(306, 39, 'Tahirpur', 120, 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd', NULL, NULL),
(307, 39, 'Dharmapasha', 120, 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd', NULL, NULL),
(308, 39, 'Jamalganj', 120, 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd', NULL, NULL),
(309, 39, 'Shalla', 120, 'শাল্লা', 'shalla.sunamganj.gov.bd', NULL, NULL),
(310, 39, 'Derai', 120, 'দিরাই', 'derai.sunamganj.gov.bd', NULL, NULL),
(311, 40, 'Belabo', 120, 'বেলাবো', 'belabo.narsingdi.gov.bd', NULL, NULL),
(312, 40, 'Monohardi', 120, 'মনোহরদী', 'monohardi.narsingdi.gov.bd', NULL, NULL),
(313, 40, 'Narsingdi Sadar', 120, 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd', NULL, NULL),
(314, 40, 'Palash', 120, 'পলাশ', 'palash.narsingdi.gov.bd', NULL, NULL),
(315, 40, 'Raipura', 120, 'রায়পুরা', 'raipura.narsingdi.gov.bd', NULL, NULL),
(316, 40, 'Shibpur', 120, 'শিবপুর', 'shibpur.narsingdi.gov.bd', NULL, NULL),
(317, 41, 'Kaliganj', 120, 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd', NULL, NULL),
(318, 41, 'Kaliakair', 120, 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd', NULL, NULL),
(319, 41, 'Kapasia', 120, 'কাপাসিয়া', 'kapasia.gazipur.gov.bd', NULL, NULL),
(320, 41, 'Gazipur Sadar', 120, 'গাজীপুর সদর', 'sadar.gazipur.gov.bd', NULL, NULL),
(321, 41, 'Sreepur', 120, 'শ্রীপুর', 'sreepur.gazipur.gov.bd', NULL, NULL),
(322, 42, 'Shariatpur Sadar', 120, 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd', NULL, NULL),
(323, 42, 'Naria', 120, 'নড়িয়া', 'naria.shariatpur.gov.bd', NULL, NULL),
(324, 42, 'Zajira', 120, 'জাজিরা', 'zajira.shariatpur.gov.bd', NULL, NULL),
(325, 42, 'Gosairhat', 120, 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd', NULL, NULL),
(326, 42, 'Bhedarganj', 120, 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd', NULL, NULL),
(327, 42, 'Damudya', 120, 'ডামুড্যা', 'damudya.shariatpur.gov.bd', NULL, NULL),
(328, 43, 'Araihazar', 120, 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd', NULL, NULL),
(329, 43, 'Bandar', 120, 'বন্দর', 'bandar.narayanganj.gov.bd', NULL, NULL),
(330, 43, 'Narayanganj Sadar', 120, 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd', NULL, NULL),
(331, 43, 'Rupganj', 120, 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd', NULL, NULL),
(332, 43, 'Sonargaon', 120, 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd', NULL, NULL),
(333, 44, 'Basail', 120, 'বাসাইল', 'basail.tangail.gov.bd', NULL, NULL),
(334, 44, 'Bhuapur', 120, 'ভুয়াপুর', 'bhuapur.tangail.gov.bd', NULL, NULL),
(335, 44, 'Delduar', 120, 'দেলদুয়ার', 'delduar.tangail.gov.bd', NULL, NULL),
(336, 44, 'Ghatail', 120, 'ঘাটাইল', 'ghatail.tangail.gov.bd', NULL, NULL),
(337, 44, 'Gopalpur', 120, 'গোপালপুর', 'gopalpur.tangail.gov.bd', NULL, NULL),
(338, 44, 'Madhupur', 120, 'মধুপুর', 'madhupur.tangail.gov.bd', NULL, NULL),
(339, 44, 'Mirzapur', 120, 'মির্জাপুর', 'mirzapur.tangail.gov.bd', NULL, NULL),
(340, 44, 'Nagarpur', 120, 'নাগরপুর', 'nagarpur.tangail.gov.bd', NULL, NULL),
(341, 44, 'Sakhipur', 120, 'সখিপুর', 'sakhipur.tangail.gov.bd', NULL, NULL),
(342, 44, 'Tangail Sadar', 120, 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd', NULL, NULL),
(343, 44, 'Kalihati', 120, 'কালিহাতী', 'kalihati.tangail.gov.bd', NULL, NULL),
(344, 44, 'Dhanbari', 120, 'ধনবাড়ী', 'dhanbari.tangail.gov.bd', NULL, NULL),
(345, 45, 'Itna', 120, 'ইটনা', 'itna.kishoreganj.gov.bd', NULL, NULL),
(346, 45, 'Katiadi', 120, 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd', NULL, NULL),
(347, 45, 'Bhairab', 120, 'ভৈরব', 'bhairab.kishoreganj.gov.bd', NULL, NULL),
(348, 45, 'Tarail', 120, 'তাড়াইল', 'tarail.kishoreganj.gov.bd', NULL, NULL),
(349, 45, 'Hossainpur', 120, 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd', NULL, NULL),
(350, 45, 'Pakundia', 120, 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd', NULL, NULL),
(351, 45, 'Kuliarchar', 120, 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd', NULL, NULL),
(352, 45, 'Kishoreganj Sadar', 120, 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd', NULL, NULL),
(353, 45, 'Karimgonj', 120, 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd', NULL, NULL),
(354, 45, 'Bajitpur', 120, 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd', NULL, NULL),
(355, 45, 'Austagram', 120, 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd', NULL, NULL),
(356, 45, 'Mithamoin', 120, 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd', NULL, NULL),
(357, 45, 'Nikli', 120, 'নিকলী', 'nikli.kishoreganj.gov.bd', NULL, NULL),
(358, 46, 'Harirampur', 120, 'হরিরামপুর', 'harirampur.manikganj.gov.bd', NULL, NULL),
(359, 46, 'Saturia', 120, 'সাটুরিয়া', 'saturia.manikganj.gov.bd', NULL, NULL),
(360, 46, 'Manikganj Sadar', 120, 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd', NULL, NULL),
(361, 46, 'Gior', 120, 'ঘিওর', 'gior.manikganj.gov.bd', NULL, NULL),
(362, 46, 'Shibaloy', 120, 'শিবালয়', 'shibaloy.manikganj.gov.bd', NULL, NULL),
(363, 46, 'Doulatpur', 120, 'দৌলতপুর', 'doulatpur.manikganj.gov.bd', NULL, NULL),
(364, 46, 'Singiar', 120, 'সিংগাইর', 'singiar.manikganj.gov.bd', NULL, NULL),
(365, 47, 'Savar', 50, 'সাভার', 'savar.dhaka.gov.bd', NULL, NULL),
(366, 47, 'Dhamrai', 50, 'ধামরাই', 'dhamrai.dhaka.gov.bd', NULL, NULL),
(367, 47, 'Keraniganj', 50, 'কেরাণীগঞ্জ', 'keraniganj.dhaka.gov.bd', NULL, NULL),
(368, 47, 'Nawabganj', 50, 'নবাবগঞ্জ', 'nawabganj.dhaka.gov.bd', NULL, NULL),
(369, 47, 'Dohar', 50, 'দোহার', 'dohar.dhaka.gov.bd', NULL, NULL),
(370, 53, 'Munshiganj Sadar', 120, 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd', NULL, NULL),
(371, 53, 'Sreenagar', 120, 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd', NULL, NULL),
(372, 53, 'Sirajdikhan', 120, 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd', NULL, NULL),
(373, 53, 'Louhajanj', 120, 'লৌহজং', 'louhajanj.munshiganj.gov.bd', NULL, NULL),
(374, 53, 'Gajaria', 120, 'গজারিয়া', 'gajaria.munshiganj.gov.bd', NULL, NULL),
(375, 53, 'Tongibari', 120, 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd', NULL, NULL),
(376, 54, 'Rajbari Sadar', 120, 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd', NULL, NULL),
(377, 54, 'Goalanda', 120, 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd', NULL, NULL),
(378, 54, 'Pangsa', 120, 'পাংশা', 'pangsa.rajbari.gov.bd', NULL, NULL),
(379, 54, 'Baliakandi', 120, 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd', NULL, NULL),
(380, 54, 'Kalukhali', 120, 'কালুখালী', 'kalukhali.rajbari.gov.bd', NULL, NULL),
(381, 50, 'Madaripur Sadar', 120, 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd', NULL, NULL),
(382, 50, 'Shibchar', 120, 'শিবচর', 'shibchar.madaripur.gov.bd', NULL, NULL),
(383, 50, 'Kalkini', 120, 'কালকিনি', 'kalkini.madaripur.gov.bd', NULL, NULL),
(384, 50, 'Rajoir', 120, 'রাজৈর', 'rajoir.madaripur.gov.bd', NULL, NULL),
(385, 51, 'Gopalganj Sadar', 120, 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd', NULL, NULL),
(386, 51, 'Kashiani', 120, 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd', NULL, NULL),
(387, 51, 'Tungipara', 120, 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd', NULL, NULL),
(388, 51, 'Kotalipara', 120, 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd', NULL, NULL),
(389, 51, 'Muksudpur', 120, 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd', NULL, NULL),
(390, 52, 'Faridpur Sadar', 120, 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd', NULL, NULL),
(391, 52, 'Alfadanga', 120, 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd', NULL, NULL),
(392, 52, 'Boalmari', 120, 'বোয়ালমারী', 'boalmari.faridpur.gov.bd', NULL, NULL),
(393, 52, 'Sadarpur', 120, 'সদরপুর', 'sadarpur.faridpur.gov.bd', NULL, NULL),
(394, 52, 'Nagarkanda', 120, 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd', NULL, NULL),
(395, 52, 'Bhanga', 120, 'ভাঙ্গা', 'bhanga.faridpur.gov.bd', NULL, NULL),
(396, 52, 'Charbhadrasan', 120, 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd', NULL, NULL),
(397, 52, 'Madhukhali', 120, 'মধুখালী', 'madhukhali.faridpur.gov.bd', NULL, NULL),
(398, 52, 'Saltha', 120, 'সালথা', 'saltha.faridpur.gov.bd', NULL, NULL),
(399, 62, 'Panchagarh Sadar', 120, 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd', NULL, NULL),
(400, 62, 'Debiganj', 120, 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd', NULL, NULL),
(401, 62, 'Boda', 120, 'বোদা', 'boda.panchagarh.gov.bd', NULL, NULL),
(402, 62, 'Atwari', 120, 'আটোয়ারী', 'atwari.panchagarh.gov.bd', NULL, NULL),
(403, 62, 'Tetulia', 120, 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd', NULL, NULL),
(404, 61, 'Nawabganj', 120, 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd', NULL, NULL),
(405, 61, 'Birganj', 120, 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd', NULL, NULL),
(406, 61, 'Ghoraghat', 120, 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd', NULL, NULL),
(407, 61, 'Birampur', 120, 'বিরামপুর', 'birampur.dinajpur.gov.bd', NULL, NULL),
(408, 61, 'Parbatipur', 120, 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd', NULL, NULL),
(409, 61, 'Bochaganj', 120, 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd', NULL, NULL),
(410, 61, 'Kaharol', 120, 'কাহারোল', 'kaharol.dinajpur.gov.bd', NULL, NULL),
(411, 61, 'Fulbari', 120, 'ফুলবাড়ী', 'fulbari.dinajpur.gov.bd', NULL, NULL),
(412, 61, 'Dinajpur Sadar', 120, 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd', NULL, NULL),
(413, 61, 'Hakimpur', 120, 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd', NULL, NULL),
(414, 61, 'Khansama', 120, 'খানসামা', 'khansama.dinajpur.gov.bd', NULL, NULL),
(415, 61, 'Birol', 120, 'বিরল', 'birol.dinajpur.gov.bd', NULL, NULL),
(416, 61, 'Chirirbandar', 120, 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd', NULL, NULL),
(417, 55, 'Lalmonirhat Sadar', 120, 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd', NULL, NULL),
(418, 55, 'Kaliganj', 120, 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd', NULL, NULL),
(419, 55, 'Hatibandha', 120, 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd', NULL, NULL),
(420, 55, 'Patgram', 120, 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd', NULL, NULL),
(421, 55, 'Aditmari', 120, 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd', NULL, NULL),
(422, 56, 'Syedpur', 120, 'সৈয়দপুর', 'syedpur.nilphamari.gov.bd', NULL, NULL),
(423, 56, 'Domar', 120, 'ডোমার', 'domar.nilphamari.gov.bd', NULL, NULL),
(424, 56, 'Dimla', 120, 'ডিমলা', 'dimla.nilphamari.gov.bd', NULL, NULL),
(425, 56, 'Jaldhaka', 120, 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd', NULL, NULL),
(426, 56, 'Kishorganj', 120, 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd', NULL, NULL),
(427, 56, 'Nilphamari Sadar', 120, 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd', NULL, NULL),
(428, 57, 'Sadullapur', 120, 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd', NULL, NULL),
(429, 57, 'Gaibandha Sadar', 120, 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd', NULL, NULL),
(430, 57, 'Palashbari', 120, 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd', NULL, NULL),
(431, 57, 'Saghata', 120, 'সাঘাটা', 'saghata.gaibandha.gov.bd', NULL, NULL),
(432, 57, 'Gobindaganj', 120, 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd', NULL, NULL),
(433, 57, 'Sundarganj', 120, 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd', NULL, NULL),
(434, 57, 'Phulchari', 120, 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd', NULL, NULL),
(435, 58, 'Thakurgaon Sadar', 120, 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd', NULL, NULL),
(436, 58, 'Pirganj', 120, 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd', NULL, NULL),
(437, 58, 'Ranisankail', 120, 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd', NULL, NULL),
(438, 58, 'Haripur', 120, 'হরিপুর', 'haripur.thakurgaon.gov.bd', NULL, NULL),
(439, 58, 'Baliadangi', 120, 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd', NULL, NULL),
(440, 59, 'Rangpur Sadar', 120, 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd', NULL, NULL),
(441, 59, 'Gangachara', 120, 'গংগাচড়া', 'gangachara.rangpur.gov.bd', NULL, NULL),
(442, 59, 'Taragonj', 120, 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd', NULL, NULL),
(443, 59, 'Badargonj', 120, 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd', NULL, NULL),
(444, 59, 'Mithapukur', 120, 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd', NULL, NULL),
(445, 59, 'Pirgonj', 120, 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd', NULL, NULL),
(446, 59, 'Kaunia', 120, 'কাউনিয়া', 'kaunia.rangpur.gov.bd', NULL, NULL),
(447, 59, 'Pirgacha', 120, 'পীরগাছা', 'pirgacha.rangpur.gov.bd', NULL, NULL),
(448, 60, 'Kurigram Sadar', 120, 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd', NULL, NULL),
(449, 60, 'Nageshwari', 120, 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd', NULL, NULL),
(450, 60, 'Bhurungamari', 120, 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd', NULL, NULL),
(451, 60, 'Phulbari', 120, 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd', NULL, NULL),
(452, 60, 'Rajarhat', 120, 'রাজারহাট', 'rajarhat.kurigram.gov.bd', NULL, NULL),
(453, 60, 'Ulipur', 120, 'উলিপুর', 'ulipur.kurigram.gov.bd', NULL, NULL),
(454, 60, 'Chilmari', 120, 'চিলমারী', 'chilmari.kurigram.gov.bd', NULL, NULL),
(455, 60, 'Rowmari', 120, 'রৌমারী', 'rowmari.kurigram.gov.bd', NULL, NULL),
(456, 60, 'Charrajibpur', 120, 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd', NULL, NULL),
(457, 65, 'Sherpur Sadar', 120, 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd', NULL, NULL),
(458, 65, 'Nalitabari', 120, 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd', NULL, NULL),
(459, 65, 'Sreebordi', 120, 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd', NULL, NULL),
(460, 65, 'Nokla', 120, 'নকলা', 'nokla.sherpur.gov.bd', NULL, NULL),
(461, 65, 'Jhenaigati', 120, 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd', NULL, NULL),
(462, 66, 'Fulbaria', 120, 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd', NULL, NULL),
(463, 66, 'Trishal', 120, 'ত্রিশাল', 'trishal.mymensingh.gov.bd', NULL, NULL),
(464, 66, 'Bhaluka', 120, 'ভালুকা', 'bhaluka.mymensingh.gov.bd', NULL, NULL),
(465, 66, 'Muktagacha', 120, 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd', NULL, NULL),
(466, 66, 'Mymensingh Sadar', 120, 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd', NULL, NULL),
(467, 66, 'Dhobaura', 120, 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd', NULL, NULL),
(468, 66, 'Phulpur', 120, 'ফুলপুর', 'phulpur.mymensingh.gov.bd', NULL, NULL),
(469, 66, 'Haluaghat', 120, 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd', NULL, NULL),
(470, 66, 'Gouripur', 120, 'গৌরীপুর', 'gouripur.mymensingh.gov.bd', NULL, NULL),
(471, 66, 'Gafargaon', 120, 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd', NULL, NULL),
(472, 66, 'Iswarganj', 120, 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd', NULL, NULL),
(473, 66, 'Nandail', 120, 'নান্দাইল', 'nandail.mymensingh.gov.bd', NULL, NULL),
(474, 66, 'Tarakanda', 120, 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd', NULL, NULL),
(475, 63, 'Jamalpur Sadar', 120, 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd', NULL, NULL),
(476, 63, 'Melandah', 120, 'মেলান্দহ', 'melandah.jamalpur.gov.bd', NULL, NULL),
(477, 63, 'Islampur', 120, 'ইসলামপুর', 'islampur.jamalpur.gov.bd', NULL, NULL),
(478, 63, 'Dewangonj', 120, 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd', NULL, NULL),
(479, 63, 'Sarishabari', 120, 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd', NULL, NULL),
(480, 63, 'Madarganj', 120, 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd', NULL, NULL),
(481, 63, 'Bokshiganj', 120, 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd', NULL, NULL),
(482, 64, 'Barhatta', 120, 'বারহাট্টা', 'barhatta.netrokona.gov.bd', NULL, NULL),
(483, 64, 'Durgapur', 120, 'দুর্গাপুর', 'durgapur.netrokona.gov.bd', NULL, NULL),
(484, 64, 'Kendua', 120, 'কেন্দুয়া', 'kendua.netrokona.gov.bd', NULL, NULL),
(485, 64, 'Atpara', 120, 'আটপাড়া', 'atpara.netrokona.gov.bd', NULL, NULL),
(486, 64, 'Madan', 120, 'মদন', 'madan.netrokona.gov.bd', NULL, NULL),
(487, 64, 'Khaliajuri', 120, 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd', NULL, NULL),
(488, 64, 'Kalmakanda', 120, 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd', NULL, NULL),
(489, 64, 'Mohongonj', 120, 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd', NULL, NULL),
(490, 64, 'Purbadhala', 120, 'পূর্বধলা', 'purbadhala.netrokona.gov.bd', NULL, NULL),
(491, 64, 'Netrokona Sadar', 120, 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd', NULL, NULL),
(494, 48, 'Bashundhara R/A', 50, '', '', '2021-08-16 05:01:34.000000', '2021-08-16 05:01:34.000000'),
(495, 48, 'Agargaon', 50, '', '', '2021-08-16 05:02:48.000000', '2021-08-16 05:02:48.000000'),
(496, 48, 'Badda', 50, '', '', '2021-08-16 05:04:07.000000', '2021-08-16 05:04:07.000000'),
(497, 48, 'Banani', 50, '', '', '2021-08-16 05:04:23.000000', '2021-08-16 05:04:23.000000'),
(498, 48, 'Banasree', 50, '', '', '2021-08-16 05:06:01.000000', '2021-08-16 05:06:01.000000'),
(499, 48, 'Baridhara', 50, '', '', '2021-08-16 05:06:25.000000', '2021-08-16 05:06:25.000000'),
(500, 48, 'Chittagong Road', 50, '', '', '2021-08-16 05:06:57.000000', '2021-08-16 05:06:57.000000'),
(501, 48, 'Dhamrai', 50, '', '', '2021-08-16 05:07:22.000000', '2021-08-16 05:07:22.000000'),
(502, 48, 'Rampura', 50, '', '', '2021-08-16 05:07:46.000000', '2021-08-16 05:07:46.000000'),
(503, 48, 'Firmgate', 50, '', '', '2021-08-16 05:22:56.000000', '2021-08-16 05:22:56.000000'),
(504, 48, 'Gabtoli', 50, '', '', '2021-08-16 05:23:20.000000', '2021-08-16 05:23:20.000000'),
(505, 48, 'Gulshan', 50, '', '', '2021-08-16 05:24:53.000000', '2021-08-16 05:24:53.000000'),
(506, 48, 'Hatirjheel', 50, '', '', '2021-08-16 05:25:20.000000', '2021-08-16 05:25:20.000000'),
(507, 48, 'Khilgoan', 50, '', '', '2021-08-16 05:26:08.000000', '2021-08-16 05:26:08.000000'),
(508, 48, 'Khilkhet', 50, '', '', '2021-08-16 05:26:34.000000', '2021-08-16 05:26:34.000000'),
(509, 48, 'Kuril', 50, '', '', '2021-08-16 05:26:58.000000', '2021-08-16 05:26:58.000000'),
(510, 48, 'Malibag', 50, '', '', '2021-08-16 05:27:13.000000', '2021-08-16 05:27:13.000000'),
(511, 48, 'Matikata', 50, '', '', '2021-08-16 05:27:47.000000', '2021-08-16 05:27:47.000000'),
(512, 48, 'Mirpur', 50, '', '', '2021-08-16 05:29:31.000000', '2021-08-16 05:29:31.000000'),
(513, 48, 'Modhubag', 50, '', '', '2021-08-16 05:29:53.000000', '2021-08-16 05:29:53.000000'),
(514, 48, 'Mohakhali', 50, '', '', '2021-08-16 05:30:23.000000', '2021-08-16 05:30:23.000000'),
(515, 48, 'Tejgaon', 50, '', '', '2021-08-16 05:30:54.000000', '2021-08-16 05:30:54.000000'),
(516, 48, 'Uttara', 50, '', '', '2021-08-16 05:31:12.000000', '2021-08-16 05:31:12.000000'),
(517, 49, 'Mogbazar', 50, '', '', '2021-08-16 05:33:46.000000', '2021-08-16 05:33:46.000000'),
(518, 49, 'Basabo', 50, '', '', '2021-08-16 05:37:12.000000', '2021-08-16 05:37:12.000000'),
(519, 49, 'Dhanmondi', 50, '', '', '2021-08-16 05:37:32.000000', '2021-08-16 05:37:32.000000'),
(520, 49, 'gulisthan', 50, '', '', '2021-08-16 05:38:01.000000', '2021-08-16 05:38:01.000000'),
(521, 49, 'Kakrail', 50, '', '', '2021-08-16 05:38:29.000000', '2021-08-16 05:38:29.000000'),
(522, 49, 'Kalabagan', 50, '', '', '2021-08-16 05:38:51.000000', '2021-08-16 05:38:51.000000'),
(523, 49, 'Kamalapur', 50, '', '', '2021-08-16 05:39:56.000000', '2021-08-16 05:39:56.000000'),
(524, 49, 'Maniknagar', 50, '', '', '2021-08-16 05:40:45.000000', '2021-08-16 05:40:45.000000'),
(525, 49, 'Matuail', 50, '', '', '2021-08-16 05:41:11.000000', '2021-08-16 05:41:11.000000'),
(526, 49, 'Motijheel', 50, '', '', '2021-08-16 05:42:14.000000', '2021-08-16 05:42:14.000000'),
(527, 49, 'Mugda', 50, '', '', '2021-08-16 05:42:33.000000', '2021-08-16 05:42:33.000000'),
(528, 49, 'Paltan', 50, '', '', '2021-08-16 05:42:58.000000', '2021-08-16 05:42:58.000000'),
(529, 49, 'Nilkhet', 50, '', '', '2021-08-16 05:43:17.000000', '2021-08-16 05:43:17.000000'),
(530, 49, 'Pallabi', 50, '', '', '2021-08-16 05:43:36.000000', '2021-08-16 05:43:36.000000'),
(531, 49, 'Postagola', 50, '', '', '2021-08-16 05:43:58.000000', '2021-08-16 05:43:58.000000'),
(532, 49, 'Rayerbag', 50, '', '', '2021-08-16 05:45:21.000000', '2021-08-16 05:45:21.000000'),
(533, 49, 'Segun Bagicha', 50, '', '', '2021-08-16 05:46:08.000000', '2021-08-16 05:46:08.000000'),
(534, 49, 'Elephant Road', 50, '', '', '2021-08-16 05:46:41.000000', '2021-08-16 05:46:41.000000'),
(535, 49, 'Azimpur', 50, '', '', '2021-08-16 05:47:01.000000', '2021-08-16 05:47:01.000000'),
(536, 49, 'Shukrabad', 50, '', '', '2021-08-16 05:47:30.000000', '2021-08-16 05:47:30.000000'),
(537, 49, 'Jatrabari', 50, '', '', '2021-08-16 05:47:56.000000', '2021-08-16 05:47:56.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'reference',
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cid` bigint(20) DEFAULT NULL,
  `group_by` bigint(20) DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `medication` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'No',
  `med_status` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `med_upcoming` date DEFAULT NULL,
  `preiod` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address` int(11) DEFAULT NULL,
  `shipping_address` int(11) DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commission` int(6) DEFAULT NULL,
  `p_commission` int(6) DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_date` date DEFAULT NULL,
  `history_count` int(11) DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ref_id`, `ref_by`, `provider_id`, `cid`, `group_by`, `user_type`, `medication`, `med_status`, `med_upcoming`, `preiod`, `name`, `email`, `email_verified_at`, `status`, `password`, `remember_token`, `gender`, `avatar`, `avatar_original`, `dob`, `address`, `billing_address`, `shipping_address`, `country`, `region`, `city`, `area`, `postal_code`, `shipping_cost`, `phone`, `commission`, `p_commission`, `balance`, `remark`, `remark_date`, `history_count`, `designation`, `education`, `about`, `created_at`, `updated_at`) VALUES
(318, NULL, NULL, NULL, NULL, NULL, 'staff', 'No', NULL, NULL, NULL, 'shakil', 'shakil@gmail.com', NULL, NULL, '$2y$10$pGJdiyw7U6/e0r3seja0TuUy8EZpe6c5Xe9NmreBTUWw8ojF0ob3m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-12 19:09:58', '2022-02-05 18:22:48'),
(319, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', '1', '2021-09-25', '10', 'Iqbal', 'mortalmo99@gmail.com', '2021-09-12 22:15:13', 1, '$2y$10$9nAbKc4lDw0lAqonvGOay.B33wVhfxTD.SwMo5Tl2BGxKaUUCrWjq', 'r6jeU3gSxTPDjrlbnJgJYa4wgaJcoQU8CPKJ9260sBJ2HxJ8ZUdaxlFb556Q', NULL, NULL, NULL, '2021-09-08', 'test us', NULL, NULL, NULL, '1', '2', '19', '1100', 100.00, '01818004758', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-12 22:15:13', '2021-09-12 22:50:28'),
(323, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Emu', NULL, '2021-09-14 03:05:45', 1, '$2y$10$ThL.C6.wqKc.Lhtys9jV1emembIEyAAXdqbjBXSWiAI.xPO4rRXG6', 'xNNg736pWNKqRUjt1N2AJBUVbtYyIzupLqRPBc4RwfYboZsRVM6ohhoCthED', NULL, NULL, 'uploads/LQugryldevFWB4iAt3KX8HhjZEe8Fk0rhmredFI7.png', NULL, NULL, 64, 64, NULL, '3', '20', '177', NULL, 100.00, '01723096437', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-14 03:05:45', '2021-10-12 00:52:31'),
(324, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Mo US', NULL, '2021-09-18 03:21:15', 0, '$2y$10$MlRZD/cjlp.lWTsCJUioRe2D42oBlc.qggFAQY8GFxtXP.xlfJDlC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8033789315', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-18 03:21:15', '2021-09-18 03:21:15'),
(331, 'AFF39677634', 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Fahim', NULL, '2021-09-19 02:29:12', 1, '$2y$10$RAVo60qig6r3eUO5pBehXOaEejGG2J5bMn5XQpP5AIba6yqPVtZdC', 'mVqjYaE59K7WM8LMWCAyr4gZoRB1svNACXXDnk8QkpBFIbfKsZAQ22BfHi6O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01726004030', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-19 02:29:12', '2021-09-19 09:05:56'),
(332, 'AFF68731066', 'reference', NULL, NULL, NULL, 'customer', 'Yes', '1', NULL, NULL, 'hasib', 'hasib.2030.hu@gmail.com', '2021-09-19 06:40:50', 1, '$2y$10$4agiWqbQED6geG0bII8HEOujrNWTKzXR08Wzht65261/yqdjrFN0e', 'f7VSHPgOCEmKEiaiwMNOdTTxR5NBPqzV9SqPpqfDZsFfZHJaq8yDyfonoYPy', NULL, NULL, 'uploads/u2SA44rV36ZSsOiYbKs5OF3eQScAxGt7ElPLWXSX.jpg', NULL, '217 3rd colony, lalkuthi, Mirpur-1', 62, 62, NULL, '5', '36', '279', '1216', 100.00, '01618356180', NULL, NULL, 124.50, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-19 06:40:50', '2021-12-01 20:55:04'),
(333, 'AFF64188157', 'reference', NULL, NULL, NULL, 'customer', 'Yes', '1', '2021-10-12', '7', 'shakil666', 'kmushakil711@gmail.com', '2021-09-21 01:55:02', 1, '$2y$10$aF6HN0HFFYYTHVn/RnVxRu/PIl8t1hsZdU2GB8RSRZYDos8QHArX.', 'UvqbNxmF54lIa1olH861hjP5WgkZ5I0OAMaai4nYPeqMo0SyJgkK2J6I0xel', NULL, NULL, NULL, NULL, 'shakil', 44, 44, NULL, '4', '31', '238', '1112', 100.00, '01666026364', NULL, NULL, 572.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-21 01:55:02', '2021-09-27 02:01:24'),
(335, NULL, 'AFF64188157', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil015', 'kmushakil642@gmail.com', '2021-09-21 18:08:43', 1, '$2y$10$siYw8dLV8/2d33M6.wcDG.oGQUiac4BngpuWjKyLYHMMYykYR4ZPC', 'OwXCTqfZ4TdPAlNZxOwNmmmcZMG4Kjs7G6jbcHi4XnlkAQvbxsU8aSkIVAuH', NULL, NULL, NULL, NULL, 'test address.', 46, 46, NULL, '1', '7', '63', '0099', 100.00, '01533186155', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-21 18:08:43', '2021-09-21 19:13:56'),
(339, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil', 'kazimuhammadullahvvv@gmail.com', '2021-09-21 22:10:46', 1, '$2y$10$77r3rC6EzDHMAUgXzjSFeOhmH3LjrmyAwfUHlH/XKWQjnNq5QeAyu', NULL, NULL, NULL, NULL, '2021-09-06', 'London', NULL, 50, NULL, '2', '15', '139', '3434', 100.00, '01533186192', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-21 22:10:46', '2021-09-21 22:10:46'),
(340, 'AFF79147825', 'reference', NULL, NULL, NULL, 'customer', 'Yes', '1', '2021-10-11', '10', 'towhid', 'towhid10@gmail.com', '2021-09-22 09:58:09', 1, '$2y$10$Doog5LPVrZxaR65.1NBYKOz.towySRdn4..aJvawhPXEviSI3aFJ2', 'WgMC0lNFnXSctRSmwKw3IBhKc0VrLiFz6O7bbQZ98BGHIr3BCp7QbB1TgXLK', NULL, NULL, NULL, '2020-07-10', 'Dhaka', NULL, 69, NULL, '6', '48', '512', '1207', 50.00, '07533498883', NULL, NULL, 124.50, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-22 09:58:09', '2021-10-14 11:56:11'),
(341, NULL, 'AFF79147825', NULL, NULL, NULL, 'customer', 'Yes', '1', '2021-10-07', '7', 'shakil01533186151', 'matirmanush225@gmail.com', '2021-09-22 18:27:55', 1, '$2y$10$6eY5lomg3EXkXhHNAFQ.euKvWhbbsJAn4xvDP84ZU9KMQiOIHqZBm', 'NKCjx3Ro9czJJp83HLxAOhsRPL1UDWhftvbJ6hIyDByUMaziPWVsSj9cihyO', NULL, NULL, NULL, NULL, 'mirpur', 52, 52, NULL, '4', '32', '247', '2233', 100.00, '01533186151', NULL, NULL, 500.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-22 18:27:55', '2021-09-27 00:38:31'),
(342, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil015', 'muhammadullah.shakiel@gmail.com', '2021-09-22 19:13:34', 1, '$2y$10$8Qa5bf53d.SNjyYQSHMU1O2eLZXDT8YxJ3FoqRjMCnSKNon4YDlrW', 'XpVwOsP0nHdOStXRLgzxCn2zW0l1RlWU20EAkZzASOo5pCkvHdeMS5ygQO4J', NULL, NULL, NULL, NULL, 'test address.', 53, 53, NULL, '1', '9', '84', '0099', 100.00, '01718160843', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-22 19:13:34', '2021-09-22 19:17:18'),
(343, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil64', NULL, '2021-09-23 00:53:27', 1, '$2y$10$1pYjzrSelQ9u0oUIXS3mSO2B0D23u53LVJ5d/Ql2QXkux3Y6R6qem', 'eGwL6cytMqeFK1QTPVbmVhRoRWVanqF6hyZ4ttL7FuHC1W471ZO0K23j0irX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01676126364', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 00:53:27', '2021-09-23 00:53:45'),
(344, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil', 'kazimuhammadullah@gmail.com', '2021-09-23 01:00:42', 1, '$2y$10$wOecat4ff168c//CtJuW5.uqeHqmusqbZ/YNIRwbwKBLIM9qoyqrm', NULL, NULL, NULL, NULL, '2021-09-13', 'London', NULL, 54, NULL, '2', '14', '130', '3434', 100.00, '01818004030', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 01:00:42', '2021-10-04 03:35:03'),
(345, 'AFF27224922', 'reference', NULL, NULL, NULL, 'customer', 'No', '0', NULL, NULL, 'Kazi Muhammad Ullah', 'kazimuhammadullah3@gmail.com', '2021-09-23 17:39:16', 1, '$2y$10$UjR6z6c/G3IZ2eJce0ZWpupJeGGloQt268dZRPr0qNOk1xD2RJY.i', '9qJVpHtmpZfSUI3YGQMXpT0n1KN7oiRZIlSZgVREhTQJrIICd7ntRYIPBFj4', NULL, NULL, NULL, '2021-08-30', 'test address', 56, 56, NULL, '1', '2', '20', '0099', 100.00, '01676026311', NULL, NULL, 1114.50, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 17:39:16', '2021-09-28 23:22:45'),
(346, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Shakil 017', 'fahim.amin71@gmail.com', '2021-09-23 17:45:27', 1, '$2y$10$PkMxtpRyAfrQzp1ahWLQ9Ojj76Yn9O.EnKM/QBCwKMyWf9UhwJTfK', NULL, NULL, NULL, NULL, '2021-09-14', 'test add', NULL, 55, NULL, '2', '14', '126', '1010', 100.00, '01726004523', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 17:45:27', '2021-09-23 17:45:27'),
(348, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil', 'shadsgdkil@gmail.com', '2021-09-23 19:10:24', 1, '$2y$10$BKUitWn9vGi0fmPDJAkhhebyjRZkWCRR/NwnB7WmEYn5BDYJuMR2G', NULL, NULL, NULL, NULL, '2021-08-29', 'London', NULL, 57, NULL, '1', '5', '44', '3434', 100.00, '01776254332', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 19:10:24', '2021-09-23 19:10:24'),
(349, NULL, 'AFF27224922', NULL, NULL, NULL, 'customer', 'Yes', '1', '2021-10-08', '7', 'shakil', NULL, '2021-09-23 19:35:09', 1, '$2y$10$Dj7.qlFrgblP5M1rf0u0AOAIwCxnqv9sbFTPs2217I.GS701LG/hO', 'aFfC7meaEZXKbwN7wITZAOa6Nf8jsK882FnE1vqgR1t3IdYNbq7cXeN24eAz', NULL, NULL, NULL, NULL, NULL, 58, 58, NULL, NULL, NULL, NULL, NULL, NULL, '01533186152', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 19:35:09', '2021-09-28 06:14:23'),
(350, NULL, 'reference', NULL, NULL, NULL, 'customer', 'Yes', '1', '2021-10-17', '7', 'habib', NULL, '2021-09-26 01:19:22', 1, '$2y$10$HtcTgvuwJM1Hmgxcs.G1wOJnI2/hQ/b1pMCA2a1SZuOZQ0YOFeZIy', 'pH2dQtpxZqVHniPy4kGPlw3dmXNRiqRwwhVt3S2hm9buZhTp7WxyqWwTeIEx', NULL, NULL, NULL, NULL, NULL, 59, 59, NULL, NULL, NULL, NULL, NULL, NULL, '01676610187', NULL, NULL, 12.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-26 01:19:22', '2021-09-28 05:51:32'),
(351, 'AFF62640406', 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil', NULL, '2021-09-27 17:57:37', 1, '$2y$10$O7b0yDkWb4AGNDzwre6w8uhXR.9xaC3SE8MvcnXUMoj/U2W42GU/e', 'wOSe0nWZwqq8hwEkhaFDhrbJaTOO1Zb0nF4cQBgFegk03hxEaUezFeAYLzsr', NULL, NULL, NULL, NULL, NULL, 63, 63, NULL, NULL, NULL, NULL, NULL, NULL, '01676026364', NULL, NULL, 124.50, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-27 17:57:37', '2021-10-11 03:18:08'),
(352, NULL, 'AFF62640406', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil015', NULL, '2021-09-27 18:07:54', 1, '$2y$10$AyQgnRWputFcvC1nXDyJuO3aM9N0CIZJRrzT46oDgKvlHfNtNdqAu', 'fWeDb1T8O5rv6M7eUHsMnpmcUwCuQHLf7FX00nJ0FWL2d8sOB9ldim2oO89y', NULL, NULL, NULL, NULL, NULL, 60, 60, NULL, NULL, NULL, NULL, NULL, NULL, '01670521015', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-27 18:07:54', '2021-09-27 18:10:41'),
(354, NULL, 'AFF68731066', NULL, NULL, NULL, 'customer', 'Yes', '1', NULL, NULL, 'Nurul Amin Khalashi', 'fahim.amin711@gmail.com', '2021-09-28 06:06:42', 1, '$2y$10$Xg.QR/Ho1F3Ovg8ZoXqm8.jalepaWQj.F3/fR4iemPl7XBPdUwZGK', 'ofipnXFWvq0iZnHn13v7yMBei2A21Ql4aO8QEG8mUBfF3Z1o9QIpIfZoI76X', NULL, NULL, NULL, NULL, 'House # 24, Road # 31, Block # D, Section 12, Pallabi, Dhaka-1212', 61, 61, NULL, '1', '6', '58', '1212', 100.00, '01726004037', NULL, NULL, 650.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-28 06:06:42', '2021-10-12 03:07:48'),
(355, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Nurul Amin Khalashi', NULL, '2021-10-04 05:05:48', 1, '$2y$10$dPRAlFpn68Wu2eS9Xi6n2uTIdJhbQGLz6o6j6U/aSKv.DVRQqtEvu', 'FKQMfiWWUu9yaZVCFDExJBr2Gyp56ozs3DLX5QLJsTHIhDtu1rZn3bWmhMiR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01818004037', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-04 05:05:48', '2021-10-04 05:06:30'),
(356, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'md abdul malak', NULL, '2021-10-11 07:26:54', 0, '$2y$10$XTDJdODHQRZdquq2GLdRtedIgATn6c3ESdB.wR.S9RiaLftfiUOMy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'malaknoyn100@gmail.c', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-11 07:26:54', '2021-10-11 07:26:54'),
(364, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Charunta', NULL, '2021-10-16 17:33:58', 1, '$2y$10$0RIBjZlaKjDUduzUaSb59uqmZWYm9fiW8C3cVI8gUjALFYpZKiiLq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01886335811', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-16 17:33:58', '2021-10-16 17:33:58'),
(365, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Charunta 02', NULL, '2021-10-16 18:02:08', 1, '$2y$10$BPtpj36yUzPetjyWUIt1Cu8K1qnk3Q/9klBxx8ya873Je6ZjDhYBi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01886335833', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-16 18:02:08', '2021-10-16 18:02:08'),
(366, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Md Hasan', NULL, '2021-11-22 08:16:06', 0, '$2y$10$MkqH3hVLeqJOt1IJJ/q1fuWQBAG8U90xD4EgPJfM84Kw6nQH85e5m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01911695556', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-22 08:16:06', '2021-11-22 08:16:06'),
(367, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'tanzir', NULL, '2021-11-25 05:43:33', 1, '$2y$10$Bas.atnMLpPgXfas2JE3Q.P4IopVBHJvjgjLNYA80Ihwzxr5vBtni', 'ddc5wdWITKG53gqNeDIQplKLShxsIU40ATx3ZNWtC0RRhwZt1Ct7eFvNuDqJ', NULL, NULL, NULL, NULL, NULL, 74, 74, NULL, NULL, NULL, NULL, NULL, NULL, '01674437137', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:43:33', '2022-01-13 12:09:57'),
(368, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Sany', NULL, '2021-11-27 04:04:26', 0, '$2y$10$ZINGVjVzAuRA6eOhF5h2LOxwAFIJqkWyUWQOmXc2Eg4o.hiLp0raS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sani131315@gmail.com', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-27 04:04:26', '2021-11-27 04:04:26'),
(370, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'hasib09', NULL, '2021-12-03 08:10:17', 1, '$2y$10$AecCTzYNSlijGr5arq7He.MmeSwYD227V7qguEE3vWQ1F.isGG8xu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0161835610', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 08:10:17', '2021-12-03 08:10:17'),
(371, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'hasib09', NULL, '2021-12-03 08:55:39', 1, '$2y$10$Ism83A/nyHKYYpVgWKFs7./5N7un84QrFpXpyet6PLBOnBYTKEj4W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01738356170', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 08:55:39', '2021-12-03 08:55:39'),
(374, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'hasib09', NULL, '2021-12-12 05:30:21', 1, '$2y$10$98GvoNzYwtC8UKvrGIWDaeQaU9RYWGYEMKonpJqUURTnR4dZm0ClK', 'J07Ppsp2340NiV4oGhhE2lqOiRRZ6vevbAuRDjpiDbI0S9TwTZEdqFWKfrT2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01738356181', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-12 05:30:21', '2021-12-12 05:30:21'),
(375, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Sany', NULL, '2021-12-12 05:32:34', 1, '$2y$10$BSGyY/Fu47TDFXIiMF4gX.PEbUFyLIo48Md7flkyRbITp9JGG9k72', 'LRjNjNEJI5tr8p0t1hRf0T7rqg35A2ta7CCHswy9dSrW2iE7R9Mht3JqoOhR', NULL, NULL, NULL, NULL, NULL, 71, 71, NULL, NULL, NULL, NULL, NULL, NULL, '01620991936', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-12 05:32:34', '2021-12-12 05:33:38'),
(379, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Hasan', NULL, '2021-12-13 02:35:42', 1, '$2y$10$Oxh3NA2iPOEGi4OIqVW5IO5GS8tsFEfUy/XgOP6PoHUE9lMFcijV.', 'M5XXAGUnlfYXLmVIxcIjeLJd13i8lHrFZebYCiEbp0kJG7JWfZuZHgG69Qww', NULL, NULL, NULL, NULL, NULL, 72, 72, NULL, NULL, NULL, NULL, NULL, NULL, '01714629121', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-13 02:35:42', '2021-12-13 02:38:52'),
(382, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'tanzir', NULL, '2022-01-08 00:16:24', 1, '$2y$10$hCuOeVSXyio21YNF7D4x0eqKcGU0mvLldS9xF9OLvLCYYHsbA5CvW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01684437137', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-08 00:16:24', '2022-01-08 00:16:24'),
(384, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'hasib09', NULL, '2022-01-10 06:03:21', 1, '$2y$10$P0dTHWkZd7TeJ6M5SQE9auLUJMGfmPgMlR3sfWEiafHA.vXDmLTC2', 'YKohHdojD5YZjYjKPVxq6lS9ZTUfqWSDJivGtoZRMkXCcWpAEGSedr1Thxmq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01738356183', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-10 06:03:21', '2022-01-10 06:03:21'),
(385, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'new test account', NULL, '2022-01-11 05:48:46', 1, '$2y$10$ekAkpqWLBa6/068Wnx7iduUtfGBpDFzCfZr7SqBtOy3zgps2pbHPe', '5w5KelZdJ7PwZBqrObKJl4yoc53rEpjg8CLthSdCsfxtcWXIOKm3FtzjXK1o', NULL, NULL, NULL, NULL, NULL, 73, 73, NULL, NULL, NULL, NULL, NULL, NULL, '01738356198', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-11 05:48:46', '2022-01-11 05:54:34'),
(386, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'MD IMRAN', NULL, '2022-01-18 04:03:55', 1, '$2y$10$cemeADsZOXsdUkldN3LTSe5QE4xavDCZzWShf9EcZMl0PLy8bmnaC', 'u6gbgqdKPmOnP4abNWJiGNzg8UGATU2k1K2R9RLFmPqVSKRWRjYBE7lkzwfg', NULL, NULL, NULL, NULL, NULL, 75, 75, NULL, NULL, NULL, NULL, NULL, NULL, '01618570573', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-18 04:03:55', '2022-01-18 04:07:44'),
(387, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Md Siam Ahmed', NULL, '2022-01-18 23:23:02', 1, '$2y$10$XF5wHurj2CoJHCfbPKn.o.z7Nk1NpVm7Dt.F5pM7tgr9YSPJXh8ca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01913331106', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-18 23:23:02', '2022-01-18 23:23:02'),
(392, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Tanzir', NULL, '2022-01-20 01:14:37', 1, '$2y$10$y9NaN0ACD9i.ddThIMdMt.eg0rdWUdjgnbcj2KsxVG3n5o6gGn13m', 'XE02Akit15Vy1p6c4Qimh9DQU9psm37fnOfnJwrxB4S1NXHBArFNpx0XwjcQ', NULL, NULL, NULL, NULL, NULL, 76, 76, NULL, NULL, NULL, NULL, NULL, NULL, 'tanzir@gmail.com', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 01:14:37', '2022-01-20 01:17:02'),
(393, NULL, 'reference', NULL, NULL, NULL, 'admin', 'No', NULL, NULL, NULL, 'Md.Hasib Uzzaman', 'superadmin@gmail.com', NULL, NULL, '$2y$10$XzdPrhthglewm1ckzagwyeWzndK078BZA5k3wiE0xaWwhwhxrrqqu', 'EsdGOxMB06dd7m1huaA0qLJeUx3pEuzkc8Yv26EJvV8xItiz3ZyKnHuFKE67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01558971708', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-01 05:00:31', '2022-02-01 05:00:31'),
(394, NULL, 'reference', NULL, NULL, NULL, 'admin', 'No', NULL, NULL, NULL, 'Hasan', 'hasan@gmail.com', NULL, NULL, '$2y$10$wnVQnrzFgx5ViF1lbWOvBOuaiEqVKtx6j4TpoJLugWTOubWh27qeu', 'qxhd1kaEl87PJ99WlQ9dQb22oeifZxEXh1yeNkknX4IBNkTGJ3yLSBSopTTQ', NULL, '1644101882613927.jpg', '1644101882613927.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0738356180', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-01 05:02:07', '2022-02-06 09:58:02'),
(397, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Siam', NULL, '2022-02-02 01:50:22', 1, '$2y$10$DA.9zA7RK6/DgNItkizafeT1pvkG72zmKSCNEX2rMPRAmIsN4Y3da', 'lrwORQjE02yC3HT3kH11BFETzs44xrkT7tekPbGycLyIkXXOvjt5vWPqSjJJ', NULL, NULL, NULL, NULL, NULL, 77, 77, NULL, NULL, NULL, NULL, NULL, NULL, '01923216945', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-02 01:50:22', '2022-02-02 01:58:13'),
(399, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Okeygorandom https://www.google.com/', NULL, '2022-02-05 18:22:48', 1, '$2y$10$bZP2kInDz1IQ//bJrGP23OPW0aDGGZc5O7VgWU3iEySCkxwK2vGti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'seregainbox138@mail.', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-05 18:22:48', '2022-02-05 18:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `amount`, `payment_method`, `payment_details`, `created_at`, `updated_at`) VALUES
(13, 333, 500.00, 'SSLCommerz', 'SSL Top Up', '2021-09-21 21:49:39', '2021-09-21 21:49:39'),
(14, 341, 500.00, 'SSLCommerz', 'SSL Top Up', '2021-09-23 00:51:37', '2021-09-23 00:51:37'),
(15, 345, 500.00, 'SSLCommerz', 'SSL Top Up', '2021-09-23 19:38:16', '2021-09-23 19:38:16'),
(16, 354, 1000.00, 'SSLCommerz', 'SSL Top Up', '2021-10-01 19:22:05', '2021-10-01 19:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 16, 1, '2019-04-25 04:35:45', '2019-04-25 04:35:45'),
(3, 47, 16, '2019-05-26 02:29:37', '2019-05-26 02:29:37'),
(4, 47, 20, '2019-05-26 02:29:44', '2019-05-26 02:29:44'),
(5, 47, 24, '2019-05-26 02:29:50', '2019-05-26 02:29:50'),
(8, 102, 2866, '2021-06-07 06:15:52', '2021-06-07 06:15:52'),
(10, 142, 2851, '2021-06-12 07:34:32', '2021-06-12 07:34:32'),
(30, 282, 2892, '2021-08-23 03:40:05', '2021-08-23 03:40:05'),
(31, 282, 2861, '2021-08-23 03:40:27', '2021-08-23 03:40:27'),
(32, 320, 2875, '2021-09-14 05:12:12', '2021-09-14 05:12:12'),
(33, 367, 2, '2022-01-13 12:11:47', '2022-01-13 12:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdraw_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` bigint(20) UNSIGNED DEFAULT NULL,
  `process_by` bigint(20) UNSIGNED DEFAULT NULL,
  `viewed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `withdraw_type`, `delivery_status`, `payment_status`, `amount`, `process_by`, `viewed`, `updated_by`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(15, 345, 'Bkash', 'Pending', 'Unpaid', 500, NULL, '1', NULL, '345', NULL, '2021-09-23 19:38:37', '2021-09-27 18:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mbanking_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `user_id`, `bank_name`, `acc_name`, `acc_number`, `branch`, `mbanking_type`, `remark`, `updated_by`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 333, 'bKash', 'test Name', '01676026364', NULL, 'Personal', 'test', NULL, '333', NULL, '2021-09-21 03:10:32', '2021-09-21 03:10:32'),
(8, 345, 'bKash', 'shakil', '234567345', NULL, 'Personal', 'test', NULL, '345', NULL, '2021-09-23 19:39:11', '2021-09-23 19:39:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_requests`
--
ALTER TABLE `agent_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agent_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_user_id_foreign` (`user_id`),
  ADD KEY `blog_comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_appointmnets`
--
ALTER TABLE `doctor_appointmnets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_appointmnets_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_departments`
--
ALTER TABLE `doctor_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_departments_user_id_foreign` (`user_id`),
  ADD KEY `doctor_departments_dep_id_foreign` (`dep_id`);

--
-- Indexes for table `doctor_education`
--
ALTER TABLE `doctor_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_education_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_experienceds`
--
ALTER TABLE `doctor_experienceds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_experienceds_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_ratings`
--
ALTER TABLE `doctor_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_time_slots`
--
ALTER TABLE `doctor_time_slots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slot` (`slot`);

--
-- Indexes for table `doc_departments`
--
ALTER TABLE `doc_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templetes`
--
ALTER TABLE `email_templetes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feature_brands`
--
ALTER TABLE `feature_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medications`
--
ALTER TABLE `medications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medications_user_id_foreign` (`user_id`);

--
-- Indexes for table `medication_counts`
--
ALTER TABLE `medication_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medication_details`
--
ALTER TABLE `medication_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medication_details_medication_id_foreign` (`medication_id`);

--
-- Indexes for table `medication_users`
--
ALTER TABLE `medication_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medication_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_verifies`
--
ALTER TABLE `mobile_verifies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile_verifies_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patient_behalves`
--
ALTER TABLE `patient_behalves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_behalves_user_id_foreign` (`user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription_images`
--
ALTER TABLE `prescription_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_images_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regular_medications`
--
ALTER TABLE `regular_medications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_orders`
--
ALTER TABLE `request_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmhistories`
--
ALTER TABLE `rmhistories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addesses`
--
ALTER TABLE `shipping_addesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_addesses_user_id_foreign` (`user_id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `softcodes`
--
ALTER TABLE `softcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sub_category_id` (`sub_category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraws_user_id_foreign` (`user_id`),
  ADD KEY `withdraws_process_by_foreign` (`process_by`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_methods_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_requests`
--
ALTER TABLE `agent_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctor_appointmnets`
--
ALTER TABLE `doctor_appointmnets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_departments`
--
ALTER TABLE `doctor_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_education`
--
ALTER TABLE `doctor_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_experienceds`
--
ALTER TABLE `doctor_experienceds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_ratings`
--
ALTER TABLE `doctor_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_time_slots`
--
ALTER TABLE `doctor_time_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doc_departments`
--
ALTER TABLE `doc_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `email_templetes`
--
ALTER TABLE `email_templetes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feature_brands`
--
ALTER TABLE `feature_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medications`
--
ALTER TABLE `medications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `medication_counts`
--
ALTER TABLE `medication_counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medication_details`
--
ALTER TABLE `medication_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870;

--
-- AUTO_INCREMENT for table `medication_users`
--
ALTER TABLE `medication_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `mobile_verifies`
--
ALTER TABLE `mobile_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `patient_behalves`
--
ALTER TABLE `patient_behalves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `prescription_images`
--
ALTER TABLE `prescription_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regular_medications`
--
ALTER TABLE `regular_medications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_orders`
--
ALTER TABLE `request_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rmhistories`
--
ALTER TABLE `rmhistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_addesses`
--
ALTER TABLE `shipping_addesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `softcodes`
--
ALTER TABLE `softcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent_requests`
--
ALTER TABLE `agent_requests`
  ADD CONSTRAINT `agent_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_2` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_appointmnets`
--
ALTER TABLE `doctor_appointmnets`
  ADD CONSTRAINT `doctor_appointmnets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_departments`
--
ALTER TABLE `doctor_departments`
  ADD CONSTRAINT `doctor_departments_dep_id_foreign` FOREIGN KEY (`dep_id`) REFERENCES `doc_departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_departments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_education`
--
ALTER TABLE `doctor_education`
  ADD CONSTRAINT `doctor_education_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_experienceds`
--
ALTER TABLE `doctor_experienceds`
  ADD CONSTRAINT `doctor_experienceds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_ratings`
--
ALTER TABLE `doctor_ratings`
  ADD CONSTRAINT `doctor_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medications`
--
ALTER TABLE `medications`
  ADD CONSTRAINT `medications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medication_details`
--
ALTER TABLE `medication_details`
  ADD CONSTRAINT `medication_details_medication_id_foreign` FOREIGN KEY (`medication_id`) REFERENCES `medications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medication_users`
--
ALTER TABLE `medication_users`
  ADD CONSTRAINT `medication_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mobile_verifies`
--
ALTER TABLE `mobile_verifies`
  ADD CONSTRAINT `mobile_verifies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_behalves`
--
ALTER TABLE `patient_behalves`
  ADD CONSTRAINT `patient_behalves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prescription_images`
--
ALTER TABLE `prescription_images`
  ADD CONSTRAINT `prescription_images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipping_addesses`
--
ALTER TABLE `shipping_addesses`
  ADD CONSTRAINT `shipping_addesses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
