-- https://stepik.org/lesson/310420/step/3?unit=292726
-- Задание

DELETE FROM applicant
USING
    applicant
    INNER JOIN program_subject USING (program_id)
    INNER JOIN enrollee_subject USING (subject_id, enrollee_id)
WHERE result < min_result;

SELECT * FROM applicant;