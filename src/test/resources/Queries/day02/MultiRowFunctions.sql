select * from locations ;

/*
 MULTI-ROW / AGGREGATE / GROUPING FUNC
 count
 max
 min
 avg
 sum

 it will take multiple row and gives single output

 All aggregate functions ignore null values

 */


-- COUNT

-- How many department we have ?
select count(*) from DEPARTMENTS;

-- How many different name we have ?

select distinct FIRST_NAME from EMPLOYEES;

select count(distinct FIRST_NAME) from EMPLOYEES;

-- How many employees we have works as 'IT_PROG' or 'SA_REP'
select count(*)  from EMPLOYEES
where JOB_ID IN('IT_PROG','SA_REP');

-- NOTE --> If you wanna count your result use * to get correct answer

-- How many employees we have as department_id is null
-- This gives us correct result since it counting the rows
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null ;

-- This gives us wrong data if you wanna count rows, since aggregate functions ignore the null values
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null ;

-- This bot h gives you same result since there is no null the result
select count(*) from EMPLOYEES
where DEPARTMENT_ID is not null ;

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null ;


--MAX
-- get me max salary from meployees
select max(salary) from EMPLOYEES;

--MIN
-- get me min salary from meployees
select min(salary) from EMPLOYEES;


-- SUM
-- get me total salary of employees
select sum(salary) from EMPLOYEES;


--AVG
-- get me avg salary rfrom employees
select avg(salary) from EMPLOYEES;


-- ROUND --> It is not an aggregate func.It is numeric function
select round(avg(salary)) from EMPLOYEES;
select round(avg(salary),1) from EMPLOYEES;
select round(avg(salary),2) from EMPLOYEES;
select round(avg(salary),3) from EMPLOYEES;






