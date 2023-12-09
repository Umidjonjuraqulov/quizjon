CREATE TABLE IF NOT EXISTS users (
  id serial PRIMARY KEY, 
  name VARCHAR(100), 
  phone_number VARCHAR(13), 
  created_at TIMESTAMP, 
  school VARCHAR(255), 
  department VARCHAR(255), 
  login VARCHAR(50) UNIQUE NOT NULL, 
  password VARCHAR(50) NOT NULL
); 

CREATE TABLE IF NOT EXISTS subsciption_type(
  id serial PRIMARY KEY, 
  name VARCHAR(100)
)
  
