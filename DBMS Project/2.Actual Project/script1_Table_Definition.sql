//-----------------------------------------
//DBMS PROJECT AATISH 2017001 AKASH 2017013
//-----------------------------------------




create table Categories
	(
		CiD int,
		Category_Name varchar(20),
		primary key(CiD));
		
create table Publication
	(
		ISBN int,
		Publisher varchar(20),
		Country varchar(20),
		Since int,
		primary key(ISBN),
		foreign key (ISBN) references Book(ISBN));

create table Author
	(
		Author_Name varchar(20),
		License_No int,
		Year_Of_Birth int,
		Country varchar(20),
		Website varchar(40),
		primary key(License_No));

create table Student
	(
		Name_First varchar(20),
		Name_Second varchar(20),
		Roll_No int,
		primary key(Roll_No));

create table Stud_Cont(
	Roll_No int,
	Contact_No varchar(10),
	primary key(Contact_No),
	foreign key(Roll_No) references Student(Roll_No));

create table Book(
	Title varchar(40),
	ISBN int,
	Price int,
	Label varchar(2),
	Year int,
	Quantity int,
	Issue int,
	primary key(ISBN));

create table Writes_In
	( CiD int,
	  License_No int,
	  foreign key (CiD) references Categories(CiD),
	  foreign key (License_No) references Author(License_No));

create table Book_Type
	(
	CiD int,
	ISBN int,
	foreign key (CiD) references Categories(CiD),
	foreign key (ISBN) references Book(ISBN));

create table Borrowed_By
	(ISBN int,
	Roll_No int,
	When_Date int,
	When_Month int,
	When_Year int,
	primary key(ISBN,Roll_No),
	foreign key (ISBN) references Book(ISBN),
	foreign key (Roll_No) references Student(Roll_No));

	create table Written_By
		(
		ISBN int,
		License_No int,
		foreign key (ISBN) references Book(ISBN),
		foreign key (License_No) references Author(License_No));

	create table pass
	(
		Roll_No int,
		Pass varchar(30),
		primary key(Roll_No),
		foreign key (Roll_No) references Student(Roll_No));

