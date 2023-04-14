-- https://stepik.org/lesson/404275/step/10?unit=393473
-- Оконные функции, оператор OVER, PARTITION BY

WITH get_rate_lesson(mod_id, stud, rate) 
    AS (
        SELECT module_id, student_name, count(DISTINCT step_id)
        FROM
            student
            INNER JOIN step_student USING(student_id)
            INNER JOIN step USING (step_id)
            INNER JOIN lesson USING (lesson_id)
        WHERE result = "correct"
        GROUP BY module_id, student_name
    )
SELECT mod_id AS Модуль, stud AS Студент, rate AS Пройдено_шагов,
    ROUND((rate / MAX(rate) OVER (PARTITION BY mod_id)) * 100, 1) AS Относительный_рейтинг
FROM get_rate_lesson
ORDER BY Модуль,Относительный_рейтинг DESC, Студент ASC;