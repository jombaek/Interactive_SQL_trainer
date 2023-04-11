-- https://stepik.org/lesson/310418/step/2?unit=292724
-- Задание

SELECT name_enrollee
FROM
    program_enrollee
    INNER JOIN enrollee USING (enrollee_id)
    INNER JOIN program USING (program_id)
WHERE name_program = 'Мехатроника и робототехника'
ORDER BY name_enrollee;