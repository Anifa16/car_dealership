CREATE TABLE saleperson(
    saleperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(100),
    phone_num VARCHAR(50)
);
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    saleperson_id INTEGER,
    customer_id INTEGER,
    car_id INTEGER,
    invoice_date TIMESTAMP,
    invoice_amount INTEGER
);
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    vehicle_id_num VARCHAR(50),
    service_ VARCHAR(50),
    model VARCHAR(50),
    year INTEGER 
);
CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    service_ticket_amount VARCHAR(50),
    service_rendered  VARCHAR(100),
    service_time TIMESTAMP,
    customer_id INTEGER
);

CREATE TABLE service_history(
    service_history_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER,
    service_ticket_id INTEGER
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
)



