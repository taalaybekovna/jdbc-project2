/*

 DISTINCT

 Removes duplicate from your requested result.Original one still into database


 */

--display only firstname from employees table
select FIRST_NAME from EMPLOYEES;

--get me all unique firstname from employees
select distinct first_name from EMPLOYEES;

--get me unique job_ids from employees
select distinct JOB_ID from EMPLOYEES;

select  JOB_ID from JOBS;
select  distinct  JOB_ID from JOBS;


-- get me unique country_ids from locations
select distinct COUNTRY_ID from LOCATIONS;




