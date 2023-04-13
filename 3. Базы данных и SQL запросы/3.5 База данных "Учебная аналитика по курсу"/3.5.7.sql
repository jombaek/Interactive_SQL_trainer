-- https://stepik.org/lesson/404275/step/8?unit=393473
-- Оконные функции, оператор OVER, ORDER BY

SELECT student_name AS Студент,
    CONCAT(LEFT(step_name, 20), '...') AS Шаг,
    result AS Результат,
    FROM_UNIXTIME(submission_time) AS Дата_отправки,
    SEC_TO_TIME(IFNULL(submission_time - LAG(submission_time) OVER (ORDER BY submission_time), 0)) AS Разница
FROM
    step_student
    INNER JOIN student USING (student_id)
    INNER JOIN step USING (step_id)
WHERE student_name = 'student_61'
ORDER BY Дата_отправки;