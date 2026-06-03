-----CREATE TABLE

CREATE TABLE DEMO(NAME VARCHAR(10), AGE INT, SALARY DECIMAL(10,2));


SELECT * FROM DEMO;
-----INSERT
------DIRECT OR ALL OR NORMAL INSERT INTO TABLE
INSERT INTO DEMO VALUES ('RAVI',21,50000.00);
INSERT INTO DEMO VALUES ('RAVI',21568454,51000000.00);
INSERT INTO DEMO VALUES ('RAVI',21568454,40005212.235);

-----PARTICULAR INSERT
INSERT INTO DEMO (NAME,SALARY) VALUES ('RAVI',21568454,300425.50);

create table marksheet(name varchar(10),age int,std int,divsion varchar(1),location varchar(10),maths int, english int, marathi int,hindi int,science int);

insert into marksheet values ('vivek',14,8,'a','andheri',20,15,30,25,29);
insert into marksheet values ('pushkar',20,9,'b','jogeshwari',28,18,35,27,20);
insert into marksheet values ('mayuri',19,12,'d','rammandir',36,40,39,26,27);
insert into marksheet values ('lakshika',18,11,'c','malad',40,27,25,20,35);
insert into marksheet values ('apurva',21,13,'f','kandivali',38,35,39,40,25);
insert into marksheet values ('ravindra',16,10,'e','borivali',40,35,36,25,29);
insert into marksheet values ('omkar',18,12,'h','dadar',28,30,40,25,21);
insert into marksheet values ('maya',22,14,'a','bandra',29,26,35,40,35);
insert into marksheet values ('ayush',18,12,'b','khar road',36,38,40,25,21);
insert into marksheet values ('nidhi',19,13,'c','virar',40,38,25,26,40);
insert into marksheet values ('prakash',23,15,'d','lowerparel',35,20,25,29,40);

--------------------------------------------------------------------------


----- ALTER - TO ADD EXTRA COLUMN

ALTER TABLE MARKSHEET ADD TOTAL INT, AVERAGE INT;

----- UPDATE - TO UPDATE THE VALUES

-- TO UPDATE ALL 

UPDATE MARKSHEET SET TOTAL = 456, AVERAGE = 456;

UPDATE MARKSHEET SET TOTAL = (maths+english+marathi+hindi+science), AVERAGE = (TOTAL/13);

-- TO UPDATE SPECIFIC

UPDATE MARKSHEET SET TOTAL = 456, AVERAGE = 456 WHERE AGE = 14;

------ ALTER - TO DELETE THE COLUMN 

ALTER TABLE MARKSHEET DROP COLUMN AVERAGE;


------ CONDITIONAL SEARCH

--- NORMAL WHERE CLAUSE

SELECT * FROM marksheet WHERE divsion = 'A';

--- WHERE CLAUSE WITH AND OPERATOR

SELECT * FROM marksheet WHERE divsion = 'C' AND location = 'VIRAR';


--- WHERE CLAUSE WITH OR OPERATOR

SELECT * FROM marksheet WHERE divsion = 'C' OR location = 'VIRAR';


---------------------------- DELETE | DROP | TRUNCATE

---- DELETE  - TO DELETE SPECIFIC ROW FROM THE TABLE

DELETE FROM marksheet WHERE AGE = 14;
 
---- TRUNCATE - TO DELETE WHOLE DATA FROM THE TABLE

TRUNCATE TABLE MARKSHEET;

---- DROP - TO DELETE WHOLE TABLE

DROP TABLE marksheet;

----------------------------------------------------

--------------------- AGGREGATE FUBCNTION


SELECT SUM(SALARY) AS TOTAL_SALARY FROM Employees

SELECT MIN(SALARY) AS MIN_SALARY FROM Employees

SELECT MAX(SALARY) AS MAX_SALARY FROM Employees

SELECT COUNT(*) AS TOTAL_EMPLOYEES FROM Employees

SELECT COUNT(1) AS TOTAL_EMPLOYEES FROM Employees

SELECT COUNT(Salary) AS TOTAL_EMPLOYEES FROM Employees

SELECT AVG(Salary) AS AVG_SALARY FROM Employees


------ GROUP BY


SELECT Department, SUM(SALARY) AS TOTAL_SALARY FROM Employees GROUP BY Department

SELECT Department, COUNT(*) AS TOTAL_EMPLOYEES FROM Employees GROUP BY Department


-------- HAVING

SELECT Department, SUM(SALARY) AS TOTAL_SALARY FROM Employees GROUP BY Department HAVING SUM(SALARY) > 200000;







select * from marksheet;
