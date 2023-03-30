-- https://stepik.org/lesson/305012/step/7?unit=287020
-- Запросы на обновление нескольких столбцов

UPDATE book
SET buy = IF(buy > amount, amount, buy), price = IF(buy = 0, 0.9 * price, price);
SELECT * FROM book;