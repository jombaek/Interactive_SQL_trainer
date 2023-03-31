-- https://stepik.org/lesson/297510/step/8?unit=279270
-- Задание

SELECT name, city, date_first, date_last
FROM trip
WHERE MONTH(date_first) = MONTH(date_last)
ORDER BY city, name;