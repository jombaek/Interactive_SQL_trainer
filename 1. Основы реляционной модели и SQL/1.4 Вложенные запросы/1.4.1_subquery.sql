-- https://stepik.org/lesson/297514/step/2?unit=279274
-- Вложенный запрос, возвращающий одно значение

SELECT author, title, price
FROM book
WHERE price <= (SELECT AVG(price) FROM book)
ORDER BY price DESC;