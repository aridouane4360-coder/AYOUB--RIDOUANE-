-- Student Management App — Database initialization
CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

CREATE TABLE IF NOT EXISTS students (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name  VARCHAR(100) NOT NULL,
    email      VARCHAR(150) NOT NULL UNIQUE,
    age        INT          NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample data
INSERT INTO students (first_name, last_name, email, age) VALUES
  ('Ahmed',   'Benali',   'ahmed.benali@example.com',   22),
  ('Fatima',  'Zahra',    'fatima.zahra@example.com',   21),
  ('Youssef', 'El Idrissi','youssef.elidrissi@example.com', 23),
  ('Maryam',  'Tazi',     'maryam.tazi@example.com',    20);
