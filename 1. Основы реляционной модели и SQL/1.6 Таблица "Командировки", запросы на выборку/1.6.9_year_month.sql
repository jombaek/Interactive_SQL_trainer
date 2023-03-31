-- https://stepik.org/lesson/297510/step/10?unit=279270
-- Задание

SELECT name, city, date_first, (DATEDIFF(date_last, date_first) + 1) * per_diem AS Сумма
FROM trip
WHERE YEAR(date_first) = 2020 AND (MONTH(date_first) = 2 OR MONTH(date_first) = 3)
ORDER BY name ASC, Сумма DESC;