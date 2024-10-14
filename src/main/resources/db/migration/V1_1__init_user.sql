CREATE TABLE "user"
(
    user_id      SERIAL PRIMARY KEY,
    name         VARCHAR(255),
    surname      VARCHAR(255),
    email        VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(20)

);