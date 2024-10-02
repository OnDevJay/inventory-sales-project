-- Create Products Table
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY, 
    product_name TEXT NOT NULL,      
    category TEXT                    
);

-- Create Inventory Table
CREATE TABLE inventory (
    inventory_id INTEGER PRIMARY KEY,    
    product_id INTEGER,                  
    stock_level INTEGER NOT NULL,        
    warehouse TEXT NOT NULL,             
    FOREIGN KEY (product_id) REFERENCES products (product_id)
);

-- Create Sales Table
CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY,         
    product_id INTEGER,                  
    sale_date TEXT NOT NULL,             
    quantity_sold INTEGER NOT NULL,      
    sale_amount REAL NOT NULL,           
    FOREIGN KEY (product_id) REFERENCES products (product_id)
);
