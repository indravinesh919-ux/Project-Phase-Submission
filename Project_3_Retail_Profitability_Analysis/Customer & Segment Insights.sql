SELECT * FROM dbo.[Sample - Superstore];

SELECT Segment, 
	SUM(ISNULL(Profit, 0)) AS Total_Profit, 
	SUM(Sales) AS Total_Sales
FROM dbo.[Sample - Superstore]
GROUP BY Segment
ORDER BY Total_Profit DESC;