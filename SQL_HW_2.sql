-- Вывести все поля и все строки.
SELECT * FROM students;
-- Вывести всех студентов в таблице
SELECT id,name,email FROM students;
-- Вывести только Id пользователей
SELECT id FROM students;
-- Вывести только имя пользователей
SELECT name FROM students;
-- Вывести только email пользователей
SELECT email FROM students;
-- Вывести имя и email пользователей
SELECT name, email FROM students;
-- Вывести id, имя, email и дату создания пользователей
SELECT id, name, email, created_at FROM students;
-- Вывести пользователей где password 12333
SELECT * FROM students WHERE password = '12333';
-- Вывести пользователей которые были созданы 2021-03-26 00:00:00
SELECT * FROM students WHERE DATE(created_on) = '2021-03-26 00:00:00';
-- Вывести пользователей где в имени есть слово Анна
SELECT * FROM students WHERE name LIKE '%Anna%';
-- Вывести пользователей где в имени в конце есть 8
SELECT * FROM students WHERE name LIKE '%8';
-- Вывести пользователей где в имени в есть буква а
SELECT * FROM students WHERE name LIKE '%a%';
-- Вывести пользователей которые были созданы 2021-07-12 00:00:00
SELECT * FROM students WHERE DATE(created_on) = '2021-07-12 00:00:00';
-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
SELECT * FROM students WHERE DATE(created_on) = '2021-07-12 00:00:00' AND password = '1m313';
-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
SELECT * FROM students WHERE DATE(created_on) = '2021-07-12 00:00:00' AND name LIKE '%Andrey%';
-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
SELECT * FROM students WHERE DATE(created_on) = '2021-07-12 00:00:00' AND name LIKE '%8%';
-- Вывести пользователя у которых id равен 110
SELECT * FROM students WHERE id = 110;
-- Вывести пользователя у которых id равен 153
SELECT * FROM students WHERE id = 153;
-- Вывести пользователя у которых id больше 140
SELECT * FROM students WHERE id > 140;
-- Вывести пользователя у которых id меньше 130
SELECT * FROM students WHERE id < 130;
-- Вывести пользователя у которых id меньше 127 или больше 188
SELECT * FROM students WHERE id < 127 OR id > 188;
-- Вывести пользователя у которых id меньше либо равно 137
SELECT * FROM students WHERE id <= 137;
-- Вывести пользователя у которых id больше либо равно 137
SELECT * FROM students WHERE id >= 137;
-- Вывести пользователя у которых id больше 180 но меньше 190
SELECT * FROM students WHERE id > 180 AND id < 190;
-- Вывести пользователя у которых id между 180 и 190
SELECT * FROM students WHERE id BETWEEN 180 AND 190;
-- Вывести пользователей где password равен 12333, 1m313, 123313
SELECT * FROM students WHERE password IN ('12333', '1m313', '123313');
--  Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * FROM students WHERE DATE(created_on) IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
-- Вывести минимальный id 
SELECT MIN(id) FROM students;
-- Вывести максимальный.
SELECT MAX(id) FROM students;
-- Вывести количество пользователей
SELECT COUNT(id) FROM students;
-- Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
SELECT id, name, created_on FROM students ORDER BY created_on ASC;
-- Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
SELECT id, name, created_on FROM students ORDER BY created_on DESC;