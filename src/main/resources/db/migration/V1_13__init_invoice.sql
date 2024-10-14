CREATE TABLE invoice
(
    invoice_id          SERIAL PRIMARY KEY,
    invoice_number      VARCHAR(50)              NOT NULL,
    invoice_date        TIMESTAMP WITH TIME ZONE NOT NULL,
    customer_id         INT,
    order_id            INT,
    warehouse_worker_id INT,
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders (order_id),
    CONSTRAINT fk_worker_id FOREIGN KEY (warehouse_worker_id) REFERENCES warehouse_worker (warehouse_worker_id)
);