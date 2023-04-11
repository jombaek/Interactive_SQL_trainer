-- https://stepik.org/lesson/310418/step/7?unit=292724
-- Задание

SELECT name_enrollee, IFNULL(SUM(bonus), 0) AS Бонус
FROM
    enrollee
    LEFT JOIN enrollee_achievement USING (enrollee_id)
    LEFT JOIN achievement USING (achievement_id)
GROUP BY name_enrollee
ORDER BY name_enrollee;