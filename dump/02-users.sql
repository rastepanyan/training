CREATE TABLE IF NOT EXISTS `users` (
	`user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`first_name` VARCHAR(20)  NOT NULL DEFAULT '',
	`last_name` VARCHAR(30)  NOT NULL DEFAULT '',
	`address` VARCHAR(255)  NOT NULL DEFAULT '',
	`country_code` varchar(2) NOT NULL DEFAULT '',
	PRIMARY KEY (`user_id`))
	ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_swedish_ci;
				 
INSERT INTO `users` (`first_name`, `last_name`, `address`, `country_code`)
VALUES	('Rafi', 'Stepanyan', '22 Tzarevetz Str, Plovdiv', 'BG'),
		('Richard', 'Weber', '818 Fishponds Rd, Bristol', 'UK'),
		('Chelsey', 'Patherson', '33 Brooklyn Ave, Boston', 'US'),
		('Daniel', 'Roach', '6 Hatherley Rd, Cheltenham', 'UK'),
		('Milica', 'Grueva', '4 Stipska Str, Tetovo', 'MK'),
		('Adam', 'Smith', '1957 W Ohio Str, Chicago', 'US'),
		('Nikolay', 'Prodanov', '7 Mali Bogdan Str, Plovdiv', 'BG'),
		('Jasmina', 'Traikovska', '13 Petar Pop Arsov Rd, Skopje', 'MK'),
		('Vesela', 'Doncheva', '5 Lavele Str, Sofia', 'BG'),
		('Trevor', 'Bull', '11 Stanbury Avenue, Bristol', 'UK'),
		('Yane', 'Pelovski', '23 Dejan Vojvoda Str, Ohrid', 'MK'),
		('Jessica', 'Connor', '57 La Brea Ave, Los Angeles', 'US'),
		('Simon', 'Jackson', '9 Weymouth Str, London', 'UK'),
		('Anelia', 'Kirilova', '1 Saborna Str, Varna', 'BG'),
		('Charlotte', 'Webster', '8a Hamilton Terrace, London', 'UK'),
		('Mihail', 'Nedkov', '128 Maria Luiza Blvd, Sofia', 'BG');
				 
SELECT * FROM users;