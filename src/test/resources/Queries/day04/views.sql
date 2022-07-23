select * from employees;

create view EmployeesInfo as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials  ,
       FIRST_NAME||' makes ' || salary as Employees_salary  from EMPLOYEES;


-- S.K. Steven makes 24000
