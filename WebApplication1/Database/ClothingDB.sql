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
CREATE Table Product(ProductID varchar(10) not null  Primary Key,
ProductName varchar(20) not null,
Price int not null,
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
Select * from Login_Register
go
Create Procedure Login_
@Email nchar(50),
@Pass varchar(8)
as 
	begin
	Select * from Login_Register where Email=@Email and [Password]=@Pass
	end
GO
Create Procedure AddProduct
	@ProductID varchar(10),
	@ProductName varchar(20),
	@Price int,
	@imgpath varchar(100),
	@Quantity int
	as 
		begin
			Insert Product(ProductID,ProductName,Price,imgpath,Quantity) values (@ProductID,@ProductName,@Price,@imgpath,@Quantity);
		end

Create Procedure UpdateProduct
	@ProductID varchar(10),
	@ProductName varchar(20),
	@Price int,
	@imgpath varchar(100)
	as 
		begin
			Update Product set ProductName=@ProductName where ProductID=@ProductID
			Update Product set Price=@Price where ProductID=@ProductID
			Update Product set imgpath=@imgpath where ProductID=@ProductID
		end
Create Procedure RemoveProduct
@ProductID varchar(10)
as 
begin
delete from Product where ProductID=@ProductID;
end