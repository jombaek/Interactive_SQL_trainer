-- https://stepik.org/lesson/310417/step/9?unit=292723
-- Задание

UPDATE buy_step
INNER JOIN step USING (step_id)
SET date_step_beg = '2020-04-12'
WHERE buy_id = 5 AND name_step = 'Оплата';

SELECT * FROM buy_step;