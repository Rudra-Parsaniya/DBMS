
USE CSE_3B_435

--Part A

select * from Deposit
select * from BORROW
select * from Customers
select ActNo, Cname,AMOUNT from Deposit
select loanno,amount from Borrow
select * from Borrow where BNAME='ANDHERI'
select ActNo,AMOUNT from Deposit where ACTNO=106
select CNAME from BORROW where amount > 5000
select cname from Deposit where ADATE >'1996-dec-1'
select cname from Deposit where ACTNO<105
select *from Customers where CITY ='nagpur' or CITY='delhi'
select * from Customers where city in ('delhi,nagpur') 
select cname,bname from Deposit where AMOUNT>4000 and ACTNO<105
select *from Borrow where AMOUNT>=3000 and AMOUNT<=8000
select *from Borrow where AMOUNT between 3000 and 8000
select *from Deposit where  not bname ='andheri'
select actno , cname , amount from Deposit where bname in ('ajni ,karolbagh ,m.g.road') and actno<104;

--Part B

select top 5 * from deposit
select top 3 * from deposit where amount > 1000
select 5 loanno, amount, Cname from borrow where not BNAME = 'ANDHERI'
select distinct city from customers
select distinct city from branch

--Part C

select top 50 percent * from Borrow
select top 10 percent * from DEPOSIT
select top 25 percent *from Deposit where AMOUNT>5000 
select top 10 percent amount from Borrow
select  distinct cname ,city from Customers
select ((amount*0.1)+ amount) from Borrow 
select loanno from Borrow where loanno%2=0
select loanno from Borrow where loanno%2!=0

