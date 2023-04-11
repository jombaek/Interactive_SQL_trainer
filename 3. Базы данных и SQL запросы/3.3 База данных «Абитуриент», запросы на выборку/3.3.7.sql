-- https://stepik.org/lesson/310418/step/8?unit=292724
-- Задание

SELECT name_department,
    name_program,
    plan,
    COUNT(enrollee_id) AS Количество,
    ROUND(COUNT(enrollee_id) / plan, 2) AS Конкурс
FROM
    program
    LEFT JOIN department USING (department_id)
    LEFT JOIN program_enrollee USING (program_id)
GROUP BY name_department, name_program, plan
ORDER BY Конкурс DESC;