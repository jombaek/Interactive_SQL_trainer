-- https://stepik.org/lesson/310417/step/10?unit=292723
-- Задание

UPDATE buy_step
INNER JOIN step USING (step_id)
SET date_step_end = '2020-04-13'
WHERE buy_id = 5 AND name_step = 'Оплата';

UPDATE buy_step
INNER JOIN step USING (step_id)
SET date_step_beg = '2020-04-13'
WHERE buy_id = 5 AND step_id = (
    SELECT step_id + 1
    FROM step
    WHERE name_step = 'Оплата'
);

SELECT * FROM buy_step;