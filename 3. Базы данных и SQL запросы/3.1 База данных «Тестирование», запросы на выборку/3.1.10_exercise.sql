-- https://stepik.org/lesson/310421/step/11?unit=292727
-- Задание

SELECT name_subject, name_question, name_answer
FROM
    answer
    INNER JOIN question USING (question_id)
    INNER JOIN subject USING (subject_id)
WHERE is_correct;