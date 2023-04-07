-- https://stepik.org/lesson/310421/step/4?unit=292727
-- Задание

SELECT DISTINCT name_student, result
FROM
    student
    INNER JOIN attempt USING (student_id)
WHERE result = (
    SELECT MAX(result)
    FROM attempt
)
ORDER BY name_student;