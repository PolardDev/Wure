DROP TABLE IF EXISTS `catalog_pages`;
CREATE TABLE `catalog_pages` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT -1,
  `caption_save` varchar(25) NOT NULL DEFAULT '',
  `caption` varchar(128) NOT NULL,
  `page_layout` enum('default_3x3','club_buy','club_gift','frontpage','spaces','recycler','recycler_info','recycler_prizes','trophies','plasto','marketplace','marketplace_own_items','spaces_new','soundmachine','guilds','guild_furni','info_duckets','info_rentables','info_pets','roomads','single_bundle','sold_ltd_items','badge_display','bots','pets','pets2','pets3','productpage1','room_bundle','recent_purchases','default_3x3_color_grouping','guild_forum','vip_buy','info_loyalty','loyalty_vip_buy','collectibles','petcustomization','frontpage_featured') NOT NULL DEFAULT 'default_3x3',
  `icon_color` int(5) NOT NULL DEFAULT 1,
  `icon_image` int(5) NOT NULL DEFAULT 1,
  `min_rank` int(5) NOT NULL DEFAULT 1,
  `order_num` int(5) NOT NULL DEFAULT 1,
  `visible` enum('0','1') NOT NULL DEFAULT '1',
  `enabled` enum('0','1') NOT NULL DEFAULT '1',
  `club_only` enum('0','1') NOT NULL DEFAULT '0',
  `vip_only` enum('1','0') NOT NULL DEFAULT '0',
  `page_headline` varchar(1024) NOT NULL DEFAULT '',
  `page_teaser` varchar(64) NOT NULL DEFAULT '',
  `page_special` varchar(2048) DEFAULT '' COMMENT 'Gold Bubble: catalog_special_txtbg1 // Speech Bubble: catalog_special_txtbg2 // Place normal text in page_text_teaser',
  `page_text1` text DEFAULT NULL,
  `page_text2` text DEFAULT NULL,
  `page_text_details` text DEFAULT NULL,
  `page_text_teaser` text DEFAULT NULL,
  `room_id` int(5) DEFAULT 0,
  `includes` varchar(128) NOT NULL DEFAULT '' COMMENT 'Example usage: 1;2;3\r\n This will include page 1, 2 and 3 in the current page.\r\n Note that permissions are only used for the current entry.'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

ALTER TABLE `catalog_pages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

ALTER TABLE `catalog_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;