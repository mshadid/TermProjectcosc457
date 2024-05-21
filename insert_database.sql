-- Insert sample data into Departments table
INSERT INTO Departments (Dept_name) VALUES ('Human Resources');
INSERT INTO Departments (Dept_name) VALUES ('Engineering');
INSERT INTO Departments (Dept_name) VALUES ('Marketing');
INSERT INTO Departments (Dept_name) VALUES ('Sales');

-- Insert sample data into Positions table
INSERT INTO Positions (Position_name) VALUES ('Software Engineer');
INSERT INTO Positions (Position_name) VALUES ('Data Analyst');
INSERT INTO Positions (Position_name) VALUES ('HR Manager');
INSERT INTO Positions (Position_name) VALUES ('Sales Representative');

-- Insert sample data into Job_Openings table
INSERT INTO Job_Openings (Position_id, Dept_no, Opening_date, Closing_date) VALUES (1, 2, '2024-05-01', '2024-06-01');
INSERT INTO Job_Openings (Position_id, Dept_no, Opening_date, Closing_date) VALUES (2, 2, '2024-05-05', '2024-06-05');
INSERT INTO Job_Openings (Position_id, Dept_no, Opening_date, Closing_date) VALUES (3, 1, '2024-05-10', '2024-06-10');
INSERT INTO Job_Openings (Position_id, Dept_no, Opening_date, Closing_date) VALUES (4, 4, '2024-05-15', '2024-06-15');

-- Insert sample data into Applicants table
INSERT INTO Applicants (First_name, Last_name, Email, Application_date) VALUES ('John', 'Doe', 'john.doe@example.com', CURDATE());
INSERT INTO Applicants (First_name, Last_name, Email, Application_date) VALUES ('Jane', 'Smith', 'jane.smith@example.com', CURDATE());
INSERT INTO Applicants (First_name, Last_name, Email, Application_date) VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', CURDATE());
INSERT INTO Applicants (First_name, Last_name, Email, Application_date) VALUES ('Bob', 'Brown', 'bob.brown@example.com', CURDATE());

-- Insert sample data into Skills table
INSERT INTO Skills (Skill_name) VALUES ('Java');
INSERT INTO Skills (Skill_name) VALUES ('Python');
INSERT INTO Skills (Skill_name) VALUES ('Project Management');
INSERT INTO Skills (Skill_name) VALUES ('Salesforce');

-- Insert sample data into Experience table
INSERT INTO Experience (Applicant_id, Company_name, Position, Start_date, End_date) VALUES (1, 'Tech Corp', 'Intern', '2022-06-01', '2022-08-31');
INSERT INTO Experience (Applicant_id, Company_name, Position, Start_date, End_date) VALUES (2, 'Data Inc.', 'Junior Analyst', '2021-01-01', '2023-01-01');
INSERT INTO Experience (Applicant_id, Company_name, Position, Start_date, End_date) VALUES (3, 'HR Solutions', 'Assistant', '2020-05-01', '2021-05-01');
INSERT INTO Experience (Applicant_id, Company_name, Position, Start_date, End_date) VALUES (4, 'Sales Co.', 'Sales Associate', '2019-04-01', '2023-04-01');

-- Insert sample data into Education table
INSERT INTO Education (Applicant_id, Degree, Institution, Grad_date) VALUES (1, 'BSc Computer Science', 'State University', '2023-05-15');
INSERT INTO Education (Applicant_id, Degree, Institution, Grad_date) VALUES (2, 'BSc Data Science', 'Tech Institute', '2022-05-15');
INSERT INTO Education (Applicant_id, Degree, Institution, Grad_date) VALUES (3, 'BA Human Resources', 'Business College', '2021-05-15');
INSERT INTO Education (Applicant_id, Degree, Institution, Grad_date) VALUES (4, 'BA Marketing', 'Arts University', '2020-05-15');

-- Insert sample data into Referrals table
INSERT INTO Referrals (Applicant_id, Ref_name, Ref_email, Ref_phone) VALUES (1, 'Michael Scott', 'michael.scott@example.com', '555-1234');
INSERT INTO Referrals (Applicant_id, Ref_name, Ref_email, Ref_phone) VALUES (2, 'Pam Beesly', 'pam.beesly@example.com', '555-5678');
INSERT INTO Referrals (Applicant_id, Ref_name, Ref_email, Ref_phone) VALUES (3, 'Jim Halpert', 'jim.halpert@example.com', '555-8765');
INSERT INTO Referrals (Applicant_id, Ref_name, Ref_email, Ref_phone) VALUES (4, 'Dwight Schrute', 'dwight.schrute@example.com', '555-4321');

-- Insert sample data into Applications table
INSERT INTO Applications (Applicant_id, Opening_id, Status, Status_date) VALUES (1, 1, 'Applied', CURDATE());
INSERT INTO Applications (Applicant_id, Opening_id, Status, Status_date) VALUES (2, 2, 'Applied', CURDATE());
INSERT INTO Applications (Applicant_id, Opening_id, Status, Status_date) VALUES (3, 3, 'Applied', CURDATE());
INSERT INTO Applications (Applicant_id, Opening_id, Status, Status_date) VALUES (4, 4, 'Applied', CURDATE());

-- Insert sample data into Interviews table
INSERT INTO Interviews (Application_id, Interview_date, Interview_notes) VALUES (1, '2024-06-01', 'Technical interview went well.');
INSERT INTO Interviews (Application_id, Interview_date, Interview_notes) VALUES (2, '2024-06-02', 'Candidate showed great analytical skills.');
INSERT INTO Interviews (Application_id, Interview_date, Interview_notes) VALUES (3, '2024-06-03', 'Good understanding of HR processes.');
INSERT INTO Interviews (Application_id, Interview_date, Interview_notes) VALUES (4, '2024-06-04', 'Excellent sales experience.');
