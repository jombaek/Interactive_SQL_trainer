-- https://stepik.org/lesson/305762/step/5?unit=287773
-- Группировка данных по нескольким столбцам

SELECT name, number_plate, violation
FROM fine
GROUP BY name, number_plate, violation
HAVING COUNT(violation) > 1
ORDER BY name ASC, number_plate ASC, violation ASC;