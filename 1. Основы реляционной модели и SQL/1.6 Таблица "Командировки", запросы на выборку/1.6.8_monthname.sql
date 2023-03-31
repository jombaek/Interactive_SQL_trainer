-- https://stepik.org/lesson/297510/step/9?unit=279270
-- Задание

SELECT MONTHNAME(date_first) AS Месяц, COUNT(MONTH(date_first)) AS Количество
FROM trip
GROUP BY MONTHNAME(date_first)
ORDER BY Количество DESC, Месяц ASC;