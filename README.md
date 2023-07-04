# SQL

***
# SQL_HW_1

Таблица **employees**

1) Создать таблицу employees

-id. serial,  primary key,

-employee_name. Varchar(50), not null
```
create table employees(
id serial primary key,
employee_name varchar(50) not null
);
```
2) Наполнить таблицу employee 70 строками.
```
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
```

Таблица **salary**

3) Создать таблицу salary

-id. Serial  primary key,

-monthly_salary. Int, not null
```
CREATE TABLE salary (
  id serial PRIMARY KEY,
  monthly_salary INT NOT NULL
);
```
4) Наполнить таблицу salary 15 строками:
```
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
```
Таблица **employee_salary**

5) Создать таблицу employee_salary

-id. Serial  primary key,

-employee_id. Int, not null, unique

-salary_id. Int, not null
```
CREATE TABLE employee_salary (
 id SERIAL PRIMARY KEY,
 employee_id INT NOT NULL UNIQUE,
 salary_id INT NOT NULL
);
```

6) Наполнить таблицу employee_salary 40 строками:

-в 10 строк из 40 вставить несуществующие employee_id

```
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
```

Таблица **roles**

7) Создать таблицу roles

-id. Serial  primary key,

-role_name. int, not null, unique
```
CREATE TABLE roles (
  id serial PRIMARY KEY,
  role_name INT NOT NULL UNIQUE
);
```
8) Поменять тип столба role_name с int на varchar(30)
```
ALTER TABLE roles
ALTER COLUMN role_name TYPE VARCHAR(30);
```
9) Наполнить таблицу roles 20 строками:
```
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
```

Таблица **roles_employee**

10) Создать таблицу roles_employee

-id. Serial  primary key,

-employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)

-role_id. Int, not null (внешний ключ для таблицы roles, поле id)
```
CREATE TABLE roles_employee (
 id serial PRIMARY KEY,
 employee_id int NOT NULL UNIQUE REFERENCES employees(id),
 role_id int NOT NULL REFERENCES roles(id)
);
```
11) Наполнить таблицу roles_employee 40 строками:
```
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
```

***

# SQL_HW_2

1. Вывести все поля и все строки. 

`SELECT * FROM students;`

2. Вывести всех студентов в таблице

`SELECT id,name,email FROM students;`

3. Вывести только Id пользователей

`SELECT id FROM students;`

4. Вывести только имя пользователей

`SELECT name FROM students;`

5. Вывести только email пользователей

`SELECT email FROM students;`

6. Вывести имя и email пользователей

`SELECT name, email FROM students;`

7. Вывести id, имя, email и дату создания пользователей

`SELECT id, name, email, created_at FROM students;`

8. Вывести пользователей где password 12333

`SELECT * FROM students WHERE password = '12333';`

9. Вывести пользователей которые были созданы 2021-03-26 00:00:00

`SELECT * FROM students WHERE DATE(created_on) = '2021-03-26 00:00:00';`

10. Вывести пользователей где в имени есть слово Анна

`SELECT * FROM students WHERE name LIKE '%Anna%';`

11. Вывести пользователей где в имени в конце есть 8

`SELECT * FROM students WHERE name LIKE '%8';`

12. Вывести пользователей где в имени в есть буква а

`SELECT * FROM students WHERE name LIKE '%а%';`

13. Вывести пользователей которые были созданы 2021-07-12 00:00:00

`SELECT * FROM students WHERE DATE(created_on) = '2021-07-12 00:00:00';`

14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313

`SELECT * FROM students WHERE DATE(created_on) = '2021-07-12 00:00:00' AND password = '1m313';`

15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey

`SELECT * FROM students WHERE DATE(created_on) = '2021-07-12 00:00:00' AND name LIKE '%Andrey%';`

16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8

`SELECT * FROM students WHERE DATE(created_on) = '2021-07-12 00:00:00' AND name LIKE '%8%';`

17. Вывести пользователя у которых id равен 110

`SELECT * FROM students WHERE id = 110;`

18. Вывести пользователя у которых id равен 153

`SELECT * FROM students WHERE id = 153;`

19. Вывести пользователя у которых id больше 140

`SELECT * FROM students WHERE id > 140;`

20. Вывести пользователя у которых id меньше 130

`SELECT * FROM students WHERE id < 130;`

21. Вывести пользователя у которых id меньше 127 или больше 188

`SELECT * FROM students WHERE id < 127 OR id > 188;`

22. Вывести пользователя у которых id меньше либо равно 137

`SELECT * FROM students WHERE id <= 137;`

23. Вывести пользователя у которых id больше либо равно 137

`SELECT * FROM students WHERE id >= 137;`

24. Вывести пользователя у которых id больше 180 но меньше 190

`SELECT * FROM students WHERE id > 180 AND id < 190;`

25. Вывести пользователя у которых id между 180 и 190

`SELECT * FROM students WHERE id BETWEEN 180 AND 190;`

26. Вывести пользователей где password равен 12333, 1m313, 123313

`SELECT * FROM students WHERE password IN ('12333', '1m313', '123313');`

27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00

`SELECT * FROM students WHERE DATE(created_on) IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');`

28. Вывести минимальный id 

`SELECT MIN(id) FROM students;`

29. Вывести максимальный.

`SELECT MAX(id) FROM students;`

30. Вывести количество пользователей

`SELECT COUNT(id) FROM students;`

31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.

`SELECT id, name, created_on FROM students ORDER BY created_on ASC;`

32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.

`SELECT id, name, created_on FROM students ORDER BY created_on DESC;`

***

# SQL_HW_3

1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

```
select employee_name, monthly_salary from employee_salary
join employees on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id;
```
2. Вывести всех работников у которых ЗП меньше 2000.

```
select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;
```
3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

```
select monthly_salary from salary
full join employee_salary on employee_salary.salary_id = salary.id 
where employee_salary.id is null;
```
4. Вывести все зарплатные позиции меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

```
select monthly_salary from salary 
full join employee_salary on employee_salary.salary_id = salary.id 
where employee_salary.id is null and employee_salary.id < 2000;
```
5. Найти всех работников кому не начислена ЗП.

```
select employee_name, monthly_salary from employees 
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary is null;
```
6. Вывести всех работников с названиями их должности.

```
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id;
```
7. Вывести имена и должность только Java разработчиков.

```
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java developer';
```
8. Вывести имена и должность только Python разработчиков.

```
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id 
where role_name like '%Python developer';
```
9. Вывести имена и должность всех QA инженеров.

```
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA%';
```
10. Вывести имена и должность ручных QA инженеров.

```
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Manual QA engineer';
```
11. Вывести имена и должность автоматизаторов QA

```
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Automation%';
```
12. Вывести имена и зарплаты Junior специалистов

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Junior%';
```
13. Вывести имена и зарплаты Middle специалистов

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Middle%';
```
14. Вывести имена и зарплаты Senior специалистов

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Senior%';
```
15. Вывести зарплаты Java разработчиков

```
select monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Java developer';
```
16. Вывести зарплаты Python разработчиков

```
select monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Python developer';
```
17. Вывести имена и зарплаты Junior Python разработчиков

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name = 'Junior Python developer';
```
18. Вывести имена и зарплаты Middle JS разработчиков

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name = 'Middle JavaScript developer';
```
19. Вывести имена и зарплаты Senior Java разработчиков

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name = 'Senior Java developer';
```
20. Вывести зарплаты Junior QA инженеров

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Junior%QA engineer';
```
21. Вывести среднюю зарплату всех Junior специалистов

```
select round(avg(monthly_salary)) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Junior%';
```
22. Вывести сумму зарплат JS разработчиков

```
select sum(monthly_salary) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%JavaScript developer';
```
23. Вывести минимальную ЗП QA инженеров

```
select min(monthly_salary) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA engineer';
```
24. Вывести максимальную ЗП QA инженеров

```
select max(monthly_salary) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA engineer';
```
25. Вывести количество QA инженеров

```
select count(role_name) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA engineer';
```
26. Вывести количество Middle специалистов

```
select count(role_name) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Middle%';
```
27. Вывести количество разработчиков

```
select count(role_name) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%developer';
```
28. Вывести фонд (сумму) зарплаты разработчиков

```
select sum(monthly_salary) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%developer';
```
29. Вывести имена, должности и ЗП всех специалистов по возрастанию

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
order by monthly_salary;
```
30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary between 1700 and 2300
order by monthly_salary;
```
31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary < 2300
order by monthly_salary;
```
32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

```
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;
```

***
