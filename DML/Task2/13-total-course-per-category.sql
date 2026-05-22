USE `lms`;
SELECT cc.category_name, COUNT(c.id) AS `total_courses` FROM courses c JOIN course_category cc ON c.category_id = cc.id GROUP BY cc.category_name;