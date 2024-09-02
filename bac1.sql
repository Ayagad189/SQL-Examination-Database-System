-- non-clustered indexs
create nonclustered index st_cl 
on student (st_id) 

create nonclustered index stname_cl 
on student (st_name) 

create nonclustered index stco_cl 
on stud_course (st_id,course_Id) 


create nonclustered index stin_cl 
on instructor (inst_id) 


create nonclustered index stind_cl 
on inst_dept (dept_id) 


create nonclustered index br_cl 
on Branch (B_id) 


create nonclustered index stE_cl 
on stud_Exam (st_id,Ex_id) 


/*---------------------------------------------------*/
-- Triggere
--1
create table student_audit(
change_id int primary key identity ,
St_ID int not null,
St_Name varchar(30),
St_Phone varchar(20),
St_Email varchar(50),
B_Id int,
foreign key(B_Id) references Branch(B_Id),
update_at datetime not null ,
operation char(3) not null,
check (operation = 'ins' or operation='del')
) 

create or alter trigger trigger_stud on student 
after insert , delete as 
begin
insert into student_audit(St_ID ,St_Name ,St_Phone ,St_Email ,B_Id,
update_at ,operation  ) 
select i.St_ID,i.St_Name,i.St_Phone,i.St_Email,i.B_Id, GETDATE(),'ins'
from inserted as i 
union all
select d.St_ID,d.St_Name,d.St_Phone,d.St_Email,d.B_Id, GETDATE(),'del'
from deleted as d
end

delete from student where st_id = 50
select * from student_audit


--2
create or alter trigger dept_trig 
on department
instead of delete
as
begin
 set nocount on;
 raiserror ('not allowed',16,1 );

end

DELETE FROM Department WHERE dept_Id = 10;


--3
create or alter trigger exam_dup
on Exam_Question
instead of insert , update
as
begin
	if exists(select eq.question_Id from Exam_Question eq join
	inserted i on i.Ex_Id=eq.Ex_Id and eq.question_Id=i.question_Id )
	begin
		raiserror ('Duplicate question for the same exam is not allowed.', 16, 1);
	end
	insert into Exam_Question (Ex_Id, question_Id)
    select Ex_Id, question_Id from inserted;
end


insert into Exam_Question(Ex_Id, question_Id)
values(1,21)


--4
create trigger PreventQuestionDeletion
on Question_Pool
instead of delete
as
begin
    if exists (
        select 1
        from Exam_Question eq
        join deleted d on eq.question_Id = d.question_Id
    )
    begin
        raiserror ('Cannot delete a question that is part of an active exam.', 16, 1);
    end
end;


delete from Question_Pool where question_Id = 1





/*----------------------------------------------------------*/
-- Stordes
--1
create procedure getbydcourse @course varchar(20) 
as
select s.St_Name, c.course_Name
from Student s
join Stud_Course sc on s.St_ID = sc.St_ID
join Course c on c.course_Id=sc.course_Id
where c.course_Name = @course


getbydcourse 'Database Systems'

--2
create procedure getbytrack @track varchar(50)
as
select s.St_Name, t.track_Name, s.St_ID
from Student s
join Track t on t.track_Id= s.track_Id
where t.track_Name = @track

getbytrack 'Artificial Intelligence'


--3

create procedure getbydept @dept varchar(50)
as
select s.St_Name, d.dept_Name, s.St_ID
from Student s
join Track t on t.track_Id= s.track_Id
join Department d on d.dept_Id= t.dept_Id
where d.dept_Name = @dept

getbydept 'Computer Science'

--4

create procedure getexamincourse 
as
select c.course_Name,ex.Ex_Id, ex.ex_date
from course c
join Exam ex on c.course_Id=ex.course_Id

getexamincourse

--5
create procedure getcoursebytrack
as
select c.course_Name, t.track_Name
from course c
join track t on c.course_Id=t.track_Id


getcoursebytrack

--6
create procedure examnumincourse 
as
select c.course_Name, count(ex.Ex_Id) as number_of_exams
from course c
join Exam ex on c.course_Id=ex.course_Id
group by c.course_Name

examnumincourse

--7
create procedure getSTbyintake
as
select s.St_Name,it.Int_Name
from Student s
join Intake it on it.Int_Id=s.int_Id

getSTbyintake

--8
create procedure getSTnumbyintake
as
select it.Int_Name, count(s.St_ID) as number_of_students
from Student s
join Intake it on it.Int_Id=s.int_Id
group by it.Int_Name

getSTnumbyintake

--9
create procedure get2MaxSalary
as
select top(2) inst_Salary, inst_Name
from Instructor 
order by inst_Salary DESC

get2MaxSalary


--10
create procedure getmax_min_avgsal
as
select d.dept_Name, MAX(e.inst_Salary) as MAX_Salary , 
MIN(e.inst_Salary) as MIN_Salary,
AVG(e.inst_Salary) as AVG_Salary
from Instructor e
join inst_dept id on id.inst_Id= e.inst_Id
join Department d on d.dept_Id = id.dept_Id
group by d.dept_Name

getmax_min_avgsal


--11
create procedure questionnuminexam
as
select ex.Ex_Id, count(q.question_Id) as number_of_questions
from Exam ex 
join Exam_Question eq on eq.Ex_Id = ex.Ex_Id
join Question_Pool q on q.question_Id = eq.question_Id
group by ex.Ex_Id

questionnuminexam


--12
create procedure getcoursebyinst
as
select c.course_Name, i.inst_Name
from course c
join Inst_Course ic on ic.course_Id=c.course_Id
join Instructor i on i.inst_Id=ic.inst_Id

getcoursebyinst

--13
create procedure getcoursenumbyinst
as
select i.inst_Name, count(c.course_Name) as courses_number
from course c
join Inst_Course ic on ic.course_Id=c.course_Id
join Instructor i on i.inst_Id=ic.inst_Id
group by i.inst_Name

getcoursenumbyinst

--14
create procedure getdeptbybranch
as
select b.B_Name, d.dept_Name
from Branch b
join Dept_Branch db on db.B_Id = b.B_Id
join Department d on d.dept_Id = db.dept_Id

getdeptbybranch

--15
create procedure getdeptnumbybranch
as
select b.B_Name, count(d.dept_Id) as dept_Numbers
from Branch b
join Dept_Branch db on db.B_Id = b.B_Id
join Department d on d.dept_Id = db.dept_Id
group by b.B_Name

getdeptnumbybranch

--16
create procedure getgradegreaterthan40 
as
select s.St_Name, sc.grade, c.course_Name
from Student s
join Stud_Course sc on sc.St_ID = s.St_ID
join Course c on c.course_Id= sc.course_Id
where sc.grade > 40

getgradegreaterthan40


--17
alter procedure getstudhavexam
as
select distinct(s.St_Name),s.St_ID, sa.Ex_Id
from Student s
join Student_Answer sa on sa.St_ID=s.St_ID


getstudhavexam




------------------------------------------
declare @stid int = 1;
while @stid <= 50
 begin	
    update sc 
	set grade = dbo.gettotalGrade(@stid)
	from Stud_Course sc
	join Course c on c.course_Id = sc.course_Id
	join Exam ex on c.course_Id = ex.course_Id
	where sc.St_ID = @stid 
	set @stid = @stid + 1;

 end


