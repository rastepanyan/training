CREATE TABLE IF NOT EXISTS `orders` (
	`order_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`order_date` DATETIME NOT NULL,
	`user_id` INT UNSIGNED NOT NULL,
	`amount` DECIMAL(10,2) NOT NULL DEFAULT '99999999.99',
	PRIMARY KEY(`order_id`),
	CONSTRAINT `FK_userorder` FOREIGN KEY (`user_id`) REFERENCES users (`user_id`))
	ENGINE = InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
	
INSERT INTO `orders` (`order_date`, `user_id`, `amount`)
VALUES				 ('2018-02-19 10:21:34', 1, 303.97),
					 ('2018-02-28 12:42:13', 2, 609.25),
					 ('2018-03-10 13:57:20', 3, 88.50),
					 ('2018-04-20 14:44:30', 5, 271.47),
					 ('2018-04-30 17:47:40', 7, 237.65),
					 ('2018-05-01 18:00:12', 8, 199.98),																		
					 ('2018-05-06 08:12:43', 9, 128.25),																		
					 ('2018-06-01 13:55:21', 11, 174.28),
					 ('2018-06-24 13:53:01', 16, 449.50),																	
					 ('2018-06-28 08:23:10', 8, 286.45),				
					 ('2018-06-29 14:32:30', 12, 299.97),																	
					 ('2018-07-04 16:14:23', 9, 137.78),																		
					 ('2018-07-08 06:23:32', 5, 206.67),																		
					 ('2018-07-26 21:23:31', 9, 299.97),																		
					 ('2018-08-01 08:17:42', 13, 162.74),
					 ('2018-08-01 08:24:39', 5, 30.98);

CREATE INDEX idx_orders ON orders (user_id);
SELECT * FROM orders;