-- https://stepik.org/lesson/310417/step/3?unit=292723
-- Задание

INSERT INTO buy (buy_description, client_id)
SELECT 'Связаться со мной по вопросу доставки', client_id
FROM client
WHERE name_client = 'Попов Илья';

SELECT * FROM buy;