-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 07:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"village_blog\",\"table\":\"admin\"},{\"db\":\"village_blog\",\"table\":\"blog_post\"},{\"db\":\"village_blog\",\"table\":\"contects\"},{\"db\":\"village_blog\",\"table\":\"Blog_post\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'village_blog', 'admin', '{\"sorted_col\":\"`admin`.`password` ASC\"}', '2024-02-05 15:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-02-05 18:16:43', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":264}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `village_blog`
--
CREATE DATABASE IF NOT EXISTS `village_blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `village_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'PRADHUMAN', 'pradhumanpk2020@gmail.com', '8409584727');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `slug` text NOT NULL,
  `subtitle` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `content`, `date`, `slug`, `subtitle`, `image`) VALUES
(1, 'My Village Paragraph for All Students', 'My Village Paragraph in English: India is known as a country of villages because more than 60% of the population live in villages. In this article, you are going to read 4 paragraphs on my village in English. If you are looking for an essay on my village this article will also help you with that. So, let’s begin.\r\nThe name of my village is Fatepur. It is situated in the district of Nadia, about 50 km away from Kolkata. There are about 1000 people live in my village. All the villagers are very cordial and supportive. Most of the villagers are farmers. They grow paddy, jute and vegetables.\r\n\r\nThere is a primary school, a health care center and a post office in my village. There is a large playground where we play in the afternoon. A pucca road runs through the middle of our village. We get all the necessary things from the village market. People living here are poor but they are very kind and honest. I love my village very much.', '2024-02-05', 'My_Village_Paragraph', 'Paragraph for All Students', 'sort_essay-bg.jpg'),
(2, 'My Village Paragraph 2', 'I live at Kusumpur, a small village in Burdwan district. The population of the village is around one thousand. Most of them are farmers, few are small traders. Our village has one primary school, a sub-post office and a primary health center.\r\n\r\nBesides, there are a police outpost and a block office which serve greatly to the needs of the villagers. The village has a few kutcha roads, tanks and playgrounds. In our village, we all lead a happy social life with occasional pujas, jatras and melas.\r\n\r\nThe gram panchayat looks after our welfare. The villagers, though faced with many disadvantages, are on the whole happy and contented. The inhabitants are all simple and decent. They are united by mutual love and fellow feeling and stand by one another in times of need. Our village life is very peaceful and it is free from the din and bustle of a city life.', '2024-02-05', '150_Words', 'Paragraph for All Students', 'pros-cons-bg.jpg'),
(3, 'Paragraph on My Village', 'The name of my village is Holipura. It is located in the Agra district of Uttar Pradesh. Holipura is my birthplace. It is completely surrounded by nature. It is a paradise of beauty, freshness and peace. A variety of fruits and flowers grow here throughout the year. There are about 250 houses in my village. About two thousand people live here. People of all religions live here happily and peacefully.\r\n\r\nThere is one primary school and one High school in my village. There is also a post office and a hospital in my village. My village is very well developed in terms of communication system. The village is connected to the nearby national highway through panchayat road. The main roads of the village are paved and wide.\r\n\r\nPeople of different professions live here. Most of the people are farmers. Some people are involved in fishing, weaving, handicrafts, shopkeeping etc. Besides, some people also work as labourers. Moreover, There is a Village market which is held twice a week. People don’t have to go far to buy and sell their products.\r\n\r\nThe weather in our village is very pleasant and beautiful. It is possible to get fresh air and oxygen here. The drinking water is clean and pollution free.\r\n\r\nMy village is progressing day by day. Everyone is moving towards education and many students are going abroad to study. I feel very proud of my village.', '2024-02-05', '200_Words', 'My Village', 'post-sample-image.jpg'),
(4, 'Essay on My Village', 'I have not yet seen a village like my own. Kanthalpara where I live is a small village, calm and quiet, under the green boughs all around. It is far from the madding city. It is located Just on the border of Nadia in the north and 24 Parganas in the south. The Ganga which flows by gently is to the west of the village and Bangaon is to the east.\r\n\r\nIt is about 6 sq. km. in area and has a population of over five thousand. About sixty persons out of hundred are farmers and live on agriculture and cottage industry. The rest work in offices and factories. We have a good Health Centre. We are very fortunate that we don’t have to walk elsewhere beyond our village for a school to read in.\r\n\r\nThere are one High School and two Primary Schools in the village. We have a good supply of water from two big tanks and seven tubewells. The village has a daily market and also a police camp. Traders from different corners crowd here to collect agricultural products. So our village has become a trading center.\r\n\r\nWe have a Branch of State Bank. There is also a post office in the locality. It has a famous background for Bankim Chandra Chatterjee as he was born here. Our Public Library has been named after the great author. National Highway 34 runs through our village. Kanthalpara is connected with Kolkata by land and water. There’s so much simplicity and peace in my village. In all respects, this is an ideal village.', '2024-02-05', ' 250_Words', 'My Village 2', 'post-bg.jpg'),
(5, 'Tips On Writing A Paragraph On My Village', 'Begin your paragraph by describing the physical aspects of your village. Use descriptive language to convey the unique features of the landscape, such as rolling hills, winding rivers, or lush green fields. Capture the colors, textures, and natural elements that make your village distinct and captivating.\r\n\r\nHighlight the community: Discuss the sense of community that permeates your village. Describe the friendly faces, close-knit relationships, and the warm greetings exchanged among neighbors. Explore the traditions, festivals, or events that bring the community together, creating a sense of belonging and camaraderie.\r\n\r\nEmbrace local culture and history: Delve into the rich cultural heritage and history of your village. Share stories or anecdotes that reflect the traditions, folklore, or historical landmarks that define your community. Discuss the local customs, craftsmanship, or culinary delights that are unique to your village, showcasing its heritage and character.\r\n\r\nEngage the senses: Appeal to the senses to evoke a strong sensory experience of your village. Describe the sounds of birds chirping, the scent of freshly cut grass, or the aroma of local delicacies wafting through the air. Convey the feeling of walking on cobblestone streets or the sensation of cool breeze on a summer evening. Engaging the senses adds depth and authenticity to your description.\r\n\r\nReflect on personal experiences: Share your personal experiences and memories of your village. Discuss the moments that have left a lasting impression on you—the scenic spots you love to visit, the hidden gems that hold special meaning, or the encounters with locals that have touched your heart', '2024-02-05', 'tips_on_village_blog', 'Writing A Paragraph', 'lead-bg.jpg'),
(6, 'Paragraph ', 'Paragraph 1\r\nMy village is nestled in the embrace of rolling hills, the landscape adorned with vibrant shades of green. As I walk along the winding paths that crisscross the village, the scent of fresh earth and wildflowers fills the air. Majestic oak trees provide shade, their branches reaching towards the sky. The sound of a distant stream trickling adds to the serene ambiance. This picturesque setting is what makes my village a haven of tranquility and natural beauty.\r\n\r\nParagraph 2\r\nIn my village, community is at the heart of everything. As I stroll through the streets, friendly faces greet me with warm smiles and hearty hellos. Neighbors gather at the local market, exchanging stories and laughter. Festivals are celebrated with great enthusiasm, bringing the entire village together in a colorful display of traditions and joy. The sense of belonging and camaraderie within the community is what makes my village feel like a big, extended family.\r\n\r\nParagraph 3\r\nSteeped in history, my village holds secrets of the past waiting to be discovered. Ancient buildings with timeworn facades stand as a testament to the generations that have called this place home. The village square, with its quaint cobblestone streets and centuries-old stone fountain, is a window into a bygone era. Exploring the nooks and crannies of my village is like stepping back in time, unraveling the stories of those who came before us.\r\n\r\nParagraph 4\r\nThe vibrant culture of my village is a tapestry woven with traditions and celebrations. Colorful festivals fill the air with music, dance, and laughter. The aroma of traditional cuisine tantalizes the taste buds, inviting all to indulge in the local delicacies. From lively processions to captivating performances, the cultural heritage of my village is alive and thriving, passed down through generations and cherished by the community.\r\n\r\nParagraph 5\r\nAs the sun sets over the horizon, casting a warm golden glow, my village transforms into a magical realm. The flickering lights of street lamps illuminate the narrow lanes, casting enchanting shadows on the ancient walls. Stars twinkle brightly in the clear night sky, while the distant sound of crickets provides a soothing symphony. It is during these quiet evenings that the true beauty and serenity of my village come alive.\r\n\r\nParagraph 6\r\nIn my village, time seems to slow down, allowing for moments of reflection and introspection. The peaceful ambiance invites contemplation and self-discovery. Whether sitting under a towering oak tree or finding solace at the village’s peaceful sanctuary, there is a sense of serenity that permeates the very essence of my village. It is a place where one can escape the hustle and bustle of the outside world and find a quiet sanctuary for the soul.\r\n\r\nParagraph 7\r\nThe sweet melodies of birdsong greet me every morning in my village. The air is alive with the chirping of robins and the trilling of finches. The village’s lush greenery provides a haven for a diverse array of wildlife, with squirrels scurrying along tree branches and rabbits hopping through meadows. Nature’s symphony and the vibrant wildlife remind me of the delicate balance and interconnectedness of all living things.\r\n\r\nParagraph 8\r\nNature has bestowed my village with abundant beauty. Vast meadows stretch as far as the eye can see, adorned with wildflowers that sway in the gentle breeze. A river winds its way through the village, its glistening waters inviting locals and visitors alike to find solace in its embrace. The surrounding hills offer breathtaking views, beckoning adventurers to explore their hidden trails and discover hidden treasures.\r\n\r\nParagraph 9\r\nEducation is highly valued in my village. Children gather eagerly at the local school, their laughter echoing through the hallways. Dedicated teachers impart knowledge, nurturing young minds and fostering a love for learning. The village library is a treasure trove of books, inviting residents to delve into stories and embark on adventures from the comfort of their own imaginations. The pursuit of knowledge is a cornerstone of my village’s identity.\r\n\r\nParagraph 10\r\nThe charm of my village lies in its simplicity. Life unfolds at a leisurely pace, allowing residents to savor the small moments and appreciate the beauty of everyday life. From the aroma of freshly baked bread wafting from the local bakery to the sight of children playing in the village square, there is a sense of contentment that fills the air. My village is a place where time seems to stand still, reminding us to find joy in the present and embrace the simple pleasures that surround us.', '2024-02-05', 'Paragraph ', 'Paragraph ', 'fact-bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contects`
--

CREATE TABLE `contects` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone_no` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contects`
--
ALTER TABLE `contects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contects`
--
ALTER TABLE `contects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
