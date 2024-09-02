-- Create Logins
CREATE LOGIN AdminLogin WITH PASSWORD = '1234';
CREATE LOGIN TrainingManagerLogin WITH PASSWORD = '5678';
CREATE LOGIN InstructorLogin WITH PASSWORD = '123';
CREATE LOGIN StudentLogin WITH PASSWORD = '678';



USE Ex;

CREATE USER AdminUser FOR LOGIN AdminLogin;
CREATE USER TrainingManagerUser FOR LOGIN TrainingManagerLogin;
CREATE USER InstructorUser FOR LOGIN InstructorLogin;
CREATE USER StudentUser FOR LOGIN StudentLogin;




-- Create database roles
CREATE ROLE AdminRole;
CREATE ROLE TrainingManagerRole;
CREATE ROLE InstructorRole;
CREATE ROLE StudentRole;

alter role AdminRole add member AdminLogin;
alter role TrainingManagerRole add member TrainingManagerLogin;
alter role InstructorRole add member InstructorLogin;
alter role StudentRole add member StudentLogin;



-- Admin role: full control
GRANT CONTROL ON DATABASE::Ex TO AdminRole;

-- Training Manager role: manage training-related data
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Student TO TrainingManagerRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Branch TO TrainingManagerRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Intake TO TrainingManagerRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Track TO TrainingManagerRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Department TO TrainingManagerRole;

-- Instructor role: manage exams and courses
GRANT SELECT, INSERT, UPDATE ON dbo.Exam TO InstructorRole;
GRANT SELECT ON dbo.Course TO InstructorRole;

-- Student role: view exam results and course information
GRANT SELECT ON dbo.Course TO StudentRole;
GRANT SELECT ON dbo.Stud_Course TO StudentRole;
GRANT SELECT ON dbo.Student TO StudentRole;



