--As a system administrator, I should be able to ... Add courses to the system with all of its information: course code, course name, course level (elementary,
--middle, high), grade, description and prerequisite course(s).(2)
create proc Add_Course
@course_code varchar(50),
@course_name varchar(50),
@course_level int,
@grade varchar(50),
@description varchar(50),
@prerequisite_course varchar(50),
@prerequisite_course2 varchar(50),
@prerequisite_course3 varchar(50),
@prerequisite_course4 varchar(50)
as
if(@course_code is not null and @course_name is not null and @course_level is not null and @grade is not null)
begin
insert into Courses(code,name,course_description,course_level,course_grade)
values(@course_code,@course_name,@description,@course_level,@grade)

if @prerequisite_course is not null
insert into Courses_Prerequisites(code,pre_code)
values(@course_code,@prerequisite_course)

if @prerequisite_course2 is not null
insert into Courses_Prerequisites(code,pre_code)
values(@course_code,@prerequisite_course2)

if @prerequisite_course3 is not null
insert into Courses_Prerequisites(code,pre_code)
values(@course_code,@prerequisite_course3)

if @prerequisite_course4 is not null
insert into Courses_Prerequisites(code,pre_code)
values(@course_code,@prerequisite_course4)

end
GO



--3 Post questions I have about a certain course.

create proc add_My_Question @username varchar(150),@course_code varchar(50), @my_Question text
As
declare @student_ssn int
declare @teacher varchar(50)
Select @student_ssn=s.ssn
from Students s
where s.username=@username

select @teacher=ts.teacher
from Teachers_teaches_Courses_to_Students ts
where @student_ssn=ts.student and @course_code=ts.course
insert into Questions
values(@my_Question,CURRENT_TIMESTAMP,null,@student_ssn,@course_code,@teacher)
GO

 


 -- 11- Accept or reject the application submitted by parents to their children.
 create proc admin_accepts_applications @ssn int , @parent_username nvarchar(50) , @admin_username nvarchar(50) , @school int 
 as
 update Parents_ApplyForChildIn_Schools 
 set accepted = 1
 where child = @ssn and parent = @parent_username and school = @school
 GO 
   




-- 9- Assign teachers to courses that are taught in my school based on the levels it offers
create proc admin_assign_teacher_course @course_code nvarchar(50) , @teacher_username nvarchar(50)
as 
declare @x int ;
select @x = b.id from Teachers b where b.username= @teacher_username
insert into Teachers_assigned_to_Courses (course , teacher,teacherid ) values (@course_code , @teacher_username,@x );
GO





-- 8-Change the teacher assigned to an activity.

create proc admin_change_teacher_activity @activity_pk int , @new_teacher_username nvarchar(50) 
as 
update  administrators_assign_activities 
set teacher = @new_teacher_username 
where activity = @activity_pk
GO

--4-Delete employees and students from the system.
create proc admin_deletes_employee @username nvarchar(50) 
as 
delete from Supervisors_supervise_Teachers 
where username = @username 
delete from employees
where username = @username
GO

create proc admin_deletes_students @id int 
as 
delete from students 
where id = @id
GO







-- 5-Edit the information of the school I am working in.
create proc admin_edit_school_info @username nvarchar(50) , @new_info nvarchar(4000)
as 
declare @sc int 
select @sc = s.primary_key  
from   schools s , employees e 
where  s.primary_key = e.school
update schools 
set general_info = @new_info
from schools s  
where  s.primary_key = @sc
GO

 

 create proc admin_rejects_applications @ssn int , @parent_username nvarchar(50) , @admin_username nvarchar(50) , @school int 
 as
 update Parents_ApplyForChildIn_Schools 
 set accepted = 0
 where child = @ssn and parent = @parent_username and school = @school
 GO


 

/*
2-View and verify students who enrolled to the school I am responsible of, and assign to them a
unique username and password.*/

create proc administrator_view_students @adminstrator_username nvarchar(50)
as 
declare @sc int 
select @sc = s.primary_key  
from   schools s , employees e 
where  s.primary_key = e.school and @adminstrator_username = e.username 
select c.name  
from children c , schools s , students st	
where st.ssn = c.ssn and st.school=s.primary_key and s.primary_key = @sc
GO



/*
1-View and verify teachers who signed up as employees of the school I am responsible of, and assign
to them a unique username and password. The salary of a teacher is calculated as follows: years of
experience * 500 EGP
*/
create proc administrator_view_teachers @adminstrator_username nvarchar(50) 
as 
declare @sc int 
select @sc = s.primary_key  
from   schools s , employees e 
where  s.primary_key = e.school and @adminstrator_username = e.username 

select e.first_name , e.middle_name, e.last_name 
from employees e 	
where e.id = (
select t.id 
from Teachers t , Schools s 
where t.id = e.id and s.primary_key = e.school
)
GO

create proc administrator_view_teachers_no_username @adminstrator_username nvarchar(50) 
as 
declare @sc int 
select @sc = s.primary_key  
from   schools s , employees e 
where  s.primary_key = e.school and @adminstrator_username = e.username 

select e.id,e.first_name , e.middle_name, e.last_name 
from employees e 	
where @sc = e.school and e.username is null
GO


create proc adminstrator_assign_username_password @id int , @username nvarchar(50) , @password nvarchar(50)
as
update   Students
set username = @username , password = @password 
where id = @id
GO




create proc adminstrator_assign_username_password_salary @id int , @username nvarchar(50) , @password nvarchar(50)
as
declare @years int 
select @years = t.years_of_experience 
from teachers t 
where t.id = @id 
update  Employees 
set username = @username , password = @password , salary = @years*500 
where id=@id
insert into Teachers (year_of_enrollment , id ,username  ) values (year(current_timestamp) , @id , @username) ;
GO

------------------- System Administrator -------------
--As a system administrator, I should be able to ... Create a school with its information: school name, address, phone number, email, general information,
--vision, mission, main language, type(national, international) and fees. (1)
create proc Create_School
@school_id int ,
@school_name varchar(50),
@address varchar(50),
@phone_number int,
@email varchar(50),
@general_information varchar(50),
@vision varchar(50),
@mission varchar(50),
@main_language varchar(50),
@type varchar(50),
@fees int
as
if(@school_id is not null and @school_name is not null and @phone_number is not null and @email is not null and @main_language is not null and @fees is not null and @address is not null and @type is not null)
begin
insert into Schools(primary_key,name,address,phone_number,mail,general_info,vision,mission,main_language,type,fees)
values(@school_id,@school_name,@address,@phone_number,@email,@general_information,@vision,@mission,@main_language,@type,@fees)
end
GO

--“As a system administrator, I should be able to ... Delete a school from the database with all of its corresponding information. Students and employees
--of this school should not be deleted from the system, but should not have a username and password
--on the system until they are assigned to a new school again.(4)
create proc Delete_School
@prim_key int
as
delete from Schools where @prim_key=Schools.primary_key
GO



 -- 9- Answer the questions asked by the students for each course I teach. 
 create proc questions_answered_by_teacher @primary_key int , @answer text 
 as 
 update Questions 
 set answer = @answer 
 where primary_key = @primary_key
 GO


 

 -- 8- View the questions asked by the students for each course I teach
 create proc questions_viewed_by_teacher @course nvarchar(50) , @username varchar(50)
 as 
 declare @sc int 
 select  @sc = e.school 
 from Employees e
 where e.username =@username
 select q.content , s.name  
 from Questions q , Children s , Students ss 
 where q.course = @course and q.student = s.ssn and ss.ssn = q.student and ss.school = @sc
 GO

 

--12 Search in a list of courses that i take by its name or code.

--a using code
create proc search_course_code @student_ssn int ,@code varchar(50)
as

select distinct c.*
from Teachers_teaches_Courses_to_Students e,Courses c
where @student_ssn=e.student and @code=c.code and c.code=e.course
GO


create proc Search_School_ByAddress
@address varchar(50)
as
if(@address is not null)
begin
select S.* from Schools S where S.address = @address
RETURN
end
GO


------------------- System User -------------

--As a system user (registered, or not registered), I should be able to ...Search for any school by its name, address or its type (national/international). (1)
create proc Search_School_ByName
@name varchar(50)
as
if(@name is not null)
begin
select S.* from Schools S where S.name = @name
RETURN
end
GO

create proc Search_School_ByType
@type varchar(50)
as
if(@type is not null)
begin
select S.* from Schools S where S.type = @type
RETURN
end
GO


-- 7- Write monthly reports about every student I teach. A report is issued on a specific date to a specific student and contains my comment.

create proc student_has_report_from_teacher @username nvarchar(50) , @ssn int  , @comment nvarchar(500) 
as 
declare @parent nvarchar(50) 
select @parent = c.parent 
from Children c 
where c.ssn = @ssn 
 declare @x int ;
select @x = b.id from Teachers b where b.username= @username
insert into reports (date , reply, comment ,student , teacher  ,  parent,teacherid) values (current_timestamp , '',@comment , @ssn , @username , @parent,@x );
GO

 

  -- 10- View a list of students that i teach categorized by the grade and ordered by their name (first name and last name )
  
  create proc students_seen_by_teacher @username nvarchar(50) 
  as 
  declare @sc int 
 select  @sc = e.school 
 from Employees e
 where e.username =@username  
  select c.name ,  s.grade 
  from Children c , Students s where s.school = @sc and s.ssn IN (
  select sc.student 
  from Teachers_teaches_Courses_to_Students sc
  where sc.teacher = @username ) group by s.grade ,c.name order by c.name
  GO

  create proc teacher_grade_assignment @username varchar(50) , @id int , @posting_date datetime , @grade decimal ,@course varchar(50)
as 
declare @ssn int 
select @ssn = s.ssn 
from Students s 
where s.id = @id 
update Students_Submits_Assignments_In_Courses 
set grade = @grade
where post_date=@posting_date and course=@course and student=@ssn
GO

create proc teacher_post_assignment @username nvarchar(50) , @code nvarchar(50) , @posting_date datetime , @due_date datetime , @content text , @maximum_marks decimal 
  as 
  insert into assignments (posting_date , due_date , code , content , teacher , maximum_marks)
  values (@posting_date , @due_date , @code , @content , @username , @maximum_marks)
  GO

  create proc teacher_signup @first_name nvarchar(50), @middle_name nvarchar(50), @last_name nvarchar(50), @birthdate datetime , @address nvarchar(100), @email nvarchar(100), @gender nvarchar(10) , @username nvarchar(50) , @password nvarchar(50) , @school int 
 as 
 insert into Employees ( gender, first_Name, middle_Name, last_Name,address,birth_date,mail,school)
  values (@gender , @first_name , @middle_name , @last_name , @address , @birthdate,@email,@school) ;

GO

create proc teacher_view_assignemnts @username varchar(50) 
as 
select a.code , a.posting_date,a.due_date 
from Assignments a 
where a.teacher=@username order by a.code
GO


-- 2- View a list of courses’ names I teach categorized by level and grade.
  create proc teacher_view_courses @username nvarchar(50) 
  as 
  select c.name as 'Course Name' , c.course_grade as 'Course Grade ' , c.course_level as 'Course Level'   
  from Courses c 
  where c.code in (
  select c1.course 
  from Teachers_assigned_to_Courses c1 
  where c1.teacher = @username 
  ) order by  c.course_level , c.course_grade
  GO

  -- 4- View the students’ solutions for the assignments I posted ordered by students’ ids.
create proc teacher_view_soluions_for_Assignments @username nvarchar(50) , @course nvarchar(50) 
as
declare @sc int 
 select  @sc = e.school 
 from Employees e
 where e.username =@username  
select  s.id,sc.solution 
from Students_Submits_Assignments_In_Courses sc  , Students s  
where sc.course = @course  and sc.student=s.ssn and s.school =@sc order by s.id
GO

 

 -- 12- Display the name of the high school student who is currently a member of the greatest number of clubs.
create proc teacher_view_student_who_participates_maximum_clubs @username nvarchar(50)
as 
declare @sc int 
 select  @sc = e.school 
 from Employees e
 where e.username =@username  
select c.name 
from children c where c.ssn IN(
select top 1 s.student 
from  Students_Join_Clubs s , Students ss
where ss.school = @sc and s.student = ss.ssn 
group by s.student
order by count(s.student) desc)
GO



 -- 11- View a list of students that did not join any activity.
create proc teacher_view_students_with_no_activity @username nvarchar(50) 
 as 
 declare @sc int 
 select  @sc = e.school 
 from Employees e
 where e.username =@username  
 select c.name 
 from Children c 
 where c.ssn IN (
 select s.ssn 
 from Students s 
 where  s.school=@sc 
 except (
 select s1.ssn 
 from students s1 , Students_ParticipateIn_Activity p 
 where p.student = s1.ssn    ) )

 GO

 
--As a system user (registered, or not registered), I should be able to ... View a list of all available schools on the system categorized by their level.(2)
create proc View_Available
as
select S.*
from Schools S full outer join Elementaries E on S.primary_key = E.school
			   full outer join Middles M on S.primary_key = M.school
			   full outer join Highs H on S.primary_key = H.school
			   RETURN

GO

--As a system user (registered, or not registered), I should be able to ...View the information of a certain school along with the reviews written about it and teachers
--teaching in this school. (3)
create proc View_Info
@primary_key int
as
select s.* , p.* ,f.review 
from Schools s left outer join Employees e on s.primary_key=e.school 
    inner join Teachers p  on e.id=p.id 
    inner join Parents_Review_Schools f on s.primary_key=f.school 
 
where s.primary_key=@primary_key
RETURN
GO
-- Procedure number 12 Parent , this procedure output an average of all ratings that a teacher has 
create proc View_Overall_Ratings
			@teacher varchar(50) 
AS
BEGIN


	select avg(r.rate)
		from Parents_Rate_Teachers r
		where r.teacher=@teacher 
	RETURN


END
GO

