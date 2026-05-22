USE `lms`;
SELECT cc.category_name FROM courses c JOIN course_category cc ON c.category_id = cc.id GROUP BY cc.category_name HAVING COUNT(c.id) >= 3;