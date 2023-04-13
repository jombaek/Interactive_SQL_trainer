-- https://stepik.org/lesson/404275/step/7?unit=393473
-- Задание

SET @max_progress = (SELECT COUNT(DISTINCT step_id) FROM step_student);

WITH student_progress (student_name, progress) AS
    (
        SELECT student_name, ROUND(COUNT(DISTINCT step_id) / @max_progress * 100)
        FROM
            student
            INNER JOIN step_student USING (student_id)
        WHERE result = 'correct'
        GROUP BY student_name
    )
SELECT student_name AS Студент,
    progress AS Прогресс,
    CASE
        WHEN progress = 100 THEN 'Сертификат с отличием'
        WHEN progress >= 80 THEN 'Сертификат'
        ELSE ''
    END AS Результат
FROM student_progress
ORDER BY Прогресс DESC, student_name ASC;