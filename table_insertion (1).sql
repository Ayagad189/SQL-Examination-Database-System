insert into Course(course_Id,course_Name,description,Max_degree,Min_degree)
values
    (1, 'Introduction to Programming', 'Basic concepts of programming using Python.', 100, 0),
    (2, 'Data Structures and Algorithms', 'Fundamental data structures and algorithms in computer science.', 100, 0),
    (3, 'Database Systems', 'Principles of database systems and SQL.', 100, 0),
    (4, 'Web Development', 'Building and designing websites and web applications.', 100, 0),
    (5, 'Machine Learning', 'Introduction to machine learning techniques and models.', 100, 0),
    (6, 'Artificial Intelligence', 'Concepts and applications of artificial intelligence.', 100, 0),
    (7, 'Computer Networks', 'Understanding computer networks and communication protocols.', 100, 0),
    (8, 'Operating Systems', 'Fundamentals of operating systems and system programming.', 100, 0),
    (9, 'Software Engineering', 'Principles of software engineering and project management.', 100, 0),
    (10, 'Mobile App Development', 'Creating applications for mobile devices.', 100, 0),
    (11, 'Cybersecurity', 'Fundamentals of cybersecurity and protecting computer systems.', 100, 0),
    (12, 'Cloud Computing', 'Introduction to cloud services and cloud computing architectures.', 100, 0),
    (13, 'Data Science', 'Techniques for data analysis and visualization.', 100, 0),
    (14, 'Big Data Analytics', 'Handling and analyzing large data sets.', 100, 0),
    (15, 'Human-Computer Interaction', 'Design and evaluation of user interfaces and interactions.', 100, 0),
    (16, 'Computer Graphics', 'Techniques for generating and manipulating visual content.', 100, 0),
    (17, 'Game Development', 'Principles and techniques of game design and development.', 100, 0),
    (18, 'Embedded Systems', 'Design and implementation of embedded computing systems.', 100, 0),
    (19, 'Internet of Things', 'Concepts and applications of IoT technologies.', 100, 0),
    (20, 'Bioinformatics', 'Application of computer science to biological data analysis.', 100, 0),
    (21, 'Quantum Computing', 'Introduction to quantum computing principles and algorithms.', 100, 0),
    (22, 'Cryptography', 'Techniques for secure communication and encryption.', 100, 0),
    (23, 'Digital Signal Processing', 'Processing and analysis of digital signals.', 100, 0),
    (24, 'Computer Vision', 'Techniques for enabling computers to interpret visual information.', 100, 0),
    (25, 'Virtual Reality', 'Creation and application of virtual reality environments.', 100, 0),
    (26, 'Augmented Reality', 'Techniques and applications of augmented reality systems.', 100, 0),
    (27, 'Information Retrieval', 'Techniques for retrieving information from large data sets.', 100, 0),
    (28, 'Distributed Systems', 'Principles and practices of distributed computing systems.', 100, 0),
    (29, 'Software Testing', 'Techniques for testing software and ensuring quality.', 100, 0),
    (30, 'Ethical Hacking', 'Understanding and practicing ethical hacking techniques.', 100, 0);



insert into Instructor(inst_Id,inst_Name,inst_Phone,inst_Email,inst_Salary)
values
    (1, 'Alice Johnson', '555-0101', 'alice.johnson@example.com', 50000), 
    (2, 'Bob Smith', '555-0102', 'bob.smith@example.com', 55000),         
    (3, 'Carol White', '555-0103', 'carol.white@example.com', 52000),     
    (4, 'David Brown', '555-0104', 'david.brown@example.com', 53000),     
    (5, 'Emma Davis', '555-0105', 'emma.davis@example.com', 54000),       
    (6, 'Frank Wilson', '555-0106', 'frank.wilson@example.com', 56000),   
    (7, 'Grace Moore', '555-0107', 'grace.moore@example.com', 57000),     
    (8, 'Henry Taylor', '555-0108', 'henry.taylor@example.com', 58000),   
    (9, 'Ivy Anderson', '555-0109', 'ivy.anderson@example.com', 59000),   
    (10, 'Jack Thomas', '555-0110', 'jack.thomas@example.com', 60000),   
    (11, 'Kathy Martinez', '555-0111', 'kathy.martinez@example.com', 61000),
    (12, 'Leo Garcia', '555-0112', 'leo.garcia@example.com', 62000),
    (13, 'Mia Robinson', '555-0113', 'mia.robinson@example.com', 63000),
    (14, 'Nate Hall', '555-0114', 'nate.hall@example.com', 64000),
    (15, 'Olivia Young', '555-0115', 'olivia.young@example.com', 65000),
    (16, 'Paul King', '555-0116', 'paul.king@example.com', 66000),
    (17, 'Quinn Wright', '555-0117', 'quinn.wright@example.com', 67000),
    (18, 'Rachel Scott', '555-0118', 'rachel.scott@example.com', 68000),
    (19, 'Sam Lewis', '555-0119', 'sam.lewis@example.com', 69000),
    (20, 'Tina Clark', '555-0120', 'tina.clark@example.com', 70000),
    (21, 'Ursula Lee', '555-0121', 'ursula.lee@example.com', 71000),
    (22, 'Victor Adams', '555-0122', 'victor.adams@example.com', 72000),
    (23, 'Wendy Nelson', '555-0123', 'wendy.nelson@example.com', 73000),
    (24, 'Xander Carter', '555-0124', 'xander.carter@example.com', 74000),
    (25, 'Yara Mitchell', '555-0125', 'yara.mitchell@example.com', 75000),
    (26, 'Zane Perez', '555-0126', 'zane.perez@example.com', 76000),
    (27, 'Anna Roberts', '555-0127', 'anna.roberts@example.com', 77000),
    (28, 'Ben Turner', '555-0128', 'ben.turner@example.com', 78000),
    (29, 'Cleo Walker', '555-0129', 'cleo.walker@example.com', 79000),
    (30, 'Danielle Harris', '555-0130', 'danielle.harris@example.com', 80000);
-- Update courses with their respective track_Id values
UPDATE Course
SET track_Id = 7
WHERE course_Id = 1;

UPDATE Course
SET track_Id = 2
WHERE course_Id = 2;

UPDATE Course
SET track_Id = 6
WHERE course_Id = 3;

UPDATE Course
SET track_Id = 8
WHERE course_Id = 4;

UPDATE Course
SET track_Id = 7
WHERE course_Id = 5;

UPDATE Course
SET track_Id = 4
WHERE course_Id = 6;

UPDATE Course
SET track_Id = 5
WHERE course_Id = 7;

UPDATE Course
SET track_Id = NULL
WHERE course_Id = 8;

UPDATE Course
SET track_Id = 2
WHERE course_Id = 9;

UPDATE Course
SET track_Id = 12
WHERE course_Id = 10;

UPDATE Course
SET track_Id = 3
WHERE course_Id = 11;

UPDATE Course
SET track_Id = 9
WHERE course_Id = 12;

UPDATE Course
SET track_Id = 1
WHERE course_Id = 13;

UPDATE Course
SET track_Id = 1
WHERE course_Id = 14;

UPDATE Course
SET track_Id = NULL
WHERE course_Id = 15;

UPDATE Course
SET track_Id = NULL
WHERE course_Id = 16;

UPDATE Course
SET track_Id = 19
WHERE course_Id = 17;

UPDATE Course
SET track_Id = 15
WHERE course_Id = 18;

UPDATE Course
SET track_Id = 16
WHERE course_Id = 19;

UPDATE Course
SET track_Id = NULL
WHERE course_Id = 20;

UPDATE Course
SET track_Id = 20
WHERE course_Id = 21;

UPDATE Course
SET track_Id = 3
WHERE course_Id = 22;

UPDATE Course
SET track_Id = NULL
WHERE course_Id = 23;

UPDATE Course
SET track_Id = 17
WHERE course_Id = 24;

UPDATE Course
SET track_Id = NULL
WHERE course_Id = 25;

UPDATE Course
SET track_Id = NULL
WHERE course_Id = 26;

UPDATE Course
SET track_Id = NULL
WHERE course_Id = 27;

UPDATE Course
SET track_Id = NULL
WHERE course_Id = 28;

UPDATE Course
SET track_Id = NULL
WHERE course_Id = 29;

UPDATE Course
SET track_Id = 3
WHERE course_Id = 30;

	
insert into Department(dept_Id,dept_Name,inst_Id)
values 
    (1, 'Computer Science', 1),    
    (2, 'Mathematics', 2),         
    (3, 'Physics', 15),             
    (4, 'Chemistry', 9),           
    (5, 'Biology', 5),             
    (6, 'Engineering', 10),         
    (7, 'Psychology', 7),          
    (8, 'Economics', 6),           
    (9, 'History', 9),             
    (10, 'Philosophy', 11);        


insert into inst_dept(dept_Id,inst_Id)
values
    (3, 1),
    (7, 2),
    (5, 3),
    (2, 4),
    (8, 5),
    (1, 6),
    (6, 7),
    (4, 8),
    (9, 9),
    (10, 10),
    (3, 11),
    (2, 12),
    (7, 13),
    (5, 14),
    (8, 15),
    (6, 16),
    (4, 17),
    (1, 18),
    (10, 19),
    (9, 20),
    (2, 21),
    (7, 22),
    (5, 23),
    (8, 24),
    (1, 25),
    (6, 26),
    (3, 27),
    (10, 28),
    (4, 29),
    (9, 30);


select * from inst_dept
insert into Branch (B_Id,B_Name)
values
    (1, 'North Campus'),      
    (2, 'South Campus'),      
    (3, 'East Campus'),       
    (4, 'West Campus'),       
    (5, 'Central Campus'),    
    (6, 'Downtown Campus'),   
    (7, 'Uptown Campus'),     
    (8, 'Suburban Campus'),   
    (9, 'Rural Campus'),      
    (10, 'Coastal Campus');  

insert into Intake(Int_Id,Int_Name,Int_Year)
values
(1, 'Spring 2020', 2020),
(2, 'Fall 2020', 2020),
(3, 'Spring 2021', 2021),
(4, 'Fall 2021', 2021),
(5, 'Spring 2022', 2022),
(6, 'Fall 2022', 2022),
(7, 'Spring 2023', 2023),
(8, 'Fall 2023', 2023),
(9, 'Spring 2024', 2024),
(10, 'Fall 2024', 2024);

-- Update the first 10 students with Int_Id 1
UPDATE Student
SET Int_Id = 1
WHERE St_ID BETWEEN 1 AND 5;

-- Update the next 10 students with Int_Id 2
UPDATE Student
SET Int_Id = 2
WHERE St_ID BETWEEN 6 AND 10;

-- Update the next 10 students with Int_Id 3
UPDATE Student
SET Int_Id = 3
WHERE St_ID BETWEEN 11 AND 15;

-- Update the next 10 students with Int_Id 4
UPDATE Student
SET Int_Id = 4
WHERE St_ID BETWEEN 16 AND 20;

-- Update the next 10 students with Int_Id 5
UPDATE Student
SET Int_Id = 5
WHERE St_ID BETWEEN 21 AND 25;

-- Update the next 10 students with Int_Id 6
UPDATE Student
SET Int_Id = 6
WHERE St_ID BETWEEN 26 AND 30;

-- Update the next 10 students with Int_Id 7
UPDATE Student
SET Int_Id = 7
WHERE St_ID BETWEEN 31 AND 35;

-- Update the next 10 students with Int_Id 8
UPDATE Student
SET Int_Id = 8
WHERE St_ID BETWEEN 36 AND 40;

-- Update the next 10 students with Int_Id 9
UPDATE Student
SET Int_Id = 9
WHERE St_ID BETWEEN 41 AND 45;

-- Update the last 10 students with Int_Id 10
UPDATE Student
SET Int_Id = 10
WHERE St_ID BETWEEN 46 AND 50;


insert into Track (track_Id,track_Name,dept_Id)
values
(1, 'Data Science', 1),
(2, 'Software Engineering', 2),
(3, 'Cybersecurity', 3),
(4, 'Artificial Intelligence', 1),
(5, 'Network Engineering', 4),
(6, 'Database Management', 1),
(7, 'Machine Learning', 1),
(8, 'Web Development', 2),
(9, 'Cloud Computing', 3),
(10, 'Digital Forensics', 3),
(11, 'DevOps', 2),
(12, 'Mobile Application Development', 2),
(13, 'Blockchain Technology', 3),
(14, 'Business Intelligence', 1),
(15, 'Embedded Systems', 4),
(16, 'Internet of Things (IoT)', 4),
(17, 'Computer Vision', 1),
(18, 'Robotics', 4),
(19, 'Game Development', 2),
(20, 'Quantum Computing', 3);


insert into Student(St_ID,St_Name,St_Phone,St_Email,B_Id)
values
(1, 'John Smith', '555-0101', 'john.smith@example.com', 1),
(2, 'Emily Davis', '555-0102', 'emily.davis@example.com', 2),
(3, 'Michael Johnson', '555-0103', 'michael.johnson@example.com', 3),
(4, 'Sophia Brown', '555-0104', 'sophia.brown@example.com', 4),
(5, 'William Garcia', '555-0105', 'william.garcia@example.com', 1),
(6, 'Olivia Martinez', '555-0106', 'olivia.martinez@example.com', 2),
(7, 'James Rodriguez', '555-0107', 'james.rodriguez@example.com', 3),
(8, 'Isabella Wilson', '555-0108', 'isabella.wilson@example.com', 4),
(9, 'Alexander Lee', '555-0109', 'alexander.lee@example.com', 1),
(10, 'Mia Walker', '555-0110', 'mia.walker@example.com', 2),
(11, 'Daniel Harris', '555-0111', 'daniel.harris@example.com', 3),
(12, 'Charlotte Young', '555-0112', 'charlotte.young@example.com', 4),
(13, 'Matthew Hernandez', '555-0113', 'matthew.hernandez@example.com', 1),
(14, 'Ava King', '555-0114', 'ava.king@example.com', 2),
(15, 'Ethan Scott', '555-0115', 'ethan.scott@example.com', 3),
(16, 'Amelia Green', '555-0116', 'amelia.green@example.com', 4),
(17, 'Noah Adams', '555-0117', 'noah.adams@example.com', 1),
(18, 'Liam Baker', '555-0118', 'liam.baker@example.com', 2),
(19, 'Elijah Gonzalez', '555-0119', 'elijah.gonzalez@example.com', 3),
(20, 'Mason Carter', '555-0120', 'mason.carter@example.com', 4),
(21, 'Benjamin Rivera', '555-0121', 'benjamin.rivera@example.com', 1),
(22, 'Lucas Campbell', '555-0122', 'lucas.campbell@example.com', 2),
(23, 'Henry Mitchell', '555-0123', 'henry.mitchell@example.com', 3),
(24, 'Jack Roberts', '555-0124', 'jack.roberts@example.com', 4),
(25, 'Samuel Phillips', '555-0125', 'samuel.phillips@example.com', 1),
(26, 'Aiden Evans', '555-0126', 'aiden.evans@example.com', 2),
(27, 'Harper Turner', '555-0127', 'harper.turner@example.com', 3),
(28, 'Ella Parker', '555-0128', 'ella.parker@example.com', 4),
(29, 'Oliver Collins', '555-0129', 'oliver.collins@example.com', 1),
(30, 'Grace Edwards', '555-0130', 'grace.edwards@example.com', 2),
(31, 'Jacob Stewart', '555-0131', 'jacob.stewart@example.com', 3),
(32, 'Chloe Morris', '555-0132', 'chloe.morris@example.com', 4),
(33, 'Sebastian Rogers', '555-0133', 'sebastian.rogers@example.com', 1),
(34, 'Avery Jenkins', '555-0134', 'avery.jenkins@example.com', 2),
(35, 'Madison Powell', '555-0135', 'madison.powell@example.com', 3),
(36, 'Logan Perez', '555-0136', 'logan.perez@example.com', 4),
(37, 'David Bailey', '555-0137', 'david.bailey@example.com', 1),
(38, 'Sofia Howard', '555-0138', 'sofia.howard@example.com', 2),
(39, 'Jackson Brooks', '555-0139', 'jackson.brooks@example.com', 3),
(40, 'Aubrey Bell', '555-0140', 'aubrey.bell@example.com', 4),
(41, 'Joshua Ward', '555-0141', 'joshua.ward@example.com', 1),
(42, 'Lily Cooper', '555-0142', 'lily.cooper@example.com', 2),
(43, 'Gabriel Richardson', '555-0143', 'gabriel.richardson@example.com', 3),
(44, 'Zoe Cox', '555-0144', 'zoe.cox@example.com', 4),
(45, 'Andrew Gray', '555-0145', 'andrew.gray@example.com', 1),
(46, 'Mila Sanders', '555-0146', 'mila.sanders@example.com', 2),
(47, 'Joseph Peterson', '555-0147', 'joseph.peterson@example.com', 3),
(48, 'Riley Henderson', '555-0148', 'riley.henderson@example.com', 4),
(49, 'Owen Barnes', '555-0149', 'owen.barnes@example.com', 1),
(50, 'Hannah Price', '555-0150', 'hannah.price@example.com', 2)


UPDATE Student SET track_Id = 1 WHERE St_ID IN (1, 21, 41);
UPDATE Student SET track_Id = 2 WHERE St_ID IN (2, 22, 42);
UPDATE Student SET track_Id = 3 WHERE St_ID IN (3, 23, 43);
UPDATE Student SET track_Id = 4 WHERE St_ID IN (4, 24, 44);
UPDATE Student SET track_Id = 5 WHERE St_ID IN (5, 25, 45);
UPDATE Student SET track_Id = 6 WHERE St_ID IN (6, 26, 46);
UPDATE Student SET track_Id = 7 WHERE St_ID IN (7, 27, 47);
UPDATE Student SET track_Id = 8 WHERE St_ID IN (8, 28, 48);
UPDATE Student SET track_Id = 9 WHERE St_ID IN (9, 29, 49);
UPDATE Student SET track_Id = 10 WHERE St_ID IN (10, 30, 50);
UPDATE Student SET track_Id = 11 WHERE St_ID IN (11, 31);
UPDATE Student SET track_Id = 12 WHERE St_ID IN (12, 32);
UPDATE Student SET track_Id = 13 WHERE St_ID IN (13, 33);
UPDATE Student SET track_Id = 14 WHERE St_ID IN (14, 34);
UPDATE Student SET track_Id = 15 WHERE St_ID IN (15, 35);
UPDATE Student SET track_Id = 16 WHERE St_ID IN (16, 36);
UPDATE Student SET track_Id = 17 WHERE St_ID IN (17, 37);
UPDATE Student SET track_Id = 18 WHERE St_ID IN (18, 38);
UPDATE Student SET track_Id = 19 WHERE St_ID IN (19, 39);
UPDATE Student SET track_Id = 20 WHERE St_ID IN (20, 40);


declare @i int = 1;
declare @t int = 0;
declare @maxT int = 50;
while @i <= 100
begin
	while @t < @maxT 
		begin try
			insert into Stud_Course (St_ID, course_Id)
				values (
					ABS(CHECKSUM(NEWID()) % 50) + 1,  -- Random student ID between 1 and 100
					ABS(CHECKSUM(NEWID()) % 30) + 1  -- Random course ID between 1 and 30
					
				);
				set @i = @i + 1;
				break;
		end try
		begin catch
		set @t = @t +1;
		end catch

end

select * from Stud_Course

select * from Exam


INSERT INTO Exam (Ex_Id, total_time, start_time, end_time, ex_date, course_Id, inst_Id, B_Id, Int_Id, track_Id)
VALUES
(1, '02:00:00', '09:00:00', '11:00:00', '2024-08-16', 5, 12, 3, 7, 18),
(2, '01:30:00', '10:00:00', '11:30:00', '2024-08-17', 9, 4, 8, 1, 11),
(3, '03:00:00', '08:00:00', '11:00:00', '2024-08-18', 3, 20, 2, 10, 6),
(4, '02:30:00', '14:00:00', '16:30:00', '2024-08-19', 2, 14, 7, 4, 12),
(5, '01:45:00', '11:00:00', '12:45:00', '2024-08-20', 7, 9, 1, 5, 15),
(6, '02:15:00', '12:00:00', '14:15:00', '2024-08-21', 6, 13, 6, 8, 19),
(7, '01:30:00', '09:00:00', '10:30:00', '2024-08-22', 8, 7, 10, 3, 17),
(8, '03:00:00', '13:00:00', '16:00:00', '2024-08-23', 10, 15, 9, 6, 2),
(9, '02:00:00', '10:00:00', '12:00:00', '2024-08-24', 4, 11, 5, 9, 14),
(10, '01:45:00', '11:00:00', '12:45:00', '2024-08-25', 1, 18, 8, 2, 20),



-- mcq questions

INSERT INTO Question_Pool (question_Id, question, question_type, correct_answer, quest_degree, course_Id)
VALUES
(1, 'Which of the following is a Python keyword?', 'MCQ', 'def', 3, 1),
(2, 'Which data structure uses Last In First Out (LIFO) order?', 'MCQ', 'Stack', 3, 1),
(3, 'What is the output of 2 + 2 in Python?', 'MCQ', '4', 3, 1),
(4, 'Which of these is a loop structure in Python?', 'MCQ', 'for', 3, 1),
(5, 'Which function is used to get the length of a list in Python?', 'MCQ', 'len()', 3, 1),
(6, 'What SQL clause is used to filter results?', 'MCQ', 'WHERE', 3, 2),
(7, 'What does CSS stand for?', 'MCQ', 'Cascading Style Sheets', 3, 2),
(8, 'Which SQL statement is used to extract data from a database?', 'MCQ', 'SELECT', 3, 2),
(9, 'Which of these is a CSS property?', 'MCQ', 'margin', 3, 2),
(10, 'What does HTML stand for?', 'MCQ', 'HyperText Markup Language', 3, 2),
(11, 'Which algorithm is commonly used for sorting?', 'MCQ', 'QuickSort', 3, 3),
(12, 'What is the default port for HTTP?', 'MCQ', '80', 3, 3),
(13, 'What does HTTP stand for?', 'MCQ', 'HyperText Transfer Protocol', 3, 3),
(14, 'Which algorithm has a time complexity of O(n log n)?', 'MCQ', 'MergeSort', 3, 3),
(15, 'Which language is primarily used for styling web pages?', 'MCQ', 'CSS', 3, 3),
(16, 'In SQL, which keyword is used to sort results?', 'MCQ', 'ORDER BY', 3, 4),
(17, 'What is the purpose of JavaScript?', 'MCQ', 'Client-side scripting', 3, 4),
(18, 'Which SQL function is used to count the number of rows?', 'MCQ', 'COUNT()', 3, 4),
(19, 'Which of these is a JavaScript data type?', 'MCQ', 'String', 3, 4),
(20, 'What does DOM stand for?', 'MCQ', 'Document Object Model', 3, 4),
(21, 'What is the time complexity of binary search?', 'MCQ', 'O(log n)', 3, 5),
(22, 'Which type of database is MongoDB?', 'MCQ', 'NoSQL', 3, 5),
(23, 'Which HTTP method is used to submit data to be processed to a server?', 'MCQ', 'POST', 3, 5),
(24, 'What does REST stand for in web services?', 'MCQ', 'Representational State Transfer', 3, 5),
(25, 'Which database management system is relational?', 'MCQ', 'MySQL', 3, 5),
(26, 'What is the primary use of HTML?', 'MCQ', 'Web page structure', 3, 6),
(27, 'Which of these is a backend language?', 'MCQ', 'Python', 3, 6),
(28, 'What is the purpose of an API?', 'MCQ', 'Application Programming Interface', 3, 6),
(29, 'Which database operation is used to insert data?', 'MCQ', 'INSERT', 3, 6),
(30, 'Which HTML tag is used for creating hyperlinks?', 'MCQ', 'a', 3, 6),
(31, 'What is the time complexity of merge sort?', 'MCQ', 'O(n log n)', 3, 7),
(32, 'Which database is relational?', 'MCQ', 'PostgreSQL', 3, 7),
(33, 'What is the default port for HTTPS?', 'MCQ', '443', 3, 7),
(34, 'Which of these is a Python data structure?', 'MCQ', 'Dictionary', 3, 7),
(35, 'Which of these is an example of a SQL aggregate function?', 'MCQ', 'SUM()', 3, 7),
(36, 'What does DOM stand for?', 'MCQ', 'Document Object Model', 3, 8),
(37, 'Which of these is a client-side scripting language?', 'MCQ', 'JavaScript', 3, 8),
(38, 'Which algorithm finds the shortest path?', 'MCQ', 'Dijkstra', 3, 8),
(39, 'What does HTTP stand for?', 'MCQ', 'HyperText Transfer Protocol', 3, 8),
(40, 'What does SQL stand for?', 'MCQ', 'Structured Query Language', 3, 8),
(41, 'Which of these is a sorting algorithm?', 'MCQ', 'Bubble Sort', 3, 9),
(42, 'What is the purpose of an API?', 'MCQ', 'Application Programming Interface', 3, 9),
(43, 'Which of these is a Python framework?', 'MCQ', 'Django', 3, 9),
(44, 'Which SQL function is used to find the minimum value?', 'MCQ', 'MIN()', 3, 9),
(45, 'Which of these is a NoSQL database?', 'MCQ', 'Cassandra', 3, 9),
(46, 'Which SQL statement is used to create a new table?', 'MCQ', 'CREATE TABLE', 3, 10),
(47, 'What does the acronym SQL stand for?', 'MCQ', 'Structured Query Language', 3, 10),
(48, 'Which database operation is used to delete data?', 'MCQ', 'DELETE', 3, 10),
(49, 'Which of these is a SQL join type?', 'MCQ', 'INNER JOIN', 3, 10),
(50, 'Which of these is an example of a NoSQL database?', 'MCQ', 'MongoDB', 3, 10);




-- true/false questions
INSERT INTO Question_Pool (question_Id, question, question_type, correct_answer, quest_degree, course_Id)
VALUES
(51, 'Python is a statically typed language.', 'True/False', 'False', 3, 1),
(52, 'Stacks follow the Last In First Out (LIFO) principle.', 'True/False', 'True', 3, 1),
(53, 'In Python, lists are immutable.', 'True/False', 'False', 3, 1),
(54, 'The "elif" keyword is used in Python to check multiple conditions.', 'True/False', 'True', 3, 1),
(55, 'In Python, the "range" function returns a list.', 'True/False', 'False', 3, 1),
(56, 'In SQL, the JOIN operation combines rows from two or more tables.', 'True/False', 'True', 3, 2),
(57, 'CSS is used for defining the structure of a web page.', 'True/False', 'False', 3, 2),
(58, 'The "float" CSS property controls the positioning of elements.', 'True/False', 'True', 3, 2),
(59, 'SQL allows you to store images directly in the database.', 'True/False', 'True', 3, 2),
(60, 'CSS can be used to animate HTML elements.', 'True/False', 'True', 3, 2),
(61, 'Machine Learning is a subset of Artificial Intelligence.', 'True/False', 'True', 3, 3),
(62, 'HTML is a programming language.', 'True/False', 'False', 3, 3),
(63, 'QuickSort is a stable sorting algorithm.', 'True/False', 'False', 3, 3),
(64, 'The time complexity of binary search is O(log n).', 'True/False', 'True', 3, 3),
(65, 'Dijkstra’s algorithm is used to find the shortest path in a graph.', 'True/False', 'True', 3, 3),
(66, 'In SQL, the ORDER BY clause is used to sort results.', 'True/False', 'True', 3, 4),
(67, 'A queue operates on a Last In First Out (LIFO) basis.', 'True/False', 'False', 3, 4),
(68, 'JavaScript is primarily used for server-side programming.', 'True/False', 'False', 3, 4),
(69, 'SQL allows you to define constraints on tables.', 'True/False', 'True', 3, 4),
(70, 'CSS is a backend technology.', 'True/False', 'False', 3, 4),
(71, 'The primary key in a database must be unique.', 'True/False', 'True', 3, 5),
(72, 'MongoDB is a relational database.', 'True/False', 'False', 3, 5),
(73, 'SQL stands for Structured Query Language.', 'True/False', 'True', 3, 5),
(74, 'RESTful APIs can only be consumed by JavaScript.', 'True/False', 'False', 3, 5),
(75, 'Indexes in a database are used to improve query performance.', 'True/False', 'True', 3, 5),
(76, 'HTTPS is more secure than HTTP.', 'True/False', 'True', 3, 6),
(77, 'CSS can be used to style HTML.', 'True/False', 'True', 3, 6),
(78, 'The <head> tag in HTML is used to define the document’s body.', 'True/False', 'False', 3, 6),
(79, 'JavaScript can be used to interact with the DOM.', 'True/False', 'True', 3, 6),
(80, 'HTML5 introduced new semantic elements.', 'True/False', 'True', 3, 6),
(81, 'A linked list has constant-time access for all elements.', 'True/False', 'False', 3, 7),
(82, 'A binary tree is a type of linked list.', 'True/False', 'False', 3, 7),
(83, 'In SQL, the SELECT statement is used to retrieve data.', 'True/False', 'True', 3, 7),
(84, 'A binary search tree is always balanced.', 'True/False', 'False', 3, 7),
(85, 'In Python, a tuple is mutable.', 'True/False', 'False', 3, 7),
(86, 'An API can be RESTful.', 'True/False', 'True', 3, 8),
(87, 'CSS Grid is used for creating responsive layouts.', 'True/False', 'True', 3, 8),
(88, 'HTML5 does not support audio and video elements.', 'True/False', 'False', 3, 8),
(89, 'In JavaScript, "null" is an object.', 'True/False', 'True', 3, 8),
(90, 'A binary tree allows duplicate elements.', 'True/False', 'True', 3, 8),
(91, 'JavaScript is a compiled language.', 'True/False', 'False', 3, 9),
(92, 'In Python, "None" is equivalent to "null".', 'True/False', 'True', 3, 9),
(93, 'CSS Flexbox is used for aligning elements.', 'True/False', 'True', 3, 9),
(94, 'A database transaction must be atomic.', 'True/False', 'True', 3, 9),
(95, 'A recursive function must have a base case.', 'True/False', 'True', 3, 9),
(96, 'Python is case-sensitive.', 'True/False', 'True', 3, 10),
(97, 'HTML stands for HyperText Markup Language.', 'True/False', 'True', 3, 10),
(98, 'In SQL, "GROUP BY" is used to aggregate data.', 'True/False', 'True', 3, 10),
(99, 'Cascading Style Sheets (CSS) is a server-side technology.', 'True/False', 'False', 3, 10),
(100, 'Indexes can slow down write operations in a database.', 'True/False', 'True', 3, 10);







-- text questions
-- Insert 5 Text-Based Questions for Course 1
INSERT INTO Question_Pool (question_Id, question, question_type, correct_answer, quest_degree, course_Id)
VALUES
(101, 'What is Python?', 'Text', 'A programming language.', 4, 1),
(102, 'Define a variable.', 'Text', 'A storage location for data.', 4, 1),
(103, 'What does "if" do?', 'Text', 'Tests a condition.', 4, 1),
(104, 'What is a loop?', 'Text', 'A structure that repeats code.', 4, 1),
(105, 'Define a function.', 'Text', 'A reusable block of code.', 4, 1),
(106, 'What is SQL?', 'Text', 'A database query language.', 4, 2),
(107, 'What does SELECT do?', 'Text', 'Retrieves data from a database.', 4, 2),
(108, 'Define a primary key.', 'Text', 'A unique identifier in a table.', 4, 2),
(109, 'What is a foreign key?', 'Text', 'A key linking two tables.', 4, 2),
(110, 'What does WHERE do?', 'Text', 'Filters query results.', 4, 2),
(111, 'What is an algorithm?', 'Text', 'A step-by-step procedure.', 4, 3),
(112, 'Define a binary tree.', 'Text', 'A tree data structure with two children.', 4, 3),
(113, 'What is sorting?', 'Text', 'Arranging data in a specific order.', 4, 3),
(114, 'Define a graph.', 'Text', 'A collection of nodes and edges.', 4, 3),
(115, 'What is a search algorithm?', 'Text', 'A method for finding data.', 4, 3),
(116, 'What is JavaScript?', 'Text', 'A scripting language for web development.', 4, 4),
(117, 'Define an event listener.', 'Text', 'A function that waits for an event.', 4, 4),
(118, 'What does "DOM" stand for?', 'Text', 'Document Object Model.', 4, 4),
(119, 'What is an array?', 'Text', 'A collection of elements.', 4, 4),
(120, 'What does "loop" do?', 'Text', 'Repeats a block of code.', 4, 4),
(121, 'What is a database?', 'Text', 'A structured collection of data.', 4, 5),
(122, 'Define normalization.', 'Text', 'The process of organizing data.', 4, 5),
(123, 'What is a query?', 'Text', 'A request for data from a database.', 4, 5),
(124, 'What does "JOIN" do?', 'Text', 'Combines rows from different tables.', 4, 5),
(125, 'What is indexing?', 'Text', 'A technique to optimize database searches.', 4, 5),
(126, 'What is HTML?', 'Text', 'A markup language for web pages.', 4, 6),
(127, 'Define a tag.', 'Text', 'A command in HTML.', 4, 6),
(128, 'What does "href" stand for?', 'Text', 'Hypertext reference.', 4, 6),
(129, 'What is a form?', 'Text', 'An element to collect user input.', 4, 6),
(130, 'Define an attribute.', 'Text', 'A property of an HTML element.', 4, 6),
(131, 'What is a variable?', 'Text', 'A storage location for data.', 4, 7),
(132, 'Define an object.', 'Text', 'An instance of a class.', 4, 7),
(133, 'What is inheritance?', 'Text', 'A mechanism for reusing code.', 4, 7),
(134, 'What does "class" do?', 'Text', 'Defines a blueprint for objects.', 4, 7),
(135, 'What is polymorphism?', 'Text', 'A concept where one function can have different forms.', 4, 7),
(136, 'What is CSS?', 'Text', 'A style sheet language for web pages.',4, 8),
(137, 'Define a class selector.', 'Text', 'A selector that targets elements with a specific class.', 5, 8),
(138, 'What is a margin?', 'Text', 'The space around an element.', 4, 8),
(139, 'Define padding.', 'Text', 'The space between an element and its border.', 4, 8),
(140, 'What does "float" do?', 'Text', 'Positions elements to the left or right.', 4, 8),
(141, 'What is a loop?', 'Text', 'A structure that repeats code.', 4, 9),
(142, 'Define recursion.', 'Text', 'A function that calls itself.', 4, 9),
(143, 'What is a function?', 'Text', 'A reusable block of code.', 4, 9),
(144, 'Define an algorithm.', 'Text', 'A step-by-step procedure for solving a problem.', 4, 9),
(145, 'What is a data structure?', 'Text', 'A way to store and organize data.', 4, 9),
(146, 'What is SQL?', 'Text', 'A database query language.', 4, 10),
(147, 'Define a primary key.', 'Text', 'A unique identifier in a table.', 4, 10),
(148, 'What does SELECT do?', 'Text', 'Retrieves data from a database.', 4, 10),
(149, 'What is a foreign key?', 'Text', 'A key linking two tables.', 4, 10),
(150, 'What is indexing?', 'Text', 'A technique to optimize database searches.', 4, 10);




select * from Exam
delete from Question_Pool


DECLARE @ExamId INT;
DECLARE @QuestionId INT;
DECLARE @QuestionType NVARCHAR(50);
DECLARE @QuestionCount INT;
DECLARE @MaxAttempts INT;
DECLARE @AttemptCount INT;
DECLARE @CourseId INT;
SET @ExamId = 1;
SET @MaxAttempts = 100;

WHILE @ExamId <= 10
BEGIN
    SELECT @CourseId = course_Id FROM Exam WHERE Ex_Id = @ExamId;
    SET @QuestionType = 'MCQ';
    SET @QuestionCount = 0;

    WHILE @QuestionCount < 5
    BEGIN
        SET @AttemptCount = 0;

        WHILE @AttemptCount < @MaxAttempts
        BEGIN
            SET @QuestionId = (SELECT TOP 1 question_Id
                               FROM Question_Pool
                               WHERE question_type = @QuestionType AND course_Id = @CourseId
                               AND question_Id NOT IN (SELECT question_Id FROM Exam_Question WHERE Ex_Id = @ExamId)
                               ORDER BY NEWID());
                BEGIN TRY
                    INSERT INTO Exam_Question (Ex_Id, question_Id)
                    VALUES (@ExamId, @QuestionId);
                    SET @QuestionCount = @QuestionCount + 1;
                    BREAK; 
                END TRY
                BEGIN CATCH
                    SET @AttemptCount = @AttemptCount + 1;
                END CATCH
        END
        
    END


    SET @QuestionType = 'True/False';
    SET @QuestionCount = 0;

    WHILE @QuestionCount < 5
    BEGIN
        SET @AttemptCount = 0;

        WHILE @AttemptCount < @MaxAttempts
        BEGIN
            SET @QuestionId = (SELECT TOP 1 question_Id
                               FROM Question_Pool
                               WHERE question_type = @QuestionType AND course_Id = @CourseId
                               AND question_Id NOT IN (SELECT question_Id FROM Exam_Question WHERE Ex_Id = @ExamId)
                               ORDER BY NEWID());

                BEGIN TRY
                    INSERT INTO Exam_Question (Ex_Id, question_Id)
                    VALUES (@ExamId, @QuestionId);
                    SET @QuestionCount = @QuestionCount + 1;
                    BREAK;
                END TRY
                BEGIN CATCH
                    SET @AttemptCount = @AttemptCount + 1;
                END CATCH
        END

    END

    SET @QuestionType = 'Text';
    SET @QuestionCount = 0;

    WHILE @QuestionCount < 5
    BEGIN
        SET @AttemptCount = 0;

        WHILE @AttemptCount < @MaxAttempts
        BEGIN
            SET @QuestionId = (SELECT TOP 1 question_Id
                               FROM Question_Pool
                               WHERE question_type = @QuestionType AND course_Id = @CourseId
                               AND question_Id NOT IN (SELECT question_Id FROM Exam_Question WHERE Ex_Id = @ExamId)
                               ORDER BY NEWID());

                BEGIN TRY
                    INSERT INTO Exam_Question (Ex_Id, question_Id)
                    VALUES (@ExamId, @QuestionId);
                    SET @QuestionCount = @QuestionCount + 1;
                    BREAK;
                END TRY
                BEGIN CATCH
                    SET @AttemptCount = @AttemptCount + 1;
                END CATCH
        END

    END

    SET @ExamId = @ExamId + 1;
END


select * from Dept_Branch

insert into Dept_Branch (dept_Id,B_Id)
values
    (1, 1),
    (1, 3),
    (1, 5),
    (2, 2),
    (2, 4),
    (2, 6),
    (3, 1),
    (3, 7),
    (3, 8),
    (4, 2),
    (4, 9),
    (4, 10),
    (5, 3),
    (5, 4),
    (5, 7),
    (6, 5),
    (6, 6),
    (6, 8),
    (7, 1),
    (7, 9),
    (7, 10),
    (8, 2),
    (8, 3),
    (8, 4),
    (9, 5),
    (9, 6),
    (9, 7),
    (10, 8),
    (10, 9),
    (10, 10);

	
DECLARE @inst_Id INT;
DECLARE @course_Id INT;
DECLARE @ic_year INT;
DECLARE @counter INT = 1;
declare @flag int = 0;
declare @maxflag int = 60;

WHILE @counter <= 60
BEGIN
 while @flag < @maxflag
	 begin
		SET @inst_Id = ABS(CHECKSUM(NEWID()) % 30) + 1;
		SET @course_Id = ABS(CHECKSUM(NEWID()) % 30) + 1;
		SET @ic_year = (ABS(CHECKSUM(NEWID()) % 10) + 2015);

		begin try
			INSERT INTO Inst_Course (inst_Id, course_Id, ic_year)
			VALUES (@inst_Id, @course_Id, @ic_year);
			SET @counter = @counter + 1;
			break;
		end try

		begin catch
			set @flag = @flag + 1;
		end catch
	 end
  
END

select * 
from Inst_Course
where course_Id <= 10
delete from Inst_Course


select * from MCQ_Options
delete from MCQ_Options
-- Insert options for question 1
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(1, 'def'),
(1, 'print'),
(1, 'return');

-- Insert options for question 2
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(2, 'Queue'),
(2, 'Stack'),
(2, 'List');

-- Insert options for question 3
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(3, '3'),
(3, '4'),
(3, '5');

-- Insert options for question 4
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(4, 'while'),
(4, 'for'),
(4, 'if');

-- Insert options for question 5
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(5, 'length()'),
(5, 'count()'),
(5, 'len()');

-- Insert options for question 6
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(6, 'ORDER'),
(6, 'GROUP BY'),
(6, 'WHERE');

-- Insert options for question 7
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(7, 'Cascading Style Sheets'),
(7, 'Computer Style Sheets'),
(7, 'Colorful Style Sheets');

-- Insert options for question 8
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(8, 'SELECT'),
(8, 'INSERT'),
(8, 'UPDATE');

-- Insert options for question 9
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(9, 'padding'),
(9, 'margin'),
(9, 'border');

-- Insert options for question 10
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(10, 'HyperText Markup Language'),
(10, 'HyperText Makeup Language'),
(10, 'HyperText Multi Language');

-- Insert options for question 11
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(11, 'BubbleSort'),
(11, 'MergeSort'),
(11, 'QuickSort');

-- Insert options for question 12
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(12, '80'),
(12, '443'),
(12, '21');

-- Insert options for question 13
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(13, 'HyperText Transfer Protocol'),
(13, 'HyperText Translation Protocol'),
(13, 'Hyper Transfer Protocol');

-- Insert options for question 14
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(14, 'BubbleSort'),
(14, 'MergeSort'),
(14, 'InsertionSort');

-- Insert options for question 15
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(15, 'CSS'),
(15, 'HTML'),
(15, 'JavaScript');

-- Insert options for question 16
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(16, 'ORDER BY'),
(16, 'GROUP BY'),
(16, 'HAVING');

-- Insert options for question 17
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(17, 'Server-side scripting'),
(17, 'Client-side scripting'),
(17, 'Database scripting');

-- Insert options for question 18
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(18, 'COUNT()'),
(18, 'SUM()'),
(18, 'MAX()');

-- Insert options for question 19
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(19, 'String'),
(19, 'Integer'),
(19, 'Boolean');

-- Insert options for question 20
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(20, 'Document Object Model'),
(20, 'Data Object Model'),
(20, 'Document Order Model');

-- Insert options for question 21
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(21, 'O(n)'),
(21, 'O(n log n)'),
(21, 'O(log n)');

-- Insert options for question 22
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(22, 'SQL'),
(22, 'NoSQL'),
(22, 'Relational');

-- Insert options for question 23
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(23, 'GET'),
(23, 'POST'),
(23, 'PUT');

-- Insert options for question 24
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(24, 'Representational State Transfer'),
(24, 'Real-time State Transfer'),
(24, 'Relative State Transfer');

-- Insert options for question 25
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(25, 'MySQL'),
(25, 'MongoDB'),
(25, 'Redis');

-- Insert options for question 26
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(26, 'Web page structure'),
(26, 'Styling web pages'),
(26, 'Server-side scripting');

-- Insert options for question 27
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(27, 'Python'),
(27, 'HTML'),
(27, 'CSS');

-- Insert options for question 28
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(28, 'Application Programming Interface'),
(28, 'Application Programming Interface'),
(28, 'Advanced Programming Interface');

-- Insert options for question 29
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(29, 'UPDATE'),
(29, 'INSERT'),
(29, 'DELETE');

-- Insert options for question 30
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(30, 'a'),
(30, 'div'),
(30, 'span');

-- Insert options for question 31
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(31, 'O(n)'),
(31, 'O(n log n)'),
(31, 'O(n^2)');

-- Insert options for question 32
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(32, 'PostgreSQL'),
(32, 'MongoDB'),
(32, 'Cassandra');

-- Insert options for question 33
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(33, '443'),
(33, '80'),
(33, '21');

-- Insert options for question 34
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(34, 'Dictionary'),
(34, 'List'),
(34, 'Tuple');

-- Insert options for question 35
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(35, 'SUM()'),
(35, 'COUNT()'),
(35, 'MAX()');

-- Insert options for question 36
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(36, 'Document Object Model'),
(36, 'Data Object Model'),
(36, 'Document Order Model');

-- Insert options for question 37
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(37, 'JavaScript'),
(37, 'Java'),
(37, 'Python');

-- Insert options for question 38
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(38, 'Dijkstra'),
(38, 'Kruskal'),
(38, 'Prim');

-- Insert options for question 39
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(39, 'HyperText Transfer Protocol'),
(39, 'HyperText Translation Protocol'),
(39, 'Hyper Transfer Protocol');

-- Insert options for question 40
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(40, 'Structured Query Language'),
(40, 'Simple Query Language'),
(40, 'Standard Query Language');

-- Insert options for question 41
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(41, 'Bubble Sort'),
(41, 'Quick Sort'),
(41, 'Merge Sort');

-- Insert options for question 42
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(42, 'Application Programming Interface'),
(42, 'Application Programming Interface'),
(42, 'Advanced Programming Interface');

-- Insert options for question 43
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(43, 'Django'),
(43, 'Flask'),
(43, 'Pyramid');

-- Insert options for question 44
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(44, 'MIN()'),
(44, 'MAX()'),
(44, 'AVG()');

-- Insert options for question 45
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(45, 'Cassandra'),
(45, 'MySQL'),
(45, 'PostgreSQL');

-- Insert options for question 46
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(46, 'CREATE TABLE'),
(46, 'ALTER TABLE'),
(46, 'DROP TABLE');

-- Insert options for question 47
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(47, 'Structured Query Language'),
(47, 'Simple Query Language'),
(47, 'Standard Query Language');

-- Insert options for question 48
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(48, 'DELETE'),
(48, 'INSERT'),
(48, 'UPDATE');

-- Insert options for question 49
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(49, 'INNER JOIN'),
(49, 'LEFT JOIN'),
(49, 'RIGHT JOIN');

-- Insert options for question 50
INSERT INTO MCQ_Options (question_Id, mcq_opt)
VALUES
(50, 'MongoDB'),
(50, 'MySQL'),
(50, 'Redis');

select * from MCQ_Options
select * from Stud_Exam


 insert into Stud_Exam(St_ID,Ex_Id)
 values 
    (1, 1), (2, 1), (3, 1), (4, 1), (5, 1),
    (6, 2), (7, 2), (8, 2), (9, 2), (10, 2),
    (11, 3), (12, 3), (13, 3), (14, 3), (15, 3),
    (16, 4), (17, 4), (18, 4), (19, 4), (20, 4),
    (21, 5), (22, 5), (23, 5), (24, 5), (25, 5),
    (26, 6), (27, 6), (28, 6), (29, 6), (30, 6),
    (31, 7), (32, 7), (33, 7), (34, 7), (35, 7),
    (36, 8), (37, 8), (38, 8), (39, 8), (40, 8),
    (41, 9), (42, 9), (43, 9), (44, 9), (45, 9),
    (46, 10), (47, 10), (48, 10), (49, 10), (50, 10);

	/*-----------------------------------------------------------------*/

-- student 1  to 5
INSERT INTO Student_Answer (answer_Id, answer, St_Id, Ex_Id, question_Id)
VALUES
(1, 'O(log n)', 1, 1, 21),   -- Answer to question 21
(2, 'NoSQL', 1, 1, 22),       -- Answer to question 22
(3, 'POST', 1, 1, 23),        -- Answer to question 23
(4, 'Representational State Transfer', 1, 1, 24), -- Answer to question 24
(5, 'MySQL', 1, 1, 25),       -- Answer to question 25
(6, 'True', 1, 1, 71),        -- Answer to question 71
(7, 'False', 1, 1, 72),       -- Answer to question 72
(8, 'False', 1, 1, 73),       -- Answer to question 73
(9, 'True', 1, 1, 74),        -- Answer to question 74
(10, 'False', 1, 1, 75),      -- Answer to question 75
(11, 'A random collection of data.', 1, 1, 121), -- Answer to question 121
(12, 'A method to retrieve data.', 1, 1, 122),  -- Answer to question 122
(13, 'A request for data from a database.', 1, 1, 123),            -- Answer to question 123
(14, 'Combines rows from different tables.', 1, 1, 124),   -- Answer to question 124
(15, 'A technique to optimize database searches.', 1, 1, 125),    -- Answer to question 125



(16, 'O(n)', 2, 1, 21),   -- Answer to question 21
(17, 'NoSQL', 2, 1, 22),       -- Answer to question 22
(18, 'POST', 2, 1, 23),        -- Answer to question 23
(19, 'Representational State Transfer', 2, 1, 24), -- Answer to question 24
(20, 'MySQL', 2, 1, 25),       -- Answer to question 25
(21, 'True', 2, 1, 71),        -- Answer to question 71
(22, 'False', 2, 1, 72),       -- Answer to question 72
(23, 'True', 2, 1, 73),       -- Answer to question 73
(24, 'False', 2, 1, 74),        -- Answer to question 74
(25, 'False', 2, 1, 75),      -- Answer to question 75
(26, 'A structured collection of data.', 2, 1, 121), -- Answer to question 121
(27, 'The process of organizing data.', 2, 1, 122),  -- Answer to question 122
(28, 'A request for data from a database.', 2, 1, 123),            -- Answer to question 123
(29, 'Combines rows from different tables.', 2, 1, 124),   -- Answer to question 124
(30, 'A technique to optimize database searches.', 2, 1, 125),    -- Answer to question 125




(31, 'O(log n)', 3, 1, 21),   -- Answer to question 21
(32, 'NoSQL', 3, 1, 22),       -- Answer to question 22
(33, 'POST', 3, 1, 23),        -- Answer to question 23
(34, 'Representational State Transfer', 3, 1, 24), -- Answer to question 24
(35, 'MySQL', 3, 1, 25),       -- Answer to question 25
(36, 'False', 3, 1, 71),        -- Answer to question 71
(37, 'False', 3, 1, 72),       -- Answer to question 72
(38, 'True', 3, 1, 73),       -- Answer to question 73
(39, 'False', 3, 1, 74),        -- Answer to question 74
(40, 'True', 3, 1, 75),      -- Answer to question 75
(41, 'A random collection of data.', 3, 1, 121), -- Answer to question 121
(42, 'The process of organizing data.', 3, 1, 122),  -- Answer to question 122
(43, 'A request for data from a database.', 3, 1, 123),            -- Answer to question 123
(44, 'Combines rows from different tables.', 3, 1, 124),   -- Answer to question 124
(45, 'A technique to optimize database searches.', 3, 1, 125),    -- Answer to question 125




(46, 'O(log n)', 4, 1, 21),   -- Answer to question 21
(47, 'NoSQL', 4, 1, 22),       -- Answer to question 22
(48, 'POST', 4, 1, 23),        -- Answer to question 23
(49, 'Representational State Transfer', 4, 1, 24), -- Answer to question 24
(50, 'MySQL', 4, 1, 25),       -- Answer to question 25
(51, 'True', 4, 1, 71),        -- Answer to question 71
(52, 'False', 4, 1, 72),       -- Answer to question 72
(53, 'False', 4, 1, 73),       -- Answer to question 73
(54, 'True', 4, 1, 74),        -- Answer to question 74
(55, 'False', 4, 1, 75),      -- Answer to question 75
(56, 'A random collection of data.', 4, 1, 121), -- Answer to question 121
(57, 'A method to retrieve data.', 4, 1, 122),  -- Answer to question 122
(58, 'A request for data from a database.', 4, 1, 123),            -- Answer to question 123
(59, 'Combines rows from different tables.', 4, 1, 124),   -- Answer to question 124
(60, 'A technique to optimize database searches.', 4, 1, 125),    -- Answer to question 125




(61, 'O(log n)', 5, 1, 21),   -- Answer to question 21
(62, 'NoSQL', 5, 1, 22),       -- Answer to question 22
(63, 'GET', 5, 1, 23),        -- Answer to question 23
(64, 'Representational State Transfer', 5, 1, 24), -- Answer to question 24
(65, 'MySQL', 5, 1, 25),       -- Answer to question 25
(66, 'True', 5, 1, 71),        -- Answer to question 71
(67, 'False', 5, 1, 72),       -- Answer to question 72
(68, 'True', 5, 1, 73),       -- Answer to question 73
(69, 'True', 5, 1, 74),        -- Answer to question 74
(70, 'False', 5, 1, 75),      -- Answer to question 75
(71, 'A structured collection of data.', 5, 1, 121), -- Answer to question 121
(72, 'The process of organizing data.', 5, 1, 122),  -- Answer to question 122
(73, 'A request for data from a database.', 5, 1, 123),            -- Answer to question 123
(74, 'Combines rows from different tables.', 5, 1, 124),   -- Answer to question 124
(75, 'A command in HTML.', 5, 1, 125);    -- Answer to question 125






-- student 6 to 10

-- Insert answers for student 1 in exam 1
INSERT INTO Student_Answer (answer_Id, answer, St_Id, Ex_Id, question_Id)
VALUES
(76, 'Bubble Sort', 6, 2, 41),  -- Answer to MCQ question 41
(77, 'Application Programming Interface', 6, 2, 42),  -- Answer to MCQ question 42
(78, 'Django', 6, 2, 43),  -- Answer to MCQ question 43
(79, 'MIN()', 6, 2, 44),  -- Answer to MCQ question 44
(80, 'Cassandra', 6, 2, 45),  -- Answer to MCQ question 45

(81, 'False', 6, 2, 91),  -- Answer to True/False question 91 (Incorrect)
(82, 'True', 6, 2, 92),  -- Answer to True/False question 92 (Correct)
(83, 'True', 6, 2, 93),  -- Answer to True/False question 93 (Correct)
(84, 'True', 6, 2, 94),  -- Answer to True/False question 94 (Incorrect)
(85, 'False', 6, 2, 95),  -- Answer to True/False question 95 (Correct)

(86, 'A structure that repeats code.', 6, 2, 141),  -- Answer to Text question 141 (Incorrect)
(87, 'A function that calls itself.', 6, 2, 142),  -- Answer to Text question 142 (Correct)
(88, 'A database query language.', 6, 2, 143),  -- Answer to Text question 143 (Correct)
(89, 'A step-by-step procedure for solving a problem.', 6, 2, 144),  -- Answer to Text question 144 (Correct)
(90, 'A way to store and organize data.',6, 2, 145);  -- Answer to Text question 145 (Incorrect)

select * from Student_Answer






select * from Stud_Exam
select * from Student_Answer
select * from Exam_Question
