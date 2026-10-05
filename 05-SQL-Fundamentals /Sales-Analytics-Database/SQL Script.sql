--Select All Customers

select * from Customers;

--Select Top Customers

SELECT CustomerID, COUNT(SaleID) AS TotalOrders 
FROM Sales 
GROUP BY CustomerID 
ORDER BY TotalOrders DESC;

--Select Top Selling Products

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM Sales 
WHERE ProductID IN (1, 2, 3, 4, 5)
GROUP BY ProductID 
ORDER BY TotalQuantity DESC;

--using inner join To join Sales with Customers & Products

SELECT 
    S.SaleID AS Order_ID,
	S.SaleDate AS Sale_Date,
    C.FirstName + '  ' + C.LastName AS Customer_Name,
	C.Country AS Customer_Country,
    P.ProductName AS Product_Name,
	P.Category AS Category,
    S.Quantity AS Total_Quantity,
    S.TotalAmount AS Sales_Value
FROM Sales S
INNER JOIN Customers C ON S.CustomerID = C.CustomerID
INNER JOIN Products P ON S.ProductID = P.ProductID
ORDER BY Sales_Value DESC;

-- «” ⁄·«„ ÌﬁÊ„ »⁄—÷ «›÷· «·⁄„·«¡

SELECT TOP 5
    C.CustomerID,
    C.FirstName + ' ' + C.LastName AS Customer_Name,
    C.City,
    C.Country,
    COUNT(S.SaleID) AS Number_of_Orders,
    SUM(S.Quantity) AS Total_Items,
    SUM(S.TotalAmount) AS Total_Amount
FROM Sales S
INNER JOIN Customers C ON S.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.FirstName, C.LastName, C.City, C.Country
ORDER BY Total_Amount DESC;

-- «” ⁄·«„ ÌﬁÊ„ »⁄—÷ «·„‰ Ã«  «·√ﬂÀ— „»Ì⁄«

SELECT TOP 5
    P.ProductID,
    P.ProductName,
    P.Category,
    COUNT(S.SaleID) AS Number_of_Orders,
    SUM(S.Quantity) AS Total_Qty,
    SUM(S.TotalAmount) AS Total_Amount
FROM Sales S
INNER JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.ProductID, P.ProductName, P.Category
ORDER BY Total_Qty DESC;

-- «” ⁄·«„ ÌﬁÊ„ »⁄—÷ ≈Ã„«·Ì «·„»Ì⁄«  Õ”» «·⁄„Ì· √Ê «·„‰ Ã

SELECT 
    P.Category,
    COUNT(S.SaleID) AS Number_Of_Order,
    SUM(S.Quantity) AS Totaly_Qty,
    SUM(S.TotalAmount) AS Total_Amount
FROM Sales S
INNER JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.Category
ORDER BY Total_Amount DESC;

SELECT 
    C.CustomerID,
    C.FirstName + ' ' + C.LastName AS Customer_Name,
    COUNT(S.SaleID) AS Number_Of_Order,
    SUM(S.TotalAmount) AS Total_Amount
FROM Sales S
INNER JOIN Customers C ON S.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.FirstName, C.LastName
ORDER BY Total_Amount DESC;

-- «· ÕœÌ «·≈÷«›Ì 

SELECT 
    C.FirstName + ' ' + C.LastName AS [Customer Name],
    P.ProductName,
    COUNT(S.SaleID) AS Number_of_Orders,
    SUM(S.Quantity) AS Total_Qty,
    SUM(S.TotalAmount) AS Total_Amount
FROM Sales S
INNER JOIN Customers C ON S.CustomerID = C.CustomerID
INNER JOIN Products P ON S.ProductID = P.ProductID
GROUP BY C.FirstName, C.LastName, P.ProductName
ORDER BY Total_Amount DESC;







