-- https://stepik.org/lesson/308886/step/8?unit=291012
-- Вложенные запросы в операторах соединения

SELECT title, name_author, name_genre, price, amount
FROM author
INNER JOIN book ON author.author_id = book.author_id
INNER JOIN genre ON book.genre_id = genre.genre_id
WHERE book.genre_id IN (
    SELECT genre_id
    FROM book
    GROUP BY genre_id
    HAVING SUM(amount) = (
        SELECT MAX(sum_amount)
        FROM (
            SELECT SUM(amount) AS sum_amount
            FROM book
            GROUP BY genre_id
        ) max_sum_amount
    )
)
ORDER BY title ASC;