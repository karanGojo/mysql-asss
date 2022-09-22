DROP DATABASE IF EXISTS Sale;
Create database Sale;
use Sale;

Create table SalesPeople 

( 

snum INT PRIMARY KEY, 

sname VARCHAR(10), 

city VARCHAR(10), 

comm INT 

); 

insert INTO SalesPeople(snum,sname,city,comm) VALUES(1001,"Peel","London",12);
insert INTO SalesPeople(snum,sname,city,comm) VALUES(1002,"Serres","San Jose",13);
insert INTO SalesPeople(snum,sname,city,comm) VALUES(1004,"Motika","London",11);
insert INTO SalesPeople(snum,sname,city,comm) VALUES(1007,"Rifkin","Barcelona",15);
insert INTO SalesPeople(snum,sname,city,comm) VALUES(1003,"Axelrod" ,"Newyork",10);
Select * from SalesPeople;


# TABLE 2 CUSTOMERS
Create table customers 

( 

cnum INT PRIMARY KEY, 

cname VARCHAR(20), 

city VARCHAR(20), 
snum INT,

FOREIGN KEY(snum)  REFERENCES SalesPeople (snum)
);
insert INTO customers(Cnum,Cname,City,Snum) VALUES(2001,"Hofman","London",1001);
insert INTO customers(Cnum,Cname,City,Snum) VALUES(2002,"Giovanni", "Rome", 1003);
insert INTO customers(Cnum,Cname,City,Snum) VALUES(2003,"Liu", "Sanjose", 1002);
insert INTO customers(Cnum,Cname,City,Snum) VALUES(2004,"Grass"," Berlin" ,1002);
insert INTO customers(Cnum,Cname,City,Snum) VALUES(2006,"Clemens", "London", 1001);
insert INTO customers(Cnum,Cname,City,Snum) VALUES(2008,"Cisneros", "Sanjose", 1007);
insert INTO customers(Cnum,Cname,City,Snum) VALUES(2007,"Pereira", "Rome", 1004);
select * from customers;

#TABLE ORDERS
Create table orders

( 

onum INT, 

amt INT, 

odate date, 

cnum INT, 

snum INT, 
FOREIGN KEY(snum)  REFERENCES SalesPeople (snum),
FOREIGN KEY(Cnum)  REFERENCES customers (cnum)

); 
insert INTO orders(onum,amt,odate,Cnum,snum) VALUES(3001,18.69,STR_TO_DATE('03-OCT-1990', '%d-%M-%Y'),2008,1007);
insert INTO orders(onum,amt,odate,Cnum,snum) VALUES(3003,767.19,STR_TO_DATE('03-OCT-1990', '%d-%M-%Y'),2001,1001);
insert INTO orders(onum,amt,odate,Cnum,snum) VALUES(3002,1900.10,STR_TO_DATE('03-OCT-1990', '%d-%M-%Y'),2007,1004);
insert INTO orders(onum,amt,odate,Cnum,snum) VALUES(3005 ,5160.45,STR_TO_DATE('03-OCT-1990', '%d-%M-%Y'),2003,1002);
insert INTO orders(onum,amt,odate,Cnum,snum) VALUES(3006 ,1098.16,STR_TO_DATE('03-OCT-1990', '%d-%M-%Y'),2008,1007);
insert INTO orders(onum,amt,odate,Cnum,snum) VALUES(3009 ,1713.23 ,STR_TO_DATE('04-OCT-1990', '%d-%M-%Y'),2002 ,1003);
insert INTO orders(onum,amt,odate,Cnum,snum) VALUES(3007 ,75.75 ,STR_TO_DATE('04-OCT-1990', '%d-%M-%Y') ,2004 ,1002);
insert INTO orders(onum,amt,odate,Cnum,snum) VALUES(3008  ,4273.00, STR_TO_DATE('05-OCT-1990', '%d-%M-%Y'), 2006, 1001);
insert INTO orders(onum,amt,odate,Cnum,snum) VALUES(3010  ,1309.95 ,STR_TO_DATE('06-OCT-1990', '%d-%M-%Y'), 2004 ,1002);
insert INTO orders(onum,amt,odate,Cnum,snum) VALUES(3011 , 9891.88 ,STR_TO_DATE('06-OCT-1990', '%d-%M-%Y') ,2006 ,1001);
select * from orders;

# question 1- Count the number of Salesperson whose name begin with ‘a’/’A’.
select count(sname) from SalesPeople Where sname like "a%" or sname like"A%";

#question 2- Display all the Salesperson whose all orders worth is more than Rs. 2000.
SELECT *
FROM orders
WHERE amt>2000;

# question 3- Count the number of Salesperson belonging to Newyork.
select count(city) from SalesPeople where city ='Newyork';

# question 4 - Display the number of Salespeople belonging to London and belonging to Paris
SELECT *
  FROM SalesPeople
  WHERE city="London"
  OR city="Paris";
# Question 5- Display the number of orders taken by each Salesperson and their date of orders.
  select snum,odate from orders;


  





