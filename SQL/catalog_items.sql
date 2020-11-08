DROP TABLE IF EXISTS `catalog_items`;
CREATE TABLE `catalog_items` (
  `id` int(16) NOT NULL,
  `item_ids` varchar(666) NOT NULL,
  `page_id` int(11) NOT NULL,
  `furniline` varchar(255) NOT NULL,
  `catalog_name` varchar(100) NOT NULL,
  `cost_credits` int(11) NOT NULL DEFAULT 3,
  `cost_points` int(11) NOT NULL DEFAULT 0,
  `points_type` int(3) NOT NULL DEFAULT 0 COMMENT '0 for duckets; 5 for diamonds; and any seasonal/GOTW currencies you have in your emu_settings table.',
  `amount` int(11) NOT NULL DEFAULT 1,
  `limited_stack` int(11) NOT NULL DEFAULT 0 COMMENT 'Change this number to make the item limited.',
  `limited_sells` int(11) NOT NULL DEFAULT 0 COMMENT 'This automatically logs from the emu; do not change it.',
  `order_number` int(11) NOT NULL DEFAULT 1,
  `offer_id` int(11) NOT NULL DEFAULT -1,
  `song_id` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `extradata` varchar(500) NOT NULL DEFAULT '',
  `have_offer` enum('0','1') NOT NULL DEFAULT '1',
  `club_only` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

ALTER TABLE `catalog_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `page_id` (`page_id`) USING BTREE,
  ADD KEY `catalog_name` (`catalog_name`) USING BTREE,
  ADD KEY `costs` (`cost_credits`,`cost_points`,`points_type`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

ALTER TABLE `catalog_items`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
COMMIT;