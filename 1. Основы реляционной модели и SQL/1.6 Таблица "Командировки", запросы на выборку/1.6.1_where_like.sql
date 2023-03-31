-- https://stepik.org/lesson/297510/step/2?unit=279270
-- Задание

SELECT name, city, per_diem, date_first, date_last
FROM trip
WHERE name LIKE '_%а %_'
ORDER BY date_last DESC;