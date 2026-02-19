-- WAQTD the annual salary of the employee whose name is SMITH.
SELECT SAL*12 AS ANNUAL_SAL
FROM EMP
WHERE ENAME='SMITH';


-- WAQTD the names of the employees working as CLERK.
SELECT ENAME
FROM EMP
WHERE JOB='CLERK';


-- WAQTD the salary of the employees who are working as SALESMAN.
SELECT SAL
FROM EMP
WHERE JOB='SALESMAN';


-- WAQTD the details of the employees who earn more than 2000.
SELECT *
FROM EMP
WHERE SAL>2000;


-- WAQTD the details of the employee whose name is JONES.
SELECT *
FROM EMP
WHERE ENAME='JONES';


-- WAQTD the details of the employees who were hired after 01-JAN-81.
SELECT *
FROM EMP
WHERE HIREDATE > '01-JAN-81';


-- WAQTD the name and salary along with the annual salary if the annual salary is more than 12000.
SELECT ENAME,SAL,SAL*12 AS ANNUAL_SAL
FROM EMP
WHERE SAL*12>12000;


-- WAQTD the employee numbers of the employees who are working in DEPT 30.
SELECT EMPNO
FROM EMP
WHERE DEPTNO=30;


-- WAQTD the employee name and hire date if they were hired before the year 1981.
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE<='31-DEC-1980';


-- WAQTD the details of the employees working as MANAGER.
SELECT *
FROM EMP
WHERE JOB='MANAGER';


-- WAQTD the name and salary of the employee if the employee earns a commission of 1400.
SELECT ENAME,SAL
FROM EMP
WHERE COMM=1400;


-- WAQTD the details of the employees having commission more than their salary.
SELECT *
FROM EMP
WHERE COMM>SAL;


-- WAQTD the employee numbers of the employees hired before the year 1987.
SELECT EMPNO
FROM EMP
WHERE HIREDATE<'01-JAN-1987';


-- WAQTD the details of the employees working as an ANALYST.
SELECT *
FROM EMP
WHERE JOB='ANALYST';


-- WAQTD the details of the employees earning more than 2000 per month.
SELECT *
FROM EMP
WHERE SAL>2000;
