SELECT first_name, last_name FROM student;

SELECT instructor_id FROM instructor WHERE tenured = 1;

SELECT s.first_name AS student_first_name, s.last_name AS student_last_name, i.first_name AS advisor_first_name, i.last_name AS advisor_last_name
FROM student AS s
INNER JOIN instructor AS i
ON s.advisor_id = i.instructor_id;

SELECT instructor_id, first_name, last_name
FROM instructor
WHERE instructor_id NOT IN (SELECT DISTINCT advisor_id FROM student WHERE advisor_id IS NOT NULL);

SELECT i.first_name, i.last_name, SUM(c.num_credits) AS total_credits FROM instructor AS i INNER JOIN course AS c ON i.instructor_id = c.instructor_id GROUP BY i.instructor_id;

SELECT course_code, course_name
FROM course
WHERE course_code LIKE '3%';

SELECT c.course_code, i.first_name, i.last_name, c.num_credits
FROM course AS c
INNER JOIN instructor AS i
ON c.instructor_id = i.instructor_id
INNER JOIN student_schedule AS ss
ON c.course_id = ss.course_id
WHERE ss.student_id = 1;






