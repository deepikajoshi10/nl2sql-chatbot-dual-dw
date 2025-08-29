CREATE TABLE USERS (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE
  );

CREATE TABLE query_logs (
  log_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  query_text TEXT NOT NULL,
  sql_generated TEXT,
  execution_time FLOAT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );
