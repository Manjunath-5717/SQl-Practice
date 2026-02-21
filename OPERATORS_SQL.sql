 ASSIGNMENT ON SELECTION QUERIES

-- 1. WAQTD the details of employees working as CLERK and earning less than 1500.
SELECT * 
FROM EMP 
WHERE JOB = 'CLERK' AND SAL < 1500; 

-- 2. WAQTD the name and hire date of employees working as MANAGER in DEPT 30.
SELECT ENAME, HIREDATE 
FROM EMP 
WHERE JOB = 'MANAGER' AND DEPTNO = 30; 

-- 3. WAQTD the details of employees along with annual salary if they are working in DEPT 30 as SALESMAN and their annual salary is greater than 14000.
SELECT EMP.*, SAL*12 AS ANNUAL_SAL 
FROM EMP 
WHERE DEPTNO = 30 AND JOB = 'SALESMAN' AND SAL*12 > 14000; 

-- 4. WAQTD all the details of employees working in DEPT 30 or working as ANALYST.
SELECT * 
FROM EMP 
WHERE DEPTNO = 30 OR JOB = 'ANALYST'; 

-- 5. WAQTD the names of employees whose salary is less than 1100 and designation is CLERK.
SELECT ENAME 
FROM EMP 
WHERE SAL < 1100 AND JOB = 'CLERK'; 

-- 6. WAQTD the name, salary, annual salary, and DEPTNO if DEPTNO is 20, earning more than 1100, and annual salary exceeds 12000.
SELECT ENAME, SAL, SAL*12 AS ANNUAL_SALARY, DEPTNO 
FROM EMP 
WHERE DEPTNO = 20 AND SAL > 1100 AND SAL*12 > 12000; 

-- 7. WAQTD the EMPNO and names of employees working as MANAGER in DEPT 20.
SELECT EMPNO, ENAME 
FROM EMP 
WHERE JOB = 'MANAGER' AND DEPTNO = 20; 

-- 8. WAQTD the details of employees working in DEPT 20 or 30.
SELECT * 
FROM EMP  
WHERE DEPTNO=20 0R DEPTNO=30; 

-- 9. WAQTD the details of employees working as ANALYST in DEPT 10.
SELECT * 
FROM EMP 
WHERE JOB = 'ANALYST' AND DEPTNO = 10; 

-- 10. WAQTD the details of the employee working as PRESIDENT with a salary of ₹4000.
SELECT * 
FROM EMP 
WHERE JOB = 'PRESIDENT' AND SAL = 4000; 

-- 11. WAQTD the names, DEPTNO, and job of employees working as CLERK in DEPT 10 or 20.
SELECT ENAME, DEPTNO, JOB 
FROM EMP 
WHERE JOB = 'CLERK' AND DEPTNO IN (10,20); 


-- 12. WAQTD the details of employees working as CLERK or MANAGER in DEPT 10.
SELECT * 
FROM EMP 
WHERE JOB IN ('CLERK','MANAGER') AND DEPTNO = 10; 


-- 13. WAQTD the names of employees working in DEPT 10, 20, 30, or 40.
SELECT ENAME 
FROM EMP 
WHERE DEPTNO IN (10,20,30,40); 


-- 14. WAQTD the details of employees with EMPNO 7902 and 7839.
SELECT * 
FROM EMP 
WHERE EMPNO IN (7902,7839); 


-- 15. WAQTD the details of employees working as MANAGER, SALESMAN, or CLERK.
SELECT * 
FROM EMP 
WHERE JOB IN ('MANAGER','SALESMAN','CLERK'); 


-- 16. WAQTD the names of employees hired after 1981 and before 1987.
SELECT ENAME 
FROM EMP 
WHERE HIREDATE >’31-DEC-1981’ AND HIREDATE<’01-JAN-1987’; 

-- 17. WAQTD the details of employees earning more than 1250 but less than 300.
SELECT * 
FROM EMP 
WHERE SAL > 1250 AND SAL < 3000; 


-- 18. WAQTD the names of employees hired after 1981 into DEPT 10 or 30.
SELECT ENAME 
FROM EMP 
WHERE HIREDATE > '31-DEC-1981’ AND DEPTNO IN (10,30); 

-- 19. WAQTD the names of employees along with annual salary who are MANAGER or CLERK in DEPT 10 or 30.

SELECT ENAME, SAL*12 AS ANNUAL_SALARY 
FROM EMP 
WHERE JOB IN ('MANAGER','CLERK') AND DEPTNO IN (10,30); 

-- 20. WAQTD all the details along with annual salary if salary is between 100 and more than 15000.
SELECT EMP.*, SAL*12 AS ANNUAL_SALARY 
FROM EMP 
WHERE SAL BETWEEN 100 AND 15000; 

 

-- ASSIGNMENT ON SPECIAL OPERATORS


-- 1. List all the employees whose commission is NULL.
SELECT * 
FROM EMP 
WHERE COMM IS NULL; 

-- 2. List all the employees who don't have a reporting manager.
SELECT * 
FROM EMP 
WHERE MGR IS NULL; 

-- 3. List all the SALESMEN in DEPT 30.
SELECT * 
FROM EMP 
WHERE JOB = 'SALESMAN' AND DEPTNO = 30; 

-- 4. List all the SALESMEN in DEPT 30 having salary greater than 1500.
SELECT * 
FROM EMP 
WHERE JOB = 'SALESMAN' AND DEPTNO = 30 AND SAL > 1500; 

-- 5. List all the employees whose name starts with 'S' or 'A'.
SELECT * 
FROM EMP 
WHERE ENAME LIKE 'S%' OR ENAME LIKE 'A%'; 

-- 6. List all the employees except those who are working in DEPT 10 and 20.
SELECT * 
FROM EMP 
WHERE DEPTNO NOT IN (10,20); 

-- 7. List the employees whose name does not start with 'S'.
SELECT * 
FROM EMP 
WHERE ENAME NOT LIKE 'S%'; 

-- 8. List all the employees who have reporting managers in DEPT 10.
SELECT * 
FROM EMP 
WHERE MGR IS NOT NULL AND DEPTNO = 10; 

-- 9. List all the employees whose commission is NULL and working as CLERK.
SELECT * 
FROM EMP 
WHERE COMM IS NULL AND JOB = 'CLERK'; 

-- 10. List all the employees who don't have a reporting manager in DEPT 10 or 30.
SELECT * 
FROM EMP 
WHERE MGR IS NULL AND DEPTNO IN (10,30); 

-- 11. List all the SALESMEN in DEPT 30 with salary more than 2450.
SELECT * 
FROM EMP 
WHERE JOB = 'SALESMAN' AND DEPTNO = 30 AND SAL > 2450; 

-- 12. List all the ANALYSTS in DEPT 20 having salary greater than 2500.
SELECT * 
FROM EMP 
WHERE JOB = 'ANALYST' AND DEPTNO = 20 AND SAL > 2500; 

-- 13. List all the employees whose name starts with 'M' or 'J'.
SELECT * 
FROM EMP 
WHERE ENAME LIKE 'M%' OR ENAME LIKE 'J%'; 

-- 14. List all the employees with annual salary except those who are working in DEPT 30.
SELECT ENAME, SAL*12 AS ANNUAL_SAL 
FROM EMP 
WHERE DEPTNO = 30; 

-- 15. List the employees whose name does not end with 'ES' or 'R'.
SELECT * 
FROM EMP 
WHERE ENAME NOT LIKE '%ES' AND ENAME NOT LIKE '%R'; 

-- 16. List all the employees who have reporting managers in DEPT 10 along with 10% hike in salary.
SELECT ENAME, SAL, SAL + SAL*0.10 AS HIKE_SALARY 
FROM EMP 
WHERE MGR IS NOT NULL AND DEPTNO = 10; 

-- 17. Display all the SALESMEN having 'E' as the second-last character in ENAME and salary with exactly 4 characters.
SELECT * 
FROM EMP 
WHERE JOB = 'SALESMAN' AND ENAME LIKE '%E_' AND 
LENGTH(TO_CHAR(SAL)) = 4; 

-- 18. Display all the employees who joined after the year 1981.
SELECT * 
FROM EMP 
WHERE HIREDATE > '31-DEC-1981'; 

-- 19. Display all the employees who joined in February
SELECT * 
FROM EMP 
WHERE TO_CHAR(HIREDATE,'MM') = '02'; 

-- 20. List the employees who are not working as MANAGERS and CLERKS in DEPT 10 and 20 with salary between 1000 and 3000.
SELECT * 
FROM EMP 
WHERE JOB NOT IN ('MANAGER','CLERK') AND DEPTNO IN (10,20) AND 
SAL BETWEEN 1000 AND 3000; 