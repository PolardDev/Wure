DROP TABLE IF EXISTS `items_base`;
CREATE TABLE `items_base` (
  `id` int(11) UNSIGNED NOT NULL,
  `sprite_id` int(11) NOT NULL DEFAULT 0,
  `furniline` varchar(255) NOT NULL,
  `public_name` varchar(56) NOT NULL DEFAULT '',
  `item_name` varchar(70) NOT NULL,
  `type` varchar(3) NOT NULL DEFAULT 's',
  `width` int(11) NOT NULL DEFAULT 1,
  `length` int(11) NOT NULL DEFAULT 1,
  `stack_height` double(4,2) NOT NULL DEFAULT 0.00,
  `allow_stack` tinyint(1) NOT NULL DEFAULT 1,
  `allow_sit` tinyint(1) NOT NULL DEFAULT 0,
  `allow_lay` tinyint(1) NOT NULL DEFAULT 0,
  `allow_walk` tinyint(1) NOT NULL DEFAULT 0,
  `allow_gift` tinyint(1) NOT NULL DEFAULT 1,
  `allow_trade` tinyint(1) NOT NULL DEFAULT 1,
  `allow_recycle` tinyint(1) NOT NULL DEFAULT 0,
  `allow_marketplace_sell` tinyint(1) NOT NULL DEFAULT 0,
  `allow_inventory_stack` tinyint(1) NOT NULL DEFAULT 1,
  `interaction_type` varchar(500) NOT NULL DEFAULT 'default',
  `interaction_modes_count` int(13) NOT NULL DEFAULT 1,
  `vending_ids` varchar(255) NOT NULL DEFAULT '0',
  `multiheight` varchar(50) NOT NULL DEFAULT '0',
  `customparams` varchar(256) NOT NULL DEFAULT '',
  `effect_id_male` int(3) NOT NULL DEFAULT 0,
  `effect_id_female` int(3) NOT NULL DEFAULT 0,
  `clothing_on_walk` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

ALTER TABLE `items_base`
  ADD PRIMARY KEY (`id`) USING BTREE;

ALTER TABLE `items_base`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;