CREATE TABLE products
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255)   NOT NULL,
    brand       VARCHAR(255)   NOT NULL,
    price       DECIMAL(10, 2) NOT NULL,
    inventory   INT            NOT NULL,
    description TEXT,
    seller_id   INT,
    CONSTRAINT fk_seller_id FOREIGN KEY (seller_id) REFERENCES sellers (seller_id)
);