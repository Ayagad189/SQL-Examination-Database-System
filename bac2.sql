-- Functions 
--1
CREATE FUNCTION gettotalGrade(@Stud_ID INT)
RETURNS INT
AS
BEGIN
    DECLARE @c INT = 0;
    DECLARE @studAns VARCHAR(200);
    DECLARE @correctAns VARCHAR(200);
    DECLARE @questionID INT;
	DECLARE @questdegree INT;
	declare @degree int = 0;

    -- Define a cursor to iterate through each question and answer
    DECLARE answer_cursor CURSOR FOR
    SELECT sa.question_Id, sa.answer, q.correct_answer, q.quest_degree
    FROM Student_Answer sa
    JOIN Question_Pool q ON q.question_Id = sa.question_Id
    WHERE sa.St_ID = @Stud_ID;

    OPEN answer_cursor;

    FETCH NEXT FROM answer_cursor INTO @questionID, @studAns, @correctAns,@questdegree;

 
    WHILE @@FETCH_STATUS = 0
    BEGIN
          
        IF @studAns = @correctAns
        BEGIN
           set @degree = @degree + @questdegree 
        END
		

       
        FETCH NEXT FROM answer_cursor INTO @questionID, @studAns, @correctAns,@questdegree;
    END

   
    CLOSE answer_cursor;
    DEALLOCATE answer_cursor;

       
    RETURN @degree; 

END;


select dbo.gettotalGrade(2) as totalGrade



--2
create function GetCorrectAnswerCount(@examid int,@st_id int)
returns int
as
begin
	declare @correct_answer int;
	declare @correct_count int;
	select @correct_count = count(*)
	from Student_Answer sa 
	join Question_Pool q on sa.question_Id= q.question_Id
	where sa.Ex_Id = @examid and sa.St_ID = @st_id
	and sa.answer=q.correct_answer
	return @correct_count
end

select dbo.GetCorrectAnswerCount(2,6) as  correct_ans_count




--3
create function ExamDetail(@exam int)
returns table 
as
return(
	select e.Ex_Id,c.course_Name,q.question,q.question_type
	from Exam e 
	join Course c on c.course_Id = e.course_Id
	join Exam_Question eq on eq.Ex_Id=e.Ex_Id
	join Question_Pool q on q.question_Id=eq.question_Id
	where e.Ex_Id = @exam
)

select * from ExamDetail(2)


--4
create function student_info(@st_Id int)
returns table
as
return
(
	select s.St_Name, e.Ex_Id, sc.grade
	from Student s
	join Stud_Exam se on se.St_ID = s.St_ID
	join exam e on e.Ex_Id=se.Ex_Id
	join Stud_Course sc on sc.St_ID=s.St_ID
	join Course c on c.course_Id = sc.course_Id
)
select * from dbo.student_info(1)


--5
create function inst_info(@inst_id int)
returns table
as
return
(
	select i.*, d.dept_Name, c.course_Name
	from Instructor i 
	join inst_dept id on id.inst_Id=i.inst_Id
	join Department d on d.dept_Id=id.dept_Id
	join Inst_Course ic on ic.inst_Id=i.inst_Id
	join Course c on c.course_Id = ic.course_Id
	where i.inst_Id = @inst_id
)
select * from dbo.inst_info(5)


--6
create function stbydate(@date date)
returns table
as
return(
	select s.St_Name,e.Ex_Id, c.course_Name,sc.grade
	from Student s
	join Stud_Course sc on sc.St_ID = s.St_ID
	join Course c on c.course_Id = sc.course_Id
	join Stud_Exam se on se.St_ID = s.St_ID
	join Exam e on e.Ex_Id = se.Ex_Id
	where e.ex_date = @date

)

select * from dbo.stbydate('2024-08-18') 

--7
create function StorInstinfo(@text varchar(20))
returns @t table (
id int,
name_ varchar(50),
course varchar(50)) as
begin
	declare @id int
	declare @name_ varchar(50) 
	declare @course varchar(50) 
	if @text = 'student'
	 insert into @t (id,name_,course) select s.St_ID ,s.St_Name, c.course_Name
	 from Student s
	 join Stud_Course sc on sc.St_ID=s.St_ID
	 join Course c on c.course_Id=sc.course_Id 
	else if @text = 'instructor'
	 insert into @t (id,name_,course) select i.inst_Id, i.inst_Name, c.course_Name
	 from Instructor i
	 join Inst_Course ic on ic.inst_Id= i.inst_Id
	 join Course c on c.course_Id= ic.course_Id
	return 
end

select * from dbo.StorInstinfo('student')






/*---------------------------------*/
--views

--1
create view st_info(fullname, coursename) with encryption
as 
select s.St_Name, c.course_Name
from Student s
join Stud_Course sc on s.St_Id=sc.St_Id
join Course c on sc.course_Id = c.course_Id

select * from st_info


--2
create view instructor_info(instructor_Name, CourseName) with encryption 
as
select ins.inst_Name, c.course_Name
from Instructor ins 
join Inst_Course ic on ic.inst_Id=ins.inst_Id
join Course c on c.course_Id=ic.course_Id

select * from instructor_info


--3
-- dept where instructor works in
create view instr_dept (instructorName, deptName) 
as
select ins.inst_Name, d.Dept_Name 
from Instructor ins
join inst_dept id on id.inst_Id = ins.inst_Id
join Department d on d.dept_Id = id.dept_Id

select * from instr_dept


--4
-- dept which instructor manage 
create view instr_dept_manage (instructorName, deptName) 
as
select ins.inst_Name, d.Dept_Name 
from Instructor ins
join Department d on d.inst_Id = ins.inst_Id

select * from instr_dept_manage


--5
create view stud_gradeatCourse(StudentName, CourseName, Grade) with encryption 
as
select s.St_Name, c.course_Name, sc.grade
from Student s 
join Stud_Course sc on sc.St_ID = s.St_ID
join Course c on c.course_Id = sc.course_Id

select *  from stud_gradeatCourse


--6
create view student_Exam (Student_Id, Student_Name, Exam_Id) with encryption as
select s.St_ID, s.St_Name, ex.Ex_Id
from Student s 
join Stud_Exam se on se.St_ID = s.St_ID
join Exam ex on ex.Ex_Id = se.Ex_Id

select * from student_Exam


--7
create view st_numberCourse(Course_Name, Student_Number) with encryption as
select c.course_Name, count(s.St_ID)
from Student s
join Stud_Course sc on sc.St_ID = s.St_ID
join Course c on c.course_Id = sc.course_Id
group by c.course_Name

select * from st_numberCourse


--8
create view branch_dept(Branch_Name, Dept_Name) with encryption as
select b.B_Name, d.dept_Name
from Branch b
join Dept_Branch db on db.B_Id = b.B_Id
join Department d on d.dept_Id = db.dept_Id

select * from branch_dept


--9
create view branch_deptNUM (Branch_Name, Dept_NUM) with encryption as
select b.B_Name, count(d.dept_Id)
from Branch b
join Dept_Branch db on db.B_Id = b.B_Id
join Department d on d.dept_Id = db.dept_Id
group by b.B_Name

select * from branch_deptNUM


--10
create view st_intake(StudentName, IntakeName) with encryption as
select s.St_Name, i.Int_Name
from Student s
join Intake i on i.Int_Id= s.int_Id

select * from st_intake

--11
create view StNumperIntake (IntakeName, StudentNumber) with encryption as
select i.Int_Name, COUNT(s.St_ID)
from Student s
join Intake i on i.Int_Id= s.int_Id
group by i.Int_Name

select * from StNumperIntake


--12
create view StexamDate (StudentName, ExamDate) with encryption as
select s.St_Name, ex.ex_date
from Student s
join Stud_Exam se on se.St_ID = s.St_ID
join Exam ex on ex.Ex_Id = se.Ex_Id

select * from StexamDate

--13 
create view deptTrack (DepartmentName,TrackName) with encryption as
select d.dept_Name, t.track_Name
from Department d
join Track t on t.dept_Id = d.dept_Id

select * from deptTrack

--14
create view deptNum_per_Track (DepartmentName,TrackNumbers) with encryption as
select d.dept_Name,count(t.track_Name)
from Department d
join Track t on t.dept_Id = d.dept_Id
group by d.dept_Name

select * from deptNum_per_Track
/*---------------------------------*/
