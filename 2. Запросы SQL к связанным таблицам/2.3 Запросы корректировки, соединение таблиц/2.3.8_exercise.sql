-- https://stepik.org/lesson/308887/step/9?unit=291013
-- Задание

UPDATE supply
SET price = 1000
WHERE title = ('Черный человек');

UPDATE book 
    INNER JOIN supply USING (title)
SET book.price = supply.price
WHERE book.price < supply.price;

SELECT * FROM supply;

SELECT * FROM book;