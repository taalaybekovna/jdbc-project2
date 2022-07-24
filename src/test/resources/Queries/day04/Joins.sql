select * from employees;

/*
 INNER JOIN
 Only matching portion of the tables
 */
select * from CUSTOMER;
select * from ADDRESS;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER inner join ADDRESS
    ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


select FIRST_NAME,LAST_NAME,ADDRESS.ADDRESS_ID,CUSTOMER.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER inner join  ADDRESS
    ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--Aliases
-- Instaead of using table name we can use alias to specify table
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C inner join  ADDRESS A
                          ON C.ADDRESS_ID = A.ADDRESS_ID;

/*

 LEFT OUTER JOIN
Matching part + only unique for LEFT table

  There is no diff between left outer join vs left join

 */
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C left  join  ADDRESS A
                            ON C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A right  join  CUSTOMER C
                            ON C.ADDRESS_ID = A.ADDRESS_ID;

/*

 RIGHT OUTER JOIN
Matching part + only unique for RIGHT table

 There is no diff between right outer join vs right join
 */
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C right join   ADDRESS A
                            ON C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A LEFT JOIN CUSTOMER C
        ON A.ADDRESS_ID=C.ADDRESS_ID;

/*

 FULL OUTER JOIN
Matching part + only unique for RIGHT+LEFT tables

 There is no diff between full outer join vs full join
 */
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C full join   ADDRESS A
                             ON C.ADDRESS_ID = A.ADDRESS_ID;


/*
 LEFT OUTER WITH WHERE
 -- Get me only unique for left table

 NOTE --> If there is a customer with addressID 6 , since there is no matching data
 from address table it will assing NULL value for address table address_id

 That is why we are using WHERE with address.addrees_id IS NULL to get unique for LEFT table
 */

SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer LEFT OUTER JOIN address
                              ON customer.address_id = address.address_id
WHERE ADDRESS.ADDRESS_ID IS NULL;


/*

 FULL OUTER WITH WHERE
 -- get non-matching part of the tables

 */

SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer FULL OUTER JOIN address
                              ON customer.address_id = address.address_id
WHERE ADDRESS.ADDRESS_ID IS NULL OR CUSTOMER.ADDRESS_ID IS NULL;

