CREATE TABLE `onlinesupermarketsystem`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `brand` VARCHAR(50) NOT NULL,
  `price` DECIMAL(20,2) NOT NULL,
  `stock` INT NULL,
  `discount` DECIMAL(20,2) NULL,
  `description` VARCHAR(500) NULL,
  `status` INT NULL,
  `category_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE `onlinesupermarketsystem`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `description` VARCHAR(500) NULL,
  `parent_id` INT,
  `status` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE `onlinesupermarketsystem`.`product_image` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(1000),
  `category_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE `onlinesupermarketsystem`.`order` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `code` VARCHAR(50) NOT NULL,
  `created` DATE NOT NULL,
  `status` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE `onlinesupermarketsystem`.`order_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `price` DECIMAL(20,2) NOT NULL,
  `quantity` DECIMAL(20,2) NULL,
  `discount` DECIMAL(20,2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE `onlinesupermarketsystem`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `fullname` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `role_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE `onlinesupermarketsystem`.`user_role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;