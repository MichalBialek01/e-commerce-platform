CREATE TABLE order_product
(
    order_product_id SERIAL PRIMARY KEY,
    quantity         INT            NOT NULL,
    price            DECIMAL(10, 2) NOT NULL,
    order_id         INT,
    product_id       INT,
    CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders (order_id),
    CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES products (id)
);
