USE sakila;

SELECT *
FROM walmart_sales;
SELECT `Weekly_Sales`, `Fuel_Price`
FROM walmart_sales
WHERE Store =1;

SELECT `Store`, Date, `Weekly_Sales`
FROM walmart_sales
ORDER BY `Store` ASC, `Weekly_Sales` DESC;
SELECT `Store`, Date, `Weekly_Sales`
FROM walmart_sales
WHERE `Holiday_Flag` = 1
ORDER BY `Weekly_Sales` DESC;
SELECT `Store`, SUM(Weekly_Sales) AS total_sales
FROM walmart_sales
GROUP BY Store;
SELECT Store, COUNT(*) AS num_records
FROM walmart_sales
GROUP BY Store
ORDER BY num_records DESC;
SELECT s.`Store`, s.`Date`, s.`Weekly_Sales`,a.`last_update`
FROM walmart_sales s
INNER JOIN address a
 ON s.`Date` = a.`last_update`;
 SELECT Store AS Store_ID, 
       Date AS Sales_Date, 
       Weekly_Sales AS Sales
FROM walmart_sales
LIMIT 5;
SELECT Store, Date, Weekly_Sales,
       DATEDIFF(Date, '2012-01-01') AS Days_From_NewYear
FROM walmart_sales
WHERE Holiday_Flag = 1
ORDER BY Weekly_Sales DESC
LIMIT 3;