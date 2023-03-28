-- https://stepik.org/lesson/297515/step/8?unit=279275
-- Выборка данных по условию, групповые функции, WHERE и HAVING

SELECT author,
       SUM(price * amount) AS Стоимость
FROM book
WHERE title <> "Идиот" AND title <> "Белая гвардия"
GROUP BY author
HAVING SUM(price * amount) > 5000
ORDER BY Стоимость DESC;