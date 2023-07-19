CREATE TABLE products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL
);
INSERT INTO products (name, quantity, price)
VALUES
  ('Product 1', 10, 19.99),
  ('Product 2', 5, 29.99),
  ('Product 3', 3, 9.99);
-- Incoming stock delivery
SET @product_id := 1; -- Specify the product ID
SET @incoming_stock := 20; -- Specify the incoming stock quantity

REPLACE INTO products (id, name, quantity, price)
VALUES (@product_id, (SELECT name FROM products WHERE id = @product_id),
        (SELECT IFNULL(quantity, 0) + @incoming_stock FROM products WHERE id = @product_id),
        (SELECT price FROM products WHERE id = @product_id));

-- Deduct sold quantities from inventory
SET @product_id := 2; -- Specify the product ID
SET @sold_quantity := 2; -- Specify the sold quantity

REPLACE INTO products (id, name, quantity, price)
VALUES (@product_id, (SELECT name FROM products WHERE id = @product_id),
        (SELECT IFNULL(quantity, 0) - @sold_quantity FROM products WHERE id = @product_id),
        (SELECT price FROM products WHERE id = @product_id));



-- The REPLACE INTO statement is used to update the inventory quantities for specific products. It replaces the existing record with the new values specified in the VALUES clause. If a record with the same id already exists, it is replaced; otherwise, a new record is inserted.

--You can repeat steps 3 and 4 to simulate additional stock deliveries and sales transactions, adjusting the @product_id and @incoming_stock or @sold_quantity variables accordingly.

--Please note that in a real-world scenario, you would typically execute these SQL statements programmatically using a programming language such as Python, Java, or PHP, rather than directly in the MySQL command line. This allows for better automation and integration with other systems.
