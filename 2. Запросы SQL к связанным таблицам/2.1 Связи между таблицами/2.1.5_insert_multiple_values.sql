-- https://stepik.org/lesson/308885/step/11?unit=291011
-- Задание

INSERT INTO book (title, author_id, genre_id, price, amount)
VALUES ('Стихотворения и поэмы', 3, 2, 650, 15),
    ('Черный человек', 3, 2, 570.2, 6),
    ('Лирика', 4, 2, 518.99, 2);
SELECT * FROM book;