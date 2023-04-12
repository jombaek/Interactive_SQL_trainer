-- https://stepik.org/lesson/310420/step/4?unit=292726
-- Задание

UPDATE
    applicant
    LEFT JOIN (
        SELECT enrollee_id, SUM(bonus) AS sum_bonus
        FROM
            enrollee_achievement
            INNER JOIN achievement USING (achievement_id)
        GROUP BY enrollee_id
    ) AS sum_enrollee_achievement USING (enrollee_id)
SET itog = itog + IFNULL(sum_bonus, 0);

SELECT * FROM applicant;