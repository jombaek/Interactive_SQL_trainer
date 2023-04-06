-- https://stepik.org/lesson/308891/step/6?unit=291017
-- Задание

SELECT name_author, title, COUNT(buy_book.book_id) AS Количество
FROM
    book
    INNER JOIN author USING(author_id)
    LEFT JOIN buy_book USING(book_id)
GROUP BY name_author, title
ORDER BY name_author, title;