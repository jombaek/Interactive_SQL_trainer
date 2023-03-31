-- https://stepik.org/lesson/297510/step/4?unit=279270
-- Задание

SELECT city, COUNT(city) AS Количество
FROM trip
GROUP BY city
ORDER BY city;