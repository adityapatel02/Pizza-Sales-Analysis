select * from pizza_Sales

select sum(total_price) / count(distinct order_id) as average_order_value
from pizza_sales

select sum(quantity) as Total_pizza_solds from pizza_sales

select count(distinct order_id) as Total_Orders from pizza_sales

select cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as Average_pizza_per_order from pizza_sales

