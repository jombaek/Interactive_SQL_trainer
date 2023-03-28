-- https://stepik.org/lesson/297515/step/6?unit=279275
-- Вычисления по таблице целиком

SELECT MIN(price) AS Минимальная_цена,
       MAX(price) AS Максимальная_цена,
       ROUND(AVG(price), 2) AS Средняя_цена
FROM book;