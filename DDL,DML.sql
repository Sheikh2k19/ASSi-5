
--Creating Books Table
create table books
(
ID int primary key identity(101,1),
Category nvarchar(20) Not Null,
[Name] nvarchar(35) Not Null,
ShelfNumber int Not Null,
Price decimal(18,1) Not Null,
AvailabilityStatus int default 1 Null,
[UID] int foreign key references users(ID) Null
)

--Creating Users Table
create table users
(
ID int primary key identity(201,1),
[Name] nvarchar(30) Not Null
)


--Inserting 20 books data into Books Table
insert into books (Category, [Name], ShelfNumber, Price, AvailabilityStatus,[UID])
values ('Programming','Introduction to Web Engineering',505, 205, 0, 201)


insert into books (Category, [Name], ShelfNumber, Price)
values 
('Mathematics','Calculus',508,1000),
('English Literature','Technical & Business Writing',506, 510.5),
('Programming','Java Programming',505, 630.5),
('Programming','Introduction to Data Sciences',507,750),
('Programming','Programming Fundamentals',505,110.7),
('Programming','Object Oriented Programming',505,150.5)


insert into books (Category, [Name], ShelfNumber, Price, AvailabilityStatus,[UID])
values 
('Programming', 'Python Applications',507, 348.9,0,202),
('Electronics', 'Digital Logic & Design', 510, 670.3, 0, 205)


insert into books (Category, [Name], ShelfNumber, Price)
values 
('Programming','Compiler Construction',508, 245.3),
('Arts','Pakistan Studies',509, 643.2),
('Programming','Artificial Intelligence',507, 55)


insert into books (Category, [Name], ShelfNumber, Price, AvailabilityStatus,[UID])
values ('Programming','Enterprise Application Development', 505, 670.4, 0, 209)


insert into books (Category, [Name], ShelfNumber, Price)
values ('Programming','Machine Learning & Algorithms', 507, 467.2)


insert into books (Category, [Name], ShelfNumber, Price, AvailabilityStatus,[UID])
values ('Electronics','Basic Electronics', 510, 775.3, 0, 205)



insert into books (Category, [Name], ShelfNumber, Price)
values
('Arts','Islamic Studies',509,245.4),
('Programming','Data Structures & Algorithms',505,755.3),
('Mathematics','Linear Algebra',508,453.3)



insert into books (Category, [Name], ShelfNumber, Price, AvailabilityStatus,[UID])
values
('English Literature','Communication Skills',506,800, 0, 207),
('Programming','Software Design & Architecture',505,2000, 0, 201)




--Inserting 10 users data into Users Table
insert into users ([Name])
values 
('Fareed Ahmad'),
('Ali Ahmad'),
('Aadil Farooq'),
('Ali Ammar Hussain'),
('Nouman Khan'),
('Abdul Samad Khalid'),
('Malaika Mushtaq'),
('Eman Imran'),
('Waseem Aslam'),
('Hamna Faiz')