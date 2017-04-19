
 ------------------- Parent ----------------------------------

-- procedure number 1  Parent , parent can sign up by providing (first name and last name), contact email, mobile numbers (maximum of 4) , address,
-- home phone number, a unique username and password.
create proc Parent_Signup
		@first_name varchar(50),
		@last_name varchar(50),
		@mail varchar(150),
		@mobile_number int ,
		@mobile_number1 int ,
		@mobile_number2 int ,
		@mobile_number3 int ,
		@address varchar(150),
		@home_number int ,
		@username varchar(50),
		@password varchar(50)
	As
	BEGIN
	IF @first_name is null or @last_name is null or @mail is null or
	@address is null or @home_number is null or @username is null or @password is null 
	begin
		print 'One of the inputs is null'
		end
	Else
	begin
		IF (not exists (select username from Parents where username=@username)) and (not exists (select mail from Parents where mail=@mail))
		begin
		insert into Parents
			values(@username, @home_number, @mail, @password, @first_name, @last_name, @address);
		
		
		IF @mobile_number is not null
		begin
		insert into Parents_Mobiles
			values(@mobile_number,@username);
		end
		IF @mobile_number1 is not null
		begin
		insert into Parents_Mobiles
				values(@mobile_number1 , @username);
		end
		IF @mobile_number2 is not null
		begin
		insert into Parents_Mobiles
				values(@mobile_number2 , @username);
		end
		IF @mobile_number3 is not null
		begin
		insert into Parents_Mobiles
			values(@mobile_number3 , @username);
	end
	end
	ELSE print 'You should choose unique username and unique mail  '
	end
	END


	
	go
	
	
	

-- Procedure number 2 Parent , the parent can apply for the child in any school by providing information about the child (his/her social security number
--(SSN), name, birthdate, and gender.)


create proc Parent_APPLYFOR_CHILD_IN_SCHOOL
			@parent_username varchar(50),
			@ssn int ,
			 @name varchar(150),
			 @birthdate datetime,
			 @gender varchar(10),
			 @school_id int
As
BEGIN
	IF @parent_username is null or @ssn is null or @name is null or @birthdate is null or @gender is null or @school_id is null
	print 'Wrong Input' 
	ELSE
	begin
	if @parent_username in(select username from Parents )
	begin
		if @ssn not in (select c.ssn from Children c)
		insert into Children
		values(@ssn,@name,@gender,@birthdate,@parent_username);

		end

	
	IF	@school_id in (select Primary_key from Schools )
	
	insert into Parents_ApplyForChildIn_Schools
		values(@parent_username,@school_id,@ssn,Null);
	end
END




go
-- Procedure number 3 Parent , the parent can see all the schools that accepted his child categorized by the child name


create proc Schools_ACCEPTED_CHILD
			@parent_username varchar(50)
	AS
	BEGIN
		select  c.ssn as 'Child SSN',c.name as 'Child Name', s.primary_key as 'School ID',s.name as'School Name'
		from Parents p inner join Children c on p.username=c.parent inner join Parents_ApplyForChildIn_Schools f on p.username=f.parent and c.ssn =f.child inner join Schools s on f.school=s.primary_key
		where f.accepted ='True' and p.username = @parent_username
		
		order by c.ssn , s.primary_key
	RETURN
	END
	


 
 go
 
 -- Procedure number 4 Parent , this procedure make the parent can choose for his child any school that accepted it by giving his child ssn 
 -- then the child will wait until an admin verify him .
CREATE proc CHOOSE_SCHOOL
			@Child_ssn int ,
			@school_primary_key int
AS 
BEGIN
	declare @x int 
	declare @y int 
	select @x = c.age
	from Children c
	where c.ssn = @Child_ssn

	if @x-5 < 7 
	begin
		set @y = 1
	end 
	else begin
		if @x-5 < 10
		begin
			set @y=2 
		end
	
	else 
		begin
		set @y = 3
		end
	end 

	IF exists (select p.child from Parents_ApplyForChildIn_Schools p where p.accepted ='True' and p.school=@school_primary_key and p.child=@Child_ssn)
		begin
		if not exists(select p.ssn from Students p where p.ssn =@Child_ssn)
		 insert into Students	
				values(@Child_ssn,null,null,@x-6,@y,@school_primary_key);
		end
	else print 'No Child or School Found'
END


go
 



-- Procedure number 5 Parent , this procedure view all the reports and teachers for students whose parent is the user


create proc VIEW_REPORTS
	@parent_username varchar(50)
AS
BEGIN
	select r.student as 'Student SSN' , r.teacher 'Teacher Username', r.content 'Comment' , r.date 'Date'
		from Reports r
		where r.student in (select s.ssn
							from Students s inner join Children c on s.ssn = c.ssn where c.parent=@parent_username)
RETURN
END




go
-- Procedure number 6 Parent ,this procedure make the parent can reply to reports written about one of his children .
create proc Reply  
			@reply text ,
			@student int ,
			@teacher varchar(50),
			@date datetime 

AS
BEGIN
	
UPDATE Reports SET reply = @reply where student=@student and teacher = @teacher and date = @date;
		
END

go
-- Procedure number 7 Parent , this procedure  view a list of all schools of all user's children ordered by its name.

create Proc View_all_myChildren_Schools
			@parent_username varchar(50)
AS
BEGIN
	select  b.ssn as 'Child SSN', s.primary_key as 'School ID' ,s.name 'School Name'
	from Students b inner join Children c on b.ssn = c.ssn  inner join Schools s on s.primary_key=b.school
	where c.parent=@parent_username
	order by b.ssn ,s.primary_key 
	RETURN
END



go
-- Procedure number 8 Parent ,this procedure view the announcements posted within the past 10 days about a school if one of user's children is
-- enrolled in it.


create proc View_Announcements
			@parent_username varchar(50)

AS
BEGIN
	select b.ssn,b.username,s.primary_key,s.name ,an.primary_key, an.title,  an.type,  an.description 
	from Students b inner join Children c on b.ssn = c.ssn  inner join Schools s on s.primary_key=b.school inner join Employees e on e.school=s.primary_key inner join Administrators ad on ad.username=e.username inner join Announcements an on an.admin =ad.username
	where an.date>  CURRENT_TIMESTAMP-10 and c.parent=@parent_username 
	
	
RETURN
END

go


-- Procedure number 9 Parent ,  this procedure make the parent can rate a teacher if this teacher teaches a parent's child 

create proc Parent_RATE_TEACHER
	@parent_username varchar(50),
	@teacher varchar(50),
	@rating decimal 
AS
BEGIN
if @teacher in(select t.teacher from Students sc inner join Children c on sc.ssn=c.ssn inner join Teachers_teaches_Courses_to_Students t on sc.ssn=t.student  where c.parent=@parent_username ) and @parent_username  not in (select p.parent from Parents_Rate_Teachers p where p.teacher=@teacher )
	begin
	 declare @x int ;
	select @x = b.id from Teachers b where b.username= @teacher
	insert into Parents_Rate_Teachers
		values(@parent_username,@teacher,@x,@rating)
end
else 
	print 'this teacher does not teach your children or you have submitted rates before' 

END


go

-- Procedure number 10 Parent , this procedure make the parent can review any school if he has a child studying in it .

create proc Parent_Review_School
		@parent_username varchar(50),
		@school int ,
		@review text 
AS
BEGIN
IF @school  in (select s.primary_key from Students b inner join Children c on b.ssn = c.ssn  inner join Schools s on s.primary_key=b.school where c.parent=@parent_username) and @parent_username not in (select p.parent from Parents_Review_Schools p where p.school=@school)

insert into Parents_Review_Schools
		values(@parent_username,@school,@review);

Else
print 'you do not have any students in this school or you have reviewed it before'


END


go

-- Procedure number 11 Parent , this procedure make the parent delete a review that he make before in one of his children schools 
create proc Delete_Review
		@parent_username varchar(50),
		@school int 
	AS
BEGIN
IF @parent_username  in (select p.parent from Parents_Review_Schools p where p.school=@school)

delete from Parents_Review_Schools 
		where parent=@parent_username and school = @school

Else
print 'you do not have any Review for this school'


END


go
-- Procedure number 12 Parent , this procedure output an average of all ratings that a teacher has 
CREATE proc View_Overall_Ratings
			@parent_username varchar(50)
AS
BEGIN


	select p.teacher as 'Teacher Username' , avg(h.rate) as 'average ratings'
		from Children c inner join Students s on c.ssn = s.ssn inner join Teachers_teaches_Courses_to_Students p on s.ssn=p.student inner join Parents_Rate_Teachers h on h.teacher=p.teacher
		where c.parent=@parent_username
		group by p.teacher
	RETURN


END

go

-- Procedure number 13 Parent , this procedure give the top 10 schools that have the highest number of reviews or the highest number of student whichever is the maximum
-- ma is a helper function to get maximum between to int values
create function ma(@val1 int, @val2 int)
returns int
as
begin
declare @x int
if @val1 is null
set	@val1 =0 
if @val2 is null
	set @val2 = 0
  if @val1 > @val2
   set @x = @val1
  else set @x = @val2
  return @x
end 

go

create proc TOP10_School
		@parent_username varchar(50)
AS
BEGIN

Select top(10) s.primary_key,s.name ,dbo.ma(count(distinct b.ssn),count(distinct g.parent))
	from Students b full outer join Schools s on b.school=s.primary_key full outer join  Parents_Review_Schools g  on s.primary_key=g.school
	where  s.primary_key not in (select s2.primary_key from Students bb inner join Children ch on bb.ssn = ch.ssn inner join Schools s2 on bb.school = s2.primary_key where ch.parent=@parent_username )
	group by s.primary_key ,s.name
	order by dbo.ma(count(distinct b.ssn),count(distinct g.parent)) desc

	RETURN
END



go
--Procedure number 14 Parent , this procedure give the highest international school that has reviews more than all that of the nationals schools 


create proc Highest_International
AS
BEGIN


select top(1) s.primary_key,s.name ,count(*)
from Schools s inner join  Parents_Review_Schools p on s.primary_key=p.school
where s.type='international' 
group by s.primary_key ,s.name
having count(*)>ALL ( select count(*)
									from Schools s inner join  Parents_Review_Schools p on s.primary_key=p.school
									where s.type='national' 
									group by s.primary_key )
order by count(*) desc
RETURN


END
go
create proc Get_all_Reviews
	@username varchar(50)
AS
	select r.school as 'School_ID' , r.review as 'Review'
	from Parents_Review_Schools r
	where r.parent=@username
RETURN