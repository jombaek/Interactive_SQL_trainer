-- https://stepik.org/lesson/305762/step/6?unit=287773
-- Задание

UPDATE fine f, (
    SELECT name, number_plate, violation
    FROM fine
    GROUP BY name, number_plate, violation
    HAVING COUNT(violation) > 1
    ORDER BY name ASC, number_plate ASC, violation ASC
) AS tmp_table
SET f.sum_fine = f.sum_fine * 2
WHERE f.date_payment IS NULL AND f.name = tmp_table.name;
SELECT * FROM fine;