create database MakeMyTrip
use MakeMyTrip

------------------------------------------------------------------------------------------------------------------------
------------------------------------------------tblFlightStatus Table-----------------------------------------------------------
create table tblFlightStatus
(
FlightStatusId int identity(10,1) primary key,
FlightStatusName varchar(30)
)
-----------------------------------------------Insert Procedure of tblFlightStatus----------------------------------------------------
create proc sp_tblFlightStatus(@FlightStatusName varchar(30))
as
insert tblFlightStatus values (@FlightStatusName)
return @@identity
-------------------------------------------------Values--------------------------------------------------------------------------------
insert into tblFlightStatus values('Domestic')
insert into tblFlightStatus values('International')

select * from tblFlightStatus
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------tblCompany Table-----------------------------------------------------------------
create table tblCompany
(
Companyid int identity(20,1) primary key,
CompanyName varchar(30),
CompanyAddress varchar(50),
CompanyURL varchar(20)
)
---------------------------------------------------Insert Procedure of tblCompany--------------------------------------------------
create proc sp_tblCompany 
(
@CompanyName varchar(30),
@CompanyAddress varchar(50),
@CompanyURL varchar(20)
)
as
insert tblCompany values (@CompanyName,@CompanyAddress,@CompanyURL)
return @@identity
-----------------------------------------------------Show tblCompany -----------------------------------------------------------------
create sp_showCompany
as
select * from tblCompany
----------------------------------------------------------Values-----------------------------------------------------------------------
insert into tblCompany values('Kingfisher','12-A,Mohali,Punjab','www.kingfisher.com')
insert into tblCompany values('JetAirways','13-Phase,West Andheri,Mumbai','www.jetairways.com')
sp_tblCompany 'Indian Airlines','15-Phase,New Delhi','www.indianairlines'

select * from tblCompany
---------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------tblFlights Table-----------------------------------------------------------------------------
create table tblFlights
(
FlightId int identity(30,1) primary key,
FlightName varchar(30),
CompanyId int references tblCompany,
FlightStatusId int references tblflightstatus
)
----------------------------------------------Insert Procedure of tblFlights----------------------------------------------------------
create proc sp_tblFlights
(
@FlightName varchar(30),
@CompanyId int, 
@FlightStatusId int)
as
insert tblFlights values(@FlightName, @CompanyId, @FlightStatusId)
return @@identity
----------------------------------------------Show Procedure--------------------------------------------------------------------------------
create proc show_tblFlights
as
select FlightId,FlightName,CompanyName,FlightStatusName from tblFlights,tblCompany,tblFlightStatus
where tblFlights.CompanyId=tblCompany.CompanyId and tblFlights.FlightStatusId=tblFlightStatus.FlightStatusId
----------------------------------------------------Values----------------------------------------------------------------------------------------
insert into tblFlights values ('KF-101',20,10)
insert into tblFlights values ('KF-102',20,11)
insert into tblFlights values ('JA-201',21,10)
insert into tblFlights values ('JA-202',21,11)
------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------tblRoutes Table-------------------------------------------------------------------------
create table tblRoutes
(
RouteId int identity(40,1) primary key,
Source varchar(20),
Destination varchar(20)
)
---------------------------------------------------Insert Procedure of tblRoutes--------------------------------------------------------------
create proc sp_tblRoutes(@Source varchar(20), @Destination varchar(20))
as
insert tblRoutes values(@Source, @Destination)
return @@identity
----------------------------------------------------Values-----------------------------------------------------------------------------------
insert into tblRoutes values('India','Los Angels')
insert into tblRoutes values ('Chandigarh','Jammu')
insert into tblRoutes values ('India','London')
insert into tblRoutes values ('Delhi','Bombay')

select * from tblRoutes
---------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------tblCustomerStatus Table-------------------------------------------------------------
create table tblCustomerStatus
(
CustomerStatusId int identity(50,1) primary key,
CustomerStatusName varchar(20)
)
---------------------------------------------------------Insert Procedure of tblCustomerStatus-------------------------------------------
create proc sp_tblCustomerStatus(@CustomerStatusName varchar(20))
as
insert tblCustomerStatus values(@CustomerStatusName)
return @@identity
---------------------------------------------------------Values----------------------------------------------------------------------------
insert into tblCustomerStatus values('Adult')
insert into tblCustomerStatus values('Children')
insert into tblCustomerStatus values('Infant')

select * from tblCustomerStatus
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------tblFlightClassStatus Table-------------------------------------------------
create table tblFlightClassStatus 
(
FlightClassStatusId int identity(60,1) primary key,
FlightClassStatusName varchar(20)
)
--------------------------------------------------------Insert Procedure of tblFlightClassStatus-------------------------------------------
create proc sp_tblFlightClassStatus(@FlightClassStatusName varchar(20))
as
insert tblFlightClassStatus values(@FlightClassStatusName)
return @@identity
---------------------------------------------------------Values-----------------------------------------------------------------------------
insert into tblFlightClassStatus values('Economy')
insert into tblFlightClassStatus values('Buisness')

select * from tblFlightClassStatus
---------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------tblFlightRoutes Table-------------------------------------------------------------------
create table tblFlightRoutes
(
FlightRouteId int identity(70,1) primary key,
DepartureTime varchar(20),
ArrivalTime varchar(20),
FlightDays varchar(20),
RouteId int references tblRoutes,
FlightId int references tblFlights
)
------------------------------------------------------Insert Procedure of tblFlightRoutes----------------------------------------------------
alter proc sp_tblFlightRoutes
(
@DepartureTime varchar(20),
@ArrivalTime varchar(20),
@FlightDays varchar(20),
@FlightId int,
@source varchar(20),
@destination varchar(20))

as
declare
	@routeId int
begin
set @routeId = (select routeid from tblRoutes where Source =@source and Destination =@destination) 
insert tblFlightRoutes values(@DepartureTime, @ArrivalTime,@FlightDays,@RouteId,@FlightId)
return @@identity
end
-------------------------------------------------------Show Procedure------------------------------------------------------------------------------
create proc show_tblFlightRoutes
as
select FlightName,Source,Destination,DepartureTime,ArrivalTime,FlightDays from tblFlights,tblRoutes,tblFlightRoutes
where tblFlightRoutes.FlightId=tblFlights.FlightId and tblFlightRoutes.RouteId=tblRoutes.RouteId

-------------------------------------------------------Values------------------------------------------------------------------------
insert into tblFlightRoutes values ('09:00 Am','04:00 Pm','6',41,30)
insert into tblFlightRoutes values ('11:00 AM','11:00 PM','6',40,31)
insert into tblFlightRoutes values ('10:00 AM','10:00 PM','6',42,33)
insert into tblFlightRoutes values ('08:00 AM','03:00 PM','6',43,32)

select * from tblFlightRoutes
---------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------tblFare Table-------------------------------------------------------------
create table tblFare 
(
FareId int identity(80,1) primary key,
Fare int
)
--------------------------------------------------------Insert Procedure of tblFare---------------------------------------------------
create proc sp_tblFare(@Fare int)
as
insert tblFare values(@Fare)
return @@identity

--------------------------------------------------------Values------------------------------------------------------------------------
insert into tblFare values(5000)
insert into tblFare values(3000)
insert into tblFare values(1000)
insert into tblFare values(8000)
insert into tblFare values(10000)
insert into tblFare values(20000)
insert into tblFare values(8000)
insert into tblFare values(6000)
insert into tblFare values(3000)

select * from tblFare
----------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------tblFlightFare Table---------------------------------------------------------------
create table tblFlightFare
(
FlightFareId int identity(90,1) primary key,
FlightClassStatusId int references tblFlightClassStatus,
CustomerStatusId int references tblCustomerStatus,
FareId int references tblFare,
FlightId int references tblFlights
)
alter table tblFlightfare add foreign key(FlightId) references tblflights
--------------------------------------------------------Insert Procedure of tblFlightFare-------------------------------------------------
create proc sp_tblFlightFare
(
@FlightClassStatusId int,
@CustomerStatusId int,
@FareId int,
@FlightId int
)
as insert tblFlightFare values(@FlightClassStatusId,@CustomerStatusId,@FareId,@FlightId)
return @@identity
---------------------------------------------show Procedue----------------------------------------------------------------------------
create proc show_tblFlightFare
as
select FlightFareId,FlightName,CustomerStatusName,FlightClassStatusName,Fare
from  tblFlights,tblCustomerStatus,tblFlightClassStatus,tblFare,tblFlightFare
where tblFlightFare.FlightId=tblFlights.FlightId and tblFlightFare.CustomerStatusId=tblCustomerStatus.CustomerStatusId 
and tblFlightFare.FlightClassStatusId=tblFlightClassStatus.FlightClassStatusId and tblFare.FareId=tblFlightFare.FareId

----------------------------------------------------------Values--------------------------------------------------------------------------
---------inserting for KF-101 Domestic------------------
insert into tblFlightFare values (60,50,71,80)
insert into tblFlightFare values (60,51,71,84)
insert into tblFlightFare values (60,52,71,85)
insert into tblFlightFare values (61,50,71,86)
insert into tblFlightFare values (61,51,71,87)
insert into tblFlightFare values (61,52,71,88)

------------inserting for JA-202 International------------
insert into tblFlightFare values (60,50,73,87)
insert into tblFlightFare values (60,51,73,80)
insert into tblFlightFare values (60,52,73,88)
insert into tblFlightFare values (61,50,73,83)
insert into tblFlightFare values (61,51,73,82)
insert into tblFlightFare values (61,52,73,86)

select * from tblFlightFare
----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------tblFlightseats Table----------------------------------------------------------------------------
create table tblFlightSeats
(
FlightSeatsId int identity(100,1) primary key,
SeatNo int,
FlightClassStatusId int references tblFlightClassStatus,
FlightRouteId int references tblFlightRoutes
)

sp_showFlights_forRoutes 'Chandigarh','Mumbai'


delete tblFlightSeats

sp_showFlights_forRoutes 'Chandigarh','Mumbai'

--------------------------------------------------flights which are following source and destination
alter proc sp_showFlights_forRoutes(@source varchar(20),@destination varchar(20))
as
select flightName,tblFlightRoutes.FlightId from tblRoutes, tblFlightRoutes,tblFlights 
							where 
							tblRoutes.RouteId = tblFlightRoutes.RouteId
							and
							tblFlights.FlightId = tblFlightRoutes.FlightId
							and
							 Source=@source and Destination =@destination
-------------------------------------------------------------------------------------------------------------------------------------							 
sp_FlightRouteDetails 'Chandigarh','Mumbai'


select *from tblFlightRoutes

sp_rename 'tblFlightRoutes.ArrivalTime','Arr_Time'


select * from tblFlightFare

select* from tblFlightClassStatus



alter proc sp_FlightRouteDetails(@source varchar(20),@destination varchar(20))
as

select  flightName,tblFlightRoutes.FlightId,Source,Destination, Dep_Time,Arr_Time,FlightDays from tblRoutes, tblFlightRoutes,tblFlights 
							where 
							tblRoutes.RouteId = tblFlightRoutes.RouteId
							and
							tblFlights.FlightId = tblFlightRoutes.FlightId
							and
							 Source=@source and Destination=@destination
							 
							 
							 
							


----------------------------------------------Insert Procedure of tblFlightSeats---------------------------------------------------------------
alter proc InsertFlightSeats(@TotalSeats int,@FlightClassStatusId  int,@Source varchar(20),@destination varchar(20),@flightId int )
as
	declare
		@ctr int,
		@seatno varchar(10),
		@FlightRouteId int
	begin
	   set @FlightRouteId = (select FlightRouteId from tblRoutes, tblFlightRoutes 
							where 
							tblRoutes.RouteId = tblFlightRoutes.RouteId
							and  Source = @Source  and Destination =@Destination and FlightId=@flightId)
		set @ctr = 1
		while(@ctr <= @TotalSeats)
	begin
			set @seatno = cast(@ctr as varchar(10))
			
			insert tblFlightSeats values(@SeatNo,@FlightClassStatusId,@FlightRouteId)
			
	        
	   set  @FlightRouteId = (select FlightRouteId from tblRoutes, tblFlightRoutes 
							  where tblRoutes.RouteId = tblFlightRoutes.RouteId
							  and  Source = @Source  and Destination =@Destination and FlightId=@flightId )
							  
							  set @ctr = @ctr + 1
		end
	end
	

SELECT * FROM tblFlightClassStatus
SELECT * FROM tblFlights

SELECT * FROM tblFlightSeats




sp_showFlightSeats 'Chandigarh','Mumbai',31,65



	
------------------------------------------------Show Procedure of tblFlightSeats-----------------------------------------------------------

create proc sp_showFlightSeats(@Source varchar(20),@Destination varchar(20),@FlightId int,@FlightClassStatusId int)
as
select Source,Destination,FlightName,FlightClassStatusName,SeatNo,tblFlights.FlightId,tblFlightClassStatus.FlightClassStatusId 
from tblRoutes,tblFlights,tblFlightClassStatus,tblFlightSeats,tblFlightRoutes
where tblFlightSeats.FlightRouteId=tblFlightRoutes.FlightRouteId
and
tblFlightRoutes.FlightId=tblFlights.FlightId
and
tblFlightRoutes.RouteId=tblRoutes.RouteId
and 
tblFlightClassStatus.FlightClassStatusId=tblFlightSeats.FlightClassStatusId
and 
Source=@Source 
and 
Destination=@Destination
 and
tblFlights.FlightId=@FlightId 
and 
tblFlightClassStatus.FlightClassStatusId=@FlightClassStatusId	

-------------------------------------------------------Values------------------------------------------------------------------------------
InsertFlightSeats 5,60,'Chandigarh','Jammu'
InsertFlightSeats 5,61,71
InsertFlightSeats 10,60,73
InsertFlightSeats 10,61,73

select * from tblFlightSeats
--------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------tblCountry Table-------------------------------------------------------------------------
create table tblCountry
(
CountryId int identity(200,1) primary key,
CountryName varchar(50)
)
---------------------------------------------------------Insert Procedure of tblCountry--------------------------------------------------------
create proc sp_tblCountry(@CountryName varchar(50))
as
insert tblCountry values(@CountryName)
return @@identity
---------------------------------------------------------Values---------------------------------------------------------------------------------
insert into tblCountry values('India')
insert into tblCountry values('England')

select * from tblCountry
------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------tblState Table-------------------------------------------------------------------------------
create table tblState
(
StateId int identity(210,1) primary key,
StateName varchar(20),
CountryId int references tblCountry
)
----------------------------------------------------------Insert Procedure of tblState---------------------------------------------------------------
create proc sp_tblState(@StateName varchar(20),@CountryId int)
as
insert tblState values(@StateName,@CountryId)
return @@identity
-----------------------------------------------------------Show Procedure--------------------------------------------------------------------------
create proc show_tblState
as
select StateId,CountryName,StateName from tblState,tblCountry where tblState.CountryId=tblCountry.CountryId
------------------------------------------------------------Values----------------------------------------------------------------------------------
insert into tblState values ('Punjab',200)
insert into tblState values ('Jammu & Kashmir',200)

select * from tblState


 
create proc getFlightRouteId (@Source varchar(20), @Destination varchar(20), @TotalSeats varchar(20),@FlightClassStatusId int)
as
	declare
		@FlightRouteId int
	begin
	SET @FlightRouteId = (select FlightRouteId from tblRoutes, tblFlightRoutes 
							where 
							tblRoutes.RouteId = tblFlightRoutes.RouteId
							and  Source = @Source  and Destination =@Destination )
	END
	
getFlightRouteId 'Chandigarh','Jammu','10',60

---------------------------------------------------------------------------------------------------------------------------------------------
create table tblCustomers
(
CustomerId int IDENTITY(1,1) PRIMARY KEY ,
FirstName varchar(50),
LastName varchar(50) ,
Emailid varchar(50),
Password varchar(50),
Age int ,
Address varchar(50) ,
CountryId int references tblCountry ,
StateId int references tblState,
City varchar(50) ,
PinCode int ,
MobileNo varchar(50) ,
Gender varchar(10) ,
securityques varchar(70),
answer varchar(70),
Role varchar(50)
)
------------------------------------------------------------------------------------------------
alter proc sp_tblCustomers
(
@FirstName varchar(50),
@LastName varchar(50),
@EmailId varchar(50),
@Password varchar(50),
@Age int,
@Address varchar(50),
@CountryId int,
@StateId int,
@City varchar(50),
@PinCode int,
@MobileNo varchar(50),
@Gender varchar(10),
@securityques varchar(70),
@answer varchar(70)
)
as
if exists (select * from tblCustomers where EmailId = @EmailId)
return 1
else
begin
insert tblCustomers values(@FirstName, @LastName,@EmailId,@Password, @Age,@Address,@CountryId,@StateId,@City,@PinCode,@MobileNo,@Gender,@securityques,@answer,'User')
return @@identity
end

------------------------------18 april 2013------------------------------------------------------

sp_flightFareDetails 31


create proc sp_flightFareDetails(@flightid int)
as
select tblFlights.FlightId
,fare,customerStatusNAME,flightName,FlightClassStatusName from 
tblFare,tblFlightFare,tblFlights, tblCustomerStatus,tblFlightClassStatus
where 
tblFlightFare.FareId = tblFare.FareId 
and
tblFlightFare.CustomerStatusId = tblCustomerStatus.CustomerStatusId
and
tblFlightFare.FlightClassStatusId = tblFlightClassStatus.FlightClassStatusId
and
tblFlightFare.FlightId = tblFlights.FlightId
and
tblflights.flightid=@flightid
order by CustomerStatusName,FlightClassStatusName






------------------------------------------------------tblFlightBooking Table-----------------------------------------------------------------
create table tblFlightBooking
(
PNRStatusId int ,
CustomerId int references tblCustomers,
FlightSeatsId int references tblFlightSeats,
FlightFareId int references tblFlightFare,
FlightRouteId int references tblFlightRoutes, 
DateOfBooking datetime,
primary key(CustomerId,PNRStatusId,FlightSeatsId)
)

select * from tblFlightBooking

insert tblFlightBooking values(1,1,100,90,70,'12/21/2011')
insert tblFlightBooking values(1,1,101,90,70,'12/21/2011')
insert tblFlightBooking values(1,1,103,91,70,'12/21/2011')
---------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------get the last pnr No-------------------------------------------------------------------
CREATE PROC getLastPnrStatus
as
declare
	@pnrStatus int
begin
	set @pnrStatus=	(select ISNULL(MAX(PNRStatusId),0) from tblFlightBooking)+1
	return @pnrstatus
end
----------------------------------------------------Insert Procedure of tblFlightBooking-------------------------------------------------
create proc sp_tblFlightBooking
(
@PNRStatusId int,
@CustomerId int,
@FlightSeatsId int,
@FlightFareId int,
@FlightRouteId int,
@DateOfBooking datetime
)
as
insert tblFlightBooking values(@PNRStatusId,@CustomerId,@FlightSeatsId,@FlightFareId,@FlightRouteId,@DateOfBooking)
-----------------------------------------------------------Values--------------------------------------------------------------------------
insert into tblFlightBooking values(2,1,100,90,71,'12/18/2011')
insert into tblFlightBooking values(2,1,101,91,71,'12/18/2011')
insert into tblFlightBooking values(112,2,100,90,71,'12/18/2011')
insert into tblFlightBooking values(112,2,101,90,71,'12/18/2011')
insert into tblFlightBooking values(112,2,102,91,71,'12/18/2011')

select * from tblFlightBooking
---------------------------------------------AVAILABLE SEATS IN FLIGHTS--------------------------------------------------------------------------------
create proc getAvailableSeatsinFlight(@flightName varchar(20),@FlightClassStatusId int,@dateofFlight datetime)
as
select flightname,seatno, tblFlightSeats.flightRouteid  from tblFlightSeats, tblFlightRoutes,tblFlights
where tblFlightRoutes.FlightRouteId = tblFlightSeats.FlightRouteId
and 
tblFlightRoutes.FlightId = tblFlights.FlightId
and
FlightClassStatusId= @flightClassstatusid and  FlightName =@flightName
and 
SeatNo not in (
SELECT  seatNo from  tblCustomers,tblFlightBooking,tblFlightSeats, 
 tblFlights, tblFlightRoutes,tblFlightClassStatus,tblRoutes 
where 
tblFlightBooking.CustomerId = tblCustomers.CustomerId
and
tblFlightBooking.FlightSeatsId=tblFlightSeats.FlightSeatsId
and
tblFlights.FlightId = tblFlightRoutes.FlightId
and
tblFlightSeats.FlightRouteId = tblFlightRoutes.FlightRouteId
and
tblFlightSeats.FlightClassStatusId = tblFlightClassStatus.FlightClassStatusId
and
tblRoutes .RouteId = tblFlightRoutes.RouteId                               
and
CONVERT(varchar(11),  DateOfBooking)  = CONVERT(varchar(11),@dateofFlight))

getAvailableSeatsinFlight 'KF-101',60,'12/23/2011' 

select * from tblFlightBooking
------------------------------------------------FLIGHT BOOKING-------------------------------------------------------------------------------------
create proc sp_FlightBookingForCustomers
(@PNRStatusId int,@CustomerId int,@Source varchar(20),@Destination varchar(20),@SeatNo int,@CustomerStatusId int,@FlightClassStatusId int,
@DateOfBooking datetime,@flightid int)
as
declare
	@flightRouteid int,
	@Flightfareid int,
	@flightSeatid int
begin

set @flightRouteid = (select flightrouteid from tblFlightRoutes, tblRoutes where tblFlightRoutes.RouteId = tblRoutes.RouteId
						and Source =@Source  and Destination =@Destination)

set @flightSeatid = (select FlightSeatsId  from tblFlightSeats where SeatNo= @SeatNo and FlightClassStatusId =@FlightClassStatusId
  and FlightRouteId= @flightRouteid)
	
set @Flightfareid = (select FlightFareId from tblFlightFare where FlightClassStatusId = @FlightClassStatusId 
					and CustomerStatusId=@CustomerStatusId and FlightId=@flightid)


insert tblFlightBooking values(@PNRStatusId,@CustomerId,@flightSeatid,@Flightfareid,@flightRouteid,@DateOfBooking)
end
--------------------------------------SHOW FLIGHT FARE IN tblFlightBooking--------------------------------------------------------------------------

select * from tblFlightBooking
--------------------------------------SHOW FLIGHT FARE IN tblFlightBooking--------------------------------------------------------------------------
create proc show_flightbooking(@PNRStatusId int)
as
select PNRStatusId,FlightClassStatusName, DateOfBooking,SeatNo,fare  from 
tblCustomers,tblFlightBooking,tblFlightSeats, tblFare,
tblFlightFare, tblFlights, tblFlightRoutes,tblFlightClassStatus,tblRoutes 
where 
tblFlightBooking.CustomerId = tblCustomers.CustomerId
and
tblFlightBooking.FlightSeatsId=tblFlightSeats.FlightSeatsId
and
tblFlightFare.FareId = tblFare.FareId
and
tblFlightBooking.FlightFareId = tblFlightFare.FlightFareId
and
tblFlights.FlightId = tblFlightRoutes.FlightId
and
tblFlightSeats.FlightRouteId = tblFlightRoutes.FlightRouteId
and
tblFlightSeats.FlightClassStatusId = tblFlightClassStatus.FlightClassStatusId
and
tblRoutes .RouteId = tblFlightRoutes.RouteId
and
PNRStatusId=@PNRStatusId

show_flightbooking 2
----------------------------------------For Flight Cancellation-------------------------------------------------------------------------------------------------------------
create proc sp_flightbookingdetails(@CustomerId int,@PNRStatusId int)
as
select FlightName,CustomerStatusName,FlightClassStatusName, DateOfBooking,SeatNo,tblFlightBooking.PNRStatusId,tblFlightBooking.CustomerId,tblFlightSeats.FlightSeatsId  from 
tblCustomers,tblFlightBooking,tblFlightSeats, tblFare,
tblFlightFare, tblFlights, tblFlightRoutes,tblFlightClassStatus,tblRoutes,tblCustomerStatus 
where 
tblFlightBooking.CustomerId = tblCustomers.CustomerId
and
tblFlightBooking.FlightSeatsId=tblFlightSeats.FlightSeatsId
and
tblFlightFare.FareId = tblFare.FareId
and
tblFlightBooking.FlightFareId = tblFlightFare.FlightFareId
and
tblFlights.FlightId = tblFlightRoutes.FlightId
and
tblFlightSeats.FlightRouteId = tblFlightRoutes.FlightRouteId
and
tblFlightSeats.FlightClassStatusId = tblFlightClassStatus.FlightClassStatusId
and
tblRoutes .RouteId = tblFlightRoutes.RouteId
and
tblCustomerStatus.CustomerStatusId=tblFlightFare.CustomerStatusId
and
PNRStatusId=@PNRStatusId and tblCustomers.CustomerId=@CustomerId

sp_flightbookingdetails 1,1

select * from tblFlightSeats

select * from tblFlightFare
select * from tblCustomerStatus

update tblFlightFare set CustomerStatusId=52 where FlightFareId =97







------------------------------------------------------tblCustomers Table--------------------------------------------------------------------

-------------------------------------------------------Insert procedure of tblCustomers--------------------------------------------------------------
----------------------------------------------------------Values---------------------------------------------------------------------------------------
insert into tblCustomers values('Akshma','Gandotra','akshma1@gmail.com','aks123@',21,'Sector-5,Channi Himmat,Jammu',200,210,'Jammu',144001,'9876543210','Female','User')
insert into tblCustomers values('Priya','Rajput','priya@yahoo.com','priya123@',21,'Sector-21,Chandigarh',200,211,'Chandigarh',144001,'9845678902','Female','User')
insert into tblCustomers values('Sapna','Sharma','shine_333@yahoo.com','sapna123@',24,'Sector-21,Chandigarh',200,211,'Chandigarh',144001,'9876543222','Female','Admin')

select *  from tblCustomers
select *from tblFlights

delete tblFlights


----------------------------------------Forgot Password-----------------------------------------------------------------------------------
create proc sp_ForgotPassword
(@EmailId varchar(50),
@FirstName varchar(50),
@securityques varchar(70),
@answer varchar(70))
as
declare @username varchar(50),@user_securityques varchar(70),@user_answer varchar(70)
begin
set @username=(select FirstName from tblCustomers where Emailid=@EmailId)
set @user_securityques=(select securityques from tblCustomers where Emailid=@EmailId)
set @user_answer=(select answer from tblCustomers where Emailid=@EmailId)
if (@username=@FirstName and @user_securityques=@securityques and @user_answer=@answer)
return 1
else 
return 2
end
----------------------------------------------Update Password in case of Forgot Password---------------------------------------------------------------------
alter proc sp_updateforgotpwd(@EmailId varchar(50),@FirstName varchar(50),@NewPwd varchar(50))
as
update tblCustomers set Password=@NewPwd where Emailid=@EmailId and FirstName=@FirstName
--------------------------------------------------HOTELS-----------------------------------------------------------------------------------------
---------------------------------- Table tbHotelCategory--------------------
create table tblHotelCategory(HotelCatId int identity primary key,HotelCatName varchar(30))
----------------------------------Insert Procedure of tbHotelCategory--------------------
alter proc sp_tblHotelCategory(@HotelCatName varchar(30))
as
insert tblHotelCategory values(@HotelCatName)
return @@identity
---------------------------------------Values--------------------------------------------------------------------------------------
insert tblHotelCategory values('3 Star')
insert tblHotelCategory values('5 Star')
insert tblHotelCategory values('7 Star')

select * from tblHotelCategory
-----------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------- Table tbHotels--------------------
create table tblHotels(HotelId int identity primary key,HotelName varchar(20),
Location varchar(20),HotelURL varchar(20),Features varchar(max),
HotelCatId int references tblHotelCategory,HotelContactNo varchar(100))

select * from tblHotels
-------------------------------------Insert Procedure of tbHotels---------------------------------------------
create proc sp_tblHotels
(
@HotelName varchar(20),
@Location varchar(20), 
@HotelURL varchar(20), 
@Features varchar(max),
@HotelCatId int, 
@HotelContactNo varchar(100)
)
as
insert tblHotels values(@HotelName, @Location, @HotelURL, @Features, @HotelCatId, @HotelContactNo)
return @@identity
-------------------------------------Show Procedure------------------------------------------------------------------------------
create proc show_tblHotels
as
select HotelId,HotelName,Location,HotelURL,Features,HotelCatName,HotelContactNo from tblHotels,tblHotelCategory 
where tblHotels.HotelCatId=tblHotelCategory.HotelCatId
---------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------- Table tbRoomCategory--------------------
create table tblRoomCategory(RoomCatId int identity primary key,RoomCatName varchar(30))

select * from tblRoomCategory
----------------------------------Insert Procedure of tbRoomCategory-----------------------------
create proc sp_tblRoomCategory(@RoomCatName varchar(30))
as
insert tblRoomCategory values(@RoomCatName)
return @@identity
--------------------------------------------Values---------------------------------------------------------------------------------------
insert tblRoomCategory values('Luxury')
insert tblRoomCategory values('AC')
insert tblRoomCategory values('Non AC')
------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------- Table tbRoomFare---------------------------------------------------
create table tblRoomFare(HotelId int references tblHotels,RoomCatId int references tblRoomCategory,RoomFare int)

select * from tblRoomFare
----------------------------------Insert Procedure of tbRoomFare-------------------------------------
alter proc sp_tblRoomFare(@HotelId int,@RoomCatId int,@RoomFare int)
as
insert tblRoomFare values(@HotelId,@RoomCatId,@RoomFare)
------------------------------------Show Procedure-----------------------------------------------------------------------------------------------
create proc show_RoomFare
as
select HotelName,RoomCatName,RoomFare from tblHotels,tblRoomCategory,tblRoomFare
where tblRoomFare.HotelId=tblHotels.HotelId and tblRoomFare.RoomCatId=tblRoomCategory.RoomCatId
---------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------- Table tbHotelRooms-------------------------------------------
create table tblHotelRooms
(
HotelId int references tblHotels,
RoomCatId int references tblRoomCategory,
RoomNo int, 
primary key(HotelId,RoomCatid,RoomNo)
)

select * from tblHotelRooms
----------------------------------Insert Procedure of tbHotelRooms-------------------------------------
create proc sp_tblHotelRooms(@HotelId int,@RoomCatId int,@TotalRooms int)
as
declare
		@ctr int,
		@RoomNo varchar(10)
begin
	set @ctr=1
	while(@ctr<=@TotalRooms)
begin
	set @RoomNo=cast(@ctr as varchar(10))
	insert tblHotelRooms values(@HotelId,@RoomCatId,@RoomNo)
	set @ctr=@ctr+1
end
end
-----------------------------------------------Show Procedure-------------------------------------------------------------------------------
create proc show_HotelRooms
as
select HotelName,RoomCatName,RoomNo from tblHotels,tblRoomCategory,tblHotelRooms
where tblHotelRooms.HotelId=tblHotels.HotelId and tblRoomCategory.RoomCatId=tblHotelRooms.RoomCatId
--------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------- Table tbHotelBooking------------------------------------------------
create table tblHotelBooking
(
CustomerId int references tblCustomers,
HotelId int references tblHotels,
RoomCatid int references tblRoomCategory,
DateOfBooking datetime,
CheckIn Varchar(10),
CheckOut Varchar(10),
RoomNo int,
foreign key(HotelId,RoomCatid,RoomNo) references tblHotelRooms,
primary key(CustomerId,HotelId,RoomCatId,RoomNo,DateOfBooking))

select * from tblHotelBooking
----------------------------------Insert Procedure of tbHotelBooking-------------------------------------
create proc sp_tblHotelBooking
(
@CustomerId int,
@HotelId int,
@RoomCatid int,
@DateOfBooking datetime,
@CheckIn Varchar(10),
@CheckOut Varchar(10),
@RoomNo int
)
as
insert tblHotelBooking values(@CustomerId,@HotelId,@RoomCatid,@DateOfBooking,@CheckIn,@CheckOut,@RoomNo)
-----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------tblPayment Table(For Flight)---------------------------------------------------------------------------------------
sp_help 'tblFlightBooking'


create table tblFlightPayment(
paymentId int identity ,
CustomerId int references tblcustomers ,
PNRStatusId int ,
creditcardtype varchar(50),
creditcardno int ,
cardsecutitycode int,
expirydate datetime, 
amount int,
primary key(paymentId,CustomerId)
)

---------------------------------------Insert Procedure-------------------------------------------------------------------------------------
create proc sp_tblPayment(
@CustomerId int,
@PNRStatusId int,
@creditcardtype varchar(50),
@creditcardno int,
@cardsecuritycode int,
@expirydate datetime,
@amount int
)
as insert tblFlightPayment values(@CustomerId,@PNRStatusId,@creditcardtype,@creditcardno,@cardsecuritycode,@expirydate,@amount)
return @@identity

select * from tblFlightPayment

select*from tblCustomers



-------------------------------------Show Procedures-------------------------------------------------------------------------------
create proc show_hoteldetails(@HotelName varchar(20),@RoomCatName varchar(30))
as
select RoomCatName,RoomFare from tblRoomCategory,tblRoomFare,tblHotels
where
tblRoomCategory.RoomCatId=tblRoomFare.RoomCatId
and
HotelName=@HotelName
and
tblRoomCategory.RoomCatName=@RoomCatName
-----------------------------------------------------tblPayment_hotel For Hotel-----------------------------------------------------------------------------------------------
create table tblPayment_hotel(
paymentId int identity ,
CustomerId int references tblcustomers ,
creditcardtype varchar(50),
creditcardno int ,
cardsecutitycode int,
expirydate datetime, 
amount int,
primary key(paymentId,CustomerId)
 )
-----------------------------------------------Insert Procedure of tblPayment_hotel----------------------------------------------------------
create proc sp_tblPaymentHotel(
@CustomerId int,
@creditcardtype varchar(50),
@creditcardno int,
@cardsecuritycode int,
@expirydate datetime,
@amount int
)
as insert tblPayment_hotel values(@CustomerId,@creditcardtype,@creditcardno,@cardsecuritycode,@expirydate,@amount)
return @@identity
-----------------------------------------------------------------------------------------------------------------------------------------------------
alter proc show_hotelbooking(@CustomerId int,@DateOfBooking datetime)
as
select HotelName,RoomCatName,DateOfBooking,RoomFare from
tblHotels,tblRoomCategory,tblHotelBooking,tblRoomFare,tblCustomers
where
tblHotelBooking.HotelId=tblHotels.HotelId
and
tblRoomCategory.RoomCatId=tblRoomFare.RoomCatId
and
tblHotelBooking.RoomCatid=tblRoomCategory.RoomCatId
and 
tblHotelBooking.CustomerId=tblCustomers.CustomerId
and CONVERT(varchar(11),DateOfBooking)=CONVERT(varchar(11),@DateOfBooking)
and tblHotelBooking.CustomerId=@CustomerId
--------------------------------------------------Available Rooms in Hotels--------------------------------------------------------------------------------------------------
alter proc getAvailableRoomsinHotels(@HotelName varchar(20),@RoomCatName varchar(30),@DateOfBooking datetime)
as
select HotelName,RoomCatName,RoomNo from
tblRoomCategory,tblHotelRooms,tblHotels
where
tblHotelRooms.RoomCatId=tblRoomCategory.RoomCatId 
and
tblHotelRooms.HotelId=tblHotels.HotelId
and
HotelName=@HotelName and RoomCatName=@RoomCatName 
and
tblHotelRooms.RoomNo not in(
select tblHotelRooms.RoomNo from tblCustomers,tblHotelBooking,tblRoomCategory,tblHotels,tblHotelRooms
where
tblHotelBooking.CustomerId=tblCustomers.CustomerId
and
tblHotelBooking.RoomCatid=tblRoomCategory.RoomCatId
and
tblHotels.HotelId=tblHotelBooking.HotelId
and 
tblHotelRooms.RoomCatId=tblRoomCategory.RoomCatId
and
tblHotelRooms.HotelId=tblHotels.HotelId
and
tblHotelBooking.RoomNo=tblHotelRooms.RoomNo
and HotelName=@HotelName and RoomCatName=@RoomCatName
and CONVERT(varchar(11),DateOfBooking)=CONVERT(varchar(11),@DateOfBooking))

getAvailableRoomsinHotels 'JW MARRIOT','Luxury','12/23/2011'

select * from  tblHotelBooking 
select * from  tblHotelRooms
----------------------------------------For Hotel Cancellation-------------------------------------------------------------------------------------------------------------
create proc sp_hotelbookingdetails(@FirstName varchar(50),@DateOfBooking datetime)
as
select HotelName,RoomCatName,CheckIn,CheckOut,tblHotelBooking.RoomNo,tblHotelBooking.CustomerId,tblHotelBooking.HotelId,tblHotelBooking.RoomCatid
from tblHotels,tblRoomCategory,tblHotelBooking,tblCustomers
where
tblHotelBooking.RoomCatid=tblRoomCategory.RoomCatId
and
tblHotelBooking.HotelId=tblHotels.HotelId
and FirstName=@FirstName
and DateOfBooking=@DateOfBooking
------------------------------------------------------------------------------------------------------------------------------------------------------
alter proc show_CheckFlights(@Source varchar(30),@Destination varchar(30))
as
select tblFlights.FlightId,CompanyName,FlightName,ArrivalTime,DepartureTime from tblCompany,tblFlights,tblFlightRoutes,tblRoutes
where tblFlights.CompanyId=tblCompany.CompanyId and
tblFlightRoutes.RouteId=tblRoutes.RouteId and 
tblFlightRoutes.FlightId=tblFlights.FlightId and
tblRoutes.Source=@Source and tblRoutes.Destination=@Destination

show_CheckFlights 'Chandigarh','Jammu'


select * from tblFlightSeats





---------------------------------------------------------------------------------------------------------------------------------------------
create proc show_FlightFare(@Source varchar(30),@Destination varchar(30))
as
	select flightname,DepartureTime, ArrivalTime, flightclassStatusName,CustomerStatusName, fare  from
    tblFlights, tblFlightFare, tblFlightClassStatus, tblCustomerStatus, tblFare,tblFlightRoutes,tblRoutes
    where 
    tblFlightFare.flightid = tblFlights.FlightId
    and
    tblFlightFare.CustomerStatusId = tblCustomerStatus.CustomerStatusId
    and
    tblFlightClassStatus.FlightClassStatusId = tblFlightFare.FlightClassStatusId
    and
    tblFlightFare.FareId = tblFare.FareId
    and
    tblFlightRoutes.FlightId = tblFlights.FlightId
    AND
    tblFlightRoutes.RouteId = tblRoutes.RouteId
    AND
    Source=@Source and Destination =@Destination
    
---------------------------------------------------------------------------------------------------------------------------------------------------
create proc show_ClassFlightFare(@Source varchar(30),@Destination varchar(30),@FlightClassStatusName varchar(20))
as 
select CompanyName,FlightName,Source,Destination,Fare,CustomerStatusName,FlightClassStatusName
from tblCompany,tblFlights,tblRoutes,tblFlightFare,tblCustomerStatus,tblFlightClassStatus,tblFlightRoutes,tblFare
where tblFlights.CompanyId=tblCompany.CompanyId 
and tblFlightRoutes.FlightId=tblFlights.FlightId 
and tblRoutes.RouteId=tblRoutes.RouteId 
and tblFlightFare.FlightClassStatusId=tblFlightClassStatus.FlightClassStatusId 
and tblFlightFare.CustomerStatusId=tblCustomerStatus.CustomerStatusId 
and tblFlightFare.FareId=tblFare.FareId
and tblRoutes.Source=@Source and tblRoutes.Destination=@Destination and tblFlightClassStatus.FlightClassStatusName=@FlightClassStatusName

show_ClassFlightFare 'Chandigarh','Jammu','Economy'

-------------------------------------------------Show Fare (LinkButton)-------------------------------------------------------------------------
create proc show_Fare(@FlightName varchar(30))
as
select FlightClassStatusName,CustomerStatusName,Fare from tblFlightClassStatus,tblCustomerStatus,tblFlightFare,tblFlights,tblFare
where
tblFlightFare.FlightClassStatusId=tblFlightClassStatus.FlightClassStatusId
and
tblFlightFare.CustomerStatusId=tblCustomerStatus.CustomerStatusId
and
tblFlightFare.FareId=tblFare.FareId
and tblFlightFare.FlightId=tblFlights.FlightId
and FlightName=@FlightName


show_Fare 'KF-101'
------------------------------------------------Important Query-----------------------------------------------------------------------------------------
select FlightName, DepartureTime,ArrivalTime,Source, Destination,  FirstName,FlightClassStatusName, DateOfBooking,SeatNo,fare  from 
tblCustomers,tblFlightBooking,tblFlightSeats, tblFare,
tblFlightFare, tblFlights, tblFlightRoutes,tblFlightClassStatus,tblRoutes 
where 
tblFlightBooking.CustomerId = tblCustomers.CustomerId
and
tblFlightBooking.FlightSeatsId=tblFlightSeats.FlightSeatsId
and
tblFlightFare.FareId = tblFare.FareId
and
tblFlightBooking.FlightFareId = tblFlightFare.FlightFareId
and
tblFlights.FlightId = tblFlightRoutes.FlightId
and
tblFlightSeats.FlightRouteId = tblFlightRoutes.FlightRouteId
and
tblFlightSeats.FlightClassStatusId = tblFlightClassStatus.FlightClassStatusId
and
tblRoutes .RouteId = tblFlightRoutes.RouteId

select * from tblFlightBooking
------------------------------------------------------------------------------------------------------------------------------------------------
create proc Sp_flightCancellation(@pnrstatusid int )
as
	begin
	delete from tblFlightBooking where PNRStatusId=@pnrstatusid
	delete from tblFlightPayment where PNRStatusId= @pnrstatusid
	end
---------------------------------------------------------------------------------------------------------------	---------------------------------
create view FareView
as
select PNRStatusId,FlightClassStatusName, DateOfBooking,SeatNo,fare  from 
tblCustomers,tblFlightBooking,tblFlightSeats, tblFare,
tblFlightFare, tblFlights, tblFlightRoutes,tblFlightClassStatus,tblRoutes 
where 
tblFlightBooking.CustomerId = tblCustomers.CustomerId
and
tblFlightBooking.FlightSeatsId=tblFlightSeats.FlightSeatsId
and
tblFlightFare.FareId = tblFare.FareId
and
tblFlightBooking.FlightFareId = tblFlightFare.FlightFareId
and
tblFlights.FlightId = tblFlightRoutes.FlightId
and
tblFlightSeats.FlightRouteId = tblFlightRoutes.FlightRouteId
and
tblFlightSeats.FlightClassStatusId = tblFlightClassStatus.FlightClassStatusId
and
tblRoutes .RouteId = tblFlightRoutes.RouteId
---------------------------------------------------------------------------------------------------------------------------------------------------------
create view HotelCharges
as
select HotelName,RoomCatName,DateOfBooking,RoomFare,tblCustomers.CustomerId from
tblHotels,tblRoomCategory,tblHotelBooking,tblRoomFare,tblCustomers
where
tblHotelBooking.HotelId=tblHotels.HotelId
and
tblRoomCategory.RoomCatId=tblRoomFare.RoomCatId
and
tblHotelBooking.RoomCatid=tblRoomCategory.RoomCatId
and 
tblHotelBooking.CustomerId=tblCustomers.CustomerId

select * from HotelCharges
select sum(RoomFare) from HotelCharges where CustomerId=1 and DateOfBooking='12/24/2012'
---------------------------------------------------------------------------------------------------------------------------------------------------------
create proc sp_CancelAmount
as
select SUM(amount) from tblFlightBooking,tblFlightPayment where tblFlightPayment.PNRStatusId=tblFlightPayment.PNRStatusId
-------------------------------------------------------------------------------------------------------------------------------------------------
select * from tblCompany 
select * from tblFlights 
delete tblFlights 

select * from tblFlightStatus 
delete tblFare 
select * from tblFare 
delete tblFlightStatus 
select * from tblFlightClassStatus 
delete tblFlightClassStatus 
select * from tblFlightSeats 

delete tblFlightSeats 
select * from tblRoutes 
delete tblRoutes 
select * from tblFlightRoutes 
delete tblFlightRoutes 


select * from TblUser 
select * from tblUser5


create table tbl_user(username varchar(20),password varchar(20))
create proc sp_user(@username varchar(20),@password varchar(20))
as
insert tbl_user values(@username,@password )
select * from tbl_user 