---Extract Year and Month from Order_Date---
SELECT 
	YEAR ([Order_Date]) AS Ordre_Year,
	MONTH ([Order_Date]) AS Order_Month,
	SUM(Sales) AS Monthly_Sales, SUM(ISNULL(Profit,0)) AS Monthly_Profit
FROM dbo.[Sample - Superstore]
GROUP BY YEAR([Order_Date]), MONTH([Order_Date])
ORDER BY Ordre_Year, Order_Month;

--- Sales trend by category---
SELECT 
	MONTH([Order_Date]) AS Order_Month,
	SUM(Sales) AS Monthly_Sales
FROM dbo.[Sample - Superstore]
GROUP BY Category,MONTH([Order_Date])
Order BY Category, Order_Month;


