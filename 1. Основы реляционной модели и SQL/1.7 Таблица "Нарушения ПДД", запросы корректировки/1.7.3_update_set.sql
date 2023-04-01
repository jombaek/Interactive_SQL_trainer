-- https://stepik.org/lesson/305762/step/4?unit=287773
-- Использование временного имени таблицы (алиаса)

UPDATE fine f, traffic_violation tv SET f.sum_fine = tv.sum_fine
WHERE f.violation = tv.violation AND f.sum_fine IS NULL;
SELECT * FROM fine;