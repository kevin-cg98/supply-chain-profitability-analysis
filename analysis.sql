-- Author: Kevin Carvajal
-- Project: Supply Chain Performance & Profitability Analysis
-- Description: SQL queries used to analyze profitability, discount impact, and operational performance.


-- 1. Profitability by Region
SELECT   region, 
         SUM(sales) AS total_sales,
         SUM(profit) AS total_profit,
         (SUM(profit)/SUM(sales)) AS profit_margin,
         AVG(discount) AS avg_discount
FROM     orders
GROUP BY region
ORDER BY total_profit DESC;


-- 2. Shipping Performance by Region
SELECT   region,
         ROUND(AVG(TIMESTAMP_DIFF(ship_date, order_date, HOUR)),2) AS avg_shipping_time_hours,
         AVG(discount) AS avg_discount
FROM     orders
GROUP BY region
ORDER BY avg_shipping_time_hours DESC;


-- 3. Shipping Mode Impact in Profit
SELECT    ship_mode,
          ROUND(AVG(TIMESTAMP_DIFF(ship_date, order_date, HOUR)),2) AS avg_shipping_time_hours,
          SUM(sales) AS total_sales,
          SUM(profit) AS total_profit,
          SUM(profit)/sum(sales) AS margin_profit
FROM      orders
GROUP BY  ship_mode


-- 4. Loss-Making Products
SELECT   product_name,
         SUM(profit) AS total_profit,
         AVG(discount) AS avg_discount
FROM     orders
GROUP BY product_name
HAVING   total_profit < 0
ORDER BY total_profit ASC;

-- 5. Number of Products reporting losses by sub-category

SELECT    sub_category,
          COUNT (product_name) AS loss_products

FROM      (SELECT    sub_category,
                     product_name,
                     sum(profit) AS total_profit,
           FROM      orders
           GROUP BY  sub_category, product_name) 
WHERE    total_profit<0 
GROUP BY sub_category
ORDER BY loss_products DESC


-- 6. Category Performance
SELECT   category,
         SUM(sales) AS total_sales,
         SUM(profit) AS total_profit
         ROUND(SUM(profit)/SUM(sales),3) AS avg_margin_profit,
         AVG(discount) AS avg_discount
FROM     orders
GROUP BY category;


-- 7. Discount Impact Analysis
SELECT   sub_category,
         AVG(discount) AS avg_discount,
         SUM(profit) AS total_profit
         (SUM(profit)/SUM(sales)) AS margin_profit
FROM     orders
GROUP BY sub_category
ORDER BY avg_discount DESC;
