CREATE TABLE IF NOT EXISTS `products` (
	`product_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(30)  NOT NULL DEFAULT '',
	`price` DECIMAL(10,2)  NOT NULL DEFAULT '99999999.99',
	`description` MEDIUMTEXT NOT NULL,
	`date_of_creation` DATETIME NOT NULL,
	PRIMARY KEY (`product_id`))
	ENGINE = InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
				 
INSERT INTO `products` (`title`, `price`, `description`, `date_of_creation`)
VALUES	('Shoes', 119.99, 'An item of footwear intended to protect and comfort the human foot.', NOW() - INTERVAL 1 DAY),
		('Blouse', 42.75, 'A loose-fitting upper garment that was formerly worn by women and children.', NOW() - INTERVAL 3 MONTH),
		('Trouser', 89.90, 'An item of clothing worn from the waist to the ankles, covering both legs separately.', NOW() - INTERVAL 5 HOUR),
		('Hat', 12.89, 'A head covering item which is worn for various reasons.', NOW() - INTERVAL 3 DAY),
		('Boots', 99.99, 'Mainly cover the foot and the ankle, while some also cover some part of the lower calf.', NOW() - INTERVAL 10 MINUTE),
		('Jacket', 68.89, 'Waist or hip-length garments worn over other clothes, typically for warmth or weather protection.', NOW()),
		('Suit', 1399.95, 'A set of garments made from the same cloth, usually consisting of at least a jacket and trousers.', NOW() - INTERVAL 1 DAY),
		('Dress', 129.29, 'A garment consisting of a skirt with an attached bodice.', NOW() - INTERVAL 2 HOUR),
		('Necklet', 15.49, 'A type of decoration which is designed to be worn and displayed around a persons neck.', NOW() - INTERVAL 1 MONTH),
		('Belt', 29.50, 'A flexible band or strap, typically made of leather or heavy cloth and worn around the waist.', NOW());
		 

SELECT * FROM products;