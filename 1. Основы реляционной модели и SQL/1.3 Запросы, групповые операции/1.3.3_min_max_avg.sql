-- https://stepik.org/lesson/297515/step/4?unit=279275
-- Выборка данных, групповые функции MIN, MAX и AVG

SELECT author,
       MIN(price) AS Минимальная_цена, MAX(price) AS Максимальная_цена,
       AVG(price) AS Средняя_цена
FROM book
GROUP BY author;