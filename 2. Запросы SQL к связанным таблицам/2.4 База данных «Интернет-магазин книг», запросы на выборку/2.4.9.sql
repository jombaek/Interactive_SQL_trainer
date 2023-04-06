-- https://stepik.org/lesson/308891/step/13?unit=291017
-- Задание

SELECT name_genre, SUM(buy_book.amount) AS Количество
FROM
    genre
    INNER JOIN book USING(genre_id)
    INNER JOIN buy_book USING(book_id)
GROUP BY name_genre
HAVING SUM(buy_book.amount) = (
    SELECT SUM(buy_book.amount) AS Количество
    FROM
        book
        INNER JOIN buy_book USING(book_id)
    GROUP BY genre_id
    ORDER BY Количество DESC
    LIMIT 1
);