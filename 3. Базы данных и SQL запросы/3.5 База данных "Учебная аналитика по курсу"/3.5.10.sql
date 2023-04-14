-- https://stepik.org/lesson/404275/step/11?unit=393473
-- Задание

WITH
    student_lesson_time (student_name, lesson, max_submission_time)
        AS (
            SELECT student_name, CONCAT(module_id, '.', lesson_position) AS lesson,
            MAX(submission_time) AS max_submission_time
            FROM
                step_student
                INNER JOIN step USING(step_id)
                INNER JOIN lesson USING(lesson_id)
                INNER JOIN student USING(student_id)
            WHERE result = 'correct'
            GROUP BY student_name, lesson_id
        ),
    requirements (student_name)
        AS (
            SELECT student_name
            FROM student_lesson_time
            GROUP BY student_name
            HAVING COUNT(*) >= 3
        )
SELECT student_name AS Студент, lesson AS Урок,
    FROM_UNIXTIME(max_submission_time) AS Макс_время_отправки,
    IFNULL(CEIL((max_submission_time - LAG(max_submission_time) OVER (PARTITION BY student_name ORDER BY max_submission_time)) / 86400), '-') AS Интервал
FROM
    requirements
    LEFT JOIN student_lesson_time USING (student_name)
ORDER BY 1, 3;