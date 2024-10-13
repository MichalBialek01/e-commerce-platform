CREATE TABLE address (
                         address_id SERIAL PRIMARY KEY,
                         country VARCHAR(255),
                         city VARCHAR(255),
                         postal_code VARCHAR(20),
                         street_name VARCHAR(255),
                         building_number INTEGER
);
