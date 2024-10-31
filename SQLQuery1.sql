create table Customers (
customerid int PRIMARY KEY ,
firstname VARCHAR(30) NOT NULL ,
Lastname VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,
Phone int  check (phone > 0),
adress varchar(30) NOT NULL,
City varchar(30) NOT NULL,
statename  VARCHAR(30) NOT NULL,
ZIPCODE INT CHECK (ZIPCODE > 0)) ;



create table categories (
categoryid int PRIMARY KEY,
categoryname VARCHAR(30) NOT NULL,
Descriptionname VARCHAR(30) NOT NULL,);

create table Products (
productid INT PRIMARY KEY,
Productname VARCHAR(30) NOT NULL,
Descriptionname VARCHAR(30) NOT NULL,
Price int Check (Price > 0),
categoryid INT ,
StockQuantity INT check (StockQuantity > 0),
Constraint const_i Foreign Key (categoryid) References categories (categoryid));
Alter table Products add Constraint const_i Foreign Key (categoryid) References categories (categoryid);

Create table Orders (
Orderid int PRIMARY KEY,
customerid_FK int,
otherdate  DATE ,
TOTALAMOUNT INT ,
Foreign Key (customerid_FK) References Customers (customerid));

Create table OtherDetails ( 
OrderDetailID int PRIMARY KEY,
OrderID_FK int,
ProductID_FK int,
Quantity  int,
UnitPrice int,
Foreign key (OrderID_FK) References Orders (Orderid),
Foreign Key (ProductID_FK) References  Products (productid));
