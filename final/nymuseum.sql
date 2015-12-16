-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2015 at 10:10 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nymuseum`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int(5) NOT NULL,
  `location_name` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`) VALUES
(1, 'Lower Manhattan'),
(2, 'Mid-Manhattan'),
(3, 'Brooklyn'),
(4, 'Queens'),
(5, 'Bronx'),
(6, 'Staten Island'),
(7, 'Upper Manhattan');

-- --------------------------------------------------------

--
-- Table structure for table `museum`
--

CREATE TABLE IF NOT EXISTS `museum` (
  `museum_id` int(5) NOT NULL,
  `museum_name` varchar(64) NOT NULL,
  `address` varchar(256) NOT NULL,
  `location_id` int(5) NOT NULL,
  `admission` decimal(5,2) NOT NULL,
  `hours` varchar(128) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `type_id` int(5) DEFAULT NULL,
  `museum_link` varchar(256) NOT NULL,
  `info` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `museum`
--

INSERT INTO `museum` (`museum_id`, `museum_name`, `address`, `location_id`, `admission`, `hours`, `discount_id`, `type_id`, `museum_link`, `info`) VALUES
(1, 'Museum Of Natural History', 'Central Park West & 79th St, New York, NY 10024', 7, '22.00', '0', 0, 5, 'http://www.amnh.org', 'From dinosaurs to outer space and everything in between, this huge museum showcases natural wonders.'),
(2, 'Metropolitan Museum of Art', '1000 5th Ave, New York, NY 10028', 7, '25.00', '', 0, 1, 'http://www.metmuseum.org', 'The Metropolitan Museum of Art, colloquially "the Met", located in New York City, is the largest art museum in the United States and among the most visited art museums in the world. '),
(3, 'Museum of Modern Art', '11 W 53rd St, New York, NY 10019', 2, '25.00', '0', 0, 1, 'http://www.moma.org', 'The Museum of Modern Art is an art museum located in Midtown Manhattan in New York City, on 53rd Street between Fifth and Sixth Avenues.'),
(4, 'Brooklyn Museum', '200 Eastern Pkwy, Brooklyn, NY 11238', 3, '16.00', '0', 0, 1, 'https://www.brooklynmuseum.org/', 'The Brooklyn Museum is an art museum located in the New York City borough of Brooklyn. At 560,000 square feet, the museum is New York City''s third largest in physical size and holds an art collection with roughly 1.5 million works'),
(5, 'Queens Museum', 'New York City Building ,Flushing Meadows Corona Park, Queens, NY 11368', 4, '8.00', '0', 0, 1, 'http://www.queensmuseum.org/', 'The Queens Museum, formerly the Queens Museum of Art, is an art museum and educational center located in Flushing Meadows-Corona Park in the borough of Queens in New York City, United States.'),
(6, 'Tenement Museum', ' 103 Orchard Street, New York, NY 10002', 1, '0.00', '0', 0, 4, 'https://www.tenement.org/', 'The Lower East Side Tenement Museum, located at 97 Orchard Street in the Lower East Side neighborhood of Manhattan, New York City, is a National Historic Site.'),
(7, 'Frick Collection', '1 E 70th St, New York, NY 10021', 7, '20.00', '0', 0, 1, 'http://www.frick.org', 'The Frick Collection is an art museum located in the Henry Clay Frick House on the Upper East Side in Manhattan, New York City at 1 East 70th Street, at the northeast corner with Fifth Avenue'),
(8, 'The Rubin Museum', '150 W 17th St, New York, NY 10011', 2, '15.00', '0', 0, 3, 'http://www.rubinmuseum.org/', 'The Rubin Museum of Art is dedicated to the collection, display, and preservation of the art and cultures of the Himalayas, India and neighboring regions, with a permanent collection focused particularly on Tibetan art.'),
(9, 'Museum of Chinese In America', '215 Centre St, New York, NY 10013', 1, '10.00', '0', 0, 3, 'http://www.mocanyc.org/', 'Small museum focused on the Chinese experience in America through exhibits & public programs.'),
(10, 'The Solomon R. Guggenheim Museum', '1071 5th Ave, New York, NY 10128', 7, '25.00', '0', 0, 1, 'http://www.guggenheim.org/', 'The Solomon R. Guggenheim Museum, often referred to as The Guggenheim, is an art museum located at 1071 Fifth Avenue on the corner of East 89th Street in the Upper East Side neighborhood of Manhattan, New York City.'),
(11, 'New York Transit Museum', 'Boerum Pl & Schermerhorn Street, Brooklyn, NY 11201', 3, '7.00', '0', 0, 4, 'http://web.mta.info/mta/museum/', 'The New York Transit Museum displays historical artifacts of the New York City Subway, bus, commuter rail, and bridge and tunnel systems under the administration of the Metropolitan Transportation Authority.'),
(12, 'Museum of New York City', '1220 5th Ave, New York, NY 10029', 7, '14.00', '0', 0, 4, 'http://www.mcny.org/', 'The Museum of the City of New York, a history and art museum in New York City, New York. It was founded by Henry Collins Brown, in 1923 to preserve and present the history of New York City, and its people.'),
(13, 'Brooklyn Children''s Museum', '200 Eastern Pkwy, Brooklyn, NY 11238', 3, '16.00', '0', 0, 2, 'http://www.brooklynmuseum.org/', 'The Brooklyn Museum is an art museum located in the New York City borough of Brooklyn. At 560,000 square feet, the museum is New York City''s third largest in physical size and holds an art collection with roughly 1.5 million works.'),
(14, 'Bronx Museum of the Arts', '1040 Grand Concourse, Bronx, NY 10456', 5, '0.00', '0', 0, 1, 'http://www.bronxmuseum.org/\n', 'The Bronx Museum of the Arts is a cultural institution located in the New York City borough of the Bronx. '),
(15, 'Coney Island Museum', '1208 Surf Ave, Brooklyn, NY 11224', 3, '5.00', '0', 0, 6, 'http://www.coneyisland.com/programs/coney-island-museum', 'The Coney Island Museum features artifacts and memorabilia about the amusement park, beach and neighborhood''s history and culture, as well as changing exhibits of art and culture. '),
(16, 'El Museo del Barrio', '1230 5th Ave, New York, NY 10029', 7, '9.00', '0', 0, 1, 'http://www.elmuseo.org/', 'Museum devoted to Latino culture in the Americas, from the pre-Columbian era to modern times.'),
(17, 'International Center of Photogra', '250 Bowery, New York, NY 10012', 1, '0.00', '0', 0, 6, 'http://www.icp.org/', 'The International Center of Photography is a photography museum, school, and research center in New York City, United States. The new downtown Museum and Store is set to open early 2016 at 250 Bowery. ');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int(5) NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type`) VALUES
(1, 'Art Museum'),
(2, 'Children Museum'),
(3, 'Cultural Museum'),
(4, 'Historical Museum'),
(5, 'Science Museum'),
(6, 'Other');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `museum`
--
ALTER TABLE `museum`
  ADD PRIMARY KEY (`museum_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `museum`
--
ALTER TABLE `museum`
  MODIFY `museum_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
