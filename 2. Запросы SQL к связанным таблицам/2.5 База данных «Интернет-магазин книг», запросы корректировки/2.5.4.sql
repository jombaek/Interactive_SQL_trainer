-- https://stepik.org/lesson/310417/step/5?unit=292723
-- Задание

UPDATE book
INNER JOIN buy_book USING (book_id)
SET book.amount = book.amount - buy_book.amount
WHERE buy_id = 5;

SELECT * FROM book;