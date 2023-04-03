-- https://stepik.org/lesson/308886/step/4?unit=291012
-- Перекрестное соединение CROSS JOIN

SELECT name_city, name_author, DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND() * 365) DAY) AS Дата
FROM city, author
ORDER BY name_city ASC, Дата DESC;