-- «” ⁄·«„ Õ”«» ≈Ã„«·Ì «·„»Ì⁄«  ÊÕÃ„ «·„⁄«„·«  Õ”» ﬂ· „œÌ‰…
SELECT 
    C.City AS City_Name,                           
    C.[State Province] AS State_Province,          
    COUNT(S.[Sale Key]) AS Total_Transactions,      
    SUM(S.[Total Excluding Tax]) AS Total_Sales_Amount 
FROM [Fact].[Sale] S                                  
INNER JOIN [Dimension].[City] C                        
    ON S.[City Key] = C.[City Key]                
GROUP BY 
    C.[City], 
    C.[State Province]                                 
ORDER BY Total_Sales_Amount DESC;   

-- «” ⁄·«„ »«” Œœ«„ JOIN ·—»ÿ Fact ÊDimension Tables

SELECT 
    C.City AS City_Name,                           
    C.[State Province] AS State_Province,          
    Customer.Customer AS Customer_Name,            
    Customer.Category AS Customer_Category,           
    Emp.Employee AS Employee_Name,            
    Date.[Calendar Year] AS Sales_Year,                 
    Date.[Month] AS Sales_Month,                       
    S.[Total Excluding Tax] AS Sale_Value_Net,      
    S.[Profit] AS Profit_Value_Amount               
FROM [Fact].[Sale] S                                
INNER JOIN [Dimension].[City] C                       
    ON S.[City Key] = C.[City Key]
INNER JOIN [Dimension].[Customer] Customer                
    ON S.[Customer Key] = Customer.[Customer Key]
INNER JOIN [Dimension].[Employee] Emp                
    ON S.[Salesperson Key] = Emp.[Employee Key]
INNER JOIN [Dimension].[Date] Date                        
    ON S.[Invoice Date Key] = Date.[Date]; 

--  «” Œœ«„GROUP BY ÊAggregation.

SELECT 
    C.City AS City_Name,                          
    Customer.Customer AS Customer_Name,              
    Emp.Employee AS Employee_Name,                         
    COUNT(S.[Sale Key]) AS Total_Orders,           
    SUM(S.[Total Excluding Tax]) AS Total_Amount,  
    SUM(S.[Profit]) AS Total_Profit            
FROM [Fact].[Sale] S
INNER JOIN [Dimension].[City] C ON S.[City Key] = C.[City Key]
INNER JOIN [Dimension].[Customer] Customer ON S.[Customer Key] = Customer.[Customer Key]
INNER JOIN [Dimension].[Employee] Emp ON S.[Salesperson Key] = Emp.[Employee Key]
GROUP BY  C.City, Customer.Customer, Emp.Employee
ORDER BY Total_Amount DESC;

--Create View

CREATE View v_SalesSummary AS
SELECT 
    C.City AS City_Name,                          
    Customer.Customer AS Customer_Name,     
    Emp.Employee AS Employee_Name,  
     COUNT(S.[Sale Key]) AS Total_Orders,           
    SUM(S.[Total Excluding Tax]) AS Total_Amount,  
    SUM(S.[Profit]) AS Total_Profit 
FROM [Fact].[Sale] S
INNER JOIN [Dimension].[City] C ON S.[City Key] = C.[City Key]
INNER JOIN [Dimension].[Customer] Customer ON S.[Customer Key] = Customer.[Customer Key]
INNER JOIN [Dimension].[Employee] Emp ON S.[Salesperson Key] = Emp.[Employee Key]
GROUP BY C.City, Customer.Customer, Emp.Employee;

--«Œ »«— «·‹View Ê«· √ﬂœ „‰ ’Õ… «·‰ «∆Ã. 

SELECT * FROM v_SalesSummary

-- «· ÕœÌ «·≈÷«›Ì

CREATE VIEW v_TopProducts AS
SELECT TOP 10
    Item.[Stock Item] AS Product_Name,                     
    Item.[Color] AS Product_Color,                         
    SUM(S.[Quantity]) AS Total_Units,             
    SUM(S.[Total Excluding Tax]) AS Total_Amount    
FROM [Fact].[Sale] S                                     
INNER JOIN [Dimension].[Stock Item] Item                     
    ON S.[Stock Item Key] = Item.[Stock Item Key]        
GROUP BY Item.[Stock Item], Item.[Color]
ORDER BY Total_Amount DESC;                                    

--«Œ »«— «·‹View Ê«· √ﬂœ „‰ ’Õ… «·‰ «∆Ã.  

SELECT * FROM v_TopProducts






