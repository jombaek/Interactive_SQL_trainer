-- https://stepik.org/lesson/305012/step/4?unit=287020
-- Добавление записей из другой таблицы

INSERT INTO book (title, author, price, amount)
SELECT title, author, price, amount
FROM supply
WHERE author NOT IN ('Булгаков М.А.', 'Достоевский Ф.М.');
SELECT * FROM book;