-- https://stepik.org/lesson/305012/step/9?unit=287020
-- Запросы на удаление

DELETE FROM supply
WHERE author IN (
    SELECT author
    FROM book
    GROUP BY author
    HAVING SUM(amount) > 10
);
SELECT * FROM supply;