-- https://stepik.org/lesson/297509/step/6?unit=279269
-- Выборка данных, вычисляемые столбцы, математические функции

SELECT title, author, amount, ROUND(price - price * 30 / 100, 2) AS new_price
FROM book;