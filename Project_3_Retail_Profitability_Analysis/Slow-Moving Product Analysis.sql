---Identify the slow moving products---
SELECT TOP 20
	Product_ID, Product_Name, SUM(Quantity) AS Total_Sold
FROM dbo.[Sample - Superstore]
GROUP BY PRODUCT_ID, Product_Name
ORDER BY Total_Sold ASC;