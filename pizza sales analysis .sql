select database();
use pizza_db;
select database();
show tables;
select* from`sales dashboard excel file` AS pizza_sales;
select sum(total_price) as total_revenue
 from `sales dashboard excel file` ;
 SELECT sum(TOTAL_PRICE)/count(DISTINCT ORDER_ID) AS AVG_ORDER_VALUE
 FROM `sales dashboard excel file` ;
 select sum(quantity) as total_pizza_sold
 from `sales dashboard excel file` ;
 select count(distinct order_id) as total_orders
 from `sales dashboard excel file` ;
 select sum(quantity)/ count(distinct order_id) as avg_pizzas_per_order
  from `sales dashboard excel file` ;
select dayname(ORDER_date) AS ORDER_DAY, count(distinct order_id) as total_orders
from `sales dashboard excel file` 
group by dayname(ORDER_date);
SELECT 
  DAYNAME(STR_TO_DATE(order_date, '%Y-%m-%d')) AS order_day,
  COUNT(DISTINCT order_id) AS total_orders
FROM `sales dashboard excel file`
GROUP BY order_day
ORDER BY total_orders ;
 select monthname(STR_TO_DATE(order_date, '%Y-%m-%d')) as month_name, count(distinct order_id) as total_orders
 from`sales dashboard excel file`
 group by monthname(STR_TO_DATE(order_date, '%Y-%m-%d'));
 SELECT pizza_category,
 SUM(total_price) as total_sales, sum(total_price)*100 /(select sum(total_price)FROM `sales dashboard excel file`) as PCT
 from `sales dashboard excel file`
group by pizza_category ;
 SELECT pizza_size,
 SUM(total_price) as total_sales, sum(total_price)*100 /(select sum( total_price)FROM `sales dashboard excel file`) as PCT
 from `sales dashboard excel file`
group by pizza_size;
select pizza_name , sum(total_price) as total_revenue
from `sales dashboard excel file` 
group by pizza_name
ORDER BY total_revenue DESC
LIMIT 5; 
select pizza_name , sum(total_price) as total_revenue
from `sales dashboard excel file` 
group by pizza_name
ORDER BY total_revenue ASC
LIMIT 5; 
select pizza_name , count( distinct order_id ) as total_order
from `sales dashboard excel file` 
group by pizza_name
ORDER BY total_order desc
limit 5;
select pizza_category, sum(quantity) as total_quantity_sold
from `sales dashboard excel file` 
where month(STR_TO_DATE(order_date,'%Y-%m-%d')) = 2
group by pizza_category
order by  total_quantity_sold desc

