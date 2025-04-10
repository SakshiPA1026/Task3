use classicmodels;
-- inner join
SELECT 
    c.customerName, 
    o.orderNumber, 
    o.status
FROM 
    customers c
INNER JOIN 
    orders o ON c.customerNumber = o.customerNumber;
    
    
-- left join
SELECT 
    c.customerName, 
    o.orderNumber
FROM 
    customers c
LEFT JOIN 
    orders o ON c.customerNumber = o.customerNumber;
    
    
-- right join
SELECT 
    c.customerName, 
    o.orderNumber
FROM 
    customers c
RIGHT JOIN 
    orders o ON c.customerNumber = o.customerNumber;
    
    
    
    
    
