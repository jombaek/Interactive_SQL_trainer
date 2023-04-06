-- https://stepik.org/lesson/308891/step/5?unit=291017
-- Запросы на основе трех и более связанных таблиц

SELECT buy_id, title, price, buy_book.amount
FROM
    client
    INNER JOIN buy USING(client_id)
    INNER JOIN buy_book USING(buy_id)
    INNER JOIN book USING(book_id)
WHERE name_client = 'Баранов Павел'
ORDER BY buy_id, title;