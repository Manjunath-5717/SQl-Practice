-- ASSIGNMENT QUESTIONS ON GROUP BY

-- 1. WAQTD number of employees working in each department excluding PRESIDENT
SELECT DEPTNO, COUNT(*)
FROM EMP
WHERE JOB != 'PRESIDENT'
GROUP BY DEPTNO;

-- 2. WAQTD total salary needed to pay all the employees in each job.
SELECT JOB, COUNT(SAL)
FROM EMP
GROUP BY JOB;

-- 3. WAQTD number of employees working as MANAGER in each department.
SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE JOB='MANAGER'
GROUP BY DEPTNO;

-- 4. WAQTD average salary needed to pay all the employees in each department excluding deptno 20.
SELECT DEPTNO,AVG(SAL)
FROM EMP
WHERE DEPTNO  !=20
GROUP BY DEPTNO;

-- 5. WAQTD number of employees having character 'A' in their names in each job.
SELECT JOB,COUNT(*)
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY JOB;

-- 6. WAQTD number of employees and average salary needed to pay the employees whose salary is greater than 2000 in each department.
SELECT DEPTNO ,COUNT(*),AVG(SAL)
FROM EMP
WHERE SAL>2000
GROUP BY DEPTNO;

-- 7. WAQTD total salary needed to pay and number of SALESMEN in each department.
SELECT DEPTNO, SUM(SAL),COUNT(*)
FROM EMP
WHEER JOB=’SALESMAN’
GROUP BY DEPTNO;

-- 8. WAQTD number of employees with their maximum salaries in each job.
SELECT JOB,COUNT(*),MAX(SAL)
FROM EMP
GROUP BY JOB;

-- 9. WAQTD maximum salary given to an employee working in each department.
SELECT DEPTNO,MAX(SAL)
FROM EMP
GROUP BY DEPTNO;

-- 10. WAQTD number of times each salary is present in the employee table.
SELECTSAL, COUNT(*)
FROM EMP
GROUP BY SAL;



-- ASSIGNMENT QUESTIONS ON HAVING CLAUSE

-- 1. WAQTD department number and number of employees working in each department if there are at least 2 CLERKS in each department.
SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE JOB=’CLERK’
GROUP BY DEPTNO
HAVING COUNT(*)>=2;

-- 2. WAQTD department number and total salary needed to pay all employees if there are at least 4 employees in each department.
SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) >= 4;

-- 3. WAQTD number of employees earning salary more than 1200 in each job, and the total salary needed to pay them must exceed 3800.
SELECT JOB,COUNT(*),SUM(SAL)
FROM EMP
WHERE SAL>12OO
GROUP BY JOB
HAVING SUM(SAL)>3800;

-- 4. WAQTD department number and number of employees working only if there are exactly 2 MANAGERS in each department.
SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE JOB=’MANAGER’
GROUP BY DEPTNO
HAVING COUNT(*)=2;

-- 5. WAQTD job and maximum salary of employees in each job if max salary exceeds 2600.
SELECT JOB,MAX(SAL)
FROM EMP
GROUP BY JOB
MAX(SAL)>2600;

-- 6. WAQTD the salaries which are repeated in the employee table.
SELECT SAL
FROM EMP
GROUP BY SAL
HAVING COUNT(*)>1;

-- 7. WAQTD the hire dates which are duplicated in the employee table.
SELECT HIREDATE
FROM EMP
GROUP BY HIREDATE
HAVING COUNT(*) > 1;

-- 8. WAQTD average salary of each department if average salary is less than 3000.
SELECT DEPTNO,AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL)<3000;

-- 9. WAQTD department number if there are at least 3 employees in each department whose name has character 'A' or 'S'.
SELECT DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%' OR ENAME LIKE '%S%'
GROUP BY DEPTNO
HAVING  COUNT(*)>=3;

-- 10. WAQTD minimum and maximum salaries of each job if minimum salary is more than 1000 and maximum salary is less than 5000.
SELECT JOB,MIN(SAL),MAX(SAL)
FROM EMP
GROUP BY JOB
HAVING MIN(SAL)>1000 AND MAX(SAL)<5000;