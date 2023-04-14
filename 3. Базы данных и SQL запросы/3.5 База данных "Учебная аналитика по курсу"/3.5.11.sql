-- https://stepik.org/lesson/404275/step/12?unit=393473
-- Задание

WITH
    average_time (student_name, avg_time)
        AS (
            SELECT student_name, ROUND(AVG(submission_time - attempt_time))
            FROM
                student
                INNER JOIN step_student USING (student_id)
            WHERE submission_time - attempt_time <= 3600
            GROUP BY student_name
        ),
    all_data (Студент, step_id, Шаг, Номер_попытки, Результат, Время_попытки)
        AS (
            SELECT student_name,
                step_id,
                CONCAT(module_id, '.', lesson_position, '.', step_position),
                ROW_NUMBER() OVER (PARTITION BY step_id ORDER BY submission_time),
                result,
                IF (submission_time - attempt_time > 3600, avg_time, submission_time - attempt_time)
            FROM
                step_student
                INNER JOIN step USING (step_id)
                INNER JOIN lesson USING (lesson_id)
                INNER JOIN student USING (student_id)
                INNER JOIN average_time USING (student_name)
            WHERE student_name = 'student_59'
        )

SELECT Студент, Шаг, Номер_попытки, Результат,
    SEC_TO_TIME(Время_попытки) AS Время_попытки,
    ROUND(Время_попытки / SUM(Время_попытки) OVER (PARTITION BY step_id) * 100, 2) AS Относительное_время
FROM all_data
ORDER BY step_id, Номер_попытки;