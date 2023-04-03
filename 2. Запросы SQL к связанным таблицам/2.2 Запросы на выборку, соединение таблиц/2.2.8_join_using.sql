-- https://stepik.org/lesson/308886/step/9?unit=291012
-- Операция соединение, использование USING()

SELECT title AS Название, name_author AS Автор, book.amount + supply.amount AS Количество
FROM author
INNER JOIN book USING(author_id)
INNER JOIN supply USING(title, price);