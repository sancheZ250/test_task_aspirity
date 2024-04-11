CREATE TABLE IF NOT EXISTS Person (
    id SERIAL PRIMARY KEY,
    age INTEGER,
    name VARCHAR(100),
    phone_number VARCHAR(20),
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Person (age, name, phone_number) VALUES (20, 'Dmitrii Shipilov', '+79085951520');