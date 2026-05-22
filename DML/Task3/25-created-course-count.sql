USE `lms`;
SELECT u.username, COUNT(c.id) FROM users u LEFT JOIN courses c ON u.id = c.teacher_id WHERE u.role_id = 2 GROUP BY u.username;