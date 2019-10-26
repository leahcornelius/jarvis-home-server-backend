CREATE TABLE `users` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`email` VARCHAR(255) NOT NULL,
	`password` VARCHAR(255) NOT NULL,
	`devices` FLOAT,
	`created_at` DATETIME,
	`last_login` TIMESTAMP NOT NULL,
	`failed_login_attempts` INT NOT NULL,
	`email_code` INT NOT NULL,
	`phone_number` INT,
	`phone_code` INT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `devices` (
	`device_id` INT NOT NULL,
	`user_id` INT NOT NULL,
	`name` TEXT NOT NULL,
	`version_hard` FLOAT NOT NULL,
	`version_soft` FLOAT NOT NULL,
	`last_ping` INT NOT NULL,
	PRIMARY KEY (`device_id`)
);

CREATE TABLE `config` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`device_id` INT NOT NULL UNIQUE,
	`location` VARCHAR(255) NOT NULL,
	`key` VARCHAR(255) NOT NULL UNIQUE,
	`weather_refresh_rate` INT NOT NULL,
	`time_format` INT NOT NULL DEFAULT '12',
	`timezone` INT NOT NULL DEFAULT '0',
	`country_code` VARCHAR(255) NOT NULL DEFAULT 'UK',
	`postcode` VARCHAR(255) NOT NULL,
	`photo_change_interval` INT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `devices` ADD CONSTRAINT `devices_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `config` ADD CONSTRAINT `config_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `config` ADD CONSTRAINT `config_fk1` FOREIGN KEY (`device_id`) REFERENCES `devices`(`device_id`);


CREATE TABLE `devices` (
	`device_id` INT NOT NULL,
	`user_id` INT NOT NULL,
	`name` TEXT NOT NULL,
	`version_hard` FLOAT NOT NULL,
	`version_soft` FLOAT NOT NULL,
	`last_ping` INT NOT NULL,
	PRIMARY KEY (`device_id`)
);

CREATE TABLE `config` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`device_id` INT NOT NULL UNIQUE,
	`location` VARCHAR(255) NOT NULL,
	`key` VARCHAR(255) NOT NULL UNIQUE,
	`weather_refresh_rate` INT NOT NULL,
	`time_format` INT NOT NULL DEFAULT '12',
	`timezone` INT NOT NULL DEFAULT '0',
	`country_code` VARCHAR(255) NOT NULL DEFAULT 'UK',
	`postcode` VARCHAR(255) NOT NULL,
	`photo_change_interval` INT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `devices` ADD CONSTRAINT `devices_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `config` ADD CONSTRAINT `config_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `config` ADD CONSTRAINT `config_fk1` FOREIGN KEY (`device_id`) REFERENCES `devices`(`device_id`);

