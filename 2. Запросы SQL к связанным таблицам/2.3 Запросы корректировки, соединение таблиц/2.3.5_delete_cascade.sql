-- https://stepik.org/lesson/308887/step/6?unit=291013
-- Каскадное удаление записей связанных таблиц

DELETE FROM author
WHERE author_id IN (
    SELECT author_id
	FROM book
	GROUP BY author_id
	HAVING SUM(amount) < 20
);

SELECT * FROM author;

SELECT * FROM book;