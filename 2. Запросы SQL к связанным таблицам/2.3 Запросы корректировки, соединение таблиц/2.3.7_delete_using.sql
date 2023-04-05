-- https://stepik.org/lesson/308887/step/8?unit=291013
-- Удаление записей, использование связанных таблиц

DELETE FROM author
USING
    author
    INNER JOIN book USING(author_id)
    INNER JOIN genre USING(genre_id)
WHERE name_genre = 'Поэзия';

SELECT * FROM author;

SELECT * FROM book;