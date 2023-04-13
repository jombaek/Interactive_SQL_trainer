-- https://stepik.org/lesson/404275/step/3?unit=393473
-- Задание

INSERT INTO step_keyword (step_id, keyword_id)
SELECT step_id, keyword_id
FROM keyword, step
WHERE step_name REGEXP CONCAT('\\b', keyword_name, '\\b');

SELECT * FROM step_keyword;