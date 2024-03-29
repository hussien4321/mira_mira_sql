CREATE TABLE `outfit_save` (
  `save_id` int(11) NOT NULL AUTO_INCREMENT,
  `save_outfit_id` int(11) NOT NULL,
  `save_user_id` varchar(50) NOT NULL,
  `save_lookbook_id` int(11) NOT NULL,
  `save_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`save_id`),
  UNIQUE KEY `save_outfit_user_combo1` (`save_outfit_id`,`save_user_id`),
  KEY `save_outfit_id` (`save_outfit_id`),
  KEY `save_user_id` (`save_user_id`),
  KEY `save_lookbook_id` (`save_lookbook_id`),
  CONSTRAINT `save_imfk_1` FOREIGN KEY (`save_outfit_id`) REFERENCES `outfit` (`outfit_id`) ON DELETE CASCADE,
  CONSTRAINT `save_imfk_2` FOREIGN KEY (`save_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `save_imfk_3` FOREIGN KEY (`save_lookbook_id`) REFERENCES `lookbook` (`lookbook_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;