---------------------student-------------------

go
--1 Update my account information except for the username.
create proc Update_Student_Info @username varchar(150),@level int,@password varchar(150),@grade int, @School int 
As
if @grade is not null and @username  is not null and @level  is not null and @School is not null
UPDATE Students 
SET password=@password,grade=@grade,school=@school,@level=level
WHERE Students.username=@username;--Q
---------------

go
--2 View a list of courses’ names assigned to me based on my grade ordered by name.
create proc list_my_courses @username varchar(150)
As

select c1.code as 'course code',c1.name as 'course name'
from Courses c1,Students s2
where s2.username=@username and s2.grade=c1.course_grade and s2.level=c1.course_level 
order by c1.name asc

go

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


go
--4 View all questions asked by other students on a certain course along with their answers.
create proc view_Others_Questions @username varchar(150),@course varchar(50)
As
declare @student_ssn int
Select @student_ssn=s.ssn
from Students s
where s.username=@username

select q.content,q.answer 
from Questions q
where q.course=@course 

go


--5 View the assignments posted for the courses I take.

create proc View_my_assignments @username varchar(150), @code varchar(50)
AS
declare @student_ssn int
select @student_ssn=s.ssn
from Students s where s.username=@username

select s.due_date as 'posting date',s.posting_date as 'due date ',s.content 'as content',s.code as 'course'
from Assignments s,Teachers_teaches_Courses_to_Students tr
where s.code=tr.course and  tr.student=@student_ssn and s.code=@code

go
--6 Solve assignments posted for courses I take.

create proc solve_assignment @username varchar(150),@course varchar(50),@ans text,@posting_date datetime,@due_date datetime
as

declare  @student_ssn int
select @student_ssn=s.ssn
from Students s where s.username=@username

declare @suc int

if(@course is not null and @ans is not null and  @posting_date

 is not null and  @due_date is not null and @student_ssn is not null and
exists (select r.* from Teachers_teaches_Courses_to_Students r
where r.student=@student_ssn and r.course=@course) and datediff(Second,@due_date,GETDATE())<0
)
begin
insert into Students_Submits_Assignments_In_Courses
 values(@student_ssn,@posting_date,@due_date,@course,@ans,null)
 set @suc =1
 end
set @suc=-1
return @suc

 go
--7 View the grade of the assignments I solved per course.
create proc check_my_grades_in_course @username varchar(150),@course varchar(50)
as

declare @student_ssn int
select @student_ssn=s.ssn
from Students s where s.username=@username


select s.course,s.post_date,s.due_date,s.grade 
from
Students_Submits_Assignments_In_Courses s
where @course=s.course and @student_ssn=s.student and  exists (select r.* from Teachers_teaches_Courses_to_Students r
where r.student=@student_ssn and r.course=@course)

go
--8 View the announcements posted within the past 10 days about the school I am enrolled in

create proc check_announcments @student_id int
as
declare @my_school int
select @my_school=s.school
from Students s
where @student_id=s.ssn

select an.*
from Announcements an,Employees e
where an.admin=e.username and e.school=@my_school and datediff(DD,an.date,GETDATE()) <10


go


--9 View all the information about activities offered by my school, as well as the teacher responsible for it.


create proc view_my_school_activities @username varchar(150)
as
declare @student_ssn int
select @student_ssn=s.ssn
from Students s where s.username=@username

declare @my_school int
select @my_school=s.school
from Students s
where @student_ssn=s.ssn

select e.*,e1.teacher
from Activities e,Administrators_Assign_Activities e1
where 
 e1.admin in (
 select em.username from Employees em where em.school=@my_school) and 
 e1.teacher in ( select em.username from Employees em where em.school=@my_school) and 
 e.primary_key=e1.activity 


 go

 --10 Apply for activities in my school on the condition that I can not join two activities of the same type on the same date.
 
 create proc apply_for_activity @username varchar(150),@activity_id int
 as
 declare @suc int
 declare @student_ssn int
select @student_ssn=s.ssn
from Students s where s.username=@username

 declare @my_school int
select @my_school=s.school
from Students s
where @student_ssn=s.ssn

declare @my_activity_type varchar(50)
select @my_activity_type=act.type
from Activities act
where @activity_id=act.primary_key

declare @my_activ_date datetime
select @my_activ_date=act2.date
from Activities act2
where  @activity_id=act2.primary_key


if (
not exists (
select *
from Students_ParticipateIn_Activity sa,Activities a
where a.type=@my_activity_type and a.date =@my_activ_date and sa.student=@student_ssn and sa.activity =a.primary_key)

and
 @activity_id in 
( select act.primary_key
from Activities act,Administrators_Assign_Activities ad 
where  ad.admin in (
 select em.username from Employees em where em.school=@my_school)
  and 
 ad.teacher in ( select em1.username from Employees em1 where em1.school=@my_school) 
 and 
 act.primary_key=ad.activity
 ) 
 )
 begin
insert into Students_ParticipateIn_Activity values(@student_ssn,@activity_id)
set @suc=1
end
else set @suc=-1

return @suc

go

-- 11 Join clubs offered by my school, if I am a highschool student.


create proc join_a_club @username varchar(150),@club_id int
 as
 declare @student_id int
 select @student_id=s.ssn
 from Students s
 where @username=s.username

 declare @my_school int
select @my_school=s.school
from Students s
where @student_id=s.ssn
declare @suc int

if(
 @club_id in (select c2.club_id from Clubs c2 where c2.high_school=@my_school and not exists( select c1.* from Students_Join_Clubs c1 where c1.club=@club_id and c1.student=@student_id)))
 begin
insert into Students_Join_Clubs values (@student_id,@club_id)
set @suc=1
end
else
set @suc=-1
return @suc

go

-- view th clubs

create proc display_a_club @username varchar(150)
 as

 declare @student_id int
 select @student_id=s.ssn
 from Students s
 where @username=s.username

 declare @my_school int
select @my_school=s.school
from Students s
where @student_id=s.ssn


select c2.* from Clubs c2 where c2.high_school=@my_school 

go



--12 Search in a list of courses that i take by its name or code.

--a using code
create proc search_course_code @student_ssn int ,@code varchar(50)
as

select distinct c.*
from Teachers_teaches_Courses_to_Students e,Courses c
where @student_ssn=e.student and @code=c.code and c.code=e.course

go
--b using name
create proc search_course_name @student_ssn int ,@name varchar(100)
as

select distinct  c.*
from Teachers_teaches_Courses_to_Students e,Courses c
where @student_ssn=e.student and @name=c.name and c.code=e.course
GO

--//////////////////////////////
create proc  check_in_high @username varchar(150)
as
declare @ans int

 declare @student_id int
 select @student_id=s.ssn
 from Students s
 where @username=s.username

 declare @my_school int
select @my_school=s.school
from Students s
where @student_id=s.ssn
 if(exists (select * from Highs where Highs.school=@my_school))
 set @ans=1
 else
 set @ans=-1

 return @ans
 go