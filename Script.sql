CREATE TABLE address (
    address_id SERIAL PRIMARY KEY,
    address VARCHAR(255),
    postcode INTEGER,
    state VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE job (
    job_id SERIAL PRIMARY KEY,
    job_title VARCHAR(100),
    job_industry_category VARCHAR(100)
);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    address_id SERIAL,
    job_id SERIAL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    gender VARCHAR(10),
    DOB DATE,
    wealth_segment VARCHAR(50),
    deceased_indicator boolean,
    owns_car boolean,
    property_valuation INTEGER
);

CREATE TABLE ordr (
    order_id SERIAL PRIMARY KEY,
    order_status VARCHAR(100),
    online_order boolean
);

CREATE TABLE product (
    product_id SERIAL PRIMARY KEY,
    brand VARCHAR(100),
    product_line VARCHAR(100),
    product_class VARCHAR(100),
    product_size VARCHAR(100),
    list_price DECIMAL(10, 2),
    standard_cost DECIMAL(10, 2)
);

CREATE TABLE transaction (
    transaction_id SERIAL PRIMARY KEY,
    customer_id SERIAL,
    product_id SERIAL,
    order_id SERIAL,
    transaction_date DATE
);