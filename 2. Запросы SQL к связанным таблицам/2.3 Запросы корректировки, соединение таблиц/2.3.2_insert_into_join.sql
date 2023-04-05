-- https://stepik.org/lesson/308887/step/3?unit=291013
-- Запросы на добавление, связанные таблицы

INSERT INTO author (name_author)
SELECT supply.author
FROM author
    RIGHT JOIN supply ON author.name_author = supply.author
WHERE name_author IS NULL;

SELECT * FROM author;