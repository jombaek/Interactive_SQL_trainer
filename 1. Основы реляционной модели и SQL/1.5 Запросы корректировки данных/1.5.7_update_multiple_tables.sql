-- https://stepik.org/lesson/305012/step/8?unit=287020
-- Запросы на обновление нескольких таблиц 

UPDATE book, supply
SET book.amount = book.amount + supply.amount, book.price = (book.price + supply.price) / 2
WHERE book.title = supply.title;
SELECT * FROM book;