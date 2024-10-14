INSERT INTO address (country, city, postal_code, street_name, building_number)
VALUES ('Poland', 'Warsaw', '00-001', 'Main Street', 10),
       ('Germany', 'Berlin', '10115', 'Kurfürstendamm', 50);

INSERT INTO "user" (name, surname, email, phone_number)
VALUES ('John', 'Doe', 'john.doe@example.com', '123456789'),
       ('Jane', 'Smith', 'jane.smith@example.com', '987654321');

INSERT INTO category (name)
VALUES ('Electronics'),
       ('Clothing');

INSERT INTO customer (businessIdentifier)
VALUES ('BIZ-123456'),
       ('BIZ-789012');

INSERT INTO warehouse_worker (monthly_working_time_hours, employment_date, age, user_id)
VALUES (160, '2022-01-01', 30, 1),
       (180, '2021-06-15', 25, 2);

INSERT INTO sellers (company_name, nip, city, address_id)
VALUES ('Best Electronics', '1234567890', 'Warsaw', 1),
       ('Fashion Hub', '0987654321', 'Berlin', 2);

INSERT INTO products (name, brand, price, inventory, description, seller_id)
VALUES ('Laptop', 'TechBrand', 1500.00, 50, 'High-end laptop', 1),
       ('T-Shirt', 'FashionBrand', 25.00, 100, 'Comfortable T-shirt', 2);

INSERT INTO carts (total_amount)
VALUES (0.00),
       (0.00);

INSERT INTO orders (order_date, total_amount, order_status, customer_id)
VALUES ('2023-05-10', 500.00, 'PENDING', 1);

INSERT INTO invoice (invoice_number, invoice_date, customer_id, order_id, warehouse_worker_id)
VALUES ('INV-001', '2023-05-11', 1, 1, 1);

INSERT INTO invoice_seller (invoice_id, seller_id)
VALUES (1, 1),
       (1, 2);

INSERT INTO cart_products (amount, product_price, total_price, cart_id, product_id)
VALUES (2, 1500.00, 3000.00, 1, 1),
       (3, 25.00, 75.00, 2, 2);

INSERT INTO order_product (quantity, price, order_id, product_id)
VALUES (1, 1500.00, 1, 1);

INSERT INTO image (file_name, file_type, image, download_url, product_id)
VALUES ('laptop_image.png', 'image/png', NULL, 'https://example.com/laptop.png', 1),
       ('tshirt_image.jpg', 'image/jpeg', NULL, 'https://example.com/tshirt.jpg', 2);
