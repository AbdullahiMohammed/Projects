create database testDb;
use testdb;
show tables;
create table products(id int primary key, name varchar(50), price int);
insert into products(id, name, price) values(1, 'Sugar', 150), (2, 'Salt', 50);
select * from products;
-- update price of salt from 50 to 70
replace into products(id, name, price) values(2, 'Salt', 70);
select * from products;
