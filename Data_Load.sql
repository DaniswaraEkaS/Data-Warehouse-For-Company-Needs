-- Tabel orders
CREATE TABLE orders(
    order_id integer PRIMARY KEY,
    user_id integer,
    transaction_amount float8,
    num_of_item integer,

    FOREIGN KEY (user_id) REFERENCES users(id)
)


SELECT * FROM orders

-- Tabel users
CREATE TABLE users(
    id int primary key,
     name varchar,
     email varchar,
     age int,
     gender varchar,
     state varchar,
    street_address varchar,
    postal_code varchar,
     city varchar,
     country varchar,
    latitude float8, 
    longitude float8, 
    created_at timestamp
)

SELECT * FROM users

-- Tabel products
CREATE TABLE products(
    id integer primary key,
     cost float8,
     category varchar,
     name varchar,
     brand varchar,
     retail_price float8,
     department varchar,
     sku varchar
)

SELECT * FROM products

-- Tabel order_items
CREATE TABLE order_items(
    id integer primary key,
     order_id integer,
    product_id integer,

     FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(id)
)

SELECT * FROM order_items