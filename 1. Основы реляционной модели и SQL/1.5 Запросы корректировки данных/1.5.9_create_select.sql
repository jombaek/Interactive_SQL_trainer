-- https://stepik.org/lesson/305012/step/10?unit=287020
-- Запросы на создание таблицы

CREATE TABLE ordering AS
SELECT author, title,
    (
        SELECT ROUND(AVG(amount))
        FROM book
    ) AS amount
FROM book
WHERE amount < (SELECT ROUND(AVG(amount)) FROM book);
SELECT * FROM ordering;