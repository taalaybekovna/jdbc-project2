select * from employees;

-- how many different job_id we have ?
select distinct JOB_ID from EMPLOYEES;


--Display average salary for 'IT_PROG'
select avg(salary) from EMPLOYEES
where JOB_ID='IT_PROG';

--Display average salary for 'SA_REP'
select avg(salary),min(salary),sum(SALARY),max(salary) from EMPLOYEES
where JOB_ID='SA_REP';

--Display average salary for 'MK_MAN'
select avg(salary),min(salary),sum(SALARY),max(salary) from EMPLOYEES
where JOB_ID='MK_MAN';

select JOB_ID,avg(SALARY) from EMPLOYEES
group by JOB_ID;


select JOB_ID,avg(salary),min(salary),sum(salary),max(SALARY),count(*) from employees
group by JOB_ID;

-- HINT --> If there is EACH keyword it means we need to use GROUP BY.
-- get me sum(salary) EACH department in Employees table

select DEPARTMENT_ID,sum(SALARY),count(*) ,min(salary)  from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by DEPARTMENT_ID;




