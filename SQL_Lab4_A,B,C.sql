USE CSE_3B_435


--Alter
--PART-A
SELECT * FROM DEPOSIT
--1. Add two more columns City VARCHAR (20) and Pincode INT.

ALTER TABLE DEPOSIT ADD CITY VARCHAR(20), PINCODTE INT

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).

ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in amount Column.

ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT

--4. Rename Column ActNo to ANO.

EXEC SP_RENAME 'DEPOSITE.ACTNO' , 'ANO'

--5. Delete Column City from the DEPOSIT table.

ALTER TABLE DEPOSITE DROP COLUMN CITY

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.

EXEC SP_RENAME 'DEPOSIT' , 'DEPOSIT_DETAILS'

--PART-B

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table

EXEC SP_RENAME 'DEPOSIT_DETAILS.ADATE' , 'AOPENDATE'

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.

ALTER TABLE DEPOSIT_DETAILS DROP COLUMN AOPENDATE

--3. Rename Column CNAME to CustomerName.

EXEC SP_RENAME 'DEPOSIT_DETAILS.CNAME' , 'CUSTOMERNAME'

--PART-C

CREATE  TABLE STUDENT_DETAIL
(	
	ENROLLMENT_NO VARCHAR(20),
	SNAME VARCHAR(25),
	CPI DECIMAL(5,2),
	BIRTHDATE DATETIME
)

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).

ALTER TABLE STUDENT_DETAIL ADD CITY VARCHAR(20) NOT NULL , BACKLOG INT

--2. Change the size of NAME column of student_detail from 
--VARCHAR (25) to VARCHAR (35).

ALTER TABLE STUDENT_DETAIL ALTER COLUMN SNAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in CPI Column

ALTER TABLE STUDENT_DETAIL ALTER COLUMN CPI INT

--4. Rename Column Enrollment_No to ENO.

EXEC SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO' , 'ENO'

--5. Delete Column City from the student_detail table.

ALTER TABLE STUDENT_DETAIL DROP COLUMN CITY

--6. Change name of table student_detail to STUDENT_MASTER.

EXEC SP_RENAME 'STUDENT_DETAIL' , 'STUDENT_MASTER'


--Delete,Truncate,Drop

--Part A

--Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000
DELETE FROM DEPOSIT_DETAILS WHERE AMOUNT >=4000

--. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAILS WHERE BNAME = 'CHANDI'

-- Delete all the accounts having account number (ANO) is greater than 105
DELETE FROM DEPOSIT_DETAILS WHERE ACTNO>105

--Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAILS

--Remove Deposit_Detail table. (Use Drop)DROP TABLE DEPOSIT_DETAILS--Part B CREATE TABLE EMPLOYEE_MASTER(	EMPNO INT,	EMPNAME VARCHAR(25),	JOININGDATE DATETIME,	SALARY DECIMAL(8,2),	CITY VARCHAR(20))INSERT INTO EMPLOYEE_MASTER VALUES(101,'KEYUR',05-01-2002,12000.00,'RAJKOT')SELECT * FROM EMPLOYEE_MASTER