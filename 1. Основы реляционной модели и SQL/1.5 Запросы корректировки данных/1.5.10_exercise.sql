-- https://stepik.org/lesson/305012/step/11?unit=287020
-- Задание

CREATE TABLE my_table AS
SELECT title, author, price, amount
FROM supply
WHERE author NOT IN (SELECT DISTINCT author FROM book);
SELECT * FROM my_table;