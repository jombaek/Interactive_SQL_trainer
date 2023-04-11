-- https://stepik.org/lesson/310418/step/3?unit=292724
-- Задание

SELECT name_program
FROM
    program_subject
    INNER JOIN program USING (program_id)
    INNER JOIN subject USING (subject_id)
WHERE name_subject = 'Информатика'
ORDER BY name_program DESC;