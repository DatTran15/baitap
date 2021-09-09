Create database Thu_Huong

Go

use Thu_Huong

Create table Acount(
	Id nvarchar(9) primary key not null,
	Email varchar(50),
	Password varchar(30),
	Actived bit,
)

Create table Admins(
	Id int identity(1,1) primary key,
	IdAcount nvarchar(9),
	FullName nvarchar(100),
	Phone varchar(11),
	Photo nvarchar(100),
	DateOfBirth date,
	Actived bit,
)

Create table Users(
	Id int identity(1,1) primary key,
	IdAcount nvarchar(9),
	FullName nvarchar(100),
	Photo nvarchar(100),
	Phone varchar(11),
)

ALTER TABLE Admins ADD FOREIGN KEY (IdAcount) REFERENCES Acount(Id);	

ALTER TABLE Users ADD FOREIGN KEY (IdAcount) REFERENCES Acount(Id);	


Create table Category(
	Id int identity(1,1) primary key,
	Name nvarchar(100),
	Photo nvarchar(100),
	Actived bit,
)

Create table Products(
	id int identity(1,1) primary key,
	Name nvarchar(100) not null,
	ProductDate date,
	IdCategory int not null,
	InputPrice float not null,
	OutputPrice float not null,
	Quantity int not null,
	Description ntext,
	ViewCount int,
)

ALTER TABLE Products ADD FOREIGN KEY (IdCategory) REFERENCES Category(Id);	

Create table ProductImageDetails(
	Id int identity(1,1) primary key,
	IdProduct int,
	photo nvarchar(100),
)

ALTER TABLE ProductImageDetails ADD FOREIGN KEY (IdProduct) REFERENCES Products(Id);	

Create table Vochers(
	Id nvarchar(10) primary key not null,
	IdCateGory int,
	Promotion int,
	StartDay date,
	EndDate date,
	Description nvarchar(150),
	Actived bit,
)

ALTER TABLE Vochers ADD FOREIGN KEY (IdCateGory) REFERENCES Category(Id);	

Create table VocherDetails(
	Id nvarchar(10) primary key not null,
	IdVocher nvarchar(10),
	IdUser int,
)

ALTER TABLE VocherDetails ADD FOREIGN KEY (IdUser) REFERENCES Users(Id);	

ALTER TABLE VocherDetails ADD FOREIGN KEY (IdVocher) REFERENCES Vochers(Id);	


CREATE TABLE ProductRating(
	Id int identity(1,1) primary key not null,
	IdProduct int,
	IdUser int,
	Sao int not null,
	Comment ntext,
)

ALTER TABLE ProductRating ADD FOREIGN KEY (IdUser) REFERENCES Users(Id);	

ALTER TABLE ProductRating ADD FOREIGN KEY (IdProduct) REFERENCES Products(Id);	


Create table DeliveryAddress(
	Id int identity(1,1) primary key,
	Name nvarchar(100),
	phone varchar(11),
	Address nvarchar(100),
	SetAsDefault bit,
	IdUser int,
)

ALTER TABLE DeliveryAddress ADD FOREIGN KEY (IdUser) REFERENCES Users(Id);


Create table Orders(
	Id int identity(1,1) primary key,
	IdUser int,
	OrderDate date,
	Address nvarchar(60) not null,
	Amount float not null,
	Description ntext,
)

ALTER TABLE Orders ADD FOREIGN KEY (IdUser) REFERENCES Users(Id);

Create table OrderDetails(
	Id int identity(1,1) primary key,
	IdOrder int,
	IdProduct int,
	IdVocher nvarchar(10),
	UnitPrice float not null,
	Quantity int not null,
	ExtraDay date,
	CompletionDate date,
	Confirm bit,
	Received bit,
)

ALTER TABLE OrderDetails ADD FOREIGN KEY (IdOrder) REFERENCES Orders(Id);

ALTER TABLE OrderDetails ADD FOREIGN KEY (IdProduct) REFERENCES Products(Id);

ALTER TABLE OrderDetails ADD FOREIGN KEY (IdVocher) REFERENCES Vochers(Id);


CREATE TABLE History(
	Id int identity(1,1) primary key not null,
	IdCategory int,
	IdUser int,
)

ALTER TABLE History ADD FOREIGN KEY (IdUser) REFERENCES Users(Id);

ALTER TABLE History ADD FOREIGN KEY (IdCategory) REFERENCES Orders(Id);