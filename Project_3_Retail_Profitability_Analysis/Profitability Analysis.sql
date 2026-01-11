--- Profit by Category---
SELECT
    Category,
    SUM(ISNULL(Profit, 0)) AS Total_Profit, SUM(Sales) AS Total_Sales,
    ROUND(SUM(ISNULL(Profit, 0)) / NULLIF(SUM(Sales), 0) * 100, 2) AS Profit_Margin
FROM dbo.[Sample - Superstore]
GROUP BY Category;

---Profit by sub_Category----
    SELECT Category, Sub_Category, 
    SUM(ISNULL(Profit, 0)) AS total_profit, SUM(Sales) AS total_sales
FROM dbo.[Sample - Superstore]
GROUP BY Category, Sub_Category
ORDER BY total_profit ASC; --- Low Profit item first

---Profit by Region---

SELECT Region, 
SUM(ISNULL(Profit, 0)) AS Total_Profit, SUM(Sales) AS Total_Sales
FROM dbo.[Sample - Superstore]
GROUP BY Region
ORDER BY Total_Profit DESC;


