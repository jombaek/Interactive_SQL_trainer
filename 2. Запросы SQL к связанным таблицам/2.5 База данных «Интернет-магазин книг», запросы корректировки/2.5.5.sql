-- https://stepik.org/lesson/310417/step/6?unit=292723
-- Задание

CREATE TABLE buy_pay AS
SELECT title, name_author, price, buy_book.amount, price * buy_book.amount AS Стоимость
FROM
    author
    INNER JOIN book USING (author_id)
    INNER JOIN buy_book USING (book_id)
WHERE buy_id = 5
ORDER BY title;

SELECT * FROM buy_pay;