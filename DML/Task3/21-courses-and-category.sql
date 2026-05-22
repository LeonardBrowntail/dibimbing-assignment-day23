USE `lms`;
SELECT c.course_name, cc.category_name FROM courses c JOIN course_category cc ON c.category_id = cc.id;