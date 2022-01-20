select*from employees;
select*from salary;
select*from employee_salary;
select*from roles;
select*from roles_employee;

--1.������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary 
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id;

--2.������� ���� ���������� � ������� �� ������ 2000

select employee_name, monthly_salary 
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000; 

--3.������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary
from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null;

--4.������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary
from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000 and employee_name is null;

 --5.����� ���� ���������� ���� �� ��������� ��.

select employee_name
from employees
left join employee_salary on employees.id = employee_salary.
where employee_salary.id is null;

--6. ������� ���� ���������� � ���������� �� ���������.

select employee_name, role_name
from employees
left join roles_employee on employees.id = roles_employee.id_employee
left join roles on roles.id = roles_employee.id_role;

--7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name
from employees 
left join roles_employee on employees.id = roles_employee.id_employee
left join roles on roles.id = roles_employee.id_role
where role_name like '%Java%';

--8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name
from employees 
left join roles_employee on employees.id = roles_employee.id_employee
left join roles on roles.id = roles_employee.id_role
where role_name like '%Python%';

 --9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name
from employees 
left join roles_employee on employees.id = roles_employee.id_employee
left join roles on roles.id = roles_employee.id_role
where role_name like '%QA%';

--10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name
from employees 
left join roles_employee on employees.id = roles_employee.id_employee
left join roles on roles.id = roles_employee.id_role
where role_name like '%Manual QA%';

--11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name
from employees
left join roles_employee on employees.id = roles_employee.id_employee
left join roles on roles.id = roles_employee.id_role
where role_name like '%Automation QA%';

 --12. ������� ����� � �������� Junior ������������

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.id_employee = employees.id
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like'%Junior%';

 --13. ������� ����� � �������� Middle ������������

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.id_employee = employees.id
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like'%Middle%';

--14. ������� ����� � �������� Senior ������������

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.id_employee = employees.id
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like'%Senior%';

--15. ������� �������� Java �������������

select role_name, monthly_salary
from roles_employee
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like'%Java%';

--16. ������� �������� Python �������������

select role_name, monthly_salary
from roles_employee
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like'%Python%';

--17. ������� ����� � �������� Junior Python �������������

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.id_employee = employees.id
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like'%Junior Python%';

--18. ������� ����� � �������� Middle JS �������������

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.id_employee = employees.id
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like'%Middle JavaScript%';

--19. ������� ����� � �������� Senior Java �������������

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.id_employee = employees.id
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like'%Senior Java%';

 --20. ������� �������� Junior QA ���������

select role_name, monthly_salary
from roles_employee
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like'Junior% QA engineer';


 --21. ������� ������� �������� ���� Junior ������������

select avg (monthly_salary)
from roles_employee re 
join roles r on re.id = r.id
join employee_salary es on re.id_employee = es.employee_id 
join salary s on es.salary_id = s.id
where role_name like '%Junior%';

 --22. ������� ����� ������� JS �������������

select sum (monthly_salary)
from roles_employee re 
join roles r on re.id = r.id
join employee_salary es on re.id_employee = es.employee_id 
join salary s on es.salary_id = s.id
where role_name like '%JavaScript%';

--23. ������� ����������� �� QA ���������

select min (monthly_salary)
from roles_employee re 
join roles r on re.id = r.id
join employee_salary es on re.id_employee = es.employee_id 
join salary s on es.salary_id = s.id
where role_name like '%QA engineer%';

--24. ������� ������������ �� QA ���������

select max (monthly_salary)
from roles_employee re 
join roles r on re.id = r.id
join employee_salary es on re.id_employee = es.employee_id 
join salary s on es.salary_id = s.id
where role_name like '%QA engineer%';

--25. ������� ���������� QA ���������

select count (employee_name)
from roles_employee re 
join employees e on re.id_employee = e.id 
join roles r on re.id_role = r.id
where role_name like '%QA engineer';

--26. ������� ���������� Middle ������������.

select count (employee_name)
from roles_employee re 
join employees e on re.id_employee = e.id 
join roles r on re.id_role = r.id
where role_name like '%Middle%';

--27. ������� ���������� �������������

select count (employee_name)
from roles_employee re 
join employees e on re.id_employee = e.id 
join roles r on re.id_role = r.id
where role_name like '%developer';

--28. ������� ���� (�����) �������� �������������.

select sum (monthly_salary)
from roles_employee re 
join roles r on re.id = r.id
join employee_salary es on re.id_employee = es.employee_id 
join salary s on es.salary_id = s.id
where role_name like '%developer%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.id_employee = employees.id
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
order by monthly_salary;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.id_employee = employees.id
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.id_employee = employees.id
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000
order by monthly_salary;

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.id_employee = employees.id
join roles on roles_employee.id_role = roles.id
join employee_salary on roles_employee.id_employee = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary;


