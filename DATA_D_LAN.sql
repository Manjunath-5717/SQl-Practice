-- CREATE THESE STRUCTURE OF THE TABLE AND CONNECT THESE TABLE.

CREATE TABLE DOCTOR
(
DOC_ID NUMBER(10) PRIMARY KEY,
DOC_NAME VARCHAR(30),
CONTACT NUMBER(10),
SALARY NUMBER(10,2),
EMAIL_ID VARCHAR(30)
);

CREATE TABLE PATIENT
(
PAT_ID NUMBER(10) PRIMARY KEY,
DOC_ID NUMBER(10),
PAT_PH_NO NUMBER(10),
DISEASE_NAME VARCHAR(30),
TOTAL_BILL NUMBER(10,2),
FOREIGN KEY (DOC_ID) REFERENCES DOCTOR(DOC_ID)
);

-- (RENAME THE TABLE DOCTOR TO DOC & PATIENT TO PAT)

RENAME DOCTOR TO DOC;

RENAME PATIENT TO PAT;

-- CREATE TABLE “CHEF” AS PER THE FOLLOWING INSTRUCTIONS.

CREATE TABLE CHEF
(
Chef_name CHAR(30) NOT NULL,
Chef_rank NUMBER(20) NOT NULL,
Chef_sing_Dish VARCHAR(30) NOT NULL,
Hired_date DATE NOT NULL,
Salary NUMBER(10,3) NOT NULL,
Head_of_the_chef CHAR(30) NOT NULL
);

-- Add a new column “Chef_ph_no” into table “CHEF” & rename it to “Chef_mob_no”.

ALTER TABLE CHEF
ADD Chef_ph_no NUMBER(10);

ALTER TABLE CHEF
RENAME COLUMN Chef_ph_no TO Chef_mob_no;

-- Drop the Head_of_the_chef column from the table.

ALTER TABLE CHEF
DROP COLUMN Head_of_the_chef;

-- For “Chef_name” column change the datatype into VARCHAR (50) & FOR “Salary” column change it to NUMBER (15,7).

ALTER TABLE CHEF
MODIFY Chef_name VARCHAR(50);

ALTER TABLE CHEF
MODIFY Salary NUMBER(15,7);

-- For “Chef_rank” assign a UNIQUE constraint & for “Salary” change it as null.

ALTER TABLE CHEF
ADD CONSTRAINT chef_rank_unique UNIQUE (Chef_rank);

ALTER TABLE CHEF
MODIFY SALARY NULL;

-- For “Hired_date” column 1st assign a unique constraint and then drop that constraint.

ALTER TABLE CHEF
ADD CONSTRAINT hired_date_unique UNIQUE (Hired_date);

ALTER TABLE CHEF
DROP CONSTRAINT hired_date_unique;