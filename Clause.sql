use classicmodels;

-- explaining types of clause
-- 1. SELECT: Choose what to show
SELECT 
    c.country,
    COUNT(c.customerNumber) AS total_customers,
    SUM(p.amount) AS total_payments

-- 2. FROM: Choose the base table
FROM 
    customers c

-- 3. JOIN (optional for more info)
JOIN 
    payments p ON c.customerNumber = p.customerNumber
    

-- 4. WHERE: Filter rows before grouping
WHERE 
    c.country IS NOT NULL

-- 5. GROUP BY: Group the filtered rows
GROUP BY 
    c.country

-- 6. HAVING: Filter grouped data
HAVING 
    SUM(p.amount) > 50000

-- 7. ORDER BY: Sort the result
ORDER BY 
    total_payments DESC

-- 8. LIMIT: Show only top results
LIMIT 
    3;
