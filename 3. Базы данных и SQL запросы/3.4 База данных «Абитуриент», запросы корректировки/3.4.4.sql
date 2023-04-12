-- https://stepik.org/lesson/310420/step/5?unit=292726
-- Задание

CREATE TABLE applicant_order AS
SELECT *
FROM applicant
ORDER BY program_id ASC, itog DESC;

DROP TABLE applicant;

SELECT * FROM applicant_order;