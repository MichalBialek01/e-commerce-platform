CREATE TABLE invoice (
                         invoice_id SERIAL PRIMARY KEY,
                         invoice_number VARCHAR(50) NOT NULL,
                         invoice_date TIMESTAMP WITH TIME ZONE NOT NULL,

);