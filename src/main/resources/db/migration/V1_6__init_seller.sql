CREATE TABLE sellers
(
    seller_id    SERIAL PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    nip          CHAR(10)     NOT NULL,
    city         VARCHAR(255),
    address_id   INT,
    CONSTRAINT nip_length CHECK (LENGTH(nip) = 10),
    CONSTRAINT fk_address_id FOREIGN KEY (address_id) REFERENCES address (address_id)
);