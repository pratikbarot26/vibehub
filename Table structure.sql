-- DROP DATABASE IF EXISTS FinProject;
-- GO
-- CREATE DATABASE FinProject;

-- GO
-- USE FinProject;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_stores_store_state')
ALTER TABLE stores DROP CONSTRAINT fk_stores_store_state;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_employees_employee_store')
ALTER TABLE employees DROP CONSTRAINT fk_employees_employee_store;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_items_item_category')
ALTER TABLE items DROP CONSTRAINT fk_items_item_category;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_items_item_genre')
ALTER TABLE items DROP CONSTRAINT fk_items_item_genre;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_items_item_store')
ALTER TABLE items DROP CONSTRAINT fk_items_item_store;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_transactions_emp_id')
ALTER TABLE transactions DROP CONSTRAINT fk_transactions_emp_id;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_transactions_item_id')
ALTER TABLE transactions DROP CONSTRAINT fk_transactions_item_id;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_transactions_store_id')
ALTER TABLE transactions DROP CONSTRAINT fk_transactions_store_id;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_transactions_cust_id')
ALTER TABLE transactions DROP CONSTRAINT fk_transactions_cust_id;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_transactions_txn_status')
ALTER TABLE transactions DROP CONSTRAINT fk_transactions_txn_status;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_ratings_cust_id')
ALTER TABLE ratings DROP CONSTRAINT fk_ratings_cust_id;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_ratings_item_id')
ALTER TABLE ratings DROP CONSTRAINT fk_ratings_item_id;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_ratings_item_category')
ALTER TABLE ratings DROP CONSTRAINT fk_ratings_item_category;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_inventory_store_id')
ALTER TABLE store_inventory DROP CONSTRAINT fk_inventory_store_id;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_NAME = 'fk_inventory_item_id')
ALTER TABLE store_inventory DROP CONSTRAINT fk_inventory_item_id;



DROP TABLE IF EXISTS genre_lookup;
CREATE TABLE genre_lookup(
    genre VARCHAR(25) PRIMARY KEY
);

GO
DROP TABLE IF EXISTS category_lookup;
CREATE TABLE category_lookup(
    category VARCHAR(25) PRIMARY KEY
);

GO
DROP TABLE IF EXISTS status_lookup;
CREATE TABLE status_lookup(
    txn_status VARCHAR(20) PRIMARY KEY
);

GO
DROP TABLE IF EXISTS state_lookup;
CREATE TABLE state_lookup(
    state_value CHAR(2) PRIMARY KEY
);

--creating main tables
GO
DROP TABLE IF EXISTS stores;
CREATE TABLE stores(
    store_id INT IDENTITY PRIMARY KEY,
    store_street VARCHAR(25) NOT NULL,
    store_city VARCHAR(20) NOT NULL,
    store_state CHAR(2) NOT NULL,
    store_country VARCHAR(20) NOT NULL,
    store_zipcode VARCHAR(10) NOT NULL,
    store_phone VARCHAR(10) UNIQUE NOT NULL,
    store_email VARCHAR(30) UNIQUE NOT NULL
);

ALTER TABLE stores ADD CONSTRAINT fk_stores_store_state
FOREIGN KEY (store_state) REFERENCES state_lookup(state_value);

GO
DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
    employee_id INT IDENTITY PRIMARY KEY,
    employee_firstname VARCHAR(20) NOT NULL,
    employee_lastname VARCHAR(20) NOT NULL,
    employee_ssn CHAR(11) UNIQUE NOT NULL,
    employee_email VARCHAR(30) UNIQUE NOT NULL,
    employee_phone VARCHAR(10) UNIQUE NOT NULL,
    employee_dob DATE NOT NULL,
    employee_store_id INT NOT NULL,
    employee_salary INT NOT NULL,
    employee_jobtitle VARCHAR(20) NOT NULL,
    employee_joining_date DATE NOT NULL,
    employee_termination_date DATE,
    employee_password VARCHAR(20) DEFAULT 'Test123'
);

ALTER TABLE employees ADD CONSTRAINT fk_employees_employee_store 
FOREIGN KEY (employee_store_id) REFERENCES stores(store_id);

GO
DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
    customer_id INT IDENTITY PRIMARY KEY,
    customer_firstname VARCHAR(20) NOT NULL,
    customer_lastname VARCHAR(20) NOT NULL,
    customer_email VARCHAR(30) UNIQUE NOT NULL,
    customer_phone VARCHAR(10) NOT NULL,
    customer_dob DATE NOT NULL,
    customer_age AS DATEDIFF(YEAR,customer_dob,CONVERT(date,GETDATE())),
    customer_rental_count INT DEFAULT 0,
    customer_late_count INT DEFAULT 0,
    customer_password VARCHAR(20) DEFAULT 'NewUser123'
);


GO
DROP TABLE IF EXISTS items;
CREATE TABLE items(
    item_id INT IDENTITY PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    item_category VARCHAR(25) NOT NULL,
    item_genre VARCHAR(25) NOT NULL,
    item_price DECIMAL(5,2) NOT NULL,
    item_late_fee DECIMAL(4,2),
    item_avg_rating DECIMAL(2,1),
    item_total_ratings INT,
);

ALTER TABLE items ADD 
CONSTRAINT fk_items_item_category FOREIGN KEY (item_category) REFERENCES category_lookup(category),
CONSTRAINT fk_items_item_genre FOREIGN KEY (item_genre) REFERENCES genre_lookup(genre);

GO
DROP TABLE IF EXISTS store_inventory;
CREATE TABLE store_inventory(
    inventory_store_id INT NOT NULL,
    inventory_item_id INT NOT NULL,
    actual_quantity INT NOT NULL,
    available_quantity INT NOT NULL,
    PRIMARY KEY (inventory_store_id, inventory_item_id)
);

ALTER TABLE store_inventory ADD
CONSTRAINT fk_inventory_store_id FOREIGN KEY (inventory_store_id) REFERENCES stores(store_id),
CONSTRAINT fk_inventory_item_id FOREIGN KEY (inventory_item_id) REFERENCES items(item_id);

GO
DROP TABLE IF EXISTS transactions;
CREATE TABLE transactions(
    transaction_id INT IDENTITY PRIMARY KEY,
    transaction_employee_id INT NOT NULL,
    transaction_customer_id INT NOT NULL,
    transaction_item_id INT NOT NULL,
    transaction_rental_date  AS CONVERT(date,GETDATE()),
    transaction_estimated_return_date AS DATEADD(WEEK,1,CONVERT(date,GETDATE())),
    transaction_actual_return_date DATE,
    transaction_store_id INT NOT NULL,
    transaction_status VARCHAR(20) DEFAULT 'Issued',
    transaction_amount DECIMAL(5,2)
);
-- DROP INDEX IF EXISTS idx_txn_keys ON transactions;
-- CREATE INDEX idx_txn_keys ON transactions(transaction_customer_id, transaction_employee_id, transaction_store_id, transaction_item_id);

ALTER TABLE transactions ADD
CONSTRAINT fk_transactions_emp_id FOREIGN KEY (transaction_employee_id) REFERENCES employees(employee_id),
CONSTRAINT fk_transactions_item_id FOREIGN KEY (transaction_item_id) REFERENCES items(item_id),
CONSTRAINT fk_transactions_store_id FOREIGN KEY (transaction_store_id) REFERENCES stores(store_id),
CONSTRAINT fk_transactions_txn_status FOREIGN KEY (transaction_status) REFERENCES status_lookup(txn_status),
CONSTRAINT fk_transactions_cust_id FOREIGN KEY (transaction_customer_id) REFERENCES customers(customer_id);
-- CONSTRAINT chk_return_date_validation CHECK(transaction_actual_return_date >= transaction_rental_date);

GO
DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings(
    rating_id INT IDENTITY PRIMARY KEY,
    rating_by_customer_id INT NOT NULL,
    rating_item_id INT NOT NULL,
    rating_value INT,
    rating_comment VARCHAR(255)
);

ALTER TABLE ratings ADD
CONSTRAINT fk_ratings_cust_id FOREIGN KEY (rating_by_customer_id) REFERENCES customers(customer_id),
CONSTRAINT fk_ratings_item_id FOREIGN KEY (rating_item_id) REFERENCES items(item_id);

GO
select * from genre_lookup
select * from category_lookup
select * from status_lookup
select * from state_lookup
select * from stores
select * from employees
select * from customers
select * from items
SELECT * FROM store_inventory
select * from transactions
select * from ratings
