--LAB 6

--MATH FUNCTION
-- PART-A

--1. Display the result of multiplying 5 by 30
SELECT 5 * 30 AS Result;

--2. Find the absolute value of numbers
SELECT ABS(-25) AS AbsoluteValue1,
       ABS(25) AS AbsoluteValue2,
       ABS(-50) AS AbsoluteValue3,
       ABS(50) AS AbsoluteValue4;

--3. Find the smallest integer value greater than or equal to a given number
SELECT CEILING(25.2) AS SmallestInteger1,
       CEILING(25.7) AS SmallestInteger2,
       CEILING(-25.2) AS SmallestInteger3;

--4. Find the largest integer value smaller than or equal to a given number
SELECT FLOOR(25.2) AS LargestInteger1,
       FLOOR(25.7) AS LargestInteger2,
       FLOOR(-25.2) AS LargestInteger3;

		
--5. Find the remainder of division


--6. Calculate the value of a number raised to a power
SELECT POWER(3, 2) AS PowerOf3,
       POWER(4, 3) AS PowerOf4;
	    
--7. Find the square root of numbers
SELECT SQRT(25) AS SquareRoot1,
       SQRT(30) AS SquareRoot2,
       SQRT(50) AS SquareRoot3;

--8. Calculate the square of numbers
SELECT POWER(5,2) AS SquareOf5,
       POWER(15,2) AS SquareOf15,
       POWER(25,2) AS SquareOf25;

--9. Find out the value of PI. 
SELECT PI()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points. 
SELECT ROUND(157.732,2),  ROUND(157.732,0),  ROUND(157.732,-2)

--11. Find out exponential value of 2 and 3. 
SELECT EXP(2),EXP(3)

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG10(2)

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5)

--14. Find sine, cosine and tangent of 3.1415. 
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25), SIGN(0), SIGN(25)

--16. Generate random number using function. 
SELECT RAND()*10



--STRING FUNCTION
-- PART-A


--1. Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank 
SELECT LEN(NULL),LEN('HELLO'),LEN('BLANK')

--2. Display your name in lower & upper case. 
SELECT LOWER('RUDRA'),UPPER('RUDRA')

--3. Display first three characters of your name. 
SELECT LEFT('RUDRA',3)

--4. Display 3rd to 10th character of your name. 
SELECT SUBSTRING('DARSHANABCDE',3,10)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('ABC123EFG','123','XYZ'),REPLACE('ABCABCABC','CABCABC','5AB5AB5AB')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9. 
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9)

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)

--8. Write a query to remove spaces from left of a given string ‘ hello world  ‘. 
SELECT LTRIM(' hello world  ')

--9. Write a query to remove spaces from right of a given string ‘ hello world  ‘.
SELECT RTRIM(' hello world  ')

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’. 
SELECT RIGHT('SQL Server',4),LEFT('SQL Server',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function). 
SELECT CAST(1234.56 AS varchar)

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function). 
SELECT CONVERT(int,10.58)

--13. Put 10 space before your name using function. 
SELECT SPACE(10)+'RUDRA'

--14. Combine two strings using + sign as well as CONCAT (). 
SELECT 'RUDRA'+'PARSANIYA',CONCAT('DARSHAN',' ','UNIVERSITY' )

--15. Find reverse of “Darshan”. 
SELECT REVERSE('DARSHAN')

--16. Repeat your name 3 times.
SELECT REPLICATE('DARSHAN',3)



--DATE FUNCTION
-- PART-A



--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS Today_Date;

--2. Write a query to find new date after 365 day with reference to today. 
SELECT GETDATE() + 365;

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT CONVERT(VARCHAR,GETDATE(),100) ;

--4. Display the current date in a format that appears as 03 Jan 1995. 
SELECT CONVERT(VARCHAR,GETDATE(),106) ;

--5. Display the current date in a format that appears as Jan 04, 96. 
SELECT CONVERT(VARCHAR,GETDATE(),107) ;

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09. 
SELECT DATEDIFF(MONTH, '2008-12-31', '2009-03-31')

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10. 
SELECT DATEDIFF(YEAR, '2012-01-25', '2010-9-14')

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30. 
SELECT DATEDIFF(HOUR, '2012-01-25 7:00', '2012-1-26 10:30')

--9. Write a query to extract Day, Month, Year from given date 12-May-16. 
SELECT DAY('12-MAY-16'),MONTH('12-MAY-16'),YEAR('12-MAY-16')

--10. Write a query that adds 5 years to current date. 
SELECT DATEADD(YEAR,5,GETDATE());

--11. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH,-2,GETDATE());

--12. Extract month from current date using datename () and datepart () function. 
SELECT DATEPART (MONTH,GETDATE());

--13. Write a query to find out last date of current month.

--14. Calculate your age in years and months.
SELECT DATEDIFF(YEAR,'18-MAR-2006',GETDATE()) , DATEDIFF(MONTH,'18-MAR-2006',GETDATE())