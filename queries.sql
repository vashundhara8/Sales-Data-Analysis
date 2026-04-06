-- Preview Data
SELECT * FROM cleaned_sales_data LIMIT 10;

-- Total Revenue
SELECT SUM(sales) AS total_revenue 
FROM cleaned_sales_data;

-- Top 5 Cities by Revenue
SELECT city, SUM(sales) AS revenue
FROM cleaned_sales_data
GROUP BY city
ORDER BY revenue DESC
LIMIT 5;

-- Revenue by Category
SELECT category, SUM(sales) AS revenue
FROM cleaned_sales_data
GROUP BY category
ORDER BY revenue DESC;

-- Revenue by Region
SELECT region, SUM(sales) AS revenue
FROM cleaned_sales_data
GROUP BY region
ORDER BY revenue DESC;

-- Monthly Sales Trend
SELECT year, month, SUM(sales) AS monthly_revenue
FROM cleaned_sales_data
GROUP BY year, month
ORDER BY year, month;

-- Top 5 Customers
SELECT customer_name, SUM(sales) AS total_spent
FROM cleaned_sales_data
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Top 5 Products
SELECT product_name, SUM(sales) AS revenue
FROM cleaned_sales_data
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;

-- Bottom 5 Products
SELECT product_name, SUM(sales) AS revenue
FROM cleaned_sales_data
GROUP BY product_name
ORDER BY revenue ASC
LIMIT 5;

-- Revenue by Segment
SELECT segment, SUM(sales) AS revenue
FROM cleaned_sales_data
GROUP BY segment
ORDER BY revenue DESC;

-- Monthly Revenue (Readable Month Names)
SELECT year, month_name, SUM(sales) AS revenue
FROM cleaned_sales_data
GROUP BY year, month_name, month
ORDER BY year, month;
