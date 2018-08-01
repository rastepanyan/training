CREATE TABLE IF NOT EXISTS `orderlines` (
	`orderlines_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`order_id` INT UNSIGNED NOT NULL,
	`item_price` DECIMAL(10,2) NOT NULL DEFAULT '99999999.99',
	`product_id` INT UNSIGNED NOT NULL,
	`quantity` INT UNSIGNED NOT NULL,
	`position` INT UNSIGNED NOT NULL,
	PRIMARY KEY (`orderlines_id`),
	CONSTRAINT `FK_orderorderlines` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
	CONSTRAINT `FK_productorderlines` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`))
	ENGINE = InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
													
INSERT INTO `orderlines` (`order_id`, `item_price`, `product_id`, `quantity`, `position`)
VALUES				 (1, 12.89, 4, 3, 1),
					 (1, 89.90, 3, 2, 2),
					 (1, 42.75, 2, 2, 3),																
					 (2, 119.99, 1, 4, 1),
					 (2, 129.29, 8, 1, 2),																
					 (3, 29.50, 10, 3, 1),																						
					 (4, 129.29, 8, 2, 1),
					 (4, 12.89, 4, 1, 2),																						
					 (5, 15.49, 9, 2, 1),
					 (5, 68.89, 6, 3, 2),																						
					 (6, 99.99, 5, 2, 1),																						
					 (7, 42.75, 2, 3, 1),																						
					 (8, 129.29, 8, 1, 1),
					 (8, 29.50, 10, 1, 2),
					 (8, 15.49, 9, 1, 3),																						
					 (9, 89.90, 3, 5, 1),																						
					 (10, 119.99, 1, 2, 1),																
					 (10, 15.49, 9, 3, 2),																						
					 (11, 99.99, 5, 3, 1),																						
					 (12, 68.89, 6, 2, 1),																						
					 (13, 68.89, 6, 3, 1),																						
					 (14, 99.99, 5, 3, 1),																					
					 (15, 42.75, 2, 1, 1),
					 (15, 119.99, 1, 1, 2),																						
					 (16, 15.49, 9, 2, 1);

SELECT * FROM orderlines;