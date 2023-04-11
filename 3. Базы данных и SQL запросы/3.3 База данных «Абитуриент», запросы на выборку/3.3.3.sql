-- https://stepik.org/lesson/310418/step/4?unit=292724
-- Задание

SELECT name_subject,
    COUNT(enrollee_id) AS Количество,
    MAX(result) AS Максимум,
    MIN(result) AS Минимум,
    ROUND(AVG(result), 1) AS Среднее
FROM
    enrollee_subject
    INNER JOIN subject USING (subject_id)
GROUP BY name_subject
ORDER BY name_subject;