-- https://stepik.org/lesson/308891/step/12?unit=291017
-- Задание

SELECT DISTINCT name_client
FROM
    client
    INNER JOIN buy USING(client_id)
    INNER JOIN buy_book USING(buy_id)
    INNER JOIN book USING(book_id)
    INNER JOIN author USING(author_id)
WHERE name_author LIKE 'Достоевский%'
ORDER BY name_client;