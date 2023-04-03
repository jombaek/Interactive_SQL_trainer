-- https://stepik.org/lesson/308886/step/6?unit=291012
-- Запросы для нескольких таблиц с группировкой

SELECT name_author, SUM(amount) AS Количество
FROM author
LEFT JOIN book ON author.author_id = book.author_id
GROUP BY name_author
HAVING SUM(amount) < 10 OR COUNT(title) = 0
ORDER BY Количество ASC;