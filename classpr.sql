SELECT* FROM Employees;
SELECT* FROM Customers;
SELECT* FROM Orders; 
SELECT* FROM  Maintenance_Task;
SELECT* FROM  Exhibit;
SELECT* FROM  Has ;
SELECT* FROM ENGAGE;
SELECT  DISTINCT C_name
FROM Customers;
SELECT * FROM Finished_Products
WHERE Finished_Price<=139.99;
SELECT* FROM Orders 
WHERE O_Quantity BETWEEN 5 AND 10;
SELECT * FROM  Employees 
ORDER BY E_Name ASC;
SELECT CHARINDEX('le',' Jack Miller') AS MATCHCOLUMN;

SELECT * FROM Maintenance_Task 
WHERE Description IS  NOT  NULL;

SELECT LEN(C_Name) AS Fixedlength
FROM Customers;
SELECT COUNT (RM_Type)AS TOTAL_TYPE FROM Raw_Materials;
SELECT SUM(Billing) AS TOTAL_BILLING FROM Orders;
SELECT MAX (Billing) AS MAXIMUMBILL FROM Orders;
SELECT COUNT (RM_Type)AS TOTAL_TYPE ,Supplier
FROM Raw_Materials
GROUP BY Supplier;
SELECT * FROM Orders LEFT JOIN Customers ON(Orders.C_Id=Customers.C_ID);
SELECT * FROM Maintenance_Task RIGHT  JOIN Manufacturing_Equipment 
ON(Maintenance_Task.Id=Manufacturing_Equipment.ID);
SELECT * FROM  Customers INNER  JOIN Orders ON(Orders.C_Id=Customers.C_ID);