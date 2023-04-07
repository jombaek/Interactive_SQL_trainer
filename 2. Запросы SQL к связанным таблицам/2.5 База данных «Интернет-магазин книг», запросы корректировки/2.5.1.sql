-- https://stepik.org/lesson/310417/step/2?unit=292723
-- Задание

INSERT INTO client (name_client, city_id, email)
SELECT 'Попов Илья', city_id, 'popov@test'
FROM city
WHERE name_city = 'Москва';

SELECT * FROM client;