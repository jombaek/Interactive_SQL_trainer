-- https://stepik.org/lesson/308887/step/5?unit=291013
-- Запрос на обновление, вложенные запросы

UPDATE book
SET genre_id =
    (
        SELECT genre_id
        FROM genre
        WHERE name_genre = 'Поэзия'
    )
WHERE book_id = 10;

UPDATE book
SET genre_id =
    (
        SELECT genre_id
        FROM genre
        WHERE name_genre = 'Приключения'
    )
WHERE book_id = 11;

SELECT * FROM book;