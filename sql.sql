CREATE DATABASE dormitory_management;
USE dormitory_management;

-- Создание таблицы для проживающих
CREATE TABLE residents (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    room VARCHAR(10) NOT NULL,
    end_date DATE NOT NULL
);

-- Создание таблицы для заявок на ремонт
CREATE TABLE repair_requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    resident_name VARCHAR(100) NOT NULL,
    issue TEXT NOT NULL,
    status ENUM('В ожидании', 'В процессе', 'Завершено') DEFAULT 'В ожидании'
);

-- Пример добавления нового жильца
INSERT INTO residents (name, room, end_date)
VALUES ('Иванов Иван Иванович', '101', '2023-12-31');

-- Получение списка всех проживающих
SELECT * FROM residents;

-- Пример добавления заявки на ремонт
INSERT INTO repair_requests (resident_name, issue)
VALUES ('Иванов Иван Иванович', 'Сломан кран в ванной');

-- Получение списка всех заявок на ремонт
SELECT * FROM repair_requests;

-- Обновление статуса заявки на ремонт
UPDATE repair_requests
SET status = 'В процессе'
WHERE id = 1;

-- Удаление жильца
DELETE FROM residents
WHERE id = 1;
