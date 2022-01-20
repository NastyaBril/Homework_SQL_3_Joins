select*from employees;
select*from salary;
select*from employee_salary;
select*from roles;
select*from roles_employee;

--������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary 
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id;

--������� ���� ���������� � ������� �� ������ 2000

select employee_name, monthly_salary 
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

--������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary
from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null;


