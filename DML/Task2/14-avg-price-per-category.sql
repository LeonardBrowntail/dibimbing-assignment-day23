USE `lms`;
SELECT cc.category_name, AVG(c.price) AS `avg_price` FROM courses c JOIN course_category cc ON c.category_id = cc.id GROUP BY cc.category_name;