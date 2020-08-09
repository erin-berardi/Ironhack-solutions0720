DROP DATABASE IF EXISTS lab_mysql;

CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars (
	car_id INT(6) UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY,
	vin VARCHAR(30),
	manufacturer INT,
	model VARCHAR(30),
	`year` INT,
	color INT NOT NULL
);


CREATE TABLE IF NOT EXISTS manufacturers (
	manufacturer_id INT(6) UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
	manufacturer VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS colors (
	color_id INT(6) UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
	color VARCHAR(30),
	color_description VARCHAR(30),
	color_family VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS stores (
	store_id INT(6) UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
	address VARCHAR(30),
	city VARCHAR(30),
	state VARCHAR(30),
	country VARCHAR(30),
	zip VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS sales_persons (
	staff_id INT(6) UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	store INT(6) NOT NULL
);

CREATE TABLE IF NOT EXISTS customers (
	customer_id INT(6) UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	phone VARCHAR(30),
	mobile VARCHAR(30),
	email VARCHAR(30),
	address VARCHAR(30) NOT NULL,
	city VARCHAR(30) NOT NULL,
	state VARCHAR(30) NOT NULL,
	country VARCHAR(30) NOT NULL,
	zip VARCHAR(30) NOT NULL,
	registration_date DATE
);

CREATE TABLE IF NOT EXISTS invoices (
	invoice_id INT(6) UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
	invoice_date  DATE NOT NULL,
	car INT NOT NULL,
	customer INT(6) NOT NULL,
	sales_person INT(6) NOT NULL,
	price float NOT NULL
);