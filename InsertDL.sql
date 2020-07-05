use LaptopSale
--Bảng Users
insert into Users(UserID,UserName, DateOfBirth, Gender, Address, Email, PhoneNumber, Password, isAdmin) 
			values ('KH01',N'Nguyen Khanh Duy','1999-7-10',0,'Long An','khanhduy1999rachkien@gmail.com','0933354409',null,1)
insert into Users(UserID,UserName, DateOfBirth, Gender, Address, Email, PhoneNumber, Password, isAdmin) 
			values ('KH02',N'Nguyen Thi Anh','1999-7-18',1,'Quang Nam','thianh@gmail.com','0755544711',null,0)
insert into Users(UserID,UserName, DateOfBirth, Gender, Address, Email, PhoneNumber, Password, isAdmin) 
			values ('KH03',N'Ho Van Cuong','1980-12-1',0,'Tien Giang','vancuong@gmail.com','0935456509',null,0)
insert into Users(UserID,UserName, DateOfBirth, Gender, Address, Email, PhoneNumber, Password, isAdmin) 
			values ('KH04',N'Lam Van Thanh','1969-1-19',0,'Ha Noi','vanthanh@gmail.com','0758354409',null,0)
insert into Users(UserID,UserName, DateOfBirth, Gender, Address, Email, PhoneNumber, Password, isAdmin) 
			values ('KH05',N'Dang Thanh Trung Hieu','1999-3-14',0,'Ca Mau','trunghieu@gmail.com','0354654409',null,0)
insert into Users(UserID,UserName, DateOfBirth, Gender, Address, Email, PhoneNumber, Password, isAdmin) 
			values ('KH06',N'Nguyen Thi Lan Anh','2000-4-5',1,'Bac Lieu','lananh@gmail.com','0975485421',null,0)
insert into Users(UserID,UserName, DateOfBirth, Gender, Address, Email, PhoneNumber, Password, isAdmin) 
			values ('KH07',N'Nguyen Thi Ngoc','2003-4-16',1,'TPHCM','thingoc@gmail.com','0414525853',null,0)
insert into Users(UserID,UserName, DateOfBirth, Gender, Address, Email, PhoneNumber, Password, isAdmin) 
			values ('KH08',N'Nguyen Chi Khanh','1999-7-9',0,'Long An','chikhanh@gmail.com','0722254425',null,0)

--Bảng Suppliers
insert into Suppliers(SupplierName, Country) values('Lenovo','Trung Quốc')
insert into Suppliers(SupplierName, Country) values('HP','Hoa Kỳ')
insert into Suppliers(SupplierName, Country) values('Dell','Hoa Kỳ')
insert into Suppliers(SupplierName, Country) values('Acer','Đài Loan')
insert into Suppliers(SupplierName, Country) values('Asus','Đài Loan')
insert into Suppliers(SupplierName, Country) values('Microsoft','Hoa Kỳ')
insert into Suppliers(SupplierName, Country) values('Apple','Hoa Kỳ')
insert into Suppliers(SupplierName, Country) values('Razer','Hoa Kỳ')
insert into Suppliers(SupplierName, Country) values('MSI','Đài Loan')
insert into Suppliers(SupplierName, Country) values('SamSung','Hàn Quốc')

--Bảng Catetogry
insert into Categories(CategoriesName,Description) values (N'Học Tập-Văn Phòng',null)
insert into Categories(CategoriesName,Description) values (N'Đồ Họa-Kỹ thuật',null)
insert into Categories(CategoriesName,Description) values (N'Laptop Gaming',null)
insert into Categories(CategoriesName,Description) values (N'Cao cấp sang trọng',null)
insert into Categories(CategoriesName,Description) values (N'Mỏng nhẹ',null)
--Bảng Configurate
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6"( 1920 x 1080 ) Full HD IPS 120Hz , không cảm ứng',
	N'Intel Core i7-9750H ( 2.6 GHz - 4.5 GHz / 12MB / 6 nhân, 12 luồng )',
	N'1 x 8GB DDR4 2666MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )',
	N'NVIDIA GeForce GTX 1650 4GB GDDR5 / Intel UHD Graphics 630',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , không phím số , RGB',
	N'Windows 10 Home SL 64-bit',
	N'36.0 x 27.5 x 2.6 cm',
	N'3 cell 48 Wh , Pin liền',
	N'2.3 kg')
--2
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD IPS 120Hz , không cảm ứng , Màn hình chống lóa , HD webcam',
	N'AMD Ryzen 5 3550H ( 2.1 GHz - 3.7 GHz / 4MB / 4 nhân, 8 luồng )',
	N'1 x 8GB DDR4 3200MHz ( 2 Khe cắm / Hỗ trợ tối đa 16GB )',
	N'NVIDIA GeForce GTX 1650 4GB GDDR5 / AMD Radeon Vega 8 Graphics',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , có phím số , LED',
	N'Windows 10 Home SL 64-bit',
	N'36.04 x 26.2 x 2.68 cm',
	N'3 cell 48 Wh , Pin liềnn',
	N'2.1 kg')
--3
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD TN không cảm ứng , HD webcam',
	N'Intel Core i7 9750H ( 2.6 GHz - 4.5 GHz / 12MB / 6 nhân, 12 luồng )',
	N'1 x 8GB DDR4 2666MHz ( 1 Khe cắm / Hỗ trợ tối đa 16GB )',
	N'NVIDIA GeForce GTX 1050 3GB GDDR5 / Intel UHD Graphics 630',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , có phím số , LED',
	N'Windows 10 Home 64-bit',
	N'36.3 x 25.46 x 2.39 cm',
	N'3 cell 45 Wh , Pin liền',
	N'2.1 kg')
--4
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD SVA không cảm ứng , Màn hình chống lóa , HD webcam',
	N'Intel Core i5 9300H ( 2.4 GHz - 4.1 GHz / 8MB / 4 nhân, 8 luồng )',
	N'2 x 4GB DDR4 2666MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )',
	N'NVIDIA GeForce GTX 1650 4GB GDDR5 / Intel UHD Graphics 630',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , có phím số , LED',
	N'Windows 10 Home SL 64-bit',
	N'36.55 x 25.4 x 2.16 cm',
	N'3 cell 51 Wh',
	N'2.3 kg')
--5
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'14" ( 1920 x 1080 ) Full HD IPS không cảm ứng , HD webcam',
	N'Intel Core i3-1005G1 ( 1.2 GHz - 3.4 GHz / 4MB / 2 nhân, 4 luồng )',
	N'1 x 4GB DDR4 2666MHz ( 1 Khe cắm / Hỗ trợ tối đa 16GB )',
	N'Intel UHD Graphics',
	N'',
	N'256GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , không phím số , không đèn',
	N'Windows 10 Home 64-bit',
	N'32.68 x 22.55 x 1.79 cm',
	N'3 cell 41 Wh , Pin liền',
	N'1.6 kg')
--6
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD IPS 144Hz , không cảm ứng , Màn hình chống lóa , HD webcam',
	N'AMD Ryzen 7 3750H ( 2.3 GHz - 4.0 GHz / 4MB / 4 nhân, 8 luồng )',
	N'1 x 8GB DDR4 2400MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )',
	N'NVIDIA GeForce GTX 1650 4GB GDDR5 / AMD Radeon Vega 10 Graphics',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , có phím số , LED',
	N'Windows 10 Home 64-bit',
	N'36 x 25.7 x 2.35 cm',
	N'3 cell 52 Wh , Pin liền',
	N'2 kg')
--7
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD không cảm ứng , HD webcam',
	N'Intel Core i7 9750H ( 2.6 GHz - 4.5 GHz / 12MB / 6 nhân, 12 luồng )',
	N'2 x 4GB DDR4 2666MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )',
	N'NVIDIA GeForce GTX 1660Ti 6GB GDDR6 / Intel UHD Graphics 630',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , có phím số , LED',
	N'Windows 10 Home SL 64-bit',
	N'36.55 x 25.4 x 2.318 cm',
	N'3 cell 51 Wh , Pin liền',
	N'2.3 kg')
--8
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD IPS không cảm ứng , Màn hình chống lóa , HD webcam',
	N'Intel Core i7 9750H ( 2.6 GHz - 4.5 GHz / 12MB / 6 nhân, 12 luồng )',
	N'2 x 8GB DDR4 2666MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )',
	N'NVIDIA GeForce RTX 2060 6GB GDDR6 / Intel UHD Graphics 630',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI , 1 x mini DisplayPort',
	N'',
	N'thường , có phím số , LED',
	N'Windows 10 Home SL 64-bit',
	N'2.14 x 36.43 x 27.34 cm',
	N'4 cell 60 Wh , Pin liền',
	N'2.7 kg')
--9
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD IPS không cảm ứng , HD webcam',
	N'Intel Core i5 9300H ( 2.4 GHz - 4.1 GHz / 8MB / 4 nhân, 8 luồng )',
	N'8GB DDR4 2400MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )',
	N'NVIDIA GeForce GTX 1650 4GB GDDR5 / Intel UHD Graphics 630',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , có phím số , LED',
	N'Windows 10 Home 64-bit',
	N'36.34 (W) x 25.5 (D) x 2.59 (H) cm',
	N'4 cell 55 Wh , Pin liền',
	N'2.3 kg')
--10
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD IPS không cảm ứng , HD webcam',
	N'Intel Core i5-10300H ( 2.5 GHz - 4.5 GHz / 8MB / 4 nhân, 8 luồng )',
	N'1 x 8GB DDR4 2933MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )',
	N'NVIDIA GeForce GTX 1650 4GB GDDR6 / Intel UHD Graphics',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , có phím số , RGB',
	N'Windows 10 Home 64-bit',
	N'36.3 x 25.5 x 2.68 cm',
	N'3 cell 57 Wh , Pin liền',
	N'2.3 kg')
--11
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'13.3" ( 2560 x 1600 ) không cảm ứng , HD webcam',
	N'Intel Core i5 ( 2.3 GHz)',
	N'8GB',
	N'Intel Iris Plus Graphics 640',
	N'',
	N'128GB SSD /',
	N'',
	N'',
	N'thường , không phím số , không đèn',
	N'macOS',
	N'30.41 x 21.24 x 1.49 cm',
	N'Pin liền',
	N'1.3 kg')
--12
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'13.3" ( 2560 x 1600 ) không cảm ứng , HD webcam',
	N'Intel Core i5 ( 2.3 GHz)',
	N'8GB LPDDR3 2133MHz',
	N'Intel Iris Plus Graphics 650',
	N'',
	N'512GB SSD /',
	N'',
	N'',
	N'thường , không phím số , không đèn',
	N'macOS',
	N'1.49 x 30.41 x 21.24 cm',
	N'Pin liền',
	N'1.3 kg')
--13
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'16" ( 3072 x 1920 ) IPS không cảm ứng , HD webcam',
	N'Intel Core i7',
	N'16GB Onboard Không nâng cấp được )',
	N'AMD Radeon Pro 5300M 4GB GDDR6 / Intel UHD Graphics 630',
	N'',
	N'512GB SSD /',
	N'',
	N'',
	N'thường , không phím số , LED',
	N'macOS',
	N'35.79 x 24.59 x 1.62 cm',
	N'100 Wh , Pin liền',
	N'2 kg')
--14
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'16" ( 3072 x 1920 ) IPS không cảm ứng , HD webcam',
	N'Intel Core i9',
	N'16GB Onboard Không nâng cấp được )',
	N'AMD Radeon Pro 5500M 4GB GDDR6 / Intel UHD Graphics 630',
	N'',
	N'1TB SSD /',
	N'',
	N'',
	N'thường , không phím số , LED',
	N'macOS',
	N'35.79 x 24.59 x 1.62 cm',
	N'100 Wh , Pin liền',
	N'2 kg')
--15
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'13.3" ( 2560 x 1600 ) không cảm ứng , HD webcam',
	N'Intel Core i5 ( 2.3 GHz',
	N'8GB',
	N'Intel HD Graphics',
	N'',
	N'256GB SSD /',
	N'',
	N'',
	N'thường , không phím số , không đèn',
	N'macOS',
	N'30.4 x 21.2 x 1.5 cm',
	N'Pin liền',
	N'1.4 kg')
--16
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD IPS không cảm ứng , HD webcam',
	N'Intel Core i5 9300H ( 2.4 GHz - 4.1 GHz / 8MB / 4 nhân, 8 luồng )',
	N'1 x 8GB DDR4 2666MHz ( 2 Khe cắm / Hỗ trợ tối đa 64GB )',
	N'NVIDIA GeForce GTX 1650 4GB GDDR6 / Intel UHD Graphics 630',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , không phím số , LED',
	N'Windows 10 Home 64-bit',
	N'35.9 x 25.4 x 2.17 cm',
	N'3 cell 51 Wh , Pin liền',
	N'1.9 kg')
--17
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'14" ( 1920 x 1080 ) Full HD IPS không cảm ứng , HD webcam',
	N'Intel Core i7-10510U ( 1.8 GHz - 4.9 GHz / 8MB / 4 nhân, 8 luồng )',
	N'1 x 8GB DDR4 2666MHz ( 1 Khe cắm / Hỗ trợ tối đa 16GB )',
	N'NVIDIA GeForce MX250 2GB GDDR5 / Intel UHD Graphics',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , không phím số , LED',
	N'Windows 10 Home SL 64-bit',
	N'32.2 x 22.2 x 1.59 cm',
	N'4 cell 50 Wh , Pin liền',
	N'1.2 kg')
--18
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD IPS không cảm ứng , HD webcam',
	N'AMD Ryzen 5 4600H ( 3.0 GHz - 4.0 GHz / 8MB / 6 nhân, 12 luồng )',
	N'1 x 8GB DDR4 3200MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )',
	N'AMD Radeon RX 5300M 3GB GDDR6 / AMD Radeon Graphics',
	N'',
	N'256GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , không phím số , LED',
	N'Windows 10 Home SL 64-bit',
	N'35.9 x 25.4 x 2.17 cm',
	N'3 cell 51 Wh , Pin liền',
	N'2 kg')
--19
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD IPS 144Hz , không cảm ứng , HD webcam',
	N'Intel Core i5 9300H ( 2.4 GHz - 4.1 GHz / 8MB / 4 nhân, 8 luồng )',
	N'1 x 8GB DDR4 2666MHz ( 2 Khe cắm / Hỗ trợ tối đa 64GB )',
	N'NVIDIA GeForce GTX 1660Ti 6GB GDDR6 / Intel UHD Graphics 630',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI , 1 x DisplayPort',
	N'',
	N'thường , không phím số , RGB',
	N'Windows 10 Home 64-bit',
	N'35.77 x 24.77 x 1.79 cm',
	N'4 cell 82 Wh',
	N'1.9 kg')
--20
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD IPS 120Hz , không cảm ứng , HD webcam',
	N'Intel Core i7 9750H ( 2.6 GHz - 4.5 GHz / 12MB / 6 nhân, 12 luồng )',
	N'1 x 8GB DDR4 2666MHz ( 2 Khe cắm / Hỗ trợ tối đa 64GB )',
	N'NVIDIA GeForce GTX 1660Ti 6GB GDDR6 / Intel UHD Graphics 630',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI , 1 x mini DisplayPort',
	N'',
	N'thường , có phím số , RGB',
	N'Windows 10 Home 64-bit',
	N'35.7 x 24.8 x 2.75 cm',
	N'6 cell 51 Wh',
	N'2.3 kg')
--21
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD TN không cảm ứng , Màn hình chống lóa , HD webcam',
	N'Intel Core i5-1035G1 ( 1.0 GHz - 3.6 GHz / 6MB / 4 nhân, 8 luồng )',
	N'1 x 8GB DDR4 2666MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )',
	N'Intel UHD Graphics',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , có phím số , LED',
	N'Windows 10 Home SL 64-bit',
	N'36.396 x 24.9 x 1.99 cm',
	N'3 cell 42 Wh , Pin liền',
	N'1.8 kg')
--22
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'14" ( 1920 x 1080 ) Full HD IPS không cảm ứng , Màn hình chống lóa , HD webcam',
	N'Intel Core i5-1035G1 ( 1.0 GHz - 3.6 GHz / 6MB / 4 nhân, 8 luồng )',
	N'1 x 8GB DDR4 2666MHz ( 2 Khe cắm / Hỗ trợ tối đa 16GB )',
	N'Intel UHD Graphics',
	N'',
	N'256GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , không phím số , không đèn',
	N'Windows 10 Home SL 64-bit',
	N'33.9 x 24.2 x 2.1 cm',
	N'3 cell 42 Wh , Pin liền',
	N'1.8 kg')
--23
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'15.6" ( 1920 x 1080 ) Full HD IPS không cảm ứng , Màn hình chống lóa , HD webcam',
	N'Intel Core i5-8300H ( 2.3 GHz - 4.0 GHz / 8MB / 4 nhân, 8 luồng )',
	N'1 x 8GB DDR4 2400MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )',
	N'NVIDIA GeForce GTX 1050Ti 4GB GDDR5 / Intel UHD Graphics 630',
	N'1TB HDD 5400RPM',
	N'128GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , có phím số , LED',
	N'Windows 10 Home 64-bit',
	N'22.7 x 38 x 25.8 cm',
	N'4 cell 56 Wh , Pin liền',
	N'2.4 kg')
--24
insert into Configurate(Display,CPU,RAM,GraphicsChip,HDD,SSD,HDMI,VGA,Keyboard,OperatingSystem,Size,Battery,Weight)
	values(
	N'14" ( 1920 x 1080 ) Full HD không cảm ứng , HD webcam',
	N'Intel Core i7-10510U ( 1.8 GHz - 4.9 GHz / 8MB / 4 nhân, 8 luồng )',
	N'16GB Onboard LPDDR3 2133MHz Không nâng cấp được )',
	N'NVIDIA GeForce MX250 2GB GDDR5 / Intel UHD Graphics',
	N'',
	N'512GB SSD M.2 NVMe /',
	N'1 x HDMI',
	N'',
	N'thường , không phím số , LED',
	N'Windows 10 Home SL 64-bit',
	N'1.79 x 31.97 x 20.59 cm',
	N'4 cell 52 Wh , Pin liền',
	N'1.1 kg')
--Bảng Product
--1
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop ASUS ROG Strix G G531GT-AL017T',27790000,10,'https://lh3.googleusercontent.com/w7E056HkyS1D5XNkuOtlPS-GAk3PjqOyLajj7SZrjgkXc9eMS0_wIOQA4GLjcmajXVp5xEkG14gRjylFKA',1,5,2)
--2
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop ASUS TUF Gaming FX505DT-AL118T',17590000,10,'https://lh3.googleusercontent.com/R2oPT-ov_6U40UuOMebaQXZ_TUxV8MM-r7vQxWN9xbK2YXQOjFpY8K6acfjotIcWySzGCyXdMfd4xn9qrhar',2,5,3)
--3
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Lenovo Ideapad L340-15IRH-81LK00VUVN',21990000,10,'https://lh3.googleusercontent.com/9HecvuWPxB8-inxtB_rAKtf4Jn_zFs9gpi9r41wRg40urAF2qVM9BIu-BAX1eEIMMufGVvsumk4-xrf8-a8',3,1,1)
--4
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Lenovo ThinkBook 13s-IML (20RR004SVN) ',17990000,10,'https://img.vnshop.vn/height/350/media/catalog_v2/media/96/39/1580889487.954493_Lenovo_ThinkBook_13s-IML_1.jpg',4,1,4)
--5
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop HP Pavilion 14-ce3013TU (8QN72PA) ',12990000,10,'https://lh3.googleusercontent.com/2Df6kcmn27ne37m_8XpE1YZnRGELxuCoT7b6Yxg11bNKNx0P6Ld5T1TsRTCDPBRNYIWRMUEQvdL8Aqz-GHGN',5,2,2)
--6
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop HP Pavilion Gaming 15-ec0051AX (9AV29PA)',22990000,10,'https://lh3.googleusercontent.com/yuk7UoICZwdGmN9GCVwR90qo3JbfZru3I7TU7mzLT7RumA2HF2hIuh60SFgKuwi64JdD9Hp-RifhQoptweA',6,2,3)
--7
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Dell G3 15 3590-70203973 ',32590000,10,'https://lh3.googleusercontent.com/7pgo8CofSUSK9Um8nYAdjGh2BOXfsTzslH0wZ4K1lVnTjeBGKRc09uN4IB4WfjyT8iDYPwZrz12h4h7GPfE',7,3,4)
--8
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Dell G5 5590-4F4Y42 ',39990000,10,'https://lh3.googleusercontent.com/3xieU1luZzUFoEcABXY9SBMNtnwQKB_Z8_GMwo0AqHG2ZCWK5sYNfyDQpRV540XXfhG3vrazASTZYMzPRzA',8,3,4)
--9
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Acer Nitro 5 AN515-54-595D ',20990000,10,'https://lh3.googleusercontent.com/nUEnJNhPfLLLHZ-Ob_lubipuO2Ghd9pwPZEnx1Q8eniXB0p88LQAaLJ8gtmjpIlCRIicgk0fhFOErCowDTU',9,4,3)
--10
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Acer Nitro 5 AN515-55-58A7 ',22990000,10,'https://lh3.googleusercontent.com/vxRjujlNMm-jjk7UMqTJbGadmxBoC2hggcNxwJhpVzJs5rBoGyGAIATTQARThS7s9E0rv5_3bGuKGuSJ6IjY',10,4,3)
--11
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Apple Macbook Pro 2017 13.3" MPXR2 ',33300000,10,'https://img.vnshop.vn/height/350/media/catalog/product/uploads/product/p_14474/2017/11/13/14474.png',11,7,4)
--12
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Apple MacBook Pro 2018 13.3" MR9R2 ',49890000,10,'https://img.vnshop.vn/height/350/media/catalog/product/m/a/macbook_pro_2017_touchbar_spacegray_1_1.jpg',12,7,4)
--13
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Apple MacBook Pro 16" 2019 (MVVL2SA/A)',59900000,10,'https://lh3.googleusercontent.com/kwLzioDb06xNBsja5JKHErzqCPg6eXVrqXfVt7N3odQkmaaUYlJWv5Oa-AUMDh2P_57MgaQ8BmJeEzrqCPJG',13,7,4)
--14
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Apple MacBook Pro 16" 2019 (MVVK2SA/A)',69990000,10,'https://lh3.googleusercontent.com/bVLgPal_NODk19O2SEsCIoyMmg8M93NFD2pzbdcZ3dN5LnyGDT2OAUYHA3E23ZPTdOT5mJlpdkHtp0zp1nb_',14,7,4)
--15
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Apple Macbook Pro 2018 13.3" MR9Q2 ',44390000,10,'https://img.vnshop.vn/height/350/media/catalog/product/m/a/macbook_13.3_1.jpg',15,7,4)
--16
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop MSI GF63 9SCXR-075VN ',20990000,10,'https://lh3.googleusercontent.com/8qWpd-BQk8XPyU-iMx70EAR9HGd16HZaHJBCO0NRiTKAjc4lhtvboSv4ksw7tOKEsWgQuM9m7NlskAOD5g',16,9,3)
--17
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop MSI Modern 14 A10RB-888VN ',23990000,10,'https://lh3.googleusercontent.com/N-XP3YtSjqxN79jdFZcJ-Hfx-fcjArjwiQA-UgrooZmyi64Qb95gndZzmJL2RPx7noqvQDomvtijFgRhAY3N',17,9,3)
--18
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop MSI Bravo 15 A4DCR-052VN',20490000,10,'https://lh3.googleusercontent.com/hbwFtgHUqq06JjraC55QhHuShYeZecQBBUwO93fvESqiNQQwwcVSCKmnQXhW7FbbB4-IKymwFPr9tZhlCa8',18,9,3)
--19
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop MSI GS65 Stealth 9SD-1409VN',35990000,10,'https://lh3.googleusercontent.com/6kfLKk670jscRTrPyxAFVPYp9fBuBa8LkKlxKC5yDvVly4IxtxBAR32KsYcreHLqABMWn7u5PPrlkEWr5PU',19,9,3)
--20	
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop MSI GL65 9SDK-254VN',32490000,10,'https://lh3.googleusercontent.com/e3dVXhaMZ9QZ4kqMjD1pS6FSYo9Oouu-xWp-TKR1LdECfHAMJxB4H41TzeBci5Ae8uwoJAV-0BtTlTxbOGI',20,9,3)
--21	
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Dell Inspiron 5593-7WGNV1',18490000,10,'https://lh3.googleusercontent.com/GPi5M8C9JT-O3Nr_v0pTaJDFWcT7OaJBp6F_jBow8HCqMXu4UTXTMGI01Un7Sr0qWf6YRd9ATkgFKVRDqTY',21,3,1)
--22	
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Dell Inspiron 14 3493-N4I5122WA',15390000,10,'https://lh3.googleusercontent.com/t5lCJlH0WwKbEuZexiqDdXIu5UICGxvuiXJRPGOVv_pQ0LNi4MHbZbgaexqANNQDdVZSvoE6GRLxB_hMbfQ',22,3,1)
--23
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Dell G3 3579-G5I5423W ',23490000,10,'https://lh3.googleusercontent.com/eJgR4hm9-B1r-FGzXU284AJHTfUCBRV769TyfG63274W4_llZ_Ypcni7JfAWn0TWH9wGeP_BxmNlmf0bYriO',23,3,3)
--24
insert into Product(ProductName,Price,UnitStock,Picture,ConfigurateID,SuppliersID,CategoriesID)
	values('Laptop Dell Inspiron 14 7490-6RKVN1',33990000,10,'https://lh3.googleusercontent.com/6i_ooy1Qqfze3x77gnLJuaPpCV7Vwjw6SXjQ1YQ7lEbzZUfbDEQXloHCJIN30QArYZH8Dj2p0Q_J7ERsXA',24,3,5)






