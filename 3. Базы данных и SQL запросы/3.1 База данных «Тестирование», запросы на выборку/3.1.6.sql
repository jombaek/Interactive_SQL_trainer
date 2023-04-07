-- https://stepik.org/lesson/310421/step/7?unit=292727
-- Задание

SELECT question_id, name_question
FROM
    subject
    INNER JOIN question USING (subject_id)
WHERE name_subject = 'Основы баз данных'
ORDER BY RAND()
LIMIT 3;