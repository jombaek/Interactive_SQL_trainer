-- https://stepik.org/lesson/310421/step/10?unit=292727
-- Задание

SELECT name_subject,
    CONCAT(LEFT(name_question, 30), '...') AS Вопрос,
    COUNT(testing.answer_id) AS Всего_ответов,
    ROUND(SUM(is_correct) / COUNT(answer_id) * 100, 2) AS Успешность
FROM
    subject
    INNER JOIN question USING (subject_id)
    INNER JOIN answer USING (question_id)
    INNER JOIN testing USING (answer_id)
GROUP BY name_subject, name_question
ORDER BY name_subject ASC, Успешность DESC, Вопрос ASC;