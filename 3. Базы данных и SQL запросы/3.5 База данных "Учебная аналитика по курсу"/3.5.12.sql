-- https://stepik.org/lesson/404275/step/13?unit=393473
-- Задание

WITH
    first_group (Студент, step_id, result, next_result)
        AS (
            SELECT student_name, step_id, result,
                LEAD(result) OVER(PARTITION BY student_id, step_id ORDER BY submission_time)
            FROM
                student
                INNER JOIN step_student USING(student_id)
        ),
    second_group (Студент, step_id)
        AS (
            SELECT student_name, step_id
            FROM
                student
                INNER JOIN step_student USING(student_id)
            WHERE result = 'correct'
            GROUP BY student_name, step_id
            HAVING COUNT(*) > 1
        ),
    third_group (Студент, step_id)
        AS (
            SELECT student_name, step_id
            FROM
                student
                INNER JOIN step_student USING(student_id)
            GROUP BY student_name, step_id
            HAVING SUM(IF(result = 'correct', 1, 0)) = 0
        )
SELECT 'I' AS Группа, Студент, COUNT(DISTINCT step_id) AS Количество_шагов
FROM first_group
WHERE result = 'correct' AND next_result = 'wrong'
GROUP BY Студент

UNION ALL

SELECT 'II' AS Группа, Студент, COUNT(DISTINCT step_id) AS Количество_шагов
FROM second_group
GROUP BY Студент

UNION ALL

SELECT 'III' AS Группа, Студент, COUNT(DISTINCT step_id) AS Количество_шагов
FROM third_group
GROUP BY Студент

ORDER BY Группа ASC, Количество_Шагов DESC, Студент ASC;