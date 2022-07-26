select * from employees;

-- 1. List all the employees first and last name with their salary in employees table
-- 2. How many employees have salary less than 5000?
-- 3. How many employees have salary between 6000 and 7000?
-- 4. List all the different region_ids in countries table
-- 5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
-- 6. display all department information from departments table
-- if the department name values are as below
-- 'IT' , 'Public Relations' , 'Sales' , 'Executive'
-- 7. display the maximum salary in employees table
-- 8. display the the minimum salary in employees table
-- 9. display the average salary of the employees;
select avg(SALARY) from EMPLOYEES;
select round(avg(SALARY),from EMPLOYEES);

-- 10. count the total numbers of the departments in departs table

-- 11. sort the start_date in ascending order in job_history's table
-- 12. sort the start_date in descending order in job_history's table
-- 13. display all records from employees table whose last name contains at least 2 lowercase 'a's
-- 14. display all the employees whose first name starts with 'A'
-- 15. display all the employees whose job_ID contains 'IT'
-- 16. display all  unique job_id that end with CLERK in employee table
-- 17.display all  employees first name starts with A and have exactly 4 charactersTotal
-- 18. display all the employees whose department id in 50, 80, 100
select * from EMPLOYEES
where DEPARTMENT_ID in (50, 80, 100);

-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select * from EMPLOYEES
where DEPARTMENT_ID not in (90, 60,  100, 130, 120);

-- 20. divide employees into groups by using their job id

-- 1 display the maximum salaries in each groups
-- 2 display the minimum salaries in each groups
-- 3 display the average salary of each group
-- 4 how many employees are there in each group that have minimum salary of 5000 ?
-- 5 display the total budgets of each groups
-- 21. display all job_id and average salary who work as any of these jobs 'IT_PROG','SA_REP', 'FI_ACCOUNT', 'AD_VP'
-- 22.display max salary  for each department
-- 23. display total salary for each department except department_id 50, and where total salary >30000