-- https://stepik.org/lesson/310418/step/12?unit=292724
-- Задание

SELECT name_subject AS предмет,
    MIN(result) AS минимум,
    MAX(result) AS максимум,
    ROUND(AVG(result)) AS среднее,
    COUNT(result) AS количество
FROM
    enrollee_subject
    RIGHT JOIN subject USING (subject_id)
GROUP BY name_subject
ORDER BY среднее DESC;