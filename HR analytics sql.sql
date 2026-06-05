CREATE DATABASE hr_analyst;
USE hr_analyst;
SHOW TABLES;

---- 1.Total Employees ----
SELECT COUNT(*) AS Total_Employees
FROM employee;

---- 2.Average Age of Employees ----
SELECT AVG(Age) AS Average_Age
FROM employee;

---- 3.Max of MonthlyIncome ----
SELECT MAX(MonthlyIncome) AS Max_Monthly_Income
FROM employee;

---- 4.Attrition Count ----
SELECT Attrition, COUNT(*) AS Employee_Count
FROM employee
GROUP BY Attrition;

---- 5.Max of MonthlyIncome ----
SELECT 
    Department,
    ROUND(AVG(MonthlyIncome), 2) AS Avg_Monthly_Income
FROM employee
GROUP BY Department
ORDER BY Avg_Monthly_Income DESC;

---- 6.Department-wise Employee Count ----
SELECT 
    Department,
    COUNT(*) AS Employee_Count
FROM employee
GROUP BY Department
ORDER BY Employee_Count DESC;

---- 7.Gender Distribution ----
SELECT 
    Gender,
    COUNT(*) AS Employee_Count
FROM employee
GROUP BY Gender;

---- 8.Avg Years of Service ----
SELECT 
    ROUND(AVG(TotalWorkingYears), 2) AS Avg_Total_Working_Years
FROM employee;