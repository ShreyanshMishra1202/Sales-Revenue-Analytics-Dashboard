CREATE DATABASE IF NOT EXISTS sales_analytics;
USE sales_analytics;
CREATE TABLE sales (
Order_ID VARCHAR(30) PRIMARY KEY, Order_Date DATE, Customer_ID VARCHAR(30),
Customer_Segment VARCHAR(50), Region VARCHAR(30), City VARCHAR(80),
Category VARCHAR(80), Product VARCHAR(100), Quantity INT, Unit_Price DECIMAL(12,2),
Discount DECIMAL(6,4), Revenue DECIMAL(14,2), Cost DECIMAL(14,2), Profit DECIMAL(14,2),
Sales_Channel VARCHAR(50), Year INT, Quarter VARCHAR(5), Month_Number INT, Month VARCHAR(10),
Month_Year VARCHAR(10), Profit_Margin DECIMAL(8,4), Discount_Band VARCHAR(20), Year_Month_Sort INT
);