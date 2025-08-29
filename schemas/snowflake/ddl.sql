-- Snowflake DDL for NL2SQL Chatbot (MVP)

CREATE OR REPLACE TABLE users (
    user_id INT AUTOINCREMENT PRIMARY KEY,
    name STRING,
    email STRING UNIQUE
);

CREATE OR REPLACE TABLE query_logs (
    log_id INT AUTOINCREMENT PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    query_text STRING NOT NULL,
    sql_generated STRING,
    execution_time FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
