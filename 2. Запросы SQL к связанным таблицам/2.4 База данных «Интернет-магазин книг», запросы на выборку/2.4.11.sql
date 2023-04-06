-- https://stepik.org/lesson/308891/step/15?unit=291017
-- Задание

SELECT title, SUM(Количество) AS Количество, SUM(Сумма) AS Сумма
FROM (
    SELECT title, SUM(buy_book.amount) AS Количество, SUM(price * buy_book.amount) AS Сумма
    FROM
        book
        INNER JOIN buy_book USING (book_id)
        INNER JOIN buy USING (buy_id)
        INNER JOIN buy_step USING (buy_id)
        INNER JOIN step USING (step_id)
    WHERE name_step = 'Оплата' AND date_step_end IS NOT NULL
    GROUP BY title
    UNION
    SELECT title, SUM(buy_archive.amount) AS Количество, SUM(buy_archive.price * buy_archive.amount) AS Сумма
    FROM
        buy_archive
        INNER JOIN book USING (book_id)
    GROUP BY title
) AS query_in
GROUP BY title
ORDER BY Сумма DESC;
