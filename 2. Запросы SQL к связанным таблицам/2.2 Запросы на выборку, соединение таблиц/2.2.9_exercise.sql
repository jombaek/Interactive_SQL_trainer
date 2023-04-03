-- https://stepik.org/lesson/308886/step/10?unit=291012
-- Задание

SELECT name_author, ROUND(AVG(price) * AVG(amount), 2) avg_price
FROM book
    LEFT JOIN author USING(author_id)
    LEFT JOIN genre ON book.genre_id = genre.genre_id
GROUP BY name_author;