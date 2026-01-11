SELECT * FROM dbo.[Sample - Superstore];

ALTER TABLE dbo.[Sample - Superstore]
ALTER COLUMN Profit DECIMAL(10,2) NULL;

ALTER TABLE dbo.[Sample - Superstore]
ALTER COLUMN Sales DECIMAL(10,2) NULL;

ALTER TABLE dbo.[Sample - Superstore]
ALTER COLUMN Discount DECIMAL(10,2) NULL;

SELECT * FROM dbo.[Sample - Superstore]
WHERE Profit is NULL;

UPDATE dbo.[Sample - Superstore]
SET Profit = 0
WHERE Profit is NULL;

---Count Total Row----
SELECT COUNT(*) FROM dbo.[Sample - Superstore];

-----Check salse and profit summary----
SELECT SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM dbo.[Sample - Superstore];

---- Check distinct categories and sub-categories----
SELECT Category, Sub_Category, COUNT(*) AS Count
FROM dbo.[Sample - Superstore]
GROUP BY Category, Sub_Category
ORDER BY Count DESC;





