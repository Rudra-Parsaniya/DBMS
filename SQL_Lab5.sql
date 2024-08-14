USE CSE_3B_435

CREATE TABLE STUDENT
(
	STUID INT,
	FIRSTNAME VARCHAR(25),
	LASTNAME VARCHAR(25),
	WEBSITE VARCHAR(50),
	CITY VARCHAR(25),
	ADDRESS VARCHAR(100),
)

INSERT INTO STUDENT (STUID, FIRSTNAME, LASTNAME,WEBSITE, CITY, ADDRESS)
VALUES 
	(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'A-303 ''Vasant Kunj'', Rajkot'),
    (1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad', '“Ram Krupa”, Raiya Road'),
    (1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'Raj bhavan plot, near garden'),
    (1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', '“Jig’s Home”, Narol'),
    (1055, 'Harmit', 'Mitws46el', '@me.darshan.com', 'Rajkot', 'B-55, Raj Residency'),
    (1066, 'Ashok', 'Jani', NULL, 'Baroda', 'A502, Club House Building');

--Lab5

--Part - A:

--1. Display the name of students whose name starts with ‘k’. 
SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE 'K%'

--2. Display the name of students whose name consists of five characters. 
SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE'_____'

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters. 
SELECT FIRSTNAME, LASTNAME FROM STUDENT WHERE CITY LIKE '_____%A'

--4. Display all the students whose last name ends with ‘tel’. 
SELECT * FROM STUDENT WHERE LASTNAME LIKE '%TEL'

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
SELECT * FROM STUDENT WHERE FIRSTNAME LIKE 'HU%' AND LASTNAME LIKE '%T'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’. 
SELECT * FROM STUDENT WHERE FIRSTNAME LIKE 'K_Y%'


--7. Display the name of students having no website and name consists of five characters.
SELECT *FROM student
select Website
from student
where Website like '_____' or Website is null ;

--8. Display all the students whose last name consist of ‘jer’. 
select LastName
from student
where LastName like '%jer%';

--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
select city
from student
where city like 'R%' or city like 'B%';

--10. Display all the name students having websites.
select *from student
select Website
from student
where Website is not null

--11. Display all the students whose name starts from alphabet A to H.
select FirstName
from student
where FirstName like '[A-H]%';

--12. Display all the students whose name’s second character is vowel.
select FirstName
from student
where FirstName like '_[a,e,i,o,u]%'

--13. Display the name of students having no website and name consists of minimum five characters.
select FirstName,Website
from student
where FirstName like '_____' and Website is null

--14. Display all the students whose last name starts with ‘Pat’. 
select LastName
from student
where LastName like 'Pat%'

--15. Display all the students whose city name does not starts with ‘b’.
select City
from student
where City not like 'B%'

--Part – B:

--1. Display all the students whose name starts from alphabet A or H.
select FirstName
from student
where FirstName like '[A-H]%';

--2. Display all the students whose name’s second character is vowel and of and start with H.
select FirstName
from student
where FirstName like 'H[a,e,i,o,u]%';

--3. Display all the students whose last name does not ends with ‘a’.
select LastName
from student
where LastName not like '%a';

--4.Display all the students whose first name starts with consonant.
select FirstName
from student
where FirstName NOT like '[A,E,I,O,U]%';

--5. Display all the students whose website contains .net
SELECT *FROM student
select Website
from student
where Website like '%.net';

--Part – C:

--1. Display all the students whose address consist of -.
select Address
from student
where Address like '%-%'

--2. Display all the students whose address contains single quote or double quote.
select Address
from student
where Address like '%''%'

--3. Display all the students whose website contains @.
select Website
from student
where Website like '%@%'

--4. Display all the names those are either four or five characters.
select FirstName
from student
where FirstName like '_____' or FirstName like'____';