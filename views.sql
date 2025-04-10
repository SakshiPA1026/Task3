use classicmodels;

CREATE OR REPLACE VIEW product_category_sales AS
SELECT 
    pl.productLine AS product_category,
    SUM(od.quantityOrdered * od.priceEach) AS total_sales,
    COUNT(DISTINCT o.orderNumber) AS number_of_orders
FROM 
    productlines pl
JOIN 
    products p ON pl.productLine = p.productLine
JOIN 
    orderdetails od ON p.productCode = od.productCode
JOIN 
    orders o ON od.orderNumber = o.orderNumber
GROUP BY 
    pl.productLine;
    
    SELECT * FROM product_category_sales;




