USE `lms`;

SELECT * FROM courses c WHERE c.quota = 0 OR c.price > 500000;