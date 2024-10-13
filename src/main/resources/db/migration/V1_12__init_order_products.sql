CREATE TABLE order_product (
                               order_product_id SERIAL PRIMARY KEY,
                               quantity INT NOT NULL,
                               price DECIMAL(10, 2) NOT NULL
);