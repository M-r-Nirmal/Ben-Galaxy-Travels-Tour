-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2022 at 02:54 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `places`
--

-- --------------------------------------------------------

--
-- Table structure for table `placesdb`
--

DROP TABLE IF EXISTS `placesdb`;
CREATE TABLE IF NOT EXISTS `placesdb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `location` varchar(1000) NOT NULL,
  `visit_time` varchar(1000) NOT NULL,
  `famous_description` varchar(10000) NOT NULL,
  `image1` varchar(50) NOT NULL,
  `image2` varchar(50) NOT NULL,
  `image3` varchar(50) NOT NULL,
  `image4` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `placesdb`
--

INSERT INTO `placesdb` (`id`, `title`, `category`, `description`, `location`, `visit_time`, `famous_description`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, 'Yala National Park', 'Wild and Nature', 'Yala is a national park combined with a stringent nature reserve. The park, which is divided into 5 blocks, protects an area of territory covering close to 130,000 hectares and is made up of light woods, scrubs, grasslands, tanks, and lagoons. The public can now access two blocks.', 'South-east of Colombo is 260 km.', 'May to October', 'Yala is well-known for its abundance of elephants, water buffalo, crocodiles, and leopards.', 'yala1.jpg', 'yala3.jpg', 'yala4.jpg', 'yala2.jpg'),
(15, 'Waterfalls', 'Hill Country', 'Sri Lanka is the place to visit if you want to view all different types of waterfalls because it has the largest waterfall density in the world, with a total of 382 waterfalls spread out across the entire nation. Rivers pour down rocky precipices and create magnificent waterfalls when the two half-yearly monsoons that feed them.', 'Central Province, Sabaragamuwa province, Uwa province, Kalutara district', 'December to May', 'One of the most beautiful places in Sri Lanka. It has surreal locations and is a tourist attraction. ', 'waterfalls1.jpg', 'waterfalls2.jpg', 'waterfalls3.jpg', 'waterfalls4.jpg'),
(16, 'Nallur Kandaswamy Kovil ', 'Historical and Culture', 'Nallur Kovil is a Hindu temple. The temple is adorned with beautiful sculptures and statues of Hindu gods and deities. The Temple\'s daily pooja, or \"offerings,\" are performed from 6 am to 5 pm. The first Nallur Kovil was built in 948, and minor renovations were made in the 13th century. A Hindu shrine in the former capital of Jaffna.The Nallur Kandaswamy Kovil has long been cherished by people of all faiths as a representation of the peninsula. The former capital of the long-gone Jaffna Kingdom is towered over by the golden temple, which shines brightly in the northern sun.\r\n', 'Nallur, Jaffna, Northern Province.', 'Daily, Times for Pooja: 5:00am, 10:00am, 4:00pm, and 5:00pm.', 'one of Sri Lanka\'s most important kovils. The captivating Dravidian architecture of the Lord Murugan-dedicated kovil from the 15th century features majestic arches and vivid colors. Lord Murugan is the god of war, love, and beauty.', 'nallur3.jpg', 'nallur2.jpg', 'nallur4.jpg', 'nallur1.jpg'),
(3, 'Royal Botanic Gardens, Peradeniya', 'Wild and Nature', 'The largest garden in Sri Lanka, Peradeniya Royal Botanical Gardens has 4,000 different plant types scattered across 147 acres. It is regarded as Asia\'s most tastefully designed garden. It is one of the major attractions in Kandy city and is situated in Peradeniya town. Tall trees, colorful orchids, and comforting breezes. and being close to the Mahaweli river is a visual treat for the eyes with its lovely \"flower and aqua\" scenery. More than 4000 varieties of plants, including orchids, spices, healing herbs, and palm trees, can be found in the gardens.', '5.5 km to the west of the city of Kandy,  Central Province.', 'December to April', 'More than 10,000 distinct trees, some of which are hundreds of years old, are the garden\'s main attraction. The garden is also widely known for its stunning collections of roses and orchids.', 'peradeniya1.jpg', 'peradeniya2.jpg', 'peradeniya3.jpg', 'peradeniya4.jpg'),
(4, 'Sinharaja Forest', 'Wild and Nature', 'Sri Lanka\'s Sinharaja Forest Reserve is a hotspot for biodiversity and a forest reserve. It has been recognized as having global significance and as a World Heritage Site by UNESCO. Sinharaja is the last livable main tropical rainforest in Sri Lanka, and it is situated in the country\'s southwest. More over 60% of the trees are native to the area, and many of them are unusual.', 'Sinharaja Access Rd, Deniyaya , Southwest.', 'January to May, August to December', 'The majority of the trees—more than 60%—are indigenous, and many of them are rare. There is a lot of endemic fauna in the reserve, particularly birds, but it also supports more than 50% of Sri Lanka\'s endemic species of mammals, butterflies, insects, reptiles, and uncommon amphibians.', 'sinharaja1.jpg', 'sinharaja2.jpg', 'sinharaja3.jpeg', 'sinharaja4.jpg'),
(5, 'Pinnawela Elephant Orphanage', 'Wild and Nature', 'Pinnawela has gained notoriety among all tourists visiting Sri Lanka because to its elephant orphanage .The Pinnawela Elephant Orphanage is the only facility in Sri Lanka that serves as an orphanage, nursery, breeding ground, and prison for elephants in need. It also serves as a home for elephants that are homeless and require particular care. ', 'Kegalle District, Sabaragamuwa Province.', 'Daily, 08.30a.m - 05.30p.m', 'Pinnawela has the largest herd of captive elephants. This location is known for its luxuriant vegetation, rich history, and famous architecture.', 'pinnawela1.jpg', 'pinnawela2.jpg', 'pinnawela3.jpg', 'pinnawela4.jpg'),
(6, 'Hakgala Botanical Garden', 'Wild and Nature', 'One of Sri Lanka\\\'s five botanical gardens is the Hakgala Botanical Garden. The Hakgala Botanical Garden is located 16 kilometers from Nuwara Eliya on the main Nuwara Eliya-Badulla route. The garden\\\'s altitude of 5,400 feet above sea level contributes to its cool, moderate environment. Throughout a year, the average yearly temperature fluctuates between 16 °C and 30 °C. The Hakgala Botanical Garden is located 16 kilometers from Nuwara Eliya on the main Nuwara Eliya-Badulla route.', 'Hakgala, Nuwaraeliya ,Central Province.', 'Daily, 07.30a.m to 05.30p.m', 'The garden is renowned for the variety of rose and orchid varieties that are cultivated there. ', 'haggala2.jpg', 'haggala1.jpg', 'haggala4.jpg', 'haggala3.jpg'),
(7, 'Nilaveli Beach', 'Coastal', 'Is a stretch of beach that is about 16 kilometers north of Trincomalee, passing a thriving lagoon on either side, beautiful coconut palm trees, and swarms of cattle. The locals are primarily Hindu and revere cows; hence this beach stretch is significant. It is a beach resort community and Trincomalee District neighborhood that is 16 kilometers northwest of Trincomalee.', 'Trincomalee, Eastern Province', 'November to May', 'It is one of the most beautiful beaches in Sri Lanka renowned for its soft white sand and breath-taking bays. Nilaveli is famous for recreational water sports such as scuba diving.', 'nilaveli2.jpg', 'nilaveli1.jpg', 'nilaveli3.jpg', 'nilaveli4.jpg'),
(8, 'Hikkaduwa Beach', 'Coastal', 'Since Hikkaduwa\'s beaches were first discovered in the 1960s, they have been drawing vacationers. The beach extends for kilometers and offers a variety of entertaining activities to keep visitors entertained. For the thrill seekers, these water sports include scuba diving and snorkeling. Nature enthusiasts who want to take a swim in the waters to see the brilliant, colorful aquatic life are drawn by the waters\' clarity. Beautiful coral structures in the coral sanctuary are home to several fish species and huge turtles. Pockets of animals thrive along the beach\'s islets, which are also a great place to get close to wildlife.', 'Hikkaduwa, Southern Province', 'January to March, September', 'Delicious seafood curries, soothing massages, Buddhist temples, and water activities like diving, snorkeling, and surfing are all well-known attractions in Hikkaduwa. ', 'hikkaduwa3.jpg', 'hikkaduwa1.jpg', 'hikkaduwa4.jpg', 'hikkaduwa2.jpg'),
(9, 'Mirissa Beach', 'Coastal', 'Mirissa Beach is a picture of idyllic tropical happiness, with pale powdery sand and turquoise ocean bordered by an arc of coconut palms. This is among the top surf sites in Sri Lanka because of the occasionally large waves. It is about 4 meters (13 feet) above sea level and roughly 150 kilometers (93 miles) south of Colombo. Mirissa is a well-liked tourist attraction because to its beach and nightlife.', 'Matara District, Southern Province.', 'December to February', 'This is among the top surf sites in Sri Lanka because of the occasionally large waves. There are numerous little eateries and cafes providing delectable, fresh seafood along the shore. As soon as dusk falls, the eateries set up tables and chairs on the sand, light lights and lanterns, and start grilling seafood. ', 'mirissa1.jpg', 'mirissa4.jpg', 'mirissa2.jpg', 'mirissa3.jpg'),
(10, 'Bentota Beach (Ventura Beach)', 'Coastal', 'There are plenty of locations for organising a honeymoon and taking romantic strolls. Sea safaris along the Bentota River, where rich vegetation blends with attractive water surface and evokes strong emotions, are among the best activities to engage in here. This beach offers activities for kids as well as quiet relaxation on a sunbed and sunbathing for adults. Because the beach is regarded as one of the greatest in the nation and draws increasing numbers of tourists each year, the resort as a whole attracts a lot of people.\r\nThe infrastructure in this area is extremely advanced. Every convenience is close by, as are opulent accommodations for travelers. And you may engage in a wide range of activities here, including water skiing, surfing, and paragliding, all of which can be readily substituted by other pursuits at the region\'s numerous water sports facilities. Also available to visitors are sports like:Deep sea fishing, windsurfing, diving, and parasailing.\r\n', 'Bentota, Galle District, Southern Province', 'January to March', 'Bentota, Sri Lanka\'s premier beach resort, offers a wide range of entertaining activities, including snorkeling, windsurfing, water skiing, diving, swimming, and more. You may also relax at the renowned resort on the beach or go see turtle hatcheries while admiring the crystal-clear waters. ', 'bentota4.jpg', 'bentota2.jpg', 'bentota1.jpg', 'bentota3.jpg'),
(11, 'Ella', 'Hill Country', 'Rich in biological richness, the region is home to a wide range of vegetation and fauna. Hills covered in cloud forests and tea plantations encircle Ella. Due to its elevation, the town experiences a colder climate than the lowlands around. Views across Sri Lanka\'s southern plains are possible from the Ella Gap.It is in small town Ella in Sri Lanka\'s Uva Province\'s Badulla District is run by an Urban Council.', 'Badualla District, Uva Province.', 'January to March', 'Ella is so laid-back and cool that staying a few days is simple. Life in Ella is simple and carefree, whether you\'re trekking or lounging in a comfortable hotel with a view of the mountains or a waterfall. There is no rush because everything is enjoyable and the weather is frequently ideal.', 'ella1.jpg', 'ella2.jpg', 'ella3.jpg', 'ella4.jpg'),
(12, 'Adam’s peak', 'Hill Country', 'Adam\'s Peak is mostly seen as a sacred place for all religious groups. On the top, the peak treasures a big rock that carries a huge footprint that is believed to be Lord Buddhas in Buddhist tradition, Sri Rama\'s in Hindu mythology, and prophet Adam\'s in Christian and Islamic beliefs. Adam\'s Peak is a mountain in the Sri Lankan hill country in the southwest of the island nation of Sri Lanka (Ceylon). It is 7,360 feet (2,243 m) high, 11 miles (18 km) northeast of Ratnapura.', 'Adam\'s peak, mountain in southwestern ', 'December to May', 'The Sri Pada or Adam\'s Peak is a significant pilgrimage location. Buddhists think the footprint on the peak is actually that of Lord Buddha. Although it takes five hours to get to the summit, followers of various religions ascend the mountain every day to ask for blessings.', 'adamspeek3.jpg', 'adamspeek2.jpg', 'adamspeek1.jpg', 'adamspeek4.jpg'),
(14, 'World’s end        ', 'Hill Country', 'World\'s End is situated in Sri Lanka\'s Nuwara Eliya District\'s Horton Plains National Park. It has a 4,000-foot drop and is a sheer cliff (1,200 m). It is one of the Park\'s most popular locations and a popular tourist destination in the district of Nuwara Eliya and the entire nation.', 'Nuwara Eliya District\'s Horton Plains National Park, Central province.', 'Daily, early morning 06.00a,m to 10.00a,m', 'When the mist lifts, The World\'s End offers stunning views of tea plantations, the hill area, and the seemingly endless outlines of mountains.', 'worldsend2.jpg', 'worldsend3.jpg', 'worldsend4.jpg', 'worldsend1.jpg'),
(17, 'Sigiriya', 'Historical and Culture', 'The historic rock castle and palace known as Sigiriya is 660 feet straight up in the air and was constructed by King Kashyapa between 473 and 495. It is situated in Sri Lanka\'s central province\'s northern Matale district, close to the town of Dambulla. Before reaching the Lion Rock Fortress at the summit of Sigiriya, you must ascend 1200 steps, which is known as Sigiriya or the Sinhagiri. There are various platforms that divide the steps and provide space for a little rest if necessary. As one of Sri Lanka\'s most well-known archeological treasures today, Sigiriya Rock Fortress was designated a World Heritage Site by UNESCO in 1982 under the name \"Ancient City of Sigiriya Sri Lanka.\" ', 'northern Matale District, Central Province.', 'July, August, January', 'Sigiriya is well-known for its palace ruins, which are perched atop a towering 200-meter-high rock and are encircled by the remnants of a vast network of gardens, reservoirs, and other buildings. The actual rock is a lava plug from a long-extinct old volcano.', 'sigiriya5.jpg', 'sigiriya2.jpg', 'sigiriya3.jpg', 'sigiriya4.jpg'),
(18, 'Galle Fort', 'Historical and Culture', 'A UNESCO World Heritage Site, Galle Fort was initially constructed by the Portuguese in the 16th century and then improved by the Dutch and the British during the following 350 years. It is surrounded by linked ramparts and 12 bastions over an area of around 4sqkm. Galle Fort is at Galle, which is on Sri Lanka\'s southwest coast, when the coastline curves east toward Matara and Tangalle. Galle is the farthest southwest point of the island. The best time to visit Galle is from December to April because there is little rain and the weather is often dry. However, there is a lot to see and do here all year long, including from May to September when it monsoons.', 'Galle, Southern Province ', 'December to April', 'Galle Fort is an extraordinary building is also the oldest lighthouse in Sri Lanka, and it\'s still used today.Galle Fort is an extraordinary building is also the oldest lighthouse in Sri Lanka, and it\'s still used today.', 'gallefort1.jpg', 'gallefort2.jpg', 'gallefort3.jpg', 'gallefort4.jpg'),
(19, 'Jaffna Dutch Fort', 'Historical and Culture', 'The second-largest fort on the island that is still standing was built by the Portuguese in 1619 and restored by the Dutch in the second part of the 18th century. A star-shaped moat that is fed by the lagoon is located beyond the fort\'s pentagonal-shaped exterior and bastions on each point. While much of the vast fort complex, which views out over the Jaffna lagoon, is still intact, one particular area required substantial restoration work. The fort\'s walls, which were built with a combination of mortar, brick, stone, and coral, are largely concealed by grassy slopes now. It is located in Jaffna, Sri Lanka, is close to the coastal village of Gurunagar. However, January through March are the greatest months to visit because there is little rain and the temperatures are bearable.', 'Jaffna, Northern Province.', 'January to March', 'Jaffna Dutch Fort is known as one of the greatest Dutch forts in Asia, owing to the extensive alterations they made to the original Portuguese design, including adding defensive triangles to mirror something similar to a snowflake.', 'jaffnafort1.jpg', 'jaffnafort2.jpg', 'jaffnafort3.jpg', 'jaffnafort4.jpg'),
(20, 'Ruwanweli Maha Seya ', 'Historical and Culture', 'Anuradhapura, an old and historic city, is home to the well-known Buddhist stupa known as Ruwanweli Maha Seya. The largest collection of Buddha relics (two quarts) are found in Ruwanweli Maha Seya, a stupa that is hemispherical in shape and revered by many Buddhists around the world. The famous King Dutugamuu, who ruled from 137 BC to 119 BC, constructed the stupa. Other names for Ruwanweli Maha Seya include \"Swarnamali Chaitya,\" \"Rathnamali Chaitya,\" and \"Mahathupa.\" One of the world\'s oldest and tallest constructions, this stupa has a circumference of 290 meters and a height of about 103 meters. This makes it one of Sri Lanka\'s largest stupas, if not the largest. It\'s one of the must-see locations in Sri Lanka\'s Anuradhapura.\r\n', 'Anuradhapura District, Northern Central Province ', 'All time', 'One of the principal stupas or dagobas in the heart of the exquisite heritage city of Anuradhapura is the Ruwanweliseya Pagoda. This historic stupa was built by the legendary King Dutugamunu. The Ruwanwelisaya stupa, also known as the Maha stupa, is one of the Sri Lankan people\'s most elaborately decorated buildings. ', 'ruwan3.jpg', 'ruwan1.jpg', 'ruwan2.jpg', 'ruwan4.jpg'),
(21, 'Dalada Maligawa', 'Historical and Culture', 'One of the famous places in Kandy is the Dalada Maligawa, popularly called the Temple of the Tooth. Kandy, Sri Lanka, is home to the Sri Dalada Maligawa, also known as The Temple of the Sacred Tooth Relic. It was constructed inside the complex of the royal palace, which also contains one of the two remaining artifacts from the Buddha\'s tooth, which is revered by Buddhists. It is thought that the other tooth relic is housed in the stupa known as Somawathi Chethiya. It is bordered by the commercial sector and the lake in the center of Kandy town. A really interesting temple to see; if you can, arrive 10 minutes early since the casket housing the tooth is brought out during one of the two ceremonies that take place there each day at 9.30 and 9.30. For roughly an hour, other temple rooms are also made available for observation.', 'Kandy Town, Central Province.', 'Daily, Times for Theva: 5.30 a.m. - 7.00 a.m, 9.30 a.m - 11.00 a.m, 6.30 p.m - 8.00 p.m', 'One of the holiest Buddhist sites is called Sri Dalada Maligawa, or the Temple of the Sacred Tooth Relic. The precious tooth of the Buddha has been kept in the temple since the end of the 17th century.', 'daladamaliga4.jpg', 'daladamaliga2.jpg', 'daladamaliga3.jpg', 'daladamaliga1.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;