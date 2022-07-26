
    -- 1. display full addresses from locations table in a single column
    select * from LOCATIONS;
    select STREET_ADDRESS||'-'||POSTAL_CODE||'-'||city||'-'||COUNTRY_ID as "Full_Address" from LOCATIONS;

    -- CONCAT (PARAM1, PARAM2) --RETURN STRING

    SELECT CONCAT(STREET_ADDRESS, CONCAT(POSTAL_CODE, CONCAT(CITY,COUNTRY_ID))) AS FULL_ADDRESS_CONCAT FROM LOCATIONS;

    -- 2. display all information's of the employee who has the minimum salary  in employees table
    SELECT MIN(SALARY) FROM EMPLOYEES; -- 2100

    -- INFORMATION ABOUT THAT EMPLOYEE
    SELECT * FROM EMPLOYEES
    WHERE SALARY=2100;

    -- MAKE IT DYNAMIC
    SELECT * FROM EMPLOYEES
    WHERE SALARY=(SELECT MIN(SALARY) FROM EMPLOYEES);

    -- 3. display the second minimum salary from the employees
    -- min salary --> 2100
    -- second min salary
    select min(SALARY) from EMPLOYEES
    where SALARY >2100;

    --GET ME SECOND MIN SALARY DYNAMICALLY
    SELECT MIN(SALARY) FROM EMPLOYEES
    WHERE SALARY>(SELECT MIN(SALARY) FROM EMPLOYEES);
    -- SECOND MIN SALARY IS 2200


    -- 4. display all information's of the employee who has the second minimum  salary
    -- GET ME INFORMATION ABOUT THAT GUY
    SELECT * FROM EMPLOYEES
    WHERE SALARY=2200;

    -- MAKE IT DYNAMIC --> SOLUTION
    SELECT * FROM EMPLOYEES
    WHERE SALARY=(SELECT MIN(SALARY) FROM EMPLOYEES
                  WHERE SALARY>(SELECT MIN(SALARY) FROM EMPLOYEES));


    -- 5. list all the employees who are making above the average salary;
    SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES; -- 6462
    SELECT * FROM EMPLOYEES
    WHERE SALARY > 6462;

    -- MAKE IT DYNAMIC
    SELECT * FROM EMPLOYEES
    WHERE SALARY > (SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES);

    --HOW MANY EMPLOYEE GETTING MORE THAN AVG
    SELECT COUNT(*) FROM EMPLOYEES
    WHERE SALARY>(SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES);

    -- HOW MANY EMPLOYEES GETTING MORE THAN AVG FOR EACH JOB ID
    SELECT JOB_ID,COUNT(*) FROM EMPLOYEES
    WHERE SALARY>(SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES)
    GROUP BY JOB_ID;

    -- 6. list all the employees who are making less than the average salary
    select * from EMPLOYEES
    where SALARY<(select round(avg(SALARY)) from EMPLOYEES);

    -- 7. display manager name of 'Neena'

    -- manager ID for Neena
    select * from EMPLOYEES
    where FIRST_NAME='Neena';


    -- manager name of Neena
    select FIRST_NAME from EMPLOYEES
    where EMPLOYEE_ID=100;

    -- make it dynamic
    select FIRST_NAME from EMPLOYEES
    where EMPLOYEE_ID=(select MANAGER_ID from EMPLOYEES
                        where FIRST_NAME='Ismael');

    -- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
    -- first order salaries in desc
    select distinct SALARY from EMPLOYEES
    order by SALARY desc ;
    -- make it dynamic
    select min(SALARY) from (select distinct SALARY from EMPLOYEES
                   order by SALARY desc)
    where ROWNUM<4;

    -- 12. find the 3rd minimum salary from the employees table (do not  include duplicates)
    -- sort salary in asc order
    select distinct SALARY from EMPLOYEES
    order by SALARY asc ;

    select max(SALARY) from (select distinct SALARY from EMPLOYEES
        order by SALARY asc )
    where ROWNUM<4;

    -- get me information about that guy
    select * from EMPLOYEES
    where SALARY=(select max(SALARY) from (select distinct SALARY from EMPLOYEES
            order by SALARY asc)
                  where ROWNUM < 4);


    --Tasks

    -- Display How many country we have in each region_ID

    select REGION_ID, count(*) from COUNTRIES
        group by REGION_ID;

    -- Display How many country we have in each region_name

    select REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
    on c.REGION_ID = r.REGION_ID
    group by REGION_NAME;


    -- Display How many country we have in Europe
    select REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                                                             on c.REGION_ID = r.REGION_ID
    where REGION_NAME='Europe'
    group by REGION_NAME;

    -- having
    select REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                                                             on c.REGION_ID = r.REGION_ID
    group by REGION_NAME
    having REGION_NAME='Europe';

    -- Display region names where they have more than 5 country

    select REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                                                             on c.REGION_ID = r.REGION_ID


    group by REGION_NAME
    having count(*) >5
    order by 2;