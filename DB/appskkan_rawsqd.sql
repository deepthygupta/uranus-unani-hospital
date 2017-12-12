-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2017 at 08:22 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appskkan_rawsqd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Mr. Master Admin', '', '', 'deepthy@qpro.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1489990027'),
(2, 'Mr. Accountant', '1245784512', '', 'accountant@shop.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1430737266'),
(3, 'Mr manager', '987456321', '', 'manager@shop.com', 'e10adc3949ba59abbe56e057f20f883e', '6', '1433682938'),
(4, 'Manager', '', '', 'info@rawsqueezed.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1503295684'),
(5, 'dhub', '123456789', '', 'info@dhub.in', 'e10adc3949ba59abbe56e057f20f883e', '1', '1509355073');

-- --------------------------------------------------------

--
-- Table structure for table `available_pin`
--

CREATE TABLE `available_pin` (
  `sl_no` int(11) NOT NULL,
  `pin_code` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `available_pin`
--

INSERT INTO `available_pin` (`sl_no`, `pin_code`) VALUES
(1, '682024'),
(2, '682002'),
(3, '682033'),
(4, '682304');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `page` longtext,
  `place` longtext,
  `num` longtext,
  `status` longtext,
  `link` longtext,
  `image_ext` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`, `image_ext`) VALUES
(1, 'home', 'after_slider', '1', 'ok', '', '.png'),
(2, 'home', 'after_slider', '2', 'ok', '', '.jpg'),
(3, 'home', 'after_slider', '3', 'ok', '', '.jpg'),
(4, 'home', 'after_slider', '4', NULL, '', NULL),
(5, 'home', 'after_featured', '1', '0', '', NULL),
(6, 'home', 'after_featured', '2', '0', '', NULL),
(7, 'home', 'after_featured', '3', '0', '', NULL),
(8, 'home', 'after_featured', '4', '0', '', NULL),
(9, 'home', 'after_search', '1', '0', '', NULL),
(10, 'home', 'after_search', '2', '0', '', NULL),
(11, 'home', 'after_search', '3', '0', '', NULL),
(12, 'home', 'after_search', '4', '0', '', NULL),
(13, 'home', 'after_category', '1', '0', '', NULL),
(14, 'home', 'after_category', '2', '0', '', NULL),
(15, 'home', 'after_category', '3', '0', '', NULL),
(16, 'home', 'after_category', '4', '0', '', NULL),
(17, 'home', 'after_latest', '1', '0', '', NULL),
(18, 'home', 'after_popular', '1', '0', '', NULL),
(19, 'home', 'after_most_viewed', '1', '0', '', NULL),
(20, 'category', 'after_filters', '1', 'ok', '', NULL),
(21, 'featured', 'after_most_sold', '1', '0', '', NULL),
(22, 'featured', 'after_most_viewed', '1', '0', '', NULL),
(23, 'vendor_home', 'after_filter', '1', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `summery` varchar(1000) NOT NULL,
  `author` varchar(500) NOT NULL,
  `date` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `blog_category` varchar(25) NOT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(11, 'A SQUEEZE of goodness!!!', '<p class=\"MsoNormal\">“Almost 1kg of fruits and vegetables go into making 300 ml\r\nof Rawsqueezed juice” says Tess James of RAWSQUEEZED.</p><p>\r\n\r\n</p><p class=\"MsoNormal\">With refreshing cold pressed juices delivered to your\r\ndoorstep, RAWSQUEEZED and its army of five have been making waves in Cochin.\r\nThe moment I saw the ad for their website on Facebook, I knew I had to try the\r\nproduct. Enter into a cheery website that offered a cornucopia of juices from\r\nthe simple (Pure Carrot and Pure Orange) to complex concoctions (Liver Lover-\r\nBaby Spinach, Carrot and Celery and ABC- Apple Beetroot and Carrot). The wide\r\nvarieties have one thing in common; they are absolutely delicious and hearty!</p>', 'letsstalkfood', '2017-06-07', '<p class=\"MsoNormal\">“We were a bunch of friends who love great food and always\r\nwanted to start a food related business. After several discussions and\r\nresearch, we came to conclude that quality fresh juice delivered home was a\r\nniche that was waiting to be filled. We started digging into recipes and\r\nconsulting nutritionists about a year back. Six months ago SARUN MURALI,\r\nFounder imported the required cold press machinery to Cochin and we had a soft\r\nlaunch on April 6th”,shares Tess&nbsp; who is\r\nthe brand consultant, content writer, and advisor to RawSqueezed. She works\r\nwith alternative movements and ideologies close to earth, community and\r\nself-care.&nbsp;&nbsp; </p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">Cochin has been a slightly tough nut to crack when it comes\r\nto innovative products, especially the ones lean toward a heavier price range.\r\nRawsqueezed first hit Infopark with a selection of their juices, talking to\r\ncustomers about the health benefits each mix offered and by two in the\r\nafternoon, they were completely sold out! With awareness spreading amongst\r\nKochiities, the number of bottles sold slowly started to rise, and with many\r\nloyalists ordering juice daily, Rawsqueezed will be starting subscriptions from\r\nnext month on.</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">Pure Pomegranate<br></p><p class=\"MsoNormal\">“I think the biggest challenge we have faced is the feedback\r\nabout the pricing range of our products” says Tess as she divulges into the\r\namount of effort taken to produce each bottle of juice. First off, the\r\ndifference between a regular juicer and a cold press machine needs to be\r\nunderstood. In the former, fruits and vegetables need to be mercilessly chopped\r\nup and ground bringing about a large amount of wastage. In the latter however\r\nfruits and veges can be added whole (skinned) and the machine ensures that\r\nevery drop of juice is extracted. The remaining waste can be used as bio compost.\r\nTo get a better idea about how a cold press machine works, visit this link:COLD\r\nPRESS MACHINE</p><p class=\"MsoNormal\">More than the amount of wastage, the way the juice tastes in\r\nboth methods is extremely different. Juices from cold press machines taste\r\nvastly fresher, thicker and almost alive! It leaves one invigorated and\r\nrefreshed!</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">The quality and safety aspect of fruits and vegetables used\r\nfor juices is another concern raised by customers. The company is hoping to\r\nbuild their own organic farm source in the near future but for the time being,\r\nonly the choicest fruits and vegetables (seasonally available) are sterilized\r\nand detoxified before it hits the machine. “70% of the so called ‘organic’\r\nproduce available in the markets are a sham. In the current scenario, having\r\njuice would be considered safer than having a fruit or vegetable whole!” says\r\nTess.</p><p class=\"MsoNormal\">We are joined by Chef James Antony who has over 10 years of\r\nexperience working with major hotel brands from the likes of Sheraton, Dubai to\r\nTaj, India. Pursuance of his food dream lead to him joining the Rawsqueezed\r\nteam and has been juicing up a storm ever since!&nbsp; “Rawsqueezed is not just about throwing some\r\nraw ingredients together. There is a lot of tasting and balancing of flavours\r\nto be made before the product reaches the customer. We use no sugar or\r\npreservatives and produce juices aimed not just at quenching thirst but to\r\nprovide specific health benefits” says Chef James. “For example, COLD BREEZE:\r\nCucumber, Pineapple and Mint is great to ease joint pain, KIWI LOVE- Kiwi, Green\r\nApple, Cucumber and Mint is chockfull of Vitamin C and MIRACLE GREEN- Spinach,\r\nParsley, Cucumber, Lemon, Green Apple and Celery is a Vitamin and Antioxidant\r\nfactory!”</p><p class=\"MsoNormal\">The team however makes it clear that no amount of fresh\r\njuice would substitute a good, healthy food filled with fibre. Raw Squeezed\r\npromotes a ‘HEAL YOUR GUT’ option on their website which has an array of detox\r\njuices that help your body get the adequate rest it requires.</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">ABC</p><p class=\"MsoNormal\">The team is planning to add Kottayam, Calicut and Trivandrum\r\ninto their range of delivery but for the time being they plan to create more\r\nawareness and attain more customers in Cochin. With the concept of holistic\r\nliving and natural hygiene in mind, Rawsqueezed has in mind to include\r\nsmoothies, a variety of nut milks, chia seeds and cococnut milk based drinks in\r\nthe near future. They are currently researching good options for drinks during\r\nthe monsoon.</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">Pure Carrot</p><p class=\"MsoNormal\">“The community needs to be educated. People need to\r\nunderstand the wealth of goodness our products offer. Cold pressed juice is raw\r\nand hence is teeming with live enzymes, carbohydrates, amino acids, vitamins,\r\nminerals and antioxidants. With Rawsqueezed, you get your daily target of\r\nrequired nourishment from fruits and vegetables for your body in its most easily\r\nabsorbable form.”</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">Cold Breeze</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">Chef James had brought me three juices to try: ABC- Apple,\r\nBeetroot and Carrot, PURE CARROT and COLD BREEZE. I was a little skeptical\r\nabout the mix of fruits and vegetables but oh wow! It was so good! Rich and\r\nthick with the sweetness of Apple and Carrot and an earthy tang of beet,&nbsp; ABC was a hearty drink. PURE CARROT has\r\nbecome a favorite drink period! It tastes smooth, sweet and nourishing. COLD\r\nBREEZE was like a invigorating whisper of cucumber with the sweetness of Pineapple\r\nhighlighted with fresh mint.</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">Miracle Green</p><p class=\"MsoNormal\">I am a fan and constant customer. End of story!</p><p class=\"MsoNormal\">For more details/ to place an order, visit: RAWSQUEEZED</p><p class=\"MsoNormal\">Other team member details:</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">–&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SARUN\r\nMURALI (Founder)- A vegetarian by choice and an avid cold presser at home,\r\nSarun started the project in early 2016. Passionate about food and owner of\r\nShradha Speciality Products, he has been dreaming about into the business of\r\nfood for many years.</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">–&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; JAYADEV\r\nSUKUMARAN (Marketing Manager)- With over 14 years of experience in sales and\r\nmarketing, Jayadev joined rawsqueezed with the understanding that his wealth of\r\nexperience and capacity to learn quickly in new environments would help his\r\nclose friend’s dream venture.</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">–&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; JOJI BABU\r\n(Delivery Manager)- Handles deliveries across Cochin. With more than 8 years of\r\nexperience in sales and marketing, his patience and jovial attitude comes\r\nhighly valued at Rawsqueezed.</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\">–&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AJITH\r\n(Technical Consultant)- also known as the “Machine Doctor” at Rawsqueezed, he\r\ntakes care of the cold press and is an ingenious technician.</p>', NULL, '5', 0),
(12, 'Meet Raw Squeezed, Kerala’s first made to order cold-pressed juice brand', '<p class=\"MsoNormal\"><span lang=\"EN-IN\">Like most Malayalis, natural drinks have\r\nalways been dear to Sarun Murali. But after the journalist-turned-entrepreneur\r\nmoved to Qatar for work, he realised that there’s a lot more to beverages than\r\njust plain juice. “Having chanced upon a slow juicer, my whole perception about\r\nthe liquid diet changed,” begins Sarun. “But, I was disappointed to find that\r\nwe don’t really have a home grown cold-pressed juice brand in Kerala. While\r\nMumbai-based labels like Raw Pressery are available at Lulu Hypermarket, their\r\nextended shelf life is a cause for concern,” elaborates the expat. Raw\r\nSqueezed, Sarun’s month-old endeavour, offers made to order deliveries across\r\nKochi within two hours.</span></p><p class=\"MsoNormal\"><span lang=\"EN-IN\"><o:p></o:p></span></p>', ' Arya P Dinesh', '2017-05-05', '<p class=\"MsoNormal\"><span lang=\"EN-IN\"><span style=\"font-weight: bold;\">In essence</span><o:p></o:p></span></p><p>\r\n\r\n</p><p class=\"MsoNormal\"><span lang=\"EN-IN\">As his six-member team delivers a pack of\r\ntheir samples to my office, I can’t help but be a bit sceptical upon seeing the\r\nglass bottled serving. Warning me about the low shelf life aspect (48 hours\r\nwith refrigeration), James Anthony, the chef behind the project, informs that\r\nit is a conscious decision. “Our aim is to deliver the product as fresh and\r\npure as possible.” says the ex-Courtyard Marriott employee, adding that the\r\nfruits used in their concoctions are imported from around the world, but the\r\nvegetables are locally sourced. A sample of their Pure Orange drink—made with\r\nthe Valencia variant of the fruit—is enough to convince one about their no\r\nsugar or preservative philosophy. While the texture is watery (with no visible\r\nsediments), it is the mildly sweet concentrated flavour that hits the tongue\r\nright away. Having perfected his craft over the last 12 years at properties\r\nincluding Sheraton Dubai, James took over three months to conceptualise the\r\ncurrent menu which offers over 10 juicing recipes.<br><br></span></p><p class=\"MsoNormal\"><span lang=\"EN-IN\"><span style=\"font-weight: bold;\">Artisanal fix</span><o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-IN\">\r\n\r\n<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-IN\">Produced using imported equipment from the\r\nUS—which squeezes diced fruits/vegetables using a weight of six tonnes—Raw\r\nSqueezed has a daily delivery capacity of 80-100 bottles.“One of the advantages\r\nof this process is the content itself. Each of our 300 ml delivery bottles\r\ncontains pure juice made of over 800 grammes to 1 kilo of fruits/veggies,”\r\nexplains James. With their current delivery system covering the whole of Kochi,\r\nSarun and his team are hoping to launch juice kiosks in the city within a year.\r\nWhile the pure categories featuring fruits like pomegranate are flavoursome,\r\ndon’t forget to try their dietary brews like Miracle Green (spinach, parsley,\r\nlemon, green apple, cucumber, celery), &nbsp;if you’re a detox enthusiast.<br><br></span></p><p class=\"MsoNormal\"><span lang=\"EN-IN\">Single flavours from `120 onwards<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-IN\">\r\n\r\n<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-IN\">Details: rawsqueezed.com</span></p>', NULL, '4', 0),
(13, 'aaaaaaaaaaaaaaaaa', '<p>asassssss</p><p>hhsgjgjdjgds</p><p>sNBSDHJHJKDSJ</p>', '', '2018-02-02', '<p><br></p>', NULL, '4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `name`) VALUES
(4, 'News'),
(5, 'Blog');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `name` longtext,
  `description` longtext,
  `logo` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `logo`) VALUES
(1, 'rawsqueezed', NULL, 'brand_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `business_settings_id` int(11) NOT NULL,
  `type` longtext,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', ''),
(2, 'shipping_cost', 'ok', '20-300'),
(3, 'shipping_cost_type', '', 'fixed'),
(4, 'currency', '', '27'),
(6, 'shipment_info', '', '<p><span style=\"line-height: 17.1429px;\">&nbsp;</span></p>'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '80'),
(9, 'paypal_set', '', 'ok'),
(10, 'paypal_type', '', 'sandbox'),
(11, 'faqs', '', '[{\"question\":\"Why Should I Juice?\",\"answer\":\"By allowing your body to maintain an alkaline balance at cellular level is the best way to live a long healthy life. Raw, organic vegetables and fruits are the best bets to create alkaline-forming effect inside our body. Most grains, animal foods, alcohol, coffee and highly processed foods have an acid-forming effect on your body. By cold pressing fruits and vegetables you get the best way to assimilate all the nutrients while allowing your body to get back to its alkaline balance.<br>\"},{\"question\":\"Why should I choose cold-pressed juices?\",\"answer\":\"<p style=\\\"text-align: justify; \\\"><span style=\\\"color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Of the three methods of juicing cold pressing is the better method of extracting the most nutrient dense and enzyme intact juice as the process handles the produce gently and with no heat generation. It allows the \\u201cliving\\u201d elements of nature to stay in tact even after juicing.<\\/span><br><\\/p>\"},{\"question\":\"Why are cold pressed juices more expensive?\",\"answer\":\"<p style=\\\"text-align: justify; \\\"><span style=\\\"color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Cold pressed juices are expensive due to many reasons. The major reason being the technology with which the juice is made has not yet been made available in a cheaper option. Also in cold pressing,comparatively a larger quantity of fruits and vegetables goes into producing a bottle of cold pressed juice. You are on the winning side. You get the adequate amount and the best kind of of nutrition without much trouble!<\\/span><br><\\/p>\"},{\"question\":\"Why Juice As Therapy?\",\"answer\":\"<div style=\\\"text-align: justify;\\\"><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\\\">Juice therapy is a proven method from tradition which allows body to detoxify, rest and rebuild itself. It allows for concentrated cellular nourishment and allows essentials nutrients to reach the body easily and quickly.<\\/span><\\/div>\"},{\"question\":\"What are life giving enzymes?\",\"answer\":\"<p style=\\\"text-align: justify; \\\"><span style=\\\"color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\\\">Enzymes are proteins which are present in all living organisms. When we cook food, the life giving enzymes are destroyed and thus the potential of cooked food to heal and support life is limited. Whereas, in fresh, raw produce of fruits and vegetables, the enzymes are intact and is thereby a much healthier choice for your diet. Cold pressed juices are food that is still alive!<\\/span><br><\\/p>\"}]'),
(12, 'cash_set', '', 'ok'),
(13, 'stripe_set', '', 'ok'),
(14, 'stripe_secret', '', ''),
(15, 'stripe_publishable', '', ''),
(16, 'home_def_currency', '', '27'),
(17, 'c2_set', NULL, 'ok'),
(18, 'c2_user', NULL, NULL),
(19, 'c2_secret', NULL, NULL),
(20, 'c2_type', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` longtext,
  `description` longtext,
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `data_brands` longtext,
  `data_vendors` longtext,
  `data_subdets` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `digital`, `banner`, `data_brands`, `data_vendors`, `data_subdets`) VALUES
(1, 'CLEAN', NULL, NULL, 'category_1.png', '1:::rawsqueezed', '', '[{\"sub_id\":\"1\",\"sub_name\":\"BABY SPINACH\",\"min\":0,\"max\":0,\"brands\":\"1:::rawsqueezed\"},{\"sub_id\":\"2\",\"sub_name\":\"BEETROOT\",\"min\":0,\"max\":0,\"brands\":\"1:::rawsqueezed\"}]'),
(2, 'GLOW', NULL, NULL, 'category_2.png', '1:::rawsqueezed', '', '[{\"sub_id\":\"3\",\"sub_name\":\"BEETROOT\",\"min\":0,\"max\":0,\"brands\":\"1:::rawsqueezed\"}]'),
(3, 'ENERGY', NULL, NULL, 'category_3.png', '1:::rawsqueezed', '', '[{\"sub_id\":\"4\",\"sub_name\":\"BEETROOT\",\"min\":0,\"max\":0,\"brands\":\"1:::rawsqueezed\"}]'),
(4, 'HEAL YOUR GUT', NULL, NULL, 'category_4.png', '1:::rawsqueezed', '', '[{\"sub_id\":\"5\",\"sub_name\":\"CELERY\",\"min\":0,\"max\":0,\"brands\":\"1:::rawsqueezed\"}]'),
(7, 'SIGNATURE COLLECTION', NULL, NULL, 'category_7.', '', '', '[]'),
(8, 'ORGANIC GREEN', NULL, NULL, 'category_8.jpg', '', '', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('c1722e9a45b6070dad67fed91c657f6771bd7b3a', '::1', 1513063135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333036323933313b63757272656e63797c733a323a223237223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a31363a224d722e204d61737465722041646d696e223b7469746c657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE `contact_message` (
  `contact_message_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext,
  `other` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`contact_message_id`, `name`, `subject`, `email`, `message`, `timestamp`, `view`, `reply`, `other`) VALUES
(1, 'Manjusha', '', 'manjushacsst@gmail.com', 'over fat due to thyrodism', '1501129406', 'no', NULL, '9995854361'),
(2, 'Diana Williams', 'A question about your website', 'w.illiamsd.diana@gmail.com', 'Want more clients and customers? We will help them find you by putting you on the 1st page of Google. Please reply to this message and we will prepare a special proposal for you.\r\n', '1502457636', 'no', NULL, ''),
(3, 'Kiran', 'Enquiry', 'kirans.tcr@gmail.com', 'I\'m from Pune, you have franchise here? Can you send sample bottles?', '1503499594', 'no', NULL, '9446035090'),
(4, 'louisa', 'Coupon Code', 'lroupell@icloud.com', 'I have a coupon code from French Toast No. FT30. Would like to try your sample shots address is 8a Chakolas Bayside, Chakolas Colony, Thevera', '1503564725', 'no', NULL, '9249225385'),
(5, '', '', '', '', '1505797966', 'no', NULL, ''),
(6, 'Ajit saraf', 'Website', 'aji', 'Your website is sluggish . Also,once a customer has loggedin, is there a need to ask for pin code check for each order.It is not easy to figure out how to order more number of the same juice.', '1505798345', 'no', NULL, '914844060982'),
(7, 'NEETHU APPU', 'To place an order', 'neethuanchery@gmail.com', 'I had your product...it really tasted well as it sounds ...so I would like to know more about your product... please do contact me ', '1506073774', 'no', NULL, '9946755539'),
(8, 'Safal Adam', 'Enquiry', 'whitescreeninfo@gmail.com', 'Hello , I believe I met a representative from the company at The Kitchen Can , holiday inn. I\'m the PR Executive at Whitescreen Production House , Kochi and I was wondering if it was possible to arrange a meeting sometime this coming week to discuss a few projects we\'re rolling out in terms of social media advertising that would be best suited for your product. For further queries feel free to email us or checkout our webpage.', '1507029656', 'no', NULL, '8220561110'),
(9, 'Diana Colmenar', 'Raw Squeezed', 'dianah@celebrityconnected.net', 'Hello,\r\n\r\nMy name is Diana Colmenar, and I\'m VP at Celebrity Connected. Celebrity Connected would like to invite Raw Squeezed to showcase at the upcoming Honoring The American Music Awards® Luxury Gifting Suite on November 18, 2017 at the W Hotel Hollywood. Forty companies from around the world and various industries are selected to showcase at this red carpet celebration.\r\n\r\nAs a vendor, you\'ll be introduced to over 100 celebrities individually. You are given the opportunity to meet, chat, and establish a relationship with each of them. You’ll also be able to capture photo and video of your products and your interaction with each VIP for marketing material. Each celebrity attendee has a large social media influence, and is receptive to sharing your brand on their Facebook, Twitter, and Instagram accounts to their thousands or millions of followers.\r\n\r\nYou’ll be given the opportunity to network not only with celebrities, but also investors and retailers who can assist with growing your business. Media outlets such as television networks, radio stations, magazines, and bloggers also cover the event to reinforce brand awareness for both start-ups and well-established companies.\r\n\r\nPackages begin at $5,000 and include a large show space, 4 all-access passes to the gift event, and rights to photo and video captured at the event. \r\n\r\nWe’d love to learn more about your company. Please call me at (714) 330-6096.\r\n\r\nAll the best,\r\n\r\nDIANA COLMENAR\r\nVP\r\nCELEBRITY CONNECTED\r\n\r\nCell: 1.714.330.6096\r\nOffice: 1.562.462.0095\r\nEmail: dianah@celebrityconnected.net or diana@celebrityconnected.net\r\n\r\nCorporate Office:\r\n12106 Front St, Ste 200\r\nNorwalk, CA 90650\r\n\r\nTo opt-out of receiving future emails, please reply \"unsubscribe\".\r\n\r\nThe American Music Awards® is a registered trademark of Dick Clark Productions®. Celebrity Connected is not authorized by and is not associated with Dick Clark Productions ®, The American Music Awards ®, or any of its official partners or vendors.\r\n\r\nThis electronic message is intended to be viewed only by the individual or entity to whom it is addressed. It may contain information that is privileged, confidential and exempt from disclosure under applicable law. Any dissemination, distribution or copying of this communication is strictly prohibited without our prior permission. If the reader of this message is not the intended recipient, or the employee or agent responsible for delivering the message to the intended recipient, or if you have received this communication in error, please notify us immediately by return e-mail and delete the original message and any copies of it from your computer system.\r\n', '1507755160', 'no', NULL, '7143306096'),
(10, 'Matthew John', 'Juice packages', 'matthewjohn50@gmail.com', 'Hi, I was wondering whether you could offer long term plans,example if I want to order juice delivered daily for a month', '1508472971', 'no', NULL, '919207750909'),
(11, 'Alex', 'Russia created a crypto currency to replace bitcoin - SibCoin (Siberian chervonets)', 'newslentarus@mail.ru', 'Russia created a crypto currency to replace bitcoin - SibCoin (Siberian chervonets)', '1508909409', 'no', NULL, '81276755259'),
(12, 'Manogna Rajan ', 'Delivery inquiry ', 'manogna17@gmail.com', 'Hi there...I live in Kuzhivellapady, panchayat road. Do you\'ll deliver here?? Wanted to check before placing order....thanks', '1509639720', 'no', NULL, ''),
(13, 'NataliRus', 'Russia they released their crypto currency to replace bitcoin', 'natali@mail.ru', 'In Russia released the national crypto currency SibCoin (Siberian chervonets) \r\nSibCoin can repeat the success of Bitcoin. \r\n \r\nAs a thanks that I informed you please send a money of this crypto currency \r\nMy SibCoin wallet: SRVJfVgYieAEBWJAsX2okBxrM3knYaYpbh \r\nMy Bitcoin wallet: 1CmY7pLyDTZPzXr7Uo5yE4RwuG7VrjLWiA', '1510221787', 'no', NULL, '82764913581'),
(14, 'PanMen', 'Crypto currency SibCoin was included in the list of Forbes.', 'panamened@mail.ru', 'Crypto currency SibCoin (Siberian chervonets) was included in the list of Forbes. SibCoin can replace Bitcoin on Russian territory', '1511703165', 'no', NULL, '83338436371'),
(15, '', 'Request for email id', '', 'This is Vanista from IAMAI, this is regarding for Kerala Digital Summit Event which is on 15th of December at Le meridian kochi and We would like to invite co-founder,MD, and Marketing of Rawsqueezed. Request you to kindly provide me their name and email id so that I can send them an invite.', '1512112418', 'no', NULL, ''),
(16, '', 'Request for email id', '', 'This is Vanista from IAMAI, this is regarding for Kerala Digital Summit Event which is on 15th of December at Le meridian kochi and We would like to invite co-founder,MD, and Marketing of Rawsqueezed. Request you to kindly provide me their name and email id so that I can send them an invite.', '1512112420', 'no', NULL, ''),
(17, 'trkbiucirwa', 'MNoVsdJtXecj', '', 'kWtdCX  <a href=\"http://jauyhfjhijiv.com/\">jauyhfjhijiv</a>, [url=http://rergwrvmmypw.com/]rergwrvmmypw[/url], [link=http://izmkickxqnhw.com/]izmkickxqnhw[/link], http://lfunvqdxhjjq.com/', '1512297749', 'no', NULL, ''),
(18, NULL, NULL, NULL, NULL, '1512297749', 'no', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `spec` varchar(1000) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `till` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  `url` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `title`, `spec`, `added_by`, `till`, `code`, `status`, `image`, `url`) VALUES
(4, 'asdsdf', '{\"set_type\":\"category\",\"set\":\"[\\\"2\\\"]\",\"discount_type\":\"amount\",\"discount_value\":\"10\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '2017-06-22', '214', 'ok', 'discount_4.jpg', 'http://www.rawsqueezed.com/index.php/home/offer'),
(5, 'ert', '{\"set_type\":\"sub_category\",\"set\":\"[\\\"2\\\"]\",\"discount_type\":\"amount\",\"discount_value\":\"5\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '2017-06-21', '444', 'ok', 'discount_6.jpg', 'http://www.rawsqueezed.com/index.php/home/offer'),
(9, 'sds', '{\"set_type\":\"all_products\",\"set\":\"null\",\"discount_type\":\"percent\",\"discount_value\":\"3\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '', 'sdfdsf', 'ok', 'discount_9.jpg', 'http://www.rawsqueezed.com/index.php/home/image_details/32/1');

-- --------------------------------------------------------

--
-- Table structure for table `currency_settings`
--

CREATE TABLE `currency_settings` (
  `currency_settings_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `exchange_rate` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `exchange_rate_def` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_settings`
--

INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `exchange_rate_def`) VALUES
(1, 'U.S. Dollar', '$', '1', 'ok', 'USD', '1'),
(2, 'Australian Dollar', '$', '1.3163', 'ok', 'AUD', NULL),
(5, 'Brazilian Real', 'R$', '3.2953', 'ok', 'BRL', NULL),
(6, 'Canadian Dollar', '$', '1.3199', 'ok', 'CAD', NULL),
(7, 'Czech Koruna', 'Kč', '24.212', 'ok', 'CZK', NULL),
(8, 'Danish Krone', 'kr', '6.6675', 'ok', 'DKK', NULL),
(9, 'Euro', '€', '0.89079', 'ok', 'EUR', NULL),
(10, 'Hong Kong Dollar', '$', '7.7587', 'ok', 'HKD', NULL),
(11, 'Hungarian Forint', 'Ft', '275.38', 'ok', 'HUF', NULL),
(12, 'Israeli New Sheqel', '₪', '3.7896', 'ok', 'ILS', NULL),
(13, 'Japanese Yen', '¥', '101.86', 'ok', 'JPY', NULL),
(14, 'Malaysian Ringgit', 'RM', '4.1369', 'ok', 'MYR', NULL),
(15, 'Mexican Peso', '$', '19.389', 'ok', 'MXN', NULL),
(16, 'Norwegian Krone', 'kr', '8.2509', 'ok', 'NOK', NULL),
(17, 'New Zealand Dollar', '$', '1.3689', 'ok', 'NZD', NULL),
(18, 'Philippine Peso', '₱', '47.872', 'ok', 'PHP', NULL),
(19, 'Polish Zloty', 'zł', '3.8453', 'ok', 'PLN', NULL),
(20, 'Pound Sterling', '£', '0.75898', 'ok', 'GBP', NULL),
(21, 'Russian Ruble', 'руб', '64.936', 'ok', 'RUB', NULL),
(22, 'Singapore Dollar', '$', '1.3645', 'ok', 'SGD', NULL),
(23, 'Swedish Krona', 'kr', '8.5133', 'ok', 'SEK', NULL),
(24, 'Swiss Franc', 'CHF', '0.97461', 'ok', 'CHF', NULL),
(26, 'Thai Baht', '฿', '34.91', 'ok', 'THB', NULL),
(27, 'Indian Rupee', 'Rs.', '65.39', 'ok', '??', '1');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discount_id` int(11) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `spec` varchar(1000) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `till` varchar(30) DEFAULT NULL,
  `coupon_limit` int(11) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `url` longtext,
  `discount_type` varchar(30) DEFAULT NULL,
  `coupon_applied_number` varchar(1000) DEFAULT NULL,
  `added_date` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discount_id`, `title`, `spec`, `added_by`, `till`, `coupon_limit`, `code`, `status`, `url`, `discount_type`, `coupon_applied_number`, `added_date`) VALUES
(7, 'Spring', '{\"set_type\":\"all_products\",\"set\":\"null\",\"discount_type\":\"free gift\",\"discount_value\":\"0\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '2017-12-31', 496, 'SPRING30', 'ok', NULL, 'free gift', '{\"Aug-17\":3}', NULL),
(8, 'Zumba', '{\"set_type\":\"all_products\",\"set\":\"null\",\"discount_type\":\"free gift\",\"discount_value\":\"0\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '2017-12-31', 499, 'ZUMBA30', 'ok', NULL, 'free gift', '{\"Aug-17\":1}', NULL),
(9, 'LEDHI', '{\"set_type\":\"all_products\",\"set\":\"null\",\"discount_type\":\"free gift\",\"discount_value\":\"0\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '2017-12-31', 500, 'LEDHI30', 'ok', NULL, 'free gift', '{\"Aug-17\":0}', NULL),
(14, 'FREANCH TOAST', '{\"set_type\":\"all_products\",\"set\":\"null\",\"discount_type\":\"free gift\",\"discount_value\":\"0\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '2017-12-31', 500, 'FT30', 'ok', NULL, 'free gift', '{\"Aug-17\":0}', '1503457848'),
(13, 'RIZANA', '{\"set_type\":\"all_products\",\"set\":\"null\",\"discount_type\":\"free gift\",\"discount_value\":\"0\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '2017-12-31', 500, '#1FRIEND', 'ok', NULL, 'free gift', '{\"Aug-17\":0}', '1501820877'),
(17, 'COCOATREE', '{\"set_type\":\"all_products\",\"set\":\"null\",\"discount_type\":\"free gift\",\"discount_value\":\"0\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '2017-12-31', 500, 'CT30', 'ok', NULL, 'free gift', '{\"Sep-17\":0}', '1505375674'),
(18, 'ZUMBA EVENT', '{\"set_type\":\"all_products\",\"set\":\"null\",\"discount_type\":\"free gift\",\"discount_value\":\"0\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '2017-12-31', 500, 'ZUMBA10', 'ok', NULL, 'free gift', '{\"Sep-17\":0}', '1505727636'),
(22, 'NavaFete17', '{\"set_type\":\"product\",\"set\":\"[\\\"42\\\"]\",\"discount_type\":\"amount\",\"discount_value\":\"190\",\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', '2017-12-31', 24, 'NavaFete17', 'ok', NULL, 'amount', '{\"Oct-17\":0,\"Nov-17\":11}', '1509348459');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `body` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `body`) VALUES
(1, 'Password Reset Email', 'Password Reset Successful', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">You recently requested a new password. We\'ve received the request and your password has been changed.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]<br></span></p><p><span [removed]=\"font-weight: bold;\">Your new password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(2, 'Account Approval Email', 'Account Approval Status', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site. Your registration must be approved by the administrator and your account has been [[status]]. Please contact with the </span>administration team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(3, 'Membership Upgrade Email', 'Membership Upgraded', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Your Membership Type is [[package]]. </span></p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administrator team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(4, 'Account Opening Email', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site </span>[[sitename]]<span [removed]=\"font-weight: bold;\">. </span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Your account is now being reviewed by </span>administration team. Please wait for Admin approval. You will get a  confirmation email soon and after that you will be able to login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administration team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `e_date_time` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `update_hash` bigint(20) NOT NULL DEFAULT '0',
  `event_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `title`, `body`, `photo`, `e_date_time`, `date`, `update_hash`, `event_date`) VALUES
(1, 'Government committed to all-round development of Unani medicine: AYUSH Minister Shripad Yesso Naik', 'The day marks the birth centenary of Hakim Ajmal Khan, a noted freedom fighter, renowned Unani medical practitioner and educationist born in 1858. The celebrations will spill over to the next two days, with a national seminar on \'Skin diseases & Cosmetology in Unani Medicine\'scheduled on February 12 and 13. This was announced by Director-General, Central Council for Research in Unani Medicine (CCRUM), Vaidya K.S. Dhiman here on Wednesday. On proposals by the Union Ministry of Ayurveda, Yoga & Naturopathy, Unani, Siddha and Homoeopathy (AYUSH), the Government of India had recently decided to declare February 11, the birthday of Hakim Ajmal Khan, as the National Unani Day.', '', 0, 0, 0, '2017-12-01'),
(2, '6 Per Cent People Treated By Traditional Medicine Systems: Survey', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 0, 0, 0, '2017-12-15'),
(3, 'Ayurveda, Homeopathy, Unani to be Integrated with NPCDCS', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.xxxxxxxxxxxxxxxxxxxxxxx', '', 0, 0, 0, '2017-10-28');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `image`, `date`) VALUES
(1, 'A1', '', '2017-12-08'),
(2, 'A2', '', '2017-12-23'),
(3, 'A3', '', '2017-12-30'),
(4, 'A4', '', '2017-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'Raw Squeezed'),
(2, 'system_email', 'admin@shop.com'),
(3, 'system_title', 'Raw Squeezed'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'english'),
(9, 'terms_conditions', '<p>terms and conditions</p>'),
(10, 'fb_appid', ''),
(11, 'fb_secret', ''),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', ''),
(26, 'meta_author', 'ActiveItZone'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', ''),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', ''),
(44, 'contact_about', '<p><span open=\"\" sans\",arial,sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" text-align:=\"\" justify;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"background-color: inherit; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Lorem Ipsum</span><span open=\"\" sans\",arial,sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" letter-spacing:=\"\" text-align:=\"\" justify;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" display:=\"\" inline=\"\" !important;=\"\" float:=\"\" none;\"=\"\" style=\"background-color: inherit; color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer</span><br></p>'),
(39, 'contact_phone', '+91 7510 150 150'),
(40, 'contact_email', 'sales@rawsqueezed.com'),
(41, 'contact_website', 'www.rawsqueezed.com'),
(42, 'footer_text', '<p><br></p>'),
(43, 'footer_category', '[\"1\",\"2\",\"3\",\"4\"]'),
(38, 'contact_address', 'Sraddha speciality products, Janatha road south end, Manamel temple complex Vyttila – 682019 '),
(45, 'admin_notification_sound', 'ok'),
(46, 'admin_notification_volume', '7.47'),
(47, 'privacy_policy', '<p>Privacy Policy</p>'),
(48, 'discus_id', ''),
(49, 'home_notification_sound', 'no'),
(50, 'homepage_notification_volume', '7.36'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'ok'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'google'),
(58, 'vendor_system', 'no'),
(59, 'cache_time', '1440'),
(60, 'file_folder', 'jfkfkiriwnfjkmskdcsdfasaa'),
(62, 'slides', 'no'),
(63, 'preloader', '21'),
(64, 'preloader_bg', 'rgba(20,124,54,1)'),
(65, 'preloader_obj', 'rgba(255,255,255,1)'),
(66, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(67, 'google_api_key', ''),
(68, 'physical_product_activation', 'ok'),
(69, 'digital_product_activation', 'no'),
(70, 'data_all_brands', '1:::rawsqueezed'),
(71, 'data_all_vendors', ''),
(72, 'smtp_host', 'md-in-26.webhostbox.net'),
(73, 'smtp_port', '465'),
(74, 'smtp_user', 'info@rawsqueezed.com'),
(75, 'smtp_pass', 'MtaUCL5BZhsB'),
(76, 'mail_status', 'smtp'),
(77, 'captcha_status', 'no'),
(79, 'smtp_user', 'info@rawsqueezed.com');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext,
  `Bangla` longtext,
  `Spanish` longtext,
  `Arabic` longtext,
  `French` longtext,
  `Chinese` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(1, 'visit_home_page', 'Visit Home Page', 'দর্শন হোম পেজে', 'visita la página de inicio', 'الصفحة الرئيسية زيارة', 'visite page d\'accueil', '访问主页'),
(2, 'profile', 'Profile', 'প্রোফাইলে', 'perfil', 'الملف الشخصي', 'Profil', '轮廓'),
(3, 'logout', 'Logout', 'প্রস্থান', 'cerrar sesión', 'خروج', 'se déconnecter', '登出'),
(4, 'manage_languages', 'Manage Languages', 'প্রত্যেক পরিচালনা', 'gestionar idiomas', 'إدارة اللغات', 'gérer langues', '管理语言'),
(5, 'add_language', 'Add Language', 'ভাষা যোগ', 'agregue un texto', 'إضافة اللغة', 'ajouter la langue', '添加语言'),
(6, 'successfully_added!', 'Successfully Added!', 'সফলভাবে যোগ করা হয়েছে!', '¡Agregado exitosamente!', 'وأضاف بنجاح!', 'Ajouté avec succès!', '添加成功！'),
(7, 'back_to_language_list', 'Back To Language List', 'ফিরে ভাষা লিস্টে', 'volver a la lista de idiomas', 'العودة إلى القائمة لغة', 'Retour à la liste des langues', '回到语言列表'),
(8, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'সত্যিই এই ভাষা মুছে ফেলতে চান?', 'Realmente desea eliminar este idioma?', 'حقا تريد حذف هذه اللغة؟', 'voulez vraiment supprimer cette langue?', '真的要删除这个语言呢？'),
(9, 'settings_updated!', 'Settings Updated!', 'সেটিংস আপডেট!', '¡Ajustes actualizan!', 'ضبط تجديد!', 'Paramètres mis à jour!', '设置更新了！'),
(10, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', 'আপনি কি সত্যিই এই ভাষা মুছে দিতে চান?', 'es lo que realmente desea eliminar este idioma?', 'هل حقا تريد حذف هذه اللغة؟', 'voulez-vous vraiment supprimer cette langue?', '你真的要删除这个语言呢？'),
(11, 'saving..', 'Saving..', 'সংরক্ষণ ..', 'ahorro..', 'إنقاذ..', 'économie..', '保存..'),
(12, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'tablero', 'لوحة القيادة', 'tableau de bord', '仪表板'),
(13, 'products', 'Products', 'পণ্য', 'productos', 'المنتجات', 'Produits', '制品'),
(14, 'physical_products', 'Physical Products', 'শারীরিক পণ্য', 'productos físicos', 'المنتجات المادية', 'produits physiques', '实物产品'),
(15, 'category', 'Category', 'বিভাগ', 'categoría', 'فئة', 'Catégorie', '类别'),
(16, 'brands', 'Brands', 'ব্র্যান্ড', 'marcas', 'العلامات التجارية', 'marques', '品牌'),
(17, 'sub-category', 'Sub-category', 'উপ-বিভাগ', 'subcategoría', 'الفئة الفرعية', 'sous-catégorie', '子分类'),
(18, 'all_products', 'All Products', 'সব পণ্য', 'todos los productos', 'جميع المنتجات', 'tous les produits', '所有产品'),
(19, 'product_stock', 'Product Stock', 'পণ্য স্টক', 'stock de productos', 'الأسهم المنتج', 'stocks de produits', '产品库存'),
(20, 'digital_products', 'Digital Products', 'ডিজিটাল পণ্য', 'productos digitales', 'المنتجات الرقمية', 'les produits numériques', '数码产品'),
(21, 'all_digitals', 'All Digitals', 'সব সাংখ্যিক', 'todos los elementos digitales', 'جميع digitals', 'tous les digitals', '所有位数七段'),
(22, 'sale', 'Sale', 'বিক্রয়', 'venta', 'تخفيض السعر', 'vente', '拍卖'),
(23, 'discount_coupon', 'Discount Coupon', 'ডিসকাউন্ট কুপন', 'cupón de descuento', 'كوبون الخصم', 'coupon de réduction', '折扣券'),
(24, 'ticket', 'Ticket', 'টিকিট', 'boleto', 'تذكرة', 'billet', '票'),
(25, 'reports', 'Reports', 'রিপোর্ট', 'informes', 'تقارير', 'rapports', '报告'),
(26, 'product_compare', 'Product Compare', 'পণ্য তুলনা করুন', 'comparar producto', 'مقارنة المنتج', 'produit comparer', '产品比较'),
(27, 'product_wishes', 'Product Wishes', 'পণ্য শুভেচ্ছা', 'deseos de productos', 'رغبات المنتج', 'souhaits de produits', '产品的愿望'),
(28, 'vendors', 'Vendors', 'বিক্রেতারা', 'vendedores', 'الباعة', 'vendeurs', '供应商'),
(29, 'vendor_list', 'Vendor List', 'বিক্রেতা তালিকা', 'lista de proveedores', 'قائمة الموردين', 'liste de fournisseurs', '供应商名单'),
(30, 'vendor_payments', 'Vendor Payments', 'বিক্রেতা পেমেন্ট', 'pagos a proveedores', 'مدفوعات البائعين', 'le paiement des fournisseurs', '供应商付款'),
(31, 'vendor_packages', 'Vendor Packages', 'বিক্রেতা প্যাকেজ', 'paquetes de proveedores', 'حزم بائع', 'forfaits fournisseurs', '供应商封装'),
(32, 'vendor\'s_slides', 'Vendor\'s Slides', 'বিক্রেতার স্লাইড', 'diapositivas de proveedores', 'الشرائح البائع', 'Les diapositives de fournisseurs', '供应商的幻灯片'),
(33, 'customers', 'Customers', 'গ্রাহকদের', 'clientes', 'الزبائن', 'les clients', '顾客'),
(34, 'messaging', 'Messaging', 'মেসেজিং', 'mensajería', 'الرسائل', 'Messagerie', '消息'),
(35, 'newsletters', 'Newsletters', 'নিউজলেটার', 'boletines de noticias', 'النشرات الإخبارية', 'bulletins', '新闻简报'),
(36, 'contact_messages', 'Contact Messages', 'যোগাযোগের বার্তা', 'mensajes de contacto', 'رسائل الاتصال', 'messages de contact', '联系人的邮件'),
(37, 'blog', 'Blog', 'ব্লগ', 'Blog', 'مدونة', 'Blog', '博客'),
(38, 'blog_categories', 'Blog Categories', 'ব্লগ বিভাগ', 'categorías del blog', 'فئات بلوق', 'catégories de blog', '博客类别'),
(39, 'all_blogs', 'All Blogs', 'সব ব্লগ', 'todos los blogs', 'جميع بلوق', 'tous les blogs', '所有博客'),
(40, 'frontend_settings', 'Frontend Settings', 'ফ্রন্টএন্ড সেটিংস', 'ajustes frontend', 'إعدادات الواجهة', 'paramètres frontend', '前端设置'),
(41, 'slider_settings', 'Slider Settings', 'স্লাইডার সেটিংস', 'configuración del control deslizante', 'ضبط المنزلق', 'paramètres de curseur', '滑块设置'),
(42, 'layer_slider', 'Layer Slider', 'লেয়ার স্লাইডার', 'deslizador capa', 'طبقة المنزلق', 'couche curseur', '层滑块'),
(43, 'top_slides', 'Top Slides', 'শীর্ষ স্লাইড', 'top diapositivas', 'أعلى الشرائح', 'top diapositives', '顶部幻灯片'),
(44, 'display_settings', 'Display Settings', 'প্রদর্শন সেটিং', 'configuración de la pantalla', 'اعدادات العرض', 'paramètres d\'affichage', '显示设置'),
(45, 'home_page', 'Home Page', 'হোম পেজে', 'página de inicio', 'الصفحة الرئيسية', 'page d\'accueil', '主页'),
(46, 'contact_page', 'Contact Page', 'যোগাযোগের পৃষ্ঠায়', 'pagina de contacto', 'صفحة الاتصال', 'page de contact', '联系方式页面'),
(47, 'footer', 'Footer', 'পেয়াদা', 'pie de página', 'تذييل', 'bas de page', '页脚'),
(48, 'theme_color', 'Theme Color', 'থিম রঙ', 'color del tema', 'اللون موضوع', 'couleur du thème', '主题颜色'),
(49, 'logo', 'Logo', 'লোগো', 'logo', 'شعار', 'logo', '商标'),
(50, 'favicon', 'Favicon', 'ফেভিকন', 'favicon', 'فافيكون', 'favicon', '图标'),
(51, 'fonts', 'Fonts', 'ফন্ট', 'fuentes', 'الخطوط', 'polices', '字体'),
(52, 'preloader', 'Preloader', 'preloader', 'preloader', 'تحميل مسبق', 'preloader', '预载'),
(53, 'site_settings', 'Site Settings', 'সাইট সেটিং', 'configuración del sitio', 'إعدادات الموقع', 'les paramètres du site', '站点设置'),
(54, 'general_settings', 'General Settings', 'সাধারণ সেটিংস', 'Configuración general', 'الاعدادات العامة', 'réglages généraux', '常规设置'),
(55, 'third_party_settings', 'Third Party Settings', 'তৃতীয় পক্ষের সেটিংস', 'ajustes de terceros', 'إعدادات طرف ثالث', 'paramètres de tiers', '第三方设置'),
(56, 'build_responsive_pages', 'Build Responsive Pages', 'প্রতিক্রিয়াশীল পৃষ্ঠাগুলি বিল্ড', 'crear páginas de respuesta', 'بناء صفحات استجابة', 'construire des pages sensibles', '建立反应灵敏的网页'),
(57, 'set_default_images', 'Set Default Images', 'সেট ডিফল্ট ইমেজ', 'imágenes predeterminadas conjunto', 'صور مجموعة افتراضية', 'images ensemble par défaut', '设置默认图像'),
(58, 'business_settings', 'Business Settings', 'ব্যবসা সেটিংস', 'entornos de negocios', 'ضبط رجال الأعمال', 'les milieux d\'affaires', '商业环境'),
(59, 'activation', 'Activation', 'সক্রিয়করণ', 'activación', 'تفعيل', 'activation', '激活'),
(60, 'payment_method', 'Payment Method', 'মূল্যপরিশোধ পদ্ধতি', 'método de pago', 'طريقة الدفع او السداد', 'mode de paiement', '付款方法'),
(61, 'currency_', 'Currency ', 'মুদ্রা ', 'moneda ', 'عملة ', 'devise ', '货币 '),
(62, 'faqs', 'Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী', 'Preguntas frecuentes', 'الأسئلة الأكثر شيوعا', 'faqs', '常见问题解答'),
(63, 'staffs', 'Staffs', 'কর্মীরা', 'personal', 'الموظفين', 'états-majors', '员工'),
(64, 'all_staffs', 'All Staffs', 'সমস্ত লাঠি', 'todos los personales', 'جميع الموظفين', 'tous les états-majors', '全体员工'),
(65, 'staff_permissions', 'Staff Permissions', 'স্টাফ অনুমতি', 'permisos del personal', 'أذونات الموظفين', 'permissions du personnel', '工作人员的权限'),
(66, 'language', 'Language', 'ভাষা', 'idioma', 'لغة', 'la langue', '语言'),
(67, 'manage_admin_profile', 'Manage Admin Profile', 'অ্যাডমিন প্রোফাইল পরিচালনা', 'administrar el perfil de administración', 'إدارة الملف الشخصي ل admin', 'gérer le profil administrateur', '管理管理配置文件'),
(68, 'activate', 'Activate', 'সক্রিয় করা', 'activar', 'تفعيل', 'activer', '启用'),
(69, 'SEO_proggres', 'SEO Proggres', 'এসইও proggres', 'proggres SEO', 'proggres كبار المسئولين الاقتصاديين', 'proggres SEO', 'SEO proggres'),
(70, 'online_tutorial', 'Online Tutorial', 'অনলাইন টিউটোরিয়াল', 'tutorial en línea', 'البرنامج التعليمي على الانترنت', 'tutoriel en ligne', '在线教程'),
(71, 'checkout', 'Checkout', 'চেকআউট', 'revisa', 'الدفع', 'check-out', '查看'),
(72, 'deleted_successfully', 'Deleted Successfully', 'সফলভাবে মোছা', 'borrado exitosamente', 'حذف بنجاح', 'supprimé avec succès', '成功删除'),
(73, 'cancelled', 'Cancelled', 'বাতিল করা হয়েছে', 'cancelado', 'تم الالغاء', 'annulé', '取消'),
(74, 'cancel', 'Cancel', 'বাতিল', 'cancelar', 'إلغاء', 'Annuler', '取消'),
(75, 'required', 'Required', 'প্রয়োজনীয়', 'necesario', 'مطلوب', 'Obligatoire', '需要'),
(76, 'must_be_a_number', 'Must Be A Number', 'অবশ্যই একটি সংখ্যা হবে', 'Tiene que ser un número', 'يجب أن يكون رقما', 'doit être un nombre', '必须是一个数字'),
(77, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা আবশ্যক', 'Debe ser una dirección de correo electrónico válida', 'يجب أن يكون عنوان بريد إلكتروني صالح', 'doit être une adresse e-mail valide', '必须是一个有效的E-mail地址'),
(78, 'save', 'Save', 'রক্ষা', 'salvar', 'حفظ', 'enregistrer', '保存'),
(79, 'product_published!', 'Product Published!', 'পণ্য প্রকাশিত!', 'publicó producto!', 'المنتج نشر!', 'produit publié!', '产品发表！'),
(80, 'product_unpublished!', 'Product Unpublished!', 'পণ্য অপ্রকাশিত!', 'producto inédito!', 'المنتج غير منشورة!', 'produit inédit!', '产品未公布！'),
(81, 'product_featured!', 'Product Featured!', 'পণ্য বৈশিষ্ট্যযুক্ত করা হবে!', 'Producto Show!', 'المنتج المميز!', 'produit vedette!', '产品特色！'),
(82, 'product_unfeatured!', 'Product Unfeatured!', 'পণ্য unfeatured!', 'producto sin rasgos!', 'المنتج unfeatured!', 'produit unfeatured!', '产品unfeatured！'),
(83, 'product_in_todays_deal!', 'Product In Todays Deal!', 'আজকের মধ্যে পণ্য মোকাবেলা!', 'producto en el actual reparto!', 'المنتج في اليوم التعامل!', 'produit aujourd\'hui face!', '产品在今天的交易！'),
(84, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'পণ্য আজকের ডিল থেকে সরানো!', 'producto retirado de hoy trato!', 'منتج إزالة من صفقة اليوم!', 'produit retiré de la retransmission de ce deal!', '产品从今天的交易中删除！'),
(85, 'slider_published!', 'Slider Published!', 'স্লাইডার প্রকাশিত!', 'deslizador publicada!', 'المنزلق نشرت!', 'curseur publié!', '滑块公布！'),
(86, 'slider_unpublished!', 'Slider Unpublished!', 'স্লাইডার অপ্রকাশিত!', 'deslizador inédita!', 'المنزلق غير منشورة!', 'curseur inédit!', '滑块未公布！'),
(87, 'page_published!', 'Page Published!', 'পৃষ্ঠা প্রকাশিত!', 'página publicada!', 'الصفحة نشرت!', 'page publiée!', '公布的一页！'),
(88, 'page_unpublished!', 'Page Unpublished!', 'পৃষ্ঠা অপ্রকাশিত!', 'página inédita!', 'الصفحة غير منشورة!', 'Page inédite!', '页未公布！'),
(89, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'নোটিফিকেশন সাউন্ড সক্রিয়!', 'sonido de notificación activado!', 'صوت الإعلام تمكين!', 'notification sonore activé!', '通知声音启用！'),
(90, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'নোটিফিকেশন সাউন্ড অক্ষম!', 'sonido de notificación habilitado!', 'صوت الإعلام تعطيل!', 'notification sonore désactivé!', '通知声音禁用！'),
(91, 'google_login_enabled!', 'Google Login Enabled!', 'গুগল লগ-ইন সক্রিয়!', 'Google entrada activado!', 'جوجل تسجيل الدخول تمكين!', 'google connexion activé!', '谷歌登录启用！'),
(92, 'google_login_disabled!', 'Google Login Disabled!', 'গুগল লগইন অক্ষম!', 'Google entrada habilitado!', 'جوجل تسجيل الدخول تعطيل!', 'google connexion désactivé!', '谷歌登录禁用！'),
(93, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'ফেসবুক লগ-ইন সক্রিয়!', 'Facebook login activado!', 'الفيسبوك تسجيل الدخول تمكين!', 'facebook connexion activé!', 'Facebook登录启用！'),
(94, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'ফেসবুক লগইন অক্ষম!', 'Facebook login habilitado!', 'الفيسبوك تسجيل الدخول تعطيل!', 'facebook connexion désactivé!', 'Facebook登录禁用！'),
(95, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'পেপ্যাল ​​অক্ষম!', 'el pago de PayPal habilitado!', 'الدفع باي بال تعطيل!', 'paiement paypal désactivé!', '支付宝付款禁用！'),
(96, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'পেপাল পেমেন্ট সক্রিয়!', 'el pago de PayPal activado!', 'الدفع باي بال تمكين!', 'le paiement par PayPal activé!', '支付宝付款启用！'),
(97, 'slider_enabled!', 'Slider Enabled!', 'স্লাইডার সক্রিয়!', 'deslizador activado!', 'المنزلق تمكين!', 'curseur activé!', '滑块启用！'),
(98, 'slider_disabled!', 'Slider Disabled!', 'স্লাইডার অক্ষম!', 'deslizador habilitado!', 'المنزلق تعطيل!', 'curseur désactivé!', '滑块禁用！'),
(99, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'নগদ পেমেন্ট সক্রিয়!', 'pago en efectivo activado!', 'الدفع نقدا تمكين!', 'paiement en espèces activé!', '现金支付启用！'),
(100, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'নগদ পেমেন্ট নিষ্ক্রিয়!', 'pago en efectivo habilitado!', 'الدفع نقدا تعطيل!', 'paiement en espèces désactivé!', '现金支付禁用！'),
(101, 'enabled!', 'Enabled!', 'সক্রিয়!', 'habilitado!', 'تمكين!', 'activée!', '启用！'),
(102, 'disabled!', 'Disabled!', 'অক্ষম!', '¡discapacitado!', 'معاق!', 'désactivée!', '禁用！'),
(103, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'ই-মেইলের বিক্রেতা পাঠানো!', 'correo electrónico de notificación enviado al proveedor!', 'إشعار البريد الإلكتروني أرسلت إلى بائع!', 'courriel de notification envoyé au fournisseur!', '通知电子邮件发送给供应商！'),
(104, 'working...', 'Working...', 'কাজ করছে ...', 'trabajando...', 'العمل ...', 'travailler...', '加工...'),
(105, 'no', 'No', 'না', 'no', 'لا', 'non', '没有'),
(106, 'name', 'Name', 'নাম', 'nombre', 'اسم', 'prénom', '名称'),
(107, 'icon', 'Icon', 'আইকন', 'icono', 'أيقونة', 'icône', '图标'),
(108, 'publish', 'Publish', 'প্রকাশ করা', 'publicar', 'نشر', 'publier', '发布'),
(109, 'options', 'Options', 'অপশন', 'opciones', 'خيارات', 'Options', '选项'),
(110, 'language_enabled', 'Language Enabled', 'ভাষা সক্রিয়', 'idioma habilitado', 'لغة سكريبت', 'langue activée', '语言启用'),
(111, 'language_disabled', 'Language Disabled', 'ভাষা অক্ষম', 'idioma desactivado', 'لغة تعطيل', 'langue désactivé', '禁用语'),
(112, 'edit_language_list', 'Edit Language List', 'সম্পাদনা নতুন ভাষাটি তালিকায় আগে', 'lista de idiomas de edición', 'تحرير القائمة لغة', 'modifier la liste des langues', '编辑语言列表'),
(113, 'successfully_edited!', 'Successfully Edited!', 'সফলভাবে সম্পাদিত!', 'editado correctamente!', 'بنجاح تحريرها!', 'édité avec succès!', '编辑成功！'),
(114, 'set_translations', 'Set Translations', 'সেট অনুবাদের', 'traducciones conjunto', 'تعيين ترجمة', 'traductions set', '译文集'),
(115, 'edit_language', 'Edit Language', 'সম্পাদনা ভাষা', 'editar idioma', 'تحرير لغة', 'modifier la langue', '编辑语言'),
(116, 'edit', 'Edit', 'সম্পাদন করা', 'editar', 'تحرير', 'modifier', '编辑'),
(117, 'delete_language', 'Delete Language', 'ভাষা মুছতে', 'eliminar el lenguaje', 'حذف اللغة', 'supprimer la langue', '删除语言'),
(118, 'select_language', 'Select Language', 'ভাষা নির্বাচন কর', 'seleccione el idioma', 'اختر اللغة', 'Choisir la langue', '选择语言'),
(119, 'word', 'Word', 'শব্দ', 'palabra', 'كلمة', 'mot', '字'),
(120, 'translation', 'Translation', 'অনুবাদ', 'traducción', 'ترجمة', 'Traduction', '翻译'),
(121, 'translate', 'Translate', 'অনুবাদ', 'traducir', 'ترجم', 'Traduire', '翻译'),
(122, 'save_all', 'Save All', 'সব সংরক্ষণ করুন', 'salvar a todos', 'احفظ الكل', 'sauver tous', '保存全部'),
(123, 'saving', 'Saving', 'রক্ষা', 'ahorro', 'إنقاذ', 'économie', '保存'),
(124, 'updated!', 'Updated!', 'আপডেট!', '¡actualizado!', 'تحديث!', 'actualisé!', '更新！'),
(125, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'সত্যিই এই শব্দ মুছে ফেলতে চান?', 'De verdad quiere eliminar esta palabra?', 'حقا تريد حذف هذه الكلمة؟', 'voulez vraiment supprimer ce mot?', '真的要删除这个词？'),
(126, 'delete', 'Delete', 'মুছে ফেলা', 'borrar', 'حذف', 'effacer', '删除'),
(127, 'home', 'Home', 'বাড়ি', 'casa', 'الصفحة الرئيسية', 'domicile', '家'),
(128, 'subtotal', 'Subtotal', 'উপমোট', 'total parcial', 'حاصل الجمع', 'Sous-Total', '小计'),
(129, 'close', 'Close', 'ঘনিষ্ঠ', 'cerca', 'أغلق', 'Fermer', '关'),
(130, 'faq', 'Faq', 'অনবরত জিজ্ঞাসিত প্রশ্ন', 'Preguntas más frecuentes', 'التعليمات', 'FAQ', '常问问题'),
(131, 'login', 'Login', 'লগইন', 'iniciar sesión', 'تسجيل الدخول', 's\'identifier', '登录'),
(132, 'registration', 'Registration', 'নিবন্ধন', 'registro', 'التسجيل', 'enregistrement', '注册'),
(133, 'customer_registration', 'Customer Registration', 'গ্রাহক নিবন্ধন', 'registro de clientes', 'تسجيل العملاء', 'enregistrement des clients', '客户注册'),
(134, 'vendor_registration', 'Vendor Registration', 'বিক্রেতার নিবন্ধন', 'la inscripción de proveedores', 'تسجيل البائعين', 'l\'inscription des fournisseurs', '供应商登记'),
(135, 'what_are_you_looking_for', 'What Are You Looking For', 'আপনি কি খুজছেন', 'qué estás buscando', 'عما تبحث', 'que cherchez-vous', '你在找什么'),
(136, 'select', 'Select', 'নির্বাচন করা', 'seleccionar', 'اختار', 'sélectionner', '选择'),
(137, 'all_categories', 'All Categories', 'সব ধরনের', 'todas las categorias', 'جميع الفئات', 'toutes catégories', '所有类别'),
(138, 'product', 'Product', 'পণ্য', 'producto', 'المنتج', 'produit', '产品'),
(139, 'vendor', 'Vendor', 'বিক্রেতা', 'vendedor', 'بائع', 'vendeur', '供应商'),
(140, 'compare', 'Compare', 'তুলনা করা', 'comparar', 'قارن', 'comparer', '比较'),
(141, 'item(s)', 'Item(s)', 'বস্তু (গুলি)', 'artículos)', 'العناصر)', 'articles)', '项目（S）'),
(142, 'homepage', 'Homepage', 'হোমপেজে', 'página principal', 'الصفحة الرئيسية', 'page d\'accueil', '主页'),
(143, 'all_sub_categories', 'All Sub Categories', 'সব সাব আরও', 'todas las subcategorías', 'جميع الفئات الفرعية', 'toutes les sous-catégories', '所有子类'),
(144, 'featured_products', 'Featured Products', 'বৈশিষ্ট্যযুক্ত পণ্য', 'Productos Destacados', 'منتجات مميزة', 'produits présentés', '特色产品'),
(145, 'todays_deal', 'Todays Deal', 'আজকের চুক্তি', 'oferta del día de hoy', 'صفقة اليوم', 'la retransmission de ce deal', '今天的交易'),
(146, 'all_brands', 'All Brands', 'সব ব্র্যান্ডের', 'todas las marcas', 'جميع العلامات التجارية', 'toutes les marques', '所有品牌'),
(147, 'all_vendors', 'All Vendors', 'সব বিক্রেতারা', 'todos los proveedores', 'جميع البائعين', 'tous les fournisseurs', '所有厂商'),
(148, 'blogs', 'Blogs', 'ব্লগ', 'blogs', 'بلوق', 'blogs', '博客'),
(149, 'store_locator', 'Store Locator', 'দোকান লোকেটার', 'localizador de tiendas', 'فروعنا', 'localisateur de magasin', '商店定位器'),
(150, 'contact', 'Contact', 'যোগাযোগ', 'contacto', 'اتصال', 'contact', '联系'),
(151, 'more', 'More', 'অধিক', 'Más', 'أكثر', 'plus', '更多'),
(152, 'latest_products', 'Latest Products', 'সাম্প্রতিক পণ্যসমূহ', 'últimos productos', 'آخر المنتجات', 'derniers produits', '最新产品'),
(153, 'more_categories', 'More Categories', 'আরো বিভাগ', 'más categorías', 'المزيد من التصنيفات', 'plus de catégories', '多个类别'),
(154, 'today\'s_deal', 'Today\'s Deal', 'আজকের চুক্তি', 'La oferta de hoy', 'صفقة اليوم', 'l\'offre d\'aujourd\'hui', '今天的交易'),
(155, 'quick_view', 'Quick View', 'তারাতারি দেখা', 'Vista rápida', 'نظرة سريعة', 'aperçu rapide', '快速浏览'),
(156, 'search', 'Search', 'অনুসন্ধান', 'buscar', 'بحث', 'chercher', '搜索'),
(157, 'latest', 'Latest', 'সর্বশেষ', 'último', 'آخر', 'dernier', '最新'),
(158, 'featured', 'Featured', 'সুগঠনবিশিষ্ট', 'destacado', 'متميز', 'en vedette', '精选'),
(159, 'discount', 'Discount', 'ডিসকাউন্ট', 'descuento', 'خصم', 'remise', '折扣'),
(160, 'add_to_wishlist', 'Add To Wishlist', 'চাহিদাপত্রে যোগ করা', 'añadir a la lista de deseos', 'إضافة إلى سلة', 'ajouter à la liste de souhaits', '加入收藏'),
(161, 'add_to_cart', 'Add To Cart', 'কার্ট যোগ', 'añadir a la cesta', 'أضف إلى السلة', 'ajouter au panier', '添加到购物车'),
(162, 'out_of_stock', 'Out Of Stock', 'স্টক আউট', 'Agotado', 'إنتهى من المخزن', 'rupture de stock', '缺货'),
(163, 'visit', 'Visit', 'দর্শন', 'visitar', 'زيارة', 'visite', '访问'),
(164, 'recently_viewed', 'Recently Viewed', 'সম্প্রতি দেখা', 'visto recientemente', 'شوهدت مؤخرا', 'vu récemment', '最近浏览过的'),
(165, 'most_viewed', 'Most Viewed', 'সর্বাধিক দেখা', 'mas visto', 'الأكثر مشاهدة', 'le plus regardé', '最受关注'),
(166, 'our_available_brands', 'Our Available Brands', 'আমাদের উপলব্ধ ব্রান্ডের', 'nuestras marcas disponibles', 'علاماتنا التجارية المتاحة', 'nos marques disponibles', '我们现有的品牌'),
(167, 'email_address', 'Email Address', 'ই-মেইল ঠিকানা', 'dirección de correo electrónico', 'عنوان البريد الإلكتروني', 'adresse e-mail', '电子邮件地址'),
(168, 'subscribe', 'Subscribe', 'সাবস্ক্রাইব', 'suscribir', 'الاشتراك', 'souscrire', '订阅'),
(169, 'categories', 'Categories', 'বিভাগ', 'categorías', 'الفئات', 'Catégories', '类别'),
(170, 'useful_links', 'Useful Links', 'উপকারী সংজুক', 'Enlaces útiles', 'روابط مفيدة', 'Liens utiles', '有用的链接'),
(171, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'Contáctenos', 'اتصل بنا', 'Contactez nous', '联系我们'),
(172, 'address', 'Address', 'ঠিকানা', 'dirección', 'عنوان', 'adresse', '地址'),
(173, 'phone', 'Phone', 'ফোন', 'teléfono', 'هاتف', 'téléphone', '电话'),
(174, 'website', 'Website', 'ওয়েবসাইট', 'sitio web', 'موقع الكتروني', 'site Internet', '网站'),
(175, 'email', 'Email', 'ই-মেইল', 'correo electrónico', 'البريد الإلكتروني', 'email', '电子邮件'),
(176, 'all_rights_reserved', 'All Rights Reserved', 'সর্বস্বত্ব সংরক্ষিত', 'todos los derechos reservados', 'كل الحقوق محفوظة', 'tous les droits sont réservés', '版权所有'),
(177, 'terms_&_condition', 'Terms & Condition', 'বিধি - নিষেধ এবং শর্তাবলী', 'términos y Condiciones', 'الشروط والأحكام', 'termes et conditions', '条款和条件'),
(178, 'privacy_policy', 'Privacy Policy', 'গোপনীয়তা নীতি', 'política de privacidad', 'سياسة الخصوصية', 'politique de confidentialité', '隐私政策'),
(179, 'product_added_to_cart', 'Product Added To Cart', 'পণ্য কার্ট যোগ', 'Producto añadido al carrito', 'وأضاف المنتج إلى سلة التسوق', 'produit ajouté au panier', '产品加入购物车'),
(180, 'added_to_cart', 'Added To Cart', 'কার্ট যোগ', 'Añadido a la cesta', 'إضافة إلى العربة', 'ajouté au panier', '添加到购物车'),
(181, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'পণ্যের পরিমাণ প্রাপ্যতা অতিক্রম!', 'cantidad de producto excede la disponibilidad!', 'كمية المنتج تتجاوز توافر!', 'quantité de produit dépasse la disponibilité!', '产品数量超过供应！'),
(182, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'পণ্য ইতিমধ্যে কার্ট যোগ করা হয়েছে!', 'producto ya ha añadido a la cesta!', 'وأضاف المنتج بالفعل إلى السلة', 'produit déjà ajouté au panier!', '产品已添加到购物车！'),
(183, 'product_added_to_wishlist', 'Product Added To Wishlist', 'পণ্য লিস্টে যোগ', 'producto que se añade a la lista de deseos', 'وأضاف المنتج إلى سلة', 'Produit ajouté à la liste de souhaits', '产品加入心愿'),
(184, 'wished', 'Wished', 'কাম্য', 'deseado', 'تمنى', 'souhaité', '希望'),
(185, 'wishing..', 'Wishing..', 'তবেই ..', 'deseando..', 'متمنيا ..', 'souhaitant ..', '希望..'),
(186, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'পণ্যের তালিকা থেকে সরানো', 'producto retirado de la lista de deseos', 'المنتج إزالتها من سلة', 'produit retiré de la liste de souhaits', '从产品的愿望清单中移除'),
(187, 'product_added_to_compared', 'Product Added To Compared', 'পণ্য তুলনা যোগ করা', 'producto que se añade a la comparación', 'وأضاف المنتج مقارنة', 'Produit ajouté au rapport', '产品附加值比较'),
(188, 'compared', 'Compared', 'তুলনা', 'comparado', 'مقارنة', 'par rapport', '相比'),
(189, 'working..', 'Working..', 'কাজ ..', 'trabajando..', 'العمل ..', 'travailler..', '加工..'),
(190, 'product_removed_from_compare', 'Product Removed From Compare', 'পণ্য তুলনা থেকে সরানো', 'producto retirado de comparar', 'منتج إزالة من المقارنة', 'produit retiré de comparer', '从对比产品中删除'),
(191, 'compare_category_full', 'Compare Category Full', 'বিভাগ পূর্ণ তুলনা', 'comparar la categoría completa', 'مقارنة فئة كاملة', 'comparer la catégorie complète', '比较全品类'),
(192, 'product_already_added_to_compare', 'Product Already Added To Compare', 'পণ্য ইতিমধ্যে তুলনা যোগ করা', 'en el producto ya añadió comparar', 'وأضاف المنتج بالفعل للمقارنة', 'produit déjà ajouté à comparer', '产品已添加到比较'),
(193, 'product_rated_successfully', 'Product Rated Successfully', 'পণ্য সফলভাবে রেট', 'producto puntuado', 'المنتج تصنيفا بنجاح', 'produit évalué avec succès', '产品额定成功'),
(194, 'product_rating_failed', 'Product Rating Failed', 'পণ্য রেটিং ব্যর্থ', 'Puntuación producto falló', 'فشل تصنيف المنتج', 'Evaluation du produit a échoué', '产品等级不合格'),
(195, 'you_already_rated_this_product', 'You Already Rated This Product', 'আপনি ইতিমধ্যে এই পণ্য রেট', 'pero ya has puntuado este producto', 'كنت تصنيفا بالفعل هذا المنتج', 'vous avez déjà évalué ce produit', '您已经评价过此产品'),
(196, 'you_already_subscribed', 'You Already Subscribed', 'আপনি ইতিমধ্যে সাবস্ক্রাইব করা', 'ya suscrito', 'كنت قد اشتركت بالفعل', 'vous êtes déjà inscrit', '你已经订阅'),
(197, 'you_subscribed_successfully', 'You Subscribed Successfully', 'আপনি সফলভাবে সাবস্ক্রাইব', 'se ha suscrito con éxito', 'كنت قد اشتركت بنجاح', 'vous avez souscrit avec succès', '你成功订阅'),
(198, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'আপনি ইতিমধ্যে এই ব্রাউজার থেকে তিনবার সাবস্ক্রাইব করা', 'ya suscrito por tres veces de este navegador', 'كنت قد اشتركت بالفعل ثلاث مرات من هذا المتصفح', 'vous êtes déjà inscrit trois fois à partir de ce navigateur', '你已经订阅三次从这个浏览器'),
(199, 'logging_in..', 'Logging In..', 'লগ-ইন ..', 'iniciar sesión..', 'تسجيل الدخول..', 'Se connecter..', '在登录..'),
(200, 'you_logged_in_successfully', 'You Logged In Successfully', 'আপনি সফলভাবে লগ', 'inició la sesión con éxito', 'قمت بتسجيل الدخول بنجاح', 'vous vous êtes connecté avec succès', '你登录成功'),
(201, 'login_failed!_try_again!', 'Login Failed! Try Again!', 'লগইন ব্যর্থ! </font><font>আবার চেষ্টা কর!', '¡error de inicio de sesion! </font><font>¡Inténtalo de nuevo!', 'فشل تسجيل الدخول! </font><font>حاول ثانية!', 'échec de la connexion! </font><font>réessayer!', '登录失败！</font><font>再试一次！'),
(202, 'you_registered_successfully', 'You Registered Successfully', 'আপনি সাফল্যের সাথে নিবন্ধিত', 'se registró con éxito', 'قمت بتسجيل بنجاح', 'vous avez enregistré avec succès', '你注册成功'),
(203, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', 'রেজিস্ট্রেশন ব্যর্থ হয়েছে! </font><font>আবার চেষ্টা কর!', '¡registro fallido! </font><font>¡Inténtalo de nuevo!', 'فشل في التسجيل! </font><font>حاول ثانية!', 'échec de l\'enregistrement! </font><font>réessayer!', '注册失败！</font><font>再试一次！'),
(204, 'submitting..', 'Submitting..', 'জমা ..', 'sumisión..', 'تقديم..', 'soumission..', '提交..'),
(205, 'email_sent_successfully', 'Email Sent Successfully', 'ইমেল সফলভাবে পাঠানো', 'correo electrónico enviado con éxito', 'ارسال البريد الالكتروني بنجاح', 'E-mail envoyé avec succès', '电子邮件发送成功'),
(206, 'email_does_not_exist!', 'Email Does Not Exist!', 'ই-মেইল অস্তিত্ব নেই!', 'correo electrónico no existe!', 'البريد الإلكتروني غير موجود!', 'email n\'existe pas!', '电子邮件不存在！'),
(207, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'ই-মেইল পাঠানো ব্যর্থ! </font><font>আবার চেষ্টা কর', 'correo electrónico no ha podido enviar! </font><font>Inténtalo de nuevo', 'إرسال البريد الإلكتروني فشل! </font><font>حاول ثانية', 'email envoi a échoué! </font><font>réessayer', '电子邮件发送失败！</font><font>再试一次'),
(208, 'logging_in', 'Logging In', 'লগ-ইন', 'iniciar sesión', 'تسجيل الدخول', 'Se connecter', '在登录'),
(209, 'adding_to_cart..', 'Adding To Cart..', 'কার্ট যোগ ..', 'añadir a la cesta ..', 'مشيرا إلى السلة ..', 'd\'ajouter au panier ..', '添加到购物车..'),
(210, 'product_removed_from_cart', 'Product Removed From Cart', 'পণ্য কার্ট থেকে সরানো', 'producto retirado de la compra', 'المنتج إزالتها من سلة', 'produit retiré du panier', '从产品的购物车中移除'),
(211, 'the_field_is_required', 'The Field Is Required', 'ক্ষেত্র প্রয়োজন বোধ করা হয়', 'El campo es obligatorio', 'مطلوب مجال', 'le champ est obligatoire', '现场要求'),
(212, 'enter_a_valid_email_address', 'Enter A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা লিখুন', 'Introduzca una dirección de correo electrónico válida', 'أدخل عنوان بريد إلكتروني صالح', 'Entrez une adresse mail valide', '输入一个有效的电子邮件地址'),
(213, 'applying..', 'Applying..', 'আবেদন ..', 'aplicar ..', 'تطبيق ..', 'application ..', '应用..'),
(214, 'coupon_not_valid', 'Coupon Not Valid', 'কুপন বৈধ নয়', 'cupón no válido', 'القسيمة غير صالحة', 'coupon pas valide', '优惠券无效'),
(215, 'coupon_discount_successful', 'Coupon Discount Successful', 'কুপন ডিসকাউন্ট সফল', 'cupón de descuento con éxito', 'قسيمة خصم ناجحة', 'coupon de réduction réussie', '优惠券折扣成功'),
(216, 'favored', 'Favored', 'বিশেষ সুবিধাপ্রাপ্ত', 'favorecido', 'مفضل', 'favorisé', '青睐'),
(217, 'successful_login', 'Successful Login', 'সফল অনুপ্রবেশ', 'acceso exitoso', 'نجاح تسجيل الدخول', 'Connexion réussie', '登录成功'),
(218, 'login_failed', 'Login Failed', 'লগইন ব্যর্থ', 'error de inicio de sesion', 'فشل تسجيل الدخول', 'échec de la connexion', '登录失败'),
(219, 'sign_in_to_your_account', 'Sign In To Your Account', 'আপনার অ্যাকাউন্টে সাইন ইন করুন', 'Iniciar sesión en su cuenta', 'تسجيل الدخول إلى حسابك', 'Connectez-vous à votre compte', '登录到您的帐户'),
(220, 'password', 'Password', 'পাসওয়ার্ড', 'contraseña', 'كلمه السر', 'mot de passe', '密码'),
(221, 'forget_password', 'Forget Password', 'পাসওয়ার্ড ভুলে গেছেন', 'contraseña olvidada', 'نسيت كلمة', 'mot de passe oublié', '忘记密码'),
(222, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'ই-মেইল নতুন পাসওয়ার্ড দিয়ে ডেকে পাঠিয়েছি!', 'correo electrónico enviado con la nueva contraseña!', 'تم إرسال رسالة إلكترونية مع كلمة مرور جديدة!', 'email envoyé avec le nouveau mot de passe!', '电子邮件与新密码发送！'),
(223, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছেন', 'Se te olvidó tu contraseña', 'هل نسيت كلمة المرور', 'mot de passe oublié', '忘记密码'),
(224, 'sign_in', 'Sign In', 'প্রবেশ কর', 'registrarse', 'تسجيل الدخول', 'se connecter', '签到'),
(225, 'this_field_is_required', 'This Field Is Required', 'ঘরটি অবশ্যই পূরণ করতে হবে', 'este campo es requerido', 'هذه الخانة مطلوبه', 'Ce champ est requis', '这是必填栏'),
(226, 'signing_in...', 'Signing In...', 'সাইন ইন...', 'iniciando sesión...', 'تسجيل الدخول...', 'Connectez-vous...', '登录中...'),
(227, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'আপনার ই-মেইল পাঠানো নতুন পাসওয়ার্ড', 'nueva contraseña enviada a su correo electrónico', 'كلمة المرور الجديدة إرسالها إلى البريد الإلكتروني الخاص بك', 'nouveau mot de passe envoyé à votre email', '发送到您的邮箱的新密码'),
(228, 'login_failed!', 'Login Failed!', 'লগইন ব্যর্থ!', '¡error de inicio de sesion!', 'فشل تسجيل الدخول!', 'échec de la connexion!', '登录失败！'),
(229, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'ভুল ই-মেইল ঠিকানা! </font><font>আবার চেষ্টা কর', '¡Dirección de correo errónea! </font><font>Inténtalo de nuevo', 'الخطأ عنوان البريد الإلكتروني! </font><font>حاول ثانية', 'Adresse e-mail mal! </font><font>réessayer', '错误的电子邮件地址！</font><font>再试一次'),
(230, 'login_successful!', 'Login Successful!', 'সফল লগইন!', '¡Inicio de sesión correcto!', 'تم الدخول بنجاح!', 'connexion réussie!', '登陆成功！'),
(231, 'SUCCESS!', 'SUCCESS!', 'সাফল্য!', '¡ÉXITO!', 'نجاح!', 'LE SUCCÈS!', '成功！'),
(232, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট করুন', 'restablecer la contraseña', 'اعادة تعيين كلمة السر', 'réinitialiser le mot de passe', '重设密码'),
(233, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'অনুমোদন না অ্যাকাউন্ট. </font><font>অনুমোদনের জন্য অপেক্ষা করুন.', 'cuenta de que no esté aprobado. </font><font>esperar la aprobación.', 'حساب غير معتمدة. </font><font>الانتظار للموافقة عليها.', 'compte pas approuvé. </font><font>attendre l\'approbation.', '占未获批准。</font><font>等待批准。'),
(234, '24_hours_stock', '24 Hours Stock', '24 ঘণ্টা স্টক', '24 horas de stock', 'الأسهم 24 ساعة', '24 heures Stock', '24小时股票'),
(235, '24_hours_sale', '24 Hours Sale', '24 ঘণ্টা বিক্রয়', '24 horas venta', '24 ساعة بيع', '24 heures vente', '24小时销售'),
(236, '24_hours_destroy', '24 Hours Destroy', '24 ঘণ্টা ধ্বংস', '24 horas destruyen', '24 ساعة تدمر', '24 heures détruire', '24小时破坏'),
(237, 'total_vendors', 'Total Vendors', 'মোট বিক্রেতারা', 'vendedores totales', 'مجموع الباعة', 'vendeurs au total', '总供应商'),
(238, 'pending_vendors', 'Pending Vendors', 'বিচারাধীন বিক্রেতারা', 'proveedores pendientes', 'الباعة في انتظار', 'fournisseurs en attente', '未决的供应商'),
(239, 'vendor_stattistics', 'Vendor Stattistics', 'বিক্রেতার stattistics', 'stattistics proveedores', 'stattistics بائع', 'stattistics fournisseurs', '供应商stattistics'),
(240, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'বিভাগ জ্ঞানী মাসিক স্টক', 'categoría de saldos mensuales sabia', 'فئة الأسهم الشهري الحكمة', 'catégorie encours mensuel sage', '明智类股票每月'),
(241, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'বিভাগ জ্ঞানী মাসিক ধ্বংস', 'categoría sabia destruir mensual', 'فئة الحكمة تدمير شهريا', 'catégorie sage mensuel détruire', '类别明智每月破坏'),
(242, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'বিভাগ জ্ঞানী মাসিক বিক্রয়', 'categoría de venta mensual sabia', 'الفئة بيع الشهري الحكمة', 'catégorie vente mensuelle sage', '类别明智每月销售'),
(243, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'বিভাগ জ্ঞানী মাসিক গ্র্যান্ড মুনাফা', 'categoría sabia gran beneficio mensual', 'فئة الحكمة الربح الكبير الشهري', 'catégorie sage mensuel grande profit', '明智类盛大每月利润'),
(244, 'cost', 'Cost', 'মূল্য', 'costo', 'كلفة', 'Coût', '成本'),
(245, 'value', 'Value', 'মূল্য', 'valor', 'القيمة', 'valeur', '值'),
(246, 'loss', 'Loss', 'ক্ষতি', 'pérdida', 'خسارة', 'perte', '失利'),
(247, 'profit', 'Profit', 'মুনাফা', 'lucro', 'ربح', 'le profit', '利润'),
(248, 'manage_categories_(_physical_product_)', 'Manage Categories ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) পরিচালনা', 'administrar las categorías de productos (física)', 'إدارة الفئات (منتج مادي)', 'gérer des catégories (produit physique)', '管理类（产品实物）'),
(249, 'add_category_(_physical_product_)', 'Add Category ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) যোগ', 'Añadir categoría (producto físico)', 'إضافة فئة (منتج مادي)', 'ajouter la catégorie (produit physique)', '添加类别（产品实物）'),
(250, 'create_category', 'Create Category', 'বিভাগ তৈরি', 'crear la categoría', 'إنشاء فئة', 'créer la catégorie', '创建类别'),
(251, 'banner', 'Banner', 'নিশান', 'bandera', 'راية', 'bannière', '旗帜'),
(252, 'edit_category_(_physical_product_)', 'Edit Category ( Physical Product )', 'সম্পাদনা বিভাগ (শারীরিক পণ্য)', 'editar categoría (producto físico)', 'تحرير فئة (منتج مادي)', 'modifier la catégorie (produit physique)', '编辑类（实物产品）'),
(253, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'সত্যিই এই মুছে ফেলতে চান?', 'Realmente desea eliminar este?', 'حقا تريد حذف هذا؟', 'voulez vraiment supprimer ce?', '真的要删除吗？'),
(254, 'category_name', 'Category Name', 'বিভাগ নাম', 'nombre de la categoría', 'اسم الفئة', 'Nom de catégorie', '类别名称'),
(255, 'category_banner', 'Category Banner', 'বিভাগ ব্যানার', 'Categoría bandera', 'فئة راية', 'catégorie bannière', '类别旗帜'),
(256, 'select_category_banner', 'Select Category Banner', 'বিভাগ নির্বাচন করুন ব্যানার', 'seleccione la categoría de la bandera', 'حدد فئة راية', 'sélectionnez la catégorie bannière', '选择类别旗帜'),
(257, 'manage_brands_(_physical_product_)', 'Manage Brands ( Physical Product )', 'ব্রান্ডের (শারীরিক পণ্য) পরিচালনা', 'gestionar marcas de productos (física)', 'إدارة العلامات التجارية (منتج مادي)', 'gérer les marques (produit physique)', '管理品牌（产品实物）'),
(258, 'add_brand_(_physical_product_)', 'Add Brand ( Physical Product )', 'ব্র্যান্ড (শারীরিক পণ্য) যোগ', 'añadir la marca (producto físico)', 'إضافة العلامة التجارية (منتج مادي)', 'ajouter la marque (produit physique)', '加上品牌（产品实物）'),
(259, 'create_brand', 'Create Brand', 'ব্র্যান্ড তৈরি', 'crear la marca', 'إنشاء العلامة التجارية', 'créer la marque', '创造品牌'),
(260, 'edit_brand_(_physical_product_)', 'Edit Brand ( Physical Product )', 'সম্পাদনা ব্র্যান্ড (শারীরিক পণ্য)', 'editar marca (producto físico)', 'تحرير العلامة التجارية (منتج مادي)', 'modifier la marque (produit physique)', '编辑品牌（产品实物）'),
(261, 'brand', 'Brand', 'তরবার', 'marca', 'علامة تجارية', 'marque', '牌'),
(262, 'brand_name', 'Brand Name', 'পরিচিতিমুলক নাম', 'nombre de la marca', 'اسم العلامة التجارية', 'marque', '品牌'),
(263, 'brand_logo', 'Brand Logo', 'ব্র্যান্ড লোগো', 'logotipo', 'شعار العلامة التجارية', 'logo de la marque', '品牌标志'),
(264, 'select_brand_logo', 'Select Brand Logo', 'নির্বাচন ব্র্যান্ড লোগো', 'seleccione logotipo de la marca', 'حدد شعار العلامة التجارية', 'sélectionnez la marque logo', '选择品牌标志'),
(265, 'manage_sub_categories_(_physical_product_)', 'Manage Sub Categories ( Physical Product )', 'সাব আরও পরিচালনা (শারীরিক পণ্য)', 'administrar las categorías sub (producto físico)', 'إدارة الفئات الفرعية (منتج مادي)', 'gérer les sous-catégories (produit physique)', '管理子类别（产品实物）'),
(266, 'add_sub-category_(_physical_product_)', 'Add Sub-category ( Physical Product )', 'উপ-বিভাগ (শারীরিক পণ্য) যোগ', 'añadir sub-categoría (producto físico)', 'إضافة فئة فرعية (منتج مادي)', 'ajouter des sous-catégories (produit physique)', '添加子类（实物产品）'),
(267, 'create_sub_category', 'Create Sub Category', 'সাব বিভাগ তৈরি', 'crear sub-categoría', 'إنشاء فئة فرعية', 'créer la sous catégorie', '创建子类别'),
(268, 'edit_sub-category_(_physical_product_)', 'Edit Sub-category ( Physical Product )', 'সম্পাদনা উপ-বিভাগ (শারীরিক পণ্য)', 'editar subcategoría (producto físico)', 'تعديل فئة فرعية (منتج مادي)', 'modifier la sous-catégorie (produit physique)', '编辑子类（实物产品）'),
(269, 'sub_category', 'Sub Category', 'সাব বিভাগ', 'subcategoría', 'الفئة الفرعية', 'sous catégorie', '子分类'),
(270, 'sub-category_name', 'Sub-category Name', 'উপ-বিভাগ নাম', 'Nombre de subcategoría', 'اسم الفئة الفرعية', 'nom de sous-catégorie', '子类别名称'),
(271, 'sub-category_banner', 'Sub-category Banner', 'উপ-বিভাগ ব্যানার', 'subcategoría bandera', 'الفئة الفرعية راية', 'sous-catégorie bannière', '子类的旗帜'),
(272, 'select_sub-category_banner', 'Select Sub-category Banner', 'নির্বাচন উপ-বিভাগ ব্যানার', 'seleccionar una subcategoría de la bandera', 'حدد فئة فرعية لافتة', 'sélectionner la sous-catégorie bannière', '选择子类的旗帜'),
(273, 'manage_product_stock', 'Manage Product Stock', 'পণ্য স্টক পরিচালনা', 'gestionar stock de productos', 'إدارة المخزون المنتج', 'gérer des stocks de produits', '管理产品库存'),
(274, 'destroy_product_entry', 'Destroy Product Entry', 'পণ্য এন্ট্রি ধ্বংস', 'destruir entrada de producto', 'تدمير دخول المنتج', 'détruire l\'entrée du produit', '销毁产品入境'),
(275, 'add_stock_entry_taken!', 'Add Stock Entry Taken!', 'যোগ স্টক এন্ট্রি নেয়া!', 'añadir la entrada Stock tomada!', 'إضافة إدخال الأوراق المالية اتخذت!', 'ajouter l\'entrée en stock pris!', '采取增加股票入门！'),
(276, 'add_product_stock', 'Add Product Stock', 'পণ্য স্টক যোগ', 'añadir el producto Stock', 'إضافة الأسهم المنتج', 'ajouter des stocks de produits', '增加产品库存'),
(277, 'destroy_entry_taken!', 'Destroy Entry Taken!', 'ধ্বংস এন্ট্রি নেয়া!', 'destruir entrada tomada!', 'تدمير دخول اتخذت!', 'détruire l\'entrée prise!', '摧毁采取入口！'),
(278, 'create_stock', 'Create Stock', 'স্টক তৈরি', 'crear stock', 'إنشاء الاسهم', 'créer un stock', '创建库存'),
(279, 'ID', 'ID', 'আইডি', 'CARNÉ DE IDENTIDAD', 'هوية شخصية', 'ID', 'ID'),
(280, 'product_title', 'Product Title', 'পণ্য শিরোনাম', 'título del producto', 'عنوان المنتج', 'titre du produit', '产品称号'),
(281, 'entry_type', 'Entry Type', 'এন্ট্রি টাইপ', 'tipo de entrada', 'نوع دخول', 'Type d\'entrée', '条目类型'),
(282, 'quantity', 'Quantity', 'পরিমাণ', 'cantidad', 'كمية', 'Quantité', '数量'),
(283, 'note', 'Note', 'বিঃদ্রঃ', 'Nota', 'ملاحظة', 'Remarque', '注意'),
(284, 'reduced_quantity_will_be_added.', 'Reduced Quantity Will Be Added.', 'কমে পরিমাণ যোগ করা হবে.', 'se añadió una cantidad reducida.', 'وستضاف خفض كمية.', 'quantité réduite sera ajoutée.', '减少量将增加。'),
(285, 'added_quantity_will_be_reduced.', 'Added Quantity Will Be Reduced.', 'যোগ পরিমাণ হ্রাস করা হবে.', 'cantidad añadida se reducirá.', 'وسيتم خفض الكمية المضافة.', 'quantité ajoutée sera réduite.', '添加量将减少。'),
(286, 'rate', 'Rate', 'হার', 'tarifa', 'معدل', 'taux', '率'),
(287, 'total', 'Total', 'মোট', 'total', 'مجموع', 'total', '总'),
(288, 'reason_note', 'Reason Note', 'কারণ নোট', 'razón por la nota', 'السبب مذكرة', 'raison Note', '原因笔记'),
(289, 'monetary_loss', 'Monetary Loss', 'আর্থিক ক্ষতি', 'pérdida monetaria', 'فقدان النقدية', 'perte monétaire', '金钱上的损失'),
(290, 'manage_categories_(_digital_product_)', 'Manage Categories ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) পরিচালনা', 'administrar las categorías de productos (digital)', 'إدارة الفئات (المنتجات الرقمية)', 'gérer des catégories (produits numériques)', '管理类别（数码产品）'),
(291, 'add_category_(_digital_product_)', 'Add Category ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) যোগ', 'Añadir categoría (producto digital)', 'إضافة فئة (المنتج الرقمي)', 'ajouter la catégorie (produit numérique)', '添加类别（数码产品）'),
(292, 'edit_category_(_digital_product_)', 'Edit Category ( Digital Product )', 'সম্পাদনা বিভাগ (ডিজিটাল পণ্য)', 'editar categoría (producto digital)', 'تحرير فئة (المنتج الرقمي)', 'modifier catégorie (produits numériques)', '编辑类别（数码产品）'),
(293, 'manage_sub_categories_(_digital_product_)', 'Manage Sub Categories ( Digital Product )', 'সাব আরও পরিচালনা (ডিজিটাল পণ্য)', 'administrar las categorías sub (producto digital)', 'إدارة الفئات الفرعية (المنتجات الرقمية)', 'gérer les sous-catégories (produits numériques)', '管理子类别（数码产品）'),
(294, 'add_sub-category_(_digital_product_)', 'Add Sub-category ( Digital Product )', 'উপ-বিভাগ (ডিজিটাল পণ্য) যোগ', 'añadir sub-categoría (producto digital)', 'إضافة فئة فرعية (المنتج الرقمي)', 'ajouter des sous-catégories (produits numériques)', '添加子类（数码产品）'),
(295, 'edit_sub-category_(_digital_product_)', 'Edit Sub-category ( Digital Product )', 'সম্পাদনা উপ-বিভাগ (ডিজিটাল পণ্য)', 'editar subcategoría (producto digital)', 'تعديل فئة فرعية (المنتج الرقمي)', 'modifier la sous-catégorie (produit numérique)', '编辑子类（数码产品）'),
(296, 'manage_product_(_digital_)', 'Manage Product ( Digital )', 'পণ্য (ডিজিটাল) পরিচালনা', 'gestionar producto (digital)', 'إدارة المنتجات (رقمي)', 'gérer le produit (numérique)', '管理产品（数码）'),
(297, 'add_product', 'Add Product', 'পণ্য যোগ করুন', 'añadir producto', 'إضافة منتج', 'ajouter le produit', '增加产品'),
(298, 'create_product', 'Create Product', 'পণ্য তৈরি', 'crear productos', 'إنشاء المنتج', 'créer un produit', '创建产品'),
(299, 'back_to_product_list', 'Back To Product List', 'ফিরে পণ্যের তালিকাতে', 'Volver a la lista de productos', 'العودة إلى قائمة المنتجات', 'Retour à la liste des produits', '回到产品列表'),
(300, 'download_failed!', 'Download Failed!', 'ডাউনলোড ব্যর্থ হয়েছে!', '¡Descarga fracasó!', 'التحميل فشل!', 'Échec du téléchargement!', '下载失败！'),
(301, 'image', 'Image', 'ভাবমূর্তি', 'imagen', 'صورة', 'image', '图片'),
(302, 'title', 'Title', 'খেতাব', 'título', 'عنوان', 'Titre', '标题'),
(303, 'view_product', 'View Product', 'দৃশ্য পণ্য', 'Ver el producto', 'المنتج رأي', 'produit Aperçu', '查看产品'),
(304, 'successfully_viewed!', 'Successfully Viewed!', 'সফলভাবে দেখা!', 'éxito vistos!', 'ينظر بنجاح!', 'vu avec succès!', '成功查看！'),
(305, 'view', 'View', 'দৃশ্য', 'ver', 'رأي', 'vue', '视图'),
(306, 'view_discount', 'View Discount', 'দৃশ্য ছাড়', 'Ver descuento', 'خصم عرض', 'vue rabais', '查看优惠'),
(307, 'viewing_discount!', 'Viewing Discount!', 'ছাড় দেখছেন!', 'visualización de descuento!', 'عرض خصم!', 'visualisation de réduction!', '查看优惠！'),
(308, 'download', 'Download', 'ডাউনলোড', 'descargar', 'تحميل', 'Télécharger', '下载'),
(309, 'edit_product_(_digital_product_)', 'Edit Product ( Digital Product )', 'সম্পাদনা পণ্য (ডিজিটাল পণ্য)', 'edición producto (producto digital)', 'تحرير المنتج (المنتجات الرقمية)', 'produit d\'édition (produits numériques)', '编辑产品（数码产品）'),
(310, 'manage_sale', 'Manage Sale', 'বিক্রয় ও পরিচালনা', 'gestionar la venta', 'إدارة بيع', 'gérer la vente', '销售管理'),
(311, 'sale_code', 'Sale Code', 'বিক্রয় কোড', 'venta código', 'كود بيع', 'Code de vente', '销售代码'),
(312, 'buyer', 'Buyer', 'ক্রেতা', 'comprador', 'مشتر', 'acheteur', '买方'),
(313, 'date', 'Date', 'তারিখ', 'fecha', 'تاريخ', 'date', '日期'),
(314, 'delivery_status', 'Delivery Status', 'প্রসবের অবস্থা', 'estado de entrega', 'حالة التسليم', 'statut de livraison', '邮寄状态'),
(315, 'payment_status', 'Payment Status', 'লেনদেনের অবস্থা', 'estado de pago', 'حالة السداد', 'statut de paiement', '支付状态'),
(316, 'admin', 'Admin', 'অ্যাডমিন', 'administración', 'مشرف', 'administrateur', '管理员'),
(317, 'full_invoice', 'Full Invoice', 'পূর্ণ চালান', 'factura completa', 'فاتورة كاملة', 'pleine facture', '全额发票'),
(318, 'delivery_payment', 'Delivery Payment', 'ডেলিভারি পেমেন্ট', 'el pago de entrega', 'دفع التسليم', 'paiement à la livraison', '货到付款'),
(319, 'sales', 'Sales', 'বিক্রয়', 'ventas', 'مبيعات', 'Ventes', '销售'),
(320, 'manage_coupons', 'Manage Coupons', 'কুপন পরিচালনা', 'administrar cupones', 'إدارة القسائم', 'gérer des coupons', '管理优惠券'),
(321, 'add_coupon', 'Add Coupon', 'কুপন যোগ', 'añadir cupón', 'إضافة قسيمة', 'ajouter coupon', '添加优惠券'),
(322, 'create_coupon', 'Create Coupon', 'কুপন তৈরি', 'crear cupón', 'إنشاء قسيمة', 'créer coupon', '创建优惠券'),
(323, 'code', 'Code', 'কোড', 'código', 'رمز', 'code', '码'),
(324, 'added_by', 'Added By', 'দ্বারা যোগ করা', 'añadido por', 'أضيفت من قبل', 'ajouté par', '通过添加'),
(325, 'status', 'Status', 'অবস্থা', 'estado', 'الحالة', 'statut', '状态'),
(326, 'coupon', 'Coupon', 'কুপন', 'cupón', 'كوبون', 'coupon', '优惠券'),
(327, 'manage_ticket', 'Manage Ticket', 'টিকেট পরিচালনা', 'gestionar la compra de entradas', 'إدارة تذكرة', 'gérer billet', '管理票'),
(328, 'back_to_ticket_list', 'Back To Ticket List', 'ফিরে টিকেট লিস্টে', 'volver a la lista de entradas', 'العودة إلى قائمة تذكرة', 'Retour à la liste de billets', '回票名单'),
(329, 'from', 'From', 'থেকে', 'de', 'من عند', 'de', '从'),
(330, 'subject', 'Subject', 'বিষয়', 'tema', 'موضوع', 'assujettir', '学科'),
(331, 'view_profile', 'View Profile', 'প্রোফাইল দেখুন', 'ver perfil', 'عرض الصفحة الشخصية', 'Voir le profil', '查看资料'),
(332, 'new', 'New', 'নতুন', 'nuevo', 'جديد', 'Nouveau', '新'),
(333, 'view_contact_ticket', 'View Contact Ticket', 'দৃশ্য যোগাযোগের টিকিট', 'billete de vista de contactos', 'تذكرة رأي اتصال', 'billet vue de contact', '查看联系人票'),
(334, 'view_ticket', 'View Ticket', 'দৃশ্য টিকিট', 'Ver Ticket', 'عرض تذكرة', 'vue billet', '查看门票'),
(335, 'product_sale_comparison', 'Product Sale Comparison', 'পণ্য বিক্রয় তুলনা', 'Comparación de la venta de productos', 'مقارنة بيع المنتج', 'la comparaison des produits de la vente', '产品销售比较'),
(336, 'product_sale_comparison_report', 'Product Sale Comparison Report', 'পণ্য বিক্রয় তুলনা প্রতিবেদন', 'producto informe de comparación venta', 'المنتج بيع التقرير مقارنة', 'vente de produits rapport de comparaison', '产品销售比较报告'),
(337, 'manage_stock_report', 'Manage Stock Report', 'স্টক রিপোর্ট পরিচালনা', 'gestionar informe de existencias', 'تقرير إدارة المخزون', 'gérer rapport sur les stocks', '管理库存报告'),
(338, 'get_stock_report', 'Get Stock Report', 'স্টক রিপোর্ট পেতে', 'obtener informe de existencias', 'الحصول على تقرير المخزون', 'obtenir rapport sur les stocks', '获得股票报告'),
(339, 'product_wishes_report', 'Product Wishes Report', 'পণ্য রিপোর্ট শুভেচ্ছা', 'producto desea informe', 'يرغب المنتج تقرير', 'produit souhaite rapport', '产品希望报告'),
(340, 'manage_vendors', 'Manage Vendors', 'বিক্রেতারা পরিচালনা', 'manejar a los proveedores', 'إدارة البائعين', 'gérer les fournisseurs', '供应商管理'),
(341, 'display_name', 'Display Name', 'প্রদর্শন নাম', 'mostrar nombre', 'اسم العرض', 'Afficher un nom', '显示名称'),
(342, 'vendor_approval', 'Vendor Approval', 'বিক্রেতার অনুমোদন', 'la aprobación del proveedor', 'موافقة البائع', 'l\'approbation des fournisseurs', '供应商认可'),
(343, 'approval', 'Approval', 'অনুমোদন', 'aprobación', 'موافقة', 'approbation', '赞同'),
(344, 'pay_vendor', 'Pay Vendor', 'বেতন বিক্রেতা', 'proveedor de pago', 'بائع الأجر', 'salaire fournisseur', '付供应商'),
(345, 'pay', 'Pay', 'বেতন', 'paga', 'دفع', 'Payer', '工资'),
(346, 'e-mail', 'E-mail', 'ই-মেইল', 'e-mail', 'البريد الإلكتروني', 'email', '电子邮件'),
(347, 'manage_vendor_payments', 'Manage Vendor Payments', 'বিক্রেতা পেমেন্ট পরিচালনা', 'gestionar los pagos a proveedores', 'إدارة مدفوعات البائعين', 'gérer les paiements des fournisseurs', '管理供应商付款'),
(348, 'amount', 'Amount', 'পরিমাণ', 'cantidad', 'كمية', 'montant', '量'),
(349, 'upgraded_vendor_package', 'Upgraded Vendor Package', 'আপগ্রেড বিক্রেতা প্যাকেজ', 'paquete de proveedor actualizado', 'حزمة بائع ترقية', 'paquet fournisseur amélioré', '升级包的供应商'),
(350, 'view_payment_details', 'View Payment Details', 'দৃশ্য পেমেন্ট বিবরণ', 'Más información del pago', 'عرض تفاصيل الدفع', 'afficher les détails de paiement', '查看付款细节'),
(351, 'check_details', 'Check Details', 'বিস্তারিত পরীক্ষা', 'comprobar los detalles', 'التحقق من التفاصيل', 'vérifier les détails', '查看详细信息'),
(352, 'membership_payments', 'Membership Payments', 'সদস্যপদ পেমেন্ট', 'pagos de membresía', 'مدفوعات عضوية', 'paiements d\'adhésion', '会员费'),
(353, 'upgraded_membership', 'Upgraded Membership', 'আপগ্রেড সদস্য', 'membresía actualizado', 'عضوية ترقية', 'adhésion améliorée', '升级会员'),
(354, 'manage_vendor_package', 'Manage Vendor Package', 'বিক্রেতা প্যাকেজ পরিচালনা', 'gestionar paquete de proveedor', 'إدارة حزمة بائع', 'gérer ensemble des fournisseurs', '管理供应商封装'),
(355, 'add_vendor_package', 'Add Vendor Package', 'বিক্রেতা প্যাকেজ যোগ', 'añadir paquete de proveedor', 'إضافة حزمة بائع', 'ajouter package de fournisseur', '加上厂商包'),
(356, 'create_vendor_package', 'Create Vendor Package', 'বিক্রেতা প্যাকেজ তৈরি', 'crear paquetes de distribuciones', 'إنشاء حزمة بائع', 'créer un paquet de fournisseur', '创建包的供应商'),
(357, 'seal', 'Seal', 'সীল', 'sello', 'ختم', 'joint', '密封'),
(358, 'price', 'Price', 'মূল্য', 'precio', 'السعر', 'prix', '价钱'),
(359, 'for', 'For', 'জন্য', 'para', 'إلى', 'pour', '对于'),
(360, 'lifetime', 'Lifetime', 'জীবনকাল', 'toda la vida', 'أوقات الحياة', 'durée de vie', '一生'),
(361, 'edit_vendor_package', 'Edit Vendor Package', 'সম্পাদনা বিক্রেতা প্যাকেজ', 'editar paquete de proveedor', 'تحرير حزمة بائع', 'package de fournisseur d\'édition', '编辑供应商封装'),
(362, 'days', 'Days', 'দিন', 'días', 'أيام', 'journées', '天'),
(363, 'membership', 'Membership', 'সদস্যতা', 'afiliación', 'عضوية', 'adhésion', '籍'),
(364, 'manage_product_(_physical_)', 'Manage Product ( Physical )', 'পণ্য পরিচালনা (শারীরিক)', 'gestionar producto (física)', 'إدارة المنتجات (المادية)', 'gérer le produit (physique)', '管理产品（物理）'),
(365, 'current_quantity', 'Current Quantity', 'বর্তমান পরিমাণ', 'la cantidad actual', 'الكمية الحالية', 'quantité de courant', '当前量');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(366, 'add_product_quantity', 'Add Product Quantity', 'পণ্যের পরিমাণ যোগ', 'añadir la cantidad de producto', 'إضافة كمية المنتج', 'ajouter la quantité de produit', '增加产品数量'),
(367, 'quantity_added!', 'Quantity Added!', 'পরিমাণ যোগ করা হয়েছে!', 'cantidad añadida!', 'وأضافت الكمية!', 'quantité ajoutée!', '加入量！'),
(368, 'stock', 'Stock', 'স্টক', 'valores', 'مخزون', 'Stock', '股票'),
(369, 'reduce_product_quantity', 'Reduce Product Quantity', 'পণ্যের পরিমাণ কমাতে', 'reducir la cantidad de producto', 'تقليل كمية المنتج', 'réduire la quantité de produit', '减少产品数量'),
(370, 'quantity_reduced!', 'Quantity Reduced!', 'পরিমাণ কমে!', 'reduce la cantidad!', 'كمية خفضت!', 'quantité réduite!', '数量减少！'),
(371, 'destroy', 'Destroy', 'ধ্বংস', 'destruir', 'هدم', 'détruire', '破坏'),
(372, 'edit_product', 'Edit Product', 'সম্পাদনা পণ্য', 'edición del producto', 'تحرير المنتج', 'produit d\'édition', '编辑产品'),
(373, 'product_details', 'Product Details', 'পণ্যের বিবরণ', 'detalles del producto', 'تفاصيل المنتج', 'détails du produit', '产品详情'),
(374, 'business_details', 'Business Details', 'ব্যবসার বিবরণ', 'datos de la empresa', 'تفاصيل العمل', 'détails d\'affaires', '商家详情'),
(375, 'customer_choice_options', 'Customer Choice Options', 'গ্রাহকের পছন্দ অপশন', 'opciones de elección del cliente', 'خيارات اختيار العملاء', 'options de choix du client', '客户选择的选项'),
(376, 'unit', 'Unit', 'একক', 'unidad', 'وحدة', 'unité', '单元'),
(377, 'unit_(e.g._kg,_pc_etc.)', 'Unit (e.g. Kg, Pc Etc.)', 'ইউনিট (যেমন কেজি, পিসি ইত্যাদি)', 'unidad (por ejemplo, kilogramo, PC, etc.)', 'وحدة (مثلا كجم، وأجهزة الكمبيوتر وغيرها)', 'unité (par exemple kg, pc, etc.)', '单位（例如公斤，PC等）'),
(378, 'tags', 'Tags', 'ট্যাগ', 'etiquetas', 'علامات', 'Mots clés', '标签'),
(379, 'images', 'Images', 'চিত্র', 'imágenes', 'صور', 'images', '图片'),
(380, 'choose_file', 'Choose File', 'ফাইল পছন্দ কর', 'Elija el archivo', 'اختر ملف', 'choisir le fichier', '选择文件'),
(381, 'description', 'Description', 'বিবরণ', 'descripción', 'وصف', 'la description', '描述'),
(382, 'if_you_need_more_field_for_your_product_,_please_click_here_for_more...', 'If You Need More Field For Your Product , Please Click Here For More...', 'যদি আপনি আপনার পণ্যের জন্য আরো ক্ষেত্রের প্রয়োজন, আরো জন্য এখানে ক্লিক করুন ...', 'si necesita más materia para su producto, por favor haga clic aquí para obtener más ...', 'اذا كنت بحاجة الى مزيد من المجال للمنتج الخاص بك، الرجاء الضغط هنا لمزيد من ...', 'si vous avez besoin de plus le terrain pour votre produit, s\'il vous plaît cliquez ici pour plus ...', '如果你需要更多的领域为您的产品，请点击这里查看更多...'),
(383, 'add_more_fields', 'Add More Fields', 'আরো ক্ষেত্রের যোগ', 'añadir más campos', 'إضافة المزيد من الحقول', 'ajouter des champs', '添加更多的字段'),
(384, 'sale_price', 'Sale Price', 'বিক্রয় মূল্য', 'precio de venta', 'سعر البيع', 'prix de vente', '销售价格'),
(385, 'purchase_price', 'Purchase Price', 'ক্রয় মূল্য', 'precio de compra', 'سعر الشراء', 'prix d\'achat', '购买价格'),
(386, 'shipping_cost', 'Shipping Cost', 'প্রদান খরচ', 'costo de envío', 'تكلفة الشحن', 'frais de port', '运输费'),
(387, 'product_tax', 'Product Tax', 'পণ্যের কর', 'impuesto sobre los productos', 'الضرائب المنتج', 'taxe sur les produits', '产品税'),
(388, 'product_discount', 'Product Discount', 'পণ্য ছাড়', 'descuento de producto', 'خصم المنتج', 'une réduction du produit', '产品折扣'),
(389, 'color', 'Color', 'রঙ', 'color', 'اللون', 'Couleur', '颜色'),
(390, 'add_more_colors', 'Add More Colors', 'আরো রং যোগ', 'añadir más colores', 'إضافة المزيد من الألوان', 'ajouter plus de couleurs', '添加更多的色彩'),
(391, 'if_you_need_more_choice_options_for_customers_of_this_product_,please_click_here.', 'If You Need More Choice Options For Customers Of This Product ,please Click Here.', 'যদি আপনি এই পণ্যের গ্রাহকদের জন্য আরো পছন্দ অপশন প্রয়োজন, এখানে ক্লিক করুন.', 'Si usted necesita más opciones de elección para los clientes de este producto, por favor haga clic aquí.', 'اذا كنت بحاجة الى مزيد من الخيارات المفضلة للعملاء من هذا المنتج، يرجى الضغط هنا.', 'si vous avez besoin plus d\'options de choix pour les clients de ce produit, s\'il vous plaît cliquez ici.', '如果你需要更多的选择选项本产品的客户，请点击这里。'),
(392, 'add_customer_input_options', 'Add Customer Input Options', 'গ্রাহকের ইনপুট অপশন যোগ', 'añadir opciones de entrada del cliente', 'إضافة خيارات مدخلات العملاء', 'ajouter des options d\'entrée du client', '添加客户输入选项'),
(393, 'next', 'Next', 'পরবর্তী', 'siguiente', 'التالى', 'prochain', '下一个'),
(394, 'previous', 'Previous', 'আগে', 'anterior', 'سابق', 'précédent', '以前'),
(395, 'reset', 'Reset', 'রিসেট', 'Reiniciar', 'إعادة تعيين', 'réinitialiser', '重启'),
(396, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', 'পণ্য আপলোড করা হয়েছে!', 'producto se ha subido!', 'وقد تم تحميل المنتج!', 'produit a été téléchargé!', '产品已上传！'),
(397, 'upload', 'Upload', 'আপলোড', 'subir', 'تحميل', 'télécharger', '上载'),
(398, 'field_name', 'Field Name', 'ক্ষেত্র নাম', 'nombre del campo', 'اسم الحقل', 'nom de domaine', '字段名'),
(399, 'customer_input_title', 'Customer Input Title', 'গ্রাহকের ইনপুট শিরোনাম', 'Título de la entrada del cliente', 'عنوان مدخلات العملاء', 'Titre de l\'entrée à la clientèle', '客户输入标题'),
(400, 'add_options_for_choice', 'Add Options For Choice', 'পছন্দ জন্য অপশন যোগ', 'añadir opciones para elegir', 'إضافة خيارات للاختيار', 'ajouter des options pour le choix', '增加对选择题的选项'),
(401, 'option_name', 'Option Name', 'বিকল্প নাম', 'nombre de la opción', 'اسم الخيار', 'nom de l\'option', '选项名称'),
(402, 'details_of', 'Details Of', 'বিস্তারিত', 'detalles de', 'تفاصيل', 'les détails de', '细节'),
(403, 'tax', 'Tax', 'কর', 'impuesto', 'ضريبة', 'impôt', '税'),
(404, 'tag', 'Tag', 'ট্যাগ', 'etiqueta', 'بطاقة', 'Étiquette', '标签'),
(405, 'colors', 'Colors', 'রং', 'colores', 'الألوان', 'les couleurs', '颜色'),
(406, 'product_color_options', 'Product Color Options', 'পণ্য রঙ অপশন', 'Opciones de color del producto', 'خيارات لون المنتج', 'options de couleur du produit', '产品颜色选项'),
(407, 'add_colors', 'Add Colors', 'রং যোগ', 'añadir colores', 'إضافة الألوان', 'ajouter des couleurs', '添加颜色'),
(408, 'requirements', 'Requirements', 'প্রয়োজনীয়তা', 'requisitos', 'المتطلبات', 'exigences', '要求'),
(409, 'add_logo', 'Add Logo', 'লোগো যোগ', 'añadir el logotipo', 'إضافة شعار', 'ajouter logo', '新增标志'),
(410, 'choose_logo', 'Choose Logo', 'লোগো নির্বাচন', 'elegir el logotipo', 'اختيار شعار', 'choisissez logo', '选择标志'),
(411, 'add_images', 'Add Images', 'ইমেজ যোগ', 'añadir imágenes', 'إضافة الصور', 'ajouter des images', '添加图片'),
(412, 'if_you_need_to_add_video_for_your_product_,_please_click_here...', 'If You Need To Add Video For Your Product , Please Click Here...', 'যদি আপনি আপনার পণ্যের জন্য ভিডিও যোগ করার জন্য প্রয়োজন, এখানে ক্লিক করুন ...', 'Si es necesario agregar video para su producto, por favor haga clic aquí ...', 'إذا كنت بحاجة إلى إضافة الفيديو للمنتج الخاص بك، الرجاء الضغط هنا ...', 'si vous avez besoin d\'ajouter de la vidéo pour votre produit, s\'il vous plaît cliquez ici ...', '如果您需要添加视频为您的产品，请点击这里...'),
(413, 'add_video', 'Add Video', 'ভিডিও যোগ', 'Añadir video', 'إضافة فيديو', 'ajouter de la vidéo', '添加视频'),
(414, 'upload_video', 'Upload Video', 'আপলোড ভিডিও', 'subir un video', 'رفع فيديو', 'Télécharger une video', '上传视频'),
(415, 'choose_video_file', 'Choose Video File', 'ভিডিও ফাইল প্লে', 'Elija el archivo de vídeo', 'اختيار ملف الفيديو', 'choisir le fichier vidéo', '选择视频文件'),
(416, 'choose_sharing_site', 'Choose Sharing Site', 'শেয়ারিং সাইট চয়ন', 'elegir sitio para compartir', 'اختيار موقع مشاركة', 'choisir le site de partage', '选择分享网站'),
(417, 'choose_one', 'Choose One', 'একটা পছন্দ কর', 'elige uno', 'اختيار واحد', 'choisissez-en un', '选一个'),
(418, 'youtube', 'Youtube', 'ইউটিউব', 'Youtube', 'موقع YouTube', 'Youtube', 'YouTube的'),
(419, 'dailymotion', 'Dailymotion', 'Dailymotion', 'dailymotion', 'ديلي موشن', 'dailymotion', '位DailyMotion'),
(420, 'vimeo', 'Vimeo', 'Vimeo', 'vimeo', 'فيميو', 'vimeo', 'VIMEO'),
(421, 'link', 'Link', 'লিংক', 'enlazar', 'صلة', 'lien', '链接'),
(422, 'product_file', 'Product File', 'পণ্য ফাইল', 'archivo del producto', 'ملف المنتج', 'fiche produit', '产品文件'),
(423, 'compressed', 'Compressed', 'সঙ্কুচিত', 'comprimido', 'مضغوط', 'comprimé', '压缩'),
(424, 'maximum_size', 'Maximum Size', 'সর্বাধিক আকার', 'talla máxima', 'أكبر مقاس', 'taille maximum', '最大尺寸'),
(425, 'if_you_need_to_add_requirements_of_this_product_for_customers_,please_click_here.', 'If You Need To Add Requirements Of This Product For Customers ,please Click Here.', 'যদি আপনি গ্রাহকদের জন্য এই পণ্যের প্রয়োজনীয়তা যোগ করতে হবে, এখানে ক্লিক করুন.', 'Si es necesario agregar requisitos de este producto para los clientes, por favor haga clic aquí.', 'إذا كنت بحاجة إلى إضافة متطلبات هذا المنتج للعملاء، الرجاء الضغط هنا.', 'si vous avez besoin d\'ajouter des exigences de ce produit pour les clients, s\'il vous plaît cliquez ici.', '如果需要添加本品的要求，为客户，请点击这里。'),
(426, 'add_product_requirements', 'Add Product Requirements', 'পণ্য প্রয়োজনীয়তা যোগ', 'añadir los requisitos del producto', 'إضافة متطلبات المنتج', 'ajouter des exigences de produits', '增加产品的要求'),
(427, 'remove', 'Remove', 'অপসারণ', 'retirar', 'إزالة', 'retirer', '去掉'),
(428, 'video_options', 'Video Options', 'ভিডিও অপশন', 'opciones de video', 'خيارات الفيديو', 'options vidéo', '视频选项'),
(429, 'choose_an_option', 'Choose An Option', 'একটি বিকল্প নির্বাচন করুন', 'Escoge una opción', 'إختر خيار', 'choisis une option', '选择一个选项'),
(430, 'share_link', 'Share Link', 'শেয়ার লিংক', 'compartir enlace', 'رابط المشاركة', 'lien de partage', '分享链接'),
(431, 'i_want_to_add_video_later', 'I Want To Add Video Later', 'আমি পরে ভিডিও যোগ করতে চান', 'Quiero añadir vídeo más tarde', 'أريد أن أضيف فيديو في وقت لاحق', 'je veux ajouter de la vidéo plus tard', '我想在以后添加视频'),
(432, 'update_product_file', 'Update Product File', 'আপডেটের পণ্য ফাইল', 'archivo de actualización del producto', 'ملف تحديث المنتج', 'fiche du produit de mise à jour', '更新产品文件'),
(433, 'i_want_to_change_video_later', 'I Want To Change Video Later', 'আমি পরে ভিডিও পরিবর্তন করতে চান', 'quiero cambiar de vídeo más tarde', 'أريد أن تغيير الفيديو في وقت لاحق', 'je veux changer vidéo plus tard', '我想以后更改视频'),
(434, 'i_want_to_remove_existing_video', 'I Want To Remove Existing Video', 'আমি বিদ্যমান ভিডিওটি সরিয়ে ফেলতে চান', 'Quiero eliminar el vídeo existente', 'أريد أن إزالة الفيديو موجود', 'je veux supprimer la vidéo existante', '我想删除现有的视频'),
(435, 'invoice_for', 'Invoice For', 'জন্য চালান', 'factura para', 'فاتورة', 'facture de', '发票'),
(436, 'invoice_no:', 'Invoice No:', 'চালান নং:', 'factura no:', 'رقم الفاتورة:', 'facturera pas:', '发票号码：'),
(437, 'date_:', 'Date :', 'তারিখ:', 'fecha :', 'تاريخ :', 'date :', '日期：'),
(438, 'client_information', 'Client Information', 'ক্লায়েন্ট তথ্য', 'información del cliente', 'معلومات العميل', 'informations client', '客户信息'),
(439, 'first_name', 'First Name', 'প্রথম নাম', 'nombre de pila', 'الاسم الاول', 'Prénom', '名字'),
(440, 'last_name', 'Last Name', 'নামের শেষাংশ', 'apellido', 'الكنية', 'nom de famille', '姓'),
(441, 'payment_detail', 'Payment Detail', 'পেমেন্ট বিস্তারিত', 'detalles de pago', 'تفاصيل الدفع', 'détail du paiement', '付款明细'),
(442, 'due', 'Due', 'কারণে', 'debido', 'بسبب', 'dû', '应有'),
(443, 'payment_date', 'Payment Date', 'টাকা প্রদানের তারিখ', 'fecha de pago', 'تاريخ الدفع', 'date de paiement', '付款日期'),
(444, 'payment_invoice', 'Payment Invoice', 'পেমেন্ট চালান', 'factura de pago', 'فاتورة الدفع', 'facture de paiement', '付款发票'),
(445, 'item', 'Item', 'পদ', 'ít', 'بند', 'article', '项目'),
(446, 'unit_cost', 'Unit Cost', 'ইউনিট খরচ', 'coste unitario', 'تكلفة الوحدة', 'coût unitaire', '单位成本'),
(447, 'sub_total_amount', 'Sub Total Amount', 'সাব মোট পরিমাণ', 'importe total sub', 'المبلغ الإجمالي الفرعي', 'montant total sous', '子总额'),
(448, 'shipping', 'Shipping', 'পাঠানো', 'Envío', 'الشحن', 'livraison', '运输'),
(449, 'grand_total', 'Grand Total', 'সর্বমোট', 'gran total', 'المبلغ الإجمالي', 'somme finale', '累计'),
(450, 'address_line_1', 'Address Line 1', 'ঠিকানা লাইন 1', 'Dirección Línea 1', 'العنوان الأول', 'Adresse 1', '地址栏1'),
(451, 'address_line_2', 'Address Line 2', 'ঠিকানা লাইন 2', 'línea de dirección 2', 'سطر العنوان 2', 'Adresse Ligne 2', '地址行2'),
(452, 'zipcode', 'Zipcode', 'পিনকোড', 'código postal', 'الرمز البريدي', 'code postal', '邮政编码'),
(453, 'print', 'Print', 'ছাপা', 'impresión', 'طباعة', 'impression', '打印'),
(454, 'marker_location', 'Marker Location', 'মার্কার অবস্থান', 'ubicación del marcador', 'علامة المكان', 'emplacement du marqueur', '标记位置'),
(455, 'city', 'City', 'শহর', 'ciudad', 'مدينة', 'ville', '市'),
(456, 'ZIP', 'ZIP', 'জিপ', 'cremallera', 'ZIP', 'ZIP *: FRANÇAIS', '压缩'),
(457, 'payment_details', 'Payment Details', 'পেমেন্ট বিবরণ', 'payment details', 'بيانات الدفع', 'détails du paiement', NULL),
(458, 'coupon_title', 'Coupon Title', 'কুপন শিরোনাম', 'coupon title', 'عنوان القسيمة', 'Titre de coupon', NULL),
(459, 'valid_till', 'Valid Till', 'পর্যন্ত বৈধ', 'valid till', 'صالح حتى', 'valable jusqu\'au', NULL),
(460, 'coupon_discount_on', 'Coupon Discount On', 'কুপন ডিসকাউন্ট', 'coupon discount on', 'قسيمة خصم على', 'coupon de réduction sur les', NULL),
(461, 'coupon_code', 'Coupon Code', 'কুপন কোড', 'coupon code', 'رمز القسيمة', 'code promo', NULL),
(462, 'discount_type', 'Discount Type', 'ছাড় টাইপ', 'discount type', 'نوع الخصم', 'Type de réduction', NULL),
(463, 'discount_value', 'Discount Value', 'ডিসকাউন্ট মূল্য', 'discount value', 'قيمة الخصم', 'valeur de réduction', NULL),
(464, 'user', 'User', 'ব্যবহারকারী', 'user', 'مستخدم', 'utilisateur', NULL),
(465, 'phone_number', 'Phone Number', 'ফোন নম্বর', 'phone number', 'رقم الهاتف', 'numéro de téléphone', NULL),
(466, 'creation_date', 'Creation Date', 'তৈরির তারিখ', 'creation date', 'تاريخ الإنشاء', 'date de création', NULL),
(467, 'ticket_from', 'Ticket From', 'থেকে টিকিট', 'ticket from', 'تذكرة من', 'billet de', NULL),
(468, 'date_&_time', 'Date & Time', 'তারিখ সময়', 'date &amp; time', 'التاريخ والوقت', 'date et heure', NULL),
(469, 'reply_message', 'Reply Message', 'উত্তর বার্তা', 'reply message', 'رسالة الرد', 'message de réponse', NULL),
(470, 'successfully_replied!', 'Successfully Replied!', 'সফলভাবে বললেন!', 'successfully replied!', 'أجاب بنجاح!', 'répondit avec succès!', NULL),
(471, 'reply', 'Reply', 'উত্তর', 'reply', 'الرد', 'répondre', NULL),
(472, 'refresh', 'Refresh', 'সতেজ করা', 'refresh', 'اعادة تنشيط', 'rafraîchir', NULL),
(473, 'company', 'Company', 'কোম্পানির', 'company', 'شركة', 'compagnie', NULL),
(474, 'postpone', 'Postpone', 'মুলতবি করা', 'postpone', 'تأجيل', 'remettre à plus tard', NULL),
(475, 'approve', 'Approve', 'অনুমোদন করা', 'approve', 'وافق', 'approuver', NULL),
(476, 'total_sold', 'Total Sold', 'মোট বিক্রি', 'total sold', 'مجموعه تباع', 'total vendu', NULL),
(477, 'paid_by_customer', 'Paid By Customer', 'গ্রাহকের দ্বারা প্রদান করা', 'paid by customer', 'المدفوع من قبل العميل', 'payé par le client', NULL),
(478, 'paid_to_vendor', 'Paid To Vendor', 'বিক্রেতার দেওয়া', 'paid to vendor', 'تدفع للبائع', 'payé au fournisseur', NULL),
(479, 'by_admin', 'By Admin', 'দ্বারা অ্যাডমিন', 'by admin', 'بواسطة admin', 'by admin', NULL),
(480, 'cash_on_delivery', 'Cash On Delivery', 'প্রদানোত্তর পরিশোধ', 'cash on delivery', 'الدفع عند التسليم', 'paiement à la livraison', NULL),
(481, 'due_to_vendor', 'Due To Vendor', 'বিক্রেতার কারণে', 'due to vendor', 'بسبب بائع', 'en raison de fournisseur', NULL),
(482, 'select_payment_method', 'Select Payment Method', 'নির্বাচন পেমেন্ট পদ্ধতি', 'select payment method', 'اختار طريقة الدفع', 'Sélectionnez le mode de paiement', NULL),
(483, 'your_card_details_verified!', 'Your Card Details Verified!', 'আপনার কার্ডের বিবরণ যাচাই!', 'your card details verified!', 'تفاصيل بطاقتك التحقق منها!', 'vos coordonnées de carte vérifiées!', NULL),
(484, 'pay_with_stripe', 'Pay With Stripe', 'ডোরা দিয়ে দিতে', 'pay with stripe', 'دفع مع شريط', 'payer avec bande', NULL),
(485, 'datetime', 'Datetime', 'তারিখ সময়', 'datetime', 'التاريخ والوقت', 'datetime', NULL),
(486, 'membership_to_upgrade', 'Membership To Upgrade', 'সদস্যপদ আপগ্রেড করার', 'membership to upgrade', 'عضوية لرفع مستوى', 'membres pour mettre à niveau', NULL),
(487, 'method', 'Method', 'পদ্ধতি', 'method', 'طريقة', 'méthode', NULL),
(488, 'details', 'Details', 'বিস্তারিত', 'details', 'تفاصيل', 'détails', NULL),
(489, 'maximum_products', 'Maximum Products', 'সর্বাধিক পণ্য', 'maximum products', 'منتجات القصوى', 'produits maximales', NULL),
(490, 'timespan', 'Timespan', 'timespan', 'timespan', 'الفترة الزمنية', 'timespan', NULL),
(491, 'package_seal', 'Package Seal', 'প্যাকেজ সীল', 'package seal', 'حزمة ختم', 'fermeture de l\'emballage', NULL),
(492, 'select_package_seal', 'Select Package Seal', 'নির্বাচন প্যাকেজ সীল', 'select package seal', 'حدد حزمة ختم', 'select joint package', NULL),
(493, 'manage_vendor_slides', 'Manage Vendor Slides', 'বিক্রেতার স্লাইড পরিচালনা', 'manage vendor slides', 'إدارة الشرائح بائع', 'gérer les diapositives des fournisseurs', NULL),
(494, 'button', 'Button', 'বোতাম', 'button', 'زر', 'bouton', NULL),
(495, 'click_to_check_link', 'Click To Check Link', 'লিংক চেক করতে ক্লিক', 'click to check link', 'انقر فوق التحقق من الرابط', 'cliquez pour vérifier le lien', NULL),
(496, 'slides', 'Slides', 'স্লাইড', 'slides', 'الشرائح', 'diapositives', NULL),
(497, 'manage_users', 'Manage Users', 'ব্যবহারকারীদের পরিচালনা', 'manage users', 'ادارة المستخدمين', 'gérer les utilisateurs', NULL),
(498, 'total_purchase', 'Total Purchase', 'মোট ক্রয়', 'total purchase', 'شراء مجموع', 'achat total', NULL),
(499, 'users', 'Users', 'ব্যবহারকারী', 'users', 'المستخدمين', 'utilisateurs', NULL),
(500, 'send_newsletter', 'Send Newsletter', 'নিউজলেটার পাঠাতে', 'send newsletter', 'إرسال الرسائل الإخبارية', 'envoyer la newsletter', NULL),
(501, 'e-mails_(users)', 'E-mails (users)', 'ই-মেইল (ব্যবহারকারী)', 'e-mails (users)', 'رسائل البريد الإلكتروني (المستخدمين)', 'e-mails (utilisateurs)', NULL),
(502, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'ই-মেইল (সদস্য)', 'e-mails (subscribers)', 'رسائل البريد الإلكتروني (مشترك)', 'e-mails (abonnés)', NULL),
(503, 'from_:_email_address', 'From : Email Address', 'থেকে: ই-মেইল ঠিকানা', 'from : email address', 'من: عنوان البريد الإلكتروني', 'à partir de: adresse e-mail', NULL),
(504, 'newsletter_subject', 'Newsletter Subject', 'নিউজলেটার বিষয়', 'newsletter subject', 'النشرة الموضوع', 'bulletin d\'information sous réserve', NULL),
(505, 'newsletter_content', 'Newsletter Content', 'নিউজলেটার বিষয়বস্তু', 'newsletter content', 'محتوى النشرة الإخبارية', 'contenu du bulletin', NULL),
(506, 'sending', 'Sending', 'পাঠানোর', 'sending', 'إرسال', 'envoi', NULL),
(507, 'sent!', 'Sent!', 'পাঠানো হয়েছে!', 'sent!', 'أرسلت!', 'envoyé!', NULL),
(508, 'send', 'Send', 'পাঠান', 'send', 'إرسال', 'envoyer', NULL),
(509, 'view_contact_message', 'View Contact Message', 'দৃশ্য যোগাযোগের বার্তা', 'view contact message', 'رسالة رأي اتصال', 'message visite de contact', NULL),
(510, 'view_message', 'View Message', 'দৃশ্য বার্তা', 'view message', 'رسالة رأي', 'vue un message', NULL),
(511, 'message', 'Message', 'বার্তা', 'message', 'الرسالة', 'message', NULL),
(512, 'date_time', 'Date Time', 'তারিখ সময়', 'date time', 'التاريخ والوقت', 'date heure', NULL),
(513, 'message_from', 'Message From', 'থেকে বার্তা', 'message from', 'رسالة من', 'message de', NULL),
(514, 'reply_contact_message', 'Reply Contact Message', 'উত্তর যোগাযোগের বার্তা', 'reply contact message', 'الرد رسالة الاتصال', 'message de réponse de contact', NULL),
(515, 'view_original_message', 'View Original Message', 'মূল বার্তা দেখতে', 'view original message', 'عرض الرسالة الأصلية', 'voir message original', NULL),
(516, 'manage_blog_categories', 'Manage Blog Categories', 'ব্লগ বিভাগ পরিচালনা', 'manage blog categories', 'إدارة الفئات بلوق', 'gérer des catégories de blog', NULL),
(517, 'add_blog_category', 'Add Blog Category', 'ব্লগ বিভাগ যোগ', 'add blog category', 'إضافة فئة بلوق', 'ajouter la catégorie de blog', NULL),
(518, 'create_blog_category', 'Create Blog Category', 'ব্লগ বিভাগ তৈরি', 'create blog category', 'إنشاء فئة بلوق', 'créer la catégorie de blog', NULL),
(519, 'edit_blog_category', 'Edit Blog Category', 'সম্পাদনা ব্লগ বিভাগ', 'edit blog category', 'تحرير الفئة بلوق', 'modifier la catégorie de blog', NULL),
(520, 'blog_category', 'Blog Category', 'ব্লগ বিভাগ', 'blog category', 'الفئة بلوق', 'catégorie de blog', NULL),
(521, 'manage_blog', 'Manage Blog', 'ব্লগ পরিচালনা', 'manage blog', 'إدارة بلوق', 'gérer le blog', NULL),
(522, 'add_blog', 'Add Blog', 'ব্লগটি যুক্ত', 'añadir el blog', 'إضافة بلوق', 'ajouter le blog', NULL),
(523, 'create_blog', 'Create Blog', 'ব্লগ তৈরি', 'crear el blog', 'إنشاء بلوق', 'créer un blog', NULL),
(524, 'back_to_blog_list', 'Back To Blog List', 'ফিরে ব্লগ লিস্টে', 'Volver a la lista de blogs', 'العودة إلى قائمة بلوق', 'Retour à la liste des blogs', NULL),
(525, 'edit_blog', 'Edit Blog', 'সম্পাদনা ব্লগ', 'editar el blog', 'تحرير بلوق', 'modifier le blog', NULL),
(526, 'blog_title', 'Blog Title', 'ব্লগ শিরোনাম', 'Titulo de Blog', 'عنوان المدونة', 'Titre du Blog', NULL),
(527, 'summery', 'Summery', 'গ্রীষ্মের বৈশিষ্ট্যপূর্ণ', 'veraniego', 'صيفي', 'd\'été', NULL),
(528, 'author', 'Author', 'লেখক', 'autor', 'مؤلف', 'auteur', NULL),
(529, 'manage_layer_slider', 'Manage Layer Slider', 'লেয়ার স্লাইডার পরিচালনা', 'gestionar deslizador capa', 'إدارة طبقة المنزلق', 'gérer la couche curseur', NULL),
(530, 'create_slider', 'Create Slider', 'স্লাইডার তৈরি', 'crear deslizador', 'إنشاء المنزلق', 'créer curseur', NULL),
(531, 'slider_list', 'Slider List', 'স্লাইডার তালিকা', 'lista deslizador', 'قائمة المنزلق', 'liste de curseur', NULL),
(532, 'slider_serial', 'Slider Serial', 'স্লাইডার সিরিয়াল', 'serie deslizador', 'المنزلق المسلسل', 'curseur série', NULL),
(533, 'successfully_serialized!', 'Successfully Serialized!', 'সফলভাবে ধারাবাহিকভাবে!', 'serializado correctamente!', 'تسلسل بنجاح!', 'sérialisé avec succès!', NULL),
(534, 'slider_serial_saved!', 'Slider Serial Saved!', 'স্লাইডার সিরিয়াল সংরক্ষিত!', 'deslizador serie grabada!', 'المنزلق مسلسل حفظ!', 'Curseur série sauvé!', NULL),
(535, 'choose_your_slider_style', 'Choose Your Slider Style', 'আপনার স্লাইডার শৈলী চয়ন', 'elija su estilo slider', 'اختيار نمط التمرير الخاص بك', 'choisissez votre style de curseur', NULL),
(536, 'play', 'Play', 'খেলা', 'jugar', 'لعب', 'jouer', NULL),
(537, 'choose', 'Choose', 'পছন্দ', 'escoger', 'اختار', 'choisir', NULL),
(538, 'enter_preview', 'Enter Preview', 'প্রিভিউ প্রবেশ', 'introducir previsualización', 'دخول المعاينة', 'entrer aperçu', NULL),
(539, 'creating_slider..', 'Creating Slider..', 'স্লাইডার তৈরি ..', 'la creación de corredera ..', 'خلق المنزلق ..', 'création curseur ..', NULL),
(540, 'slider_added!', 'Slider Added!', 'স্লাইডার যোগ করা হয়েছে!', 'deslizador añadió!', 'وأضاف المنزلق!', 'Curseur ajouté!', NULL),
(541, 'select_background_image', 'Select Background Image', 'নির্বাচন ব্যাকগ্রাউন্ড ইমেজ', 'seleccione la imagen de fondo', 'صورة خلفية مختارة', 'sélectionner l\'image d\'arrière-plan', NULL),
(542, 'select_image', 'Select Image', 'নির্বাচন ইমেজ', 'seleccionar imagen', 'اختر صورة', 'sélectionner l\'image', NULL),
(543, 'font-color', 'Font-color', 'ফন্টের রং', 'color de fuente', 'لون الخط', 'couleur de la police', NULL),
(544, 'background_color', 'Background Color', 'পেছনের রং', 'color de fondo', 'لون الخلفية', 'Couleur de fond', NULL),
(545, 'manage_top_carousal_slides', 'Manage Top Carousal Slides', 'শীর্ষ মদ্যপানোৎসব স্লাইড পরিচালনা', 'gestionar los mejores diapositivas carousal', 'إدارة أعلى الشرائح إحتفال صاخب مخمور', 'gérer les diapositives de Carrousel top', NULL),
(546, 'add_slides', 'Add Slides', 'স্লাইড যোগ', 'añadir diapositivas', 'إضافة شرائح', 'ajouter des diapositives', NULL),
(547, 'create_slides', 'Create Slides', 'স্লাইড তৈরি', 'crear diapositivas', 'إنشاء الشرائح', 'créer des diapositives', NULL),
(548, 'edit_slides', 'Edit Slides', 'স্লাইড সম্পাদন', 'editar diapositivas', 'تحرير الشرائح', 'diapositives modifier', NULL),
(549, 'slide_banner', 'Slide Banner', 'স্লাইড ব্যানার', 'bandera de diapositivas', 'راية الشرائح', 'slide bannière', NULL),
(550, 'select_slide_banner', 'Select Slide Banner', 'নির্বাচন স্লাইড ব্যানার', 'seleccione la bandera de diapositivas', 'حدد راية الشرائح', 'select slide bannière', NULL),
(551, 'button_color:', 'Button Color:', 'বোতাম রঙ:', 'botón de color:', 'زر اللون:', 'bouton couleur:', NULL),
(552, 'button_text_color:', 'Button Text Color:', 'বোতাম টেক্সট রঙ:', 'botón Color del texto:', 'زر لون النص:', 'bouton couleur du texte:', NULL),
(553, 'button_text', 'Button Text', 'বোতাম টেক্সট', 'botón de texto', 'زر كتابة', 'bouton de texte', NULL),
(554, 'button_link', 'Button Link', 'বোতাম লিংক', 'botón de enlace', 'رابط زر', 'lien de bouton', NULL),
(555, 'slides_logo', 'Slides Logo', 'স্লাইড লোগো', 'logotipo de diapositivas', 'الشرائح شعار', 'diapositives logo', NULL),
(556, 'choose_home_page_style', 'Choose Home Page Style', 'চয়ন হোম পৃষ্ঠা শৈলী', 'elija el estilo página de inicio', 'اختيار نمط الصفحة الرئيسية', 'choisissez la page d\'accueil de style', NULL),
(557, 'updating..', 'Updating..', 'হালনাগাদ করা ..', 'actualización ..', 'تحديث ..', 'mise à jour ..', NULL),
(558, 'home_page_updated!', 'Home Page Updated!', 'হোম পেজে আপডেট!', 'página de inicio actualizada!', 'الصفحة الرئيسية تجديد!', 'page d\'accueil mise à jour!', NULL),
(559, 'update_home_page', 'Update Home Page', 'আপডেটের হোম পেজে', 'actualización de la página de inicio', 'تحديث الصفحة الرئيسية', 'mise à jour la page d\'accueil', NULL),
(560, 'change_home_page_items', 'Change Home Page Items', 'পরিবর্তন হোম পেজে আইটেম', 'artículos cambiar la página principal', 'البنود تغيير الصفحة الرئيسية', 'changement page d\'accueil articles', NULL),
(561, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'সত্যিই এই লোগো মুছে ফেলতে চান?', 'Realmente desea eliminar este logotipo?', 'حقا تريد حذف هذا الشعار؟', 'voulez vraiment supprimer ce logo?', NULL),
(562, 'top_slider', 'Top Slider', 'শীর্ষ স্লাইডার', 'top slider', 'كبار المنزلق', 'top slider', NULL),
(563, 'home_banners', 'Home Banners', 'হোম ব্যানার', 'banderas de casas', 'لافتات المنزل', 'bannières à domicile', NULL),
(564, 'search_section', 'Search Section', 'অনুসন্ধান অধ্যায়', 'sección de búsqueda', 'قسم البحث', 'section de recherche', NULL),
(565, 'category_wise_products', 'Category Wise Products', 'বিভাগ বিজ্ঞ পণ্য', 'productos de la categoría sabios', 'فئة المنتجات الحكيمة', 'catégorie produits sages', NULL),
(566, 'special_products', 'Special Products', 'বিশেষ পণ্য', 'productos especiales', 'منتجات خاصة', 'produits spéciaux', NULL),
(567, 'top_carousel_slider', 'Top Carousel Slider', 'শীর্ষ ক্যারোসেলে স্লাইডার', 'deslizador superior carrusel', 'كبار المنزلق دائري', 'top carrousel curseur', NULL),
(568, 'choose_categories_(max_10)', 'Choose Categories (max 10)', 'চয়ন বিভাগ (সর্বোচ্চ 10)', 'elegir categorías (máximo 10)', 'اختيار الفئات (حد أقصى 10)', 'choisir les catégories (max 10)', NULL),
(569, 'number_of_todays_deal_(_to_show_)', 'Number Of Todays Deal ( To Show )', 'আজকের চুক্তি সংখ্যা (দেখানোর জন্য)', 'número de hoy oferta (para mostrar)', 'عدد من صفقة اليوم (إظهار)', 'nombre de retransmission de ce deal (montrer)', NULL),
(570, 'updating', 'Updating', 'হালনাগাদ করা', 'actualización', 'تحديث', 'réactualisation', NULL),
(571, 'category_menu_updated!', 'Category Menu Updated!', 'বিভাগ মেনু আপডেট!', 'menú de categorías actualizado!', 'القائمة فئة تجديد!', 'menu de la catégorie mise à jour!', NULL),
(572, 'update', 'Update', 'হালনাগাদ', 'actualizar', 'تحديث', 'mettre à jour', NULL),
(573, 'after_slider', 'After Slider', 'স্লাইডার পর', 'después de deslizador', 'بعد المنزلق', 'après curseur', NULL),
(574, 'select_banner_image', 'Select Banner Image', 'নির্বাচন ব্যানার ইমেজ', 'Seleccionar imagen de la bandera', 'اختر صورة لافتة', 'sélectionner l\'image de la bannière', NULL),
(575, 'banner_updated!', 'Banner Updated!', 'ব্যানার আপডেট!', 'bandera actualiza!', 'راية تحديث!', 'banner mis à jour!', NULL),
(576, 'parallax_title_for_search', 'Parallax Title For Search', 'অনুসন্ধানের জন্য লম্বন শিরোনাম', 'Título de paralaje para la búsqueda', 'عنوان المنظر للبحث', 'Titre de la parallaxe pour la recherche', NULL),
(577, 'parallax_image_for_search_section', 'Parallax Image For Search Section', 'অনুসন্ধান বিভাগের জন্য লম্বন ইমেজ', 'imagen de paralaje para la sección de búsqueda', 'صورة المنظر لقسم البحث', 'l\'image de parallaxe pour la section de recherche', NULL),
(578, 'search_section_updated!', 'Search Section Updated!', 'অনুসন্ধান অধ্যায় আপডেট!', 'sección de búsqueda actualizada!', 'قسم البحث تحديث!', 'section de recherche mis à jour!', NULL),
(579, 'featured_products_(_show_/_hide_)', 'Featured Products ( Show / Hide )', 'বৈশিষ্ট্যযুক্ত পণ্য (প্রদর্শন করুন / আড়াল)', 'productos destacados (mostrar / ocultar)', 'منتجات مميزة (عرض / إخفاء)', 'produits phares (show / hide)', NULL),
(580, 'number_of_products_(_to_show_)', 'Number Of Products ( To Show )', 'পণ্য সংখ্যা (দেখানোর জন্য)', 'número de productos (para mostrar)', 'عدد من المنتجات (لاظهار)', 'nombre de produits (pour montrer)', NULL),
(581, 'choose_product_box_style', 'Choose Product Box Style', 'পণ্য বক্স শৈলী চয়ন', 'elija el estilo caja del producto', 'اختيار المنتج نمط مربع', 'choisissez le style boîte produit', NULL),
(582, 'featured_section_updated!', 'Featured Section Updated!', 'বৈশিষ্ট্যযুক্ত অধ্যায় আপডেট!', 'sección contenidos actualiza!', 'القسم المميز تحديث!', 'section sélectionnée mis à jour!', NULL),
(583, 'vandor_(_show_/_hide_)', 'Vandor ( Show / Hide )', 'vandor (প্রদর্শন করুন / আড়াল)', 'Vandor (mostrar / ocultar)', 'فاندور (عرض / إخفاء)', 'vandor (afficher / masquer)', NULL),
(584, 'parallax_title_for_vendors', 'Parallax Title For Vendors', 'বিক্রেতাদের জন্য লম্বন শিরোনাম', 'Título de paralaje para los vendedores', 'عنوان المنظر للبائعين', 'Titre de la parallaxe pour les vendeurs', NULL),
(585, 'parallax_image_for_vendors', 'Parallax Image For Vendors', 'বিক্রেতাদের জন্য লম্বন ইমেজ', 'imagen de paralaje para los vendedores', 'صورة المنظر للبائعين', 'l\'image de parallaxe pour les vendeurs', NULL),
(586, 'number_of_vendor_(_to_show_)', 'Number Of Vendor ( To Show )', 'বিক্রেতার সংখ্যা (দেখানোর জন্য)', 'número de proveedor (para mostrar)', 'عدد من بائع (لاظهار)', 'nombre de fournisseurs (pour montrer)', NULL),
(587, 'vendor_section_updated!', 'Vendor Section Updated!', 'বিক্রেতার অধ্যায় আপডেট!', 'proveedor actualiza la sección!', 'قسم بائع تحديث!', 'section de fournisseur mis à jour!', NULL),
(588, 'sub-categories_(promotional)', 'Sub-categories (promotional)', 'উপ-বিভাগ (প্রচারমূলক)', 'subcategorías (de promoción)', 'فئات فرعية (الترويجية)', 'sous-catégories (promotion)', NULL),
(589, 'color_preference_:', 'Color Preference :', 'রঙ পছন্দ:', 'preferencia de color:', 'تفضيل اللون:', 'de préférence de couleur:', NULL),
(590, 'title_color:', 'Title Color:', 'শিরোনাম রঙ:', 'color del título:', 'عنوان اللون:', 'Titre de la couleur:', NULL),
(591, 'add_new', 'Add New', 'নতুন যোগ', 'añadir nuevo', 'اضف جديد', 'ajouter de nouvelles', NULL),
(592, 'home_categories_updated!', 'Home Categories Updated!', 'বাড়িতে আরও আপডেট!', 'Categorías Inicio actualizadas!', 'فئات الوطن تجديد!', 'catégories de maison mis à jour!', NULL),
(593, 'blog_(_show_/_hide_)', 'Blog ( Show / Hide )', 'ব্লগ (প্রদর্শন করুন / আড়াল)', 'el blog (mostrar / ocultar)', 'بلوق (عرض / إخفاء)', 'Blog (show / hide)', NULL),
(594, 'parallax_title_for_blog', 'Parallax Title For Blog', 'ব্লগের জন্য লম্বন শিরোনাম', 'Título de paralaje para el blog', 'عنوان المنظر لبلوق', 'titre parallaxe pour blogue', NULL),
(595, 'parallax_image_for_blog', 'Parallax Image For Blog', 'ব্লগের জন্য লম্বন ইমেজ', 'imagen de paralaje para el blog', 'صورة المنظر لبلوق', 'l\'image de parallaxe pour blogue', NULL),
(596, 'number_of_latest_blog_(_to_show_)', 'Number Of Latest Blog ( To Show )', 'সর্বশেষ ব্লগ সংখ্যা (দেখানোর জন্য)', 'número de último blog (para mostrar)', 'عدد آخر بلوق (لاظهار)', 'nombre de dernier blog (montrer)', NULL),
(597, 'blog_section_updated!', 'Blog Section Updated!', 'ব্লগ অধ্যায় আপডেট!', 'sección del blog actualizado!', 'قسم بلوق تحديث!', 'section blog mis à jour!', NULL),
(598, 'special_products_(_show_/_hide_)', 'Special Products ( Show / Hide )', 'বিশেষ পণ্য (প্রদর্শন করুন / আড়াল)', 'productos especiales (mostrar / ocultar)', 'منتجات خاصة (إظهار / إخفاء)', 'produits spéciaux (afficher / masquer)', NULL),
(599, 'brand_(_show_/_hide_)', 'Brand ( Show / Hide )', 'ব্র্যান্ড (প্রদর্শন করুন / আড়াল)', 'marca (mostrar / ocultar)', 'العلامة التجارية (عرض / إخفاء)', 'marque (show / hide)', NULL),
(600, 'number_of_brand_(_to_show_)', 'Number Of Brand ( To Show )', 'ব্র্যান্ড সংখ্যা (দেখানোর জন্য)', 'Número de marca (para mostrar)', 'عدد من العلامة التجارية (لاظهار)', 'nombre de marque (montrer)', NULL),
(601, 'brand_section_updated!', 'Brand Section Updated!', 'ব্র্যান্ড অধ্যায় আপডেট!', 'sección de la marca actualizada!', 'قسم العلامة التجارية تحديثها!', 'section de la marque mis à jour!', NULL),
(602, 'banner_published!', 'Banner Published!', 'ব্যানার প্রকাশিত!', 'bandera publicado!', 'راية نشرت!', 'bannière publié!', NULL),
(603, 'banner_unpublished!', 'Banner Unpublished!', 'ব্যানার অপ্রকাশিত!', 'bandera inédita!', 'راية لم تنشر!', 'bannière inédite!', NULL),
(604, 'section_published!', 'Section Published!', 'অধ্যায় প্রকাশিত!', 'publicada sección!', 'القسم نشرت!', 'section publié!', NULL),
(605, 'section_unpublished!', 'Section Unpublished!', 'অধ্যায় অপ্রকাশিত!', 'sección inédita!', 'قسم غير منشورة!', 'section inédite!', NULL),
(606, 'category_wise_banners', 'Category Wise Banners', 'বিভাগ জ্ঞানী ব্যানার', 'categoría banderas sabios', 'فئة افتات الحكيمة', 'catégorie bannières sages', NULL),
(607, 'title_for_vendor_section', 'Title For Vendor Section', 'বিক্রেতার বিভাগের জন্য শিরোনাম', 'título para la sección de proveedores', 'عنوان الباب بائع', 'titre pour la section de fournisseur', NULL),
(608, 'contact_address', 'Contact Address', 'যোগাযোগের ঠিকানা', 'dirección de contacto', 'عنوان الإتصال', 'Adresse de contact', NULL),
(609, 'contact_phone', 'Contact Phone', 'ফোনে যোগাযোগ', 'teléfono de contacto', 'رقم الهاتف', 'Numéro du contact', NULL),
(610, 'contact_email', 'Contact Email', 'যোগাযোগের ই - মেইল', 'Email de contacto', 'تواصل بالبريد الاكتروني', 'Email du contact', NULL),
(611, 'contact_website', 'Contact Website', 'যোগাযোগের ওয়েবসাইট', 'sitio web contactar', 'اتصال الانترنت', 'site de contact', NULL),
(612, 'contact_about', 'Contact About', 'সম্পর্কে যোগাযোগ', 'contactar con respecto', 'الاتصال حول', 'contacter à propos de', NULL),
(613, 'footer_settings', 'Footer Settings', 'পাদচরণ সেটিংস', 'configuración pie de página', 'إعدادات تذييل', 'paramètres de bas de page', NULL),
(614, 'footer_category', 'Footer Category', 'পাদচরণ বিভাগ', 'categoría de pie de página', 'فئة تذييل', 'catégorie footer', NULL),
(615, 'footer_text', 'Footer Text', 'পাদচরণ', 'texto de pie de página', 'نص تذييل', 'texte de pied de page', NULL),
(616, 'choose_theme', 'Choose Theme', 'থিম নির্বাচন', 'escoge un tema', 'اختيار موضوع', 'choisissez le thème', NULL),
(617, 'theme_updated!', 'Theme Updated!', 'থিম আপডেট!', 'tema actualizado!', 'موضوع تحديث!', 'thème mis à jour!', NULL),
(618, 'upload_logo', 'Upload Logo', 'আপলোড লোগো', 'logo Subir', 'تحميل شعار', 'télécharger logo', NULL),
(619, 'select_logo', 'Select Logo', 'নির্বাচন লোগো', 'Selección logo', 'حدد شعار', 'sélectionnez logo', NULL),
(620, 'all_logos', 'All Logos', 'সমস্ত লোগো', 'todos los logotipos', 'كل الشعارات', 'tous les logos', NULL),
(621, 'place', 'Place', 'জায়গা', 'lugar', 'مكان', 'endroit', NULL),
(622, 'admin_logo', 'Admin Logo', 'অ্যাডমিন লোগো', 'logotipo de administración', 'شعار المشرف', 'administrateur logo', NULL),
(623, 'successfully_selected!', 'Successfully Selected!', 'সফলভাবে নির্বাচিত!', 'seleccionado correctamente!', 'اختيار بنجاح!', 'choisi avec succès!', NULL),
(624, 'change', 'Change', 'পরিবর্তন', 'cambio', 'تغيير', 'changement', NULL),
(625, 'homepage_header_logo', 'Homepage Header Logo', 'হোমপেজে হেডার লোগো', 'logotipo de cabecera página de inicio', 'الصفحة الرئيسية شعار رأس', 'page d\'accueil logo header', NULL),
(626, 'homepage_footer_logo', 'Homepage Footer Logo', 'হোমপেজে ফুটার লোগো', 'Logotipo de pie de página página de inicio', 'الصفحة الرئيسية شعار تذييل', 'page d\'accueil logo footer', NULL),
(627, 'successfully_logo_uploaded', 'Successfully Logo Uploaded', 'সফলভাবে আপলোড লোগো', 'logo subido con éxito', 'بنجاح شعار تحميلها', 'avec succès logo téléchargé', NULL),
(628, 'select_favicon', 'Select Favicon', 'নির্বাচন ফেভিকন', 'seleccione favicon', 'حدد فافيكون', 'sélectionnez favicon', NULL),
(629, 'favicon_updated!', 'Favicon Updated!', 'ফেভিকন আপডেট!', 'favicon actualiza!', 'فافيكون تحديث!', 'favicon mis à jour!', NULL),
(630, 'choose_font', 'Choose Font', 'ফন্ট পছন্দ', 'elegir la fuente', 'اختيار الخط', 'choisissez la police', NULL),
(631, 'font_updated!', 'Font Updated!', 'ফন্ট আপডেট!', 'fuente actualizada!', 'الخط تحديث!', 'police mis à jour!', NULL),
(632, 'preloaders', 'Preloaders', 'preloaders', 'precargadores', 'preloaders', 'preloaders', NULL),
(633, 'preloader_color', 'Preloader Color', 'preloader রঙ', 'el color preloader', 'اللون تحميل مسبق', 'couleur de préchargement', NULL),
(634, 'preloader_background', 'Preloader Background', 'preloader পটভূমি', 'fondo preloader', 'خلفية تحميل مسبق', 'preloader fond', NULL),
(635, 'preloader_updated!', 'Preloader Updated!', 'preloader আপডেট!', 'preloader actualiza!', 'التحميل المسبق لتحديث!', 'Preloader mis à jour!', NULL),
(636, 'social_links', 'Social Links', 'সামাজিক লিংক', 'vínculos sociales', 'الروابط الاجتماعية', 'liens sociaux', NULL),
(637, 'system_name', 'System Name', 'সিস্টেমের নামের', 'nombre del sistema', 'اسم النظام', 'le nom du système', NULL),
(638, 'system_email', 'System Email', 'সিস্টেম ইমেল', 'correo electrónico del sistema', 'نظام البريد الإلكتروني', 'email du système', NULL),
(639, 'system_title', 'System Title', 'সিস্টেম শিরোনাম', 'título de sistema', 'عنوان النظام', 'titre du système', NULL),
(640, 'homepage_cache_time', 'Homepage Cache Time', 'হোমপেজে ক্যাশে সময়', 'tiempo de caché página de inicio', 'الوقت مخبأ الصفحة الرئيسية', 'temps de cache page d\'accueil', NULL),
(641, 'minutes', 'Minutes', 'মিনিট', 'minutos', 'دقيقة', 'minutes', NULL),
(642, 'downloadable_product_folder_name', 'Downloadable Product Folder Name', 'ডাউনলোডযোগ্য পণ্য ফোল্ডার নাম', 'nombre de la carpeta descargable producto', 'اسم مجلد المنتج للتحميل', 'produit téléchargeable nom du dossier', NULL),
(643, 'admin_notification_sound', 'Admin Notification Sound', 'অ্যাডমিন নোটিফিকেশন সাউন্ড', 'sonido de notificación de administración', 'صوت الإعلام المشرف', 'administrateur notification sonore', NULL),
(644, 'admin_notification_volume', 'Admin Notification Volume', 'অ্যাডমিন বিজ্ঞপ্তি ভলিউম', 'volumen de notificación de administración', 'حجم إخطار المشرف', 'volume de notification admin', NULL),
(645, 'Volume_:_', 'Volume : ', 'ভলিউম: ', 'volumen: ', 'الصوت : ', 'Le volume : ', NULL),
(646, 'homepage_notification_sound', 'Homepage Notification Sound', 'হোমপেজে নোটিফিকেশন সাউন্ড', 'sonido de notificación página de inicio', 'صوت الإعلام الصفحة الرئيسية', 'son de notification page d\'accueil', NULL),
(647, 'homepage_notification_volume', 'Homepage Notification Volume', 'হোমপেজে বিজ্ঞপ্তি ভলিউম', 'volumen de notificación página de inicio', 'حجم الاخطار الصفحة الرئيسية', 'volume de notification page d\'accueil', NULL),
(648, 'captcha_settings', 'Captcha Settings', 'ক্যাপচা সেটিংস', 'configuración de captcha', 'إعدادات كلمة التحقق', 'paramètres captcha', NULL),
(649, 'social_login_configuaration', 'Social Login Configuaration', 'সামাজিক লগইন configuaration', 'configuaration entrada sociales', 'configuaration تسجيل الدخول الاجتماعي', 'configuaration de connexion sociale', NULL),
(650, 'product_comment_settings', 'Product Comment Settings', 'পণ্য মন্তব্য সেটিংস', 'configuración de comentarios de productos', 'إعدادات المنتج تعليق', 'paramètres produit de commentaire', NULL),
(651, 'google_map', 'Google Map', 'গুগল মানচিত্র', 'mapa de Google', 'خريطة جوجل', 'Google Map', NULL),
(652, 'save_captcha_settings', 'Save Captcha Settings', 'ক্যাপচা সেটিংস সংরক্ষণ', 'guardar la configuración de captcha', 'حفظ الإعدادات كلمة التحقق', 'enregistrer les paramètres de captcha', NULL),
(653, 'public_key', 'Public Key', 'সর্বজনীন কী', 'Llave pública', 'المفتاح العمومي', 'Clé publique', NULL),
(654, 'private_key', 'Private Key', 'প্রাইভেট কী', 'llave privada', 'المفتاح الخاص', 'clé privée', NULL),
(655, 'facebook_login_settings', 'Facebook Login Settings', 'ফেসবুক লগইন সেটিংস', 'configuración de usuario de Facebook', 'إعدادات تسجيل الدخول الفيسبوك', 'paramètres de connexion facebook', NULL),
(656, 'google+_login_settings', 'Google+ Login Settings', 'গুগল + লগইন সেটিংস', 'la configuración de acceso a Google +', 'إعدادات تسجيل الدخول جوجل +', 'paramètres google + de connexion', NULL),
(657, 'type', 'Type', 'আদর্শ', 'tipo', 'اكتب', 'type', '类型'),
(658, 'none', 'None', 'না', 'ninguna', 'لا شيء', 'aucun', '没有'),
(659, 'facebook_comment', 'Facebook Comment', 'ফেসবুক মন্তব্য', 'facebook comentario', 'الفيسبوك تعليق', 'facebook commentaire', 'Facebook的评论'),
(660, 'disqus_comment', 'Disqus Comment', 'Disqus মন্তব্য', 'comentario Disqus', 'هارد تعليق', 'Disqus commentaire', 'disqus评论'),
(661, 'google_comment', 'Google Comment', 'গুগল মন্তব্য', 'google comentario', 'جوجل تعليق', 'google commentaire', '谷歌评论'),
(662, 'discus_ID', 'Discus ID', 'চাকতি আইডি', 'Identificación de disco', 'رمي القرص معرف', 'discus ID', '铁饼ID'),
(663, 'fb_comment_id', 'Fb Comment Id', 'FB মন্তব্য আইডি', 'fb comentario Identificación', 'أف ب تعليق معرف', 'fb commentaire id', 'FB评论ID'),
(664, 'google_map_api_settings', 'Google Map Api Settings', 'গুগল ম্যাপ API সেটিংস', 'configuración de un mapa de Google API', 'جوجل إعدادات خريطة المعهد', 'google map paramètres api', '谷歌地图API设置'),
(665, 'api_key', 'Api Key', 'API কী', 'Clave API', 'مفتاح API', 'clé API', 'API密钥'),
(666, 'add_page', 'Add Page', 'পাতা যোগ কর', 'añadir página', 'إضافة صفحة', 'ajouter une page', '添加页面'),
(667, 'create_page', 'Create Page', 'পাতা তৈরি করুন', 'Crear página', 'إنشاء الصفحة', 'créer une page', '创建页面'),
(668, 'back_to_page_list', 'Back To Page List', 'পিছন পাতা লিস্টে', 'volver a la lista de la página', 'العودة إلى القائمة الصفحة', 'Retour à la liste de la page', '返回页面列表'),
(669, 'page_name', 'Page Name', 'পৃষ্ঠার নাম', 'Nombre de la página', 'اسم الصفحة', 'Nom de la page', '网页名称'),
(670, 'preview', 'Preview', 'প্রিভিউ', 'avance', 'معاينة', 'Aperçu', '预习'),
(671, 'edit_page', 'Edit Page', 'সম্পাদনা পাতা', 'editar página', 'تعديل الصفحة', 'modifier la page', '编辑页面'),
(672, 'page_title', 'Page Title', 'আমার স্নাতকের', 'Título de la página', 'عنوان الصفحة', 'titre de la page', '页面标题'),
(673, 'parmalink', 'Parmalink', 'মাহবুব', 'Permalink', 'الرابط الثابت', 'Permalink', '永久链接'),
(674, 'number_of_page_parts', 'Number Of Page Parts', 'পৃষ্ঠা যন্ত্রাংশ সংখ্যা', 'número de piezas de la página', 'عدد الأجزاء الصفحة', 'nombre de pages pièces', '页数件'),
(675, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'আপনার পৃষ্ঠা তৈরি করতে চলুন শুরু করা যাক', 'Empecemos a crear su página', 'يتيح البدء في إنشاء صفحتك', 'laisse commencer à créer votre page', '让我们开始创建你的页面'),
(676, 'parts', 'Parts', 'যন্ত্রাংশ', 'partes', 'أجزاء', 'les pièces', '部分'),
(677, 'select_size', 'Select Size', 'নির্বাচন আকার', 'selecciona el tamaño', 'أختر الحجم', 'sélectionnez la taille', '选择大小'),
(678, 'one-fourth', 'One-fourth', 'এক চতুর্থাংশ', 'un cuarto', 'ربع', 'un quart', '四分之一'),
(679, 'one-third', 'One-third', 'এক-তৃতীয়াংশ', 'un tercio', 'الثلث', 'un tiers', '三分之一'),
(680, 'half', 'Half', 'অর্ধেক', 'mitad', 'نصف', 'moitié', '半'),
(681, 'two-third', 'Two-third', 'দুই-তৃতীয়াংশ', 'dos tercios', 'ثلثي', 'deux tiers', '三分之二'),
(682, 'three-fourth', 'Three-fourth', 'তিন-চতুর্থাংশ', 'tres cuartos', 'ثلاثة ارباع', 'trois quart', '四分之三'),
(683, 'full', 'Full', 'সম্পূর্ণ', 'completo', 'كامل', 'plein', '充分'),
(684, 'select_type', 'Select Type', 'নির্বাচন টাইপ', 'seleccione tipo', 'اختر صنف', 'sélectionner le genre', '选择类型'),
(685, 'content', 'Content', 'সন্তুষ্ট', 'contenido', 'محتوى', 'contenu', '内容'),
(686, 'widget', 'Widget', 'উইজেট', 'Reproductor', 'القطعة', 'un widget', '小部件'),
(687, 'product_categories', 'Product Categories', 'পণের ধরন', 'Categorías de Producto', 'أصناف المنتجات', 'catégories de produits', '产品类别'),
(688, 'advance_search', 'Advance Search', 'অগ্রিম অনুসন্ধান', 'Búsqueda avanzada', 'بحث متقدم', 'recherche avancée', '高级搜索'),
(689, 'special_blogs', 'Special Blogs', 'বিশেষ ব্লগ', 'blogs especiales', 'بلوق الخاصة', 'blogs spéciaux', '特殊的博客'),
(690, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'অনধিক 4 কলাম!', 'no más de 4 columnas!', 'لم يكن أكثر من 4 أعمدة!', 'pas plus de 4 colonnes!', '不超过4列！'),
(691, 'popular', 'Popular', 'জনপ্রিয়', 'popular', 'شعبي', 'populaire', '流行'),
(692, 'deals', 'Deals', 'প্রতিষ্ঠান', 'ofertas', 'صفقات', 'offres', '交易'),
(693, 'page_code', 'Page Code', 'পাতা কোড', 'código de la página', 'كود الصفحة', 'code de la page', '网页代码'),
(694, 'page_tags', 'Page Tags', 'পাতা ট্যাগ', 'etiquetas de página', 'علامات الصفحة', 'balises de page', '标签页'),
(695, 'column', 'Column', 'স্তম্ভ', 'columna', 'عمود', 'colonne', '柱'),
(696, '', '', '', '', '', '', ''),
(697, 'most_sold', 'Most Sold', 'সবথেকে বেশি বিক্রিত', 'más vendidos', 'الأكثر مبيعا', 'les plus vendus', '大部分销往'),
(698, 'product_image', 'Product Image', 'পণ্য ইমেজ', 'Imagen del producto', 'صورة المنتج', 'image du produit', '产品形象'),
(699, 'digital_logo_image', 'Digital Logo Image', 'ডিজিটাল লোগো ইমেজ', 'imagen del logotipo digitales', 'صورة الشعار الرقمية', 'logo image numérique', '数字标识图像'),
(700, 'category_image', 'Category Image', 'বিভাগ ইমেজ', 'imagen de la categoría', 'صورة الفئة', 'catégorie d\'image', '类别形象'),
(701, 'sub_category_image', 'Sub Category Image', 'সাব বিভাগ চিত্র', 'imagen de la categoría sub', 'صورة الفئة الفرعية', 'Image sous catégorie', '子类别形象'),
(702, 'brand_image', 'Brand Image', 'প্রতিকি ছবি', 'imagen de marca', 'صورة العلامة التجارية', 'image de marque', '品牌形象'),
(703, 'blog_image', 'Blog Image', 'ব্লগ ছবি', 'blog de imágenes', 'صور بلوق', 'blog image', '博客图片'),
(704, 'banner_image', 'Banner Image', 'ব্যানার ইমেজ', 'banner image', 'صورة لافتة', 'image de la bannière', '横幅图片'),
(705, 'user_image', 'User Image', 'ব্যবহারকারী ইমেজ', 'imagen de usuario', 'صورة المستخدم', 'image de l\'utilisateur', '用户图像'),
(706, 'vendor_logo_image', 'Vendor Logo Image', 'বিক্রেতার লোগো ইমেজ', 'imagen del logo del proveedor', 'بائع صورة الشعار', 'fournisseur image du logo', '供应商的logo图片'),
(707, 'vendor_banner_image', 'Vendor Banner Image', 'বিক্রেতার ব্যানার ইমেজ', 'imagen Bandera proveedor', 'بائع راية صورة', 'image de la bannière de fournisseur', '供应商横幅图片'),
(708, 'membership_image', 'Membership Image', 'সদস্য ইমেজ', 'imagen de miembros', 'صورة عضوية', 'image de l\'adhésion', '会员图像'),
(709, 'slides_image', 'Slides Image', 'স্লাইড ইমেজ', 'imagen diapositivas', 'صورة الشرائح', 'l\'image des diapositives', '幻灯片图像'),
(710, 'select_default_image', 'Select Default Image', 'নির্বাচন ডিফল্ট ইমেজ', 'Seleccionar imagen predeterminada', 'الصورة الافتراضية مختارة', 'image par défaut, sélectionnez', '选择默认图像'),
(711, 'product_image_updated!', 'Product Image Updated!', 'পণ্য ইমেজ আপডেট!', 'la imagen del producto actualizado!', 'صورة المنتج تجديد!', 'image du produit mis à jour!', '产品形象更新了！'),
(712, 'digital_logo_image_updated!', 'Digital Logo Image Updated!', 'ডিজিটাল লোগো ইমেজ আপডেট!', 'imagen del logotipo digital actualizada!', 'صورة الشعار الرقمية تجديد!', 'logo image numérique mis à jour!', '数字标识图像更新！'),
(713, 'category_image_updated!', 'Category Image Updated!', 'বিভাগ ইমেজ আপডেট!', 'la categoría imagen actualizada!', 'الفئة صورة تجديد!', 'catégorie d\'image mis à jour!', '类别图像更新！'),
(714, 'sub_category_image_updated!', 'Sub Category Image Updated!', 'সাব বিভাগ ইমেজ আপডেট!', 'imagen de la categoría sub actualiza!', 'صورة الفئة الفرعية تجديد!', 'Image sous catégorie mise à jour!', '子类图像更新！'),
(715, 'brand_image_updated!', 'Brand Image Updated!', 'ব্র্যান্ড ইমেজ আপডেট!', 'actualiza la imagen de marca!', 'صورة العلامة التجارية تجديد!', 'image de marque mis à jour!', '品牌形象更新了！'),
(716, 'blog_image_updated!', 'Blog Image Updated!', 'ব্লগ ইমেজ আপডেট!', 'imagen blog actualizado!', 'صورة بلوق تجديد!', 'l\'image de blog mis à jour!', '博客更新的形象！'),
(717, 'banner_image_updated!', 'Banner Image Updated!', 'ব্যানার ইমেজ আপডেট!', 'imagen Bandera actualiza!', 'راية صورة تجديد!', 'banner image mise à jour!', '横幅图像更新！'),
(718, 'user_image_updated!', 'User Image Updated!', 'ব্যবহারকারী ইমেজ আপডেট!', 'Imagen de usuario actualizada!', 'صورة المستخدم تجديد!', 'image de l\'utilisateur mis à jour!', '用户图像更新！'),
(719, 'vendor_logo_image_updated!', 'Vendor Logo Image Updated!', 'বিক্রেতার লোগো ইমেজ আপডেট!', 'imagen del logo del proveedor actualiza!', 'بائع صورة شعار تجديد!', 'fournisseur image du logo mis à jour!', '供应商的logo图片更新！'),
(720, 'vendor_banner_image_updated!', 'Vendor Banner Image Updated!', 'বিক্রেতার ব্যানার ইমেজ আপডেট!', 'imagen Bandera proveedor actualiza!', 'بائع راية صورة تجديد!', 'image de la bannière du fournisseur mis à jour!', '供应商横幅图像更新！'),
(721, 'membership_image_updated!', 'Membership Image Updated!', 'সদস্য ইমেজ আপডেট!', 'imagen actualizada de miembros!', 'صورة عضوية تجديد!', 'image de l\'adhésion mis à jour!', '会员图像更新！'),
(722, 'slides_image_updated!', 'Slides Image Updated!', 'স্লাইড ইমেজ আপডেট!', 'Imagen diapositivas actualizado!', 'الشرائح صورة تجديد!', 'l\'image des diapositives mis à jour!', '幻灯片图像更新！'),
(723, 'manage_activation', 'Manage Activation', 'সক্রিয়করণ পরিচালনা', 'administrar la activación', 'إدارة التنشيط', 'gérer l\'activation', '管理激活'),
(724, 'business_related', 'Business Related', 'ব্যবসা সংক্রান্ত', 'relacionado al negocio', 'الأعمال التجارية ذات الصلة', 'lié aux affaires', '业务相关'),
(725, 'physical_product_activation', 'Physical Product Activation', 'শারীরিক পণ্য অ্যাক্টিভেশন', 'la activación del producto físico', 'تنشيط المنتج المادي', 'activation physique du produit', '实物产品激活'),
(726, 'physical_product_enabled', 'Physical Product Enabled', 'শারীরিক পণ্য সক্রিয়', 'producto físico habilitado', 'تمكين منتج مادي', 'produit physique activé', '实物产品启用'),
(727, 'physical_product_disabled', 'Physical Product Disabled', 'শারীরিক পণ্যটি অক্ষম', 'producto físico desactivado', 'منتج مادي تعطيل', 'produit physique désactivé', '实物产品禁用');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(728, 'digital_product_activation', 'Digital Product Activation', 'ডিজিটাল পণ্য অ্যাক্টিভেশন', 'la activación de productos digitales', 'تنشيط المنتج الرقمي', 'l\'activation du produit numérique', '数码产品激活'),
(729, 'digital_product_enabled', 'Digital Product Enabled', 'ডিজিটাল পণ্য সক্রিয়', 'producto digital habilitada', 'تمكين المنتجات الرقمية', 'produit numérique activé', '数码产品启用'),
(730, 'digital_product_disabled', 'Digital Product Disabled', 'ডিজিটাল পণ্য নিষ্ক্রিয়', 'producto digital desactivado', 'المنتجات الرقمية تعطيل', 'produit numérique désactivé', '数码产品禁用'),
(731, 'vendor_system_activation', 'Vendor System Activation', 'বিক্রেতার সিস্টেম সক্রিয়করণের', 'activación del sistema del proveedor', 'تفعيل نظام بائع', 'l\'activation du système du fournisseur', '供应商系统的激活'),
(732, 'vendor_system_enabled', 'Vendor System Enabled', 'বিক্রেতার সিস্টেম সক্রিয়', 'Los vendedores de sistemas habilitado', 'تمكين نظام بائع', 'système de fournisseur activé', '供应商的系统中启用'),
(733, 'vendor_system_disabled', 'Vendor System Disabled', 'বিক্রেতার সিস্টেম নিষ্ক্রিয়', 'Los vendedores de sistemas deshabilitada', 'تعطيل نظام بائع', 'système fournisseur désactivé', '供应商系统禁用'),
(734, 'payment_related', 'Payment Related', 'পেমেন্ট সম্পর্কিত', 'el pago relacionado', 'دفع ذات الصلة', 'paiement connexes', '支付相关'),
(735, 'paypal_payment_activation', 'Paypal Payment Activation', 'পেপ্যাল ​​অ্যাক্টিভেশন', 'la activación del pago paypal', 'تفعيل الدفع باي بال', 'activation de paiement paypal', '支付宝付款激活'),
(736, 'paypal_payment_enabled', 'Paypal Payment Enabled', 'পেপাল পেমেন্ট সক্রিয়', 'el pago de PayPal habilitado', 'تمكين الدفع باي بال', 'paiement paypal activé', '支付宝付款启用'),
(737, 'paypal_payment_disabled', 'Paypal Payment Disabled', 'পেপাল পেমেন্ট নিষ্ক্রিয়', 'pago PayPal no disponible', 'الدفع باي بال تعطيل', 'paiement paypal désactivé', '支付宝付款禁用'),
(738, 'stripe_payment_activation', 'Stripe Payment Activation', 'ডোরা পেমেন্ট অ্যাক্টিভেশন', 'la activación del pago de la raya', 'تفعيل دفع شريط', 'activation de paiement de bande', '条纹支付激活'),
(739, 'stripe_payment_enabled', 'Stripe Payment Enabled', 'ডোরা পেমেন্ট সক্রিয়', 'el pago de la raya habilitado', 'دفع شريط تمكين', 'paiement de bande activée', '启用条纹付款'),
(740, 'stripe_payment_disabled', 'Stripe Payment Disabled', 'ডোরা পেমেন্ট নিষ্ক্রিয়', 'el pago de la raya desactivado', 'دفع شريط تعطيل', 'paiement de bande désactivé', '条纹支付禁用'),
(741, 'cash_payment_activation', 'Cash Payment Activation', 'নগদ পেমেন্ট অ্যাক্টিভেশন', 'la activación de pago en efectivo', 'تفعيل الدفع نقدا', 'activation de paiement en espèces', '现金支付激活'),
(742, 'cash_payment_enabled', 'Cash Payment Enabled', 'নগদ পেমেন্ট সক্রিয়', 'pago en efectivo habilitado', 'الدفع نقدا تمكين', 'paiement en espèces a permis', '启用现金支付'),
(743, 'cash_payment_disabled', 'Cash Payment Disabled', 'নগদ পেমেন্ট নিষ্ক্রিয়', 'pago en efectivo desactivado', 'الدفع نقدا تعطيل', 'paiement en espèces désactivé', '现金支付禁用'),
(744, 'manage_business_settings', 'Manage Business Settings', 'ব্যবসা সেটিংস পরিচালনা', 'administrar la configuración de negocio', 'إدارة إعدادات الأعمال', 'gérer les paramètres d\'affaires', '管理业务设置'),
(745, 'cash_payment', 'Cash Payment', 'নগদে টাকা প্রদান', 'pago en efectivo', 'دفع نقدا', 'paiement en espèces', '现金支付'),
(746, 'paypal_payment', 'Paypal Payment', 'পেপ্যাল', 'Pago PayPal', 'دفع باي بال', 'Paiement PayPal', '支付宝付款'),
(747, 'paypal_email', 'Paypal Email', 'পেপ্যাল ​​ইমেইল', 'correo electrónico de payPal', 'البريد الإلكتروني باي بال', 'paypal email', '贝宝电子邮件'),
(748, 'paypal_account_type', 'Paypal Account Type', 'PayPal অ্যাকাউন্ট টাইপ', 'paypal tipo de cuenta', 'باي بال نوع الحساب', 'paypal type de compte', 'PayPal帐户类型'),
(749, 'stripe_payment', 'Stripe Payment', 'ডোরা পেমেন্ট', 'el pago de la raya', 'دفع شريط', 'paiement de bande', '条纹支付'),
(750, 'stripe_secret_key', 'Stripe Secret Key', 'ডোরা গোপন চাবি', 'clave secreta de la raya', 'المفتاح السري الشريط', 'clé secrète bande', '条纹密钥'),
(751, 'stripe_publishable_key', 'Stripe Publishable Key', 'ডোরা প্রকাশযোগ্য কী', 'publicable clave de la raya', 'شريط مفتاح للنشر', 'stripe clé publiable', '条纹发布的关键'),
(752, 'currency_name', 'Currency Name', 'মুদ্রার নাম', 'nombre de la moneda', 'اسم العملة', 'nom de la monnaie', '货币名称'),
(753, 'currency_symbol', 'Currency Symbol', 'মুদ্রা প্রতীক', 'símbolo de moneda', 'رمز العملة', 'symbole de la monnaie', '货币符号'),
(754, 'shipping_cost_type', 'Shipping Cost Type', 'শিপিং খরচ টাইপ', 'Tipo de coste de envío', 'الشحن نوع التكلفة', 'Type de frais de port', '运输成本类型'),
(755, 'product_wise', 'Product Wise', 'পণ্য জ্ঞানী', 'producto sabia', 'المنتج الحكمة', 'produit sage', '产品明智'),
(756, 'fixed', 'Fixed', 'স্থির', 'fijo', 'ثابت', 'fixé', '固定'),
(757, 'shipping_cost_(If_fixed)', 'Shipping Cost (If Fixed)', 'শিপিং খরচ (সংশোধন তাহলে)', 'coste de envío (Si fija)', 'تكلفة الشحن (إذا الثابتة)', 'frais de port (Si fixe)', '运输成本（如果固定）'),
(758, 'shipment_info', 'Shipment Info', 'চালানের তথ্য', 'Datos de envío', 'معلومات الشحن', 'Information d\'expédition', '发货信息'),
(759, 'question', 'Question', 'প্রশ্ন', 'pregunta', 'سؤال', 'question', '题'),
(760, 'answer', 'Answer', 'উত্তর', 'responder', 'إجابة', 'répondre', '回答'),
(761, 'add_more_FAQs', 'Add More FAQs', 'আরো প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী যোগ', 'añadir más preguntas frecuentes', 'إضافة المزيد من الأسئلة الشائعة', 'ajouter plus de FAQs', '添加更多的常见问题解答'),
(762, 'manage_payment_methods_&_shipment', 'Manage Payment Methods & Shipment', 'পেমেন্টের &amp; চালান পরিচালনা', 'administrar métodos Pago y envío', 'إدارة وسائل الدفع والشحن', 'gérer les modes de paiement et l\'expédition', '管理付款方式及发货'),
(763, 'payment_methods_settings', 'Payment Methods Settings', 'পেমেন্টের সেটিংস', 'configuración de las formas de pago', 'ضبط وسائل الدفع', 'paramètres Modes de paiement', '付款方式设置'),
(764, 'paypal_settings', 'Paypal Settings', 'পেপাল সেটিংস', 'ajustes paypal', 'إعدادات باي بال', 'paramètres paypal', '贝宝设置'),
(765, 'stripe_settings', 'Stripe Settings', 'ডোরা সেটিংস', 'la configuración de la raya', 'إعدادات شريط', 'les paramètres de bande', '条纹设置'),
(766, 'shipment_settings', 'Shipment Settings', 'চালানের সেটিংস', 'Parámetros de distribución', 'ضبط شحنة', 'les paramètres d\'expédition', '出厂设置'),
(767, 'currency_settings', 'Currency Settings', 'মুদ্রা সেটিংস', 'configuración de moneda', 'إعدادات العملة', 'paramètres de devise', '货币设置'),
(768, 'exchange_rate', 'Exchange Rate', 'বিনিময় হার', 'tipo de cambio', 'سعر الصرف', 'taux de change', '汇率'),
(769, 'default', 'Default', 'ডিফল্ট', 'defecto', 'الافتراضي', 'défaut', '默认'),
(770, 'exchange_rate_updated', 'Exchange Rate Updated', 'বিনিময় হার আপডেট', 'tipo de cambio actualizado', 'سعر الصرف تحديثها', 'taux de change mis à jour', '汇率更新'),
(771, 'currency_published', 'Currency Published', 'মুদ্রা প্রকাশিত', 'la moneda publicada', 'العملة المنشورة', 'monnaie publié', '货币出版'),
(772, 'currency_unpublished', 'Currency Unpublished', 'মুদ্রা অপ্রকাশিত', 'la moneda no publicado', 'عملة غير منشورة', 'monnaie inédite', '货币未公布'),
(773, 'syncing..', 'Syncing..', 'সিঙ্ক ..', 'la sincronización ..', 'المزامنة ..', 'la synchronisation ..', '同步..'),
(774, '!', '!', '!', '!', '!', '!', '！'),
(775, 'sync', 'Sync', 'সুসংগত', 'sincronizar', 'مزامنة', 'synchroniser', '同步'),
(776, 'manage_faqs', 'Manage Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী পরিচালনা', 'gestionar faqs', 'إدارة الأسئلة المتكررة', 'gérer faqs', '管理常见问题解答'),
(777, 'manage_staffs', 'Manage Staffs', 'কর্মীরা পরিচালনা', 'gestionar el personal', 'إدارة الموظفين', 'gérer le personnel', '管理人员'),
(778, 'add_staff', 'Add Staff', 'স্টাফ যোগ', 'añadir personal', 'إضافة الموظفين', 'ajouter du personnel', '增加员工'),
(779, 'create_admin', 'Create Admin', 'অ্যাডমিন তৈরি', 'crear administrador', 'إنشاء المشرف', 'créer administrateur', '创建管理员'),
(780, 'role', 'Role', 'ভূমিকা', 'papel', 'دور', 'rôle', '角色'),
(781, 'edit_admin', 'Edit Admin', 'সম্পাদনা অ্যাডমিন', 'edición de administración', 'تحرير المشرف', 'modifier administrateur', '编辑管理'),
(782, 'sddress', 'Sddress', 'sddress', 'sddress', 'sddress', 'sddress', 'sddress'),
(783, 'Manage_roles', 'Manage Roles', 'ভূমিকা পরিচালনা', 'administrar roles', 'إدارة الأدوار', 'Gérer les rôles', '管理角色'),
(784, 'add_role', 'Add Role', 'ভূমিকা যোগ', 'añadir papel', 'إضافة دور', 'ajouter rôle', '添加角色'),
(785, 'create_role', 'Create Role', 'ভূমিকা তৈরি', 'crear papel', 'إنشاء دور', 'créer rôle', '创建角色'),
(786, 'back_to_role_list', 'Back To Role List', 'ফিরে ভূমিকা লিস্টে', 'volver a la lista de papel', 'العودة إلى قائمة دور', 'Retour à la liste de rôles', '回到角色列表'),
(787, 'edit_role', 'Edit Role', 'সম্পাদনা ভূমিকা', 'edición papel', 'تحرير الدور', 'modifier rôle', '编辑角色'),
(788, 'permissions', 'Permissions', 'অনুমতি', 'permisos', 'أذونات', 'autorisations', '权限'),
(789, 'manage_SEO', 'Manage SEO', 'এসইও পরিচালনা', 'gestionar SEO', 'إدارة كبار المسئولين الاقتصاديين', 'gérer SEO', 'SEO管理'),
(790, 'settings', 'Settings', 'সেটিংস', 'ajustes', 'إعدادات', 'paramètres', '设置'),
(791, 'social_network_reach', 'Social Network Reach', 'সামাজিক নেটওয়ার্ক নাগালের', 'alcance de la red social,', 'الوصول إلى الشبكة الاجتماعية', 'la portée du réseau social', '社会网络覆盖'),
(792, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'আলেক্সা ট্রাফিক মেট্রিক্স', 'métricas de tráfico de Alexa', 'مقاييس المرور اليكسا', 'alexa métriques de trafic', 'Alexa的流量指标'),
(793, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'আলেক্সা ট্রাফিক গ্রাফ', 'gráficos de tráfico de Alexa', 'الرسوم البيانية المرور اليكسا', 'graphes de trafic alexa', 'Alexa的流量图'),
(794, 'search_index', 'Search Index', 'খোঁজের', 'índice de búsqueda', 'فهرس البحث', 'index de recherche', '搜索索引'),
(795, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'আলেক্সা ট্রাফিক র্যাঙ্ক', 'rango de tráfico Alexa', 'اليكسا رتبة المرور', 'alexa rang du trafic', 'Alexa排名'),
(796, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'সার্চ ইঞ্জিন অপ্টিমাইজেশান পরিচালনা', 'gestionar la optimización de motores de búsqueda', 'إدارة محرك البحث الأمثل', 'gérer l\'optimisation des moteurs de recherche', '管理搜索引擎优化'),
(797, 'keywords', 'Keywords', 'কীওয়ার্ড', 'palabras clave', 'الكلمات المفتاحية', 'mots clés', '关键字'),
(798, 'revisit_after', 'Revisit After', 'পরে পরিদর্শন', 'después de revisar', 'إعادة النظر بعد', 'revoir après', '后重温'),
(799, 'sitemap_link', 'Sitemap Link', 'সাইটম্যাপ লিংক', 'mapa del sitio,', 'رابط خريطة الموقع', 'lien sitemap', '网站地图链接'),
(800, 'admin_login_logo', 'Admin Login Logo', 'অ্যাডমিন লগইন লোগো', 'logotipo de inicio de sesión de administrador', 'المشرف شعار تسجيل الدخول', 'admin login logo', '管理员登录标识'),
(801, 'home_top_logo', 'Home Top Logo', 'হোম শীর্ষ লোগো', 'top logo casa', 'المنزل أعلى الشعار', 'accueil top logo', '家顶级标志'),
(802, 'home_bottom_logo', 'Home Bottom Logo', 'হোম নীচে লোগো', 'logo inferior', 'منزل أسفل الشعار', 'fond de la maison logo', '家庭底部标志'),
(803, 'manage_profile', 'Manage Profile', 'প্রোফাইল পরিচালনা', 'administrar el perfil', 'إدارة الملف الشخصي', 'gérer le profil', '管理个人资料'),
(804, 'manage_details', 'Manage Details', 'বিবরণ পরিচালনা', 'gestionar los detalles', 'إدارة تفاصيل', 'gérer les détails', '细节管理'),
(805, 'profile_updated!', 'Profile Updated!', 'প্রোফাইল আপডেট!', '¡Perfil actualizado!', 'تحديث الملف الشخصي!', 'Profil mis à jour!', '个人资料已更新！'),
(806, 'update_profile', 'Update Profile', 'প্রফাইল হালনাগাদ', 'actualización del perfil', 'تحديث الملف', 'mettre à jour le profil', '更新个人信息'),
(807, 'change_password', 'Change Password', 'পাসওয়ার্ড পরিবর্তন', 'Cambia la contraseña', 'تغيير كلمة السر', 'changer le mot de passe', '更改密码'),
(808, 'current_password', 'Current Password', 'বর্তমান পাসওয়ার্ড', 'contraseña actual', 'كلمة السر الحالية', 'Mot de passe actuel', '当前密码'),
(809, 'new_password*', 'New Password*', 'নতুন পাসওয়ার্ড *', 'nueva contraseña*', 'كلمة السر الجديدة*', 'nouveau mot de passe*', '新密码*'),
(810, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'Confirmar contraseña', 'تأكيد كلمة المرور', 'Confirmez le mot de passe', '确认密码'),
(811, 'password_updated!', 'Password Updated!', 'পাসওয়ার্ড আপডেট করা!', '¡Contraseña actualiza!', 'تم تحديث كلمة السر!', 'Mot de passe mis à jour!', '密码更新！'),
(812, 'update_password', 'Update Password', 'আপডেটের পাসওয়ার্ড', 'Actualiza contraseña', 'كلمة التحديث', 'mise à jour le mot de passe', '更新密码'),
(813, 'password_mismatched', 'Password Mismatched', 'পাসওয়ার্ড সাথে অমিল', 'la contraseña no coinciden', 'كلمة المرور غير متطابقة', 'mot de passe dépareillés', '密码不匹配'),
(814, 'incorrect_password!', 'Incorrect Password!', 'ভুল পাসওয়ার্ড৤!', '¡contraseña incorrecta!', 'كلمة مرور غير صحيحة!', 'mot de passe incorrect!', '密码不正确！'),
(815, 'language_name', 'Language Name', 'ভাষার নাম', 'Nombre del lenguaje', 'اسم اللغة', 'Nom de la langue', '语言名称'),
(816, 'language_icon', 'Language Icon', 'ভাষা আইকন', 'icono de idioma', 'رمز لغة', 'icône de langue', '语言图标'),
(817, 'select_language_icon', 'Select Language Icon', 'ভাষা নির্বাচন আইকন', 'Icono de selección de idioma', 'رمز لغة حدد', 'Icône de sélection de la langue', '选择语言图标'),
(818, 'secret', 'Secret', 'গোপন', 'secreto', 'سر', 'secret', '秘密'),
(819, 'application_name', 'Application Name', 'আবেদনের নাম', 'Nombre de la aplicación', 'اسم التطبيق', 'Nom de l\'application', '应用名称'),
(820, 'client', 'Client', 'মক্কেল', 'cliente', 'زبون', 'client', '客户'),
(821, 'client_secret', 'Client Secret', 'ক্লায়েন্ট সিক্রেট', 'el secreto de cliente', 'سر العميل', 'secret client', '客户端密钥'),
(822, 'redirect', 'Redirect', 'পুনর্নির্দেশ', 'redirigir', 'إعادة توجيه', 'réorienter', '重定向'),
(823, 'key', 'Key', 'চাবি', 'llave', 'مفتاح', 'clé', '键'),
(824, 'visit_my_homepage', 'Visit My Homepage', 'আমার হোমপেজে যান', 'visite mi página de inicio', 'زيارة موقعي', 'visiter ma page d\'accueil', '访问我的主页'),
(825, 'membership_type', 'Membership Type', 'মেম্বারশিপ টাইপ', 'tipo de membresía', 'نوع العضوية', 'Type d\'adhésion', '会员类型'),
(826, 'membership_details', 'Membership Details', 'সদস্য বিবরণ', 'detalles de la adhesión', 'تفاصيل العضوية', 'les détails d\'adhésion', '会员资料，'),
(827, 'membership_expiration', 'Membership Expiration', 'সদস্য মেয়াদপূর্তির', 'vencimiento de la suscripción', 'انتهاء عضوية', 'expiration de l\'adhésion', '会员到期'),
(828, 'total_uploaded_products', 'Total Uploaded Products', 'মোট আপলোড পণ্য', 'productos totales cargados', 'مجموع المنتجات التي تم تحميلها.', 'produits totaux téléchargés', '总上传产品'),
(829, 'uploaded_published_products', 'Uploaded Published Products', 'আপলোড প্রকাশিত পণ্য', 'productos publicados subidas', 'منتجات المنشورة التي تم تحميلها', 'produits publiés téléchargés', '上传发布的产品'),
(830, 'vendorship_timespan', 'Vendorship Timespan', 'vendorship timespan', 'intervalo de tiempo vendorship', 'vendorship زمنية', 'vendorship timespan', 'vendorship时间跨度'),
(831, 'remaining', 'Remaining', 'অবশিষ্ট', 'restante', 'المتبقية', 'restant', '其余'),
(832, 'paid_by_customers', 'Paid By Customers', 'গ্রাহকদের দ্বারা দেওয়া', 'pagados por los clientes', 'المدفوعة من قبل العملاء', 'payés par les clients', '由客户支付'),
(833, 'due_from_admin', 'Due From Admin', 'অ্যাডমিন থেকে কারণে', 'por admin', 'بسبب من المشرف', 'en raison de l\'administrateur', '应收管理'),
(834, 'payment_settings', 'Payment Settings', 'পেমেন্ট সেটিংস', 'la configuración de pagos', 'إعدادات الدفع', 'paramètres de paiement', '付款设置'),
(835, 'upgrade_package', 'Upgrade Package', 'আপগ্রেড প্যাকেজ', 'paquete de actualización', 'حزمة الترقية', 'package de mise à niveau', '升级包'),
(836, 'manage_your_product_stock', 'Manage Your Product Stock', 'আপনার পণ্য স্টক পরিচালনা', 'gestionar su stock de productos', 'إدارة المخزون المنتج الخاص بك', 'gérer votre stock de produits', '管理你的产品库存'),
(837, 'select_category', 'Select Category', 'বিভাগ নির্বাচন করুন', 'selecciona una categoría', 'اختر الفئة', 'Choisir une catégorie', '选择类别'),
(838, 'choose_product', 'Choose Product', 'পণ্য চয়ন', 'elegir el producto', 'اختيار المنتج', 'choisir le produit', '选择产品'),
(839, 'manage_public_profile_slider', 'Manage Public Profile Slider', 'সর্বজনীন প্রোফাইল স্লাইডার পরিচালনা', 'gestionar deslizador perfil público', 'إدارة المنزلق ملفه الشخصي', 'gérer le profil curseur publique', '管理的公众形象滑块'),
(840, 'home_page_style', 'Home Page Style', 'হোম পৃষ্ঠা শৈলী', 'estilo de página de inicio', 'أسلوب الصفحة الرئيسية', 'la page d\'accueil de style', '主页风格'),
(841, 'manage_site', 'Manage Site', 'সাইট পরিচালনা', 'administrar sitio', 'إدارة الموقع', 'gérer le site', '管理网站'),
(842, 'vendor_images', 'Vendor Images', 'ভেন্ডর চিত্র', 'imágenes de los proveedores', 'الصور مورد معين لل', 'images fournisseurs', '厂商图片'),
(843, 'social_media', 'Social Media', 'সামাজিক মাধ্যম', 'medios de comunicación social', 'وسائل التواصل الاجتماعي', 'média sociaux', '社交媒体'),
(844, 'SEO', 'SEO', 'এসইও', 'SEO', 'كبار المسئولين الاقتصاديين', 'référencement', '搜索引擎优化'),
(845, 'select_images', 'Select Images', 'চিত্র নির্বাচন করুন', 'seleccionar las imágenes', 'صور مختارة', 'sélectionner les images', '选择图片'),
(846, 'suggested_width', 'Suggested Width', 'প্রস্তাবিত প্রস্থ', 'ancho sugerido', 'عرض المقترح', 'largeur suggérée', '建议宽度'),
(847, 'height', 'Height', 'উচ্চতা', 'altura', 'ارتفاع', 'la taille', '高度'),
(848, 'cover_photo', 'Cover Photo', 'প্রচ্ছদ ছবি', 'foto de cubierta', 'صورة الغلاف', 'photo de couverture', '封面照片'),
(849, 'select_photo', 'Select Photo', 'ছবি নির্বাচন করুন', 'seleccione Foto', 'اختر الصورة', 'select photo', '选择照片'),
(850, 'manage_payment_receiving_settings', 'Manage Payment Receiving Settings', 'পেমেন্ট পাওয়ার সেটিংস পরিচালনা', 'administrar la configuración de recepción de pago', 'إدارة إعدادات دفع المتلقي', 'gérer les paramètres de réception de paiement', '管理支付接收设置'),
(851, 'upgrade', 'Upgrade', 'আপগ্রেড', 'mejorar', 'تطوير', 'surclassement', '升级'),
(852, 'maximum_product', 'Maximum Product', 'সর্বাধিক পণ্য', 'máxima del producto', 'الحد الأقصى المنتج', 'produit maximale', '产品最大'),
(853, 'about', 'About', 'সম্বন্ধে', 'acerca de', 'حول', 'sur', '关于'),
(854, 'oops', 'Oops', 'ওহো', 'Uy', 'عفوا', 'Oops', '哎呀'),
(855, 'the_page_you_requested_was_not_found', 'The Page You Requested Was Not Found', 'আপনার অনুরোধ পাতা পাওয়া যায় না', 'la página solicitada no se ha encontrado', 'الصفحة المطلوبة غير متوفرة', 'La page que vous avez demandée n\'a pas été trouvée', '未找到您所请求的页面'),
(856, 'back_to_home', 'Back To Home', 'বাড়িতে ফিরে যাও', 'de vuelta a casa', 'العودة إلى المنزل', 'de retour à la maison', '返回首页'),
(857, 'browse', 'Browse', 'ব্রাউজ', 'vistazo', 'تصفح', 'Feuilleter', '浏览'),
(858, 'sort_by', 'Sort By', 'ক্রমানুসার', 'ordenar por', 'ترتيب حسب', 'Trier par', '排序方式'),
(859, 'price_low_to_high', 'Price Low To High', 'মূল্য কম থেকে', 'precios de barato a caro', 'السعر على ارتفاع منخفض', 'prix croissant', '价格从低到高'),
(860, 'price_high_to_low', 'Price High To Low', 'মূল্য থেকে কম', 'Precio mayor a menor', 'السعر الاعلى الى الادنى', 'prix décroissant', '价格高到低'),
(861, 'oldest', 'Oldest', 'প্রবীণতম', 'más antiguo', 'أقدم', 'la plus ancienne', '最老的'),
(862, 'newest', 'Newest', 'নতুন', 'el más nuevo', 'أحدث', 'le plus récent', '最新'),
(863, 'sold_by_:', 'Sold By :', 'বিক্রিত :', 'vendido por :', 'تم بيعها من قبل :', 'vendu par :', '所售 ：'),
(864, 'price_:', 'Price :', 'মূল্য:', 'precio:', 'السعر :', 'prix :', '价钱 ：'),
(865, 'discount:_', 'Discount: ', 'ছাড়: ', 'descuento: ', 'خصم: ', 'remise: ', '折扣： '),
(866, '_available', ' Available', ' সহজলভ্য', ' disponible', ' متاح', ' disponible', ' 可用的'),
(867, '_add_to_wishlist', ' Add To Wishlist', ' চাহিদাপত্রে যোগ করা', ' añadir a la lista de deseos', ' إضافة إلى سلة', ' ajouter à la liste de souhaits', ' 加入收藏'),
(868, '_compare', ' Compare', ' তুলনা করা', ' comparar', ' قارن', ' comparer', ' 比较'),
(869, 'sold_category_of_vendor', 'Sold Category Of Vendor', 'বিক্রেতার বিভাগ বিক্রি', 'categoría vendidos del proveedor', 'فئة بيعها من المورد', 'catégorie vendu du vendeur', '供应商出售类'),
(870, 'recent', 'Recent', 'সাম্প্রতিক', 'reciente', 'الأخيرة', 'récent', '最近'),
(871, 'our_vendors_location', 'Our Vendors Location', 'আমাদের বিক্রেতারা অবস্থান', 'nuestra ubicación vendedores', 'البائعين لدينا موقع', 'notre emplacement des fournisseurs', '我们的供应商的位置'),
(872, 'search_vendors', 'Search Vendors', 'অনুসন্ধান বিক্রেতারা', 'proveedores de búsqueda', 'الباعة البحث', 'les fournisseurs de recherche', '搜索厂商'),
(873, 'go', 'Go', 'যাওয়া', 'ir', 'اذهب', 'aller', '走'),
(874, 'our_vendors', 'Our Vendors', 'আমাদের বিক্রেতারা', 'nuestros proveedores', 'موردينا', 'nos fournisseurs', '我们的供应商'),
(875, 'message_sent!', 'Message Sent!', 'বার্তা পাঠানো!', '¡mensaje enviado!', 'تم الارسال!', 'message envoyé!', '消息发送！'),
(876, 'incorrect_captcha!', 'Incorrect Captcha!', 'ভুল ক্যাপচা!', '¡CAPTCHA incorrecto!', 'كلمة التحقق غير صحيح!', 'Captcha incorrecte!', '验证码不正确！'),
(877, 'about_us', 'About Us', 'আমাদের সম্পর্কে', 'sobre nosotros', 'معلومات عنا', 'à propos de nous', '关于我们'),
(878, 'contact_form', 'Contact Form', 'যোগাযোগ ফর্ম', 'Formulario de contacto', 'نموذج الاتصال', 'formulaire de contact', '联系表'),
(879, 'sending..', 'Sending..', 'পাঠানোর ..', 'enviando..', 'إرسال..', 'envoi..', '发送..'),
(880, 'send_message', 'Send Message', 'বার্তা পাঠান', 'enviar mensaje', 'إرسال رسالة', 'envoyer le message', '发信息'),
(881, 'enter_valid_email_address', 'Enter Valid Email Address', 'বৈধ ই-মেইল ঠিকানা লিখুন', 'introduzca la dirección de correo electrónico válida', 'أدخل عنوان بريد إلكتروني صالح', 'entrez l\'adresse e-mail valide', '输入有效电子邮件地址'),
(882, 'message_sent_successfully', 'Message Sent Successfully', 'বার্তাটি সফলভাবে পাঠানো', 'Mensaje enviado con éxito', 'الرسالة أرسلت بنجاح', 'message envoyé avec succès', '消息发送成功'),
(883, 'incorrect_information!Check agian', 'Incorrect Information!Check Agian', 'ভুল তথ্য! চেক ইন করুন', 'información incorrecta! Llegada', 'معلومات غير صحيحة! تحقق في', 'des informations incorrectes! Arrivée', '不正确的信息！入住'),
(884, 'this_filed_is_required!', 'This Filed Is Required!', 'এই মামলা দায়ের করা প্রয়োজন বোধ করা হয়!', 'Este campo es necesario!', 'هذه المقدمة هو مطلوب!', 'ce dépôt est nécessaire!', '该申请要求！'),
(885, 'frequently_asked_questions', 'Frequently Asked Questions', 'সচরাচর জিজ্ঞাস্য', 'preguntas frecuentes', 'أسئلة مكررة', 'Questions fréquemment posées', '经常问的问题'),
(886, 'not_a_member_yet_?', 'Not A Member Yet ?', 'এখনো সদস্য নন ?', 'No eres miembro todavía ?', 'لست عضوا بعد ؟', 'Pas encore membre ?', '还不是会员？'),
(887, 'sign_up_now!', 'Sign Up Now!', 'এখন সাইন আপ!', 'inscribirse ahora!', 'أفتح حساب الأن!', 's\'inscrire maintenant!', '立即注册！'),
(888, 'forget_your_password_?', 'Forget Your Password ?', 'আপনার পাসওয়ার্ড ভুলে গেছেন ?', 'Olvidaste tu contraseña ?', 'نسيت كلمة المرور ؟', 'Mot de passe oublié ?', '忘记密码 ？'),
(889, 'sign_in_with_facebook', 'Sign In With Facebook', 'ফেসবুকে সাইন - ইন করুন', 'Iniciar sesión usando Facebook', 'قم بتسجيل الدخول باستخدام الفيسبوك', 'Connectez-vous avec Facebook', '请用facebook'),
(890, 'sign_in_with_google', 'Sign In With Google', 'গুগল সাইন ইন', 'inicia sesión con Google', 'تسجيل الدخول مع جوجل', 'connectez-vous avec Google', '在与谷歌'),
(891, 'submit', 'Submit', 'জমা', 'enviar', 'عرض', 'soumettre', '提交'),
(892, 'already_a_member_?_click_to_', 'Already A Member ? Click To ', 'ইতিমধ্যে সদস্য? </font><font>ক্লিক করুন', 'Ya eres usuario ? </font><font>haga clic para', 'عضوا فعلا ؟ </font><font>انقر ل', 'Déjà membre ? </font><font>cliquez pour', '已经是会员 ？</font><font>点击'),
(893, 'as_customer', 'As Customer', 'গ্রাহক হিসাবে', 'como cliente', 'كما العملاء', 'en tant que client', '为客户'),
(894, '_or_', ' Or ', ' অথবা ', ' o ', ' أو ', ' ou ', ' 要么 '),
(895, 'sign_up', 'Sign Up', 'নিবন্ধন করুন', 'Regístrate', 'سجل', 's\'inscrire', '注册'),
(896, 'as_vendor', 'As Vendor', 'বিক্রেতা হিসাবে', 'como proveedor', 'كما بائع', 'en tant que vendeur', '（作为卖方）'),
(897, 'registering..', 'Registering..', 'নিবন্ধনের ..', 'registrarse ..', 'تسجيل ..', 'enregistrement..', '注册..'),
(898, 'register', 'Register', 'নিবন্ধন', 'registro', 'تسجيل', 'registre', '寄存器'),
(899, 'already_a_vendor_?_click_to_', 'Already A Vendor ? Click To ', 'ইতিমধ্যে একটি বিক্রেতা? </font><font>ক্লিক করুন', 'ya un vendedor? </font><font>haga clic para', 'بالفعل بائع؟ </font><font>انقر ل', 'déjà un fournisseur? </font><font>cliquez pour', '已供应商？</font><font>点击'),
(900, 'not_a_member_yet_?_click_to_', 'Not A Member Yet ? Click To ', 'এখনো সদস্য নন ? </font><font>ক্লিক করুন', 'No eres miembro todavía ? </font><font>haga clic para', 'لست عضوا بعد ؟ </font><font>انقر ل', 'Pas encore membre ? </font><font>cliquez pour', '还不是会员？</font><font>点击'),
(901, 'back_to_login', 'Back To Login', 'প্রবেশ করতে পেছান', 'atrás para iniciar sesión', 'العودة لتسجيل الدخول', 'retour connexion', '回到登录'),
(902, 'reset_compare_list', 'Reset Compare List', 'তালিকা তুলনা রিসেট', 'restablecer la lista de comparación', 'إعادة تعيين قائمة المقارنة', 'réinitialiser la liste de comparaison', '复位对比清单'),
(903, 'choose_a_product', 'Choose A Product', 'একটি পণ্য চয়ন', 'elegir un producto', 'اختيار المنتج', 'choisir un produit', '选择一个产品'),
(904, 'my_cart', 'My Cart', 'আমার ট্রলি', 'mi carrito', 'سلتي', 'mon panier', '我的车'),
(905, '1', '1', '1', '1', '1', '1', '1'),
(906, 'orders', 'Orders', 'আদেশ', 'pedidos', 'أوامر', 'ordres', '命令'),
(907, '2', '2', '2', '2', '2', '2', '2'),
(908, 'delivery_address', 'Delivery Address', 'সরবরাহের ঠিকানা', 'dirección de entrega', 'عنوان التوصيل', 'adresse de livraison', '邮寄地址'),
(909, '3', '3', '3', '3', '3', '3', '3'),
(910, 'payments_options', 'Payments Options', 'পেমেন্ট অপশন', 'opciones de pago', 'خيارات الدفع', 'Options de paiement', '支付选项'),
(911, 'cancel_order', 'Cancel Order', 'আদেশ বাতিল', 'cancelar orden', 'الغاء الطلب', 'annuler la commande', '取消订单'),
(912, 'place_order', 'Place Order', 'জায়গা অর্ডার', 'realizar pedido', 'أمر مكان', 'Passer la commande', '下订单'),
(913, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'mi perfil', 'ملفي الشخصي', 'mon profil', '我的简历'),
(914, 'wishlist', 'Wishlist', 'ইচ্ছেতালিকা', 'Lista de deseos', 'مفضلة', 'Liste de souhaits', '愿望清单'),
(915, 'unit_price', 'Unit Price', 'একক দাম', 'precio unitario', 'سعر الوحدة', 'prix unitaire', '单价'),
(916, 'change_choices', 'Change Choices', 'পরিবর্তন পছন্দ', 'opciones de cambio', 'خيارات التغيير', 'choix de changement', '变化的选择'),
(917, 'shopping_cart', 'Shopping Cart', 'বাজারের ব্যাগ', 'carrito de compras', 'عربة التسوق', 'Panier', '购物车'),
(918, 'coupon_discount', 'Coupon Discount', 'কুপন ডিসকাউন্ট', 'cupón de descuento', 'قسيمة خصم', 'bon de réduction', '优惠券折扣'),
(919, 'enter_your_coupon_code_if_you_have_one', 'Enter Your Coupon Code If You Have One', 'যদি কেউ থাকেন আপনার কুপন কোড লিখুন', 'introduzca el código de cupón si usted tiene uno', 'إدخال رمز القسيمة إذا كان لديك واحدة', 'entrez votre code de coupon si vous en avez un', '输入您的优惠券代码，如果你有一个'),
(920, 'apply_coupon', 'Apply Coupon', 'কুপন প্রয়োগ করুন', 'Aplicar cupón', 'تطبيق القسيمة', 'Appliquer Coupon', '申请优惠券'),
(921, 'postcode/ZIP', 'Postcode/ZIP', 'পিন কোড / জিপ', 'código postal / postal', 'الرمز البريدي / الرمز البريدي', 'code postal / ZIP', '邮编/ ZIP'),
(922, 'ship_to_different_address_for_invoice', 'Ship To Different Address For Invoice', 'চালান জন্য বিভিন্ন ঠিকানায় জাহাজ', 'nave a otra dirección para la factura', 'سفينة إلى عنوان مختلف عن فاتورة', 'navire à l\'adresse différente pour la facture', '船到不同的地址发票'),
(923, 'paypal', 'Paypal', 'পেপাল', 'paypal', 'باي بال', 'paypal', '贝宝'),
(924, 'stripe', 'Stripe', 'ডোরা', 'raya', 'شريط', 'bande', '条纹'),
(925, 'invoice_paper', 'Invoice Paper', 'চালান কাগজ', 'el papel de la factura', 'ورقة الفاتورة', 'facture papier', '发票纸'),
(926, 'invoice_no', 'Invoice No', 'চালান নং', 'factura no', 'رقم الفاتورة', 'facturera pas', '发票号码'),
(927, 'client_information:', 'Client Information:', 'ক্লায়েন্ট তথ্য:', 'información del cliente:', 'معلومات العميل:', 'informations sur le client:', '客户资料：'),
(928, 'first_name:', 'First Name:', 'প্রথম নাম:', 'nombre de pila:', 'الاسم الاول:', 'Prénom:', '名字：'),
(929, 'last_name:', 'Last Name:', 'নামের শেষাংশ:', 'apellido:', 'الكنية:', 'nom de famille:', '姓：'),
(930, 'peyment_details_:', 'Peyment Details :', 'peyment বিবরণ:', 'peyment detalles:', 'تفاصيل PEYMENT:', 'détails peyment:', 'peyment详细信息：'),
(931, 'payment_status_:', 'Payment Status :', 'লেনদেনের অবস্থা :', 'estado de pago :', 'حالة السداد :', 'statut de paiement :', '支付状态 ：'),
(932, 'payment_method_:', 'Payment Method :', 'মূল্যপরিশোধ পদ্ধতি :', 'método de pago :', 'طريقة الدفع او السداد :', 'mode de paiement :', '付款方法 ：'),
(933, 'invoice', 'Invoice', 'চালান', 'factura', 'فاتورة', 'facture d\'achat', '发票'),
(934, 'billed_to', 'Billed To', 'বিল', 'facturado a', 'وصفت ل', 'facturé à', '付款人'),
(935, 'shipped_to', 'Shipped To', 'বিক্রী', 'enviado a', 'تم شحنها إلي', 'expédiés à', '运到'),
(936, 'order_date', 'Order Date', 'অর্ডারের তারিখ', 'fecha de orden', 'تاريخ الطلب', 'date de commande', '订购日期'),
(937, 'order_history', 'Order History', 'অর্ডার ইতিহাস', 'Historial de pedidos', 'تاريخ الطلب', 'Historique des commandes', '订单历史'),
(938, 'downloads', 'Downloads', 'ডাউনলোড', 'descargas', 'التنزيلات', 'téléchargements', '下载'),
(939, 'edit_profile', 'Edit Profile', 'প্রোফাইল সম্পাদনা', 'Editar perfil', 'تعديل الملف الشخصي', 'modifier le profil', '编辑个人资料'),
(940, 'support_ticket', 'Support Ticket', 'সমর্থন টিকেট', 'boleto de apoyo', 'بطاقة الدعم', 'ticket de support', '支持票'),
(941, 'change_profile_picture', 'Change Profile Picture', 'প্রোফাইল ছবি পরিবর্তন', 'cambiar foto de perfil', 'تغيير الصورة الشخصية', 'modifier la photo de profil', '更改资料图片'),
(942, 'profile_picture_saved_successfully!', 'Profile Picture Saved Successfully!', 'প্রোফাইল ছবি সফলভাবে সংরক্ষিত!', 'foto de perfil guardado correctamente!', 'الصورة الشخصية المحفوظة بنجاح!', 'photo de profil enregistré avec succès!', '资料图片保存成功！'),
(943, 'edit_failed!', 'Edit Failed!', 'সম্পাদনা ব্যর্থ হয়েছে!', 'edición no!', 'تحرير فشل!', 'edit a échoué!', '编辑失败！'),
(944, 'try_again!', 'Try Again!', 'আবার চেষ্টা কর!', '¡Inténtalo de nuevo!', 'حاول ثانية!', 'réessayer!', '再试一次！'),
(945, 'save_changes', 'Save Changes', 'পরিবর্তনগুলোর সংরক্ষন', 'guardar cambios', 'حفظ التغييرات', 'Sauvegarder les modifications', '保存更改'),
(946, 'profile_information', 'Profile Information', 'জীবন তথ্য', 'información del perfil', 'معلومات الملف الشخصي', 'Informations sur le profil', '档案信息'),
(947, 'last_7_days', 'Last 7 Days', 'গত 7 দিনে', 'Los últimos 7 días', '7 أيام الماضية', 'les 7 derniers jours', '过去7天'),
(948, 'last_30_days', 'Last 30 Days', 'শেষ 30 দিন', 'últimos 30 días', 'أخر 30 يوم', 'les 30 derniers jours', '最近30天'),
(949, 'wished_products', 'Wished Products', 'আকাঙ্ক্ষিত পণ্য', 'productos deseados', 'منتجات تمنى', 'produits souhaités', '希望产品'),
(950, 'user_since', 'User Since', 'ব্যবহারকারী থেকে', 'usuario desde', 'مستخدم منذ', 'utilisateur depuis', '用户自'),
(951, 'last_login', 'Last Login', 'গত লগইন', 'último acceso', 'آخر تسجيل دخول', 'Dernière connexion', '上次登录'),
(952, 'contact_no', 'Contact No', 'যোগাযোগের নম্বর', 'póngase en contacto con ningún', 'رقم الاتصال', 'contactez pas', '联系方式'),
(953, 'your_wishlist', 'Your Wishlist', 'আপনার ইচ্ছা তালিকা', 'tu lista de deseos', 'سلة المفضلة', 'votre liste', '您的愿望清单'),
(954, 'availability', 'Availability', 'উপস্থিতি', 'disponibilidad', 'توفر', 'disponibilité', '可用性'),
(955, 'purchase', 'Purchase', 'ক্রয়', 'compra', 'شراء', 'achat', '采购'),
(956, 'available', 'Available', 'সহজলভ্য', 'disponible', 'متاح', 'disponible', '可用的'),
(957, 'your_order_history', 'Your Order History', 'আপনার অর্ডার ইতিহাস', 'su historial de pedidos', 'تاريخ طلبك', 'historique de vos commandes', '您的订单历史记录'),
(958, 'your_downloads', 'Your Downloads', 'আপনার ডাউনলোড', 'sus descargas', 'برامجك', 'vos téléchargements', '您的下载'),
(959, 'downloading..', 'Downloading..', 'ডাউনলোডিং ..', 'descargan ..', 'تحميل ..', 'téléchargement en cours..', '下载..'),
(960, 'download_permission_denied', 'Download Permission Denied', 'ডাউনলোড অনুমতি অস্বীকার', 'Descarga permiso denegado', 'تحميل تم رفض الإذن', 'téléchargement permission refusée', '下载权限被拒绝'),
(961, 'personal_info', 'Personal Info', 'ব্যাক্তিগত তথ্য', 'información personal', 'معلومات شخصية', 'Informations personnelles', '个人信息'),
(962, 'change_your_profile_information', 'Change Your Profile Information', 'আপনার প্রোফাইলের তথ্য পরিবর্তন', 'cambiar la información de su perfil', 'تغيير معلومات الملف الشخصي', 'modifier vos informations de profil', '更改您的个人信息'),
(963, 'address 1', 'Address 1', 'ঠিকানা 1', 'Dirección 1', 'العنوان 1', 'Adresse 1', '地址1'),
(964, 'address 2', 'Address 2', 'ঠিকানা ২', 'dirección 2', 'العنوان 2', 'Adresse 2', '地址2'),
(965, 'skype', 'Skype', 'স্কাইপ', 'Skype', 'سكايب', 'skype', 'Skype的'),
(966, 'google_plus', 'Google Plus', 'গুগল প্লাস', 'google plus', 'جوجل بلس', 'google plus', '谷歌加'),
(967, 'facebook', 'Facebook', 'ফেইসবুক', 'Facebook', 'فيس بوك', 'Facebook', 'Facebook的'),
(968, 'info_update_unsuccessful!', 'Info Update Unsuccessful!', 'তথ্য আপডেট অসফল!', 'información de actualización sin éxito!', 'معلومات تحديث تنجح!', 'Info mise à jour échoue!', '信息更新不成功！'),
(969, 'info_updated_successfully!', 'Info Updated Successfully!', 'তথ্য সফলভাবে আপডেট!', 'información actualizada correctamente!', 'معلومات محدثة بنجاح!', 'Renseignements mis à jour avec succès!', '信息更新成功！'),
(970, 'change_your_password', 'Change Your Password', 'আপনার পাসওয়ার্ড পরিবর্তন করুন', 'cambia tu contraseña', 'غير كلمة المرور الخاصة بك', 'changez votre mot de passe', '更改您的密码'),
(971, 'old_password', 'Old Password', 'পুরাতন পাসওয়ার্ড', 'Contraseña anterior', 'كلمة المرور القديمة', 'ancien mot de passe', '旧密码'),
(972, 'new_password', 'New Password', 'নতুন পাসওয়ার্ড', 'nueva contraseña', 'كلمة السر الجديدة', 'nouveau mot de passe', '新密码'),
(973, 'confirm_new_password', 'Confirm New Password', 'নিশ্চিত কর নতুন গোপননম্বর', 'confirmar nueva contraseña', 'تأكيد كلمة المرور الجديدة', 'confirmer le nouveau mot de passe', '确认新密码'),
(974, 'password_change_unsuccessful!', 'Password Change Unsuccessful!', 'পাসওয়ার্ড পরিবর্তন অসফল!', 'cambio de contraseña incorrecto!', 'تغيير كلمة المرور غير ناجحة!', 'changement de mot de passe échoue!', '密码修改成功！'),
(975, 'password_changed_successfully!', 'Password Changed Successfully!', 'পাসওয়ার্ড সফলভাবে পরিবর্তন!', '¡Contraseña cambiada con éxito!', 'تم تغيير الرقم السري بنجاح!', 'Le mot de passe a été changé avec succès!', '密码修改成功！'),
(976, 'all_messages', 'All Messages', 'সব বার্তা', 'todos los mensajes', 'جميع الرسائل', 'tous les messages', '所有消息'),
(977, 'create_ticket', 'Create Ticket', 'টিকিট তৈরি', 'crear un billete', 'إنشاء تذكرة', 'créer billet', '创建票'),
(978, 'ticket_subject', 'Ticket Subject', 'টিকেট বিষয়', 'en su asunto', 'تذكرة الموضوع', 'sujet du ticket', '单主题'),
(979, 'comment', 'Comment', 'মন্তব্য', 'comentario', 'التعليق', 'commentaire', '评论'),
(980, 'creating...', 'Creating...', 'তৈরি ...', 'la creación de ...', 'إنشاء...', 'la création ...', '创建...'),
(981, 'ticket_created_successfully', 'Ticket Created Successfully', 'টিকেট সফলভাবে তৈরি', 'ticket creado con éxito', 'تذكرة إنشاؤها بنجاح', 'ticket créé avec succès', '票成功创建'),
(982, 'ticket_creation_unsuccessful', 'Ticket Creation Unsuccessful', 'টিকেট সৃষ্টি অসফল', 'la creación de tickets sin éxito', 'إنشاء تذكرة ناجحة', 'création de billets infructueuses', '单创建不成功'),
(983, 'create', 'Create', 'সৃষ্টি', 'crear', 'خلق', 'Créer', '创建'),
(984, 'your_message', 'Your Message', 'তোমার বার্তা', 'tu mensaje', 'رسالتك', 'votre message', '你的信息'),
(985, 'replying...', 'Replying...', 'জবাব ...', 'respondiendo ...', 'الرد ...', 'répondre ...', '回复...'),
(986, 'reply_sent_successfully', 'Reply Sent Successfully', 'উত্তর সফলভাবে পাঠানো', 'Respuesta enviada con éxito', 'الرد إرسالها بنجاح', 'réponse envoyé avec succès', '回复发送成功'),
(987, 'unsuccessful', 'Unsuccessful', 'ব্যার্থ', 'fracasado', 'غير ناجح', 'infructueux', '不成功'),
(988, 'vendor_public_home', 'Vendor Public Home', 'বিক্রেতা পাবলিক হোম', 'casa pública proveedor', 'البيت العام الباعة من', 'accueil du public fournisseur', '供应商的众家'),
(989, 'member_since', 'Member Since', 'সদস্য থেকে', 'Miembro desde', 'عضو منذ', 'membre depuis', '会员自'),
(990, 'vendor_rating', 'Vendor Rating', 'বিক্রেতার রেটিং', 'calificación de proveedor', 'تصنيفهم', 'Note fournisseur', '卖方评级'),
(991, 'about_vendor', 'About Vendor', 'বিক্রেতা সম্পর্কে', 'sobre el vendedor', 'حول بائع', 'à propos de fournisseur', '有关供应商'),
(992, 'find_location', 'Find Location', 'অবস্থান খুঁজে', 'encontrar la ubicación', 'العثور على الموقع', 'trouver l\'emplacement', '找到位置'),
(993, 'filters', 'Filters', 'ফিল্টার', 'filtros', 'مرشحات', 'filtres', '过滤器'),
(994, 'vendor_featured_product', 'Vendor Featured Product', 'বিক্রেতার বৈশিষ্ট্যযুক্ত পণ্য', 'proveedor del producto ofrecido', 'بائع المنتج المميز', 'fournisseur produit vedette', '供应商的特色产品'),
(995, 'added_to_wishlist', 'Added To Wishlist', NULL, NULL, NULL, NULL, NULL),
(996, 'all_category', 'All Category', NULL, NULL, NULL, NULL, NULL),
(997, 'by', 'By', NULL, NULL, NULL, NULL, NULL),
(998, 'sold_by', 'Sold By', NULL, NULL, NULL, NULL, NULL),
(999, 'last_updated', 'Last Updated', NULL, NULL, NULL, NULL, NULL),
(1000, 'review(s)', 'Review(s)', NULL, NULL, NULL, NULL, NULL),
(1001, 'add_your_review', 'Add Your Review', NULL, NULL, NULL, NULL, NULL),
(1002, 'view_details', 'View Details', NULL, NULL, NULL, NULL, NULL),
(1003, 'related_products', 'Related Products', NULL, NULL, NULL, NULL, NULL),
(1004, 'full_description', 'Full Description', NULL, NULL, NULL, NULL, NULL),
(1005, 'additional_specification', 'Additional Specification', NULL, NULL, NULL, NULL, NULL),
(1006, 'reviews', 'Reviews', NULL, NULL, NULL, NULL, NULL),
(1007, 'color_:', 'Color :', NULL, NULL, NULL, NULL, NULL),
(1008, 'pay_to_vendor', 'Pay To Vendor', NULL, NULL, NULL, NULL, NULL),
(1009, 'package_payments', 'Package Payments', NULL, NULL, NULL, NULL, NULL),
(1010, 'email_templates', 'Email Templates', NULL, NULL, NULL, NULL, NULL),
(1011, 'twocheckout_payment_enabled!', 'Twocheckout Payment Enabled!', NULL, NULL, NULL, NULL, NULL),
(1012, 'twocheckout_payment_disabled!', 'Twocheckout Payment Disabled!', NULL, NULL, NULL, NULL, NULL),
(1013, 'successfully_enabled!', 'Successfully Enabled!', NULL, NULL, NULL, NULL, NULL),
(1014, 'successfully_disabled!', 'Successfully Disabled!', NULL, NULL, NULL, NULL, NULL),
(1015, 'state', 'State', NULL, NULL, NULL, NULL, NULL),
(1016, 'country', 'Country', NULL, NULL, NULL, NULL, NULL),
(1017, 'i_agree_with', 'I Agree With', NULL, NULL, NULL, NULL, NULL),
(1018, 'terms_&_conditions', 'Terms & Conditions', NULL, NULL, NULL, NULL, NULL),
(1019, 'you_must_agree_to_terms_&_conditions', 'You Must Agree To Terms & Conditions', NULL, NULL, NULL, NULL, NULL),
(1020, 'blog_details', 'Blog Details', NULL, NULL, NULL, NULL, NULL),
(1021, 'blog_has_been_uploaded!', 'Blog Has Been Uploaded!', NULL, NULL, NULL, NULL, NULL),
(1022, 'sub-categories_(max 4)', 'Sub-categories (max 4)', NULL, NULL, NULL, NULL, NULL),
(1023, 'home_default_currency', 'Home Default Currency', NULL, NULL, NULL, NULL, NULL),
(1024, 'system_default_currency', 'System Default Currency', NULL, NULL, NULL, NULL, NULL),
(1025, 'all_currencies', 'All Currencies', NULL, NULL, NULL, NULL, NULL),
(1026, 'twocheckout_settings', 'Twocheckout Settings', NULL, NULL, NULL, NULL, NULL),
(1027, 'user_id', 'User Id', NULL, NULL, NULL, NULL, NULL),
(1028, 'secret_key', 'Secret Key', NULL, NULL, NULL, NULL, NULL),
(1029, 'account_type', 'Account Type', NULL, NULL, NULL, NULL, NULL),
(1030, 'twocheckout_activation', 'Twocheckout Activation', NULL, NULL, NULL, NULL, NULL),
(1031, 'twocheckout_payment_enabled', 'Twocheckout Payment Enabled', NULL, NULL, NULL, NULL, NULL),
(1032, 'twocheckout_payment_disabled', 'Twocheckout Payment Disabled', NULL, NULL, NULL, NULL, NULL),
(1033, 'terms_conditions', 'Terms Conditions', NULL, NULL, NULL, NULL, NULL),
(1034, 'edit_coupon', 'Edit Coupon', NULL, NULL, NULL, NULL, NULL),
(1035, 'coupon_discount_for', 'Coupon Discount For', NULL, NULL, NULL, NULL, NULL),
(1036, 'manage_pay_to_vendor', 'Manage Pay To Vendor', NULL, NULL, NULL, NULL, NULL),
(1037, 'digiproducts', 'Digiproducts', NULL, NULL, NULL, NULL, NULL),
(1038, 'No brands are available for this sub category', 'No Brands Are Available For This Sub Category', NULL, NULL, NULL, NULL, NULL),
(1039, 'smtp_settings', 'Smtp Settings', NULL, NULL, NULL, NULL, NULL),
(1040, 'smtp_status', 'Smtp Status', NULL, NULL, NULL, NULL, NULL),
(1041, 'smtp_host', 'Smtp Host', NULL, NULL, NULL, NULL, NULL),
(1042, 'smtp_port', 'Smtp Port', NULL, NULL, NULL, NULL, NULL),
(1043, 'smtp_user', 'Smtp User', NULL, NULL, NULL, NULL, NULL),
(1044, 'smtp_password', 'Smtp Password', NULL, NULL, NULL, NULL, NULL),
(1045, 'sign_up!', 'Sign Up!', NULL, NULL, NULL, NULL, NULL),
(1046, 'b', 'B', NULL, NULL, NULL, NULL, NULL),
(1047, 'clean', 'Clean', NULL, NULL, NULL, NULL, NULL),
(1048, 'about us', 'ABOUT US', NULL, NULL, NULL, NULL, NULL),
(1049, 'drinks', 'Drinks', NULL, NULL, NULL, NULL, NULL),
(1050, 'offers!', 'Offers!', NULL, NULL, NULL, NULL, NULL),
(1051, 'coupon_discount_activated', 'Coupon Discount Activated', NULL, NULL, NULL, NULL, NULL),
(1052, 'coupon_already_activated', 'Coupon Already Activated', NULL, NULL, NULL, NULL, NULL),
(1053, 'News_&_Events', 'News & Events', NULL, NULL, NULL, NULL, NULL),
(1054, 'news_&_blogs', 'News & Blogs', NULL, NULL, NULL, NULL, NULL),
(1055, 'please_fill_the_captcha', 'Please Fill The Captcha', NULL, NULL, NULL, NULL, NULL),
(1056, 'incorrect_information', 'Incorrect Information', NULL, NULL, NULL, NULL, NULL),
(1057, 'check_again', 'Check Again', NULL, NULL, NULL, NULL, NULL),
(1058, 'this_field_is_required!', 'This Field Is Required!', NULL, NULL, NULL, NULL, NULL),
(1059, 'news_&_Blog', 'News & Blog', NULL, NULL, NULL, NULL, NULL),
(1060, 'voguePay_payment_enabled!', 'VoguePay Payment Enabled!', NULL, NULL, NULL, NULL, NULL),
(1061, 'voguePay_payment_disabled!', 'VoguePay Payment Disabled!', NULL, NULL, NULL, NULL, NULL),
(1062, 'voguePay_activation', 'VoguePay Activation', NULL, NULL, NULL, NULL, NULL),
(1063, 'voguePay_payment_enabled', 'VoguePay Payment Enabled', NULL, NULL, NULL, NULL, NULL),
(1064, 'voguePay_payment_disabled', 'VoguePay Payment Disabled', NULL, NULL, NULL, NULL, NULL),
(1065, 'set_currency_format', 'Set Currency Format', NULL, NULL, NULL, NULL, NULL),
(1066, 'currency_format', 'Currency Format', NULL, NULL, NULL, NULL, NULL),
(1067, 'symbol_format', 'Symbol Format', NULL, NULL, NULL, NULL, NULL),
(1068, 'no_of_decimals', 'No Of Decimals', NULL, NULL, NULL, NULL, NULL),
(1069, 'quick_links', 'Quick Links', NULL, NULL, NULL, NULL, NULL),
(1070, 'voguePay_settings', 'VoguePay Settings', NULL, NULL, NULL, NULL, NULL),
(1071, 'merchant_id', 'Merchant Id', NULL, NULL, NULL, NULL, NULL),
(1072, 'your_email_address', 'Your Email Address', NULL, NULL, NULL, NULL, NULL),
(1073, 'blog & news', 'Blog & News', NULL, NULL, NULL, NULL, NULL),
(1074, 'news & blog', 'News & Blog', NULL, NULL, NULL, NULL, NULL),
(1075, 'news/blog', 'News/blog', NULL, NULL, NULL, NULL, NULL),
(1076, 'fully_paid', 'Fully Paid', NULL, NULL, NULL, NULL, NULL),
(1077, 'you_must_agree_with_terms_&_conditions', 'You Must Agree With Terms & Conditions', NULL, NULL, NULL, NULL, NULL),
(1078, 'captcha_status', 'Captcha Status', NULL, NULL, NULL, NULL, NULL),
(1079, 'Todays_sale', 'Todays Sale', NULL, NULL, NULL, NULL, NULL),
(1080, 'Today\'s_sale', 'Today\'s Sale', NULL, NULL, NULL, NULL, NULL),
(1081, 'delivery', 'Delivery', NULL, NULL, NULL, NULL, NULL),
(1082, 'Total Sales this month to date', 'Total Sales This Month To Date', NULL, NULL, NULL, NULL, NULL),
(1083, 'pin_code_available', 'Pin Code Available', NULL, NULL, NULL, NULL, NULL),
(1084, 'pin_code_not_available', 'Pin Code Not Available', NULL, NULL, NULL, NULL, NULL),
(1085, 'shop', 'Shop', NULL, NULL, NULL, NULL, NULL),
(1086, 'add_image', 'Add Image', NULL, NULL, NULL, NULL, NULL),
(1087, 'select image', 'Select Image', NULL, NULL, NULL, NULL, NULL),
(1088, 'OFFERS', 'OFFERS', NULL, NULL, NULL, NULL, NULL),
(1089, 'BLOGS & NEWS', 'BLOGS & NEWS', NULL, NULL, NULL, NULL, NULL),
(1090, '#', '#', NULL, NULL, NULL, NULL, NULL),
(1091, 'testimonial', 'Testimonial', NULL, NULL, NULL, NULL, NULL),
(1092, 'delivery_note', 'Delivery Note', NULL, NULL, NULL, NULL, NULL),
(1093, 'offer', 'Offer', NULL, NULL, NULL, NULL, NULL),
(1094, 'manage_product', 'Manage Product', NULL, NULL, NULL, NULL, NULL),
(1095, 'ingredients', 'Ingredients', NULL, NULL, NULL, NULL, NULL),
(1096, '[270x340]', '[270x340]', NULL, NULL, NULL, NULL, NULL),
(1097, 'cart', 'Cart', NULL, NULL, NULL, NULL, NULL),
(1098, 'all_news_&_blogs', 'All News & Blogs', NULL, NULL, NULL, NULL, NULL),
(1099, 'manage_testimonial', 'Manage Testimonial', NULL, NULL, NULL, NULL, NULL),
(1100, 'add_testimonial', 'Add Testimonial', NULL, NULL, NULL, NULL, NULL),
(1101, 'create_testimonial', 'Create Testimonial', NULL, NULL, NULL, NULL, NULL),
(1102, 'back_to_testimonial_list', 'Back To Testimonial List', NULL, NULL, NULL, NULL, NULL),
(1103, 'testimonial_id', 'Testimonial Id', NULL, NULL, NULL, NULL, NULL),
(1104, 'des_and_compnay', 'Des And Compnay', NULL, NULL, NULL, NULL, NULL),
(1105, 'time_:', 'Time :', NULL, NULL, NULL, NULL, NULL),
(1106, 'order_status', 'Order Status', NULL, NULL, NULL, NULL, NULL),
(1107, 'product_discount (if any) ', 'Product Discount (if Any) ', NULL, NULL, NULL, NULL, NULL),
(1108, 'what_client_says??', 'What Client Says??', NULL, NULL, NULL, NULL, NULL),
(1109, 'des_and_company', 'Des And Company', NULL, NULL, NULL, NULL, NULL),
(1110, 'testimonial_has_been_uploaded!', 'Testimonial Has Been Uploaded!', NULL, NULL, NULL, NULL, NULL),
(1111, 'message sent', 'Message Sent', NULL, NULL, NULL, NULL, NULL),
(1112, 'failed to send message', 'Failed To Send Message', NULL, NULL, NULL, NULL, NULL),
(1113, 'your message has been sent', 'Your Message Has Been Sent', NULL, NULL, NULL, NULL, NULL),
(1114, 'A free Gift added with your purchase', 'A Free Gift Added With Your Purchase', NULL, NULL, NULL, NULL, NULL),
(1115, 'view_applied_coupons', 'View Applied Coupons', NULL, NULL, NULL, NULL, NULL),
(1116, 'applied_coupons', 'Applied Coupons', NULL, NULL, NULL, NULL, NULL),
(1117, 'coupon_name', 'Coupon Name', NULL, NULL, NULL, NULL, NULL),
(1118, 'coupon_limit', 'Coupon Limit', NULL, NULL, NULL, NULL, NULL),
(1119, 'month', 'Month', NULL, NULL, NULL, NULL, NULL),
(1120, 'number', 'Number', NULL, NULL, NULL, NULL, NULL),
(1121, 'test_activator', 'Test Activator', NULL, NULL, NULL, NULL, NULL),
(1122, 'manage_events', 'Manage Events', NULL, NULL, NULL, NULL, NULL),
(1123, 'add_events', 'Add Events', NULL, NULL, NULL, NULL, NULL),
(1124, 'create_event', 'Create Event', NULL, NULL, NULL, NULL, NULL),
(1125, 'back_to_event_list', 'Back To Event List', NULL, NULL, NULL, NULL, NULL),
(1126, 'event_details', 'Event Details', NULL, NULL, NULL, NULL, NULL),
(1127, 'edit_event', 'Edit Event', NULL, NULL, NULL, NULL, NULL),
(1128, 'add_event', 'Add Event', NULL, NULL, NULL, NULL, NULL),
(1129, 'event_has_been_uploaded!', 'Event Has Been Uploaded!', NULL, NULL, NULL, NULL, NULL),
(1130, 'event_title', 'Event Title', NULL, NULL, NULL, NULL, NULL),
(1131, 'successfully_updated!', 'Successfully Updated!', NULL, NULL, NULL, NULL, NULL),
(1132, 'add', 'Add', NULL, NULL, NULL, NULL, NULL),
(1133, 'manage_gallery_images', 'Manage Gallery Images', NULL, NULL, NULL, NULL, NULL),
(1134, 'back_to_image_list', 'Back To Image List', NULL, NULL, NULL, NULL, NULL),
(1135, 'image_has_been_uploaded!', 'Image Has Been Uploaded!', NULL, NULL, NULL, NULL, NULL),
(1136, 'manage_gallery', 'Manage Gallery', NULL, NULL, NULL, NULL, NULL),
(1137, 'zzz', 'Zzz', NULL, NULL, NULL, NULL, NULL),
(1138, 'GALLERY', 'GALLERY', NULL, NULL, NULL, NULL, NULL),
(1139, 'EVENTS', 'EVENTS', NULL, NULL, NULL, NULL, NULL),
(1140, 'Event', 'Event', NULL, NULL, NULL, NULL, NULL),
(1141, 'photo_gallery', 'Photo Gallery', NULL, NULL, NULL, NULL, NULL),
(1142, 'Our Team', 'Our Team', NULL, NULL, NULL, NULL, NULL),
(1143, 'our_team', 'Our Team', NULL, NULL, NULL, NULL, NULL),
(1144, 'manage_team', 'Manage Team', NULL, NULL, NULL, NULL, NULL),
(1145, 'add_members', 'Add Members', NULL, NULL, NULL, NULL, NULL),
(1146, 'back_to_team_list', 'Back To Team List', NULL, NULL, NULL, NULL, NULL),
(1147, 'specialization', 'Specialization', NULL, NULL, NULL, NULL, NULL),
(1148, 'team_members', 'Team Members', NULL, NULL, NULL, NULL, NULL),
(1149, 'data_added!', 'Data Added!', NULL, NULL, NULL, NULL, NULL),
(1150, 'member_details_added!', 'Member Details Added!', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

CREATE TABLE `language_list` (
  `language_list_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'ok'),
(2, 'বাংলা', 'Bangla', 'ok'),
(3, 'Spanish', 'Spanish', 'no'),
(4, 'Arabic', 'Arabic', 'ok'),
(5, 'French', 'French', 'ok'),
(6, 'Chinese', 'Chinese', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `name`) VALUES
(2, ''),
(3, ''),
(46, ''),
(58, ''),
(60, ''),
(62, ''),
(69, ''),
(70, ''),
(71, ''),
(72, ''),
(73, ''),
(74, ''),
(75, ''),
(76, ''),
(77, ''),
(78, ''),
(79, ''),
(80, ''),
(81, ''),
(82, '');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `membership_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `timespan` varchar(50) DEFAULT NULL,
  `pay_interval` varchar(50) DEFAULT NULL,
  `product_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `title`, `price`, `timespan`, `pay_interval`, `product_limit`) VALUES
(1, 'Silver', '300', '30', '', 10),
(2, 'Platinum', '3500', '30', '', 50),
(7, 'Gold', '2000', '30', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment`
--

CREATE TABLE `membership_payment` (
  `membership_payment_id` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `details` longtext,
  `membership` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_payment`
--

INSERT INTO `membership_payment` (`membership_payment_id`, `vendor`, `timestamp`, `amount`, `details`, `membership`, `method`, `status`) VALUES
(6, 3, 1474278958, 3500, '{\"mc_gross\":\"43.75\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"QXCY8C6X8J4VG\",\"tax\":\"0.00\",\"address_street\":\"1 Main St\",\"payment_date\":\"03:04:24 Sep 19, 2016 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"95131\",\"first_name\":\"Active\",\"address_country_code\":\"US\",\"address_name\":\"Active IT\",\"notify_version\":\"3.8\",\"custom\":\"6\",\"payer_status\":\"verified\",\"business\":\"kadir_bm@yahoo.com\",\"address_country\":\"United States\",\"address_city\":\"San Jose\",\"quantity\":\"1\",\"verify_sign\":\"A6Fyo.RG2CmUHAdbJ1HeGZnSj3AWAuYRD2vHV92buB9WYMNNbxSvf6Un\",\"payer_email\":\"system@supershop.com\",\"txn_id\":\"6PN17817M0416733P\",\"payment_type\":\"instant\",\"last_name\":\"IT\",\"address_state\":\"CA\",\"receiver_email\":\"kadir_bm@yahoo.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"handling_amount\":\"0.00\",\"transaction_subject\":\"\",\"payment_gross\":\"43.75\",\"shipping\":\"0.00\",\"ipn_track_id\":\"26ff7ba5f0ef\"}', 2, 'paypal', 'paid'),
(7, 5, 1474568814, 300, '{\"mc_gross\":\"3.75\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"QXCY8C6X8J4VG\",\"tax\":\"0.00\",\"address_street\":\"1 Main St\",\"payment_date\":\"11:41:38 Sep 22, 2016 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"95131\",\"first_name\":\"Active\",\"address_country_code\":\"US\",\"address_name\":\"Active IT\",\"notify_version\":\"3.8\",\"custom\":\"7\",\"payer_status\":\"verified\",\"business\":\"kadir_bm@yahoo.com\",\"address_country\":\"United States\",\"address_city\":\"San Jose\",\"quantity\":\"1\",\"verify_sign\":\"A.Z5yEeSJElINVLnLNYfrb750vgiAJdLRn38Ub6I-sD-cMvsd25mBIx-\",\"payer_email\":\"system@supershop.com\",\"txn_id\":\"1W646161MB662172C\",\"payment_type\":\"instant\",\"last_name\":\"IT\",\"address_state\":\"CA\",\"receiver_email\":\"kadir_bm@yahoo.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"handling_amount\":\"0.00\",\"transaction_subject\":\"\",\"payment_gross\":\"3.75\",\"shipping\":\"0.00\",\"ipn_track_id\":\"ef0d66381cdd0\"}', 1, 'paypal', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `parmalink` varchar(100) DEFAULT NULL,
  `content` longtext,
  `parts` longtext,
  `tag` longtext,
  `fixed` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(10, '0', 'news', 'news', NULL, '[{\"size\":\"12\",\"type\":\"content\",\"content\":\"<p><\\/p><pre><section class=\\\"page-section with-sidebar\\\"><br><\\/section><\\/pre>\",\"widget\":\"product_categories,advance_search,special_products\"}]', '', NULL),
(12, '0', 'Documentation', 'Documentation', NULL, '[{\"size\":\"3\",\"type\":\"widget\",\"content\":\"<p><br><\\/p>\",\"widget\":\"product_categories\"},{\"size\":\"9\",\"type\":\"content\",\"content\":\"<h3><span style=\\\"background-color: transparent; color: rgb(0, 0, 0); font-family: Roboto; font-size: 14.6667px; font-weight: 700; text-decoration: underline; white-space: pre-wrap;\\\">Structure &amp; Information of Important Common Elements<\\/span><\\/h3><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Header<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-indent: 36pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We can divide the header into three major parts.<\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Top Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Top header contains the options for \\u201cLanguage Change\\u201d, \\u201cCurrency Change \\u201d, \\u201cFAQ\\u201d, \\u201cCustomer Login\\u201d, \\u201cCustomer Registration\\u201d &amp; \\u201cVendor Registration\\u201d.<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Middle Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Middle header contains admin uploaded &amp; selected \\u201chome page header logo\\u201d, \\u201csearch bar(product &amp; vendor based search)\\u201d, \\u201ccompare button (from where user can moved the all compared product list page)\\u201d &amp; \\u201ccart button(from where customer moved to checkout page.)\\u201d. &nbsp;<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Bottom Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Bottom Header contains the link for \\u201cHome page\\u201d, \\u201cAll categories(with all sub categories in dropdown)\\u201d, \\u201cFeatured product\\u201d, \\u201cToday\\u2019s deal\\u201d, \\u201cAll brands\\u201d, \\u201cAll vendors\\u201d, \\u201cStore locator\\u201d, \\u201ccontact\\u201d &amp; \\u201cMore(Admin created custom responsive page will be shown on dropdown)\\u201d. <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/header\\/header1.php<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Logo upload directory<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; logo &gt; upload logo &gt; change home page item &gt; top slider<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"2\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We designed three different types of \\u201cproduct box\\u201d for the frontend design to the aspection of making anyone\\u2019s site eye catching and to make difference which will reduce the necessity of custom design. One\\u2019s don\\u2019t need to have any coding knowledge for changing the design and structure. All three designed product box contain the same informations and data for better understand. Please follow the step by step instructions : &nbsp;<\\/span><\\/p><\\/li><\\/ol><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Image:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> This part for product image.After hovering the image \\u201cquick view\\u201d button will appear(where customer can view the short description of the &nbsp;product). <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><\\/ul><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Title:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Admin \\/ vendor uploaded product title has been shown is here. Click on product title ones can visit the product detail page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Price:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Admin \\/ vendor fixed product sale price will be shown in here &nbsp;(discounted amount should be deducted &amp; viewed in a smart graphics).<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Add to Cart:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> While customers \\/ users take a approach to purchase the chosen product they should click on \\u201cadd to cart\\u201d button for adding in the cart list.Cart list is available in the header(right top part) from where anyone can be moved to check out page with login. <\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Compare:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">For the same category wise product user can add the products in compare list by clicking on \\u201ccompare button\\u201d. Compared products showed in the top right part of the header.From here anyone can visit the compare page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Wish:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Any user can wish their products while they are logged in.Wished product log has been listed into the user profile.The wishlist button is available in the top header(right) part from where user can look upon his\\/her wished product list.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Vendor Name:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Vendor &nbsp;name will be shown in here.By clicking on the name ones can visit the vendor\\u2019s public profile.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Out of Stock:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If any product crossed the stock limit the product will be unavailable and the \\u201cout of stock\\u201d sticker viewed on the product box.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Discount:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">&nbsp;Any discounted product will have the \\u201cDiscount sticker\\u201d with the limitation of discounted amount or discounted percentage.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; home page &gt; select home page &gt; change home page item &gt; featured product\\/category wise product &gt; choose product box style.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">.<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><br><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"3\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Sidebar section : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Sidebar section contain the most advance search options like as category, sub category, brand and price range. Bottom of this section holds the special products such as popular, latest &amp; today\\u2019s deal products.<\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">. <\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"4\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><span class=\\\"Apple-tab-span\\\" style=\\\"white-space:pre;\\\">\\t<\\/span><\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">There are two parts of the footer.<\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer Top<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Top footer contains some options such as footer logo,subscription box categories links, page links, contact details,social media links.All elements sorted in four columns.Category &amp; text in footer has been managed by admin.<\\/span><\\/p><\\/li><\\/ul><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer Bottom <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">: <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">This portion contains the \\u201cdeveloper authority name\\u201d,\\u201dterms &amp; condition\\u201d,\\u201dprivacy policy\\u201d and \\u201cpayment gateway logo\\u201d<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; footer.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Structure &amp; Information of Home page<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Home page : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We designed two most conspicuous and absolutely customizable types of home with the utmost experience of qualified user interface perception for representing your eCommerce in a distinctive aspection.We splat the whole home page into several parts such as Layer slider , home top part , advance search area, featured product area, category wise products(for home page 1), category wise banner(for homepage 2), latest blogs (home page 1), special products (Latest products, Most sold, Most viewed product).All of these very specific portions is easily editable with having the options of enable\\/disable.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">admin(login) &gt; frontend settings &gt; display settings &gt; home page &gt; choose homepage &gt; change home page items.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(255, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">product box<\\/span><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">.<\\/span><br><\\/p>\",\"widget\":\"\"}]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, 'staff', 'admin', 'parent', ''),
(2, 'edit', 'admin_edit', '1', ''),
(3, 'view', 'admin_view', '1', ''),
(4, 'delete', 'admin_delete', '1', ''),
(5, 'banner', 'banner', 'parent', ''),
(6, 'edit', 'banner_edit', '5', ''),
(7, 'view', 'banner_view', '5', ''),
(8, 'delete', 'banner_delete', '5', ''),
(9, 'brand', 'brand', 'parent', ''),
(10, 'edit', 'brand_edit', '9', ''),
(11, 'view', 'brand_view', '9', ''),
(12, 'delete', 'brand_delete', '9', ''),
(13, 'business settings', 'business_settings', 'parent', ''),
(14, 'edit', 'business_settings_edit', '13', ''),
(15, 'view', 'business_settings_view', '13', ''),
(16, 'delete', 'business_settings_delete', '13', ''),
(17, 'category', 'category', 'parent', ''),
(18, 'edit', 'category_edit', '17', ''),
(19, 'view', 'category_view', '17', ''),
(20, 'delete', 'category_delete', '17', ''),
(21, 'contact message', 'contact_message', 'parent', ''),
(22, 'edit', 'contact_message_edit', '21', ''),
(23, 'view', 'contact_message_view', '21', ''),
(24, 'delete', 'contact_message_delete', '21', ''),
(25, 'site settings', 'site_settings', 'parent', ''),
(26, 'edit', 'site_settings_edit', '25', ''),
(27, 'view', 'site_settings_view', '25', ''),
(28, 'delete', 'site_settings_delete', '25', ''),
(29, 'product', 'product', 'parent', ''),
(30, 'edit', 'product_edit', '29', ''),
(31, 'view', 'product_view', '29', ''),
(32, 'delete', 'product_delete', '29', ''),
(33, 'report', 'report', 'parent', ''),
(34, 'edit', 'report_edit', '33', ''),
(35, 'view', 'report_view', '33', ''),
(36, 'delete', 'report_delete', '33', ''),
(37, 'role', 'role', 'parent', ''),
(38, 'edit', 'role_edit', '37', ''),
(39, 'view', 'role_view', '37', ''),
(40, 'delete', 'role_delete', '37', ''),
(41, 'sale', 'sale', 'parent', ''),
(42, 'edit', 'sale_edit', '92', ''),
(43, 'view', 'sale_view', '92', ''),
(44, 'delete', 'sale_delete', '92', ''),
(45, 'slider', 'slider', 'parent', ''),
(46, 'edit', 'slider_edit', '45', ''),
(47, 'view', 'slider_view', '45', ''),
(48, 'delete', 'slider_delete', '45', ''),
(49, 'stock', 'stock', 'parent', ''),
(50, 'edit', 'stock_edit', '49', ''),
(51, 'view', 'stock_view', '49', ''),
(52, 'delete', 'stock_delete', '49', ''),
(53, 'sub category', 'sub_category', 'parent', ''),
(54, 'edit', 'sub_category_edit', '53', ''),
(55, 'view', 'sub_category_view', '53', ''),
(56, 'delete', 'sub_category_delete', '53', ''),
(57, 'user', 'user', 'parent', ''),
(58, 'edit', 'user_edit', '57', ''),
(59, 'view', 'user_view', '57', ''),
(60, 'delete', 'user_delete', '57', ''),
(61, 'newsletter', 'newsletter', 'parent', ''),
(62, 'language', 'language', 'parent', ''),
(63, 'page', 'page', 'parent', ''),
(64, 'Discount Coupon', 'coupon', 'parent', ''),
(65, 'vendor', 'vendor', 'parent', ''),
(66, 'membership', 'membership', 'parent', ''),
(67, 'SEO', 'seo', 'parent', ''),
(68, 'Membership Payments', 'membership_payment', 'parent', ''),
(69, 'blog', 'blog', 'parent', NULL),
(70, 'slides', 'slides', 'parent', NULL),
(71, 'category_digital', 'category_digital', 'parent', NULL),
(72, 'edit', 'category_digital_edit', '71', NULL),
(73, 'delete', 'category_digital_delete', '71', NULL),
(74, 'view', 'category_digital_view', '71', NULL),
(75, 'sub_category', 'sub_category', 'parent', NULL),
(77, 'edit', 'sub_category_edit', '75', NULL),
(78, 'delete', 'sub_category_delete', '75', NULL),
(79, 'view', 'sub_category_view', '75', NULL),
(80, 'sub_category_digital', 'sub_category_digital', 'parent', NULL),
(81, 'edit', 'sub_category_digital_edit', '80', NULL),
(82, 'delete', 'sub_category_digital_delete', '80', NULL),
(83, 'view', 'sub_category_digital_view', '80', NULL),
(84, 'digital', 'digital', 'parent', NULL),
(85, 'edit', 'digital_edit', '84', NULL),
(86, 'delete', 'digital_delete', '84', NULL),
(87, 'view', 'digital_view', '84', NULL),
(88, 'product', 'product', 'parent', NULL),
(89, 'edit', 'product_edit', '88', NULL),
(90, 'delete', 'product_delete', '88', NULL),
(91, 'view', 'product_view', '88', NULL),
(92, 'sale', 'sale', 'parent', NULL),
(93, 'email_tracing', 'email_tracing', 'parent', NULL),
(94, 'widget', 'widget', 'parent', NULL),
(95, 'display_settings', 'display_settings', 'parent', NULL),
(96, 'banner', 'banner', 'parent', NULL),
(97, 'captha_n_social_settings', 'captha_n_social_settings', 'parent', NULL),
(98, 'business_settings', 'business_settings', 'parent', NULL),
(99, 'ticket', 'ticket', 'parent', NULL),
(100, 'default_images', 'default_images', 'parent', NULL),
(101, 'Pay to Vendor', 'pay_to_vendor', 'parent', NULL),
(102, 'email_template', 'email_template', 'parent', NULL),
(103, 'event', 'event', 'parent_status', NULL),
(104, 'gallery', 'gallery', 'parent_status', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `pincode_id` int(11) NOT NULL,
  `pincode` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`pincode_id`, `pincode`) VALUES
(1, 682041),
(2, 682033),
(3, 682008),
(4, 682034),
(5, 682027),
(6, 682037),
(7, 682010),
(8, 682024),
(9, 682024),
(10, 682026),
(11, 682035),
(12, 682011),
(13, 682031),
(14, 682016),
(15, 682018),
(16, 682027),
(17, 682020),
(18, 682035),
(19, 682030),
(20, 682017),
(21, 682008),
(22, 682001),
(23, 682016),
(24, 682004),
(25, 682301),
(26, 682022),
(27, 682305),
(28, 682311),
(29, 683518),
(30, 683518),
(31, 682027),
(32, 682315),
(33, 682506),
(34, 682011),
(35, 682007),
(36, 682316),
(37, 682305),
(38, 682030),
(39, 682312),
(40, 682511),
(41, 682305),
(42, 683501),
(43, 682304),
(44, 682315),
(45, 682029),
(46, 682002),
(47, 682308),
(48, 682316),
(49, 682314),
(50, 682504),
(51, 682507),
(52, 682307),
(53, 682505),
(54, 682509),
(55, 682031),
(56, 682509),
(57, 682040),
(58, 682009),
(59, 682508),
(60, 682012),
(61, 682314),
(62, 682025),
(63, 682006),
(64, 682036),
(65, 682506),
(66, 682002),
(67, 682310),
(68, 682015),
(69, 682016),
(70, 682027),
(71, 682038),
(72, 682307),
(73, 682314),
(74, 682508),
(75, 683104),
(76, 682039),
(77, 682008),
(78, 682031),
(79, 682307),
(80, 682314),
(81, 682032),
(82, 682301),
(83, 682030),
(84, 682013),
(85, 682313),
(86, 682305),
(87, 682308),
(88, 682005),
(89, 682021),
(90, 682301),
(91, 682307),
(92, 683501),
(93, 682018),
(94, 682310),
(95, 682308),
(96, 682023),
(97, 682504),
(98, 682001),
(99, 682313),
(100, 682028),
(101, 682314),
(102, 682019),
(103, 682003),
(104, 682041),
(105, 682033),
(106, 682008),
(107, 682034),
(108, 682038),
(109, 682037),
(110, 682010),
(111, 682024),
(112, 682026),
(113, 682027),
(114, 682020),
(115, 682030),
(116, 682017),
(117, 682001),
(118, 682016),
(119, 682004),
(120, 682301),
(121, 682022),
(122, 682305),
(123, 682311),
(124, 683518),
(125, 682027),
(126, 682315),
(127, 682506),
(128, 682007),
(129, 682316),
(130, 682305),
(131, 682030),
(132, 682312),
(133, 682511),
(134, 682305),
(135, 683501),
(136, 682304),
(137, 683104),
(138, 682508),
(139, 682316),
(140, 682015),
(141, 682312),
(142, 682039),
(143, 683501),
(144, 682304),
(145, 682315),
(146, 682029),
(147, 682308),
(148, 682316),
(149, 682003),
(150, 682019),
(151, 682314),
(152, 682028),
(153, 682001),
(154, 682504),
(155, 682023),
(156, 682310),
(157, 682021),
(158, 683501),
(159, 682307),
(160, 682301),
(161, 682507),
(162, 682013),
(163, 682032),
(164, 682031),
(165, 682505),
(166, 682040),
(167, 682009),
(168, 682508),
(169, 682303);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL DEFAULT '0',
  `rating_total` int(11) NOT NULL DEFAULT '0',
  `rating_user` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `num_of_imgs` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `featured` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tag` longtext COLLATE utf8_unicode_ci,
  `ingredients` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `front_image` longtext COLLATE utf8_unicode_ci,
  `brand` longtext COLLATE utf8_unicode_ci,
  `current_stock` int(11) DEFAULT '0',
  `unit` longtext COLLATE utf8_unicode_ci,
  `additional_fields` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `background` longtext COLLATE utf8_unicode_ci,
  `discount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `discount_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tax` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `tax_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `color` longtext COLLATE utf8_unicode_ci,
  `options` longtext COLLATE utf8_unicode_ci,
  `main_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `download` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `download_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_of_downloads` int(11) NOT NULL DEFAULT '0',
  `update_time` longtext COLLATE utf8_unicode_ci,
  `requirements` longtext COLLATE utf8_unicode_ci,
  `logo` longtext COLLATE utf8_unicode_ci,
  `video` longtext COLLATE utf8_unicode_ci,
  `last_viewed` int(200) DEFAULT NULL,
  `sold_number` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `ingredients`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `sold_number`) VALUES
(28, 0, 0, '[]', 'GREEN WATER ', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Watermelons contains almost 92% of water that makes it so fresh. And Celery not only helps to reduce high blood pressure, but also has millions of incredible benefits for body such as vitamin C booster, decreasing cholesterol, anti-cancer compounds, anti-inflammatory, relieving pain and many others.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Adding Kale, Cilantro and Cucumber makes this a chunky Juice</p>', NULL, '2', '150.00', '150.00', '', '1498298359', 'no', '', 'CUCUMBER + CELERY + KALE + MINT + WATERMELON + GARLIC', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 498, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512720939, 14),
(5, 0, 0, '[]', 'KIWI LOVE', '{\"type\":\"admin\",\"id\":\"1\"}', 2, '                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\">Kiwi contains the highest amount of vitamin C in the fruit world.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\">We are combining kiwi with green apple, cucumber and mint to give you a sweet refreshment that will leave you wanting for more.</p>', NULL, '1', '150.00', '150.00', '', '1494583136', '0', '', 'KIWI + GREEN APPLE + CUCUMBER + MINT', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 350, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512387004, 19),
(4, 0, 0, '[]', 'SUNRISE', '{\"type\":\"admin\",\"id\":\"1\"}', 3, '                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Colorful&nbsp;Juice to start a beautiful day. This juice is packed with Vitamins, Minerals and plenty of other benefits.</p><p style=\"margin-bottom: 0px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">An anti-inflammatory, Immune boosting juice which is perfect for breakfast.</p>', NULL, '1', '150.00', '150.00', '', '1494583089', 'ok', '', 'CARROT + ORANGE + PINEAPPLE + LEMON + TURMERIC', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 627, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1512369429, 30),
(18, 0, 0, '[]', 'TPS', '{\"type\":\"admin\",\"id\":\"1\"}', 3, '<p><span style=\"color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\">Nutritious, Delicious and Tropical juice to refresh and beat the heat.</span><br></p>', NULL, '1', '150.00', '150.00', '', '1498292465', '0', '', 'TENDER COCONUT + PINEAPPLE + SPINACH', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 284, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512362362, 13),
(19, 0, 0, '[]', 'PURE CARROT', '{\"type\":\"admin\",\"id\":\"1\"}', 3, '<p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\">Drinking Carrot Juice provides numerous health benefits. Carrots contain Vitamin A. Also it provides Vitamins like C, D, E and K.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\">Drinking Carrot Juice may help to maintain good vision, increase immunity.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\">Carrots helps &nbsp;in the prevention of Cancer, Heart disease and Stroke.</p>', NULL, '2', '150.00', '150.00', '', '1498292691', 'no', '', 'PURE CARROT', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 212, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512362616, 20),
(7, 1, 4, '[\"8\"]', 'MIRACLE GREEN', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                                                                                                                                                                                                                                                                                                                                                                                                <h2><p style=\"font-size: 12px;\"><span style=\"color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\">Green juices are the great way to get in your recommended servings of fresh produce. A healthy way to sneak in nutrients.</span><br></p></h2>', NULL, '2', '150.00', '150.00', '', '1494672563', 'ok', '', 'SPINACH + PARSLEY + LEMON + GREEN APPLE + CUCUMBER + CELERY', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 157, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1512369115, 27),
(32, 0, 0, '[]', 'SMOKER\'S TONIC', '{\"type\":\"admin\",\"id\":\"1\"}', 7, '                                                                                                                                                                                                                                                                                                                                                                                                                                                        <p>Pumpkin based drink with navel orange carrot ginger and nutmeg.</p><p>Great for eyes skin and hair, Gives you complete dietary requirement for Vitamin A.</p><p>It also cleans up lungs of the tar from smoke, Have the drink with any nut of your choice, For ideal absorption of vitamin A.</p>', NULL, '3', '170.00', '170.00', '0.00', '1499489721', 'ok', '', 'NAVEL ORANGE + CARROT + GINGER + NUTMEG ', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 709, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1512362647, 14),
(33, 0, 0, '[]', 'LIQUID CANDY', '{\"type\":\"admin\",\"id\":\"1\"}', 7, '                                        <p>The sweet candy like goodness of Apple and Pineapple laced with ginger and a hint of cinnamon</p><p>It\'s sweetness is masked with nutritional richness to guard your body from tumours and is great for your skin and hair</p>', NULL, '1', '170.00', '170.00', '0.00', '1499759182', 'ok', '', ' Apple + Pineapple +  Ginger + Cinnamon', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 481, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512369058, 37),
(17, 0, 0, '[]', 'PURE ORANGE', '{\"type\":\"admin\",\"id\":\"1\"}', 3, '                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Orange contains plenty of nutrients to promote a healthy body.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Oranges are rich in Vitamin C which nourishes your white blood cells to boost the immune system.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">The vitamin C in Oranges helps eliminate free radicals in the body, which can cause aging when they build up.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">A reduction in the risk of childhood leukaemia, and breast, liver, and colon cancer in adults has been associated with orange juice consumption.</p><p style=\"margin-bottom: 0px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">The risk of heart disease is significantly higher in people with hypertension. High blood pressure can contribute to artery damage, aneurysm, coronary artery disease, heart failure, heart attack, stroke, and kidney damage or failure. Using diet to lower high blood pressure can save you from serious consequences.</p>', NULL, '1', '150.00', '150.00', '', '1498292273', 'no', '', 'PURE ORANGE', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 174, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346805, 21),
(14, 0, 0, '[]', 'LIVER LOVER', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">This Carrot, Spinach and Celery Juice is pack of Vitamins, Minerals, Calcium and Iron.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Spinach is packed with protein, It offers numerous health benefits and improves your well being.</p><p style=\"margin-bottom: 0px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Spinach juice contains a lot of Folic acid and antioxidants, it can reduce the&nbsp;body’s homocysteine level. This reduces any hazards associated with atherosclerosis.</p>', NULL, '1', '150.00', '150.00', '', '1498286655', 'no', '', 'BABY SPINACH + CARROT + CELERY', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 324, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512362604, 15),
(15, 0, 0, '[]', 'ABC', '{\"type\":\"admin\",\"id\":\"1\"}', 3, '                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Packed in the Juice are the power of two vegetables and one fruit, all enriched with plentiful amount of lifesaving antioxidants.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">With combined effect of the three, you can get enough nutrients that will not just keep you going through the day but would also have long-term beneficial effects on your health</p>', NULL, '2', '150.00', '150.00', '', '1498289577', 'no', '', 'APPLE + BEETROOT + CARROT', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 301, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512362595, 44),
(16, 0, 0, '[]', 'PURE POMEGRANATE', '{\"type\":\"admin\",\"id\":\"1\"}', 3, '<p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\">Pomegranate juice contains higher levels of antioxidants than most other fruit juices, It&nbsp;can help remove free radicals, protect cells from damage, and reduce inflammation.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\">Pomegranate juice may help stop the growth of prostate cancer cells.</p><p style=\"margin-bottom: 0px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px;\">Consuming Pomegranate &nbsp;juice regularly reduce inflammation in the gut and improve digestion. It may be beneficial for people with Crohn’s disease, ulcerative colitis, and other inflammatory bowel diseases.</p>', NULL, '1', '150.00', '150.00', '', '1498292176', 'no', '', 'PURE POMEGRANATE', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 200, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346455, 58),
(20, 0, 0, '[]', 'COLD BREEZE', '{\"type\":\"admin\",\"id\":\"1\"}', 3, '                                                                                <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">A delicious and refreshing mixture.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">The high water content in cucumbers will help your body hydrated, and make you feel more energised, while the pineapple adds an additional sweetness.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">The mint gives a cool and refreshing taste. Perfect for a hot summer day.</p>', NULL, '2', '150.00', '150.00', '', '1498292911', 'no', '', 'CUCUMBER + PINEAPPLE + MINT', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 80, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346475, 1),
(21, 0, 0, '[]', 'GREEN WATER', '{\"type\":\"admin\",\"id\":\"1\"}', 2, '                                                                                                                                                                                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Watermelons contains almost 92% of water that makes it so fresh. And Celery not only helps to reduce high blood pressure, but also has millions of incredible benefits for body such as vitamin C booster, decreasing cholesterol, anti-cancer compounds, anti-inflammatory, relieving pain and many others.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Adding Kale, Cilantro and Cucumber makes this a chunky Juice.</p>', NULL, '2', '150.00', '150.00', '', '1498295132', 'no', '', 'CUCUMBER + CELERY + KALE + CILANTRO + WATERMELON + GARLIC', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 56, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346375, 3),
(22, 0, 0, '[]', 'MIRACLE GREEN', '{\"type\":\"admin\",\"id\":\"1\"}', 2, '                                        <p><span style=\"color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Green juices are the great way to get in your recommended servings of fresh produce. A healthy way to sneak in nutrients.</span><br></p>', NULL, '2', '150.00', '150.00', '', '1498296982', 'no', '', 'SPINACH + PARSLEY + LEMON + GREEN APPLE + CUCUMBER + CELERY', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 55, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346700, 2),
(23, 0, 0, '[]', 'PURE ORANGE', '{\"type\":\"admin\",\"id\":\"1\"}', 2, '                                                                                <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Orange contains plenty of nutrients to promote a healthy body.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Oranges are rich in Vitamin C which nourishes your white blood cells to boost the immune system.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">The vitamin C in Oranges helps eliminate free radicals in the body, which can cause aging when they build up.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">A reduction in the risk of childhood leukaemia, and breast, liver, and colon cancer in adults has been associated with orange juice consumption.</p><p style=\"margin-bottom: 0px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">The risk of heart disease is significantly higher in people with hypertension. High blood pressure can contribute to artery damage, aneurysm, coronary artery disease, heart failure, heart attack, stroke, and kidney damage or failure. Using diet to lower high blood pressure can save you from serious consequences.</p>', NULL, '2', '150.00', '150.00', '', '1498297316', 'no', '', 'PURE ORANGE', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 50, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346410, 2),
(24, 0, 0, '[]', 'PURE CARROT', '{\"type\":\"admin\",\"id\":\"1\"}', 2, '                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Drinking Carrot Juice provides numerous health benefits. Carrots contain Vitamin A. Also it provides Vitamins like C, D, E and K.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Drinking Carrot Juice may help to maintain good vision, increase immunity.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Carrots helps &nbsp;in the prevention of Cancer, Heart disease and Stroke.</p>', NULL, '2', '150.00', '150.00', '', '1498297540', 'no', '', 'PURE CARROT', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 42, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346465, 1),
(25, 0, 0, '[]', 'SUNRISE', '{\"type\":\"admin\",\"id\":\"1\"}', 2, '                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Colorful&nbsp;Juice to start a beautiful day. This juice is packed with Vitamins, Minerals and plenty of other benefits.</p><p style=\"margin-bottom: 0px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">An anti-inflammatory, Immune boosting juice which is perfect for breakfast.</p>', NULL, '2', '150.00', '150.00', '', '1498297691', 'no', '', 'CARROT + ORANGE + PINEAPPLE + LEMON + TURMERIC', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 61, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346355, 4),
(26, 0, 0, '[]', 'PURE POMEGRANATE', '{\"type\":\"admin\",\"id\":\"1\"}', 2, '                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Pomegranate juice contains higher levels of antioxidants than most other fruit juices, It&nbsp;can help remove free radicals, protect cells from damage, and reduce inflammation.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Pomegranate juice may help stop the growth of prostate cancer cells.</p><p style=\"margin-bottom: 0px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Consuming Pomegranate &nbsp;juice regularly reduce inflammation in the gut and improve digestion. It may be beneficial for people with Crohn’s disease, ulcerative colitis, and other inflammatory bowel diseases.</p>', NULL, '2', '150.00', '150.00', '', '1498297870', 'no', '', 'PURE POMEGRANATE', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 75, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512369803, 19),
(27, 0, 0, '[]', 'COLD BREEZE', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                                                                <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">A delicious and refreshing mixture.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">The high water content in cucumbers will help your body hydrated, and make you feel more energised, while the pineapple adds an additional sweetness.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">The mint gives a cool and refreshing taste. Perfect for a hot summer day.</p>', NULL, '2', '120.00', '120.00', '', '1498298206', 'no', '', 'CUCUMBER + PINEAPPLE + MINT', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 143, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346885, 4),
(29, 0, 0, '[]', 'KIWI LOVE', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                        <p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Kiwi contains the highest amount of vitamin C in the fruit world.</p><p style=\"margin-bottom: 25px; text-rendering: optimizeLegibility; color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">We are combining kiwi with green apple, cucumber and mint to give you a sweet refreshment that will leave you wanting for more.</p>', NULL, '2', '150.00', '150.00', '', '1498298477', 'no', '', 'KIWI + GREEN APPLE + CUCUMBER + MINT', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 197, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346715, 4),
(30, 0, 0, '[]', 'MIRACLE GREEN', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                                                                                                        <p><span style=\"color: rgb(30, 30, 30); font-family: \" droid=\"\" sans\",=\"\" helveticaneue,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Green juices are the great way to get in your recommended servings of fresh produce. A healthy way to sneak in nutrients.</span><br></p>', NULL, '2', '150.00', '150.00', '', '1498298584', '0', '', 'SPINACH + PARSLEY + LEMON + GREEN APPLE + CUCUMBER + CELERY', 'ok', '0', NULL, 100, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 265, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1512346745, 3),
(38, 0, 0, '[]', 'DESI MOCHA', '{\"type\":\"admin\",\"id\":\"1\"}', 7, '                                                                                                                        <p><br></p>', NULL, '1', '225.00', '225.00', '0.00', '1507706651', 'ok', '', 'CASHEW + DATES + COCOA + GUDALLUR COFFEE + CINNAMON', 'ok', '0', NULL, 300, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 96, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346495, 1),
(39, 0, 0, '[]', 'NUT MYLK', '{\"type\":\"admin\",\"id\":\"1\"}', 7, '                                        <p><br></p>', NULL, '1', '200.00', '200.00', '0.00', '1507707120', 'ok', '', 'VANILLA + COCONUT WATER + DATES COCOA POWDER + ALMOND', 'ok', '0', NULL, 1500, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 127, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346675, 4),
(44, 0, 0, '[]', 'Clean Green', '{\"type\":\"admin\",\"id\":\"4\"}', 8, '                                        <p>Fresh + Handpicked + Authentic + Organic<br></p>', NULL, '1', '220.00', '220.00', '0.00', '1511805299', 'ok', '', 'Romaine Lettuce + Spinach + Cucumbers + Lemon + Cilantro + Ginger', 'ok', '0', NULL, 500, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 15, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512351124, 0),
(41, 0, 0, '[]', 'PURE PASSION FRUITS', '{\"type\":\"admin\",\"id\":\"1\"}', 7, '                                                                                <p><br></p>', NULL, '1', '220.00', '220.00', '0.00', '1508775683', 'ok', '', 'PASSION FRUIT+ALKALINE WATER+HONEY', 'ok', '0', NULL, 500, '300ML', '{\"name\":\"null\",\"value\":\"null\"}', 78, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(247,239,28,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346650, 2),
(42, 0, 0, '[]', 'GUSTO', '{\"type\":\"admin\",\"id\":\"1\"}', 7, '                                        <p><br></p>', NULL, '2', '170.00', '170.00', '0.00', '1509343489', 'ok', '', 'APPLE + CARROT + PINEAPPLE + MINT', 'ok', '0', NULL, 500, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 129, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346635, 45),
(43, 0, 0, '[]', 'PASSION', '{\"type\":\"admin\",\"id\":\"4\"}', 7, '                                        <p><br></p>', NULL, '1', '220.00', '220.00', '0.00', '1510041483', 'ok', '', 'POMEGRANATE + PASSION FRUIT + GUAVA + WILD CHILLY', 'ok', '0', NULL, 500, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 65, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512346550, 2),
(45, 0, 0, '[]', 'Tender Green', '{\"type\":\"admin\",\"id\":\"4\"}', 8, '                                                                                <p><span style=\"color: rgb(184, 184, 184); font-family: Montserrat, sans-serif; font-size: 14px; letter-spacing: 1.5px; text-align: center;\">Fresh + Handpicked + Authentic + Organic</span><br></p>', NULL, '1', '220.00', '220.00', '0.00', '1511805530', 'ok', '', 'Lemon + Romaine Lettuce + Tomato + Ginger', 'ok', '0', NULL, 500, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 27, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512377693, 0),
(46, 0, 0, '[]', 'Aloe Green', '{\"type\":\"admin\",\"id\":\"4\"}', 8, '                                        <p><span style=\"color: rgb(184, 184, 184); font-family: Montserrat, sans-serif; font-size: 14px; letter-spacing: 1.5px; text-align: center;\">Fresh + Handpicked + Authentic + Organic</span><br></p>', NULL, '1', '210.00', '210.00', '0.00', '1511805621', 'ok', '', 'Aloe + Pineapple + Cucumber + Cinnamon', 'ok', '0', NULL, 500, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 13, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1512367158, 0),
(47, 0, 0, '[]', 'Root Green', '{\"type\":\"admin\",\"id\":\"4\"}', 8, '                                        <p><span style=\"color: rgb(184, 184, 184); font-family: Montserrat, sans-serif; font-size: 14px; letter-spacing: 1.5px; text-align: center;\">Fresh + Handpicked + Authentic + Organic</span><br></p>', NULL, '1', '220.00', '220.00', '0.00', '1511805806', 'ok', '', 'Lettuce + Tomato + Carrot + Parsley + Romaine', 'ok', '0', NULL, 500, '300 ML', '{\"name\":\"null\",\"value\":\"null\"}', 15, NULL, '0.00', 'percent', '0.00', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1512371880, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_view`
--

CREATE TABLE `product_view` (
  `product_view_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Product Manager', '[\"13\",\"17\",\"21\",\"37\",\"41\",\"45\",\"49\"]', 'Manages Products'),
(4, 'Accountant', '[\"9\",\"13\",\"17\",\"21\"]', 'Accountancy and Support'),
(6, 'Manager', '[\"5\",\"13\",\"29\",\"33\",\"37\",\"41\",\"57\",\"63\"]', 'Manager of Active Super shop');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_code` longtext,
  `buyer` longtext,
  `product_details` longtext,
  `shipping_address` longtext,
  `vat` longtext,
  `vat_percent` varchar(10) DEFAULT NULL,
  `order_status` longtext,
  `shipping` longtext,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` longtext,
  `payment_details` longtext,
  `payment_timestamp` longtext,
  `grand_total` longtext,
  `sale_datetime` longtext,
  `delivery_date` longtext,
  `delivary_datetime` longtext,
  `delivery_status` longtext,
  `viewed` longtext,
  `delivery_note` varchar(500) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `order_status`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivery_date`, `delivary_datetime`, `delivery_status`, `viewed`, `delivery_note`, `coupon_id`) VALUES
(176, '201707176', NULL, '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150},\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150}}', '{\"firstname\":\" Nisha \",\"lastname\":\" Vineesh \",\"email\":\" nishavineesh3@gmail.com \",\"phone\":\"7558862011\",\"address1\":\"1st Block -Flat No: 703, Star Lagoon Apartments, Fr. Mullavarikkal Road, Konthuruthy, Thevara \",\"address2\":null,\"city\":\" cochin \",\"state\":\"kerala\",\"zip\":\"682013\",\"payment_type\":\"online payment\"}', NULL, NULL, NULL, 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1499077963', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(150, '201707150', NULL, '{\"98f13708210194c475687be6106a3b84\":{\"id\":\"20\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"COLD BREEZE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_20_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"98f13708210194c475687be6106a3b84\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":120,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":120}}', '{\"firstname\":\" Annie \",\"lastname\":\" Joseph \",\"email\":\" josephannie@yahoo.com \",\"phone\":\"9447131214\",\"address1\":\" No. 17,Shanthi Nagar, Ponneth Temple Road, near Giridhar Eye Hospital, Kadavanthra \",\"address2\":null,\"city\":\" Kochi \",\"state\":\" Kerala \",\"zip\":\"682020\",\"payment_type\":\" cash on delivery \"}', NULL, NULL, NULL, '20', 'cash on delivery', '[]', NULL, NULL, '290', '1498973334', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(318, '201707318', '117', '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":120,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":120}}', '{\"firstname\":\"Deepu\",\"lastname\":\"Varghese\",\"email\":\"dpuvarghese@gmail.com\",\"phone\":\"9633406000\",\"address1\":\"43\\/1578-A, Kolapillil house, ESI road,kochi\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682018\",\"payment_type\":\"online payment\"}', NULL, NULL, NULL, '20', 'online payment', '[{\"admin\":\"\",\"status\":null}]', 'Online', NULL, '310', '1499513370', '', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(319, '201707319', NULL, '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150}}', '{\"firstname\":\"Bijith\",\"lastname\":\"Varghese\",\"email\":\"bijith.vs@gmail.com\",\"phone\":\"8606147711\",\"address1\":\"7C, Asset City Bay, Near Railway Overbridge, Chathari, Tripunithura\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682301\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, NULL, 'FREE', 'cash on delivery', '[]', NULL, NULL, '300', '1499657102', '2017-07-10', NULL, '[[],{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(320, '201707320', '121', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Romy\",\"lastname\":\"Ashish\",\"email\":\"romymariathomas@gmail.com\",\"phone\":\"9847082722\",\"address1\":\"Mather,Great Orchard,flat 7f , Vidyanagar\",\"address2\":null,\"city\":\"Panampilly Nagar\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, NULL, '20', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1499668888', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(321, '201707321', NULL, '{\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Anand M\",\"lastname\":\"Charles\",\"email\":\"charles.anandm@gmail.com\",\"phone\":\"9880213377\",\"address1\":\"House of Alapatt , Mahatma Gandhi Rd, Ernakulam South, Ernakulam, Kerala 682016\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682016\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, NULL, 'FREE', 'cash on delivery', '[]', '', NULL, '300', '1499671310', '', NULL, '[{\"vendor\":null,\"status\":null,\"delivery_time\":null},{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(309, '201707309', NULL, '{\"9bf31c7ff062936a96d3c8bd1f8f2ff4\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff4\",\"subtotal\":150}}', '{\"firstname\":\" vysakh\",\"lastname\":\" ravi\",\"email\":\" vysakhvilla@gmail.com \",\"phone\":\"9645078971\",\"address1\":\"bharat petroleum corporation ltd, sea port airport rd, irumpanam, cochin\",\"address2\":null,\"city\":\" cochin \",\"state\":\"kerala\",\"zip\":\"682019\",\"payment_type\":\"online payment\"}', NULL, NULL, NULL, '20', 'online payment', '[{\"admin\":\"delivered\",\"status\":\"paid\"}]', 'Online', NULL, '170', '1499355681', '2017-07-06', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', NULL, NULL),
(349, '201707349', NULL, '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":340}}', '{\"firstname\":\"Visakh\",\"lastname\":\"Boban\",\"email\":\"visakhboban@gmail.com\",\"phone\":\"9946901438\",\"address1\":\"Flat No:4B, O2 Zone, Thengode P.O,Kakkanad\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[]', 'FREE', 'cash on delivery', '[]', '', NULL, '340', '1499881470', '2017-07-13', NULL, '[{\"vendor\":null,\"status\":null,\"delivery_time\":null},{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(329, '201707329', NULL, '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Rakhi\",\"lastname\":\"S\",\"email\":\"sankar.rakhi@gmail.com\",\"phone\":\"9895988099\",\"address1\":\"TCS Center, Infopark\",\"address2\":\"\",\"city\":\"Kakkanad\",\"state\":\"Kerala\",\"zip\":\"682305\",\"payment_type\":\"online payment\"}', NULL, NULL, NULL, 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":null}]', '', NULL, '300', '1499693941', '2017-07-11', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(330, '201707330', '131', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150}}', '{\"firstname\":\"Sherin\",\"lastname\":\"Kumar\",\"email\":\"sherin.kumar@gmail.com\",\"phone\":\"9927666690\",\"address1\":\"10A,Gopuram, Kent illam, Puthiya road,  near vennala high school\",\"address2\":null,\"city\":\"Vennala,Kochi\",\"state\":\"Kerala\",\"zip\":\"682028\",\"payment_type\":\"online payment\"}', NULL, NULL, '[]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '300', '1499736467', '2017-07-11', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(347, '201707347', NULL, '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170}}', '{\"firstname\":\"gautham\",\"lastname\":\"shankar\",\"email\":\"itsmegautham87@gmail.com\",\"phone\":\"9961410241\",\"address1\":\"Kreataglobal, Parekkat Plaza, Mahakavi G Rd, Ernakulam South\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682011\",\"payment_type\":\"online payment\"}', NULL, NULL, '[]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '190', '1499849266', '2017-07-12', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(344, '201707344', NULL, '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150}}', '{\"firstname\":\"Kurien\",\"lastname\":\"Ninan\",\"email\":\"kurienn@gmail.com\",\"phone\":\"9895096393\",\"address1\":\"6 E , Royal Castle, Doraiswami Iyer Road\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682035\",\"payment_type\":\"online payment\"}', NULL, NULL, '[]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '300', '1499769669', '', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(334, '201707334', NULL, '{\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":300}}', '{\"firstname\":\"Abhisek\",\"lastname\":\"Mohanty\",\"email\":\"abhilipu.me@gmail.com\",\"phone\":\"8943566241\",\"address1\":\"FLAT NO 303 ,BLOCK 4 ,EASLAND ENCLAVE APARTMENT ,ELAMKULAM, LANDMARK- INFRONT OF MAX STORE , MARUTI DRIVING SCHOOL  EASLAND ENCLAVE APT, BHARAT PETROLEUM CORPORATION LTD  \",\"address2\":\"\",\"city\":\"KOCHI\",\"state\":\"KERALA\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '300', '1499746277', '2017-07-11', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', 'today tuesday at -3 pm ', NULL),
(345, '201707345', '131', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150}}', '{\"firstname\":\"Sherin\",\"lastname\":\"Kumar\",\"email\":\"sherin.kumar@gmail.com\",\"phone\":\"9927666690\",\"address1\":\"10A,Gopuram, Kent illam, Puthiya road,  near vennala high school\",\"address2\":null,\"city\":\"Vennala,Kochi\",\"state\":\"Kerala\",\"zip\":\"682028\",\"payment_type\":\"online payment\"}', NULL, NULL, '[]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '300', '1499779755', '2017-07-12', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', 'Pls deliver tomorrow morning by 9.30', NULL),
(346, '201707346', '133', '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170}}', '{\"firstname\":\"Aditya\",\"lastname\":\"S\",\"email\":\"adityasunil2010@gmail.com\",\"phone\":\"9895516018\",\"address1\":\"\\\"Mangalya\\\" , 34\\/449A, PRA 78, Thejus Avenue Lane, Padivattom, Edapally P.O,\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682024\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[]', '20', 'cash on delivery', '[{\"vendor\":null,\"status\":null},{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '190', '1499796282', '2017-07-12', NULL, '[{\"vendor\":null,\"status\":null,\"delivery_time\":null},{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', 'Delivery between 11 am and 12 noon please', NULL),
(340, '201707340', '121', '{\"98f13708210194c475687be6106a3b84\":{\"id\":\"20\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"COLD BREEZE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_20_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"98f13708210194c475687be6106a3b84\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":120,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":120}}', '{\"firstname\":\"Romy\",\"lastname\":\"Ashish\",\"email\":\"romymariathomas@gmail.com\",\"phone\":\"9847082722\",\"address1\":\"Mather,Great Orchard,flat 7f , Vidyanagar\",\"address2\":null,\"city\":\"Panampilly Nagar\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '290', '1499751396', '2017-07-11', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(341, '201707341', NULL, '{\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":300},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":300},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":300},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":300},\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":300},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":300},\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":300},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":300},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":300},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":300}}', '{\"firstname\":\"Rosemary\",\"lastname\":\"Kuruvila\",\"email\":\"frontoffice.sfo@nestgroup.net\",\"phone\":\"7025210095\",\"address1\":\"SFO TECHNOLOGIES PVT. LTD.\",\"address2\":\"\",\"city\":\"KAKKANADU\",\"state\":\"KERALA\",\"zip\":\"682037\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[]', 'FREE', 'cash on delivery', '[]', '', NULL, '3170', '1499757003', '', NULL, '[{\"vendor\":null,\"status\":null,\"delivery_time\":null},{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(387, '201707387', '147', '{\"6ea9ab1baa0efb9e19094440c317e21b\":{\"id\":\"29\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_29_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6ea9ab1baa0efb9e19094440c317e21b\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Anuja\",\"lastname\":\"Vikas\",\"email\":\"anuja.a5@gmail.com\",\"phone\":\"9995327222\",\"address1\":\"\\\"Vaishnavi\\\", house no 208, cross road no 11, Girinagar, Kochi\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"accepted\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '300', '1500272384', '2017-07-17', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(187, '201707187', '83', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150}}', '{\"firstname\":\" Bijith \",\"lastname\":\" Varghese \",\"email\":\" bijith.vs@gmail.com \",\"phone\":\"8606147711\",\"address1\":\"7C, Asset City Bay, Near Railway Overbridge, Chathari, Tripunithura \",\"address2\":null,\"city\":\" Ernakulam \",\"state\":\" Kerala \",\"zip\":\"682301\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, NULL, 'FREE', 'cash on delivery', '[]', NULL, NULL, '300', '1499106603', '2017-07-04', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(264, '201707264', NULL, '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":450}}', '{\"firstname\":\"Nikhil \",\"lastname\":\"Cherian\",\"email\":\"Cherian\",\"phone\":\"9497718668\",\"address1\":\"\",\"address2\":\"\",\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682001\",\"payment_type\":\"online payment\"}', NULL, NULL, NULL, 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":null}]', '', NULL, '450', '1499179659', '2017-07-05', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(249, '201707249', '97', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"8e296a067a37563370ded05f5a3bf3ec\":{\"id\":\"25\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_25_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8e296a067a37563370ded05f5a3bf3ec\",\"subtotal\":150}}', '{\"firstname\":\" terese \",\"lastname\":\" jilfy\",\"email\":\"null\",\"phone\":\"null\",\"address1\":\" Arakkal house,maradu p o,kattithara road, krps 236, opposite good earth habitat,\",\"address2\":null,\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682304\",\"payment_type\":\" cash on delivery \"}', NULL, NULL, NULL, 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1499160282', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(265, '201707265', NULL, '{\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150}}', '{\"firstname\":\"Bijith\",\"lastname\":\"Varghese\",\"email\":\"bijith.vs@gmail.com\",\"phone\":\"8606147711\",\"address1\":\"7C, Asset City Bay, Near Railway Overbridge, Chathari, Tripunithura\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682301\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, NULL, 'FREE', 'cash on delivery', '[]', '', NULL, '300', '1499226888', '2017-07-05', NULL, '[{\"vendor\":null,\"status\":null,\"delivery_time\":null},{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(350, '201707350', '138', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150}}', '{\"firstname\":\"Angela\",\"lastname\":\"Rose\",\"email\":\"angelarose999@gmail.com\",\"phone\":\"8129011571\",\"address1\":\"D\\/O Dr.Thomas Antony, near Panayappilly west bus stop, panayappilly west\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"kerala\",\"zip\":\"682002\",\"payment_type\":\"online payment\"}', NULL, NULL, '[]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '300', '1499926862', '2017-07-13', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(374, '201707374', '142', '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Rajalakshmi S\",\"lastname\":\"Menon\",\"email\":\"menonrajalakshmi@gmail.com\",\"phone\":\"9940061512\",\"address1\":\"50\\/832E, GTWRA-52, CHANGAMPUZHA SAMADHI ROAD, EDAPPALLY\",\"address2\":null,\"city\":\"KOCHI\",\"state\":\"Kerala\",\"zip\":\"682024\",\"payment_type\":null}', NULL, NULL, '[]', 'FREE', NULL, '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '320', '1499962298', '', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', NULL),
(439, '201707439', '157', '{\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Rizana\",\"lastname\":\"Sooraj\",\"email\":\"rizbubly@gmail.com\",\"phone\":\"8589874393\",\"address1\":\"B5kent nalukettu chakkaraparamb road vennala Kochi \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682028\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1501333725', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(381, '201707381', '143', '{\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150}}', '{\"firstname\":\"Indu\",\"lastname\":\"Das\",\"email\":\"indukdas@gmail.com\",\"phone\":\"09447336181\",\"address1\":\"15D, MIR Green, Mavelipuram, Kakkanad\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Not Specified\",\"zip\":\"683020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1500016590', '2017-07-15', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'No added sugar. Please make a delivery before 12 pm if possible', NULL),
(411, '201707411', '150', '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":450},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"6ea9ab1baa0efb9e19094440c317e21b\":{\"id\":\"29\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_29_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6ea9ab1baa0efb9e19094440c317e21b\",\"subtotal\":150}}', '{\"firstname\":\"Antony\",\"lastname\":\"Christopher\",\"email\":\"anto4you@gmail.com\",\"phone\":\"9995811055\",\"address1\":\"Visual IQ, world trade center, info park phase 1\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"accepted\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '920', '1500433274', '2017-07-19', NULL, '[{\"admin\":\"\",\"status\":\"on_delivery\",\"delivery_time\":\"\"}]', 'ok', 'Deliver between 12pm and 1pm', 0),
(426, '201707426', NULL, '{\"02e74f10e0327ad868d138f2b4fdd6f0\":{\"id\":\"27\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":120,\"name\":\"COLD BREEZE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_27_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"02e74f10e0327ad868d138f2b4fdd6f0\",\"subtotal\":120}}', '{\"firstname\":\"PETER\",\"lastname\":\"ROMELL\",\"email\":\"romell.peter66@gmail.com\",\"phone\":\"8281423739\",\"address1\":\"PARAPULLIL HOUSE,CHURCH ROAD, PERUMPILLY, NARAKKAL ,VYPIN ENAKULAM\",\"address2\":\"\",\"city\":\"KOCHI\",\"state\":\"KERALA\",\"zip\":\"682505\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"accepted\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '140', '1500535591', '2017-07-20', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(414, '201707414', NULL, '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150}}', '{\"firstname\":\"Anish\",\"lastname\":\"Karim\",\"email\":\"canishk@gmail.com\",\"phone\":\"9947948969\",\"address1\":\"Flat #3B, Cyber Heights, Asset Homes, Down to Surabhi Nagar, VSNL Lane Road, Kakkanad\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"accepted\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '320', '1500442386', '2017-07-19', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(420, '201707420', '151', '{\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Priya\",\"lastname\":\"Joseph\",\"email\":\"priyajosf@gmail.com\",\"phone\":\"9995331029\",\"address1\":\"Brigade World trade Centre, Infopark\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682042\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"accepted\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '320', '1500522459', '2017-07-20', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', 'Please deliver after 12 PM', 0),
(438, '201707438', '135', '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"blesson\",\"lastname\":\"john\",\"email\":\"richierichkochi@gmail.com\",\"phone\":\"7511120402\",\"address1\":\"Richie Rich Store, Opp Matsyafed, Near HDFC, Subash Chandra Bose Road, Elamkulam\",\"address2\":null,\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682019\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '340', '1501323416', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(430, '201707430', NULL, '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"Fredrick\",\"lastname\":\"Williams\",\"email\":\"fredrickwilliams.dr@gmail.com\",\"phone\":\"8089031385\",\"address1\":\"Appt 11 H, Chakolas Waterscapes, Thevara Ferry Road\",\"address2\":\"\",\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1500903377', '2017-07-25', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(428, '201707428', '153', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Catherine\",\"lastname\":\"Emmanuel\",\"email\":\"mariageorge86@gmail.com\",\"phone\":\"9745106687\",\"address1\":\"1D, Abad Sunshine Court, Pappalli Lane, Vazhakkala\",\"address2\":null,\"city\":\"cochin\",\"state\":\"kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '170', '1500649375', '2017-07-22', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(437, '201707437', '155', '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"6ea9ab1baa0efb9e19094440c317e21b\":{\"id\":\"29\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_29_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6ea9ab1baa0efb9e19094440c317e21b\",\"subtotal\":150}}', '{\"firstname\":\"jizma\",\"lastname\":\"beevi\",\"email\":\"jiz.beevitr@gmail.com\",\"phone\":\"9895559746\",\"address1\":\"villa No-27,Star Enclave,V P marakkar Road,Edappally\",\"address2\":null,\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682024\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '470', '1501269746', '2017-07-29', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(432, '201707432', NULL, '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"Jizma\",\"lastname\":\"Beevi\",\"email\":\"jiz.beevitr@gmail.com\",\"phone\":\"9895559746\",\"address1\":\"villa No-27,star enclave,V.P Marakkar road,Edappally\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"kerala\",\"zip\":\"682024\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '320', '1501094362', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(433, '201707433', '153', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Catherine\",\"lastname\":\"Emmanuel\",\"email\":\"mariageorge86@gmail.com\",\"phone\":\"9745106687\",\"address1\":\"1D, Abad Sunshine Court, Pappalli Lane, Vazhakkala\",\"address2\":null,\"city\":\"cochin\",\"state\":\"kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"accepted\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '170', '1501171417', '2017-07-28', NULL, '[{\"admin\":\"\",\"status\":\"on_delivery\",\"delivery_time\":\"\"}]', 'ok', '', 0);
INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `order_status`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivery_date`, `delivary_datetime`, `delivery_status`, `viewed`, `delivery_note`, `coupon_id`) VALUES
(440, '201707440', '157', '{\"3c59dc048e8850243be8079a5c74d079\":{\"id\":\"21\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_21_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"3c59dc048e8850243be8079a5c74d079\",\"subtotal\":150},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Rizana\",\"lastname\":\"Sooraj\",\"email\":\"rizbubly@gmail.com\",\"phone\":\"8589874393\",\"address1\":\"B5kent nalukettu chakkaraparamb road vennala Kochi \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682028\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '470', '1501337891', '2017-07-30', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(441, '201707441', '159', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Maneesha\",\"lastname\":\"Kumar\",\"email\":\"maneesha.kumar27@gmail.com\",\"phone\":\"8592092046\",\"address1\":\"404 Govind apartment, kalathiparambil roaf\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"kerala\",\"zip\":\"682016\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '620', '1501472785', '2017-07-31', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'Label the drinks with name', 0),
(444, '201708444', '160', '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150}}', '{\"firstname\":\"Dr. Robin Sajan\",\"lastname\":\"Chacko\",\"email\":\"robinsajan@hotmail.com\",\"phone\":\"9496140000\",\"address1\":\"House No: 39, Nediyedath Road, Amrita Nagar, Edapally\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682041\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '320', '1501571228', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'Kudakuthiyil House', 0),
(448, '201708448', NULL, '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150}}', '{\"firstname\":\"PRADIPTI \",\"lastname\":\"JAYARAM\",\"email\":\"pradiptijayaram@gmail.com\",\"phone\":\"9884397058\",\"address1\":\"kalyanram chamayam, kadavanthra, opposite lion\'s club community hall \",\"address2\":\"\",\"city\":\"kochi \",\"state\":\"kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '450', '1501744207', '2017-08-03', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'wILL RETURN BOTTLES ', 0),
(447, '201708447', '162', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"7\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"7\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150}}', '{\"firstname\":\"Sarath\",\"lastname\":\"Radhakrishnan\",\"email\":\"rk.sarath@gmail.com\",\"phone\":\"9846833333\",\"address1\":\"F-3,Galaxy Winston,Chilavanoor Road,Kadavnthra \",\"address2\":null,\"city\":\"Ernakulam \",\"state\":\"Kerala \",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '470', '1501594319', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 7),
(452, '201708452', '167', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Sarah\",\"lastname\":\"Adeel\",\"email\":\"sarahzia1994@gmail.com\",\"phone\":\"9995783528\",\"address1\":\"4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1501854820', '2017-08-05', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(451, '201708451', '166', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Jithin\",\"lastname\":\"Babu\",\"email\":\"jithinjb@gmail.com\",\"phone\":\"9446671353\",\"address1\":\"Padath Infotainment, Manorama Memorial Building,Aysha Road\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682019\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '170', '1501831834', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(453, '201708453', NULL, '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170}}', '{\"firstname\":\"Hari\",\"lastname\":\"Krishnan\",\"email\":\"toneo_hari@yahoo.co.in\",\"phone\":\"9447454396\",\"address1\":\"Flat 1 E, Royal Stadium Mansion, Nr Kadavanthara Police Station\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '190', '1501919787', '2017-08-05', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '9447454396 Hari', 0),
(454, '201708454', NULL, '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170}}', '{\"firstname\":\"Hari\",\"lastname\":\"Krishnan\",\"email\":\"toneo_hari@yahoo.co.in\",\"phone\":\"9447454396\",\"address1\":\"Flat 1E, Royal Stadium Mansion, Nr Kadavanthara Police Station\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '190', '1501920047', '2017-08-05', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(455, '201708455', '167', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Sarah\",\"lastname\":\"Adeel\",\"email\":\"sarahzia1994@gmail.com\",\"phone\":\"9995783528\",\"address1\":\"4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1501932480', '2017-08-07', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(456, '201708456', '168', '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Jisna\",\"lastname\":\"Arjun\",\"email\":\"jisnajm@gmail.com\",\"phone\":\"8593932993\",\"address1\":\"19f, arista, olive kalista, edachira road\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1501937288', '2017-08-05', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(457, '201708457', '169', '{\"02e74f10e0327ad868d138f2b4fdd6f0\":{\"id\":\"27\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":120,\"name\":\"COLD BREEZE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_27_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"02e74f10e0327ad868d138f2b4fdd6f0\",\"subtotal\":120},\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150}}', '{\"firstname\":\"Virajrao\",\"lastname\":\"Kore\",\"email\":\"virajrao23@gmail.com\",\"phone\":\"8446324444\",\"address1\":\"Flat no 2106, Vattekunnam, Edappally, Ernakulam, Kerala 682024 Oceanus Maple, Address\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682024\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '290', '1501948526', '2017-08-05', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(458, '201708458', NULL, '{\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150},\"b6d767d2f8ed5d21a44b0e5886680cb9\":{\"id\":\"22\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_22_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"b6d767d2f8ed5d21a44b0e5886680cb9\",\"subtotal\":150}}', '{\"firstname\":\"Justin\",\"lastname\":\"Arumbathu\",\"email\":\"justin62@gmail.com\",\"phone\":\"9995980191\",\"address1\":\"A3,Meera Tower,St Benedict Road,Ernakulam North,Near Presidency Hotel\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682018\",\"payment_type\":null}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', NULL, '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1501992950', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(459, '201708459', NULL, '{\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150},\"34173cb38f07f89ddbebc2ac9128303f\":{\"id\":\"30\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_30_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"34173cb38f07f89ddbebc2ac9128303f\",\"subtotal\":150}}', '{\"firstname\":\"Justin\",\"lastname\":\"Arumbathu\",\"email\":\"justin62@gmail.com\",\"phone\":\"9995980191\",\"address1\":\"A3,Meera Tower,St Benedict Road,Ernakulam North,Near Presidency Hotel\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682018\",\"payment_type\":null}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', NULL, '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1501993172', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(460, '201708460', '171', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":340},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150}}', '{\"firstname\":\"rashida\",\"lastname\":\"Hatim\",\"email\":\"rash13_k@hotmail.com\",\"phone\":\"9895279740\",\"address1\":\"Green villa, town hall road,koovapadam\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682002\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '640', '1502013602', '2017-08-07', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(461, '201708461', '172', '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150}}', '{\"firstname\":\"Govind\",\"lastname\":\"Chandran\",\"email\":\"govindchandran@gmail.com\",\"phone\":\"8123011223\",\"address1\":\"D1301 Purva Eternity, Athani, Kusumagiri PO, Kakkanad-Pallikara road, Kakkanad\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1502036172', '2017-08-07', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'Need it delivered at 8am itself', 0),
(462, '201708462', '167', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Sarah\",\"lastname\":\"Adeel\",\"email\":\"sarahzia1994@gmail.com\",\"phone\":\"9995783528\",\"address1\":\"4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1502076262', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(463, '201708463', '173', '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150}}', '{\"firstname\":\"Sahida\",\"lastname\":\"Jaleel\",\"email\":\"sahida.a.jaleel@gmail.com\",\"phone\":\"9742822522\",\"address1\":\"Phase 4, carnival infopark\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1502089888', '2017-08-07', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(464, '201708464', '169', '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150},\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150},\"02e74f10e0327ad868d138f2b4fdd6f0\":{\"id\":\"27\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":120,\"name\":\"COLD BREEZE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_27_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"02e74f10e0327ad868d138f2b4fdd6f0\",\"subtotal\":120}}', '{\"firstname\":\"Virajrao\",\"lastname\":\"Kore\",\"email\":\"virajrao23@gmail.com\",\"phone\":\"8446324444\",\"address1\":\"Flat no 2106, Vattekunnam, Edappally, Ernakulam, Kerala 682024 Oceanus Maple, Address\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682024\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '420', '1502112945', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(465, '201708465', '175', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Piyush\",\"lastname\":\"Agarwal\",\"email\":\"dr.piyush2007@gmail.com\",\"phone\":\"8075932358\",\"address1\":\"2106, Oceanus Maple, vattekunnam, Edapally\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682024\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '470', '1502197729', '2017-08-08', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(466, '201708466', '167', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Sarah\",\"lastname\":\"Adeel\",\"email\":\"sarahzia1994@gmail.com\",\"phone\":\"9995783528\",\"address1\":\"4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1502205221', '2017-08-09', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(467, '201708467', '177', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Zara\",\"lastname\":\"Afthab\",\"email\":\"zaraxoxo1@gmail.com\",\"phone\":\"8593962754\",\"address1\":\"8c , Baypride towers, Marine Drive\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala \",\"zip\":\"682031\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1502274163', '2017-08-10', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(468, '201708468', NULL, '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150}}', '{\"firstname\":\"Bijith\",\"lastname\":\"Varghese\",\"email\":\"bijith.vs@gmail.com\",\"phone\":\"8606147711\",\"address1\":\"7C, Asset City Bay, Near Railway Overbridge, Chathari, Tripunithura\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682301\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1502278533', '2017-08-09', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(469, '201708469', '162', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"7\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"7\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Sarath\",\"lastname\":\"Radhakrishnan\",\"email\":\"rk.sarath@gmail.com\",\"phone\":\"9846833333\",\"address1\":\"F-3,Galaxy Winston,Chilavanoor Road,Kadavnthra \",\"address2\":null,\"city\":\"Ernakulam \",\"state\":\"Kerala \",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '320', '1502283986', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 7),
(470, '201708470', '167', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Sarah\",\"lastname\":\"Adeel\",\"email\":\"sarahzia1994@gmail.com\",\"phone\":\"9995783528\",\"address1\":\"4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1502290075', '2017-08-10', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(471, '201708471', '162', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":300}}', '{\"firstname\":\"Sarath\",\"lastname\":\"Radhakrishnan\",\"email\":\"rk.sarath@gmail.com\",\"phone\":\"9846833333\",\"address1\":\"F-3,Galaxy Winston,Chilavanoor Road,Kadavnthra \",\"address2\":null,\"city\":\"Ernakulam \",\"state\":\"Kerala \",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1502340060', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(472, '201708472', NULL, '{\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":450}}', '{\"firstname\":\"Abhisek\",\"lastname\":\"Mohanty\",\"email\":\"abhilipu.me@gmail.com\",\"phone\":\"8943566241\",\"address1\":\"FLAT NO 303 , BLOCK -4 , EASLAND ENCLAVE APARTMENTS  , BHARAT PETROLEUM CORPORATION LTD , ELAMKULAM \",\"address2\":\"\",\"city\":\"KOCHI\",\"state\":\"KERALA\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '450', '1502362756', 'today', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(473, '201708473', '167', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":300}}', '{\"firstname\":\"Sarah\",\"lastname\":\"Adeel\",\"email\":\"sarahzia1994@gmail.com\",\"phone\":\"9995783528\",\"address1\":\"4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1502609592', '2017-08-14', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(474, '201708474', '178', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":340},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Sooraj\",\"lastname\":\"Y S\",\"email\":\"drsooraj@gmail.com\",\"phone\":\"9633177608\",\"address1\":\"A-2, Riverdale Park Apartments, Vrindavanam, Elamkulam, Vyttila\",\"address2\":null,\"city\":\"Kochi \",\"state\":\"Kerala \",\"zip\":\"682019\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '490', '1502632790', '2017-08-14', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(475, '201708475', '176', '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":null,\"lastname\":null,\"email\":null,\"phone\":null,\"address1\":null,\"address2\":null,\"city\":null,\"state\":null,\"zip\":null,\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1502689425', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(476, '201708476', NULL, '{\"6ea9ab1baa0efb9e19094440c317e21b\":{\"id\":\"29\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_29_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6ea9ab1baa0efb9e19094440c317e21b\",\"subtotal\":150}}', '{\"firstname\":\"asma\",\"lastname\":\"faraz\",\"email\":\"asmafaraz777@gmail.com\",\"phone\":\"9846068111\",\"address1\":\"6d baypride towers\",\"address2\":\"\",\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682031\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1502716051', '2017-08-15', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(477, '201708477', NULL, '{\"3c59dc048e8850243be8079a5c74d079\":{\"id\":\"21\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_21_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"3c59dc048e8850243be8079a5c74d079\",\"subtotal\":150},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Annette\",\"lastname\":\"Hogan\",\"email\":\"ann311994@gmail.com\",\"phone\":\"7994083208\",\"address1\":\"House No:4, Street no: 2A, Green Gardens, Karshaka Road, Vaduthala.\",\"address2\":\"\",\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682023\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '600', '1502732548', '2017-08-15', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(478, '201708478', '176', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":450}}', '{\"firstname\":\"Abhisek Mohanty\",\"lastname\":\"Mohanty\",\"email\":\"abhilipu.me@gmail.com\",\"phone\":\"8943566241\",\"address1\":\"FLAT 303 ,BLOCK 4 , EASLAND ENCLAVE APARTMENTS , BHARAT PETROLEUM , ELAMKULAM , OPPOSITE max STORE . \",\"address2\":null,\"city\":\"KOCHI\",\"state\":\"KERALA\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '450', '1502782511', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'please deliver before 2:30 pm today . ', 0),
(479, '201708479', NULL, '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150}}', '{\"firstname\":\"Faraz\",\"lastname\":\"Javeed\",\"email\":\"farazabad@gmail.com\",\"phone\":\"9846066111\",\"address1\":\"6D, baypride towers, marine drive\",\"address2\":\"\",\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682031\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1502809593', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(480, '201708480', '184', '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Rubin\",\"lastname\":\"Joseph\",\"email\":\"rubooze83@gmail.com\",\"phone\":\"9947014422\",\"address1\":\"Flat no 6c,barons,skyline imperial gardens,stadium link road,kaloor 25\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682025\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '490', '1502810189', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(481, '201708481', '183', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"7\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"7\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"Dr Dibna\",\"lastname\":\"C H\",\"email\":\"dibs48@gmail.com\",\"phone\":\"9539118080\",\"address1\":\"Flat No 9D, vijaya glimpses, main avenue, jawahar nagar,kadavanthra \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1502866972', '2017-08-16', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 7),
(482, '201708482', NULL, '{\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150}}', '{\"firstname\":\"Hari\",\"lastname\":\"Krishnan\",\"email\":\"toneo_hari@yahoo.co.in\",\"phone\":\"9447454396\",\"address1\":\"Term office, BSNL ctsd complex, karshala Road, Kadavanthra\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1502870362', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(483, '201708483', NULL, '{\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150}}', '{\"firstname\":\"Hari\",\"lastname\":\"Krishnan\",\"email\":\"toneo_hari@yahoo.co.in\",\"phone\":\"9447454396\",\"address1\":\"Term office, BSNL ctsd complex, karshala Road, Kadavanthra\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '170', '1502870535', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0);
INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `order_status`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivery_date`, `delivary_datetime`, `delivery_status`, `viewed`, `delivery_note`, `coupon_id`) VALUES
(484, '201708484', '178', '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":300},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150}}', '{\"firstname\":\"Sooraj\",\"lastname\":\"Y S\",\"email\":\"drsooraj@gmail.com\",\"phone\":\"9633177608\",\"address1\":\"A-2, Riverdale Park Apartments, Vrindavanam, Elamkulam, Vyttila\",\"address2\":null,\"city\":\"Kochi \",\"state\":\"Kerala \",\"zip\":\"682019\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '450', '1502890617', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(485, '201708485', NULL, '{\"8e296a067a37563370ded05f5a3bf3ec\":{\"id\":\"25\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_25_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8e296a067a37563370ded05f5a3bf3ec\",\"subtotal\":150},\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Athulya\",\"lastname\":\"Ajith\",\"email\":\"athulyaajith3@gmail.com\",\"phone\":\"918891812396\",\"address1\":\"Poornam Info Vision Pvt Ltd, P.B No.5406, CSEZ P.O\",\"address2\":\"\",\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682037\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '450', '1502985077', '2017-08-18', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(486, '201708486', '167', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Sarah\",\"lastname\":\"Adeel\",\"email\":\"sarahzia1994@gmail.com\",\"phone\":\"9995783528\",\"address1\":\"4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1503162728', '2017-08-20', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(487, '201708487', NULL, '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Neelima\",\"lastname\":\"Sandip\",\"email\":\"Neelima1505@gmail.com\",\"phone\":\"09400090123\",\"address1\":\"8A1,Rds Avenue One,PANAMPILLY NAGAR\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682036\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '320', '1503200667', '2017-08-21', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(488, '201708488', '167', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Sarah\",\"lastname\":\"Adeel\",\"email\":\"sarahzia1994@gmail.com\",\"phone\":\"9995783528\",\"address1\":\"4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1503246209', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(489, '201708489', '147', '{\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150}}', '{\"firstname\":\"Anuja\",\"lastname\":\"Vikas\",\"email\":\"anuja.a5@gmail.com\",\"phone\":\"9995327222\",\"address1\":\"\\\"Vaishnavi\\\", house no 208, cross road no 11, Girinagar, Kochi\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1503301145', '2017-08-21', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(490, '201708490', NULL, '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":300}}', '{\"firstname\":\"Neelima\",\"lastname\":\"Sandip\",\"email\":\"Neelima1505@gmail.com\",\"phone\":\"09400090123\",\"address1\":\"8A1,Rds Avenue One,PANAMPILLY NAGAR\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682036\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1503359277', '2017-08-22', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(491, '201708491', '167', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Sarah\",\"lastname\":\"Adeel\",\"email\":\"sarahzia1994@gmail.com\",\"phone\":\"9995783528\",\"address1\":\"4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1503422265', '2017-08-23', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(492, '201708492', '194', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150}}', '{\"firstname\":\"Dibin\",\"lastname\":\"Jos\",\"email\":\"panoplywedding@gmail.com\",\"phone\":\"9895785302\",\"address1\":\"Kizhakkoodan House , Society Road\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682304\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1503426921', '2017-08-23', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(493, '201708493', '164', '{\"02e74f10e0327ad868d138f2b4fdd6f0\":{\"id\":\"27\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":120,\"name\":\"COLD BREEZE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_27_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"02e74f10e0327ad868d138f2b4fdd6f0\",\"subtotal\":120}}', '{\"firstname\":\"Anileeta\",\"lastname\":\"Johny\",\"email\":\"anileetaj@gmail.com\",\"phone\":\"7259892342\",\"address1\":\"Apartment no 1804, Purvankara moonreach apartments,  kakkanad-682030 \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '140', '1503482405', '2017-08-23', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(494, '201708494', NULL, '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150}}', '{\"firstname\":\"Dr.Sabthami \",\"lastname\":\"chandran\",\"email\":\"stuartrockin@gmail.com\",\"phone\":\"8848013258\",\"address1\":\"PG Resident, department of microbiology, amrita institute of medical science , ponekkara,kochi\",\"address2\":\"\",\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682041\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '470', '1503545404', '2017-08-24', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(495, '201708495', NULL, '{\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150}}', '{\"firstname\":\"Sri Sruthy\",\"lastname\":\"Jithu\",\"email\":\"legacy_85@hotmail.com\",\"phone\":\"9020801777\",\"address1\":\"Amrita Institute of Medical Sciences\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682041\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1503558757', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(496, '201708496', '182', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":300},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150}}', '{\"firstname\":\"ab\",\"lastname\":\"Mohanty\",\"email\":\"abhilipu.me@gmail.com\",\"phone\":\"8943566241\",\"address1\":\"FLAT 303 , BLOCK - 4 , EASLAND ENCLAVE APARTMENTS , BHARAT PETROLEUM ,ELAMKULAM \",\"address2\":null,\"city\":\"KOCHI\",\"state\":\"KERALA\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '450', '1503567915', 'today evening before 6 pm . ', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(497, '201708497', '167', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":300}}', '{\"firstname\":\"Sarah\",\"lastname\":\"Adeel\",\"email\":\"sarahzia1994@gmail.com\",\"phone\":\"9995783528\",\"address1\":\"4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1503576903', '2017-08-25', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(498, '201708498', '197', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Anish\",\"lastname\":\"Karim\",\"email\":\"canishk@gmail.com\",\"phone\":\"9947948969\",\"address1\":\"Flat #3B, Cyber Heights, Asset Homes,VSNL Lane, Kakkanad\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1503635792', '2017-08-25', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(499, '201708499', '198', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150}}', '{\"firstname\":\"Sooraj\",\"lastname\":\"Nambiar\",\"email\":\"tksnambiar@gmail.com\",\"phone\":\"9035000252\",\"address1\":\"S5,  Saraswathi,  Sangam Complex,St Martins Church Road, Palarivattom\",\"address2\":null,\"city\":\"Kochin\",\"state\":\"Kerala\",\"zip\":\"682025\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '470', '1503663214', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(500, '201708500', NULL, '{\"6ea9ab1baa0efb9e19094440c317e21b\":{\"id\":\"29\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_29_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6ea9ab1baa0efb9e19094440c317e21b\",\"subtotal\":150},\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150}}', '{\"firstname\":\"ashik\",\"lastname\":\"salim\",\"email\":\"ashikns@gmail.com\",\"phone\":\"9995228803\",\"address1\":\"tra 25 , Adhapilly road, near EMC hospital,Palarivattom pipeline\",\"address2\":\"\",\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682019\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1503745999', '2017-08-26', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(501, '201708501', '194', '{\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150}}', '{\"firstname\":\"Dibin\",\"lastname\":\"Jos\",\"email\":\"panoplywedding@gmail.com\",\"phone\":\"9895785302\",\"address1\":\"Kizhakkoodan House , Society Road\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682304\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1503780477', '2017-08-27', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(502, '201708502', '199', '{\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150}}', '{\"firstname\":\"Ayaan\",\"lastname\":\"Faraz\",\"email\":\"ayaanfaraz777@gmail.com\",\"phone\":\"9846068111\",\"address1\":\"6d bay pride towers,marine drive \",\"address2\":null,\"city\":\"Kochi \",\"state\":\"Kerala \",\"zip\":\"682031\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1503801092', '2017-08-27', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(503, '201708503', '200', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Madathil\",\"lastname\":\"Balakrishnan\",\"email\":\"bkrish07@gmail.com\",\"phone\":\"9847342428\",\"address1\":\"Amrutha 30 171 B Mukuttil, Temple Road  Poonithura, Kochi\",\"address2\":null,\"city\":\"KOCHI\",\"state\":\"KERALA\",\"zip\":\"682038\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '320', '1503804056', '2017-08-28', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(504, '201708504', '202', '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"b6d767d2f8ed5d21a44b0e5886680cb9\":{\"id\":\"22\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_22_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"b6d767d2f8ed5d21a44b0e5886680cb9\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Michelle\",\"lastname\":\"George\",\"email\":\"michellegeorge777@gmail.com\",\"phone\":\"9633438124\",\"address1\":\"18-A kannarkat condominium, toc-h road, Vyttila \",\"address2\":null,\"city\":\"Kochi \",\"state\":\"Kerala\",\"zip\":\"682019\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '470', '1503889405', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(505, '201708505', '202', '[]', '{\"firstname\":\"Michelle\",\"lastname\":\"George\",\"email\":\"michellegeorge777@gmail.com\",\"phone\":\"9633438124\",\"address1\":\"18-A kannarkat condominium, toc-h road, Vyttila \",\"address2\":null,\"city\":\"Kochi \",\"state\":\"Kerala\",\"zip\":\"682019\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, 'null', '20', 'cash on delivery', 'null', NULL, NULL, '0', '1503889509', '', NULL, 'null', 'ok', '', 0),
(506, '201708506', '142', '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150},\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150}}', '{\"firstname\":\"Rajalakshmi S\",\"lastname\":\"Menon\",\"email\":\"menonrajalakshmi@gmail.com\",\"phone\":\"9940061512\",\"address1\":\"50\\/832E, GTWRA-52, CHANGAMPUZHA SAMADHI ROAD, EDAPPALLY\",\"address2\":null,\"city\":\"KOCHI\",\"state\":\"Kerala\",\"zip\":\"682024\",\"payment_type\":null}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', NULL, '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1504110090', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(507, '201708507', '207', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"Aayisha\",\"lastname\":\"Yahiya\",\"email\":\"crescentproperties@yahoo.com\",\"phone\":\"8590648913\",\"address1\":\"Saffron residency, flat no 1A,Near matha mill stores, padmasree lane\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682024\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1504158640', '2017-08-31', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(508, '201709508', NULL, '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150}}', '{\"firstname\":\"Sana\",\"lastname\":\"Farhan\",\"email\":\"sanafarhaan@hotmail.com\",\"phone\":\"9846166555\",\"address1\":\"Abad Marine Plaza, 5F, marine drive,ernakulam\",\"address2\":\"\",\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682031\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1504536454', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(509, '201709509', '202', '{\"b6d767d2f8ed5d21a44b0e5886680cb9\":{\"id\":\"22\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_22_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"b6d767d2f8ed5d21a44b0e5886680cb9\",\"subtotal\":150},\"1ff1de774005f8da13f42943881c655f\":{\"id\":\"24\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_24_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff1de774005f8da13f42943881c655f\",\"subtotal\":150},\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170}}', '{\"firstname\":\"Michelle\",\"lastname\":\"George\",\"email\":\"michellegeorge777@gmail.com\",\"phone\":\"9633438124\",\"address1\":\"18-A kannarkat condominium, toc-h road, Vyttila \",\"address2\":null,\"city\":\"Kochi \",\"state\":\"Kerala\",\"zip\":\"682019\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '470', '1504626788', '2017-09-06', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(510, '201709510', NULL, '{\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Jithu\",\"lastname\":\"Sreekumar\",\"email\":\"legacy_85@hotmail.com\",\"phone\":\"9020801777\",\"address1\":\"Thengumpalil house, Cheranellore\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682034\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1504797879', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(511, '201709511', NULL, '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Meetha\",\"lastname\":\"Bhojwani\",\"email\":\"meethzcatherine@gmail.com\",\"phone\":\"9916477017\",\"address1\":\"Bank of India,  1st floor, Kaloor Towers, opp. A J Hall, Kaloor\",\"address2\":\"\",\"city\":\"Ernakulum\",\"state\":\"Kerala\",\"zip\":\"682017\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1504844349', '2017-09-08', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(512, '201709512', '215', '{\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150},\"37693cfc748049e45d87b8c7d8b9aacd\":{\"id\":\"23\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_23_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"37693cfc748049e45d87b8c7d8b9aacd\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150}}', '{\"firstname\":\"Indusree\",\"lastname\":\"Haridas\",\"email\":\"Indu.chammana@gmail.com\",\"phone\":\"9447454934\",\"address1\":\"Skyline ivy league Thalakkottu Moola Rd, Edachira, Kakkanad \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '620', '1505107413', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(513, '201709513', '216', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"6ea9ab1baa0efb9e19094440c317e21b\":{\"id\":\"29\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_29_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6ea9ab1baa0efb9e19094440c317e21b\",\"subtotal\":150}}', '{\"firstname\":\"shimi\",\"lastname\":\"nikhil\",\"email\":\"dr.shimynikhil@gmail.com\",\"phone\":\"00918086661117\",\"address1\":\"skyline green valley villas,villa 14,thurutheparambu road,vazhakkala\",\"address2\":null,\"city\":\"ernakulam\",\"state\":\"kerala\",\"zip\":\"682021\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '450', '1505115426', '2017-09-16', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(514, '201709514', NULL, '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"Rahul \",\"lastname\":\"Narayanan Kutty\",\"email\":\"rahul_nkutty@yahoo.com\",\"phone\":\"8590089898\",\"address1\":\"Kizhakke Kizhavana (H), Undayathu Vattil, Near to Sreekrishna Swami Temple, Panangad\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682506\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1505196476', '2017-09-12', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(515, '201709515', '219', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"yadu\",\"lastname\":\"rk\",\"email\":\"yaduk87@gmail.com\",\"phone\":\"7025710863\",\"address1\":\"souparnika, indiranagar[first right second house],kadavanthara cochin\",\"address2\":null,\"city\":\"ernakulam\",\"state\":\"kerela\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1505198409', '2017-09-12', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(516, '201709516', '221', '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":300}}', '{\"firstname\":\"Dinu\",\"lastname\":\"Sivaraman\",\"email\":\"dinups89@gmail.com\",\"phone\":\"9048253811\",\"address1\":\"Thachapuzha Lane, Pachalam P.O, Cochin-12\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682012\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1505296431', '2017-09-16', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(517, '201709517', NULL, '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Tintu\",\"lastname\":\"Ninan\",\"email\":\"tintu@pumexinfotech.com\",\"phone\":\"7560988881\",\"address1\":\"FLAT NO 8 E,HEERA CYBER VIEWS,near olive hotel,kakkanad\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1505454176', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(518, '201709518', '223', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170}}', '{\"firstname\":\"Indira\",\"lastname\":\"EB\",\"email\":\"indiraeb@gmail.com\",\"phone\":\"9495839720\",\"address1\":\"11D SUMMER SANDS, CLASSIC APARTMENTS, NEAR BHARATHA MATHA COLLEGE\",\"address2\":null,\"city\":\"THRIKKAKARA\",\"state\":\"KERALA\",\"zip\":\"682021\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '340', '1505479627', '2017-09-15', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(519, '201709519', NULL, '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150}}', '{\"firstname\":\"Neha \",\"lastname\":\"Nair\",\"email\":\"nairblues@gmail.com\",\"phone\":\"9946638602\",\"address1\":\"Heera Waters North Block 12 A Chilavannur Road\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '320', '1505490514', '2017-09-16', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(520, '201709520', '225', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"Arpita\",\"lastname\":\"Sebastian \",\"email\":\"arpitasebastian@gmail.com\",\"phone\":\"8089086636\",\"address1\":\"Palazhi, Opp. Margin free godown , kandanad PO Udyamperoor, tripunithura\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682305\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1505540305', '2017-09-16', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(521, '201709521', '214', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150}}', '{\"firstname\":null,\"lastname\":null,\"email\":null,\"phone\":null,\"address1\":null,\"address2\":null,\"city\":null,\"state\":null,\"zip\":null,\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1505543863', '2017-09-16', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0);
INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `order_status`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivery_date`, `delivary_datetime`, `delivery_status`, `viewed`, `delivery_note`, `coupon_id`) VALUES
(522, '201709522', '227', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1505557534', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(523, '201709523', '227', '{\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1505557674', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(524, '201709524', '227', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '640', '1505619659', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'Two bottles of pure pomegranate required but your software does not allow increasing required quantity', 0),
(525, '201709525', '226', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150}}', '{\"firstname\":\"Neha \",\"lastname\":\"Nair \",\"email\":\"nairblues@gmail.com\",\"phone\":\"9946638602\",\"address1\":\"Heera Waters North Block 12 A Chilavannur Road\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1505620073', '2017-09-17', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(526, '201709526', '215', '{\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":300},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":300},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":300},\"8e296a067a37563370ded05f5a3bf3ec\":{\"id\":\"25\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_25_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8e296a067a37563370ded05f5a3bf3ec\",\"subtotal\":300}}', '{\"firstname\":\"Indusree\",\"lastname\":\"Haridas\",\"email\":\"Indu.chammana@gmail.com\",\"phone\":\"9447454934\",\"address1\":\"Skyline ivy league Thalakkottu Moola Rd, Edachira, Kakkanad \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '1200', '1505665077', '2017-09-18', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(527, '201709527', '215', '[]', '{\"firstname\":\"Indusree\",\"lastname\":\"Haridas\",\"email\":\"Indu.chammana@gmail.com\",\"phone\":\"9447454934\",\"address1\":\"Skyline ivy league Thalakkottu Moola Rd, Edachira, Kakkanad \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":null}', NULL, NULL, 'null', '20', NULL, 'null', NULL, NULL, '0', '1505665124', NULL, NULL, 'null', NULL, NULL, 0),
(528, '201709528', NULL, '{\"3c59dc048e8850243be8079a5c74d079\":{\"id\":\"21\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_21_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"3c59dc048e8850243be8079a5c74d079\",\"subtotal\":150}}', '{\"firstname\":\"Sreelakshmi\",\"lastname\":\"L\",\"email\":\"lachurajesh03@gmail.com\",\"phone\":\"9895758536\",\"address1\":\"Swastika,TC 5\\/2930(1),ERA163A, Elamkulam lane 2\",\"address2\":\"\",\"city\":\"Sreekarym PO\",\"state\":\"Kerala\",\"zip\":\"695017\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '170', '1505667176', '2017-09-18', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'Please keep a note saying\r\n\"Love you loads Devootty.\"', 0),
(529, '201709529', '227', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150},\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '470', '1505696227', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(530, '201709530', '227', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":450}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '600', '1505797937', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(531, '201709531', '227', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":450},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '770', '1505983289', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'Please instruct delivery person to collect yesterday\'s amount.', 0),
(532, '201709532', '227', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":450},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"34173cb38f07f89ddbebc2ac9128303f\":{\"id\":\"30\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_30_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"34173cb38f07f89ddbebc2ac9128303f\",\"subtotal\":150}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '770', '1506057331', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(533, '201709533', '227', '{\"1c383cd30b7c298ab50293adfecb7b18\":{\"id\":\"35\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":0,\"name\":\"NUT MYLK\",\"shipping\":0,\"tax\":null,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_35_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1c383cd30b7c298ab50293adfecb7b18\",\"subtotal\":0},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":4,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":600}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '600', '1506232128', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(534, '201709534', NULL, '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150}}', '{\"firstname\":\"shyam\",\"lastname\":\"menon\",\"email\":\"shyamsmenon.shyam@gmail.com\",\"phone\":\"9895992292\",\"address1\":\"first floor, Asher building, ponnurunni, vytilla\",\"address2\":\"\",\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682019\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1506316021', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(535, '201709535', NULL, '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150}}', '{\"firstname\":\"Reghu\",\"lastname\":\"k.s.\",\"email\":\"reghuks@gmail.com\",\"phone\":\"8547190490\",\"address1\":\"Flat17b, Barons,Skyline Imperial Gardens, Kaloor\",\"address2\":\"\",\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682035\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '450', '1506338401', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(536, '201709536', '227', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":450},\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '600', '1506414330', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(537, '201709537', NULL, '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"farha\",\"lastname\":\"nasrullah\",\"email\":\"faffysultan@outlook.com\",\"phone\":\"8592883833\",\"address1\":\"faraas house near corporation playground elamakkara\",\"address2\":\"\",\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682026\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1506599461', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(538, '201709538', '227', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":450}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '600', '1506740567', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'quite a few of used bottles have accumulated. do you want any back for recycling .', 0),
(539, '201710539', '227', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":4,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":600}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '600', '1506820722', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'Used bottles can be collected today.', 0),
(540, '201710540', '227', '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":450}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '750', '1506922221', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(541, '201710541', '227', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":300}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1507002493', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'Please collect the empties today.', 0),
(542, '201710542', '236', '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Geetu\",\"lastname\":\"Anoop\",\"email\":\"geetuearnest@gmail.com\",\"phone\":\"8129311677\",\"address1\":\"SVRA,30 D,Star Valley Road,Mavelipuram,Kakkanad\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1507007728', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(543, '201710543', '239', '{\"1ff1de774005f8da13f42943881c655f\":{\"id\":\"24\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_24_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff1de774005f8da13f42943881c655f\",\"subtotal\":150}}', '{\"firstname\":\"Sreelakshmi\",\"lastname\":\"L\",\"email\":\"lachurajesh03@gmail.com\",\"phone\":\"9895758536\",\"address1\":\"Swastika,TC 5\\/2930(1),ERA163A, Elamkulam lane 2\",\"address2\":null,\"city\":\"Sreekarym PO\",\"state\":\"Kerala\",\"zip\":\"695017\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '170', '1507016578', '2017-10-04', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'Plz deliver at 11am.with HAPPY BIRTHDAY NOTE', 0),
(544, '201710544', '227', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":450}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '620', '1507194406', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(545, '201710545', '244', '{\"1c383cd30b7c298ab50293adfecb7b18\":{\"id\":\"35\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":0,\"name\":\"NUT MYLK\",\"shipping\":0,\"tax\":null,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_35_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1c383cd30b7c298ab50293adfecb7b18\",\"subtotal\":0}}', '{\"firstname\":\"mithun\",\"lastname\":\"raj\",\"email\":\"mithuraj.raj@gmail.com\",\"phone\":\"9447171663\",\"address1\":\"Leela Info Park, Unit IX-C, 9th floor PhaseIV, Kochi, Kerala, India\",\"address2\":null,\"city\":\"eranakulam\",\"state\":\"kerala\",\"zip\":\"686691\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '20', '1507551917', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(546, '201710546', '244', '{\"1c383cd30b7c298ab50293adfecb7b18\":{\"id\":\"35\",\"qty\":5,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":0,\"name\":\"NUT MYLK\",\"shipping\":0,\"tax\":null,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_35_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1c383cd30b7c298ab50293adfecb7b18\",\"subtotal\":0}}', '{\"firstname\":\"mithun\",\"lastname\":\"raj\",\"email\":\"mithuraj.raj@gmail.com\",\"phone\":\"9447171663\",\"address1\":\"Leela Info Park, Unit IX-C, 9th floor PhaseIV, Kochi, Kerala, India\",\"address2\":null,\"city\":\"eranakulam\",\"state\":\"kerala\",\"zip\":\"686691\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '20', '1507552023', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(547, '201710547', NULL, '{\"19ca14e7ea6328a42e0eb13d585e4c22\":{\"id\":\"36\",\"qty\":5,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":0,\"name\":\"DESI MOCHA\",\"shipping\":0,\"tax\":null,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_36_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"19ca14e7ea6328a42e0eb13d585e4c22\",\"subtotal\":0}}', '{\"firstname\":\"Ben\",\"lastname\":\"Antony\",\"email\":\"BENJOHNANTONY@GMAIL.COM\",\"phone\":\"9567654434\",\"address1\":\"Puthukkada House, Hillpalace P.O, Karingachira\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682301\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '20', '1507553322', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(548, '201710548', NULL, '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":340}}', '{\"firstname\":\"Panchimma\",\"lastname\":\"Cheriyan\",\"email\":\"panchimma@hotmail.com\",\"phone\":\"9895006453\",\"address1\":\"Phase 4, Carnival infopark \",\"address2\":\"\",\"city\":\"edachira, Kakkanad\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '340', '1507626934', '2017-10-10', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'Infopark delivery. Kindly contact via phone from downstairs ', 0),
(549, '201710549', '197', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Anish\",\"lastname\":\"Karim\",\"email\":\"canishk@gmail.com\",\"phone\":\"9947948969\",\"address1\":\"Flat #3B, Cyber Heights, Asset Homes,VSNL Lane, Kakkanad\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1507633499', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(551, '201710551', '247', '{\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150},\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150}}', '{\"firstname\":\"Lovewin\",\"lastname\":\"Vinu\",\"email\":\"lenendj@gmail.com\",\"phone\":\"7560944400\",\"address1\":\"Vinu Antony,Villa no 6,Ace Nimbus,Nivya road,Pottakuzy,Kaloor\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682017\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1507779113', '2017-10-12', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(552, '201710552', '248', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"liya\",\"lastname\":\"sunny\",\"email\":\"liyaooolsa949@gmail.com\",\"phone\":\"9740460085\",\"address1\":\"7\\/52- d , Annakutty\'s , Mavelipuram , Kakkanad\",\"address2\":null,\"city\":\"cochin\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1507792987', '2017-10-12', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(553, '201710553', '150', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":340}}', '{\"firstname\":\"Antony\",\"lastname\":\"Christopher\",\"email\":\"anto4you@gmail.com\",\"phone\":\"9995811055\",\"address1\":\"Visual IQ, world trade center, info park phase 1\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '490', '1507885345', '2017-10-13', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(554, '201710554', '250', '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150}}', '{\"firstname\":\"Jeevan\",\"lastname\":\"Damien\",\"email\":\"u4jeevan@gmail.com\",\"phone\":\"9995905647\",\"address1\":\"4A, Sky Park Residency, North Janatha Road, Palarivattom,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682025\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '320', '1508303813', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(555, '201710555', '252', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":300},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150}}', '{\"firstname\":\"donna\",\"lastname\":\"mitchell\",\"email\":\"indiamidwife@gmail.com\",\"phone\":\"9747833418\",\"address1\":\"golden kayaloram 8A\",\"address2\":null,\"city\":\"kundanoor\",\"state\":\"kerala\",\"zip\":\"682019\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '750', '1508478216', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(556, '201710556', '227', '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":450}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '600', '1508493489', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(557, '201710557', '253', '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":300}}', '{\"firstname\":\"Sajith\",\"lastname\":\"M R\",\"email\":\"mrsajith@gmail.com\",\"phone\":\"9539368042\",\"address1\":\"Flat No 6D, West Gate Terrace, Pandit Karuppan Road, Thevera, Ernakulam\",\"address2\":null,\"city\":\"KOCHI\",\"state\":\"KERALA\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1508507885', '2017-10-20', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(558, '201710558', '213', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170}}', '{\"firstname\":\"Hari\",\"lastname\":\"Kris\",\"email\":\"toneo_hari@yahoo.co.in\",\"phone\":\"9447454396\",\"address1\":\"Flat 1E, Royal Stadium Mansion, Near Kadavanthara Police Station\",\"address2\":null,\"city\":\"Ernakulam \",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '320', '1508577665', '2017-10-21', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0);
INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `order_status`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivery_date`, `delivary_datetime`, `delivery_status`, `viewed`, `delivery_note`, `coupon_id`) VALUES
(559, '201710559', '256', '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150}}', '{\"firstname\":\"Joseph\",\"lastname\":\"Dominic\",\"email\":\"josephdominic@cghearth.com\",\"phone\":\"919847434481\",\"address1\":\"11-B Uparika Malika, Pandit Karuppan Road\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":null}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', NULL, '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1508667821', '2017-10-23', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(560, '201710560', '256', '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150}}', '{\"firstname\":\"Joseph\",\"lastname\":\"Dominic\",\"email\":\"josephdominic@cghearth.com\",\"phone\":\"919847434481\",\"address1\":\"11-B Uparika Malika, Pandit Karuppan Road\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":null}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', NULL, '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1508668118', '2017-10-23', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(561, '201710561', '260', '{\"3c59dc048e8850243be8079a5c74d079\":{\"id\":\"21\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_21_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"3c59dc048e8850243be8079a5c74d079\",\"subtotal\":150},\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150}}', '{\"firstname\":\"Rosemary \",\"lastname\":\"Varghese \",\"email\":\"rosemary.koluthara@gmail.com\",\"phone\":\"9846144888\",\"address1\":\"Varghese Antony, Shanthi Nagar, Thevera \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala \",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1508739173', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(562, '201710562', '262', '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150}}', '{\"firstname\":\"Bhavana \",\"lastname\":\"Ranjan\",\"email\":\"bhavana.ranjan@gmail.com\",\"phone\":\"9947236453\",\"address1\":\"Hno12\\/522K, Style Villas, Mannadi Olikozhi Rd, near Satellite Township, Padamugal, Kakkanad West PO  \",\"address2\":null,\"city\":\"Kochi \",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '450', '1508754220', '2017-10-23', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(564, '201710564', NULL, '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Neelima\",\"lastname\":\"Sandip\",\"email\":\"Neelima1505@gmail.com\",\"phone\":\"09400090123\",\"address1\":\"8A1,Rds Avenue One,PANAMPILLY NAGAR\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682036\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1508789420', '2017-10-24', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(565, '201710565', '260', '{\"37693cfc748049e45d87b8c7d8b9aacd\":{\"id\":\"23\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_23_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"37693cfc748049e45d87b8c7d8b9aacd\",\"subtotal\":150},\"8e296a067a37563370ded05f5a3bf3ec\":{\"id\":\"25\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_25_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8e296a067a37563370ded05f5a3bf3ec\",\"subtotal\":150}}', '{\"firstname\":\"Rosemary \",\"lastname\":\"Varghese \",\"email\":\"rosemary.koluthara@gmail.com\",\"phone\":\"9846144888\",\"address1\":\"Varghese Antony, Shanthi Nagar, Thevera \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala \",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1508827208', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(566, '201710566', '234', '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"Kirti\",\"lastname\":\"Nair\",\"email\":\"nairkirti@yahoo.in\",\"phone\":\"9746826536\",\"address1\":\"Kirti C Nair, TechWyse IT Solutions, 5th Floor - Sana Towers, Jos Jn. , M. G Road, Kochi \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682016\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '470', '1508918082', '2017-10-25', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'Office is at 5th floor of Sana towers - building between Cylon Bake house & Reliance Trends. ', 0),
(567, '201710567', '263', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"98f13708210194c475687be6106a3b84\":{\"id\":\"20\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"COLD BREEZE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_20_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"98f13708210194c475687be6106a3b84\",\"subtotal\":150}}', '{\"firstname\":\"Jithu\",\"lastname\":\"K m\",\"email\":\"jithukm.jk@gmail.com\",\"phone\":\"9037899398\",\"address1\":\"Hb 06 mings wok\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682036\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1508918240', '2017-10-25', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(568, '201710568', '252', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":300},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":300},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150}}', '{\"firstname\":\"donna\",\"lastname\":\"mitchell\",\"email\":\"indiamidwife@gmail.com\",\"phone\":\"9747833418\",\"address1\":\"golden kayaloram 8A\",\"address2\":null,\"city\":\"kundanoor\",\"state\":\"kerala\",\"zip\":\"682019\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '900', '1508931162', 'today', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'hi!!\r\ncan you have this to me by 630pm tonight?', 0),
(569, '201710569', NULL, '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150},\"d67d8ab4f4c10bf22aa353e27879133c\":{\"id\":\"39\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":200,\"name\":\"NUT MYLK\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_39_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"d67d8ab4f4c10bf22aa353e27879133c\",\"subtotal\":200}}', '{\"firstname\":\"Anjusha\",\"lastname\":\"Mallaya\",\"email\":\"anjusha.mallaya@gmail.com\",\"phone\":\"9539349333\",\"address1\":\"40\\/6041 Balaji House, Next to SRT Distributors, T.D.West Road\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"KERALA\",\"zip\":\"682035\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '650', '1509005846', '2017-10-26', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'I am allergic to Pineapple. Please do not add pineapple in any of the juices. ', 0),
(570, '201710570', NULL, '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"Johnson\",\"lastname\":\"J\",\"email\":\"zero77cool@gmail.com\",\"phone\":\"8089792132\",\"address1\":\"MobME, 67\\/2355, V-one Plaza, Old Railway Station Road, Near Income Tax Office, Kacheripady\",\"address2\":\"\",\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682018\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1509019885', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(571, '201710571', '260', '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":300}}', '{\"firstname\":\"Rosemary \",\"lastname\":\"Varghese \",\"email\":\"rosemary.koluthara@gmail.com\",\"phone\":\"9846144888\",\"address1\":\"Varghese Antony, Shanthi Nagar, Thevera \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala \",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1509072182', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(572, '201710572', '263', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"Jithu\",\"lastname\":\"K m\",\"email\":\"jithukm.jk@gmail.com\",\"phone\":\"9037899398\",\"address1\":\"Hb 06 mings wok panampilly nagar\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682036\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1509078438', '2017-10-27', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(573, '201710573', '227', '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":300},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '600', '1509166407', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(582, '201711582', '252', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":450},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":300},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":300},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":300},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"donna\",\"lastname\":\"mitchell\",\"email\":\"indiamidwife@gmail.com\",\"phone\":\"9747833418\",\"address1\":\"golden kayaloram 8A\",\"address2\":null,\"city\":\"kundanoor\",\"state\":\"kerala\",\"zip\":\"682019\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '1500', '1509954564', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'hi!!\r\nAs soon as possible please\r\nthanks\r\ndonna', 0),
(579, '201711579', '263', '{\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Jithu\",\"lastname\":\"K m\",\"email\":\"jithukm.jk@gmail.com\",\"phone\":\"9037899398\",\"address1\":\"Hb 06 mings wok panampilly nagar\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682036\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1509611234', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(580, '201711580', NULL, '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Amal\",\"lastname\":\"M R\",\"email\":\"amal.mohan89@gmail.com\",\"phone\":\"7736898981\",\"address1\":\"chithra bhavan\",\"address2\":\"\",\"city\":\"cochin\",\"state\":\"kerala\",\"zip\":\"682022\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1509775596', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(581, '201711581', '213', '{\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150},\"d645920e395fedad7bbbed0eca3fe2e0\":{\"id\":\"40\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":220,\"name\":\"PASSION\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_40_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"d645920e395fedad7bbbed0eca3fe2e0\",\"subtotal\":220}}', '{\"firstname\":\"Hari\",\"lastname\":\"Kris\",\"email\":\"toneo_hari@yahoo.co.in\",\"phone\":\"9447454396\",\"address1\":\"Flat 1E, Royal Stadium Mansion, Near Kadavanthara Police Station\",\"address2\":null,\"city\":\"Ernakulam \",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '370', '1509954305', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'If possible before 2.30 pm today', 0),
(583, '201711583', '213', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":170}}', '{\"firstname\":\"Hari\",\"lastname\":\"Kris\",\"email\":\"toneo_hari@yahoo.co.in\",\"phone\":\"9447454396\",\"address1\":\"Flat 1E, Royal Stadium Mansion, Near Kadavanthara Police Station\",\"address2\":null,\"city\":\"Ernakulam \",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1510041983', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', 'By 2.30 pm if possible', 0),
(585, '201711585', NULL, '{\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":-20,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"22\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":-20}}', '{\"firstname\":\"Nidheesh\",\"lastname\":\"Boban\",\"email\":\"nidheeshboban@gmail.com\",\"phone\":\"9961408879\",\"address1\":\"Flat No:12D,Abad Sunshine Court, Pappali Lane, Opposite road of Abirami Hotel, Vazhakkala, Kakkanad\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '0', '1510064396', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 22),
(586, '201711586', '263', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":300},\"02e74f10e0327ad868d138f2b4fdd6f0\":{\"id\":\"27\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":120,\"name\":\"COLD BREEZE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_27_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"02e74f10e0327ad868d138f2b4fdd6f0\",\"subtotal\":120}}', '{\"firstname\":\"Jithu\",\"lastname\":\"K m\",\"email\":\"jithukm.jk@gmail.com\",\"phone\":\"9037899398\",\"address1\":\"Hb 06 mings wok panampilly nagar\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682036\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '420', '1510118014', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(587, '201711587', NULL, '{\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":6,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":-20,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"22\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":-120}}', '{\"firstname\":\"Nidheesh\",\"lastname\":\"Boban\",\"email\":\"nidheeshboban@gmail.com\",\"phone\":\"9947532887\",\"address1\":\"Flat No:12D,Abad Sunshine Court, Pappali Lane, Opposite road of Abirami Hotel, Vazhakkala, Kakkanad\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '-100', '1510136894', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 22),
(588, '201711588', NULL, '[]', '{\"firstname\":\"Nidheesh\",\"lastname\":\"Boban\",\"email\":\"nidheeshboban@gmail.com\",\"phone\":\"9947532887\",\"address1\":\"Flat No:12D,Abad Sunshine Court, Pappali Lane, Opposite road of Abirami Hotel, Vazhakkala, Kakkanad\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, 'null', '20', 'cash on delivery', 'null', NULL, NULL, '0', '1510137121', '2017-11-08', NULL, 'null', NULL, '', 0),
(589, '201711589', '264', '{\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":-20,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"22\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":-20}}', '{\"firstname\":\"Hanan \",\"lastname\":\"Fathim\",\"email\":\"minnu.kaliparambil@gmail.com\",\"phone\":\"9446583566\",\"address1\":\"Kunjumuhammed unni mavelipuram chennambilly house kakkanad plot no 285\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '0', '1510149835', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 22),
(590, '201711590', '265', '{\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":-20,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"22\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":-20}}', '{\"firstname\":\"Sahil\",\"lastname\":\"Anwar\",\"email\":\"sahiltn01@gmail\",\"phone\":\"8089566106\",\"address1\":\"Statue road,pandikudy, Kochi\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682001\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '0', '1510153844', '2017-11-09', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 22),
(591, '201711591', '266', '{\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"34173cb38f07f89ddbebc2ac9128303f\":{\"id\":\"30\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_30_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"34173cb38f07f89ddbebc2ac9128303f\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Manogna\",\"lastname\":\"Rajan\",\"email\":\"manogna17@gmail.com\",\"phone\":\"8129998522\",\"address1\":\"Flat 203 Confident Atria III Kuzhivellapady Edathala, After KMJ convention centre\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala \",\"zip\":\"682024\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '920', '1510209829', '2017-11-09', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'Hope to have good juices and gud experience to order again soon. Plz ensure packing is done well with no leakages..thanx!!', 0),
(592, '201711592', NULL, '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Nandita\",\"lastname\":\"Varma\",\"email\":\"nanditha.ajay@gmail.com\",\"phone\":\"9747284535\",\"address1\":\"48\\/349 Chithira, Varammel Lane, Perandoor, Elamakkara\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682026\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1510215730', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(593, '201711593', '267', '{\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170}}', '{\"firstname\":\"Abishek\",\"lastname\":\"Georgy\",\"email\":\"abishekgeorgyag@gmail.com\",\"phone\":\"9744051798\",\"address1\":\"Kalathuveetil house, thoppil edapally\",\"address2\":null,\"city\":\"ERNAKULAM \",\"state\":\"Kerala\",\"zip\":\"682024\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '190', '1510224399', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(594, '201711594', '252', '{\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":300},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":300},\"aab3238922bcc25a6f606eb525ffdc56\":{\"id\":\"14\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"LIVER LOVER\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_14_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"aab3238922bcc25a6f606eb525ffdc56\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":300}}', '{\"firstname\":\"donna\",\"lastname\":\"mitchell\",\"email\":\"indiamidwife@gmail.com\",\"phone\":\"9747833418\",\"address1\":\"golden kayaloram 8A\",\"address2\":null,\"city\":\"kundanoor\",\"state\":\"kerala\",\"zip\":\"682019\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '1050', '1510311580', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(595, '201711595', NULL, '{\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":-20,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"22\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":-20}}', '{\"firstname\":\"Neha\",\"lastname\":\"Fayaz\",\"email\":\"nazrinfayaz@gmail.com\",\"phone\":\"9746891578\",\"address1\":\"XII\\/1250, Opp. Satyas Studio\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682005\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '0', '1510312039', '2017-11-11', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 22),
(596, '201711596', NULL, '{\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":-20,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"22\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":-20}}', '{\"firstname\":\"Neha \",\"lastname\":\"Fayaz\",\"email\":\"nazrinfayaz@gmail.com\",\"phone\":\"9746891578\",\"address1\":\"XII\\/1250, Opp. Satyas Studio\",\"address2\":\"\",\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682005\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '0', '1510312304', '2017-11-11', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 22),
(597, '201711597', '270', '{\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":10,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":-20,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"22\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":-200}}', '{\"firstname\":\"Mary\",\"lastname\":\"Mathew\",\"email\":\"mmshilpa1995@gmail.com\",\"phone\":\"8593954649\",\"address1\":\"Kalathuveetil house, injiparambu road, unichara, thoppil edapally\",\"address2\":null,\"city\":\"ERNAKULAM \",\"state\":\"Kerala\",\"zip\":\"682021\",\"payment_type\":null}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', NULL, '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '-180', '1510375796', '2017-11-11', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 22),
(598, '201711598', '270', '[]', '{\"firstname\":\"Mary\",\"lastname\":\"Mathew\",\"email\":\"mmshilpa1995@gmail.com\",\"phone\":\"8593954649\",\"address1\":\"Kalathuveetil house, injiparambu road, unichara, thoppil edapally\",\"address2\":null,\"city\":\"ERNAKULAM \",\"state\":\"Kerala\",\"zip\":\"682021\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, 'null', '20', 'cash on delivery', 'null', NULL, NULL, '0', '1510375822', '2017-11-11', NULL, 'null', NULL, '', 0),
(599, '201711599', '252', '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":450},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":300},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":300},\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":3,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":450}}', '{\"firstname\":\"donna\",\"lastname\":\"mitchell\",\"email\":\"indiamidwife@gmail.com\",\"phone\":\"9747833418\",\"address1\":\"golden kayaloram 8A\",\"address2\":null,\"city\":\"kundanoor\",\"state\":\"kerala\",\"zip\":\"682019\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '1500', '1510555483', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(600, '201711600', NULL, '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":300}}', '{\"firstname\":\"Nandita\",\"lastname\":\"Varma\",\"email\":\"nanditha.ajay@gmail.com\",\"phone\":\"9747284535\",\"address1\":\"48\\/349 Chithira, Varammel Lane, Perandoor, Elamakkara\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682026\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1510644029', '2017-11-14', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0);
INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `order_status`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivery_date`, `delivary_datetime`, `delivery_status`, `viewed`, `delivery_note`, `coupon_id`) VALUES
(601, '201711601', '275', '{\"3416a75f4cea9109507cacd8e2f2aefc\":{\"id\":\"41\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":220,\"name\":\"PURE PASSION FRUITS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_41_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"3416a75f4cea9109507cacd8e2f2aefc\",\"subtotal\":220},\"17e62166fc8586dfa4d1bc0e1742c08b\":{\"id\":\"43\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":220,\"name\":\"PASSION\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_43_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"17e62166fc8586dfa4d1bc0e1742c08b\",\"subtotal\":220}}', '{\"firstname\":\"Anoop\",\"lastname\":\"John\",\"email\":\"anoop21linkdin@gmail.com\",\"phone\":\"8714511165\",\"address1\":\"Flat 3F43, Star Homes, Near KSRTC bus statiin\",\"address2\":null,\"city\":\"Giri nagar, Kathrikadavu\",\"state\":\"KERALA\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '440', '1510647115', '2017-11-14', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(602, '201711602', '275', '{\"3416a75f4cea9109507cacd8e2f2aefc\":{\"id\":\"41\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":220,\"name\":\"PURE PASSION FRUITS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_41_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"3416a75f4cea9109507cacd8e2f2aefc\",\"subtotal\":220},\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150}}', '{\"firstname\":\"Anoop\",\"lastname\":\"John\",\"email\":\"anoop21linkdin@gmail.com\",\"phone\":\"8714511165\",\"address1\":\"Flat 3F43, Star Homes, Near KSRTC bus statiin\",\"address2\":null,\"city\":\"Giri nagar, Kathrikadavu\",\"state\":\"KERALA\",\"zip\":\"682020\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '370', '1510649933', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(603, '201711603', NULL, '{\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"6f4922f45568161a8cdf4ad2299f6d23\":{\"id\":\"18\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"TPS\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_18_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6f4922f45568161a8cdf4ad2299f6d23\",\"subtotal\":150},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Dharunya\",\"lastname\":\"Murthi\",\"email\":\"mdharunya@gmail.com\",\"phone\":\"9585921316\",\"address1\":\"C-11, Galaxy Winston, Chilavanur Road,\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682020\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '600', '1510878551', '2017-11-17', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(604, '201711604', '142', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170}}', '{\"firstname\":\"Rajalakshmi S\",\"lastname\":\"Menon\",\"email\":\"menonrajalakshmi@gmail.com\",\"phone\":\"9940061512\",\"address1\":\"50\\/832E, GTWRA-52, CHANGAMPUZHA SAMADHI ROAD, EDAPPALLY\",\"address2\":null,\"city\":\"KOCHI\",\"state\":\"Kerala\",\"zip\":\"682024\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1510912778', '2017-11-17', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(605, '201711605', '217', '{\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":340}}', '{\"firstname\":null,\"lastname\":null,\"email\":null,\"phone\":null,\"address1\":null,\"address2\":null,\"city\":null,\"state\":null,\"zip\":null,\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '340', '1511001688', '2017-11-18', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(606, '201711606', '279', '{\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":300}}', '{\"firstname\":\"Anoop\",\"lastname\":\"Oa\",\"email\":\"anoopoa95@gmail.com\",\"phone\":\"9656332281\",\"address1\":\"United sports veteran,Ramagiri valley,express highway\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1511084912', '2017-11-19', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(607, '201711607', '236', '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":150}}', '{\"firstname\":\"Geetu\",\"lastname\":\"Anoop\",\"email\":\"geetuearnest@gmail.com\",\"phone\":\"8129311677\",\"address1\":\"SVRA,30 D,Star Valley Road,Mavelipuram,Kakkanad\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '300', '1511242775', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'Please deliver the same to below mentioned address\r\n\r\nGeetu Anoop\r\nGeojit Technologies Pvt Ltd\r\n34/659-P,9th Floor,Civil Line Road\r\nPadivattom\r\nKochi-682024\r\nMob:9995800132', 0),
(608, '201711608', '227', '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150},\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":150},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170}}', '{\"firstname\":\"Ajit\",\"lastname\":\"Saraf\",\"email\":\"ajitsaraf@gmail.com\",\"phone\":\"914844060982\",\"address1\":\"Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '620', '1511261586', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(609, '201711609', NULL, '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150}}', '{\"firstname\":\"Arun\",\"lastname\":\"Pavithran\",\"email\":\"manoj.ramanchira@gmail.com\",\"phone\":\"81299299\",\"address1\":\"32\\/132B, Jawhar Road, Thammanam\",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682032\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1511338566', '2017-11-22', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(610, '201711610', NULL, '{\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":170}}', '{\"firstname\":\"\",\"lastname\":\"\",\"email\":\"\",\"phone\":\"\",\"address1\":\"\",\"address2\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '190', '1511448262', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(611, '201711611', NULL, '{\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":170}}', '{\"firstname\":\"joseph\",\"lastname\":\"solomon\",\"email\":\"josephsolomon.cok@gmail.com\",\"phone\":\"9995216963\",\"address1\":\"lulu cyber towers, infopark, kakkanad\",\"address2\":\"\",\"city\":\"kochi\",\"state\":\"kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '190', '1511499628', '2017-11-24', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(612, '201711612', '280', '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Kumaran\",\"lastname\":\"Vaiyadurai\",\"email\":\"kumaran1976@yahoo.com\",\"phone\":\"9176040871\",\"address1\":\"Villa No. 60, Kent Palm Villa  Kusumagiri P.O., Athani,\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '620', '1511533776', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(613, '201711613', '281', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Suji\",\"lastname\":\"Titus\",\"email\":\"sujiphilip2@gmail.com\",\"phone\":\"8078129422\",\"address1\":\"Edachira \",\"address2\":null,\"city\":\"Kakkanad\",\"state\":\"Kerala \",\"zip\":\"683030\",\"payment_type\":null}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', NULL, '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1511617760', '2017-11-25', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 22),
(614, '201711614', '281', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Suji\",\"lastname\":\"Titus\",\"email\":\"sujiphilip2@gmail.com\",\"phone\":\"8078129422\",\"address1\":\"Edachira \",\"address2\":null,\"city\":\"Kakkanad\",\"state\":\"Kerala \",\"zip\":\"683030\",\"payment_type\":null}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', NULL, '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1511617882', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 22),
(615, '201711615', '281', '{\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"c74d97b01eae257e44aa9d5bade97baf\":{\"id\":\"16\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_16_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c74d97b01eae257e44aa9d5bade97baf\",\"subtotal\":150}}', '{\"firstname\":\"Suji\",\"lastname\":\"Titus\",\"email\":\"sujiphilip2@gmail.com\",\"phone\":\"8078129422\",\"address1\":\"Edachira \",\"address2\":null,\"city\":\"Kakkanad\",\"state\":\"Kerala \",\"zip\":\"683030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '320', '1511619045', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'As discussed we are proceeding with placing the order with option cash on delivery as the coupon code NavaFete17 is activated but purchase amount is showing Rs. 320.00. Please inform your delivery team accordingly. Thank you. \r\nSuji', 22),
(616, '201711616', '280', '{\"70efdf2ec9b086079795c442636b55fb\":{\"id\":\"17\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE ORANGE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_17_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"70efdf2ec9b086079795c442636b55fb\",\"subtotal\":300},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"Kumaran\",\"lastname\":\"Vaiyadurai\",\"email\":\"kumaran1976@yahoo.com\",\"phone\":\"9176040871\",\"address1\":\"Villa No. 60, Kent Palm Villa  Kusumagiri P.O., Athani,\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '600', '1511707355', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'Can deliver anytime Monday morning', 0),
(617, '201711617', '252', '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":300},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150},\"17e62166fc8586dfa4d1bc0e1742c08b\":{\"id\":\"43\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":220,\"name\":\"PASSION\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_43_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"17e62166fc8586dfa4d1bc0e1742c08b\",\"subtotal\":220},\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":170},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":300}}', '{\"firstname\":\"donna\",\"lastname\":\"mitchell\",\"email\":\"indiamidwife@gmail.com\",\"phone\":\"9747833418\",\"address1\":\"golden kayaloram 8A\",\"address2\":null,\"city\":\"kundanoor\",\"state\":\"kerala\",\"zip\":\"682019\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '1140', '1511777506', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(618, '201711618', '283', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150}}', '{\"firstname\":\"asd\",\"lastname\":\"qwrttrtr\",\"email\":\"shy@r.com\",\"phone\":\"23434232\",\"address1\":\"adddd\",\"address2\":null,\"city\":\"dffderf\",\"state\":\"efr\",\"zip\":\"234567\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1511841663', '2017-12-31', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(619, '201711619', NULL, '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150}}', '{\"firstname\":\"Manoj\",\"lastname\":\"RC\",\"email\":\"manoj.ramanchira@gmail.com\",\"phone\":\"8129929900\",\"address1\":\"Wipro Limited, Info Park Special Economic Zone, Kakkanad Cochin \",\"address2\":\"\",\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '170', '1511849795', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(620, '201711620', '284', '{\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"d67d8ab4f4c10bf22aa353e27879133c\":{\"id\":\"39\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":200,\"name\":\"NUT MYLK\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_39_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"d67d8ab4f4c10bf22aa353e27879133c\",\"subtotal\":200}}', '{\"firstname\":\"joseph\",\"lastname\":\"solomon\",\"email\":\"josephsolomon.cok@gmail.com\",\"phone\":\"9995216963\",\"address1\":\"Lulu Cyber towers, infopark, kakkanad\",\"address2\":null,\"city\":\"kochi\",\"state\":\"KL\",\"zip\":\"682030\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '520', '1512026404', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(621, '201712621', '286', '{\"a87ff679a2f3e71d9181a67b7542122c\":{\"id\":\"4\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"SUNRISE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_4_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a87ff679a2f3e71d9181a67b7542122c\",\"subtotal\":150},\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150},\"a1d0c6e83f027327d8461063f4ac58a6\":{\"id\":\"42\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"GUSTO\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_42_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a1d0c6e83f027327d8461063f4ac58a6\",\"subtotal\":170},\"d67d8ab4f4c10bf22aa353e27879133c\":{\"id\":\"39\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":200,\"name\":\"NUT MYLK\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_39_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"d67d8ab4f4c10bf22aa353e27879133c\",\"subtotal\":200}}', '{\"firstname\":\"Narendar \",\"lastname\":\"Ananda bhat\",\"email\":\"naru.bhat23@gmail.com\",\"phone\":\"9895673591\",\"address1\":\"5th floor lulu cyber tower, infopark, Kakkanad\",\"address2\":null,\"city\":\"Ernakulam\",\"state\":\"Kerala\",\"zip\":\"682030\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '670', '1512099863', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(622, '201712622', '287', '{\"33e75ff09dd601bbe69f351039152189\":{\"id\":\"28\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"GREEN WATER \",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_28_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"33e75ff09dd601bbe69f351039152189\",\"subtotal\":150},\"1f0e3dad99908345f7439f8ffabdffc4\":{\"id\":\"19\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE CARROT\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_19_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1f0e3dad99908345f7439f8ffabdffc4\",\"subtotal\":150},\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\":{\"id\":\"32\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"SMOKER\'S TONIC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_32_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\",\"subtotal\":170},\"9bf31c7ff062936a96d3c8bd1f8f2ff3\":{\"id\":\"15\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"ABC\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_15_3_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9bf31c7ff062936a96d3c8bd1f8f2ff3\",\"subtotal\":150}}', '{\"firstname\":\"Mrinalini\",\"lastname\":\"Bindra\",\"email\":\"manubindra@gmail.com\",\"phone\":\"9895148703\",\"address1\":\"A-5C, Chakolas Habitat, Thevara Ferry Road, Thevara \",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682013\",\"payment_type\":null}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"accepted\"}]', 'FREE', NULL, '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '620', '1512107639', '', NULL, '[{\"admin\":\"\",\"status\":\"delivered\",\"delivery_time\":\"\"}]', 'ok', '', 0),
(623, '201712623', '288', '{\"6ea9ab1baa0efb9e19094440c317e21b\":{\"id\":\"29\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_29_4_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"6ea9ab1baa0efb9e19094440c317e21b\",\"subtotal\":150}}', '{\"firstname\":\"RINO\",\"lastname\":\"BABU\",\"email\":\"rino004@gmail.com\",\"phone\":\"9746121346\",\"address1\":\"Vidal Health Insurance TPA Pvt LTD, Door no 40\\/3232, 2nd floor,SL Plaza, Palarivatom\",\"address2\":null,\"city\":\"Cochin\",\"state\":\"Kerala\",\"zip\":\"682025\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', '20', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '170', '1512115726', '2017-12-01', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, 'Kindly deliver to my address by 5pm', 0),
(624, '201712624', '292', '{\"4e732ced3463d06de0ca9a15b6153677\":{\"id\":\"26\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"PURE POMEGRANATE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/www.rawsqueezed.com\\/uploads\\/product_image\\/product_26_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4e732ced3463d06de0ca9a15b6153677\",\"subtotal\":300}}', '{\"firstname\":\"Kevin\",\"lastname\":\"Stanly\",\"email\":\"kevinkolarikkal@gmail.com\",\"phone\":\"91 9846971133\",\"address1\":\"Mindcurv TSPL, Transasia Corporate Park, VI Floor, Xiv\\/396C, Kakkanad\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682037\",\"payment_type\":\"online payment\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'online payment', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, NULL, '300', '1512367296', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0),
(625, '201712625', '293', '{\"e4da3b7fbbce2345d7772b0674a318d5\":{\"id\":\"5\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"KIWI LOVE\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_5_2_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e4da3b7fbbce2345d7772b0674a318d5\",\"subtotal\":150},\"182be0c5cdcd5072bb1864cdee4d3d6e\":{\"id\":\"33\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":170,\"name\":\"LIQUID CANDY\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_33_7_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"182be0c5cdcd5072bb1864cdee4d3d6e\",\"subtotal\":170},\"8f14e45fceea167a5a36dedd4bea2543\":{\"id\":\"7\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":150,\"name\":\"MIRACLE GREEN\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/rawsqueezed.com\\/uploads\\/product_image\\/product_7_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f14e45fceea167a5a36dedd4bea2543\",\"subtotal\":150}}', '{\"firstname\":\"Manju\",\"lastname\":\"Mathew\",\"email\":\"anna.manju99@gmail.com\",\"phone\":\"9747037771\",\"address1\":\"Mather Villas, Villa 24, Maradu\",\"address2\":null,\"city\":\"Kochi\",\"state\":\"Kerala\",\"zip\":\"682304\",\"payment_type\":\"cash on delivery\"}', NULL, NULL, '[{\"admin\":\"\",\"status\":\"not confirmed\"}]', 'FREE', 'cash on delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, NULL, '470', '1512369235', '', NULL, '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `elements` longtext,
  `status` longtext,
  `title` longtext,
  `style` varchar(20) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `elements`, `status`, `title`, `style`, `serial`) VALUES
(5, '{\"images\":[],\"texts\":[{\"name\":\"text_1\",\"text\":\"asarva\",\"color\":\"rgba(242,242,242,0.58)\",\"background\":\"rgba(1,1,1,0)\"},{\"name\":\"text_2\",\"text\":\"Lorem ipsum dolor s\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(1,1,1,0)\"},{\"name\":\"text_3\",\"text\":\"Lorem ipsum dolor sit amet, \",\"color\":\"rgba(234,233,235,1)\",\"background\":\"rgba(1,1,1,0)\"}]}', 'ok', 'HOME1', '11', 0),
(6, '{\"images\":[],\"texts\":[{\"name\":\"text_1\",\"text\":\"Introducing\",\"color\":\"rgba(197,5,189,0)\",\"background\":\"rgba(1,1,1,0)\"},{\"name\":\"text_2\",\"text\":\"Your Shop Name\",\"color\":\"rgba(141,0,175,0)\",\"background\":\"rgba(1,1,1,0)\"},{\"name\":\"text_3\",\"text\":\"your Shop Slogan\",\"color\":\"rgba(141,0,175,0.01)\",\"background\":\"rgba(1,1,1,0)\"}]}', 'ok', 'two', '11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_style`
--

CREATE TABLE `slider_style` (
  `slider_style_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider_style`
--

INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(1, 'WELCOME TYPE 1', '{\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:6500;transition2d:all;transition3d:15;\\\"\",\n   \"background\":\"bg\",\n   \"images\":[\n\n   ],\n   \"texts\":[\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"WELCOME\",\n         \"name\":\"text_1\",\n         \"style\":\"top:30%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:50px;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      },\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"YOUR SHOP NAME\",\n         \"name\":\"text_2\",\n         \"style\":\"top:50%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:100px;  white-space: nowrap;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; delayin:500; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      },\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"SHOP TITLE\",\n         \"name\":\"text_3\",\n         \"style\":\"top:70%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:40px; white-space: nowrap;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; delayin:1200; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      }\n   ]\n}'),
(2, 'WELCOME TYPE 2', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:4500;transition2d:24,25,27,28,34,35,37,38,110,113;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"ase\",\r\n         \"style\":\"top:20px; left:50%;width:220px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:4600; easingin:easeOutQuad; fadein:false; rotatein:-10; offsetxout:0; durationout:1500;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"WELCOME TO\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:260px; left:50%; text-align: center;  font-weight: 300; width:300px; height:60px; font-size:30px; line-height:60px; border-radius:5px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:top; durationout:750; durationin:1000; fadeout:false;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"YOUR SHOP NAME\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:340px; left:50%; text-align: center; font-weight: 300; width:500px; height:100px; font-size:40px; line-height:100px; border-radius:5px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:bottom; durationin:1000; durationout:750; fadeout:false;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#8D00B0\"\r\n      }\r\n   ]\r\n}'),
(3, 'SLIDER TYPE 1', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7000;transition2d:76,77,78,79;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Product Image 1\",\r\n         \"name\":\"circle_1\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:1500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; \"\r\n      },\r\n      {\r\n         \"show_name\":\"Product Image 2\",\r\n         \"name\":\"circle_2\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:3000; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; \"\r\n      },\r\n      {\r\n         \"show_name\":\"Product Image 3\",\r\n         \"name\":\"circle_3\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:4500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; easingout:easeInQuart; fadeout:false; \"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:105px; left:30px; text-align: center; font-weight: 300; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:155px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:205px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:1000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:left; delayin:1000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:255px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX;  border-radius:100px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:1500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:1500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:305px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:2000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:2000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 1\",\r\n         \"name\":\"product_title_1\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:1750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 2\",\r\n         \"name\":\"product_title_2\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:3250; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 3\",\r\n         \"name\":\"product_title_3\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:4750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(4, 'SLIDER TYPE 2', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:4500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:80px; white-space:nowrap; width:220px;\",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:180px; white-space:nowrap;width:220px; \",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:280px; white-space:nowrap; width:220px;\",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_3\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:700px; font-weight:300; font-size:40px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURe 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:107px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:157px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:207px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:257px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:307px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_6\",\r\n         \"style\":\"top:357px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      }\r\n   ]\r\n}'),
(5, 'SLIDER TYPE 3', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:580px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:680px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:780px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_3\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:80px; font-weight:300; font-size:40px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:107px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:157px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:207px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:257px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:307px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:116px; font-weight:300; font-size:30px; white-space:nowrap;\",\r\n         \"data_ls\":\"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_6\",\r\n         \"style\":\"top:357px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(6, 'SLIDER TYPE 4', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"name\":\"long_1\",\r\n         \"style\":\"top:60px;left:578px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"name\":\"semi_long_1\",\r\n         \"style\":\"top:170px;left:800px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"name\":\"square_1\",\r\n         \"style\":\"top:265px;left:1020px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:50px; font-size:50px; font-weight:300; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:500; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotatexout:90; transformoriginout:50; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:1000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:1500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:2000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:2500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:3000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 7\",\r\n         \"name\":\"product_feature_7\",\r\n         \"style\":\"top:400px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:3500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(7, 'SLIDER TYPE 5', '{\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\n   \"background\":\"bg_apple\",\n   \"images\":[\n      {\n         \"name\":\"long_1\",\n         \"style\":\"top:50%; left:50%;width:200px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"show_name\":\"IMAGE\"\n      }\n   ],\n   \"texts\":[\n      {\n         \"element\":\"h6\",\n         \"show_name\":\"PRICE\",\n         \"name\":\"price\",\n         \"style\":\"top:55%; left:39%; durationin:500; delayin:600; fadein:false; rotatein:30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1; scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#B816B2; border-radius:5px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"color\":\"#ffffff\",\n         \"background\":\"#b816b2\"\n      },\n      {\n         \"element\":\"h6\",\n         \"show_name\":\"PRODUCT TITLE\",\n         \"name\":\"product_title\",\n         \"style\":\"top:45%; left:36%; durationin:500; delayin:500; fadein:false; rotatein:-30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1;scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#760093;border-radius:5px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"color\":\"#ffffff\",\n         \"background\":\"#760093\"\n      }\n   ]\n}'),
(8, 'SLIDER TYPE 6', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:100px; width:250px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:1500; rotateyin:90; transformoriginin:left; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:left; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:400px; width:250px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:1500; rotateyin:-90; transformoriginin:right; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:right; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"font-family:Roboto;top:25px; left:192px; font-weight:100; text-align:center; width:340px; font-size:40px; border-radius:5px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:2000; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotateout:-90; transformoriginout:left; \",\r\n         \"color\":\"#34009d\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\" DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:50px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:2300; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:90px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:2700; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:150px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:3000; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:190px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:3400; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:250px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:3700; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:290px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:4100; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 7\",\r\n         \"name\":\"dummy_text_7\",\r\n         \"style\":\"top:360px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:4400; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 8\",\r\n         \"name\":\"dummy_text_8\",\r\n         \"style\":\"top:400px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:4800; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(9, 'SLIDER TYPE 7', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:50px; left:50%;width:278px; white-space:nowrap;\",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"IMAGE\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; \",\r\n         \"color\":\"#fff\",\r\n         \"background\":\"#11008b\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; \",\r\n         \"color\":\"#d9482b\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}');
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(10, 'SLIDER TYPE 8', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7000;transition2d:76,77,78,79;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:120px; left:42%;width:180px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:120px; left:58%;width:180px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:50px; left:50%;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; \",\r\n         \"color\":\"#fff\",\r\n         \"background\":\"#11008b\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 7\",\r\n         \"name\":\"dummy_text_7\",\r\n         \"style\":\"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(11, 'WELCOME TYPE 3', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:8000;transition2d:4;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"ase\",\r\n         \"style\":\"top:45%; left:45%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:right 50% 0; offsetxout:0; durationout:1500; showuntil:1000; rotateyout:-90; transformoriginout:right 50% 0;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"Introducing\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:40%; left:50%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:50; durationin:750; easingin:easeOutBack; skewxin:-50; offsetxout:-50; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;\",\r\n         \"color\":\"#C505BD\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"Your Shop Name\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:50%; left:50%; font-weight: 300; font-size:50px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:-100; durationin:750; delayin:250; easingin:easeOutBack; skewxin:-50; offsetxout:100; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;\",\r\n         \"color\":\"#8D00AF\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"your Shop Slogan\",\r\n         \"name\":\"text_3\",\r\n         \"style\":\"top:47%; left:690px; font-weight: 300; font-size:35px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:left 50% 0; offsetxout:0; durationout:1500; showuntil:1500; rotateyout:-90; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#8D00AF\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      }\r\n   ]\r\n}'),
(12, 'SLIDER TYPE 9', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:9500;transition2d:5;timeshift:-3000;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"semi_long_1\",\r\n         \"style\":\"top:120px; left:300px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:1000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      },\r\n      {\r\n         \"show_name\":\"Image 2\",\r\n         \"name\":\"semi_long_2\",\r\n         \"style\":\"top:120px; left:200px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:2000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      },\r\n      {\r\n         \"show_name\":\"Image 3\",\r\n         \"name\":\"semi_long_3\",\r\n         \"style\":\"top:120px; left:100px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:3000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:60px; left:800px; font-weight: 300; font-size:50px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:50; durationin:3000; rotateyin:60; transformoriginin:right 50% 0; offsetxout:-50; durationout:3000; rotateyout:-60; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#730091\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h2\",\r\n         \"show_name\":\"BIG SALE\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:120px; left:801px; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:-50; durationin:3000; delayin:500; rotateyin:-60; transformoriginin:left 50% 0; offsetxout:50; durationout:3000; rotateyout:60; transformoriginout:right 50% 0;\",\r\n         \"color\":\"#FA6BF3\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h3\",\r\n         \"show_name\":\"$99\",\r\n         \"name\":\"text_3\",\r\n         \"style\":\"top:200px; left:850px; font-weight: 300; font-size:120px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:4000; delayin:2000; rotateyin:450; transformoriginin:left 50% 0; offsetxout:0; durationout:500; easingout:easeInBack; rotateyout:90; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#730091\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      }\r\n   ]\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slides_id` int(11) NOT NULL,
  `button_color` longtext,
  `text_color` longtext,
  `button_text` varchar(300) NOT NULL,
  `button_link` varchar(500) NOT NULL,
  `uploaded_by` longtext NOT NULL,
  `added_by` longtext,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slides_id`, `button_color`, `text_color`, `button_text`, `button_link`, `uploaded_by`, `added_by`, `status`) VALUES
(3, '', '', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok'),
(4, '', '', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok'),
(14, 'rgba(205,38,38,1)', 'rgba(92,52,52,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok'),
(15, 'rgba(0,151,143,1)', 'rgba(255,255,255,1)', 'Browse', 'http://developers.activeitzone.com/activesupershopv1.4/', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', NULL),
(16, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', NULL),
(17, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', 'asd', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `social_links_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'http://facebook.com/'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'http://skype.com/'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext,
  `category` longtext,
  `sub_category` longtext,
  `product` longtext,
  `quantity` longtext,
  `rate` longtext,
  `total` longtext,
  `reason_note` longtext,
  `datetime` longtext,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `type`, `category`, `sub_category`, `product`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '1', '1', '1', '12', '150.00', '1800', '', '1494060059', NULL, NULL),
(2, 'add', '1', '1', '3', '20', '130.00', '2600', '', '1494060082', NULL, NULL),
(3, 'add', '1', '1', '5', '10', '150.00', '1500', '', '1494060096', NULL, NULL),
(4, 'add', '1', '1', '6', '10', '150.00', '1500', '', '1494060129', NULL, NULL),
(5, 'destroy', '1', '1', '6', '3', NULL, '0', 'sale', '1494228768', '7', NULL),
(6, 'destroy', '1', '1', '5', '1', NULL, '0', 'sale', '1494228768', '7', NULL),
(7, 'add', '1', '1', '7', '15', '175.00', '2625', '', '1494672597', NULL, NULL),
(8, 'add', '4', '5', '4', '25', '150.00', '3750', '', '1494672614', NULL, NULL),
(9, 'add', '1', '1', '7', '2', '175.00', '350', '', '1495018071', NULL, NULL),
(10, 'destroy', '1', '1', '7', '1', NULL, '0', '', '1495018143', NULL, NULL),
(11, 'destroy', '1', '1', '7', '1', NULL, '0', 'sale', '1495174220', '8', NULL),
(12, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1495175282', '11', NULL),
(13, 'destroy', '4', '5', '4', '1', NULL, '0', 'sale', '1495176000', '12', NULL),
(14, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1495176000', '12', NULL),
(15, 'destroy', '1', '1', '1', '1', NULL, '0', 'sale', '1495442709', '13', NULL),
(16, 'destroy', '1', '2', '6', '1', NULL, '0', 'sale', '1495442786', '14', NULL),
(17, 'destroy', '1', '2', '6', '1', NULL, '0', 'sale', '1495443047', '15', NULL),
(18, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1495443176', '16', NULL),
(19, 'destroy', '1', '2', '6', '1', NULL, '0', 'sale', '1495444017', '17', NULL),
(20, 'destroy', '1', '1', '7', '1', NULL, '0', 'sale', '1495444377', '18', NULL),
(21, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1495444577', '19', NULL),
(22, 'destroy', '1', '1', '7', '1', NULL, '0', 'sale', '1495444910', '20', NULL),
(23, 'destroy', '1', '1', '7', '1', NULL, '0', 'sale', '1495445477', '21', NULL),
(24, 'destroy', '1', '1', '1', '1', NULL, '0', 'sale', '1495447058', '22', NULL),
(25, 'destroy', '1', '2', '6', '1', NULL, '0', 'sale', '1495447427', '23', NULL),
(26, 'destroy', '3', '4', '3', '1', NULL, '0', 'sale', '1495448029', '24', NULL),
(27, 'destroy', '4', '5', '4', '1', NULL, '0', 'sale', '1495448559', '25', NULL),
(28, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1495448890', '26', NULL),
(29, 'destroy', '3', '4', '3', '1', NULL, '0', 'sale', '1495449861', '27', NULL),
(30, 'destroy', '1', '2', '6', '1', NULL, '0', 'sale', '1495520319', '28', NULL),
(31, 'destroy', '1', '2', '6', '1', NULL, '0', 'sale', '1495520512', '29', NULL),
(32, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1495521942', '30', NULL),
(33, 'destroy', '4', '5', '4', '1', NULL, '0', 'sale', '1495521942', '30', NULL),
(34, 'destroy', '1', '2', '6', '1', NULL, '0', 'sale', '1495521942', '30', NULL),
(35, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1495522058', '31', NULL),
(36, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1495522793', '32', NULL),
(37, 'destroy', '4', '5', '4', '1', NULL, '0', 'sale', '1495539658', '33', NULL),
(38, 'destroy', '1', '1', '1', '3', NULL, '0', '', '1495539791', NULL, NULL),
(39, 'destroy', '1', '1', '7', '2', NULL, '1', '', '1495780187', NULL, NULL),
(40, 'destroy', '1', '1', '7', '1', NULL, '0', 'sale', '1495781360', '34', NULL),
(41, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1496031656', '35', NULL),
(42, 'destroy', '4', '5', '4', '1', NULL, '0', 'sale', '1496031656', '35', NULL),
(43, 'destroy', '1', '2', '6', '1', NULL, '0', 'sale', '1496031656', '35', NULL),
(44, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1496036095', '36', NULL),
(45, 'destroy', '4', '5', '4', '1', NULL, '0', 'sale', '1496036095', '36', NULL),
(46, 'destroy', '1', '2', '6', '1', NULL, '0', 'sale', '1495861595', '37', NULL),
(47, 'destroy', '1', '1', '7', '1', NULL, '0', 'sale', '1495861595', '37', NULL),
(48, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1498218660', '38', NULL),
(49, 'destroy', '1', '2', '6', '1', NULL, '0', 'sale', '1498218660', '38', NULL),
(50, 'destroy', '1', '2', '8', '1', NULL, '0', 'sale', '1498273441', '39', NULL),
(51, 'destroy', '4', '5', '4', '1', NULL, '0', 'sale', '1498273441', '39', NULL),
(52, 'destroy', '3', '4', '5', '1', NULL, '0', 'sale', '1498273576', '41', NULL),
(53, 'add', '4', '', '30', '15', '150.00', '2250', '', '1498804172', NULL, NULL),
(54, 'add', '4', '', '32', '100', '150.00', '15000', '', '1499490563', NULL, NULL),
(55, 'add', '7', '', '33', '100', '170.00', '17000', '', '1499759194', NULL, NULL),
(56, 'destroy', '4', '', '30', '0', NULL, '0', '', '1505109475', NULL, NULL),
(57, 'destroy', '2', '', '22', '0', NULL, '0', '', '1505109512', NULL, NULL),
(58, 'destroy', '1', '', '7', '0', NULL, '0', '', '1505109536', NULL, NULL),
(59, 'destroy', '4', '', '30', '100', NULL, '0', 'out of stock', '1505109567', NULL, NULL),
(60, 'destroy', '2', '', '22', '100', NULL, '0', '', '1505109594', NULL, NULL),
(61, 'destroy', '1', '', '7', '100', NULL, '0', '', '1505109604', NULL, NULL),
(62, 'add', '4', '', '30', '100', '150.00', '15000', '', '1505806903', NULL, NULL),
(63, 'add', '2', '', '22', '100', '150.00', '15000', '', '1505806915', NULL, NULL),
(64, 'add', '1', '', '7', '100', '150.00', '15000', '', '1505806927', NULL, NULL),
(65, 'add', '7', '', '34', '100', '225.00', '22500', '', '1505914172', NULL, NULL),
(66, 'add', '7', '', '35', '100', '200.00', '20000', '', '1505914464', NULL, NULL),
(67, 'add', '7', '', '36', '100', '225.00', '22500', '', '1505914644', NULL, NULL),
(68, 'add', '7', '', '37', '100', '225.00', '22500', '', '1507609018', NULL, NULL),
(69, 'add', '7', '', '36', '200', '225.00', '45000', '', '1507609747', NULL, NULL),
(70, 'destroy', '7', '', '36', '0', NULL, '0', '', '1507611451', NULL, NULL),
(71, 'add', '7', '', '38', '100', '200.00', '20000', '', '1507706671', NULL, NULL),
(72, 'add', '7', '', '38', '200', '225.00', '45000', '', '1507706861', NULL, NULL),
(73, 'add', '7', '', '39', '300', '200.00', '60000', '', '1507707137', NULL, NULL),
(74, 'add', '7', '', '39', '200', '200.00', '40000', '', '1507707208', NULL, NULL),
(75, 'add', '7', '', '39', '1000', '200.00', '200000', '', '1507707310', NULL, NULL),
(76, 'add', '7', '', '40', '1500', '220.00', '330000', '', '1508772709', NULL, NULL),
(77, 'add', '7', '', '41', '1500', '220.00', '330000', '', '1508775717', NULL, NULL),
(78, 'add', '7', '', '42', '500', '170.00', '85000', '', '1509343500', NULL, NULL),
(79, 'destroy', '7', '', '41', '1500', NULL, '0', '', '1509353998', NULL, NULL),
(80, 'destroy', '7', '', '40', '1500', NULL, '0', '', '1509354009', NULL, NULL),
(81, 'add', '7', '', '41', '10', '220.00', '2200', '', '1509354373', NULL, NULL),
(82, 'add', '7', '', '41', '0', '220.00', '0', '', '1509354385', NULL, NULL),
(83, 'destroy', '7', '', '41', '10', NULL, '0', '', '1509354398', NULL, NULL),
(84, 'add', '7', '', '41', '500', '220.00', '110000', '', '1509782203', NULL, NULL),
(85, 'add', '7', '', '40', '500', '220.00', '110000', '', '1509782210', NULL, NULL),
(86, 'add', '7', '', '43', '500', '220.00', '110000', '', '1510041515', NULL, NULL),
(87, 'add', '8', '', '44', '500', '220.00', '110000', '', '1511805310', NULL, NULL),
(88, 'add', '8', '', '45', '500', '220.00', '110000', '', '1511805541', NULL, NULL),
(89, 'add', '8', '', '46', '500', '210.00', '105000', '', '1511805632', NULL, NULL),
(90, 'add', '8', '', '47', '500', '220.00', '110000', '', '1511805813', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `email` varchar(600) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`subscribe_id`, `email`) VALUES
(1, 'akibtanjim@gmail.com'),
(2, 'lashik7@gmail.com'),
(3, 'lashik7@gmaill.com'),
(4, 'lashik7@gmhaill.com'),
(5, 'noushad.thayyil95@gmail.com'),
(6, ''),
(7, ''),
(8, '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` longtext,
  `category` longtext,
  `brand` varchar(2000) NOT NULL DEFAULT '[]',
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category_name`, `category`, `brand`, `digital`, `banner`) VALUES
(1, 'BABY SPINACH', '1', '[\"1\"]', NULL, 'sub_category_1.png'),
(2, 'BEETROOT', '1', '[\"1\"]', NULL, 'sub_category_2.png'),
(3, 'BEETROOT', '2', '[\"1\"]', NULL, 'sub_category_3.png'),
(4, 'BEETROOT', '3', '[\"1\"]', NULL, 'sub_category_4.png'),
(5, 'CELERY', '4', '[\"1\"]', NULL, 'sub_category_5.png');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `date_added` date NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `specialization`, `date_added`, `status`) VALUES
(1, 'Dr.Gopika', 'BUMS,GCMC,MBA,MSc, Former Govt Medical Officer', '2017-12-12', 'active'),
(2, 'Dr.Deepthy Gupta', 'BUMS,GCMC,MBA,MSC Biology', '2017-12-12', 'active'),
(3, 'Dr.Jithin', 'BUMS,GCMC,MBA,MSc, Former Govt Medical Officer', '2017-12-12', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `des_and_company` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimonial_id`, `author`, `description`, `des_and_company`) VALUES
(15, 'Vimal Joy', '\"Excellent ... Nothing more nothing less. Cold pressing is relatively new concept .These guys have taken a bold step by making it available in a tier 3 city like Cochin . Please do encourage them\"', 'Asst. Manager at Federal Bank'),
(16, 'Teenu Terrence', 'I actually experienced a remarkable improvement in my complexion and reduction in my hair fall! I am thoroughly impressed with the product as well as the fantastic team behind it!\"', 'Food Blogger'),
(17, 'Stephy Xavior', '\"RawSqueezed .. It has a range of delicious juices crafted from both fruits and vegetables that are crowd fruits..it\'s hard to pick just one!!\"', 'Costume Designer');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `time`, `from_where`, `to_where`, `subject`, `view_status`) VALUES
(1, '1475585594', '{\"type\":\"user\",\"id\":\"3\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'check', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_message`
--

CREATE TABLE `ticket_message` (
  `ticket_message_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(100) DEFAULT NULL,
  `message` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ui_settings`
--

CREATE TABLE `ui_settings` (
  `ui_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '78'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '77'),
(9, 'home_bottom_logo', '78'),
(11, 'fav_ext', 'png'),
(12, 'side_bar_pos_category', 'right'),
(14, 'footer_color', 'green-2'),
(15, 'header_color', 'green-2'),
(19, 'parallax_blog_title', 'LATEST BLOGS'),
(16, 'font', 'Roboto'),
(17, 'parallax_vendor_title', 'OUR VENDOR'),
(18, 'home_page_style', '1'),
(20, 'no_of_featured_products', '6'),
(21, 'no_of_vendor', '10'),
(22, 'no_of_brands', '6'),
(23, 'brand_show', 'no'),
(24, 'featured_show', 'ok'),
(25, 'vandors_show', 'no'),
(26, 'blog_show', 'no'),
(27, 'parallax_search_title', 'Search Products'),
(28, 'no_of_blog', '3'),
(29, 'featured_product_box_style', '1'),
(30, 'no_of_todays_deal', '10'),
(31, 'special_products_show', 'ok'),
(32, 'category_slides', 'ok'),
(33, 'home_categories', '[]'),
(34, 'category_product_box_style', '2'),
(35, 'top_slide_categories', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` longtext,
  `surname` varchar(100) DEFAULT NULL,
  `email` longtext,
  `phone` longtext,
  `address1` longtext,
  `address2` longtext,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `langlat` varchar(100) DEFAULT NULL,
  `password` longtext,
  `fb_id` longtext,
  `g_id` varchar(50) DEFAULT NULL,
  `g_photo` longtext,
  `creation_date` longtext,
  `google_plus` longtext,
  `skype` longtext,
  `facebook` longtext,
  `wishlist` longtext,
  `last_login` varchar(50) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'default',
  `user_type_till` varchar(200) DEFAULT NULL,
  `left_product_type` varchar(5000) DEFAULT '[]',
  `downloads` varchar(10000) DEFAULT '[]',
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `referral_token` longtext,
  `refferal_used` int(11) DEFAULT NULL,
  `email_verification` longtext,
  `email_verify_time` longtext,
  `referral_times` int(11) DEFAULT NULL,
  `referral_amount_count` int(11) DEFAULT NULL,
  `recovery_time_limit` longtext,
  `recover_code` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `user_type`, `user_type_till`, `left_product_type`, `downloads`, `country`, `state`, `referral_token`, `refferal_used`, `email_verification`, `email_verify_time`, `referral_times`, `referral_amount_count`, `recovery_time_limit`, `recover_code`) VALUES
(136, 'prashob', 'krishna', 'admin@example.com', '9747253464', 'Designers Hub', NULL, 'Kochi', '682028', NULL, '110452c2b234c62f3d2a477345b6bbc8cd2fcea1', NULL, NULL, NULL, '1499839482', NULL, NULL, NULL, NULL, '1499839482', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '9ec0fdcf15504be', NULL, NULL, NULL, NULL, NULL),
(137, 'testing', 'testinglast', 'pvshyamily@gmail.com', '74563', 'testingadd', NULL, 'kochi', '682019', NULL, '8cb2237d0679ca88db6464eac60da96345513964', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1501828062', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'f276940c037e9b9560ab2a1f4fd5fd9b171f1c589707e39a60b504f94f18fb13', '1499884200', NULL, NULL, '1500402600', 'recovered'),
(131, 'Sherin', 'Kumar', 'sherin.kumar@gmail.com', '9927666690', '10A,Gopuram, Kent illam, Puthiya road,  near vennala high school', NULL, 'Vennala,Kochi', '682028', NULL, 'd7ee0ff1e77c838fc3442e8e8f008d2efc57c4ce', NULL, NULL, NULL, '1499700305', NULL, NULL, NULL, NULL, '1501680825', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'e723d3ff29579a8', NULL, NULL, NULL, NULL, NULL),
(132, 'Jagadeesh ', 'Reghuram ', 'jagadeeshreghu@gmail.com', '9020427601', '4th floor ,balakrishna arcade, South janatha road,palarivattom', NULL, 'Kochi', '682025', NULL, 'a3a3f12723159bfdce83419a76ed20a2fdcd02d9', NULL, NULL, NULL, '1499789792', NULL, NULL, NULL, NULL, '1499789792', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '8a63444542181cb', NULL, NULL, NULL, NULL, NULL),
(133, 'Aditya', 'S', 'adityasunil2010@gmail.com', '9895516018', '\"Mangalya\" , 34/449A, PRA 78, Thejus Avenue Lane, Padivattom, Edapally P.O,', NULL, 'Cochin', '682024', NULL, '70eba418003106c3708e42f3bf3fbeb1aded96e8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1499796263', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '9777d7719651d58', NULL, NULL, NULL, NULL, NULL),
(83, 'Bijith', 'Varghese', 'bijith.vs@gmail.com', '8606147711', '7C, Asset City Bay, Near Railway Overbridge, Chathari, Tripunithura', NULL, 'Ernakulam', '682301', NULL, '962efb4d779a84932bd5bbbe704e8d29868db8fc', NULL, NULL, NULL, '1499106258', NULL, NULL, NULL, NULL, '1499106479', 'default', NULL, '[]', '[]', 'india', 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Bijith', 'Varghese', 'bijith.vs@gmail.com', '8606147711', '7C, Asset City Bay, Near Railway Overbridge, Chathari, Tripunithura', NULL, 'Ernakulam', '682301', NULL, '962efb4d779a84932bd5bbbe704e8d29868db8fc', NULL, NULL, NULL, '1499106288', NULL, NULL, NULL, NULL, '1499106288', 'default', NULL, '[]', '[]', 'india', 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Bijith', 'Varghese', 'bijith.vs@gmail.com', '8606147711', '7C, Asset City Bay, Near Railway Overbridge, Chathari, Tripunithura', NULL, 'Ernakulam', '682301', NULL, '962efb4d779a84932bd5bbbe704e8d29868db8fc', NULL, NULL, NULL, '1499106315', NULL, NULL, NULL, NULL, '1499106315', 'default', NULL, '[]', '[]', 'india', 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Angela', 'Rose', 'angelarose999@gmail.com', '8129011571', 'D/O Dr.Thomas Antony, near Panayappilly west bus stop, panayappilly west', NULL, 'Cochin', '682002', NULL, '4472e491daa16e731b6c1608e16b40a0804f8686', NULL, NULL, NULL, '1499926775', NULL, NULL, NULL, NULL, '1501046918', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'cdaad56264c7ad4', NULL, NULL, NULL, NULL, NULL),
(97, 'terese jilfy ', 'Josef', 'Jillsofficial@gmail.com', '8086881684', 'Arakkal house maradu p o kattithara road krps 236 opposite good earth habitat', NULL, NULL, '682304', NULL, '1315ccefa209f283aa327e3f887d6fd398a8b83f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1499160262', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'blesson', 'john', 'richierichkochi@gmail.com', '7511120402', 'Richie Rich Store, Opp Matsyafed, Near HDFC, Subash Chandra Bose Road, Elamkulam', NULL, 'kochi', '682019', NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, '1499839385', NULL, NULL, NULL, NULL, '1501323073', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, '5601e4e9806a7ac', NULL, NULL, NULL, NULL, NULL),
(117, 'Deepu', 'Varghese', 'dpuvarghese@gmail.com', '9633406000', '43/1578-A, Kolapillil house, ESI road,kochi', NULL, 'Kochi', '682018', NULL, 'e46ac98d94808b3d4e519f5efae1a4fc1b40dcc4', NULL, NULL, NULL, '1499512909', NULL, NULL, NULL, NULL, '1499513350', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '16bb27cdddb2f63', NULL, NULL, NULL, NULL, NULL),
(118, 'Varshaa', 'J', 'varshaaj88@yahoo.com', '9995945948', 'Lakshmi, popular road, Elamakkara', NULL, 'Kochi', '682026', NULL, 'df28c6aefe3b78d7591fbbde1db7742bd45721fd', NULL, NULL, NULL, '1499517128', NULL, NULL, NULL, NULL, '1499517128', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '1078280f2f5822e', NULL, NULL, NULL, NULL, NULL),
(119, 'Varshaa', 'J', 'varshaaj88@gmail.com', '9995945948', 'Lakshmi, Popular road, Elamakkara', NULL, 'Kochi', '682026', NULL, 'df28c6aefe3b78d7591fbbde1db7742bd45721fd', NULL, NULL, NULL, '1499518287', NULL, NULL, NULL, NULL, '1499518318', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '4c5415cd59777db', NULL, NULL, NULL, NULL, NULL),
(121, 'Romy', 'Ashish', 'romymariathomas@gmail.com', '9847082722', 'Mather,Great Orchard,flat 7f , Vidyanagar', NULL, 'Panampilly Nagar', '682020', NULL, 'a1b49bf369297c89d346146281619cccf4004409', NULL, NULL, NULL, '1499667610', NULL, NULL, NULL, NULL, '1499751378', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '0668f2c2f937a1d', NULL, NULL, NULL, NULL, NULL),
(134, 'Aparna', 'Manoj', 'mukikuzforever@gmail.com', '9656549071', 'mattayil house', NULL, 'ernakulam', '682006', NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, '1499839378', NULL, NULL, NULL, NULL, '1502173103', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, '7a374edbb25982b', NULL, NULL, NULL, NULL, NULL),
(130, 'testing', 'shyamily', 'pvshyamily@gmail.com', '9865321470', 'testingadd', NULL, 'kochi', '682019', NULL, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1499678451', NULL, NULL, NULL, NULL, '1500532015', 'default', NULL, '[]', '[]', 'India', 'kerala', '9a72cd0d0f', NULL, 'verified', '1499711400', 1, NULL, NULL, 'c043c763472d590853542bf1a4a9fd18610dc9c18376a5a8147f6b1de2049453'),
(139, 'test', 'test this', 'kiranbjm1@gmail.com', '75396520', 'fvghjkl,sdfrtyu,ertyuio,rtyuio,', NULL, 'kdjfghak', '682019', NULL, '8cb2237d0679ca88db6464eac60da96345513964', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1499931805', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'b514a55a807a3ed3cc07d678c2de750ed00635623fb9bc5c920fd337b3e31ead', '1499970600', NULL, NULL, NULL, NULL),
(140, 'test', 'testinglast', 'kiranbjm1@gmail.com', '1243254435', 'testingadd', NULL, 'kochi', '682019', NULL, 'f38cfe2e2facbcc742bad63f91ad55637300cb45', NULL, NULL, NULL, '1499931598', NULL, NULL, NULL, NULL, '1499931598', 'default', NULL, '[]', '[]', 'India', 'kerala', '04de03f4c8', NULL, 'verified', '1499970600', NULL, NULL, NULL, NULL),
(141, 'Rajalakshmi', 'Menon', 'menonrajalakshmi@gmail.com', '9895680863', '50/832E, GTWRA-52, CHANGAMPUZHA SAMADHI ROAD, EDAPPALLY', NULL, '-----Select City-----', '682024', NULL, '9aed5f0d80aaecf3416d1be735a485ad57ac5224', NULL, NULL, NULL, '1499961647', NULL, NULL, NULL, NULL, '1499961647', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '9c0b28823f9fe111a48053268509b7db1c95243cb5ad87ca975bcb7ae5f9d1c2', '1499970600', NULL, NULL, NULL, NULL),
(142, 'Rajalakshmi S', 'Menon', 'menonrajalakshmi@gmail.com', '9940061512', '50/832E, GTWRA-52, CHANGAMPUZHA SAMADHI ROAD, EDAPPALLY', NULL, 'KOCHI', '682024', NULL, '8825b28fe2a6d5027c7e38f6e98d34a3ae08a7e0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1510912201', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '2339f4fdfd2d70dcb20fb5c4f629eb5b87c92e0a17c7640b3a68e5fd1c11ada2', '1499970600', NULL, NULL, NULL, NULL),
(143, 'Indu', 'Das', 'indukdas@gmail.com', '09447336181', '15D, MIR Green, Mavelipuram, Kakkanad', NULL, 'Cochin', '683020', NULL, '9bfd6be33bd19f84412a987a5063202b07657ab0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1500016580', 'default', NULL, '[]', '[]', 'India', 'Not Specified', NULL, NULL, 'b5023b321877cb7c665b4dcec1e3d74fc6f31c11cfe125c0b462f42c0638071b', '1500057000', NULL, NULL, NULL, NULL),
(144, 'shyam testinggggg', 'm', 'pvshyamily@gmail.com', '3698574102', 'testingaddd', NULL, 'kochii', '68209', NULL, '8cb2237d0679ca88db6464eac60da96345513964', NULL, NULL, NULL, '1500023732', NULL, NULL, NULL, NULL, '1500367468', 'default', NULL, '[]', '[]', 'India', 'keralai', 'aa271aa01f', NULL, 'verified', '1500057000', NULL, NULL, NULL, 'c043c763472d590853542bf1a4a9fd18610dc9c18376a5a8147f6b1de2049453'),
(160, 'Dr. Robin Sajan', 'Chacko', 'robinsajan@hotmail.com', '9496140000', 'House No: 39, Nediyedath Road, Amrita Nagar, Edapally', NULL, 'Kochi', '682041', NULL, '13a2f5051debe37692110a9d06e1fc1639440703', NULL, NULL, NULL, '1501570998', NULL, NULL, NULL, NULL, '1505627237', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '787133fda85b27041ad888c7ab24f54694e47a059ce25c63626038f18bef01f1', '1501612200', NULL, NULL, NULL, NULL),
(145, 'Arun', 'Antony', 'antonyeratt@gmail.com', '9633802424', 'Erattupuzha House, Pooppanakkunnu Stop, Kumbalanghi, Kochi 682007', NULL, 'Kochi', '682007', NULL, 'fadd9dd3a7384a4ed4971fa39f86a8a36152ea0f', NULL, NULL, NULL, '1500095032', NULL, NULL, NULL, NULL, '1500095050', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'c9955f4238ea8be99c6a028ab4ccc72b6fc321433f400f67140e4bb3cf5489eb', '1500143400', NULL, NULL, NULL, NULL),
(149, 'Deepthi', 'Cherian', 'cherrynest@rediffmail.com', '9447155817', 'The Nest, Tower Road, Fort Cochin', NULL, 'Cochin', '682001', NULL, '336edf81860bdfc5e56a603ab1759d4ec3c587d2', NULL, NULL, NULL, '1500384679', NULL, NULL, NULL, NULL, '1507801145', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'd2e55ae7c107e1a8628a4c6e5ffd928c4a046fc3d2cd8e0e7b051e74f33bdd26', '1500402600', NULL, NULL, NULL, NULL),
(146, 'Shereen', 'U', 'usherz87@yahoo.com', '9446165312', 'Lft Cdr Mohd Tahir Abdulla, 510 - Katari Bagh, Opposite Naval Base - Kochi, ', NULL, 'Kochi', '682004', NULL, '83ae659f38acd4159b2e4e097ad926d5573b97a9', NULL, NULL, NULL, '1500180244', NULL, NULL, NULL, NULL, '1500362373', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '147e191ae2c808a48afd73e6b86a188c113605ae15b8282bc18da4dfcf85e023', '1500229800', NULL, NULL, NULL, NULL),
(147, 'Anuja', 'Vikas', 'anuja.a5@gmail.com', '9995327222', '\"Vaishnavi\", house no 208, cross road no 11, Girinagar, Kochi', NULL, 'Kochi', '682020', NULL, '6c0a736979fa3da661597922a058a13816c216b3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503301134', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '60543861b9240ed0f2266385e6e8471ac8d618929bfb6546b33f0ab9e492db9e', '1500316200', NULL, NULL, NULL, NULL),
(148, 'prashob', 'krishna', 'prashob@dhub.in', '9747253464', 'designers hub', NULL, 'Kochi', '682028', NULL, '110452c2b234c62f3d2a477345b6bbc8cd2fcea1', NULL, NULL, NULL, '1500273713', NULL, NULL, NULL, NULL, '1509337174', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '13bb7af62e3ff5b578106f6ec62ff806e0ce83f18873f1ffe0910c468824546b', '1500316200', NULL, NULL, NULL, NULL),
(150, 'Antony', 'Christopher', 'anto4you@gmail.com', '9995811055', 'Visual IQ, world trade center, info park phase 1', NULL, 'Ernakulam', '682030', NULL, '68acd21cbf4810e61129503dfe97d63882b755cc', NULL, NULL, NULL, '1500432884', NULL, NULL, NULL, NULL, '1507885176', 'default', NULL, '[]', '[]', 'India', 'Kerala', '5b57a509a8', NULL, 'verified', '1500489000', NULL, NULL, NULL, NULL),
(151, 'Priya', 'Joseph', 'priyajosf@gmail.com', '9995331029', 'Brigade World trade Centre, Infopark', NULL, 'Kochi', '682042', NULL, '2a3eb079889ad34abb467b83395d3fee809515fa', NULL, NULL, NULL, '1500522377', NULL, NULL, NULL, NULL, '1500522390', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '9ea4bf9f1d7677d1f9b43e78f9d276aef399cf77b5bef45ada77ed54547827d0', '1500575400', NULL, NULL, NULL, NULL),
(152, 'Justin', 'pappalil', 'justinprasad7@gmail.com', '9656585330', 'pappalil', NULL, 'muvattupuzha', '682316', NULL, '95bce394d432997231e7ea96a978a6533b65e97a', NULL, NULL, NULL, '1500620447', NULL, NULL, NULL, NULL, '1510549895', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'verified', '1500661800', NULL, NULL, '1510597800', 'recovered'),
(153, 'Catherine', 'Emmanuel', 'mariageorge86@gmail.com', '9745106687', '1D, Abad Sunshine Court, Pappalli Lane, Vazhakkala', NULL, 'cochin', '682030', NULL, '70ccd9007338d6d81dd3b6271621b9cf9a97ea00', NULL, NULL, NULL, '1500637329', NULL, NULL, NULL, NULL, '1501245659', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'verified', '1500661800', NULL, NULL, NULL, NULL),
(156, 'Blesson', 'John', 'richierichkochi@gmail.com', '7511120402', 'Richie Rich Store, Opp Matsyafed, Near HDFC, Subash Chandra Bose Road, Elamkulam', NULL, 'kochi ', '682019', NULL, 'cc571d709c706b33294ba7b10a4aef268ba1799d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1501323005', 'default', NULL, '[]', '[]', 'india', 'kerala', NULL, NULL, 'verified', '1501353000', NULL, NULL, NULL, NULL),
(155, 'jizma', 'beevi', 'jiz.beevitr@gmail.com', '9895559746', 'villa No-27,Star Enclave,V P marakkar Road,Edappally', NULL, 'kochi', '682024', NULL, '054ad833badc66a3a18fb4fee7381ccf411b6b0f', NULL, NULL, NULL, '1501269056', NULL, NULL, NULL, NULL, '1501269076', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'ed4a11b6fc278015fbdd0895a235224972153db41deaa5bc63b0cb7b2890ac76', '1501353000', NULL, NULL, NULL, NULL),
(157, 'Rizana', 'Sooraj', 'rizbubly@gmail.com', '8589874393', 'B5kent nalukettu chakkaraparamb road vennala Kochi ', NULL, 'Kochi', '682028', NULL, '65213e70bad686e11b4dc390957c1e6fefcb2b78', NULL, NULL, NULL, '1501333229', NULL, NULL, NULL, NULL, '1501383547', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '0cb795acd469c3a66fa471306cf8a15305972ff6fcd34d1b5f6e84b754d12b93', '1501353000', NULL, NULL, '1501353000', 'recovered'),
(158, 'Dilna ', 'Vinu', 'dilna.joy@gmail.com', '9037000663', 'Vadakkedath House, Stadium link road, Near Skyline Legend Mansion', NULL, 'Kaloor', '682025', NULL, '97ee37a8d5f689af35acc15303ee28e8bcc3dc29', NULL, NULL, NULL, '1501339750', NULL, NULL, NULL, NULL, '1501339955', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1501353000', NULL, NULL, NULL, NULL),
(159, 'Maneesha', 'Kumar', 'maneesha.kumar27@gmail.com', '8592092046', '404 Govind apartment, kalathiparambil roaf', NULL, 'Kochi', '682016', NULL, 'f764592ccd789c8ac1412ed9505fd3b6d2851622', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1501472548', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'a0b6bba3047038358654926fa7cbc9697ad6cc156d46433361d70215cf67bc3d', '1501525800', NULL, NULL, '1501525800', '3a946b7225260663b3627f17e8fb3a433d13bb23c3e057011bcda1b65b45d74c'),
(161, 'kiran', 'benny joseph', 'kiranbjm@gmail.com', '4578165497', 'skdfkjahsjdhf', NULL, 'skjdhfkjsh', '55465', NULL, 'd8bd66c4af0b0eb7a6193d16999ce05096ecbf47', NULL, NULL, NULL, '1501584710', NULL, NULL, NULL, NULL, '1501584801', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'verified', '1501612200', NULL, NULL, NULL, NULL),
(162, 'Sarath', 'Radhakrishnan', 'rk.sarath@gmail.com', '9846833333', 'F-3,Galaxy Winston,Chilavanoor Road,Kadavnthra ', NULL, 'Ernakulam ', '682020', NULL, 'ceb3816b82f9477327de9b07825529cea402814b', NULL, NULL, NULL, '1501592074', NULL, NULL, NULL, NULL, '1502340041', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, 'verified', '1501612200', NULL, NULL, NULL, NULL),
(163, 'Sarath', 'Chandran', 'drsarathchandran23@gmail.com', '9544331155', 'Flat no 7e  tower 1 skyline orion', NULL, 'Edppally', '682024', NULL, 'f2734216d9df57419b1fc05e114e14bf88170e42', NULL, NULL, NULL, '1501612039', NULL, NULL, NULL, NULL, '1501612062', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '92abb22042d933bd7583da87f0eedbf1fecf326647f24bf083747718a86c074d', '1501612200', NULL, NULL, NULL, NULL),
(164, 'Anileeta', 'Johny', 'anileetaj@gmail.com', '7259892342', 'Apartment no 1804, Purvankara moonreach apartments,  kakkanad-682030 ', NULL, 'Kochi', '682030', NULL, '244dc7801ba7a1aad9f896c8181419e3ea89b4b2', NULL, NULL, NULL, '1501654703', NULL, NULL, NULL, NULL, '1503482141', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '3ae8c82b395e5cdf36c670689d20852ddde08169d29770bc10b8e6231207dfb6', '1501698600', NULL, NULL, NULL, NULL),
(165, 'Sona', 'Sunil', 'sonaillam@yahoo.com', '8606840762', 'NSB Kent illam vennala', NULL, 'Kochi', '682028', NULL, 'd93188d13a28005a6bdea88706b9adb200db88ee', NULL, NULL, NULL, '1501816967', NULL, NULL, NULL, NULL, '1501817017', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1501871400', NULL, NULL, NULL, NULL),
(166, 'Jithin', 'Babu', 'jithinjb@gmail.com', '9446671353', 'Padath Infotainment, Manorama Memorial Building,Aysha Road', NULL, 'Kochi', '682019', NULL, 'b9921b567bdf39d3524cef29dc2bd81f1a82c016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1501831820', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1501871400', NULL, NULL, NULL, NULL),
(167, 'Sarah', 'Adeel', 'sarahzia1994@gmail.com', '9995783528', '4C Tanzeel Chalet Kumaranshan Nagar Kadavanthra', NULL, 'Kochi', '682020', NULL, 'f5ab86396106743bf1a10160188e661e406b7eb7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503576891', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1501871400', NULL, NULL, NULL, NULL),
(168, 'Jisna', 'Arjun', 'jisnajm@gmail.com', '8593932993', '19f, arista, olive kalista, edachira road', NULL, 'Ernakulam', '682030', NULL, '43cde71bc99ec48b74da015d3c53e0a11147aeb7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1501937270', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '922a32d9771ff23ad5f72f8b00c6bfa8580b7ac63310f6804ed00678e3eeea3f', '1501957800', NULL, NULL, NULL, NULL),
(169, 'Virajrao', 'Kore', 'virajrao23@gmail.com', '8446324444', 'Flat no 2106, Vattekunnam, Edappally, Ernakulam, Kerala 682024 Oceanus Maple, Address', NULL, 'Kochi', '682024', NULL, '3fbda43706140d5ca55f1ba2289fa68195379426', NULL, NULL, NULL, '1501946456', NULL, NULL, NULL, NULL, '1502112754', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'd2ea114497651c8424b64cf5b9150466d45f9df807095ce5d1d7176ffd7c8507', '1501957800', NULL, NULL, NULL, NULL),
(170, 'Aarathi', 'Suresh', 'aarthis21@gmail.com', '9072210610', '36/747 pallipuram house chammani road kaloor', NULL, 'Kochi', '682017', NULL, '362e431d096c7f30b9138e5fd78ee7c3d27cd72b', NULL, NULL, NULL, '1501999816', NULL, NULL, NULL, NULL, '1501999848', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, '3b71186cc001ee2f7910dae7a29849114474c14e9a71408efd80aeb2d10a960c', '1502044200', NULL, NULL, NULL, NULL),
(171, 'rashida', 'Hatim', 'rash13_k@hotmail.com', '9895279740', 'Green villa, town hall road,koovapadam', NULL, 'Cochin', '682002', NULL, 'e3a5939d06442d33d1ca5917b21230b8a96bf10f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1502013579', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'd81f1f6a2073cf86fb79c71882786386afb9141df9d984fdd9cd51a985a2ca8b', '1502044200', NULL, NULL, NULL, NULL),
(172, 'Govind', 'Chandran', 'govindchandran@gmail.com', '8123011223', 'D1301 Purva Eternity, Athani, Kusumagiri PO, Kakkanad-Pallikara road, Kakkanad', NULL, 'Kochi', '682030', NULL, '5682b027a3b92b95d5cec5b23b425c14acfa0d1c', NULL, NULL, NULL, '1502030599', NULL, NULL, NULL, NULL, '1502030626', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1502044200', NULL, NULL, NULL, NULL),
(173, 'Sahida', 'Jaleel', 'sahida.a.jaleel@gmail.com', '9742822522', 'Phase 4, carnival infopark', NULL, 'Kochi', '682030', NULL, '73269bbb959c7bfc9c5fed290609be41882e9e80', NULL, NULL, NULL, '1502088251', NULL, NULL, NULL, NULL, '1502088401', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1502130600', NULL, NULL, NULL, NULL),
(174, 'Aparna', 'Appu', 'mukikuzforever@gmail.com', '9656549071', 'mattayil house', NULL, 'ernakulam', '682006', NULL, '1801f0274e4583c9d02a97030a7ca0748efce2b6', NULL, NULL, NULL, '1502131746', NULL, NULL, NULL, NULL, '1508570201', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'verified', '1502217000', NULL, NULL, NULL, NULL),
(175, 'Piyush', 'Agarwal', 'dr.piyush2007@gmail.com', '8075932358', '2106, Oceanus Maple, vattekunnam, Edapally', NULL, 'Kochi', '682024', NULL, '9bfc4e98212a584c6b38d406c96138b05744281b', NULL, NULL, NULL, '1502197399', NULL, NULL, NULL, NULL, '1502597379', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1502217000', NULL, NULL, NULL, NULL),
(176, 'Abhisek Mohanty', 'Mohanty', 'abhilipu.me@gmail.com', '8943566241', 'FLAT 303 ,BLOCK 4 , EASLAND ENCLAVE APARTMENTS , BHARAT PETROLEUM , ELAMKULAM , OPPOSITE max STORE . ', NULL, 'KOCHI', '682020', NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, '1502217072', NULL, NULL, NULL, NULL, '1502782160', 'default', NULL, '[]', '[]', 'India', 'KERALA', NULL, NULL, '746a26480094c6ed2be4497262503732ba1d3dbf3085d64f22a8c18d5f509121', '1502303400', NULL, NULL, NULL, NULL),
(177, 'Zara', 'Afthab', 'zaraxoxo1@gmail.com', '8593962754', '8c , Baypride towers, Marine Drive', NULL, 'Ernakulam', '682031', NULL, 'ce11b8fea80db8f5fd08c0be8221f6a8b110525b', NULL, NULL, NULL, '1502273943', NULL, NULL, NULL, NULL, '1502274000', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, 'f0729d831aa8b056984a89e4f78b3a4b8cf652317f79700ff06f5f6ebf0aa19b', '1502303400', NULL, NULL, NULL, NULL),
(178, 'Sooraj', 'Y S', 'drsooraj@gmail.com', '9633177608', 'A-2, Riverdale Park Apartments, Vrindavanam, Elamkulam, Vyttila', NULL, 'Kochi ', '682019', NULL, 'd42ede8efe56dde14f76703226dd3b1112fe84b0', NULL, NULL, NULL, '1502632605', NULL, NULL, NULL, NULL, '1502888810', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, 'verified', '1502649000', NULL, NULL, NULL, NULL),
(179, 'Jim', 'M', 'mathew.jame@gmail.com', '8891009990', 'Sereena Villa, KNRA-30 , BTC Road, Maradu', NULL, 'kochi', '682304', NULL, '191ef1aea5cb391fc9df45124e9b1a55b711f8e6', NULL, NULL, NULL, '1502686638', NULL, NULL, NULL, NULL, '1502686651', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, '4ce5322cdc77260d70b1d5f73cf5ff7b6754f705ea95d94c504b705a75855ac5', '1502735400', NULL, NULL, NULL, NULL),
(180, 'John', 'M', 'johnmullakkara@gmail.com', '9746778311', 'Mullakkara House 29/2417G Valloor Road  Poonithura Chambakkara', NULL, 'Kochi', '682038', NULL, '22eaa2c22d02e3cddefc2fa856cc3136b9e4d1a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1502688957', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1502735400', NULL, NULL, NULL, NULL),
(181, 'Hari', 'Govind', 'hari.madathil88@gmail.com', '9895424222', 'Flat no 405, Oceanus maple, vattekunnam , toll road , edapally, kochi', NULL, 'Kochi', '682024', NULL, 'ce823f18d293f9f6183081f6e9a1556f47a9ed1e', NULL, NULL, NULL, '1502722969', NULL, NULL, NULL, NULL, '1502722969', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '553084b7ebfd4be702b8b6e3209b6afe85058ba05e754995b61e5b32e8d9930c', '1502735400', NULL, NULL, NULL, NULL),
(182, 'ab', 'Mohanty', 'abhilipu.me@gmail.com', '8943566241', 'FLAT 303 , BLOCK - 4 , EASLAND ENCLAVE APARTMENTS , BHARAT PETROLEUM ,ELAMKULAM ', NULL, 'KOCHI', '682020', NULL, '6f41452d99665a31dff5a17c2a1fb02aa4bb32c2', NULL, NULL, NULL, '1502782115', NULL, NULL, NULL, NULL, '1503567692', 'default', NULL, '[]', '[]', 'India', 'KERALA', NULL, NULL, 'verified', '1502821800', NULL, NULL, NULL, NULL),
(183, 'Dr Dibna', 'C H', 'dibs48@gmail.com', '9539118080', 'Flat No 9D, vijaya glimpses, main avenue, jawahar nagar,kadavanthra ', NULL, 'Kochi', '682020', NULL, 'c749de48e5801035e12896c24f3555d5ecdbd30e', NULL, NULL, NULL, '1502808443', NULL, NULL, NULL, NULL, '1507125476', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'e6cc7e6e206bc8b161c9c6b35bf4a8dbdd11b6c4c3e23c2c0f6e63dcfc3fa411', '1502821800', NULL, NULL, '1507141800', 'recovered'),
(184, 'Rubin', 'Joseph', 'rubooze83@gmail.com', '9947014422', 'Flat no 6c,barons,skyline imperial gardens,stadium link road,kaloor 25', NULL, 'Cochin', '682025', NULL, '33399dd83b7f1d74f41010d3bcd1ba5a40f2b6d9', NULL, NULL, NULL, '1502809828', NULL, NULL, NULL, NULL, '1502809854', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '4e12e25a05842a05c491b566e8bca02692d92cda23e47557311ba82d25bcc8fd', '1502821800', NULL, NULL, NULL, NULL),
(185, 'Rahul', 'Suresh', 'irotia@gmail.com', '9495788340', 'Sumathi Mandiram', NULL, 'Kollam', '691505', NULL, '1e489fe6ca8e5e040e180c2dcba9b2ed6fbc0727', NULL, NULL, NULL, '1502810353', NULL, NULL, NULL, NULL, '1502810381', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '27c25586cc034195d7eaf1147bbf46b36292e1d1d6d4a11b1376e52defdb8129', '1502821800', NULL, NULL, NULL, NULL),
(186, 'Athulya', 'Ajith', 'athulya.ajith3@gmail.com', '8891812396', 'Poornam Info Vision Pvt Ltd, PB No. 5406, CSEZ P.O, Near Kendriya Bhavan', NULL, 'Cochin', '682037', NULL, '41fb4a03fe4cdb2ed10d2b5fbc5ddd5297d2d6b5', NULL, NULL, NULL, '1502969247', NULL, NULL, NULL, NULL, '1502969247', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '06b0e2a45ec4056a707d172daed201bbaaff45107dad9423391743f2143079be', '1502994600', NULL, NULL, NULL, NULL),
(187, 'Ramesh', 'Babu', 'srameshbabu1070@gmail.com', '9446079363', 'Gokulam, Judges Avenue kaloor', NULL, 'Kochi', '682017', NULL, '0b2fb4d8cb12c5ac3175a374a52ddd208841c469', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503060335', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '7f2cee9fce783102fc8e6a9eb9356eae8899c3f65af222a931656f4ac6529029', '1503081000', NULL, NULL, NULL, NULL),
(188, 'Ramesh', 'Babu', 'srameshbabu1070@gmail.com', '9446079363', 'Gokulam, Judges Avenue', NULL, 'Kochi', '682017', NULL, '0b2fb4d8cb12c5ac3175a374a52ddd208841c469', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503060387', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '5caa6371c47a2ec33259f4b41f4350cff368cc6a8ae9bff32d3b6061a923a180', '1503081000', NULL, NULL, NULL, NULL),
(189, 'Ramesh', 'Babu', 'srameshbabu1070@gmail.com', '9446079363', 'Gokulam, Judges Avenue kaloor', NULL, 'Kochi', '682017', NULL, '0b2fb4d8cb12c5ac3175a374a52ddd208841c469', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503060524', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '1f621feb85db281da1802c38e173c2c345fe795bd9509786f35a931175460c6c', '1503081000', NULL, NULL, NULL, NULL),
(190, 'Ramesh', 'Babu', 'srameshbabu1070@gmail.com', '9446079363', 'Gokulam judges avenue kaloor', NULL, 'Kochi', '682017', NULL, '0b2fb4d8cb12c5ac3175a374a52ddd208841c469', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503060620', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '89a65a8b850f133e72a7ee0f1ebf17b2113acae2eec1d5e6d1b360b1a6cdcb5c', '1503081000', NULL, NULL, NULL, NULL),
(191, 'Ramesh', 'Babu', 'srameshbabu1070@gmail.com', '9446079363', 'Gokulam, Judges Avenue kaloor', NULL, 'Kochi', '682017', NULL, '0b2fb4d8cb12c5ac3175a374a52ddd208841c469', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503060734', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'e845a039de21ee324e1897ac12f3aa1e605e6e3b97d48473a52a8d9ca9954a47', '1503081000', NULL, NULL, NULL, NULL),
(192, 'Ramesh', 'Babu', 'srameshbabu1070@gmail.com', '9446079363', 'Gokulam, Judges Avenue kaloor', NULL, 'Kochi', '682017', NULL, '0b2fb4d8cb12c5ac3175a374a52ddd208841c469', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503060737', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'f74f0bd2a6372806cce7d4560d5e54d8caa6cb7987c905ec1b1b8d0e9d273baf', '1503081000', NULL, NULL, NULL, NULL),
(193, 'Ramesh', 'Babu', 'srameshbabu1070@gmail.com', '9446079363', 'Gokulam, Judges Avenue, Kaloor', NULL, 'Kochi', '682017', NULL, 'ea7f4e8d3c9aa5d0bd1369f195504a63bb629f0b', NULL, NULL, NULL, '1503062226', NULL, NULL, NULL, NULL, '1503062226', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '8ea7b6d3af9e1dc014c151db52fc823530abd4835464fcd074a9006c684e4af9', '1503081000', NULL, NULL, NULL, NULL),
(194, 'Dibin', 'Jos', 'panoplywedding@gmail.com', '9895785302', 'Kizhakkoodan House , Society Road', NULL, 'Ernakulam', '682304', NULL, '141bf2d5b1ee650eab3ab5a7c1f48eb7d3ef5456', NULL, NULL, NULL, '1503424043', NULL, NULL, NULL, NULL, '1503780467', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1503426600', NULL, NULL, NULL, NULL),
(195, 'Ramesh ', 'Babu ', 'srameshbabu1070@gmail.com', '9446079363', 'Gokulam judges avenue kaloor', NULL, 'Kochi ', '682017', NULL, '0b2fb4d8cb12c5ac3175a374a52ddd208841c469', NULL, NULL, NULL, '1503494921', NULL, NULL, NULL, NULL, '1503494921', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, '6727726bec95f57c63a84ff896025f8844306cf69bd63a4994c33c7643c917c6', '1503513000', NULL, NULL, NULL, NULL),
(196, 'Gayathri', 'Poti', 'gayathripoti@gmail.com', '8395908893', 'Gokulam, Judges Avenue, Kaloor', NULL, 'Ernakulam ', '682017', NULL, '8cf8418d825f9d92398e870ac56520c7c9c0c0a5', NULL, NULL, NULL, '1503495552', NULL, NULL, NULL, NULL, '1503495552', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'f9088323044b51b60064d8ae0993e0fd10fa26fe10fbb608351e4b04ba274c71', '1503513000', NULL, NULL, NULL, NULL),
(197, 'Anish', 'Karim', 'canishk@gmail.com', '9947948969', 'Flat #3B, Cyber Heights, Asset Homes,VSNL Lane, Kakkanad', NULL, 'Kochi', '682030', NULL, '93a4b670ecf7057a2d3f561fa2c9ce6df8e960b1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1507633602', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1503685800', NULL, NULL, NULL, NULL),
(198, 'Sooraj', 'Nambiar', 'tksnambiar@gmail.com', '9035000252', 'S5,  Saraswathi,  Sangam Complex,St Martins Church Road, Palarivattom', NULL, 'Kochin', '682025', NULL, '404e7e92a959920cf9dd2825ad910bd07b0c078e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503663191', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1503685800', NULL, NULL, NULL, NULL),
(199, 'Ayaan', 'Faraz', 'ayaanfaraz777@gmail.com', '9846068111', '6d bay pride towers,marine drive ', NULL, 'Kochi ', '682031', NULL, '28ff7101b5951c1a3768f299a3f420eaae20cca9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503801069', 'default', NULL, '[]', '[]', 'India ', 'Kerala ', NULL, NULL, '11e54001964ca2450061ca5746efd5706e7d0a834832698ec9541b8027d47df3', '1503858600', NULL, NULL, NULL, NULL),
(200, 'Madathil', 'Balakrishnan', 'bkrish07@gmail.com', '9847342428', 'Amrutha 30 171 B Mukuttil, Temple Road  Poonithura, Kochi', NULL, 'KOCHI', '682038', NULL, '7509745d996f17e978927f6680c47479c343ac6c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503804008', 'default', NULL, '[]', '[]', 'India', 'KERALA', NULL, NULL, 'verified', '1503858600', NULL, NULL, NULL, NULL),
(201, 'Shruti', 'Ramachandran', 'shruti107@gmail.com', '9539608817', '\'Shruti\', Saptaswara enclave, near cerch homeopathy centre, kandavantara', NULL, 'Cochin', '682020', NULL, 'cf15d71080134431da40df94d80f3640533ba554', NULL, NULL, NULL, '1503845750', NULL, NULL, NULL, NULL, '1503845787', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '47b88a6026668f58ab4ba6f2d3c1ead8e180488f096d17a8cba80c7fd3bce815', '1503858600', NULL, NULL, NULL, NULL),
(202, 'Michelle', 'George', 'michellegeorge777@gmail.com', '9633438124', '18-A kannarkat condominium, toc-h road, Vyttila ', NULL, 'Kochi ', '682019', NULL, '68b33a5e326f9b95e7655d1313f71dfddfcca360', NULL, NULL, NULL, '1503858557', NULL, NULL, NULL, NULL, '1504626571', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '8509115d857b07cbf4ff439d116338df234dcd56c3bb1096ef835c474bc3ec39', '1503858600', NULL, NULL, NULL, NULL),
(203, 'Ayaan', 'Faraz', 'ayaanfaraz777@gmail.com', '8086161111', 'Bay pride', NULL, 'Kochi ', '682031', NULL, '28ff7101b5951c1a3768f299a3f420eaae20cca9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503921003', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, 'e12d1c99fdde8d447514f5355f249824672b1e94b31899eac1a7792722d13724', '1503945000', NULL, NULL, NULL, NULL),
(204, 'Ayaan', 'Faraz', 'ayaanfaraz777@gmail.com', '8086161111', '6D bay pride towers', NULL, 'Kochi ', '682031', NULL, '8ad493a75816756f13210f2d962cdb9c901ddf5a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1503921146', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, '0d8f6636b2c582a45f6e14ab469c2a20a4c47bbe701bc27cc52329b5b96ca7fd', '1503945000', NULL, NULL, NULL, NULL),
(205, 'Aayisha ', 'Yahiya', 'crescentproperties@yahoo.com', '8590648913', 'Saffron residency, flat no 1A,Near matha mill stores, padmasree lane', NULL, 'Ernakulam', '682024', NULL, 'c864f7a2127a3b66fddbbd5fe796fa236762b585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1504158135', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '8a0d1fba93e642ec6c2022bd98b6f88ceb1fb43c38fba5911966d7011e776aff', '1504204200', NULL, NULL, NULL, NULL),
(206, 'Aayisha', 'Yahiya', 'crescentproperties@yahoo.com', '8590648913', 'Saffron residency, flat no 1A,Near matha mill stores, padmasree lane', NULL, 'Ernakulam', '682024', NULL, 'c864f7a2127a3b66fddbbd5fe796fa236762b585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1504158535', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '2191b9bb8a3a16fd3ad517f0d7157c9bf01923964816e51f6e53c579a3468a79', '1504204200', NULL, NULL, NULL, NULL),
(207, 'Aayisha', 'Yahiya', 'crescentproperties@yahoo.com', '8590648913', 'Saffron residency, flat no 1A,Near matha mill stores, padmasree lane', NULL, 'Ernakulam', '682024', NULL, '796ad74e2dcb3dfc651e0b968edcab57c2d6a129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1504158612', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'ccfc97508c23eed85aade6c0cc7a1e1cbe71e91b45ba1fe18bec1f1d0a8941ee', '1504204200', NULL, NULL, NULL, NULL),
(208, 'Sana', 'Farhan', 'sanafarhaan@hotmail.com', '9846166555', 'Abad marine plaza, 5F, marine Drive,ernakulam ', NULL, 'Kochi', '682031', NULL, '5952f8f558aa98014ea67ac65d1339dc28e5f9ac', NULL, NULL, NULL, '1504536794', NULL, NULL, NULL, NULL, '1504536825', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '10cb5bb48ebd1a449794e907a1ea9184ddf2f3359cc5a025fb8ae0349fa36ff7', '1504549800', NULL, NULL, NULL, NULL),
(209, 'Aaditya', 'Suresh', 'aaditya91@gmail.com', '9207944149', '5A, DD Platinum Planet, Pulepady Thamannam Road', NULL, 'Kochin', '682017', NULL, 'a5e3dd924f592e67ba78b57645d8e46006b8baa9', NULL, NULL, NULL, '1504684414', NULL, NULL, NULL, NULL, '1504684796', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'e0388c814b1b0a51300670c8945dad93ed1d956eb873cec301f740512d46a0a5', '1504722600', NULL, NULL, NULL, NULL),
(210, 'Parvathy', 'Vijayan', 'parvathy.03@gmail.com', '9846507130', 'Flat no A4, Garden Manohar, BTS Road, Elamakkara', NULL, 'Ernakulam', '682026', NULL, 'c8206a6898b9b0ccf3f27a5970e4d755d048429e', NULL, NULL, NULL, '1504704082', NULL, NULL, NULL, NULL, '1504704082', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1504722600', NULL, NULL, NULL, NULL),
(211, 'Aayisha', 'Yahiya', 'crescentproperties@yahoo.com', '7736315853', 'Saffron residency, flat no. 1A,Near matha mill stores, padmasree lane,mamangalan', NULL, 'Ernakulam', '682024', NULL, '796ad74e2dcb3dfc651e0b968edcab57c2d6a129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1504784877', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '85801119c0fdef1a9bfea7e89f81a64b3dc73cf7dd7199a105a156bacb058126', '1504809000', NULL, NULL, NULL, NULL),
(212, 'Aayisha', 'Yahiya', 'crescentproperties@yahoo.com', '7736315853', 'Saffron residency, flat no. 1A,Near matha mill stores, padmasree lane,mamangalan', NULL, 'Ernakulam', '682024', NULL, '796ad74e2dcb3dfc651e0b968edcab57c2d6a129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1504784956', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'fe0d1e20359d66382b9aee24048f138fdf147fe81f303b4c2fd753e68629f8d0', '1504809000', NULL, NULL, NULL, NULL),
(213, 'Hari', 'Kris', 'toneo_hari@yahoo.co.in', '9447454396', 'Flat 1E, Royal Stadium Mansion, Near Kadavanthara Police Station', NULL, 'Ernakulam ', '682020', NULL, 'dcff4212b2f414490dc225969108efdf435028ca', NULL, NULL, NULL, '1504946019', NULL, NULL, NULL, NULL, '1510041749', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '7471fe4062fd5cce723d23aaa46f8e503503607eefcfaa6fdb6eba1829fca5cc', '1504981800', NULL, NULL, NULL, NULL),
(214, 'Manogna ', 'Rajan', 'manogna17@gmail.com', '8129998522', 'Almond 3 Jairaj sonata padamugal ', NULL, 'Kochi', '682021', NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, '1505106784', NULL, NULL, NULL, NULL, '1510205142', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, '4ce25936b08d599426577c0c1618ae0639dc7c65d7a980a51e9cc6b5fa3fc36e', '1505154600', NULL, NULL, NULL, NULL),
(215, 'Indusree', 'Haridas', 'Indu.chammana@gmail.com', '9447454934', 'Skyline ivy league Thalakkottu Moola Rd, Edachira, Kakkanad ', NULL, 'Kochi', '682030', NULL, 'a9226a2f10edd0bb6966eb0c0edf08a586808ce1', NULL, NULL, NULL, '1505106871', NULL, NULL, NULL, NULL, '1505712088', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1505154600', NULL, NULL, NULL, NULL),
(216, 'shimi', 'nikhil', 'dr.shimynikhil@gmail.com', '00918086661117', 'skyline green valley villas,villa 14,thurutheparambu road,vazhakkala', NULL, 'ernakulam', '682021', NULL, '234d105a5bbeef2dbbaab2bd390adef416488c99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1505115410', 'default', NULL, '[]', '[]', 'india', 'kerala', NULL, NULL, 'b3ac46af2b9e89942a3c6c0d6a9ebdbc7e56aca7397e998314c529f2ac09b296', '1505154600', NULL, NULL, NULL, NULL),
(217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, '1505151377', NULL, NULL, NULL, NULL, '1512369106', 'default', NULL, '[]', '[]', 'India', NULL, NULL, NULL, '53ea9d60a518b5a710b2b12a18a42b353de8d28d85923709febe0f5824919d4a', '1505154600', NULL, NULL, NULL, NULL),
(218, 'anil', 'shenoy', 'shenoysanil@gmail.com', '9895038888', 'mings dumpling house , ground floor , shenoy chambers , shanmugham road , ernakulam', NULL, 'cochin', '682031', NULL, '66a83ea96566d28af248e7bd522528b54f0b07ad', NULL, NULL, NULL, '1505195301', NULL, NULL, NULL, NULL, '1505195301', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'verified', '1505241000', NULL, NULL, NULL, NULL),
(220, 'CUCKOO', 'PARAMESWARAN', 'cuckoomenon@hotmail.com', '9447164881', 'house no.3 shilpa, st martin road, behind canopy apartments ', NULL, 'cochin', '682025', NULL, '792d28329de7ed446c01b83f731a071248ffeaf4', NULL, NULL, NULL, '1505234481', NULL, NULL, NULL, NULL, '1505234619', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'c7ee2c5477e303e43c65f491bb7a265bb2a4b7aeefdb116eb1f2e0f1f7b166f7', '1505241000', NULL, NULL, NULL, NULL),
(219, 'yadu', 'rk', 'yaduk87@gmail.com', '7025710863', 'souparnika, indiranagar[first right second house],kadavanthara cochin', NULL, 'ernakulam', '682020', NULL, '7f518ac8d6d3b61ad519c43c1b4dd5cbccee8327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1505197977', 'default', NULL, '[]', '[]', 'india', 'kerela', NULL, NULL, 'verified', '1505241000', NULL, NULL, NULL, NULL),
(221, 'Dinu', 'Sivaraman', 'dinups89@gmail.com', '9048253811', 'Thachapuzha Lane, Pachalam P.O, Cochin-12', NULL, 'Ernakulam', '682012', NULL, '08274e3436397def701987f0bc5fec42c258c7bd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1505296395', 'default', NULL, '[]', '[]', 'Indian ', 'Kerala', NULL, NULL, 'dc4662ece32dd3c61aed7b5eede75b1bb80d0de804f7a5b1232505b9d1f00844', '1505327400', NULL, NULL, NULL, NULL),
(222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1505423375', 'default', NULL, '[]', '[]', NULL, NULL, NULL, NULL, 'f621f40219d15977263eac566c5a3031873064ce60834569cb08c3475e7ba122', '1505500200', NULL, NULL, NULL, NULL),
(223, 'Indira', 'EB', 'indiraeb@gmail.com', '9495839720', '11D SUMMER SANDS, CLASSIC APARTMENTS, NEAR BHARATHA MATHA COLLEGE', NULL, 'THRIKKAKARA', '682021', NULL, 'fca1f1d323abcfa44efe32f8096b6519a708db9b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1505636819', 'default', NULL, '[]', '[]', 'INDIA', 'KERALA', NULL, NULL, '6808793257262c325aba52f94cf210d92f1667ca21b740d329da48ea5ae8678f', '1505500200', NULL, NULL, NULL, NULL),
(224, 'Indira', 'EB', 'indiraeb@gmail.com', '9495839720', '11D SUMMER SANDS, CLASSIC APARTMENTS, NEAR BHARATHA MATHA COLLEGE', NULL, 'THRIKKAKARA', '682021', NULL, 'fca1f1d323abcfa44efe32f8096b6519a708db9b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1505479575', 'default', NULL, '[]', '[]', 'India', 'KERALA', NULL, NULL, 'accb2595ea527268a555a166dc45a7abace18d96fb33e7b721e746e7e448cd32', '1505500200', NULL, NULL, NULL, NULL),
(225, 'Arpita', 'Sebastian ', 'arpitasebastian@gmail.com', '8089086636', 'Palazhi, Opp. Margin free godown , kandanad PO Udyamperoor, tripunithura', NULL, 'Kochi', '682305', NULL, '576f69951abf99b1652ed356d36aaec128faa8bb', NULL, NULL, NULL, '1505539871', NULL, NULL, NULL, NULL, '1505539899', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'f907ab571e1fd97bf1347cbcd8aef2d5b8dbf9eb9e904d1b559310fb45aa4c5d', '1505586600', NULL, NULL, NULL, NULL),
(226, 'Neha ', 'Nair ', 'nairblues@gmail.com', '9946638602', 'Heera Waters North Block 12 A Chilavannur Road', NULL, 'Cochin', '682020', NULL, '320779767091d2542cf415e529cb55cbded545a1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1505619884', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1505586600', NULL, NULL, NULL, NULL),
(227, 'Ajit', 'Saraf', 'ajitsaraf@gmail.com', '914844060982', 'Apt14A, Chakolas Waterscape, Pandit Karuppanan Rd., Thevara ferry,', NULL, 'Kochi', '682013', NULL, 'fc61b152578dd5481b98c14afd63510b55dfe4e8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1511261570', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1505586600', NULL, NULL, NULL, NULL),
(228, 'Amaya', 'Roy', 'amayaroy88@gmail.com', '9037208481', 'Mangalath Kiluthattil ', NULL, 'Cochin', '682021', NULL, '1d06756dfdc87013fa793d32188479a964c1ee40', NULL, NULL, NULL, '1506183786', NULL, NULL, NULL, NULL, '1506183837', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '4e67849be280c1d727345c240fcc2ba79fd5d936b098bf2d917060b4c2f7c80d', '1506191400', NULL, NULL, NULL, NULL),
(229, 'Anju', 'Thomas', 'ast.thomas1117@gmail.com', '8086357537', 'Rak princeston building, marootichuvadu road,', NULL, 'Edapally, cochin', '682024', NULL, 'aa403b07a25f34d54926b9e109158e4cc61c0e75', NULL, NULL, NULL, '1506245297', NULL, NULL, NULL, NULL, '1506245420', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1506277800', NULL, NULL, NULL, NULL),
(230, 'Jeny', 'Mathew ', 'jenymarymathew@gmail.com', '7511120411', 'Alappatt building. G floor.  Palathuruthy. cochin 20', NULL, 'Cochin ', '682020', NULL, 'fcb374bd7979613d168a40bb9f9e8936c7226048', NULL, NULL, NULL, '1506450111', NULL, NULL, NULL, NULL, '1506450111', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1506450600', NULL, NULL, NULL, NULL),
(231, 'Prathewsha ', 'K', 'prathewshak5@gmail.com', '8301852869', 'Ywca chitoor Road ', NULL, 'Kochi', '682035', NULL, 'ebe3f3f4768915b8742752d6fef83d6c82a7ac79', NULL, NULL, NULL, '1506529461', NULL, NULL, NULL, NULL, '1506529478', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, 'd8ceb43aa44c5fe25076d1837e81e61fd4bf5efb08b42ceaceb003d95d379a5c', '1506537000', NULL, NULL, NULL, NULL),
(232, 'Midhun ', 'Lal', 'midhun.lal@gmail.com', '9895704223', '17 E Abad Olympus Raghavan Pillai Road Behind Changampuzha Park Edappally', NULL, 'Kochi ', '682024', NULL, 'a5dfaf144f67408d1cba9d43c46a8f9e2cb141eb', NULL, NULL, NULL, '1506616455', NULL, NULL, NULL, NULL, '1506616455', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, 'verified', '1506623400', NULL, NULL, NULL, NULL),
(233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, '1506667276', NULL, NULL, NULL, NULL, '1506667276', 'default', NULL, '[]', '[]', 'India', NULL, NULL, NULL, '4cf19be6b9bb8e74dffb98aebdf37b956779c1a3b10fbae1e9fb199c56f330c6', '1506709800', NULL, NULL, NULL, NULL),
(234, 'Kirti', 'Nair', 'nairkirti@yahoo.in', '9746826536', 'Kirti C Nair, TechWyse IT Solutions, 5th Floor - Sana Towers, Jos Jn. , M. G Road, Kochi ', NULL, 'Kochi', '682016', NULL, 'f68614f4222a1f052849cae1136529c09ffaddab', NULL, NULL, NULL, '1506694109', NULL, NULL, NULL, NULL, '1508917365', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '61260aaa8f4465cda3c2974f5119cc7e14526c3c0fc11bc3563f77defcd8e824', '1506709800', NULL, NULL, NULL, NULL),
(235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, '1506974398', NULL, NULL, NULL, NULL, '1506974398', 'default', NULL, '[]', '[]', 'India', NULL, NULL, NULL, '8669e0a9d7230b1cf5dd81610141a68862c8105852768309318acc30b83a79c8', '1507055400', NULL, NULL, NULL, NULL),
(236, 'Geetu', 'Anoop', 'geetuearnest@gmail.com', '8129311677', 'SVRA,30 D,Star Valley Road,Mavelipuram,Kakkanad', NULL, 'Kochi', '682030', NULL, '4ee518dd39d98e9f1bcb42491e18b028d649faad', NULL, NULL, NULL, '1507006448', NULL, NULL, NULL, NULL, '1511242608', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '449d2fc82548df89f2e9ac379f390c47a45bbe8cc1751249a844591bb02d3745', '1507055400', NULL, NULL, NULL, NULL),
(237, 'Geetu', 'Anoop', 'geetuearnest@gmail.com', '8129311677', 'SVRA 30 D,Star valley Road,Mavelipuram , Kakkanad', NULL, 'kochi', '682030', NULL, '4ee518dd39d98e9f1bcb42491e18b028d649faad', NULL, NULL, NULL, '1507006551', NULL, NULL, NULL, NULL, '1507006551', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1507055400', NULL, NULL, NULL, NULL),
(238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, '1507016473', NULL, NULL, NULL, NULL, '1507016473', 'default', NULL, '[]', '[]', 'India', NULL, NULL, NULL, '50f7da2dd08bbf842444446ead3d94f7aee6c905038058ef9783773f869597d6', '1507055400', NULL, NULL, NULL, NULL),
(239, 'Sreelakshmi', 'L', 'lachurajesh03@gmail.com', '9895758536', 'Swastika,TC 5/2930(1),ERA163A, Elamkulam lane 2', NULL, 'Sreekarym PO', '695017', NULL, 'be121f2d01af53fa6da2ea34f3d98f6cabd93524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1507016561', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1507055400', NULL, NULL, NULL, NULL),
(240, 'Sreelakshmi', 'L', 'lachurajesh03@gmail.com', '9895758536', 'Swastika,TC 5/2930(1),ERA163A, Elamkulam lane 2', NULL, 'Sreekarym PO', '695017', NULL, 'be121f2d01af53fa6da2ea34f3d98f6cabd93524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1507016544', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '30a59ca017fd45487bf239235f4ff825d717864b9f0b63587a7784b922b09318', '1507055400', NULL, NULL, NULL, NULL),
(241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, '1507360523', NULL, NULL, NULL, NULL, '1507360523', 'default', NULL, '[]', '[]', 'India', NULL, NULL, NULL, '7a2397ed298c0f71e09927cbef0b28de8d7f05203e3d4885702be19b5f808645', '1507401000', NULL, NULL, NULL, NULL),
(242, 'Rakesh', 'Kishore', 'rakeshkishore@gmail.com', '8939973260', 'FG-4, Palladium Apartments, Elamakkara', NULL, 'Kochi', '682026', NULL, 'cbca09a86f6878a796e81ffdf5f10105508a7541', NULL, NULL, NULL, '1507390328', NULL, NULL, NULL, NULL, '1507390328', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1507401000', NULL, NULL, NULL, NULL),
(243, 'Vinod ', 'Viswambharan', 'vinod.viswambharan@gmail.com', '919566215222', '15G, Noel Arcadia, Padamughal, Papali Road ', NULL, 'Kakkanad ', '682030', NULL, 'e2bd30015244f058cee2fc4a9677a88dcad132a7', NULL, NULL, NULL, '1507436841', NULL, NULL, NULL, NULL, '1507436874', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1507487400', NULL, NULL, NULL, NULL),
(244, 'mithun', 'raj', 'mithuraj.raj@gmail.com', '9447171663', 'Leela Info Park, Unit IX-C, 9th floor PhaseIV, Kochi, Kerala, India', NULL, 'eranakulam', '686691', NULL, '36a3dfda6161ead53a41830162a07f51583f9e9b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1507551901', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'verified', '1507573800', NULL, NULL, NULL, NULL),
(245, 'Suzannah', 'Muthoot', 'suzannahm94@gmail.com', '919846813436', 'Apt. 8, chitra Malika,Pandit Karuppana Road rd', NULL, 'Kochi', '682013', NULL, '1decd925efaf2d72c1742e394d88ab79144e3203', NULL, NULL, NULL, '1507567389', NULL, NULL, NULL, NULL, '1507612606', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1507573800', NULL, NULL, NULL, NULL);
INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `user_type`, `user_type_till`, `left_product_type`, `downloads`, `country`, `state`, `referral_token`, `refferal_used`, `email_verification`, `email_verify_time`, `referral_times`, `referral_amount_count`, `recovery_time_limit`, `recover_code`) VALUES
(246, 'Rejaz', 'M Sydeek', 'rejazactor@yahoo.in', '9995774303', 'A2,skywings apartments,skywings avenue,keerthi nagar , elamakara', NULL, 'Kochi', '682024', NULL, '5e7c66631938746ad8312093756d6bcd8187ac27', NULL, NULL, NULL, '1507712273', NULL, NULL, NULL, NULL, '1507712273', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '5767ccbbffe3e9652aeb463b7d5a1d8b42a4a9c73902ea5b0c4f3abbeed07e28', '1507746600', NULL, NULL, NULL, NULL),
(247, 'Lovewin', 'Vinu', 'lenendj@gmail.com', '7560944400', 'Vinu Antony,Villa no 6,Ace Nimbus,Nivya road,Pottakuzy,Kaloor', NULL, 'Ernakulam', '682017', NULL, 'c3f5b5e7eb69a6791ec9201f50658a9cf40be5f2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1507789841', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '2388c572c05e8d5be350abf7b5fa3e5672e062c06eb5f6d73b40a599814af224', '1507833000', NULL, NULL, NULL, NULL),
(248, 'liya', 'sunny', 'liyaooolsa949@gmail.com', '9740460085', '7/52- d , Annakutty\'s , Mavelipuram , Kakkanad', NULL, 'cochin', '682030', NULL, '65158f1b75d2197fb24491e861af1f7977ddc2be', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1507792975', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '8c6238710550a0efdddce403f5dc19089fbd9806209bf7e32cb2084903c62fbe', '1507833000', NULL, NULL, NULL, NULL),
(249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1508193888', 'default', NULL, '[]', '[]', NULL, NULL, NULL, NULL, '414cd0952f9fc5cd178701fdb69fa926bf0568b98e8fe64081328edf5c519f0b', '1508265000', NULL, NULL, NULL, NULL),
(250, 'Jeevan', 'Damien', 'u4jeevan@gmail.com', '9995905647', '4A, Sky Park Residency, North Janatha Road, Palarivattom,', NULL, 'Kochi', '682025', NULL, '3dc633a53fec1a8164bb32007f5b455e690df3c5', NULL, NULL, NULL, '1508303708', NULL, NULL, NULL, NULL, '1508303726', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1508351400', NULL, NULL, NULL, NULL),
(251, 'Matthew', 'John', 'matthewjohn50@gmail.com', '919207750909', 'B603, Purva Eternity, Near Athani Junction, Kakkanad P.O, Cochin-682030', NULL, 'Kochi', '682030', NULL, '5fe51282efa091c903c7f292f11b00916a778d6a', NULL, NULL, NULL, '1508470818', NULL, NULL, NULL, NULL, '1508470930', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1508524200', NULL, NULL, NULL, NULL),
(252, 'donna', 'mitchell', 'indiamidwife@gmail.com', '9747833418', 'golden kayaloram 8A', NULL, 'kundanoor', '682019', NULL, 'e13e4340b723789ebb7ec0f1908e83e917d57236', NULL, NULL, NULL, '1508477741', NULL, NULL, NULL, NULL, '1511777492', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'verified', '1508524200', NULL, NULL, NULL, NULL),
(253, 'Sajith', 'M R', 'mrsajith@gmail.com', '9539368042', 'Flat No 6D, West Gate Terrace, Pandit Karuppan Road, Thevera, Ernakulam', NULL, 'KOCHI', '682013', NULL, 'bd8e8ee1a79a4c646081c0beecc59cb179e31cd9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1508507832', 'default', NULL, '[]', '[]', 'India', 'KERALA', NULL, NULL, 'bba1e9cce8f0d56b38573698b7fdf0e4270d033180b305c8d6a5ddc98d9d9cbc', '1508524200', NULL, NULL, NULL, NULL),
(254, 'BETLIN', 'BABU', 'betkaripat@gmail.com', '9995904922', 'KARIPAT HOUSE L.F.C ROAD NORTH KALOOR KOCHI 17', NULL, 'ERNAKULAM', '682017', NULL, '09dfecab192d1668a64406f74d3d609d363b324a', NULL, NULL, NULL, '1508577513', NULL, NULL, NULL, NULL, '1508577536', 'default', NULL, '[]', '[]', 'India', 'KERALA', NULL, NULL, 'verified', '1508610600', NULL, NULL, NULL, NULL),
(256, 'Joseph', 'Dominic', 'josephdominic@cghearth.com', '919847434481', '11-B Uparika Malika, Pandit Karuppan Road', NULL, 'Cochin', '682013', NULL, '04e98074685cfc7cf25bcda576104c5ed7f448cf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1508667793', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '5fa283c04b53128b9db149b1d55ea80204e19e3ef18e6fedfa8f7a5badc11f27', '1508697000', NULL, NULL, NULL, NULL),
(255, 'Cibi', 'Manoharan', 'smilewithcibi@gmail.com', '8870378686', 'Amrita institute of medical science', NULL, 'Kochi', '682024', NULL, 'ebb990552f149e0f06b518dda70c31d5333d282c', NULL, NULL, NULL, '1508582108', NULL, NULL, NULL, NULL, '1508582143', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '67708ba4fb07e357a00dcdd44674ff2d1ebd019c371e17da8533525127f3b0ab', '1508610600', NULL, NULL, NULL, NULL),
(257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1508667735', 'default', NULL, '[]', '[]', NULL, NULL, NULL, NULL, '4d1402f2b668a7b4636403610eb8b2a09e942b5e33c3152ea93099796b31fb2f', '1508697000', NULL, NULL, NULL, NULL),
(258, 'Joseph', 'Dominic', 'josephdominic@cghearth.com', '919847434481', '11-B Uparika Malika, Pandit Karuppan Road', NULL, 'Cochin', '682013', NULL, '04e98074685cfc7cf25bcda576104c5ed7f448cf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1508667768', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'fd215460b26c307d10e82534b2db492f8bb5febe5ba0018a59e9ec39e8c997fc', '1508697000', NULL, NULL, NULL, NULL),
(259, 'Alishba', 'Jafrie', 'alishba.jafrie@gmail.com', '9567638764', 'Assumption hostel,Rajagiri valley,Ket,Kakkanad', NULL, 'Kochi', '682039', NULL, 'de1559509c7e77183d59019050681e5d43acbb6d', NULL, NULL, NULL, '1508682748', NULL, NULL, NULL, NULL, '1508682778', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'd722b6f5d0aaa31a26323862b4d13a857c895dd26591e2381073519b06a1d305', '1508697000', NULL, NULL, NULL, NULL),
(260, 'Rosemary ', 'Varghese ', 'rosemary.koluthara@gmail.com', '9846144888', 'Varghese Antony, Shanthi Nagar, Thevera ', NULL, 'Kochi', '682013', NULL, 'bba0ce89ccfced301ce87f109dded24e84b50800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1509072712', 'default', NULL, '[]', '[]', 'India ', 'Kerala ', NULL, NULL, '62eb9a17db29f299ed3260d6a96ab157197ca6531e98702fa345a73d6e8a9b0a', '1508783400', NULL, NULL, NULL, NULL),
(261, 'Neema ', 'Joseph', 'neemaj958@gmail.com', '9072624000', '12b silveroak,Skyline city park,jawaharnagar', NULL, 'Kadavanthra ', '682020', NULL, '5c71da1ade4e47b5659572f6ef6787d57b010341', NULL, NULL, NULL, '1508750208', NULL, NULL, NULL, NULL, '1508750232', 'default', NULL, '[]', '[]', 'India', 'Kearala', NULL, NULL, 'c6661ef198ebf1c18ba4dc0b50e4819cf2005bb80a3e18727bb3bcf8198cd87a', '1508783400', NULL, NULL, NULL, NULL),
(262, 'Bhavana ', 'Ranjan', 'bhavana.ranjan@gmail.com', '9947236453', 'Hno12/522K, Style Villas, Mannadi Olikozhi Rd, near Satellite Township, Padamugal, Kakkanad West PO  ', NULL, 'Kochi ', '682030', NULL, '56eb9b215d1667d6174ef6df0723d4677a5ed730', NULL, NULL, NULL, '1508753778', NULL, NULL, NULL, NULL, '1508753834', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1508783400', NULL, NULL, NULL, NULL),
(263, 'Jithu', 'K m', 'jithukm.jk@gmail.com', '9037899398', 'Hb 06 mings wok panampilly nagar', NULL, 'Cochin', '682036', NULL, '605b76fda9c19333315e53a7098162a26871290e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1510117949', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'dee9e893ec82186e55c39a1823d0e3bd1f14f4e1681e8a775788b2586bc60efb', '1508956200', NULL, NULL, '1510165800', 'recovered'),
(264, 'Hanan ', 'Fathim', 'minnu.kaliparambil@gmail.com', '9446583566', 'Kunjumuhammed unni mavelipuram chennambilly house kakkanad plot no 285', NULL, 'Ernakulam', '682030', NULL, '2c24bfd53803a36a3192f39cbb8a5f2f10ba50ac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1510149801', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'e10fbde3d48e64de371c041c1a3cc5e52a0d7ef3b6b3f6e9a0b0e47f8ec54ac8', '1510165800', NULL, NULL, '1510511400', '5d2262f51664906b53024fa80b0602bdce4f1887ac640bde9210b7a26affc41c'),
(265, 'Sahil', 'Anwar', 'sahiltn01@gmail', '8089566106', 'Statue road,pandikudy, Kochi', NULL, 'Kochi', '682001', NULL, '9a768f30bdbda6b8f276d8e7141e6b130d40b2f2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1510153811', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '9aef3d7c8dd52a741b647333309c65871be90c5e57d32f880f18e25e79242eb0', '1510165800', NULL, NULL, NULL, NULL),
(266, 'Manogna', 'Rajan', 'manogna17@gmail.com', '8129998522', 'Flat 203 Confident Atria III Kuzhivellapady Edathala, After KMJ convention centre', NULL, 'Kochi', '682024', NULL, 'fb57583b777d0bd1ec1fa02446f23158f61e81e4', NULL, NULL, NULL, '1510205000', NULL, NULL, NULL, NULL, '1510209107', 'default', NULL, '[]', '[]', 'India', 'Kerala ', NULL, NULL, 'verified', '1510252200', NULL, NULL, NULL, NULL),
(267, 'Abishek', 'Georgy', 'abishekgeorgyag@gmail.com', '9744051798', 'Kalathuveetil house, thoppil edapally', NULL, 'ERNAKULAM ', '682024', NULL, '0637f3689d2e39358cdbcae2f5dcb2b9bc8a1335', NULL, NULL, NULL, '1510223521', NULL, NULL, NULL, NULL, '1510223557', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'b86688e5c65d4989b5ec5c47e3bc3189086caf552173f59555e383b7f5592051', '1510252200', NULL, NULL, NULL, NULL),
(268, 'Parvathy', 'Menon', 'parvathysumesh@yahoo.com', '9746475873', 'KPMG global services, world trade centre, infopark9th floor', NULL, 'Kakkanad P O , Kochi', '682030', NULL, '538f5bf0435528835fae577495d0f6058afe91fc', NULL, NULL, NULL, '1510315905', NULL, NULL, NULL, NULL, '1510315949', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '572db030e0b0929e3ba7979de86f48ea2ca7abc900a8eed4a314544321ddc761', '1510338600', NULL, NULL, NULL, NULL),
(269, 'Keerthi', 'Nair', 'keerthisnair777@gmail.com', '9061321921', 'Kuzhiparambil arcade, chathangattu road', NULL, 'Palarivattam, kochi', '682032', NULL, 'fbf810d2a08b17fa3f98788cb80330740d5dbef2', NULL, NULL, NULL, '1510327730', NULL, NULL, NULL, NULL, '1510327760', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '012dad96bc5014620a7fb3bea8bbd5de982f455551d71d787350313dd5656b53', '1510338600', NULL, NULL, NULL, NULL),
(270, 'Mary', 'Mathew', 'mmshilpa1995@gmail.com', '8593954649', 'Kalathuveetil house, injiparambu road, unichara, thoppil edapally', NULL, 'ERNAKULAM ', '682021', NULL, '129eb0e0f439e151f18e11cfe79387e87ae313c1', NULL, NULL, NULL, '1510375241', NULL, NULL, NULL, NULL, '1510375282', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'a8929a9805a09561e270e1ec2987cf9e463da9334bf341bd04417f09aef28b85', '1510425000', NULL, NULL, NULL, NULL),
(271, 'Sakshi', 'Thapa', 'sakshiswamy1999@gmail.com', '7356883932', 'Vennala near century club', NULL, 'Kerala', '682820', NULL, '5613341379fe895390992fe34ec30c408126a971', NULL, NULL, NULL, '1510379903', NULL, NULL, NULL, NULL, '1510379953', 'default', NULL, '[]', '[]', 'India', 'Kochi', NULL, NULL, 'd64064032e9921dceb635fbb161067c547634b92644aa1de3209e5ebe6f444aa', '1510425000', NULL, NULL, NULL, NULL),
(272, 'seena ', 'zachariah', 'catwalk.seena7@gmail.com', '9847749482', '1B,tranquil residency chembmukku thrikakara po,kochi', NULL, 'kochi ', '682021', NULL, '6dd682123f7462fd055c0c2b972ae7f3334c7727', NULL, NULL, NULL, '1510409986', NULL, NULL, NULL, NULL, '1510411125', 'default', NULL, '[]', '[]', 'India', 'India', NULL, NULL, '2caae98df18b24593c3d6b17e6a351e6c33ce0d749fde3d5720854080d38317e', '1510425000', NULL, NULL, NULL, NULL),
(273, 'seena', 'zachariah', 'catwalk.seena7@gmail.com', '9847749482', '1B,tranquil residency chembmukku,thrikakara po,kochi', NULL, 'kochi', '682021', NULL, '798a9b61aaa2aab54f9fcc3aa85704aff08647a5', NULL, NULL, NULL, '1510411116', NULL, NULL, NULL, NULL, '1510656985', 'default', NULL, '[]', '[]', 'India', 'India', NULL, NULL, '89572d18a0eed720786c28b9b75a5357fa429efb0ca66aa51dcf55e0e1cae2e2', '1510425000', NULL, NULL, NULL, NULL),
(274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, '1510411136', NULL, NULL, NULL, NULL, '1510411136', 'default', NULL, '[]', '[]', 'India', NULL, NULL, NULL, 'f3b98976377eea9592cf737b8272a2c1d1558e2b7349702d933e956f0a3b47d9', '1510425000', NULL, NULL, NULL, NULL),
(275, 'Anoop', 'John', 'anoop21linkdin@gmail.com', '8714511165', 'Flat 3F43, Star Homes, Near KSRTC bus statiin', NULL, 'Giri nagar, Kathrikadavu', '682020', NULL, '52d1cfd6b9b86edd2b88a4d47440e9e64e7609bb', NULL, NULL, NULL, '1510646805', NULL, NULL, NULL, NULL, '1510649761', 'default', NULL, '[]', '[]', 'India', 'KERALA', NULL, NULL, 'eaa62fb8a6b9e6fb1c0b0cbae1c14f8076b09fcbcd8bdd37f2be16f884a2b3af', '1510684200', NULL, NULL, NULL, NULL),
(276, 'Bernaditta Oshin', 'Hogan', 'oshinhogan.oshin@gmail.com', '9947827372', 'Bernaditta Oshin Hogan,Pumex Infotech pvt ltd, Vismaya Building, Ground Floor, Infopark, Infopark Campus, Infopark, Kochi, Kerala 682030', NULL, 'Cochin', '682030', NULL, '4826ac14116c066bc2e60ef561df24818c55eb11', NULL, NULL, NULL, '1510738522', NULL, NULL, NULL, NULL, '1510738545', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, 'verified', '1510770600', NULL, NULL, NULL, NULL),
(277, 'Monu', 'Swamy', 'itsphenominal86@gmail.com', '9995762244', 'Vennala janatha road,near mangalayil temple,alinchuvadu,vennala', NULL, 'Ernakulam', '682028', NULL, '05bd9a59b348b783b52a433b6828dfa5c03cd7a5', NULL, NULL, NULL, '1510814646', NULL, NULL, NULL, NULL, '1510814646', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, '4838b8260683e9f7134a1b5be86b11ce342d062e7798a8b76f3a1a2fe458b457', '1510857000', NULL, NULL, NULL, NULL),
(278, 'Aneesh', 'Ta', 'anishta90@yahoo.co.in', '9846976531', 'Thachapally house , Thrikkakara po', NULL, 'Kochi', '682021', NULL, 'a7a3a5c958fd0202e9a9c18c0f4fe7c42228dc41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1511001584', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1511029800', NULL, NULL, NULL, NULL),
(279, 'Anoop', 'Oa', 'anoopoa95@gmail.com', '9656332281', 'United sports veteran,Ramagiri valley,express highway', NULL, 'Ernakulam', '682030', NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, '1511084484', NULL, NULL, NULL, NULL, '1511084518', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1511116200', NULL, NULL, NULL, NULL),
(280, 'Kumaran', 'Vaiyadurai', 'kumaran1976@yahoo.com', '9176040871', 'Villa No. 60, Kent Palm Villa  Kusumagiri P.O., Athani,', NULL, 'Ernakulam', '682030', NULL, '16a86b8356c6f1a4cd44ae437a2ee795562fb754', NULL, NULL, NULL, '1511533612', NULL, NULL, NULL, NULL, '1511707136', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1511548200', NULL, NULL, NULL, NULL),
(281, 'Suji', 'Titus', 'sujiphilip2@gmail.com', '8078129422', 'Edachira ', NULL, 'Kakkanad', '683030', NULL, '5c7f379b3fac8bd6cdc3f438769772ab54580958', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1511618720', 'default', NULL, '[]', '[]', 'India ', 'Kerala ', NULL, NULL, 'e07fd49b1119b5db26168748db5d1cb155404b26e12dd25ad2e8b6abc9923bb2', '1511634600', NULL, NULL, NULL, NULL),
(282, 'Remo', 'Rodriguez', 'Remorocks007@gmail.com', '9995336621', 'Leons Apartments, Banerji Road, Roshan Lane', NULL, 'Cochin', '682018', NULL, 'dc4b3a17f52b0a39a50f71ddcc31d7ff708868d0', NULL, NULL, NULL, '1511626164', NULL, NULL, NULL, NULL, '1511626345', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1511634600', NULL, NULL, NULL, NULL),
(283, 'asd', 'qwrttrtr', 'shy@r.com', '23434232', 'adddd', NULL, 'dffderf', '234567', NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1511841640', 'default', NULL, '[]', '[]', 'sd', 'efr', NULL, NULL, '42f33640e1f86ec0ddbc8ca2b8655e17a292bd97f6935c5705fcd75cd3531bb3', '1511893800', NULL, NULL, NULL, NULL),
(284, 'joseph', 'solomon', 'josephsolomon.cok@gmail.com', '9995216963', 'Lulu Cyber towers, infopark, kakkanad', NULL, 'kochi', '682030', NULL, 'fa2d0b70dc57b942217aec3198c4060ee89e5f4f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1512026392', 'default', NULL, '[]', '[]', 'India', 'KL', NULL, NULL, 'c37099c0d771118f7c1833604dff299bcea3d2e5d71ee935ba4faece7c0a1354', '1512066600', NULL, NULL, NULL, NULL),
(285, 'joseph', 'solomon', 'josephsolomon.cok@gmail.com', '9995216963', 'Lulu Cyber towers, infopark, kakkanad', NULL, 'kochi', '682030', NULL, 'fa2d0b70dc57b942217aec3198c4060ee89e5f4f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1512026363', 'default', NULL, '[]', '[]', 'India', 'KL', NULL, NULL, 'verified', '1512066600', NULL, NULL, NULL, NULL),
(286, 'Narendar ', 'Ananda bhat', 'naru.bhat23@gmail.com', '9895673591', '5th floor lulu cyber tower, infopark, Kakkanad', NULL, 'Ernakulam', '682030', NULL, '8d993eae2a7c7cbb1f51e8f00595ab86bdaa3fda', NULL, NULL, NULL, '1512098938', NULL, NULL, NULL, NULL, '1512098993', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1512153000', NULL, NULL, NULL, NULL),
(287, 'Mrinalini', 'Bindra', 'manubindra@gmail.com', '9895148703', 'A-5C, Chakolas Habitat, Thevara Ferry Road, Thevara ', NULL, 'Kochi', '682013', NULL, '4241df64286465ef37f68cfcc40d848ea15670af', NULL, NULL, NULL, '1512107440', NULL, NULL, NULL, NULL, '1512107457', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1512153000', NULL, NULL, NULL, NULL),
(288, 'RINO', 'BABU', 'rino004@gmail.com', '9746121346', 'Vidal Health Insurance TPA Pvt LTD, Door no 40/3232, 2nd floor,SL Plaza, Palarivatom', NULL, 'Cochin', '682025', NULL, '813015f2d79184c541ff450c5c9c3c0ecba115b3', NULL, NULL, NULL, '1512115341', NULL, NULL, NULL, NULL, '1512127374', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1512153000', NULL, NULL, NULL, NULL),
(289, 'Jillin ', 'Shaji', 'jillin.s777@gmail.com', '9072342516', 'Valorem Private Limited, 33/2361,Jacobs Tower,Near Popular Hyundai', NULL, 'Kochi', '682019', NULL, '7c775024e4b20d1cfb0335ac11562c3f067bc9e2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1512118564', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'ffada2fdbaf880a08f642808d1ab7700aa12549dab361cd0bc813c413b1f94ed', '1512153000', NULL, NULL, NULL, NULL),
(290, 'Jillin ', 'Shaji', 'jillin.s777@gmail.com', '9072342516', 'Valorem Private Limited, 33/2361,Jacobs Tower,Near Popular Hyundai', NULL, 'Kochi', '682019', NULL, '7c775024e4b20d1cfb0335ac11562c3f067bc9e2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1512118603', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'eba539643f64bf9cd5e0df496ec7d39b3c4c2f25ac457bb9b0f43002a308bdd8', '1512153000', NULL, NULL, NULL, NULL),
(291, 'Kevin', 'Stanly', 'kevinkolarikkal@gmail.com', '91 9846971133', 'Mindcurv TSPL, Transasia Corporate Park, VI Floor, Xiv/396C, Kakkanad', NULL, 'Kochi', '682037', NULL, 'b47a236d8b3a90965613631fcc6863006b5b89df', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1512367126', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1512412200', NULL, NULL, NULL, NULL),
(293, 'Manju', 'Mathew', 'anna.manju99@gmail.com', '9747037771', 'Mather Villas, Villa 24, Maradu', NULL, 'Kochi', '682304', NULL, '1d7a6942ac73b9db9ea87a0eb7b2b194595a75ba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1512369222', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'verified', '1512412200', NULL, NULL, NULL, NULL),
(292, 'Kevin', 'Stanly', 'kevinkolarikkal@gmail.com', '91 9846971133', 'Mindcurv TSPL, Transasia Corporate Park, VI Floor, Xiv/396C, Kakkanad', NULL, 'Kochi', '682037', NULL, 'afc02873659e146782a8937dc0d56a8516bd892b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1512367265', 'default', NULL, '[]', '[]', 'India', 'Kerala', NULL, NULL, 'caca6d6418f64cfbafb8b34f3ff95c83fe7c8788cc807da472d6c27ce75a5b34', '1512412200', NULL, NULL, NULL, NULL),
(294, 'deepthy', 'gupta', 'deepthygupta@gmail.com', '9539239124', 'qpro innovations calicut', NULL, 'calicut', '678003', NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, '1512620900', NULL, NULL, NULL, NULL, '1512621044', 'default', NULL, '[]', '[]', 'India', 'kerala', NULL, NULL, '5df0281dbc33059b025d40758c691f1585b3940a3ee1964abeea711ec52be363', '1512671400', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `address1` longtext,
  `address2` longtext,
  `status` varchar(10) DEFAULT NULL,
  `membership` varchar(50) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `approve_timestamp` int(20) DEFAULT NULL,
  `member_timestamp` int(20) DEFAULT NULL,
  `member_expire_timestamp` int(11) DEFAULT NULL,
  `details` longtext,
  `last_login` int(20) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `google_plus` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pinterest` varchar(300) DEFAULT NULL,
  `stripe_details` varchar(500) DEFAULT NULL,
  `paypal_email` varchar(200) DEFAULT NULL,
  `preferred_payment` varchar(100) DEFAULT NULL,
  `cash_set` varchar(20) DEFAULT NULL,
  `stripe_set` varchar(20) DEFAULT NULL,
  `paypal_set` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `keywords` longtext,
  `description` longtext,
  `lat_lang` varchar(300) NOT NULL DEFAULT '(0,0)',
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `c2_set` varchar(20) DEFAULT NULL,
  `c2_user` longtext,
  `c2_secret` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_invoice`
--

CREATE TABLE `vendor_invoice` (
  `vendor_invoice_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `payment_details` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `viewer_id` int(11) NOT NULL,
  `ip_address` longtext NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `available_pin`
--
ALTER TABLE `available_pin`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`business_settings_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`contact_message_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `currency_settings`
--
ALTER TABLE `currency_settings`
  ADD PRIMARY KEY (`currency_settings_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`language_list_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membership_id`);

--
-- Indexes for table `membership_payment`
--
ALTER TABLE `membership_payment`
  ADD PRIMARY KEY (`membership_payment_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`pincode_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_view`
--
ALTER TABLE `product_view`
  ADD PRIMARY KEY (`product_view_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `slider_style`
--
ALTER TABLE `slider_style`
  ADD PRIMARY KEY (`slider_style_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slides_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`social_links_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`ticket_message_id`);

--
-- Indexes for table `ui_settings`
--
ALTER TABLE `ui_settings`
  ADD PRIMARY KEY (`ui_settings_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
  ADD PRIMARY KEY (`vendor_invoice_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`viewer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `available_pin`
--
ALTER TABLE `available_pin`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `business_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `contact_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `currency_settings`
--
ALTER TABLE `currency_settings`
  MODIFY `currency_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1151;

--
-- AUTO_INCREMENT for table `language_list`
--
ALTER TABLE `language_list`
  MODIFY `language_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `membership_payment`
--
ALTER TABLE `membership_payment`
  MODIFY `membership_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `pincode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_view`
--
ALTER TABLE `product_view`
  MODIFY `product_view_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=626;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider_style`
--
ALTER TABLE `slider_style`
  MODIFY `slider_style_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slides_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `social_links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ui_settings`
--
ALTER TABLE `ui_settings`
  MODIFY `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
  MODIFY `vendor_invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `viewer_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;