-- https://stepik.org/lesson/308891/step/8?unit=291017
-- Задание

SELECT buy_id, date_step_end
FROM
    buy_step
    INNER JOIN step USING(step_id)
WHERE name_step = 'Оплата' AND date_step_end IS NOT NULL;