-- https://stepik.org/lesson/297510/step/5?unit=279270
-- Оператор LIMIT

SELECT city, COUNT(city) AS Количество
FROM trip
GROUP BY city
ORDER BY Количество DESC
LIMIT 2;