-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 04:24 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sppm_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `message`) VALUES
(5, 'SOUNDRARASAN DILUXSAN', 'diluxsan99@gmail.com', '0771111111', 'Hi ');

-- --------------------------------------------------------

--
-- Table structure for table `placesdb`
--

CREATE TABLE `placesdb` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `location` varchar(1000) NOT NULL,
  `visit_time` varchar(1000) NOT NULL,
  `famous_description` varchar(10000) NOT NULL,
  `image1` varchar(50) NOT NULL,
  `image2` varchar(50) NOT NULL,
  `image3` varchar(50) NOT NULL,
  `image4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `placesdb`
--

INSERT INTO `placesdb` (`id`, `title`, `category`, `description`, `location`, `visit_time`, `famous_description`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, 'Yala National Park', 'Wild and Nature', 'Yala is a national park combined with a stringent nature reserve. The park, which is divided into 5 blocks, protects an area of territory covering close to 130,000 hectares and is made up of light woods, scrubs, grasslands, tanks, and lagoons. The public can now access two blocks.', 'South-east of Colombo is 260 km.', 'May to October', 'Yala is well-known for its abundance of elephants, water buffalo, crocodiles, and leopards.', 'yala1.jpg', 'yala2.jpg', 'yala3.jpg', 'yala4.jpg'),
(2, 'Royal Botanic Gardens, Peradeniya', 'Wild and Nature', 'The largest garden in Sri Lanka, Peradeniya Royal Botanical Gardens has 4,000 different plant types scattered across 147 acres. It is regarded as Asia\\\'s most tastefully designed garden. It is one of the major attractions in Kandy city and is situated in Peradeniya town. Tall trees, colorful orchids, and comforting breezes. and being close to the Mahaweli river is a visual treat for the eyes with its lovely \\\"flower and aqua\\\" scenery. More than 4000 varieties of plants, including orchids, spices, healing herbs, and palm trees, can be found in the gardens.', '5.5 km to the west of the city of Kandy,  Central Province.', 'December to April', 'More than 10,000 distinct trees, some of which are hundreds of years old, are the garden\\\'s main attraction. The garden is also widely known for its stunning collections of roses and orchids.', 'peradeniya1.jpg', 'peradeniya2.jpg', 'peradeniya3.jpg', 'peradeniya4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(7) NOT NULL,
  `adults` varchar(5) NOT NULL,
  `rooms` varchar(5) NOT NULL,
  `message` varchar(3000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `name`, `email`, `phone`, `day`, `month`, `year`, `adults`, `rooms`, `message`) VALUES
(7, 'SOUNDRARASAN DILUXSAN', 'diluxsan99@gmail.com', '0771111111', '16', '08', '2021', '3', '2', 'i want reservaton in  Hill Country Site\r\nCeylon tea trails Castlereagh\r\n'),
(8, 'S.Sanjeevi', 'ssanjeevi1999@gmail.com', '071234567', '07', '02', '2021', '2', '2', 'Can i got a A/C room on this day ?'),
(9, 'S.Sanjeevi', 'charles@tp.com', '0714567890', 'None', 'None', 'None', 'None', 'None', 'More details about the prices for the transport services'),
(10, 'K.Kirishanthan', 'charles@tp.com', '0714567890', 'None', 'None', 'None', 'None', 'None', 'Can I know about the hotels in Jaffna'),
(11, 'S.Nirmalaraj', 'nirmal99@gmail.com', '0714567745', 'None', 'None', 'None', 'None', 'None', 'I like to know some best places to visit in Kandy'),
(12, 'S.Sanjeevi', 'ssanjeevi99@gmail.com', '0714567890', '12', '09', '2022', '4', '2', 'I want reservation in  Coastal Site\r\nAga Surf View hotel');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(50000) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `image3` varchar(20) NOT NULL,
  `image4` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `description`, `size`, `price`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, 'Hill Country Site', 'Travellers approaching Castlereagh from the road can glimpse tantalising views across the lake of this magnificent symbol of the glory days of the tea planter’s life. Nestled in a wooded dell close to the water, this century-old bungalow offers unrivalled water views and superb garden suites to suit every taste. Elegant parquet floors all around with open fireplaces in the dining and drawing rooms, evoke recollections of the life and times of the tea planters who once lived here. In the extensive grounds, summerhouses can be found where tea is served, and a good book enjoyed until the sun goes down over the water and it’s time for sundowners on the terrace overlooking the lake..<br><br>\r\n\r\nAvilable Hotels<br><br>\r\n\r\n1)Ceylon tea trails Castlereagh<br><br>\r\n2)Ceylon tea trails Dunkeld<br><br>\r\n3)Ceylon tea trails Norwood<br><br>\r\n\r\n\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', '350 sq - 450 sq', 'Rs.3000 - Rs.4500', 'D6.jpg', 'D1.jpg', 'H3.jpg', 'H4.jpg'),
(2, 'Coastal Site', 'Would you like to stay in the best beach hotels in Sri Lanka? From boutique hotels to laidback cabanas and luxury resorts,Our Experience Travel Group will ensure you find the kind of beautiful holiday resorts in Sri Lanka that suit you best. There are miles and miles of palm-fringed, sandy beaches, with fantastic luxury hotels and resorts.\r\n\r\nOur experts have travelled widely across the island and handpicked the best luxury beach hotels in Sri Lanka. We consider these to be the best of the best in terms of character, size, luxury and style. Key to your selection will be the area: you need to decide if you want to be busy or relaxed, have the beach to yourself or have access to local restaurants..<br><br>\r\n\r\nAvilable Hotels <br><br>\r\n1)Anilana Nilaveli<br><br>\r\n2)Amaranthe bay resort & spa<br><br>\r\n3)Aga Surf View<br><br>\r\n\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', '300 sq - 400 sq', 'Rs.2500 - Rs.4000', 'D4.jpg', 'D2.jpg', 'H7.jpg', 'H8.jpg'),
(3, ' Wild and Nature Site', 'Safaris are important but where you stay after and unwind is also equally important, as it enhances the experience you have on your wildlife holiday.With several options on offer, this can be rather challenging. <br><br>\r\n\r\nAnd this is where our expertise comes in.  We will choose the best wildlife accommodation in Sri Lanka for you to chill, relax or even hibernate in, before heading back out into the wild..<br><br>\r\nAvailabel Hotels<br><br>\r\n1)Forest Edge<br><br>\r\n2)Rainforest Eco Lodge<br><br>\r\n3)Cinnamon Wild<br><br>\r\n\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', '400 sq - 550 sq', 'Rs.3000 - Rs.6000', 'D5.jpg', 'D7.jpg', 'H11.jpg', 'H12.jpg'),
(4, 'Historical and Cultural Site', 'Visiting new holiday destinations is more than just crossing off one of those places from your travel list. It is also about studying the history and culture of an area, and the best way to do this is by immersing in the past and its remnants. In Sri Lanka, landmarks and museums are a good place to start. But staying in historic hotels in Sri Lanka is an ideal way of exploring the past. Let’s talk about a few vintage hotels in the country that gives you the look and feel of a bygone era..<br><br>\r\n\r\nAvailable Hotels<br><br>\r\n1)Amangalla<br><br>\r\n2)Fox Jaffna <br><br>\r\n3)Jetwing Jaffna<br><br>\r\n\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', '300 sq - 600 sq', 'Rs.3500 - Rs.5500', 'D10.jpg', 'D9.jpg', 'H15.jpg', 'H16.jpg'),
(5, 'City Site Hotels', 'Strategically located in Colombo City, City Hotels offers modern and comfortable accommodations with free WiFi access throughout the property. Everything! Central location, friendly staff, great rooftop bar and pool, delicious food at the restaurant, comfortable room, large bed, beautiful view..<br><br>\r\n\r\nAvailable Hotels<br><br>\r\n\r\n1)Marino Beach Colombo<br><br>\r\n2)C 1 Colombo Fort<br><br>\r\n3)Shangri-La Colombo <br><br>\r\n4)Cinnamon Red Colombo<br><br>\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', '350 sq - 500 sq', 'Rs.4000 - Rs.7000', 'D8.jpg', 'H18.jpg', 'H19.jpg', 'H20.jpg'),
(6, 'Normal Room', 'Guests enjoy our exclusive complimentary offerings that include Tea & Sherry Social Hour daily at 4pm in the lobby, the Mountain Sunrise hot breakfast buffet, wi-fi, outdoor year round heated swimming pool and FREE on-site parking.\r\n<br><br>\r\n\r\nAvailable Hotels<br><br>\r\n1)Green Palace<br><br>\r\n2)The Kingsbury Colombo<br><br>\r\n\r\n\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', '250 sq - 350 sq', 'Rs.2000 - Rs.3500', 'H21.jpg', 'H22.jpg', 'H23.jpg', 'H24.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vtype`
--

CREATE TABLE `vtype` (
  `vid` int(10) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image1` varchar(500) NOT NULL,
  `image2` varchar(500) NOT NULL,
  `image3` varchar(500) NOT NULL,
  `image4` varchar(500) NOT NULL,
  `price` varchar(10) NOT NULL,
  `size` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vtype`
--

INSERT INTO `vtype` (`vid`, `description`, `image1`, `image2`, `image3`, `image4`, `price`, `size`, `title`) VALUES
(2, 'Toyota Super GL luxury van is ideal for a small group of friends or family in Sri Lanka city tours, Sri Lanka sightseeing, as well as for airport transfers. It has a capacity of housing 07 passengers along with a driver plus a good space for luggage. Van can accommodate total of 07 passengers and 04 large bags along with you.  van is beneficial on hilly areas and mountains. They handle well on all types of road surfaces and terrain and are much safer on roads due to the fact that they are sitting up high and are in a massive structure when compared to other vehicles.', '5.jpeg', '6.jpg', '7.jpg', '20.jpg', 'Contact us', '7', 'Toyota Super GL'),
(3, 'Nissan Caravan van has a capacity of housing 10 passengers along with a driver plus a good space for luggage. Van can accommodate total of 10 passengers and 05 large bags along with you. Often such vans are being hired when a family or people in group venture move out to see the places of their choice. Nissan Caravan handle well on all types of road surfaces and terrain and are much safer on roads due to the fact that they are sitting up high and are in a massive structure when compared to other vehicles.', '17.jpeg', '8.jpg', '6.jpg', '13.jpg', 'Contact Us', '10', 'Nissan Caravan'),
(5, 'Luxury coaches are meant for long drives with an exceptionally smooth ride and environment rich with amenities. These A/C Luxury Coaches are specially contemplated to provide space for more than 16 people. It offers extremely high levels of technical quality, performance and total economy, as well as of comfort and safety. The harmoniously color-matched interior and low interior noise level create a pleasant atmosphere. Coach is suitable for long distance travel and can fit as 16-45 people for group travel. It is very important to have a safe journey in a comfortable transportation.', '12.jpg', '10.jpg', '11.jpg', '10.jpg', 'Contact Us', '45', 'Luxury Coaches');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placesdb`
--
ALTER TABLE `placesdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtype`
--
ALTER TABLE `vtype`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `placesdb`
--
ALTER TABLE `placesdb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
