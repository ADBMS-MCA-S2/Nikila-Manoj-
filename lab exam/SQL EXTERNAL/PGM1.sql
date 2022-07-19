CREATE DATABASE INFOS;
USE INFOS;
CREATE TABLE DEPARTMENTS( DEPT_NO VARCHAR(20) NOT NULL,DEPT_NAME VARCHAR(20) NOT NULL,LOCATION VARCHAR(20) NOT NULL,PRIMARY KEY(DEPT_NO));
CREATE TABLE EMPLOYEES(EMP_NO VARCHAR(20) NOT NULL,EMP_NAME VARCHAR(20) NOT NULL,SALARY INT NOT NULL, DEPT_NO VARCHAR(20) NOT NULL,PRIMARY KEY(EMP_NO),FOREIGN KEY(DEPT_NO) REFERENCES DEPARTMENTS(DEPT_NO) ON DELETE CASCADE);
INSERT INTO DEPARTMENTS(DEPT_NO,DEPT_NAME,LOCATION)VALUES("1","D1","KOLLAM");
INSERT INTO DEPARTMENTS(DEPT_NO,DEPT_NAME,LOCATION)VALUES("2","D2","KOTTAYAM");
INSERT INTO DEPARTMENTS(DEPT_NO,DEPT_NAME,LOCATION)VALUES("3","D3","TVM");

INSERT INTO EMPLOYEES(EMP_NO,EMP_NAME,SALARY,DEPT_NO)VALUES(031,"ANU","30000","10");
INSERT INTO EMPLOYEES(EMP_NO,EMP_NAME,SALARY,DEPT_NO)VALUES(010,"VIVEK","30000","1");
INSERT INTO EMPLOYEES(EMP_NO,EMP_NAME,SALARY,DEPT_NO)VALUES(034,"ARUN","50000","3");
INSERT INTO EMPLOYEES(EMP_NO,EMP_NAME,SALARY,DEPT_NO)VALUES(222,"VIDYA","40000","2");
INSERT INTO EMPLOYEES(EMP_NO,EMP_NAME,SALARY,DEPT_NO)VALUES(020,"DIYA","50000","3");

SELECT * FROM DEPARTMENTS;

SELECT * FROM EMPLOYEES;


SELECT SUM(SALARY) FROM EMPLOYEES;

SELECT EMP_NAME FROM EMPLOYEES WHERE EMP_NAME LIKE "A%";