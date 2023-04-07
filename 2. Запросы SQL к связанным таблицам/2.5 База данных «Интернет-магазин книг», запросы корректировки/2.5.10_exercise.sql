-- https://stepik.org/lesson/310417/step/11?unit=292723
-- Задание

CREATE TABLE client_history AS
SELECT client_id, name_client, COUNT(buy.buy_id) AS orders_amount, SUM(buy_book.amount) AS count_books, SUM(buy_book.amount * book.price) AS spent_money
FROM
    client
    INNER JOIN buy USING(client_id)
    INNER JOIN buy_book USING(buy_id)
    INNER JOIN book USING(book_id)
GROUP BY client_id, name_client;

SELECT * FROM client_history;