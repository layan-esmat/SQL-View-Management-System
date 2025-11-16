create database lab9;
use lab9;

create table customers (name varchar(20), age int,
 customerID int primary key,
 rating decimal(3,1));
 
create table clothes ( clothesID int primary key, clothesName varchar(50) ,clothesColor varchar(20));

create table purchase ( purName varchar(50), ID int, foreign key (ID) references clothes(clothesID));

-- INSERTING DATA

insert into customers 
values ('Layan', 22, 101, 4.8),
('Sara', 19, 102, 4.5),
('Faisal', 25, 103, 4.9),
('Nora', 30, 104, 3.9),
('Omar', 27, 105, 4.2);


-- Insert into Clothes


insert into clothes 
values (10, 'T-Shirt', 'red'),
(11, 'Jeans', 'blue'),
(12, 'Jacket', 'black'),
(13, 'Dress', 'red');


insert into purchase 
values ('First Purchase', 10),
('Second Purchase', 13),
('Third Purchase', 11);

-- V1 
create view v1 as select * from customers;

-- V2
create view v2 as
select name, age from customers;

-- V3
create view v3 as 
select c.name as customerName, c.age, cl.clothesName, cl.clothesColor
from customers as c
join clothes as cl on c.customerID = cl.clothesID;

-- V4 
create view v4 as select * from clothes where clothesColor = 'red';

 -- display from v1 where age >20
 select * from v1 where age > 20;
 
 -- insert into view 
 insert into v1 (name, age, customerID, rating)
 values ( 'Maha', 28, 106, 4.7);
 
 drop view v3;
