DROP TABLE IF EXISTS `catalog_club_offers`;
CREATE TABLE `catalog_club_offers` (
  `id` int(11) NOT NULL,
  `enabled` enum('0','1') NOT NULL DEFAULT '1',
  `name` varchar(35) NOT NULL,
  `days` int(7) NOT NULL,
  `credits` int(5) NOT NULL DEFAULT 10,
  `points` int(5) NOT NULL DEFAULT 0,
  `points_type` int(3) NOT NULL DEFAULT 0,
  `type` enum('HC','VIP') NOT NULL DEFAULT 'HC',
  `deal` enum('0','1') NOT NULL DEFAULT '0',
  `giftable` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO `catalog_club_offers` (`id`, `enabled`, `name`, `days`, `credits`, `points`, `points_type`, `type`, `deal`, `giftable`) VALUES
(1, '1', 'HABBO_CLUB_1_MONTH', 31, 50, 50, 5, 'VIP', '0', '0'),
(2, '1', 'HABBO_CLUB_3_MONTHS', 93, 120, 120, 5, 'VIP', '0', '0');

ALTER TABLE `catalog_club_offers`
  ADD PRIMARY KEY (`id`) USING BTREE;
COMMIT;