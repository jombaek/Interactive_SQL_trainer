-- https://stepik.org/lesson/297510/step/11?unit=279270
-- Задание

SELECT name, SUM((DATEDIFF(date_last, date_first) + 1) * per_diem) AS Сумма
FROM trip
GROUP BY name
HAVING COUNT(name) > 3
ORDER BY Сумма DESC;