create database Bankmanagement_system ;
-- accounts.sql
CREATE TABLE IF NOT EXISTS accounts (
    account_number VARCHAR(12) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    phone VARCHAR(20),
    balance DECIMAL(15, 2) NOT NULL,  -- Precision for currency
    password VARCHAR(255) NOT NULL,    -- Store hashed passwords, not plain text!
    location_code VARCHAR(3) NOT NULL,
    bank_code VARCHAR(3) NOT NULL
);

CREATE TABLE IF NOT EXISTS transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,  -- MySQL uses AUTO_INCREMENT
    account_number VARCHAR(12) NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Use TIMESTAMP
    transaction_type ENUM('DEPOSIT', 'WITHDRAWAL', 'TRANSFER') NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    related_account VARCHAR(12),
    FOREIGN KEY (account_number) REFERENCES accounts(account_number)
);
SELECT user, plugin FROM mysql.user;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Riteshsingh@123';

FLUSH PRIVILEGES;

SELECT user, plugin FROM mysql.user;

select * from  Bankmanagement_system.transactions;
select * from  Bankmanagement_system.accounts;
