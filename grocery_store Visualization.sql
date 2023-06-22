-- Total number of products sold so far

select count(*) "Total Number of products" 
from products;

-- 2.Total Revenue So far.
select* from products;
select* from order_details;


select round(sum(price * Quantity),2) as "Total Revenue"
from order_details as od
inner join products as p on p.ProductID = od.ProductID;



