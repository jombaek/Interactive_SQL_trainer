-- https://stepik.org/lesson/297514/step/6?unit=279274
-- Вложенный запрос после SELECT

SELECT title, author, amount, (SELECT MAX(amount) FROM book) - amount  AS Заказ
FROM book
WHERE amount < (SELECT MAX(amount) FROM book);