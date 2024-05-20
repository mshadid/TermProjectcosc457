-- Create the database
CREATE DATABASE IF NOT EXISTS testdb;

-- Use the database
USE testdb;

-- Create the Applicants table
CREATE TABLE IF NOT EXISTS Applicants (
    Applicant_id INT PRIMARY KEY AUTO_INCREMENT,
    First_name VARCHAR(50),
    Last_name VARCHAR(50)
);
