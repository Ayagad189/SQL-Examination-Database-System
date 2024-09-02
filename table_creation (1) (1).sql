create table Branch (
B_Id int primary key not null,
B_Name varchar(20),
)

create table Student (
St_ID int primary key not null,
St_Name varchar(30),
St_Phone varchar(20),
St_Email varchar(50),
B_Id int,
foreign key(B_Id) references Branch(B_Id)
on delete set null
on update cascade,
track_Id int,
foreign key(track_Id) references Track(track_Id)
on delete set null
on update cascade,
int_Id int,
foreign key(int_Id) references Intake(int_Id)
on delete set null
on update cascade
)



create table Intake (
Int_Id int primary key not null,
Int_Name varchar(20),
Int_Year varchar(20),
)

create table Track (
track_Id int primary key not null,
track_Name varchar(50),
dept_Id int,
foreign key(dept_Id) references Department(dept_ID)
on delete set null
on update cascade
)


create table Instructor (
inst_Id int primary key not null,
inst_Name varchar(20),
inst_Phone varchar(20),
inst_Email varchar(50),
inst_Salary int
)

select * from instructor

create table Department(
dept_Id int primary key not null,
inst_Id int,
dept_Name varchar(25),
foreign key(inst_Id) references Instructor(inst_Id)
)


create table inst_dept (
dept_Id int,
inst_Id int,
foreign key(dept_Id) references Department(dept_Id),
foreign key(inst_Id) references Instructor(inst_Id),
primary key (inst_Id)
) 



create table Course(
course_Id int primary key not null,
course_Name varchar(100),
description varchar(100),
Max_degree int,
Min_degree int,
track_Id int,
foreign key (track_Id) references Track(track_Id)
)


create table Inst_Course(
inst_Id int,
course_Id int,
constraint c11 foreign key (inst_Id) references Instructor(inst_Id),
constraint c12 foreign key (course_Id) references course(course_Id),
constraint c2 primary key (inst_Id, course_Id),
ic_year varchar(20)
)


create table Stud_Course
(
St_ID int,
course_Id int,
constraint c9 foreign key (St_ID) references Student(St_ID)
on delete cascade
on update cascade,
constraint c10 foreign key (course_Id) references course(course_Id),
constraint c1 primary key (St_ID, course_Id),
grade int
)




create table Question_Pool (
question_Id int primary key not null,
question varchar(200),
question_type varchar(20),
correct_answer varchar(200),
quest_degree int,
course_Id int,
foreign key(course_Id) references Course(course_Id)
on delete set null
on update cascade
)

create table MCQ_Options(
mcq_opt varchar(100),
question_Id int,
foreign key(question_Id) references Question_Pool(question_Id)
on delete set null
on update cascade
)

create table Exam(
Ex_Id int primary key not null,
total_time time,
start_time time,
end_time time,
ex_date varchar(20),
course_Id int,
foreign key(course_Id) references Course(course_Id),
inst_Id int,
foreign key(inst_Id) references Instructor(inst_Id),
B_Id int,
foreign key(B_Id) references Branch(B_Id),
Int_Id int,
foreign key(Int_Id) references Intake(Int_Id),
track_Id int,
foreign key(track_Id) references Track(track_Id)
on delete set null
on update cascade
)


create table Exam_Question
(
Ex_Id int,
question_Id int,
constraint c5 foreign key (Ex_Id) references Exam(Ex_Id),
constraint c6 foreign key (question_Id) references Question_Pool(question_Id),
constraint c3 primary key (Ex_Id, question_Id)

)



create table Stud_Exam(
St_ID int ,
Ex_Id int,
constraint c7 foreign key (St_ID) references Student(St_ID)
on delete cascade 
on update cascade,
constraint c8 foreign key (Ex_Id) references Exam(Ex_Id),
constraint c4 primary key (St_ID, Ex_Id),
)



create table Student_Answer 
(
answer_Id int primary key not null,
answer varchar(200),
St_ID int,
Ex_Id int,
question_Id int,
foreign key (St_ID) references Student(St_ID)
on delete set null
on update cascade,
foreign key (Ex_Id) references Exam(Ex_Id)
on delete set null
on update cascade,
foreign key (question_Id) references Question_Pool(question_Id)
on delete set null
on update cascade
)

create table Dept_Branch(
dept_Id int,
B_Id int,
foreign key (dept_Id) references Department(dept_Id)
on delete cascade
on update cascade,
foreign key (B_Id) references Branch(B_Id)
on delete cascade
on update cascade,
primary key (dept_Id, B_Id)
)

