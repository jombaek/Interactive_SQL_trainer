-- https://stepik.org/lesson/404275/step/5?unit=393473
-- Выборка данных по нескольким условиям, оператор CASE

SELECT
    CASE
        WHEN rate <= 10 THEN "I"
        WHEN rate <= 15 THEN "II"
        WHEN rate <= 27 THEN "III"
        ELSE "IV"
    END AS Группа,
    CASE
        WHEN rate <= 10 THEN "от 0 до 10"
        WHEN rate <= 15 THEN "от 11 до 15"
        WHEN rate <= 27 THEN "от 16 до 27"
        ELSE "больше 27"
    END AS Интервал,
    COUNT(student_name) AS Количество
FROM (
    SELECT student_name, count(*) as rate
    FROM (
        SELECT student_name, step_id
        FROM
            student 
            INNER JOIN step_student USING(student_id)
        WHERE result = "correct"
        GROUP BY student_name, step_id
    ) AS query_in
    GROUP BY student_name 
    ORDER BY 2
) AS query_in_1
GROUP BY Группа, Интервал;