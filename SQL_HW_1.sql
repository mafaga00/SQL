/* Создать таблицу employees
-id. serial, primary key,
-employee_name. Varchar(50), not null */
create table employees(
id serial primary key,
employee_name varchar(50) not null
);
-- Наполнить таблицу employee 70 строками.
INSERT INTO employees (employee_name) VALUES
  ('Ivan'),
  ('Petr'),
  ('Dmitry'),
  ('Alexey'),
  ('Fedor'),
  ('Nikolay'),
  ('Andrey'),
  ('Vladimir'),
  ('Maxim'),
  ('Sergey'),
  ('Oleg'),
  ('Irina'),
  ('Elena'),
  ('Maria'),
  ('Tatyana'),
  ('Anna'),
  ('Olga'),
  ('Polina'),
  ('Ekaterina'),
  ('Nina'),
  ('Marina'),
  ('Alyona'),
  ('Svetlana'),
  ('Natalya'),
  ('Taisia'),
  ('Inna'),
  ('Larisa'),
  ('Daria'),
  ('Yana'),
  ('Zhanna'),
  ('Eva'),
  ('Helena'),
  ('Vanja'),
  ('Dasha'),
  ('Kira'),
  ('Sonya'),
  ('Masha'),
  ('Jenya'),
  ('Nastya'),
  ('Lena'),
  ('Mira'),
  ('Sasha'),
  ('Liza'),
  ('Tonya'),
  ('Varya'),
  ('Nika'),
  ('Galina'),
  ('Nadezhda'),
  ('Anya'),
  ('Sofya'),
  ('Zoya'),
  ('Mariya'),
  ('Oksana'),
  ('Raisa'),
  ('Elizaveta'),
  ('Kseniya'),
  ('Alisa'),
  ('Marfa'),
  ('Ludmila'),
  ('Zinaida'),
  ('Valentina'),
  ('Roza'),
  ('Feodosiya'),
  ('Kristina'),
  ('Juliya'),
  ('Toma'),
  ('Darina'),
  ('Snezhana'),
  ('Vasilisa'),
  ('Nikita'),
  ('Margarita');
/* Создать таблицу salary 
- id. Serial primary key,
- monthly_salary. Int, not null */
CREATE TABLE salary (
  id serial PRIMARY KEY,
  monthly_salary INT NOT NULL
);
-- Наполнить таблицу salary 15 строками:
INSERT INTO salary (monthly_salary) VALUES
  (1000),
  (1100),
  (1200),
  (1300),
  (1400),
  (1500),
  (1600),
  (1700),
  (1800),
  (1900),
  (2000),
  (2100),
  (2200),
  (2300),
  (2400),
  (2500);
  /* Создать таблицу employee_salary 
-id. Serial primary key,
-employee_id. Int, not null, unique
-salary_id. Int, not null*/
CREATE TABLE employee_salary (
 id SERIAL PRIMARY KEY,
 employee_id INT NOT NULL UNIQUE,
 salary_id INT NOT NULL
);
/* Наполнить таблицу employee_salary 40 строками:
-в 10 строк из 40 вставить несуществующие employee_id */
INSERT INTO employee_salary (employee_id, salary_id) VALUES
 (3, 7),
 (1, 4),
 (5, 9),
 (40, 13),
 (23, 4),
 (11, 2),
 (52, 10),
 (15, 13),
 (26, 4),
 (16, 1),
 (33, 7),
 (34, 12),
 (35, 13),
 (36, 14),
 (37, 15),
 (38, 1),
 (39, 2),
 (41, 3),
 (42, 4),
 (43, 5),
 (44, 6),
 (45, 7),
 (46, 8),
 (47, 9),
 (48, 10),
 (49, 11),
 (50, 12),
 (51, 13),
 (53, 14),
 (54, 15),
 (101, 1),
 (102, 2),
 (103, 3),
 (104, 4),
 (105, 5),
 (106, 6),
 (107, 7),
 (108, 8),
 (109, 9),
 (110, 10);
 /* Создать таблицу roles
-id. Serial primary key,
-role_name. int, not null, unique */
CREATE TABLE roles (
  id serial PRIMARY KEY,
  role_name INT NOT NULL UNIQUE
);
-- Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles
ALTER COLUMN role_name TYPE VARCHAR(30);
-- Наполнить таблицу roles 20 строками:
INSERT INTO roles (role_name) VALUES
  ('Junior Python developer'),
  ('Middle Python developer'),
  ('Senior Python developer'),
  ('Junior Java developer'),
  ('Middle Java developer'),
  ('Senior Java developer'),
  ('Junior JavaScript developer'),
  ('Middle JavaScript developer'),
  ('Senior JavaScript developer'),
  ('Junior Manual QA engineer'),
  ('Middle Manual QA engineer'),
  ('Senior Manual QA engineer'),
  ('Project Manager'),
  ('Designer'),
  ('HR'),
  ('CEO'),
  ('Sales manager'),
  ('Junior Automation QA engineer'),
  ('Middle Automation QA engineer'),
  ('Senior Automation QA engineer');
  /* Создать таблицу roles_employee
-id. Serial primary key,
-employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-role_id. Int, not null (внешний ключ для таблицы roles, поле id) */
CREATE TABLE roles_employee (
 id serial PRIMARY KEY,
 employee_id int NOT NULL UNIQUE REFERENCES employees(id),
 role_id int NOT NULL REFERENCES roles(id)
);
-- Наполнить таблицу roles_employee 40 строками:
INSERT INTO roles_employee (employee_id, role_id)
VALUES 
(7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(35, 12),
(36, 13),
(37, 14),
(38, 15),
(39, 16),
(40, 17),
(41, 18),
(42, 19),
(43, 20),
(44, 1),
(45, 2),
(46, 3),
(47, 4),
(48, 5),
(49, 6),
(50, 7),
(51, 8),
(52, 9),
(53, 10),
(54, 11),
(55, 12),
(56, 13),
(57, 14),
(58, 15),
(59, 16),
(60, 17),
(61, 18),
(62, 19),
(63, 20);
