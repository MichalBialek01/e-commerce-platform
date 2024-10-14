CREATE TABLE cart_products
(
    cart_product_id SERIAL PRIMARY KEY,
    amount          INT            NOT NULL,
    product_price   DECIMAL(10, 2) NOT NULL,
    total_price     DECIMAL(10, 2) NOT NULL,
    cart_id         INT,
    product_id      INT,
    CONSTRAINT fk_cart_id FOREIGN KEY (cart_id) REFERENCES carts (id),
    CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES products (id)
);