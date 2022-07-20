select * from employees;

/*
 ORDER BY

 - It allows to sort your data based on provided column/index
 - As a DEFAULT it orders ASC (a-z or 0-9)
 - If you wanna order them into DESC , we need specify after column/index

 */


-- get me all infromation from employees who is making low salary to high
 select * from employees
 order by SALARY ;

select * from employees
order by SALARY asc ;

-- get me all infromation from employees who is making high salary to low
select * from employees
order by SALARY desc ;


-- How can we use index to sort data ?
   -- Index needs to in limit your column count
select * from employees
order by  8 ;

select email,FIRST_NAME,LAST_NAME from employees
order by  3 ;

-- get me all information where employee_id<120
-- and order them based on firstname in alphabetical order
select * from EMPLOYEES
where EMPLOYEE_ID<120
order by FIRST_NAME;

-- IQ -->  get me all information from employees based firstname asc and lastname desc
select * from EMPLOYEES
order by FIRST_NAME ASC,LAST_NAME desc ;

