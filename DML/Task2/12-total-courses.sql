USE `lms`;
SELECT COUNT(c.id) AS `available_courses` FROM courses c WHERE c.quota > 0;