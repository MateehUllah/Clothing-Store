GO
create database Estore;
GO
USE Estore;
go
CREATE Table Login_Register(First_Name varchar(20) not null,
Last_Name varchar(20) not null,
Email nchar(50) not null Primary Key,
MobileNo varchar(20),
[Password] varchar(8) not null
);
go
go
CREATE Table Product(ProductID varchar(10) not null  Primary Key,
ProductName varchar(20) not null,
Price int,
imgpath varchar(100) not null,
Quantity int not null,
[Description] varchar(100)
);
go
Create Table CheckOut(oid varchar(40) not null,
First_Name varchar(20) not null,
Last_Name varchar(20) not null,
Email nchar(50) not null,
MobileNo varchar(20) not null,
[Address] varchar(100) not null,
city varchar(25) not null,
country varchar(20) not null,
[state] varchar(15) not null,
zip varchar(10) not null,
grandtotal int not null,
FOREIGN KEY (Email) REFERENCES Login_Register(Email),
Primary Key(oid,Email))

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
go
Create Procedure Login_
	@Email varchar(50),
	@Password varchar(8)
	as
	begin
		select Email,[Password] from Login_Register where Email=@Email and [Password]=@Password;
	end

go
Create Procedure AddProduct_
	@ProductID varchar(10),
	@ProductName varchar(20),
	@Price int,
	@imgpath varchar(100),
	@Quantity int,
	@Description varchar(100)
	as 
		begin
			Insert Product(ProductID,ProductName,Price,imgpath,Quantity,[Description]) values (@ProductID,@ProductName,@Price,@imgpath,@Quantity,@Description);
		end
go
Create Procedure UpdateProduct
	@ProductID varchar(10),
	@ProductName varchar(20),
	@Price int,
	@imgpath varchar(100),
	@Quantity int,
	@Description varchar(100)
	as 
		begin
			Update Product set ProductName=@ProductName where ProductID=@ProductID;
			Update Product set Price=@Price where ProductID=@ProductID;
			Update Product set imgpath=@imgpath where ProductID=@ProductID;
			Update Product set Quantity=@Quantity where ProductID=@ProductID;
			Update Product set [Description]=@Description where ProductID=@ProductID;
		end
go
Create Procedure RemoveProduct
@ProductID varchar(10)
as 
begin
delete from Product where ProductID=@ProductID;
end
go
Create Procedure UpdateAccount
	@First_Name varchar(20),
	@Last_Name varchar(20),
	@Email nchar(50),
	@MobileNo varchar(20)
	as
		begin
			update Login_Register set First_Name=@First_Name where Email=@Email;
			update Login_Register set Last_Name=@Last_Name where Email=@Email;
			update Login_Register set MobileNo=@MobileNo where Email=@Email;
		end

go
Create Procedure DeleteAccount
	@Email nchar(50)
	as
		begin
			Delete from Login_Register where Email=@Email;
		end
go
Create Procedure UpdatePassAccount
	@Email nchar(50),
	@NPass varchar(8)
	as
		begin
			Update Login_Register set [Password]=@NPass where Email=@Email
		end
go

Create Procedure PlaceOrder
	@oid varchar(40),
	@First_Name varchar(20),
	@Last_Name varchar(20),
	@Email nchar(50),
	@MobileNo varchar(20),
	@Address varchar(100),
	@city varchar(25),
	@country varchar(20),
	@state varchar(15),
	@zip varchar(10),
	@grandtotal int
	as 
		begin
		insert CheckOut(oid,First_Name,Last_Name,Email,MobileNo,[Address],city,country,[state],zip,grandtotal) values (@oid,@First_Name,@Last_Name,@Email,@MobileNo,@Address,@city,@country,@state,@zip,@grandtotal);
		end
Select * from Login_Register
select * from Product
select * from CheckOut