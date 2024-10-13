CREATE TABLE cart_products (
                               cart_product_id SERIAL PRIMARY KEY,
                               amount INT NOT NULL,
                               product_price DECIMAL(10, 2) NOT NULL,
                               total_price DECIMAL(10, 2) NOT NULL
);