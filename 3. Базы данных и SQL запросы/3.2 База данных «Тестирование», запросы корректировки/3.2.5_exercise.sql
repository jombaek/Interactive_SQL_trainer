-- https://stepik.org/lesson/310422/step/6?unit=292728
-- Задание

INSERT INTO student (name_student)
VALUES ('Местникова Евгения');

INSERT INTO attempt (student_id, subject_id, date_attempt, result)
SELECT student_id, subject_id, DATE_ADD(NOW(), INTERVAL RAND() * -10 DAY) AS date_attempt, 100
FROM student, subject
WHERE student_id = (
    SELECT student_id
    FROM student
    WHERE name_student = 'Местникова Евгения'
)
ORDER BY date_attempt;

SELECT * FROM student;

SELECT * FROM attempt;