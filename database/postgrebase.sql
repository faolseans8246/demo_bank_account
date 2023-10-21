
-- USERS TABLE STRUCTURE:   
-- CREATE TABLE users (
-- 	user_id INT NOT NULL PRIMARY KEY,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     email VARCHAR(255) NOT NULL UNIQUE,
--     password VARCHAR(255) NOT NULL,
--     token VARCHAR(255) NOT NULL,
--     code INT NULL,
--     verified INT DEFAULT 0,
--     verified_at DATE,
--     created_at TIMESTAMP,
--     updated_at TIMESTAMP DEFAULT NOW()
-- );


-- BANK ACCOUNTS TABLE STRUCTURE: 
CREATE TABLE accounts (
	account_id INT NOT NULL PRIMARY KEY,
    user_id INT,
    account_number VARCHAR(100) NOT NULL,
    account_name VARCHAR(50) NOT NULL,
    account_type VARCHAR(50) NOT NULL,
    balance DECIMAL(18, 2) DEFAULT 0.00,
    created_at TIMESTAMP,
    updated_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id)
)

-- -- TRANSACTION HISTORY TABLE:
-- CREATE TABLE transaction_table (
-- 	transaction_id INT NOT NULL PRIMARY KEY,
--     account_id INT,
--     transaction_type VARCHAR(50) NOT NULL,
--     amount DECIMAL(18, 2),
--     source VARCHAR(50) NULL,
--     status VARCHAR(50) NULL, -- success / failed
--     reason_code VARCHAR(100) NULL, -- INSUFFICIENT FUNDS
--     created_at TIMESTAMP,
--     FOREIGN KEY(account_id)
-- )

-- -- PAYMENTS TABLE STRUCTURE:
-- CREATE TABLE payments (
-- 	payment_id INT NOT NULL PRIMARY KEY,
--     account_id INT,
--     beneficary VARCHAR(50) NULL,
--     benificary_acc_no VARCHAR(255) NULL,
--     amount DECIMAL(18, 2) NULL,
--     reference_no VARCHAR(100) NULL,
--     status VARCHAR(50) NULL, -- success / failed
--     reason_code VARCHAR(100) NULL, -- INSUFFICIENT FUNDS
--     create_at TIMESTAMP,
--     FOREIGN KEY(account_id)
-- )


-- -- TRANSACTION HISTORY VIEW:
-- SELECT
-- 	t.transaction_id,
--     a.account_id,
--     u.user_id,
--     t.transaction_type,
--     t.amount,
--     t.source,
--     t.status,
--     t.reason_code,
--     t.created_at
-- FROM
-- 	transaction_history AS t
-- INNER JOIN
-- 	accounts AS a
-- ON
-- 	t.account_id = a.account_id
-- INNER JOIN
-- 	users AS u
-- ON
-- 	a.user_id = u.user_id;
    
    
-- -- PAYMENT HISTORY VIEW:
-- SELECT
-- 	p.payment_id,
--     a.account_id,
--     u.user_id,
--     p.beneficiary,
--     p.beneficiary_acc_no,
--     p.amount,
--     p.status,
--     p.reference_no,
--     p.reason_code,
--     p.created_at
-- FROM
-- 	payments AS p
-- INNER JOIN
-- 	accounts AS a
-- ON
-- 	p.account_id = a.account_id
-- INNER JOIN
-- 	users AS u
-- ON
-- 	a.user_id = u.user_id;
    
    

