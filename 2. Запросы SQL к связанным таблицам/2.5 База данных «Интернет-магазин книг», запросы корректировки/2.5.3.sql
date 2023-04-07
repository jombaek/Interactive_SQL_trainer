-- https://stepik.org/lesson/310417/step/4?unit=292723
-- Задание

INSERT INTO buy_book (buy_id, book_id, amount)
SELECT 5, book_id, 2
FROM
    book
    INNER JOIN author USING (author_id)
WHERE name_author LIKE 'Пастернак%' AND title = 'Лирика';

INSERT INTO buy_book (buy_id, book_id, amount)
SELECT 5, book_id, 1
FROM
    book
    INNER JOIN author USING (author_id)
WHERE name_author LIKE 'Булгаков%' AND title = 'Белая гвардия';

SELECT * FROM buy_book;