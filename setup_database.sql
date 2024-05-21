-- Create the database
CREATE DATABASE IF NOT EXISTS testdb;

-- Use the database
USE testdb;

-- Create Departments table
CREATE TABLE IF NOT EXISTS Departments (
    Dept_no INT PRIMARY KEY AUTO_INCREMENT,
    Dept_name VARCHAR(100) NOT NULL
);

-- Create Positions table
CREATE TABLE IF NOT EXISTS Positions (
    Position_id INT PRIMARY KEY AUTO_INCREMENT,
    Position_name VARCHAR(100) NOT NULL
);

-- Create Job_Openings table
CREATE TABLE IF NOT EXISTS Job_Openings (
    Opening_id INT PRIMARY KEY AUTO_INCREMENT,
    Position_id INT,
    Dept_no INT,
    Opening_date DATE,
    Closing_date DATE,
    FOREIGN KEY (Position_id) REFERENCES Positions(Position_id),
    FOREIGN KEY (Dept_no) REFERENCES Departments(Dept_no)
);

-- Create Applicants table
CREATE TABLE IF NOT EXISTS Applicants (
    Applicant_id INT PRIMARY KEY AUTO_INCREMENT,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Resume TEXT,
    Application_date DATE NOT NULL
);

-- Create Applications table
CREATE TABLE IF NOT EXISTS Applications (
    Application_id INT PRIMARY KEY AUTO_INCREMENT,
    Applicant_id INT,
    Opening_id INT,
    Status VARCHAR(50),
    Status_date DATE,
    FOREIGN KEY (Applicant_id) REFERENCES Applicants(Applicant_id),
    FOREIGN KEY (Opening_id) REFERENCES Job_Openings(Opening_id)
);

-- Create Skills table
CREATE TABLE IF NOT EXISTS Skills (
    Skill_id INT PRIMARY KEY AUTO_INCREMENT,
    Skill_name VARCHAR(100) NOT NULL
);

-- Create Experience table
CREATE TABLE IF NOT EXISTS Experience (
    Experience_id INT PRIMARY KEY AUTO_INCREMENT,
    Applicant_id INT,
    Company_name VARCHAR(100),
    Position VARCHAR(100),
    Start_date DATE,
    End_date DATE,
    FOREIGN KEY (Applicant_id) REFERENCES Applicants(Applicant_id)
);

-- Create Education table
CREATE TABLE IF NOT EXISTS Education (
    Education_id INT PRIMARY KEY AUTO_INCREMENT,
    Applicant_id INT,
    Degree VARCHAR(100),
    Institution VARCHAR(100),
    Grad_date DATE,
    FOREIGN KEY (Applicant_id) REFERENCES Applicants(Applicant_id)
);

-- Create Referrals table
CREATE TABLE IF NOT EXISTS Referrals (
    Referral_id INT PRIMARY KEY AUTO_INCREMENT,
    Applicant_id INT,
    Ref_name VARCHAR(100),
    Ref_email VARCHAR(100),
    Ref_phone VARCHAR(20),
    FOREIGN KEY (Applicant_id) REFERENCES Applicants(Applicant_id)
);

-- Create Interviews table
CREATE TABLE IF NOT EXISTS Interviews (
    Interview_id INT PRIMARY KEY AUTO_INCREMENT,
    Application_id INT,
    Interview_date DATE,
    Interview_notes TEXT,
    FOREIGN KEY (Application_id) REFERENCES Applications(Application_id)
);

-- Create Application_Status table
CREATE TABLE IF NOT EXISTS Application_Status (
    Status_id INT PRIMARY KEY AUTO_INCREMENT,
    Status_name VARCHAR(50) NOT NULL
);