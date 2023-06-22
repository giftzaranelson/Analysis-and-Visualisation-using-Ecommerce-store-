select* from categories;

select* from customers;


select* from employees;
select* from order_details;
select* from products;
select* from shippers;
select* from suppliers;
select* from orders;


set sql_safe_updates =0;

-- find out all "Ã­"
select CustomerID,CustomerName
from customers
where CustomerName like "%Ã­%";

-- Relace all "Ã­" with "i"

update customers
set CustomerName = replace(CustomerName,"Ã­", "i");

-- white spaces
update customers
set CustomerName = trim(CustomerName), 
ContactName = trim(ContactName),
Address = trim(Address),
City = trim(City),
PostalCode = trim(PostalCode),
Country = trim(Country);


-- Relace all "Ã©" with "e"

update customers
set City = replace(City,"Ã©", "e");

-- Relace all "Ã¶p" with "op"

update customers
set CustomerName = replace(CustomerName,"Ã¶p", "op");

-- Relace all "pÃ¨re et fils" with "père et fils"

update customers
set CustomerName= replace(CustomerName,"pÃ¨re et fils", "père et fils");
