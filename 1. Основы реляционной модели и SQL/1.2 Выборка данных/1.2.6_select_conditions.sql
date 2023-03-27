-- https://stepik.org/lesson/297509/step/7?unit=279269
-- Выборка данных, вычисляемые столбцы, логические функции

SELECT author, title, ROUND(IF(author = 'Булгаков М.А.', price * 1.1, IF(author = 'Есенин С.А.', price * 1.05, price)), 2) AS new_price
FROM book;