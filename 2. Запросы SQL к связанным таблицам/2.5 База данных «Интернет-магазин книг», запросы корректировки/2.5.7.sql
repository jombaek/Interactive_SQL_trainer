-- https://stepik.org/lesson/310417/step/8?unit=292723
-- Задание

INSERT INTO buy_step (buy_id, step_id)
SELECT 5, step_id
FROM buy, step
WHERE buy_id = 5;

SELECT * FROM buy_step;