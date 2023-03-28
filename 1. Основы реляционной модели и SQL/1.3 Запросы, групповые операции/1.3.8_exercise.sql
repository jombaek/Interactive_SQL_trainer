-- https://stepik.org/lesson/297515/step/9?unit=279275
-- Задание

SELECT author AS Автор,
       SUM(price * amount) AS Стоимость
FROM book
WHERE title LIKE '_% %_'
GROUP BY author
HAVING SUM(price * amount) < 5000
ORDER BY Стоимость DESC;