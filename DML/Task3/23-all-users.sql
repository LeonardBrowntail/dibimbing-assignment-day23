USE `lms`;
SELECT u.username, u.role_id, c.course_name FROM users u LEFT JOIN courses c ON u.id = c.teacher_id;