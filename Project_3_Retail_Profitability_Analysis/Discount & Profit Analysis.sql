SELECT
	Category, Sub_Category, AVG(Discount) AS Avg_Discount,
	SUM(ISNULL(Profit, 0)) AS Total_Profit
FROM dbo.[Sample - Superstore]
GROUP BY Category, Sub_Category
ORDER BY Total_Profit ASC;
