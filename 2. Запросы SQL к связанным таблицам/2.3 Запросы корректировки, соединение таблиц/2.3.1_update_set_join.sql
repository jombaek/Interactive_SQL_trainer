-- https://stepik.org/lesson/308887/step/2?unit=291013
-- Запросы на обновление, связанные таблицы

UPDATE book
     INNER JOIN author ON author.author_id = book.author_id
     INNER JOIN supply ON book.title = supply.title AND author.name_author = supply.author
SET book.amount = book.amount + supply.amount,
    book.price = (book.price * book.amount + supply.price * supply.amount) / (book.amount + supply.amount),
    supply.amount = 0
WHERE book.price <> supply.price;

SELECT * FROM book;

SELECT * FROM supply;