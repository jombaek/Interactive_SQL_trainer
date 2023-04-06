-- https://stepik.org/lesson/308891/step/14?unit=291017
-- Задание

SELECT YEAR(date_payment) AS Год, MONTHNAME(date_payment) AS Месяц, SUM(price * amount) AS Сумма
FROM buy_archive
GROUP BY Месяц, Год
UNION
SELECT YEAR(date_step_end) AS Год, MONTHNAME(date_step_end) AS Месяц, SUM(price * buy_book.amount) AS Сумма
FROM
    book
    INNER JOIN buy_book USING (book_id)
    INNER JOIN buy USING (buy_id)
    INNER JOIN buy_step USING (buy_id)
    INNER JOIN step USING (step_id)
WHERE name_step = 'Оплата' AND date_step_end IS NOT NULL
GROUP BY Месяц, Год
ORDER BY Месяц, Год;