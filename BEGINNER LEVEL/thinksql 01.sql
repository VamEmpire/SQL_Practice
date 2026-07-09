if object_id('amazon_orders','u') is not null
drop table amazon_orders;

create table amazon_orders
(
order_id integer,
order_date date,
product_name varchar(20),
total_price decimal(6,2),
payment_method varchar(20)
);

insert into amazon_orders values (1,'2026-10-01','baby milk',30.5,'UPI');
insert into amazon_orders values (2,'2026-10-05','baby sampoo',300,'credit card');
insert into amazon_orders values (3,'2026-10-01','baby milk',30.5,'UPI');
insert into amazon_orders values (4,'2026-10-05','baby sampoo',300,'credit card');

--select * from amazon_orders;
select top 2 * from amazon_orders;