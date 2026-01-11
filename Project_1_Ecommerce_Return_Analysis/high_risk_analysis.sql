
-- High Risk Orders Analysis--

--Total orders
SELECT 
	COUNT(*) AS total_orders
FROM dbo.powerbi_return_risk_data;

--Return Rate %
SELECT 
	ROUND(SUM(CAST(returned AS FLOAT)) * 100.0 / COUNT(*), 2) 
	AS return_rate_percentage
FROM dbo.powerbi_return_risk_data;

---High Risk Orders
SELECT
	COUNT(*) AS high_risk_orders
FROM dbo.powerbi_return_risk_data
WHERE return_risk_level = 'High';

---Return Rate Category

SELECT category,
       ROUND(SUM(CAST(returned AS FLOAT)) * 100 / COUNT(*), 2) 
	   AS return_rate
FROM dbo.powerbi_return_risk_data
GROUP BY category;

---High Risk Order by Customer Location
SELECT customer_location,
       COUNT(*) AS high_risk_orders
FROM dbo.powerbi_return_risk_data
WHERE return_risk_level = 'High'
GROUP BY customer_location;






