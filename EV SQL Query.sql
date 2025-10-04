create database EV_Vehicle

select * from [dbo].[EV SALES]


-- Total Rows and Total sales
SELECT COUNT(*) AS TotalRows, SUM(EV_Sales_Quantity) AS TotalSales
FROM [dbo].[EV SALES]

-- Sales by year
SELECT [Year], SUM(EV_Sales_Quantity) AS SalesByYear
FROM [dbo].[EV SALES]
GROUP BY [Year]
ORDER BY [Year];

--Top 10 states
SELECT TOP 10 State, SUM(EV_Sales_Quantity) AS SalesByState
FROM [dbo].[EV SALES]
GROUP BY State
ORDER BY SalesByState DESC;


-- sales by Vehicle Category
SELECT Vehicle_Category, SUM(EV_Sales_Quantity) AS SalesByCategory
FROM [dbo].[EV SALES]
GROUP BY Vehicle_Category
ORDER BY SalesByCategory DESC;

-- Month trend (YYYY-MM)
SELECT FORMAT([Date],'yyyy-MM') AS YearMonth, SUM(EV_Sales_Quantity) AS MonthlySales
FROM [dbo].[EV SALES]
GROUP BY FORMAT([Date],'yyyy-MM')
ORDER BY YearMonth;











