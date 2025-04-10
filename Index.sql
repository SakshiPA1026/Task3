
-- Create an Index on a Join Column
CREATE INDEX idx_customerNumber ON customers(customerNumber);

-- Index on Foreign Key in orders
CREATE INDEX idx_customerNumber ON orders(customerNumber);

-- Index on Frequently Filtered Column (orderDate)
CREATE INDEX idx_orderDate ON orders(orderDate);

-- Index for Searching Products by Name
CREATE INDEX idx_productName ON products(productName);

-- Multi-Column Index (Composite Index)
CREATE INDEX idx_customer_country_city ON customers(country, city);


