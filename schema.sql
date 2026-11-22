-- Christina's Closet
-- Author: Christina Vo
-- Lab 13: Database Schema

CREATE TABLE IF NOT EXISTS orders (
    order_id TEXT PRIMARY KEY,
    customer TEXT NOT NULL,
    item TEXT NOT NULL,
    status TEXT NOT NULL,
    address TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS products (
    name TEXT PRIMARY KEY,
    price REAL NOT NULL,
    stock INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS change_requests (
    number INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id TEXT NOT NULL,
    new_address TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'waiting'
);

-- Sample orders
INSERT OR IGNORE INTO orders
(order_id, customer, item, status, address)
VALUES
('C100', 'Emma Wilson', 'vintage denim jacket', 'shipped', '15 Oak Street'),
('C101', 'Olivia Brown', 'floral sundress', 'processing', '24 Pine Street'),
('C102', 'Sophia Martinez', 'black leather purse', 'delivered', '36 Maple Street'),
('C103', 'Ava Johnson', 'white linen blouse', 'shipped', '48 Cedar Street'),
('C104', 'Mia Davis', 'high-waisted jeans', 'processing', '59 Elm Street'),
('C105', 'Isabella Taylor', 'cropped cardigan', 'delivered', '72 Birch Street');

-- Sample products
INSERT OR IGNORE INTO products
(name, price, stock)
VALUES
('vintage denim jacket', 35.00, 1),
('floral sundress', 22.00, 3),
('black leather purse', 28.00, 2),
('white linen blouse', 18.00, 4),
('high-waisted jeans', 30.00, 2),
('cropped cardigan', 20.00, 5);

-- change_requests intentionally starts empty.
-- Customer requests will be added through the change tool.
