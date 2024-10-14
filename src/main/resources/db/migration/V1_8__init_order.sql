CREATE TABLE orders
(
    order_id     SERIAL PRIMARY KEY,
    order_date   DATE           NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    order_status VARCHAR(50)    NOT NULL CHECK (order_status IN
                                                ('PENDING', 'PROCESSING', 'SHIPPED', 'DELIVERED', 'CANCELLED')),
    customer_id  INT,
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);
