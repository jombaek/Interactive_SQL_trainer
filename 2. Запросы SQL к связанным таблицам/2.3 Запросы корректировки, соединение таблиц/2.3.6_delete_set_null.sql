-- https://stepik.org/lesson/308887/step/7?unit=291013
-- Удаление записей главной таблицы с сохранением записей в зависимой

DELETE FROM genre
WHERE genre_id IN (
    SELECT genre_id
    FROM book
    GROUP BY genre_id
    HAVING COUNT(book_id) < 4
);

SELECT * FROM genre;

SELECT * FROM book;