
select * from employees;

--find the 3th maximum salary from the employees table (do not include duplicates)

--MANUAL STEPS
  -- first sort salary in desc order
        select distinct salary from EMPLOYEES order by SALARY desc;
  -- cut the list from line 4 to get first 3

  -- use min salary to find 3 maximum

-- SOLUTION
    select min(salary) from (select distinct salary
                             from EMPLOYEES
                             order by SALARY desc)
    where ROWNUM<4;

-- How can we get information about that employee  (3rd max )
    select * from EMPLOYEES
    where SALARY=(select min(salary) from (select distinct salary
                                           from EMPLOYEES
                                           order by SALARY desc)
                  where ROWNUM<4);


--find the 3rd minimum salary from the employees table (do not  include duplicates)

   -- first sort salaries in asc order
    select distinct salary
    from EMPLOYEES
    order by SALARY asc;

  -- cut the list from line 4


  --use max salary to find 3 maximum
    select max(salary) from (select distinct salary
                   from EMPLOYEES
                   order by SALARY asc)
    where ROWNUM<4;

-- How can we get information about that employee  (3rd min )

    select * from EMPLOYEES
    where SALARY=(select max(salary) from (select distinct salary
                                           from EMPLOYEES
                                           order by SALARY asc)
                  where ROWNUM<4);