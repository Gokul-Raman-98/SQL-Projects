USE [Pizza DB];
## Check the data ##
SELECT * FROM pizza_sales;

## Find the total revenue of the pizzas sold ##
SELECT 
ROUND(SUM(total_price),2) AS Total_Revenue
FROM
pizza_sales;

## Find average order value ##
SELECT
ROUND(SUM(total_price) / COUNT(DISTINCT order_id),2) AS Avg_Order_Value
FROM
pizza_sales;

## Find the total pizzas sold ##
SELECT
SUM(quantity) AS Total_Pizza_Sold
FROM
pizza_sales;

## Find the total orders placed ##
SELECT
COUNT (DISTINCT (order_id))
AS Total_Orders
FROM
pizza_sales;

## Find Average Pizzas per order ##
SELECT
CAST(CAST(SUM(quantity) AS DECIMAL(10,2))
/
CAST(COUNT(DISTINCT(order_id)) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_Per_Order
from
pizza_sales;

## Find Daily trend for total orders ##
SELECT DATENAME(DW, order_date) AS order_day,
COUNT(DISTINCT(order_id)) AS Total_orders
FROM
pizza_sales
GROUP BY DATENAME(DW, order_date) ;

## Find hourly trend for total orders##
SELECT
DATEPART(HOUR, order_time) AS order_hours,
COUNT(DISTINCT(order_id)) AS Total_orders
FROM
pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time) ASC;

## Find percentage of sales by pizza category ##
SELECT
pizza_category,
SUM(total_price) * 100 /
(SELECT 
	(SUM(total_price))
	FROM
	pizza_sales) AS Percentage_Sales
FROM
pizza_sales 
GROUP BY pizza_category;

## Find percentage of sales by pizza size ##
SELECT
pizza_size,
SUM(total_price) * 100 /
(SELECT 
	(SUM(total_price))
	FROM
	pizza_sales) AS Percentage_Sales
FROM
pizza_sales 
GROUP BY pizza_size;

## Find total pizzas sold by pizza category ##
SELECT
pizza_category,
SUM(quantity) as Total_Quantity_Sold
FROM
pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;

## Find top 5 best sellers ##
SELECT
TOP 5 pizza_name,
SUM(quantity) AS Total_Pizza_Sold
FROM
pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC;

## Find BOTTOM 5 best sellers ##
SELECT
TOP 5 pizza_name,
SUM(quantity) AS Total_Pizza_Sold
FROM
pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC;





