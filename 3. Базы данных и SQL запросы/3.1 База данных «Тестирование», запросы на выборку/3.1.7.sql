-- https://stepik.org/lesson/310421/step/8?unit=292727
-- Задание

SELECT name_question, name_answer, IF(is_correct, 'Верно', 'Неверно') AS Результат
FROM
    question
    INNER JOIN testing USING (question_id)
    INNER JOIN answer USING (answer_id)
WHERE attempt_id = 7;