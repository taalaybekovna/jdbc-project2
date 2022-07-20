select * from locations ;

/*
 MULTI-ROW / AGGREGATE / GROUPING FUNC
 count
 max
 min
 avg
 sum

 it will take multiple row and gives single output
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






