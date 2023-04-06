-- https://stepik.org/lesson/308891/step/9?unit=291017
-- Задание

SELECT buy_id, name_client, SUM(price * buy_book.amount) AS Стоимость
FROM
    buy
    INNER JOIN client USING(client_id)
    INNER JOIN buy_book USING(buy_id)
    INNER JOIN book USING(book_id)
GROUP BY buy_id
ORDER BY buy_id;