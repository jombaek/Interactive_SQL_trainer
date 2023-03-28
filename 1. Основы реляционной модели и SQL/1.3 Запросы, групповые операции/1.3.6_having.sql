-- https://stepik.org/lesson/297515/step/7?unit=279275
-- Выборка данных по условию, групповые функции

SELECT ROUND (AVG(price), 2) AS Средняя_цена,
       SUM(price * amount) AS Стоимость
FROM book
WHERE amount BETWEEN 5 AND 14;