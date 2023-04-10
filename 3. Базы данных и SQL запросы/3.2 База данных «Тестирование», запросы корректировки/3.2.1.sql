-- https://stepik.org/lesson/310422/step/2?unit=292728
-- Задание

INSERT INTO attempt (student_id, subject_id, date_attempt)
SELECT student_id, subject_id, NOW()
FROM
	attempt
	INNER JOIN student USING (student_id)
	INNER JOIN subject USING (subject_id)
WHERE name_student = 'Баранов Павел' AND name_subject = 'Основы баз данных';

SELECT * FROM attempt;

INSERT INTO attempt (student_id, subject_id, date_attempt)
SELECT
	(SELECT student_id FROM student WHERE name_student = 'Баранов Павел'),
	(SELECT subject_id FROM subject WHERE name_subject = 'Основы баз данных'),
	NOW();

SELECT * FROM attempt;