-- https://stepik.org/lesson/404275/step/9?unit=393473
-- Задание

WITH
    t1 (student_id, lesson_name, step_id, step_time)
        AS (
            SELECT student_id, lesson_name, step_id,
                SUM(submission_time - attempt_time) AS step_time
            FROM
                step_student
                INNER JOIN step USING(step_id)
                INNER JOIN lesson USING(lesson_id)
            WHERE (submission_time - attempt_time) < 4 * 3600
            GROUP BY student_id, step_id, lesson_name
        ),
    t2 (student_id, lesson_name, lesson_time)
        AS (
            SELECT student_id, lesson_name,
                SUM(step_time) AS lesson_time
            FROM t1
            GROUP BY student_id, lesson_name
        ),
    t3 (lesson_name, average_time)
        AS (
            SELECT lesson_name, ROUND(AVG(lesson_time / 3600), 2)
            FROM t2
            GROUP BY lesson_name
        )
SELECT ROW_NUMBER() OVER (ORDER BY average_time) AS Номер,
    CONCAT(module_id, '.', lesson_position, ' ', t3.lesson_name) AS Урок,
    average_time AS Среднее_время
FROM
    t3
    INNER JOIN lesson USING (lesson_name)
    INNER JOIN module USING (module_id)
ORDER BY Среднее_время;