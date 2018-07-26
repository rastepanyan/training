CREATE TABLE IF NOT EXISTS `orderlines` (
	`orderlines_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`order_id` INT UNSIGNED NOT NULL,
	`price_each` DECIMAL(7,2) NOT NULL DEFAULT '99999.99',
	`product_id` INT UNSIGNED NOT NULL,
	`quantity` INT UNSIGNED NOT NULL,
	PRIMARY KEY (`orderlines_id`),
	CONSTRAINT `FK_orderorderlines` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
	CONSTRAINT `FK_productorderlines` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`))
	ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_swedish_ci;
													
INSERT INTO `orderlines` (`order_id`, `price_each`, `product_id`, `quantity`)
VALUES				 (1, 12.89, 4, 3),
					 (2, 89.90, 3, 2),
					 (3, 42.75, 2, 2),
					 (4, 119.99, 1, 4),
					 (5, 129.29, 7, 1),
					 (6, 29.50, 10, 3),
					 (7, 129.29, 8, 2),
					 (8, 12.89, 4, 1),
					 (9, 15.49, 9, 2),
					 (10, 68.89, 6, 3),
					 (11, 99.99, 5, 2),
					 (12, 42.75, 2, 3),
					 (13, 129.29, 8, 1),
					 (14, 29.50, 10, 1),
					 (15, 15.49, 9, 1),
					 (16, 89.90, 3, 5),
					 (17, 119.99, 1, 2),
					 (18, 15.49, 9, 3),
					 (19, 99.99, 5, 3),
					 (20, 68.89, 6, 2),
					 (21, 68.89, 7, 3),
					 (22, 99.99, 5, 3),
					 (23, 42.75, 2, 1),
					 (24, 119.99, 1, 1),
					 (25, 15.49, 9, 2);

SELECT * FROM orderlines;