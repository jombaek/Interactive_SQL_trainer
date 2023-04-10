-- https://stepik.org/lesson/310422/step/4?unit=292728
-- Задание

UPDATE attempt
SET result = (
    SELECT ROUND(SUM(is_correct) / 3 * 100) AS result
    FROM
        testing
        INNER JOIN answer USING (answer_id)
    WHERE attempt_id = 8
)
WHERE attempt_id = 8;

SELECT * FROM attempt;