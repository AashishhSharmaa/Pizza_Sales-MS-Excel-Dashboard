-- ---- Key Performace Insicators --------------

-- 1. Total Revenue:

SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;

-- 2. Average Order Value

SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value 
FROM pizza_sales;

-- 3. Total Pizzas Sold

SELECT SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales;

-- 4. Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders 
FROM pizza_sales;

-- 5. Average Pizzas Per Order

SELECT CAST(SUM(quantity) AS DECIMAL(10,2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2))
FROM pizza_sales;