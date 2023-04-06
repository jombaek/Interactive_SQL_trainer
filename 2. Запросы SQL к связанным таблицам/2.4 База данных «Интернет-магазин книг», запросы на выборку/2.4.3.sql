-- https://stepik.org/lesson/308891/step/7?unit=291017
-- Задание

SELECT name_city, COUNT(buy_id) AS Количество
FROM
    city
    INNER JOIN client USING(city_id)
    INNER JOIN buy USING(client_id)
GROUP BY name_city
ORDER BY Количество DESC, name_city ASC;