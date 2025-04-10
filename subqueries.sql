
SELECT productLine, COUNT(*) AS product_count
FROM products
WHERE buyPrice > (SELECT AVG(buyPrice) FROM products)
GROUP BY productLine
ORDER BY product_count desc;



SELECT country, total_payment
FROM (
    SELECT c.country, SUM(p.amount) AS total_payment
    FROM customers c
    JOIN payments p ON c.customerNumber = p.customerNumber
    GROUP BY c.country
) AS country_totals
WHERE total_payment > 50000
ORDER BY total_payment DESC;
