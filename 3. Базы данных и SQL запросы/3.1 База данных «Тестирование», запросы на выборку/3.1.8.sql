-- https://stepik.org/lesson/310421/step/9?unit=292727
-- Задание

SELECT name_student, name_subject, date_attempt, ROUND(SUM(is_correct) / 3 * 100, 2) AS Результат
FROM
    answer
    INNER JOIN testing USING (answer_id)
    INNER JOIN attempt USING (attempt_id)
    INNER JOIN subject USING (subject_id)
    INNER JOIN student USING (student_id)
GROUP BY name_student, name_subject, date_attempt
ORDER BY name_student ASC, date_attempt DESC;