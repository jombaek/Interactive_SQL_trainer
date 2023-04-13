-- https://stepik.org/lesson/404275/step/4?unit=393473
-- Задание

SELECT CONCAT(module_id, '.', lesson_position, '.', LPAD(step_position, 2, '0'), ' ', step_name) AS Шаг
FROM
    step_keyword
    INNER JOIN step USING (step_id)
    INNER JOIN keyword USING (keyword_id)
    INNER JOIN lesson USING (lesson_id)
    INNER JOIN module USING (module_id)
WHERE keyword_name = 'AVG' OR keyword_name = 'MAX'
GROUP BY step_id
HAVING COUNT(keyword_name) = 2
ORDER BY 1;