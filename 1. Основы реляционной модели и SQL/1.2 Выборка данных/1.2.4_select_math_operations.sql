-- https://stepik.org/lesson/297509/step/5?unit=279269
-- Выборка данных с созданием вычисляемого столбца

SELECT title, amount, amount * 1.65 AS pack
FROM book;