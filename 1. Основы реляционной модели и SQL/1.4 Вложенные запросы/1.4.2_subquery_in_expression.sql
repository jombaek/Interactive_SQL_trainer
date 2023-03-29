-- https://stepik.org/lesson/297514/step/3?unit=279274
-- Использование вложенного запроса в выражении

SELECT author, title, price
FROM book
WHERE price - (SELECT MIN(price) FROM book) <= 150
ORDER BY price;