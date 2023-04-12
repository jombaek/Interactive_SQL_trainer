-- https://stepik.org/lesson/310420/step/2?unit=292726
-- Задание

CREATE TABLE applicant AS
SELECT program_id, enrollee_id, SUM(result) AS itog
FROM
    enrollee
    INNER JOIN program_enrollee USING (enrollee_id)
    INNER JOIN program USING (program_id)
    INNER JOIN program_subject USING (program_id)
    INNER JOIN subject USING (subject_id)
    INNER JOIN enrollee_subject USING (subject_id, enrollee_id)
GROUP BY program_id, enrollee_id
ORDER BY program_id ASC, itog DESC;

SELECT * FROM applicant;

CREATE TABLE applicant AS
SELECT program_id, enrollee_id, SUM(result) AS itog
FROM
    enrollee_subject
    INNER JOIN program_enrollee USING (enrollee_id)
    INNER JOIN program_subject USING (program_id, subject_id)
GROUP BY program_id, enrollee_id
ORDER BY program_id ASC, itog DESC;

SELECT * FROM applicant;