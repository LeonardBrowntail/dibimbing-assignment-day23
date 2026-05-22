USE `lms`;
SELECT cc.category_name, c.course_name FROM course_category cc LEFT JOIN courses c ON cc.id = c.category_id;