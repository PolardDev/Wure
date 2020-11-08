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

INSERT INTO `catalog_pages` (`id`, `parent_id`, `caption_save`, `caption`, `page_layout`, `icon_color`, `icon_image`, `min_rank`, `order_num`, `visible`, `enabled`, `club_only`, `vip_only`, `page_headline`, `page_teaser`, `page_special`, `page_text1`, `page_text2`, `page_text_details`, `page_text_teaser`, `room_id`, `includes`) VALUES
(1, -1, 'frontpage', 'Front Page', 'frontpage', 1, 1, 1, 1, '1', '1', '0', '0', '', '', '', NULL, NULL, NULL, NULL, 0, ''),
(2, -1, 'furni', 'Furni', 'default_3x3', 1, 1, 1, 2, '1', '1', '0', '0', '', '', '', NULL, NULL, NULL, NULL, 0, ''),
(3, -1, 'clothing', 'Clothing', 'default_3x3', 1, 1, 1, 3, '1', '1', '0', '0', '', '', '', NULL, NULL, NULL, NULL, 0, ''),
(4, -1, 'pet', 'Pets', 'default_3x3', 1, 1, 1, 4, '1', '1', '0', '0', '', '', '', NULL, NULL, NULL, NULL, 0, ''),
(5, -1, 'memebrship', 'Memberships', 'default_3x3', 1, 1, 1, 5, '1', '1', '0', '0', '', '', '', NULL, NULL, NULL, NULL, 0, ''),
(6, -1, 'admin', 'Admin', 'default_3x3', 1, 1, 5, 6, '1', '1', '0', '0', '', '', '', NULL, NULL, NULL, NULL, 0, ''),
(7, 2, 'credit_furni', 'Credit Furni', 'default_3x3', 1, 146, 1, 1, '1', '1', '0', '0', 'catalog_bank_headline1', 'catalog_bank_teaser', '', 'Habbo Exchange is where you can convert your Credits into a tradable currency. You can then use this currency to trade for Furni or just show off your riches in your room.', NULL, NULL, NULL, 0, ''),
(8, 2, 'hots', 'Hot Now', 'default_3x3', 1, 195, 1, 3, '1', '0', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(9, 2, 'rares', 'Rares', 'default_3x3', 1, 42, 1, 4, '1', '0', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(10, 2, 'room_bundles', 'Room Bundles', 'default_3x3', 1, 268, 1, 5, '1', '0', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(11, 2, 'room_event', 'Room Event', 'roomads', 1, 55, 1, 6, '1', '1', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(12, 2, 'by_type', 'By Type', 'default_3x3', 1, 72, 1, 7, '1', '0', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(13, 2, 'by_design', 'By Design', 'default_3x3', 1, 273, 1, 8, '1', '0', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(14, 2, 'by_environment', 'By Environment', 'default_3x3', 1, 220, 1, 9, '1', '0', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(15, 2, 'hc_club', 'HC Exclusives', 'default_3x3', 1, 172, 1, 10, '1', '0', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(16, 2, 'marketplace', 'Marketplace', 'pets2', 1, 69, 1, 12, '1', '1', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(17, 6, 'admin_frontpage', 'Front Page', 'pets2', 1, 213, 5, 1, '1', '1', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(18, 6, 'admin_by_line', 'By Line', 'default_3x3', 1, 99, 5, 2, '1', '0', '0', '0', '', '', '', '', NULL, NULL, NULL, 0, ''),
(19, 18, 'admin_credit_furni', 'Credit Furni', 'default_3x3', 1, 146, 1, 1, '1', '1', '0', '0', 'catalog_bank_headline1', 'catalog_bank_teaser', '', 'Habbo Exchange is where you can convert your Credits into a tradable currency. You can then use this currency to trade for Furni or just show off your riches in your room.', NULL, NULL, NULL, 0, ''),
(20, 13, 'anna', 'Anna', 'default_3x3', 1, 104, 1, 1, '1', '1', '0', '0', 'catalog_anna_header', 'catalog_anna_teaser', '', 'Click an item for details.', NULL, NULL, NULL, 0, ''),
(21, 13, 'base', 'Base', 'default_3x3', 1, 179, 1, 2, '1', '1', '0', '0', 'catalog_header_base', 'base_rentable_teaser', '', 'This colorful range of furni has everything you need to style out your room and build great spaces.', NULL, NULL, NULL, 0, ''),
(22, 13, 'bathroom', 'Bathroom', 'default_3x3', 1, 17, 1, 3, '1', '1', '0', '0', 'catalog_bath_headline1', 'catalog_bath_teaser1', '', 'Give yourself and your guests somewhere to freshen up - vital if you want to avoid nasty smells. Might be an ideia to put your loo in a corner though.', NULL, NULL, NULL, 0, ''),
(23, 13, 'country', 'Country', 'default_3x3', 1, 21, 1, 4, '1', '1', '0', '0', 'country_header1_en_001', 'picnic_teaser_thumb', '', '\"Moving to the country, gonna eat a lot of peaches\"... The great outdoors is calling with the Country Furni range!', NULL, 'Click on an item for details.', '', 0, ''),
(24, 13, 'cubie', 'Cubie', 'default_3x3', 1, 100, 1, 5, '1', '1', '0', '0', 'catalog_cubie_header_en', 'catalog_cubie_teaser', '', 'It\'s sleek, it\'s modern, it\'s so darn cool it can barely stand itself... Introducing the Cubie Furni range! Give your Bachelor or Bachelorette pad a homely feel with a sophisticated twist.', NULL, '', NULL, 0, ''),
(25, 13, 'garden', 'Gardening', 'default_3x3', 1, 157, 1, 6, '1', '1', '0', '0', 'garden_catalog_header', 'garden_catalog_teaser', '', 'Make your own Garden.', NULL, '', NULL, 0, ''),
(26, 13, 'university', 'Habbo University', 'default_3x3', 1, 230, 1, 7, '1', '1', '0', '0', 'university_new_furni_catalog_header', 'university_catalog_teaser', '', 'From pink and flowery, to hipster chic - Every Habbo has a style.', NULL, '', NULL, 0, ''),
(27, 13, 'spa', 'Health Spa', 'default_3x3', 1, 211, 1, 8, '1', '1', '0', '0', 'catalog_header_spa', 'catalog_teaser_spa', '', 'Inhale...Exhale...Inhale...Exhale. With all the features of a premium Spa, you can now create your very own Habbo Health Spa relaxing retreat!', NULL, '', NULL, 0, ''),
(28, 13, 'iced', 'Iced', 'default_3x3', 1, 72, 1, 9, '1', '1', '0', '0', 'catalog_iced_headline1_nl', 'catalog_iced_teaser1', '', 'Cool and comfortable, this is the Furni for that rare Habbo that says \"I just need to relax for a bit\", perfect to sink into waste the afternoon away.', NULL, '', NULL, 0, ''),
(29, 13, 'kitchen', 'Kitchen', 'default_3x3', 1, 217, 1, 10, '1', '1', '0', '0', 'catalog_header_kitchen2015', 'teaser_kitchen2015', '', 'Fancy owning a Habbo restaurant? Or just love catering for Habbos in style? With this furni line you can REALLY get cooking!', NULL, '', NULL, 0, ''),
(30, 13, 'lodge', 'Lodge', 'default_3x3', 1, 37, 1, 11, '1', '1', '0', '0', 'catalog_lodge_headline1_uk', 'catalog_lodge_teaser1', '', 'For that ski-lodge effect! The Lodge Collection is for Habbos who have a no-frills attitude to home furnishing and those who appreciate the beauty of wood.', NULL, 'Click on an item for details.', NULL, 0, ''),
(31, 13, 'mode', 'Mode', 'default_3x3', 1, 39, 1, 12, '1', '1', '0', '0', 'catalog_mode_headline1', 'catalog_mode_teaser1', '', 'Steely functionality combined with sleek designer upholstery. The Habbo who chooses this furniture is a cool urban cat - streetwise, sassy and so slightly untouchable.', NULL, '', NULL, 0, ''),
(32, 13, 'neon', 'Neon', 'default_3x3', 1, 41, 1, 13, '1', '1', '0', '0', 'catalog_neon_header1_en', 'catalog_neon_teaser1_en', '', 'Party animals rejoice! Feel the base and reach for the lasers with the Neon Furni range - everything you need to get the party started!', NULL, '', NULL, 0, ''),
(33, 13, 'pool', 'Pool', 'default_3x3', 1, 57, 1, 14, '1', '1', '0', '0', 'catalog_shells_header', 'summer_teaser', '', 'Habbo\'s own Swimmingpool!', NULL, '', NULL, 0, ''),
(34, 13, 'pura', 'Pura', 'default_3x3', 1, 48, 1, 15, '1', '1', '0', '0', 'catalog_pura_headline1_uk', 'catalog_pura_teaser1', '', 'This collection breathes fresh, clean air and cool tranquillity. Use it to create a haven away from the hullabaloo of the public spaces or your life outsite the hotel.', NULL, 'Click on an item for details.', NULL, 0, ''),
(35, 13, 'usva', 'USVA', 'default_3x3', 1, 129, 1, 16, '1', '1', '0', '0', 'catalog_usva_2', 'catalog_usva_picture', '', 'With a great range of colors and new stacking possibilities, you\'ll love building and creating structures with the new USVA Furni line!', NULL, 'Click on an item for details.', NULL, 0, '');