-- Revenue by region
SELECT Region, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM dbo.[Sample - Superstore]
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top 10 best-selling sub-categories
SELECT Sub_Category, SUM(Sales) AS Total_Sales
FROM dbo.[Sample - Superstore]
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

-- Monthly sales trend
SELECT Order_Date, SUM(Sales) AS Monthly_Sales
FROM dbo.[Sample - Superstore]
GROUP BY Order_Date
ORDER BY Order_Date;

-- Underperforming categories (negative profit)
SELECT Category, Sub_Category, SUM(Profit) AS Total_Profit
FROM dbo.[Sample - Superstore]
GROUP BY Category, Sub_Category
HAVING SUM(Profit) < 0;



