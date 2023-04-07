-- https://stepik.org/lesson/310421/step/3?unit=292727
-- Задание

SELECT name_subject, COUNT(attempt_id) AS Количество, ROUND(AVG(result), 2) AS Среднее
FROM
    subject
    LEFT JOIN attempt USING (subject_id)
GROUP BY name_subject
ORDER BY Среднее DESC;