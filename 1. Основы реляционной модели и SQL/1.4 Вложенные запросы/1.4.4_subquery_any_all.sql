-- https://stepik.org/lesson/297514/step/5?unit=279274
-- Вложенный запрос, операторы ANY и ALL

SELECT author, title, price
FROM book
WHERE price < ANY (SELECT MIN(price) FROM book GROUP BY author);