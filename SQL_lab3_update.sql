USE CSE_3B_435

UPDATE DEPOSIT SET AMOUNT=5000 WHERE AMOUNT=3000
UPDATE BORROW SET BNAME='C.G.ROAD' WHERE BNAME='VRCE'
UPDATE DEPOSIT SET ACTNO=111 , AMOUNT=5000 WHERE CNAME='SANDIP'
UPDATE DEPOSIT SET AMOUNT=7000 WHERE CNAME='KRANTI'
UPDATE BRANCH SET BNAME='ANDHERI WEST' WHERE BNAME='ANDHERI'
UPDATE Branch SET BNAME = 'MEHUL' WHERE BNAME = 'NEHRU PLACE'

UPDATE DEPOSIT SET AMOUNT = 5000  where ACTNO BETWEEN 103 AND 107

UPDATE DEPOSIT SET ADATE='1-APRIL-1995' WHERE CNAME='ANIL'

UPDATE DEPOSIT SET AMOUNT= 10000 WHERE CNAME='MINU'

UPDATE DEPOSIT SET AMOUNT = 5000 , ADATE ='1-APRIL-1996' WHERE CNAME = 'PRAMOD'

--PART  C

UPDATE BORROW SET LOANNO = NULL WHERE LOANNO = 321
UPDATE BORROW SET BNAME = NULL WHERE CNAME = 'KRANTI'
SELECT *  FROM BORROW WHERE AMOUNT = NULL
SELECT *  FROM BORROW WHERE BNAME =
