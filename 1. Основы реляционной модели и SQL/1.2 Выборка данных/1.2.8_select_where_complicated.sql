-- https://stepik.org/lesson/297509/step/9?unit=279269
-- Выборка данных, логические операции

SELECT title, author, price, amount
FROM book
WHERE (price < 500 OR price > 600) AND price * amount >= 5000;