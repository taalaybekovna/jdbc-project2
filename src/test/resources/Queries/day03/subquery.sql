select * from employees;

/*
 SUBQUERY

    - Query inside Query
    - Inner queries will run first

 */

-- Display all information from employees who is making highest salary in company ?

    select max(salary) from EMPLOYEES;   --24K

    select * from EMPLOYEES
    where SALARY=24000;                  -- HARDCODED.What if salary will change


    -- make it dynamic
    select * from EMPLOYEES
    where SALARY=(select max(salary) from EMPLOYEES);


-- Display all information who is making second highest salary

    -- find max salary
    select max(SALARY) from EMPLOYEES;     --24000K

    -- find second max salary
    select max(SALARY) from EMPLOYEES
    where SALARY<24000;

    -- make it dynamic
    select max(SALARY) from EMPLOYEES
    where SALARY<(select max(SALARY) from EMPLOYEES);

--Find information about second highest salary
    select * from EMPLOYEES
    where SALARY=17000;

    -- make it dynamic
    select * from EMPLOYEES
    where SALARY=(select max(SALARY) from EMPLOYEES
              where SALARY<(select max(SALARY) from EMPLOYEES));

-- Display all information who is getting more than avg salary

    -- find avg salary
       select round(avg(SALARY)) from EMPLOYEES;   --6462
    -- get all employees who is getting more than avg
        select * from EMPLOYEES
        where SALARY>6462;
    -- make it dynamic
        select * from EMPLOYEES
        where SALARY>(select round(avg(SALARY)) from EMPLOYEES);








