CREATE TABLE members (
    membership_id VARCHAR(255) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE items (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(255),
    manufacturer_name VARCHAR(255),
    cost DECIMAL(10, 2),
    weight_kg DECIMAL(5, 2)
);

CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    membership_id VARCHAR(255) REFERENCES members(membership_id),
    item_id INT REFERENCES items(item_id),
    total_item_count INT,
    total_item_price DECIMAL(10, 2),
    total_item_weight DECIMAL(10, 2),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);