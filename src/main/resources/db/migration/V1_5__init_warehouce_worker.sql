CREATE TABLE warehouse_worker (
                                  warehouse_worker_id SERIAL PRIMARY KEY,
                                  monthly_working_time_hours INT,        -- Liczba przepracowanych godzin miesięcznie
                                  employment_date DATE,                  -- Data zatrudnienia
                                  age INT                                -- Wiek pracownika
);