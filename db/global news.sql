CREATE TABLE `data` (
  `article_id` int PRIMARY KEY,
  `source_id` varchar(255),
  `source_name` varchar(255),
  `author` varchar(255),
  `title` varchar(255),
  `description` varchar(255),
  `url` varchar(255),
  `url_to_image` image,
  `published_at` timestamp,
  `category` varchar(255),
  `article` text,
  `title_sentiment` varchar(255)
);

CREATE TABLE `domains_location` (
  `SourceCommonName` varchar(255) PRIMARY KEY,
  `location` varchar(255),
  `Country` varchar(255)
);

CREATE TABLE `traffic_data` (
  `GlobalRank` int PRIMARY KEY,
  `TldRank` int,
  `Domain` varchar(255),
  `TLD` varchar(255),
  `RefSubNets` int,
  `RefIPs` int,
  `IDN_Domain` object,
  `IDN_TLD` object,
  `PrevGlobalRank` int,
  `PrevTldRank` int,
  `PrevRefSubNets` int,
  `PrevRefIPs` int
);
