-- https://stepik.org/lesson/305012/step/6?unit=287020
-- Запросы на обновление

UPDATE book
SET price = 0.9 * price
WHERE amount BETWEEN 5 AND 10;
SELECT * FROM book;