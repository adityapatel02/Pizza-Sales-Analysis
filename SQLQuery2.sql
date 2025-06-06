select * from pizza_sales

select datename(dw,order_date) as order_day,count(distinct order_id) as Total_orders
from pizza_sales
group by datename(dw,order_date)

select datename(month, order_date) as Month_name,count(distinct order_id) as Total_orders
from pizza_Sales
group by datename(month, order_date)
order by Total_orders desc

select pizza_category,sum(total_price) as Total_sales, sum(total_price)*100 / 
(select sum(total_price) from pizza_Sales where month(order_date) =1) as PCT
from pizza_sales
where month(order_date) =1
group by pizza_category

select pizza_size,round(sum(total_price),2) as Total_sales, round(sum(total_price)*100 / 
(select sum(total_price) from pizza_Sales ),2) as PCT
from pizza_sales
group by pizza_size
order by PCT desc

select top 5 pizza_name, sum(total_price) as Total_Revenue
from pizza_sales
group by pizza_name
order by Total_Revenue desc

select top 5 pizza_name, sum(total_price) as Total_Revenue
from pizza_sales
group by pizza_name
order by Total_Revenue asc

select top 5 pizza_name, sum(quantity) as Total_Quantity
from pizza_sales
group by pizza_name
order by Total_Quantity desc

select top 5 pizza_name, sum(quantity) as Total_Quantity
from pizza_sales
group by pizza_name
order by Total_Quantity asc

select top 5 pizza_name, count(distinct order_id) as Total_Orders
from pizza_sales
group by pizza_name
order by Total_Orders desc

select top 5 pizza_name, count(distinct order_id) as Total_Orders
from pizza_sales
group by pizza_name
order by Total_Orders asc
