-- https://stepik.org/lesson/297509/step/11?unit=279269
-- Выборка данных с сортировкой

SELECT author, title
FROM book
WHERE amount BETWEEN 2 AND 14
ORDER BY author DESC, title;