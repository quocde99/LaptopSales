create database LaptopSale
use LaptopSale
--Tạo bảng Users
create table Users(
UserID char(10) not null,
UserName nvarchar(50),
DateOfBirth datetime,
Gender bit,
Address nvarchar(50),
Email nvarchar(50),
PhoneNumber nvarchar(50),
Password nvarchar(50),
isAdmin bit
)
-- Thêm thuộc tính trừu tượng 
alter table Users add constraint PK_Users primary key (UserID)
-- Tạo bảng Configurate 
create table  Configurate(
ConfigurateID int not null identity,
Display nvarchar(200),
CPU nvarchar(200),
RAM nvarchar(200),
GraphicsChip nvarchar(200),
HDD nvarchar(200),
SSD nvarchar(200),
HDMI nvarchar(200),
VGA nvarchar(200),
Keyboard nvarchar(200),
OperatingSystem nvarchar(200),
Size nvarchar(200),
Battery nvarchar(200),
Weight nvarchar(200)
)
-- Thuộc tính trừu tượng
alter table Configurate add constraint PK_Configurate primary key (ConfigurateID)

-- Tạo bảng Product
create table Product(
ProductID int not null identity,
ProductName nvarchar(100),
Price int,
UnitStock int,
Picture nvarchar(200)
)
-- Thêm thuộc tính trừu tượng
alter table Product add constraint PK_Product primary key (ProductID)

-- Tạo khóa ngoại ConfigurateID
alter table Product add ConfigurateID int
alter table Product add constraint FK_Configuarate foreign key (ConfigurateID)references Configurate(ConfigurateID)

-- Tạo bảng Categories
create table Categories(
CategoriesID int not null identity,
CategoriesName nvarchar(50),
Description nvarchar(50)
)
-- Thuộc tính trừu tượng
alter table Categories add constraint PK_Categories primary key (CategoriesID)
alter table Product add CategoriesID int
alter table Product add constraint FK_Categories foreign key (CategoriesID)references Categories(CategoriesID)
-- Tạo bảng Suppliers
create table Suppliers(
SuppliersID int not null identity,
SupplierName nvarchar(50),
Country nvarchar(50)
)
-- Thuộc tính trừu tượng
alter table Suppliers add constraint PK_Supp primary key (SuppliersID)
--thêm khóa Supp
alter table Product add SuppliersID int
alter table Product add constraint FK_SUPPLIERS foreign key (SuppliersID)references Suppliers(SuppliersID)
-- tạo bảng giỏ hàng 

create table Cart(
UserID char(10) not null,
ProductID int not null,
ProductName nvarchar(50),
Description nvarchar(50),
Price int,
Quantity int,
Picture nvarchar(200))
-- thêm tt trừu tượng
alter table Cart add constraint PK_Cart primary key (UserID,ProductID)
-- thêm khóa ngoại
alter table Cart add constraint FK_Cart_User foreign key (UserID)references Users(UserID)
alter table Cart add constraint FK_Cart_Product foreign key (ProductID)references Product(ProductID)
--

create table Orders(
OrderID int not null,
OrderedDate datetime,
ShippedDate datetime,
PhoneNumber int,
Address nvarchar(50))

-- thuộc tính trừu tượng 
alter table Orders add constraint PK_Order primary key (OrderID)
-- thêm khóa ngoại
alter table Orders add UserID char(10)
alter table Orders add constraint FK_OrderUser foreign key (UserID)references Users(UserID)


create table Order_Details(
OrderID int not null,
ProductID int not null
ProductName nvarchar(50),
Price int,
Quantity int)
-- thêm thuộc tính trừu tượng
alter table Order_Details add constraint PK_Order_D primary key (OrderID,ProductID)
-- thêm khóa ngoại
alter table Order_Details add constraint FK_OrderDetail_Pro foreign key (ProductID)references Product(ProductID)
alter table Order_Details add constraint FK_OrderDetail_Order foreign key (OrderID)references Orders(OrderID)
-- tạo function lấy ra máy và cấu hình máy đó 
create function Detail_Product(@productid int)
returns table 
return 
		(select ProductID,ProductName,Price,UnitStock,Picture,p.ConfigurateID,CategoriesID,SuppliersID,Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight
		from Product p,Configurate c 
		where p.ProductID = @productid and p.CategoriesID = c.ConfigurateID )

-- tạo proc cập nhật số lượng 
use LaptopSale
create proc Update_Cart(@productid int,@UserID char(10),@soluong int)
as update Cart 
	set Quantity = @soluong 
	where Cart.UserID = @userid and Cart.ProductID = @productid

-- proc xóa 1 thành phần giỏ hàng
create proc Delete_Cart(@productid int,@UserID char(10))
as delete from Cart 
	where Cart.UserID = @userid and Cart.ProductID = @productid
-- proc thêm sản phẩm

create proc Add_Cart(@productid int,@UserID char(10),@productname nchar(50),@price int,@soluong int,@url nchar(200))
as insert into Cart
	values(@UserID,@productid,@productname,' ',@price,@soluong,@url)

-- add vào order 
create proc Add_Order(@key int,@OrderDate datetime,@ShippedDate datetime,@Phone int,@Address nvarchar(50),@UserId char(10))
as insert into Orders
	values(@key,@OrderDate,@ShippedDate,@Phone,@Address,@UserId)
--add order detail
create proc Add_OrderDetail(@orderid int,@productid int,@name nvarchar(50),@price int,@quantity int )
as insert into Order_Details
	values(@orderid,@productid,@name,@price,@quantity)

