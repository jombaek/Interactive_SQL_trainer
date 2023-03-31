-- https://stepik.org/lesson/297510/step/6?unit=279270
-- Задание

SELECT name, city, DATEDIFF(date_last, date_first) + 1 AS Длительность
FROM trip
WHERE city NOT IN ('Москва', 'Санкт-Петербург')
ORDER BY Длительность DESC, city DESC;