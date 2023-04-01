-- https://stepik.org/lesson/305762/step/8?unit=287773
-- Задание

CREATE TABLE back_payment (
    SELECT name, number_plate, violation, sum_fine, date_violation
    FROM fine
    WHERE date_payment IS NULL
);
SELECT * FROM back_payment;