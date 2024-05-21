-- Testing Queries
-- Select from Departments table
SELECT * FROM Departments;

-- Select from Positions table
SELECT * FROM Positions;

-- Select from Job_Openings table
SELECT * FROM Job_Openings;

-- Select from Applicants table
SELECT * FROM Applicants;

-- Select from Skills table
SELECT * FROM Skills;

-- Select from Experience table
SELECT * FROM Experience;

-- Select from Education table
SELECT * FROM Education;

-- Select from Referrals table
SELECT * FROM Referrals;

-- Select from Applications table
SELECT * FROM Applications;

-- Select from Interviews table
SELECT * FROM Interviews;

-- Select all applicants who applied for 'Software Engineer' position
SELECT a.First_name, a.Last_name, p.Position_name
FROM Applicants a
JOIN Applications ap ON a.Applicant_id = ap.Applicant_id
JOIN Job_Openings jo ON ap.Opening_id = jo.Opening_id
JOIN Positions p ON jo.Position_id = p.Position_id
WHERE p.Position_name = 'Software Engineer';

-- List all interviews with notes
SELECT i.Interview_date, i.Interview_notes, a.First_name, a.Last_name
FROM Interviews i
JOIN Applications ap ON i.Application_id = ap.Application_id
JOIN Applicants a ON ap.Applicant_id = a.Applicant_id;

-- Show the skills of each applicant
SELECT a.First_name, a.Last_name, s.Skill_name
FROM Applicants a
JOIN Experience e ON a.Applicant_id = e.Applicant_id
JOIN Skills s ON e.Applicant_id = s.Skill_id;
