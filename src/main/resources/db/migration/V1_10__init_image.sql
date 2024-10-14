CREATE TABLE image
(
    id           SERIAL PRIMARY KEY,
    file_name    VARCHAR(255),
    file_type    VARCHAR(50),
    image        BYTEA,
    download_url VARCHAR(255),
    product_id   INT,
    CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES products (id)
);

-- BYTEA equivalent BLOB for Postgres