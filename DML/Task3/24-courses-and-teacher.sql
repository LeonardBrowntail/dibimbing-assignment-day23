USE `lms`;
SELECT c.course_name, u.username FROM courses c LEFT JOIN users u ON c.teacher_id = u.id;