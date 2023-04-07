-- https://stepik.org/lesson/310417/step/7?unit=292723
-- Задание

CREATE TABLE buy_pay AS
SELECT buy_id, SUM(buy_book.amount) AS Количество, SUM(price * buy_book.amount) AS Итого
FROM
    book
    INNER JOIN buy_book USING (book_id)
WHERE buy_id = 5;

SELECT * FROM buy_pay;