-- https://stepik.org/lesson/310420/step/8?unit=292726Задание
-- Задание

CREATE TABLE student AS
SELECT name_program, name_enrollee, itog
FROM
    applicant_order
    INNER JOIN program USING (program_id)
    INNER JOIN enrollee USING (enrollee_id)
WHERE str_id <= plan
ORDER BY name_program ASC, itog DESC;
    
SELECT * FROM student;