-- https://stepik.org/lesson/297510/step/7?unit=279270
-- Задание

SELECT name, city, date_first, date_last
FROM trip
WHERE DATEDIFF(date_last, date_first) = (
    SELECT MIN(DATEDIFF(date_last, date_first))
    FROM trip
);