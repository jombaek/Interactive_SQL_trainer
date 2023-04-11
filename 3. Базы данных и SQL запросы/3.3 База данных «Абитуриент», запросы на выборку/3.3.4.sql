-- https://stepik.org/lesson/310418/step/5?unit=292724
-- Задание

SELECT name_program
FROM
    program_subject
    INNER JOIN program USING (program_id)
GROUP BY name_program
HAVING MIN(min_result) >= 40
ORDER BY name_program;