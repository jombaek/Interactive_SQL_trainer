-- https://stepik.org/lesson/297514/step/7?unit=279274
-- Задание

SELECT author AS Автор,
       MIN(amount) AS Минимальное_количество
FROM book
WHERE title LIKE '_% %_'
GROUP BY author
HAVING SUM(price) > (SELECT MAX(price) FROM book)
ORDER BY Минимальное_количество DESC;