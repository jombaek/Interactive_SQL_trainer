-- https://stepik.org/lesson/310421/step/6?unit=292727
-- Задание

SELECT name_subject, COUNT(DISTINCT student_id) AS Количество
FROM
    subject
    LEFT JOIN attempt USING (subject_id)
GROUP BY name_subject
ORDER BY Количество DESC, name_subject ASC;