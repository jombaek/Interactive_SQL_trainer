-- https://stepik.org/lesson/297509/step/12?unit=279269
-- Выборка данных, оператор LIKE

SELECT title, author
FROM book
WHERE title LIKE '_% %_' AND author LIKE '%С.%'
ORDER BY title;