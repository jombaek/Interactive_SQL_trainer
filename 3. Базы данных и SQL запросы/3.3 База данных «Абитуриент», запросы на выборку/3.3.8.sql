-- https://stepik.org/lesson/310418/step/9?unit=292724
-- Задание

SELECT name_program
FROM
    program_subject
    INNER JOIN program USING (program_id)
    INNER JOIN subject USING (subject_id)
WHERE name_subject IN ('Информатика', 'Математика')
GROUP BY name_program
HAVING COUNT(*) = 2
ORDER BY name_program;