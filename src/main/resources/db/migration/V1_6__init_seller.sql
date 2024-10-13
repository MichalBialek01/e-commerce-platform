CREATE TABLE sellers (
                         seller_id SERIAL PRIMARY KEY,
                         company_name VARCHAR(255) NOT NULL,
                         nip CHAR(10) NOT NULL,
                         city VARCHAR(255),
                         CONSTRAINT nip_length CHECK (LENGTH(nip) = 10)
);