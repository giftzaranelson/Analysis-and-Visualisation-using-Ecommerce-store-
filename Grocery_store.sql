create database Grocery_store;



-- deacribe a table
describe customer;

select* from category;
select* from employees;
select* from products;
select* from order_details;

create table Employees(
EmployeeID Integer not null,
  firstname varchar(255) default null,
  lastname varchar(255) default null,
  birthdate date default null,
  photo varchar(255) default null,
  Notes text
  );
  
  select* from employees;
  

create table products(
 productID int not null,
productName varchar(255),
supplierId int not null,
categoryId int not null,
unit varchar(255),
price double not null
);

select* from products;	



create table order_details(
orderDetailID INT not null,
orderID int default null,
productID int default null,
Quantity int default null
);

select* from order_details;




create table suppliers(
supplierID INT not null,
SupplierName varchar(255) default null,
ContactName varchar(255) default null,
Address varchar(255) default null,
City varchar(255) default null,
postalCode varchar(255) default null,
Country varchar(255) default null,
phone varchar(255) default null
);

select* from suppliers;



create  table orders(
orderID INT not null,
CustomerID int default null,
EmployeeID int default null,
OrderDate int default null,
ShipperID int default null

);



create table categories(
CategoryID int not null,
CategoryName varchar(255) default null,
Description varchar(255) default null
);
select* from categories;

create table customers(
customerID INT not null,
customerName varchar(255) default null,
ContactName varchar(255) default null,
Address varchar(255) default null,
City varchar(255) default null,
postalCode varchar(255) default null,
Country varchar(255) default null
);

select* from customers;


create table  shippers(
shipperID INT not null,
ShipperName varchar(255) default null,
phone varchar(255) default null
);

select* from shippers;


------------ STEP 2 load ALL DATA INTO table--------------------------
-- Import data using Load data Wiszard------

insert into products(productID,productName,supplierid,categoryID,unit,price)
values (77,"original Frankfurter grune SOBE", 12,2, "12 Boxes",13);



----- STEP 3: ADD CONSTRAINT TO ALL TABLE-------

-- add a primary key to employee table
alter table categories
add primary key (CategoryID);


-- add a primary key to employee table
alter table employees
add primary key (EmployeeID);


-- add a primary key to customers table
alter table customers
add primary key (customerID);

-- add a primary key to order_details table
alter table order_details
add primary key (orderdetailID);

-- add a primary key to orders table
alter table orders
add primary key (orderID);

-- add a primary key to products table
alter table products
add primary key (productID);

-- add a primary key to shippers table
alter table shippers
add primary key (shipperID);

-- add a primary key to suppliers table
alter table suppliers
add primary key (supplierID);

--- add foreign keys to table orders

-- add an index
alter table orders
add key customerID (customerID),
add key EmployeeID (EmployeeID),
add key shipperID (shipperID);

desc orders;

-- add a foreign 
alter table orders
add constraint foreign key (customerID) references customers (customerID),
add constraint foreign key (EmployeeID) references employees(EmployeeID),
add constraint foreign key (shipperID) references shippers (shipperID);

-- add a foreign
alter table products
add constraint foreign key (CategoryID) references categories(CategoryID), 
add constraint foreign key (supplierID) references suppliers(supplierID);  

select *
from suppliers;

select *
from shippers;


-- add a foreign
alter table order_details
add constraint foreign key (orderID) references orders (orderID),
add constraint foreign key (productID) references products(productID);

desc order_details;





alter table products
add primary key (productID),
add constraint foreign key (supplierID) references suppliers (supplierID),
add constraint foreign key (CategoryID) references category (customerID);





     
