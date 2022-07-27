/*

 we will use where keyword to filter requested result

 */

 -- get me first name , lastname , salary from employees where firstname is David
select first_name,LAST_NAME,SALARY from employees
where FIRST_NAME='David';

-- '' whatever you put in single quote it is CASE SENSITIVE

-- get me all info from employees where firstname is David,lastname is Lee
select * from employees
where FIRST_NAME='David' and LAST_NAME='Lee';

-- get me first name , lastname , salary from employees where firstname is David,lastname is Lee
select first_name,LAST_NAME,SALARY from employees
where FIRST_NAME='David' and LAST_NAME='Lee';


-- get me all information from employees who is making salary more than 6000
select * from EMPLOYEES
where SALARY>6000;

-- get me all information from employees who is making salary less than and equal 6000
select * from EMPLOYEES
where SALARY<=6000;

-- get me email information from employees who is making salary less than and equal 6000
select EMAIL from EMPLOYEES
where SALARY<=6000;
-- Do we have relation with email and salary ? NO

-- get me firstname,salary   from employees who is making more than 6000 and department id = 80
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY>6000 and DEPARTMENT_ID=80;

-- get me firstname,salary from employees who is making more than and equal 3000 and less than or equal 6000
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY>=3000 and SALARY<=6000;

-- BETWEEN lower AND upper  --> boundaries are included
-- It will give all matching result within range
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY between 3000 and 6000;


-- get me all information from employees who is working as IT_PROG and SA_REP
select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='SA_REP';


-- IN CLAUSES
-- It uses OR logic
-- get me all information from employees who is working as IT_PROG and SA_REP
select * from EMPLOYEES
where JOB_ID IN('IT_PROG','SA_REP','FI_MGR');


-- get me all information from employees who is working as IT_PROG and SA_REP
select * from EMPLOYEES
where JOB_ID NOT IN('IT_PROG','SA_REP','FI_MGR');


-- get me all info from locations table where city is Rome , Tokyo
select * from LOCATIONS
where CITY  IN ('Tokyo','Roma');

-- get me all information from employees where ids are equals 113,145,124,122
select * from employees
where EMPLOYEE_ID IN(113,145,124,122);


-- NULL and NOT NULL
select * from EMPLOYEES
where DEPARTMENT_ID IS NULL ;

select * from EMPLOYEES
where DEPARTMENT_ID IS NOT NULL ;






















