CREATE TABLE invoice_seller
(
    invoice_seller_id SERIAL PRIMARY KEY,
    invoice_id        INT,
    seller_id         INT,
    CONSTRAINT fk_invoice_id FOREIGN KEY (invoice_id) REFERENCES invoice (invoice_id),
    CONSTRAINT fk_seller_id FOREIGN KEY (seller_id) REFERENCES sellers (seller_id)
);