-- https://stepik.org/lesson/308891/step/10?unit=291017
-- Задание

SELECT buy_id, name_step
FROM
    buy_step
    INNER JOIN step USING(step_id)
WHERE date_step_beg IS NOT NULL AND date_step_end IS NULL
ORDER BY buy_id;