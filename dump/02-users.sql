CREATE TABLE IF NOT EXISTS `users` (
	`user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`first_name` VARCHAR(20)  NOT NULL DEFAULT '',
	`last_name` VARCHAR(30)  NOT NULL DEFAULT '',
	`address` VARCHAR(255)  NOT NULL DEFAULT '',
	`post_code` VARCHAR(8)  NOT NULL DEFAULT '',
	`city` VARCHAR(20)  NOT NULL DEFAULT '',
	`country_code` CHAR(2) NOT NULL DEFAULT '',
	PRIMARY KEY (`user_id`))
	ENGINE = InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
				 
INSERT INTO `users` (`first_name`, `last_name`, `address`, `post_code`, `city`, `country_code`)
VALUES	('Rafi', 'Stepanyan', '22 Tzarevetz Str', '4001', 'Plovdiv', 'BG'),
		('Richard', 'Weber', '818 Fishponds Rd', 'BS16 3TE', 'Bristol', 'UK'),
		('Chelsey', 'Patherson', '330 Brooklyn Ave', '02215', 'Boston', 'US'),
		('Daniel', 'Roach', '6 Hatherley Rd', 'GL51 6DZ', 'Cheltenham', 'UK'),
		('Milica', 'Grueva', '4 Stipska Str', '1220', 'Tetovo', 'MK'),
		('Adam', 'Smith', '1957 W Ohio Str', '60622', 'Chicago', 'US'),
		('Nikolay', 'Prodanov', '7 Mali Bogdan Str', '4000', 'Plovdiv', 'BG'),
		('Jasmina', 'Traikovska', '13 Petar Pop Arsov Rd', '1000', 'Skopje', 'MK'),
		('Vesela', 'Doncheva', '5 Lavele Str', '1000', 'Sofia', 'BG'),
		('Trevor', 'Bull', '11 Stanbury Avenue', 'BS16 5AL', 'Bristol', 'UK'),
		('Yane', 'Pelovski', '23 Dejan Vojvoda Str', '6000', 'Ohrid', 'MK'),
		('Jessica', 'Connor', '57 La Brea Ave', '90036', 'Los Angeles', 'US'),
		('Simon', 'Jackson', '9 Weymouth Str', 'W1W 6DB', 'London', 'UK'),
		('Anelia', 'Kirilova', '1 Saborna Str', '9000', 'Varna', 'BG'),
		('Charlotte', 'Webster', '85 Hamilton Terrace', 'NW8 9RH', 'London', 'UK'),
		('Mihail', 'Nedkov', '128 Maria Luiza Blvd', '1233', 'Sofia', 'BG');
				 
SELECT * FROM users;