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
Quantity int not null
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
	@Quantity int
	as 
		begin
			Insert Product(ProductID,ProductName,Price,imgpath,Quantity) values (@ProductID,@ProductName,@Price,@imgpath,@Quantity);
		end
go
Create Procedure UpdateProduct
	@ProductID varchar(10),
	@ProductName varchar(20),
	@Price int,
	@imgpath varchar(100)
	as 
		begin
			Update Product set ProductName=@ProductName where ProductID=@ProductID;
			Update Product set Price=@Price where ProductID=@ProductID;
			Update Product set imgpath=@imgpath where ProductID=@ProductID;
		end
go
Create Procedure RemoveProduct
@ProductID varchar(10)
as 
begin
delete from Product where ProductID=@ProductID;
end
go
select * from Product
select * from Login_Register