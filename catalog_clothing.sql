DROP TABLE IF EXISTS `catalog_items`;
CREATE TABLE `catalog_clothing` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `setid` varchar(75) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

ALTER TABLE `catalog_clothing`
  ADD PRIMARY KEY (`id`) USING BTREE;

ALTER TABLE `catalog_clothing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;