go
Create Database ClothingDB;
go
USE ClothingDB;
go
CREATE Table Login_Register(First_Name varchar(20) not null,
Last_Name varchar(20) not null,
Email nchar(50) not null Primary Key,
MobileNo varchar(20),
[Password] varchar(8) not null
);
go
Create Procedure SignIn
	@First_Name varchar(20),
	@Last_Name varchar(20),
	@Email nchar(50),
	@MobileNo varchar(20),
	@Pass varchar(8)
	as
		begin
			Insert Login_Register (First_Name,Last_Name,Email,MobileNo,[Password]) values (@First_Name,@Last_Name,@Email,@MobileNo,@Pass);
		end
Select * from Login_Register
--Execute SignIn @First_Name='Mateeh',@Last_Name='Ullah',@Email='mateehullah89@gmail.com',@MobileNo='03029840566',@Pass='123123';
--Delete from Login_Register where First_Name='Mateeh'