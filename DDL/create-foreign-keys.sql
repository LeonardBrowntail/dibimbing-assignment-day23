ALTER TABLE `lms`.`users` ADD FOREIGN KEY (`role_id`) REFERENCES `lms`.`roles` (`id`);

ALTER TABLE `lms`.`enrollments` ADD FOREIGN KEY (`user_id`) REFERENCES `lms`.`users` (`id`);

ALTER TABLE `lms`.`enrollments` ADD FOREIGN KEY (`course_id`) REFERENCES `lms`.`courses` (`id`);

ALTER TABLE `lms`.`courses` ADD FOREIGN KEY (`category_id`) REFERENCES `lms`.`course_category` (`id`);

ALTER TABLE `lms`.`courses` ADD FOREIGN KEY (`teacher_id`) REFERENCES `lms`.`users` (`id`);
