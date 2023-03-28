-- https://stepik.org/lesson/297515/step/2?unit=279275
-- Выбор уникальных элементов столбца

SELECT DISTINCT amount
FROM book;

SELECT amount
FROM book
GROUP BY amount;