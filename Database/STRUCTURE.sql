-- =============================================
-- CREATE STRUCTURE
-- =============================================
DROP DATABASE IF EXISTS testing_system;
CREATE DATABASE testing_system;
USE testing_system;

-- create table 1: project
CREATE TABLE project(
	id				TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name`			VARCHAR(50) UNIQUE KEY NOT NULL,
    member_size		SMALLINT UNSIGNED NOT NULL DEFAULT (1),
    manager_id		SMALLINT UNSIGNED,
    created_date	DATETIME NOT NULL DEFAULT NOW()
);
-- create table 2: department
CREATE TABLE department(
	id 				TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`name` 			VARCHAR(50) UNIQUE KEY NOT NULL,
    member_size		SMALLINT UNSIGNED NOT NULL DEFAULT (0),
    created_date	DATETIME NOT NULL DEFAULT NOW()
);

-- create table 3: User
CREATE TABLE `user` (
	id 				SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    fullname 		NVARCHAR(50) NOT NULL,
    phone			VARCHAR(50) UNIQUE KEY NOT NULL,
    email			VARCHAR(50) UNIQUE KEY NOT NULL,
	username		VARCHAR(50) UNIQUE KEY NOT NULL,
    `password`		VARCHAR(50) NOT NULL,
	department_id	TINYINT UNSIGNED,
	`role`			ENUM ('Employee', 'Manager'),
    project_id		TINYINT UNSIGNED,
	created_date	DATETIME NOT NULL DEFAULT NOW(),
    FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL,
    FOREIGN KEY (project_id) REFERENCES project(id) ON DELETE SET NULL
);

-- create table Employee
CREATE TABLE employee (
	user_id			SMALLINT UNSIGNED,
	proskill		VARCHAR(50)	NOT NULL,
    FOREIGN KEY (user_id) REFERENCES `user`(id) ON DELETE SET NULL
);
-- create table manager
CREATE TABLE manager (
	user_id			SMALLINT UNSIGNED,
	exp_in_year		SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES `user`(id) ON DELETE SET NULL
);

