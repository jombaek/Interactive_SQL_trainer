-- https://stepik.org/lesson/308886/step/5?unit=291012
-- Запросы на выборку из нескольких таблиц

SELECT name_genre, title, name_author
FROM genre
INNER JOIN book ON genre.genre_id = book.genre_id
INNER JOIN author ON book.author_id = author.author_id
WHERE name_genre = 'Роман'
ORDER BY title ASC;