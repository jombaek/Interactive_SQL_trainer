-- https://stepik.org/lesson/297508/step/8?unit=279268
-- Создание таблицы

CREATE TABLE book (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    author VARCHAR(30),
    price DECIMAL(8, 2),
    amount INT
);