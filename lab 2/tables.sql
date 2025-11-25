CREATE TABLE IF NOT EXISTS Users
(
    user_id serial PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    email VARCHAR(254) UNIQUE NOT NULL,
    phone_number VARCHAR(13) UNIQUE,
    address VARCHAR(255) NOT NULL,
    region VARCHAR(100) NOT NULL,
    carts INTEGER,
    reviews INTEGER
);

CREATE TABLE IF NOT EXISTS Category
(
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    products TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Product
(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    info TEXT NOT NULL,
    price NUMERIC(10,2),
    categories TEXT,
    reviews TEXT
);

CREATE TABLE IF NOT EXISTS Review
(
    review_id SERIAL PRIMARY KEY,
    text TEXT NOT NULL,
    rating INTEGER NOT NULL,
    date_creation TIMESTAMP NOT NULL,
    redaction_time TIMESTAMP NOT NULL,

    user_id INTEGER NOT NULL REFERENCES Users(user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    product_id INTEGER NOT NULL REFERENCES Product(product_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Cart
(
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES Users(user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    items TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Delivery
(
    delivery_id SERIAL PRIMARY KEY,
    delivery_method VARCHAR(100) NOT NULL,
    delivery_address VARCHAR(255) NOT NULL,
    order_status VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Payment
(
    payment_id SERIAL PRIMARY KEY,
    transaction_date TIMESTAMP NOT NULL,
    payment_method VARCHAR(100) NOT NULL,
    payment_status VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders
(
    order_id SERIAL PRIMARY KEY,

    cart_id INTEGER NOT NULL REFERENCES Cart(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    delivery_date DATE NOT NULL,
    total_price NUMERIC(10,2) NOT NULL,
    status VARCHAR(50) NOT NULL,

    delivery_id INTEGER NOT NULL REFERENCES Delivery(delivery_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    payment_id INTEGER NOT NULL REFERENCES Payment(payment_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);