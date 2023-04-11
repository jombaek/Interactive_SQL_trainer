-- https://stepik.org/lesson/310418/step/10?unit=292724
-- Задание

SELECT name_program, name_enrollee, SUM(result) AS itog
FROM
    enrollee e
    INNER JOIN program_enrollee pe ON e.enrollee_id = pe.enrollee_id
    INNER JOIN program p ON pe.program_id = p.program_id
    INNER JOIN program_subject ps ON p.program_id = ps.program_id
    INNER JOIN subject s ON ps.subject_id = s.subject_id
    INNER JOIN enrollee_subject es ON s.subject_id = es.subject_id AND es.enrollee_id = e.enrollee_id
GROUP BY name_program, name_enrollee
ORDER BY name_program ASC, itog DESC;