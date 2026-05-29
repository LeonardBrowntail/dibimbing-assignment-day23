-- Users indexing
CREATE INDEX idx_users_username ON `lms`.users(`username`);
CREATE INDEX idx_users_display_name ON `lms`.users (`displayName`);
CREATE INDEX idx_users_email ON `lms`.users(`email`);

-- Enrollments indexing

CREATE INDEX idx_enrollments_enrolled ON `lms`.enrollments (`user_id`, `course_id`);

-- Courses indexing
CREATE INDEX idx_courses_course_name ON `lms`.courses (`course_name`);
CREATE INDEX idx_courses_price ON `lms`.courses (`price`);
CREATE INDEX idx_courses_quota ON `lms`.courses (`quota`);