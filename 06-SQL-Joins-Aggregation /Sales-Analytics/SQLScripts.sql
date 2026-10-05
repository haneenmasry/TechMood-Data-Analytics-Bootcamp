-- ÇÓÊÚáÇã INNER JOIN áÑÈØ Sales ãÚ Customers æProducts

SELECT 
    S.SaleID,
    C.FirstName + '  ' + C.LastName AS Customer_Name,
    P.ProductName,
    P.Category,
    S.Quantity,
    S.TotalAmount
FROM Sales S
INNER JOIN Customers C ON S.CustomerID = C.CustomerID
INNER JOIN Products P ON S.ProductID = P.ProductID;

--  LEFT JOIN áÇßÊÔÇİ ÇáÓÌáÇÊ ÛíÑ ÇáãÊØÇÈŞÉ ÇÓÊÚáÇã

SELECT 
    p.ProductID,
    p.ProductName,
    p.Category
FROM Products p
FULL OUTER JOIN Sales s ON p.ProductID = s.ProductID
WHERE s.ProductID IS NULL;


--ÇÓÊÚáÇã ÈÇÓÊÎÏÇã Subquery áÇÓÊÎÑÇÌ ÇáÚãáÇÁ Ãæ ÇáãäÊÌÇÊ æİŞ ÔÑØ ãÍÏÏ

SELECT ProductName, UnitPrice
FROM Products 
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products);

-- ÇÓÊÚáÇã áÇÓÊÎÏÇã SUM æCOUNT æAVG ãÚ GROUP BY

SELECT 
    P.Category,
	P.ProductName,
    COUNT(S.SaleID) AS Number_of_Orders,
    SUM(S.TotalAmount) AS Total_Amount,
    AVG(S.TotalAmount) AS AvgOrderValue
FROM Sales S
INNER JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.Category,P.ProductName
ORDER BY Total_Amount DESC;

-- ÇÓÊÚáÇã áÇÓÊÎÑÇÌ ÅÌãÇáí ÇáãÈíÚÇÊ ÍÓÈ Product æCategory æCustomer

SELECT 
    P.Category,
    COUNT(S.SaleID) AS Number_of_Orders,
    SUM(S.Quantity) AS Totaly_Qty,
    SUM(S.TotalAmount) AS Total_Amount
FROM Sales S
INNER JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.Category
ORDER BY Total_Amount DESC;

SELECT 
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

SELECT 
    C.CustomerID,
    C.FirstName + ' ' + C.LastName AS Customer_Name,
    C.City,
    C.Country,
    COUNT(S.SaleID) AS Number_of_Orders,
    SUM(S.Quantity) AS Total_Qty,
    SUM(S.TotalAmount) AS Total_Amount
FROM Sales S
INNER JOIN Customers C ON S.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.FirstName, C.LastName, C.City, C.Country
ORDER BY Total_Amount DESC;

-- ÇáÊÍÏí ÇáÅÖÇİí

SELECT TOP 5
    C.FirstName + ' ' + C.LastName AS Customer_Name,
    P.ProductName,
    P.Category,
    SUM(S.Quantity) AS Qty,
    SUM(S.TotalAmount) AS Total_Amount
FROM Sales S
INNER JOIN Products P ON S.ProductID = P.ProductID
INNER JOIN Customers C ON S.CustomerID = C.CustomerID
GROUP BY P.ProductName, P.Category, C.FirstName , C.LastName
ORDER BY Total_Amount DESC;

--5 Insights ãä äÊÇÆÌ ÇáÇÓÊÚáÇãÇÊ
--1. ÇáÜ INNER JOIN ßÔİ ÇáİÆÇÊ ÇáßÓÈÇäÉ: æÖÍ áäÇ İæÑÇğ Ôæ ÃßÊÑ İÆÇÊ æãäÊÌÇÊ ÇáÒÈÇÆä  ãŞÈáíä ÚáíåÇ æÈÊÚãá ÃÚáì ãÈíÚÇÊ.
--2. ÇáÜ FULL JOIN ØáÚ äÊíÌÊå İÇÑÛÉ: æåĞÇ ãÚäÇå Åä ßá ÇáãäÊÌÇÊ ÇäÈÇÚÊ æáæ áãÑÉ æÇÍÏÉ¡ æãÇ İí ÈÖÇÚÉ ãÑßæäÉ ÈäÓÈÉ (ÕİÑ ãÈíÚÇÊ)¡ æÏå ãÄÔÑ ããÊÇÒ Úáì ÍÑßÉ ÇáãÎÒæä.
--3. ÇáÜ Subquery ÚÒá ÇáãäÊÌÇÊ ÇáÛÇáíÉ: ÍÏÏ áäÇ ÇáãäÊÌÇÊ Çááí ÓÚÑåÇ ÃÚáì ãä ÇáãÊæÓØ¡ æÏí Çááí åæÇãÔ ÑÈÍåÇ ÖÎãÉ æãÍÊÇÌÉ ÊÓæíŞ ãÎÕÕ.
--4. ÇáÜ GROUP BY ßÔİ ãÚÏá ÇáØáÈÇÊ: æÖÍ Åä İíå ãäÊÌÇÊ ÇáØáÈ ÚáíåÇ Şáíá ÈÓ ÌÇÈÊ İáæÓ ßÊíÑ ÚÔÇä ÛÇáíÉ¡ æãäÊÌÇÊ ÑÎíÕÉ ÇáØáÈ ÚáíåÇ ßÊíÑ æãÌÇÈÊÔ ÅíÑÇÏ ÚÇáí.
--5. ÊÌãíÚ ÇáÚãáÇÁ ÍÏÏ ÒÈÇíä ÇáÜ VIP: ØáÚ áäÇ ŞÇÆãÉ ÈÃÚáì ÒÈÇíä ÕÑİæÇ ãÈÇáÛ ÖÎãÉ ÈÇáãÊÌÑ¡ æáÇÒã äÍÇİÙ Úáíåã