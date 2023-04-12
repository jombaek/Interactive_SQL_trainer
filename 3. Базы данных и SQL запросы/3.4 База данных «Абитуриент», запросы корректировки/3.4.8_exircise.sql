-- https://stepik.org/lesson/310420/step/9?unit=292726
-- Задание

ALTER TABLE applicant_order ADD achievement VARCHAR(50);

UPDATE
    applicant_order
    INNER JOIN (
        SELECT enrollee_id, GROUP_CONCAT(DISTINCT name_achievement SEPARATOR ', ') AS name_achievement
        FROM
            enrollee
            LEFT JOIN (
                SELECT enrollee_id, name_achievement
                FROM enrollee_achievement
                INNER JOIN achievement USING (achievement_id)
            ) q1 USING (enrollee_id)
        GROUP BY enrollee_id
    ) q2 USING (enrollee_id)
SET achievement = IFNULL(name_achievement, 'Достижений нет');

SELECT * FROM applicant_order;