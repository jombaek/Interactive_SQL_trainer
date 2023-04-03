-- https://stepik.org/lesson/308886/step/7?unit=291012
-- Запросы для нескольких таблиц со вложенными запросами


SELECT name_author
FROM author
WHERE author_id IN (
    SELECT author_id
    FROM (
        SELECT DISTINCT author_id, genre_id
        FROM book
        GROUP BY author_id, genre_id
        ) author_genre
    GROUP BY author_id
    HAVING COUNT(genre_id) = 1
);