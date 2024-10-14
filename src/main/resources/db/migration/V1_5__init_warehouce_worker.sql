CREATE TABLE warehouse_worker
(
    warehouse_worker_id        SERIAL PRIMARY KEY,
    monthly_working_time_hours INT,
    employment_date            DATE,
    age                        INT,
    user_id                    INT,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES "user" (user_id)
);
