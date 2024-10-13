CREATE TABLE image (
                       id SERIAL PRIMARY KEY,
                       file_name VARCHAR(255),
                       file_type VARCHAR(50),
                       image BYTEA,                             -- Używamy BYTEA do przechowywania danych binarnych
                       download_url VARCHAR(255)
);

-- BYTEA odpowiednik BLOB dla Postgres, jest mapowany