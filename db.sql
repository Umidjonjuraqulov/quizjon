CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(100), 
  phone_number VARCHAR(13), 
  created_at TIMESTAMP, 
  school VARCHAR(255), 
  department VARCHAR(255), 
  login VARCHAR(50) UNIQUE NOT NULL, 
  password VARCHAR(50) NOT NULL
); 


CREATE TABLE IF NOT EXISTS subsciption_type(
  id SERIAL PRIMARY KEY, 
  name VARCHAR(100), 
  payment NUMERIC(12, 2), 
  duration INT NOT NULL CHECK (duration >= 0), 
  quiz_count INT NOT NULL CHECK (quiz_count >= 0), 
); 


CREATE TABLE IF NOT EXISTS subscription(
  id SERIAL PRIMARY KEY, 
  user_id INT REFERENCES users(id) ON DELETE SET NULL, 
  subsciption_type_id INT REFERENCES subsciption_type(id) ON DELETE SET NULL, 
  start_date TIMESTAMP, 
  end_date TIMESTAMP, 
  status BOOLEAN NOT NULL, 
  used_quiz_count INT NOT NULL CHECK (used_quiz_count >= 0)  
);


CREATE TABLE IF NOT EXISTS quizzes(
  id SERIAL PRIMARY KEY, 
  user_id INT REFERENCES users(id) ON DELETE SET NULL,  
  name VARCHAR(255)
); 


CREATE TABLE IF NOT EXISTS quizzes(
  id SERIAL PRIMARY KEY, 
  user_id INT REFERENCES users(id) ON DELETE SET NULL,  
  name VARCHAR(255)
); 
