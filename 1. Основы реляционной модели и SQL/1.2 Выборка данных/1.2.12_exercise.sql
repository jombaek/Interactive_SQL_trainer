-- https://stepik.org/lesson/297509/step/13?unit=279269
-- Задание

SELECT author AS Автор, title AS Название, price * amount AS Стоимость 
FROM book
WHERE author LIKE '%М.%' AND title LIKE '_% %_' AND (price BETWEEN 550 AND 800)
ORDER BY author, title DESC;