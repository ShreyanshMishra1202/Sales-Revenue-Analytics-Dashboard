-- MySQL 8+ business analysis
SELECT SUM(Revenue) Total_Revenue,SUM(Profit) Total_Profit,
ROUND(SUM(Profit)/SUM(Revenue)*100,2) Profit_Margin_Pct,
COUNT(DISTINCT Order_ID) Orders,SUM(Quantity) Units_Sold,
ROUND(SUM(Revenue)/COUNT(DISTINCT Order_ID),2) AOV FROM sales;

SELECT Year,ROUND(SUM(Revenue),2) Revenue,ROUND(SUM(Profit),2) Profit
FROM sales GROUP BY Year ORDER BY Year;

SELECT Category,ROUND(SUM(Revenue),2) Revenue,ROUND(SUM(Profit),2) Profit,
ROUND(SUM(Profit)/SUM(Revenue)*100,2) Margin_Pct
FROM sales GROUP BY Category ORDER BY Revenue DESC;

SELECT Region,ROUND(SUM(Revenue),2) Revenue,ROUND(SUM(Profit),2) Profit,
ROUND(SUM(Profit)/SUM(Revenue)*100,2) Margin_Pct
FROM sales GROUP BY Region ORDER BY Revenue DESC;

SELECT Product,Category,ROUND(SUM(Revenue),2) Revenue,ROUND(SUM(Profit),2) Profit
FROM sales GROUP BY Product,Category ORDER BY Revenue DESC LIMIT 10;

SELECT Customer_ID,ROUND(SUM(Revenue),2) Revenue,COUNT(DISTINCT Order_ID) Orders
FROM sales GROUP BY Customer_ID ORDER BY Revenue DESC LIMIT 10;

WITH y AS (SELECT Year,SUM(Revenue) Revenue FROM sales GROUP BY Year)
SELECT Year,Revenue,LAG(Revenue) OVER(ORDER BY Year) Previous_Revenue,
ROUND((Revenue-LAG(Revenue) OVER(ORDER BY Year))/LAG(Revenue) OVER(ORDER BY Year)*100,2) YoY_Growth_Pct
FROM y ORDER BY Year;

SELECT Discount_Band,ROUND(SUM(Revenue),2) Revenue,ROUND(SUM(Profit),2) Profit,
ROUND(SUM(Profit)/SUM(Revenue)*100,2) Margin_Pct
FROM sales GROUP BY Discount_Band ORDER BY Discount_Band;

SELECT Sales_Channel,ROUND(SUM(Revenue),2) Revenue,COUNT(DISTINCT Order_ID) Orders
FROM sales GROUP BY Sales_Channel ORDER BY Revenue DESC;