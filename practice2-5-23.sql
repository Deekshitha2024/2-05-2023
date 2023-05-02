CREATE TABLE CAR(
CAR_NO INT,CAR_NAME VARCHAR(40),CAR_PRICE INT,CAR_QUANTITY INT);
INSERT INTO CAR VALUES(112,'TESLA',120000,2),(113,'BMW',230000,3),(114,'AUDI',250000,4);
INSERT INTO CAR VALUES(116,'TATA',120000,5),(119,'KIA',230000,4);
SELECT *FROM CAR;
-- GROUP BY KEYWORD 

SELECT COUNT(CAR_NAME),CAR_PRICE FROM CAR GROUP BY CAR_PRICE;

SELECT COUNT(CAR_NAME) AS COUNT_NUMBER,CAR_PRICE FROM CAR GROUP BY CAR_PRICE;

SELECT COUNT(CAR_NAME) FROM CAR GROUP BY CAR_PRICE HAVING CAR_PRICE >120000;

SELECT COUNT(*) FROM CAR GROUP BY CAR_PRICE HAVING CAR_PRICE >120000;-- COUNT THE NO.OF CARS HAVING CAR_PRICE AS >120000

CREATE TABLE VISIT(
ENTRY_DATE  DATE,PRICE INT,DURATION INT );
INSERT INTO VISIT VALUES('2023-5-1',1000,20),('2023-5-1',2000,30),('2023-6-20',3000,45),('2023-6-20',4000,60),('2023-7-10',5000,60),
('2023-7-10',5000,30);
SELECT * FROM VISIT;

SELECT ENTRY_DATE, COUNT(*) FROM VISIT GROUP BY ENTRY_DATE;
-- EXTRACT KEYWORD EXAMPLES

SELECT EXTRACT(YEAR FROM ENTRY_DATE) AS YEAR ,
EXTRACT(MONTH FROM ENTRY_DATE) AS MONTH,
-- ROUND FUN ROUND OF THE DECIMAL POINTS UPTO 2 DECIMALS
ROUND(AVG(PRICE),3) FROM VISIT GROUP BY EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE);


SELECT EXTRACT(YEAR FROM ENTRY_DATE) AS YEAR ,
EXTRACT(MONTH FROM ENTRY_DATE) AS MONTH,
EXTRACT(DAY FROM ENTRY_DATE) AS DAY,
ROUND(AVG(PRICE),3) FROM VISIT
GROUP BY EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE),
EXTRACT(DAY FROM ENTRY_DATE)
ORDER BY EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE);
SELECT * FROM VISIT;

SELECT ENTRY_DATE, ROUND(AVG(PRICE),3) AS AVG_PRICE FROM VISIT GROUP BY ENTRY_DATE HAVING COUNT(*) > 1 ORDER BY ENTRY_DATE;

SELECT ENTRY_DATE, ROUND(AVG(PRICE),3) AS AVG_PRICE FROM VISIT GROUP BY ENTRY_DATE HAVING COUNT(*) > 3 ORDER BY ENTRY_DATE;

SELECT ENTRY_DATE, ROUND(AVG(PRICE),3) AS AVG_PRICE FROM VISIT WHERE DURATION >30
 GROUP BY ENTRY_DATE HAVING COUNT(*) > 1 ORDER BY ENTRY_DATE ;
 
 
 
 SELECT * FROM CUSTOMER;
 
SELECT CITY,COUNT(*) AS CUSTOMER_CITY FROM CUSTOMER GROUP BY CITY; 

CREATE TABLE EMPLOYEE(
EMP_ID INT, NAME VARCHAR(25), AGE INT,COUNTRY VARCHAR(30)
);
INSERT INTO EMPLOYEE VALUES(100,'SWAPNA',34,'INDIA'),
(101,'SAMRIN',23,'US'),
(102,'YAMUNA',39,'US'),
(103,'SWATHI',40,'PAKISTAN'),(105,'SUNANDHA',50,'INDIA');
INSERT INTO EMPLOYEE VALUES(110,'SWETHA',20,'INDIA');
SELECT * FROM EMPLOYEE; 

SELECT COUNT(COUNTRY) AS COUNTRY_NO,COUNTRY FROM EMPLOYEE GROUP BY COUNTRY HAVING COUNT(COUNTRY)>=2;

SELECT COUNTRY,COUNT(COUNTRY) FROM EMPLOYEE GROUP BY COUNTRY HAVING MAX(AGE) >= 30;

SELECT COUNTRY,COUNT(COUNTRY) FROM EMPLOYEE GROUP BY COUNTRY HAVING MIN(AGE) >= 30;

CREATE TABLE MANAGER(
ID INT,NAME VARCHAR(30),GENDER VARCHAR(20),SALARY INT);
DROP TABLE MANAGER;
CREATE TABLE MANAGER1(
ID INT,NAME VARCHAR(30),GENDER VARCHAR(20),AGE INT,SALARY INT);
INSERT INTO MANAGER1 VALUES(101,'SWAPNA','F',20,100000),(102,'SWATHI','F',20,200000),(103,'SWETHA','F',22,400000),(141,'SUMANTH','M',21,100000),
(105,'RAHUL','M',24,12000);
INSERT INTO MANAGER1 VALUES(106,'SWAPNA','F',20,100000);
INSERT INTO MANAGER1 VALUES(107,'SAMRIN','F',24,100000);

SELECT * FROM MANAGER1;

SELECT NAME,SUM(SALARY) AS TOTAL_SALARY FROM MANAGER1 GROUP BY NAME HAVING SUM(SALARY) >100000 ORDER BY NAME;

SELECT AGE FROM MANAGER1 GROUP BY AGE HAVING COUNT(AGE) >2;

SELECT AGE FROM MANAGER1 GROUP BY AGE HAVING COUNT(AGE) >1;

SELECT GENDER,MAX(SALARY) AS MAX_SALARY FROM MANAGER1 GROUP BY GENDER HAVING MAX(SALARY) <200000;

SELECT GENDER,MIN(SALARY) AS MAX_SALARY FROM MANAGER1 GROUP BY GENDER HAVING MIN(SALARY) <200000;






