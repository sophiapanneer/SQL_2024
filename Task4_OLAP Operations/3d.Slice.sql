 
Create table sales_sample (
Product_Id INT Primary key,
product_name varchar(50),
Region varchar(50),
sale_date date,
sale_amount decimal (10,2)
); 

insert into sales_sample ('product_id','product_name','Region','sale_date','sale_amount') values 
('W101','Cashew','North Chennai','05/01/2024','2300.00'),
('W102','Almond','South Chennai','12/01/2024','4000.00'),
('W103','Walnut','West Chennai','23/01/2024','3900.00'),
('W104','Pista','North Chennai','08/02/2024','2000.00'),
('W105','Fig','East Chennai','15/02/2024','3400.00'),
('W106','Black Raisins','South Chennai','27/02/2024','2300.00'),
('W107','Green Raisins','East Chennai','04/03/2024','1200.00'),
('W108','Mixed seeds','West Chennai','19/03/2024','1750.00'),
('W109','Dry Amla','North Chennai','25/04/2024','250.00'),
('W110','Dry Mango','West Chennai','25/04/2024','750.00');

select product_name, sale_date, sale_amount
from sales_sample;
where Region = 'North Chennai'
order by sale_date;
