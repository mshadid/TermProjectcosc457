-- Use the database
USE testdb;

-- Insert sample data into Applicants table
INSERT INTO Applicants (First_name, Last_name, Email, Application_date) VALUES ('John', 'Doe', 'john.doe@example.com', CURDATE());
INSERT INTO Applicants (First_name, Last_name, Email, Application_date) VALUES ('Jane', 'Smith', 'jane.smith@example.com', CURDATE());
INSERT INTO Applicants (First_name, Last_name, Email, Application_date) VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', CURDATE());
INSERT INTO Applicants (First_name, Last_name, Email, Application_date) VALUES ('Bob', 'Brown', 'bob.brown@example.com', CURDATE());