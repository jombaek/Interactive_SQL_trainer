-- https://stepik.org/lesson/308891/step/16?unit=291017
-- Задание

SELECT name_client, SUM(price * buy_book.amount) AS Сумма_заказов_клиента
FROM
    client
    INNER JOIN buy USING (client_id)
    INNER JOIN buy_book USING (buy_id)
    INNER JOIN book USING (book_id)
GROUP BY name_client
ORDER BY Сумма_заказов_клиента DESC;