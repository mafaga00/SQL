-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary from employee_salary
join employees on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id;
-- Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;
-- Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary from salary
full join employee_salary on employee_salary.salary_id = salary.id 
where employee_salary.id is null;
-- Вывести все зарплатные позиции меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary from salary 
full join employee_salary on employee_salary.salary_id = salary.id 
where employee_salary.id is null and employee_salary.id < 2000;
-- Найти всех работников кому не начислена ЗП.
select employee_name, monthly_salary from employees 
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary is null;
-- Вывести всех работников с названиями их должности.
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id;
-- Вывести имена и должность только Java разработчиков.
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java developer';
-- Вывести имена и должность только Python разработчиков.
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id 
where role_name like '%Python developer';
-- Вывести имена и должность всех QA инженеров.
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA%';
-- Вывести имена и должность ручных QA инженеров.
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Manual QA engineer';
-- Вывести имена и должность автоматизаторов QA
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Automation%';
-- Вывести имена и зарплаты Junior специалистов
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Junior%';
-- Вывести имена и зарплаты Middle специалистов
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Middle%';
-- Вывести имена и зарплаты Senior специалистов
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Senior%';
-- Вывести зарплаты Java разработчиков
select monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Java developer';
-- Вывести зарплаты Python разработчиков
select monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Python developer';
-- Вывести имена и зарплаты Junior Python разработчиков
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name = 'Junior Python developer';
-- Вывести имена и зарплаты Middle JS разработчиков
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name = 'Middle JavaScript developer';
-- Вывести имена и зарплаты Senior Java разработчиков
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name = 'Senior Java developer';
-- Вывести зарплаты Junior QA инженеров
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Junior%QA engineer';
-- Вывести среднюю зарплату всех Junior специалистов
select round(avg(monthly_salary)) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Junior%';
-- Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%JavaScript developer';
-- Вывести минимальную ЗП QA инженеров
select min(monthly_salary) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA engineer';
-- Вывести максимальную ЗП QA инженеров
select max(monthly_salary) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA engineer';
-- Вывести количество QA инженеров
select count(role_name) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA engineer';
-- Вывести количество Middle специалистов
select count(role_name) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Middle%';
-- Вывести количество разработчиков
select count(role_name) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%developer';
-- Вывести фонд (сумму) зарплаты разработчиков
select sum(monthly_salary) from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%developer';
-- Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
order by monthly_salary;
-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary between 1700 and 2300
order by monthly_salary;
-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary < 2300
order by monthly_salary;
-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;