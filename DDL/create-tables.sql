CREATE TABLE `lms`.`users` (
  `id` integer AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(255) UNIQUE NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `role_id` integer NOT NULL,
  `email` varchar(255) UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `last_login` datetime
);

CREATE TABLE `lms`.`roles` (
  `id` integer AUTO_INCREMENT PRIMARY KEY,
  `role_name` varchar(255) NOT NULL,
  `role_description` varchar(255) DEFAULT 'Role Description'
);

CREATE TABLE `lms`.`enrollments` (
  `id` integer AUTO_INCREMENT PRIMARY KEY,
  `user_id` integer NOT NULL,
  `course_id` integer NOT NULL,
  `enroll_date` datetime NOT NULL,
  `status` varchar(255)
);

CREATE TABLE `lms`.`courses` (
  `id` integer AUTO_INCREMENT PRIMARY KEY,
  `category_id` integer NOT NULL,
  `teacher_id` integer NOT NULL,
  `course_name` varchar(255) NOT NULL DEFAULT 'Course Name',
  `course_description` varchar(255),
  `price` decimal NOT NULL DEFAULT 0,
  `quota` integer NOT NULL DEFAULT 0
);

CREATE TABLE `lms`.`course_category` (
  `id` integer AUTO_INCREMENT PRIMARY KEY,
  `category_name` varchar(255) UNIQUE NOT NULL DEFAULT 'Category Name'
);