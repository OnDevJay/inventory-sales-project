-- Insert data into Products Table
INSERT INTO products (product_name, category) VALUES
('Laptop', 'Electronics'),
('Smartphone', 'Electronics'),
('Desk Chair', 'Furniture'),
('Tablet', 'Electronics');

-- Insert data into Inventory Table
INSERT INTO inventory (product_id, stock_level, warehouse) VALUES
(1, 50, 'Warehouse A'),
(2, 20, 'Warehouse B'),
(3, 15, 'Warehouse A'),
(4, 30, 'Warehouse C');

-- Insert data into Sales Table
INSERT INTO sales (product_id, sale_date, quantity_sold, sale_amount) VALUES
(1, '2024-01-05', 5, 5000.00),
(2, '2024-01-06', 3, 3000.00),
(3, '2024-01-07', 2, 900.00),
(4, '2024-01-08', 7, 7000.00);
