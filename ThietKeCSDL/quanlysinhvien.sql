create database QuanLySinhVien;
use QuanLySinhVien;

create table class (
	ClassID int not null auto_increment primary key,
    ClassName varchar(60) not null,
    StartDate datetime not null,
    Status bit
);

create table student (
	StudentID int not null primary key auto_increment,
    StudentName varchar(30) not null,
    Address varchar(50),
    Phone varchar(20),
    Status bit,
    ClassID int not null,
    foreign key (ClassID) references class(ClassID)
);

create table Subject (
	SubID int not null auto_increment primary key,
    SubName varchar(30) not null,
    Credit tinyint not null default 1 check (Credit >= 1),
    Status bit default 1
);

create table mark (
	MarkID int not null auto_increment primary key,
    SubID int not null,
    StudentID int not null,
    Mark float default 0 check (Mark between 0 and 100),
    ExamTimes tinyint default 1,
    unique (SubID, StudentID),
    foreign key (SubID) references Subject (SubID),
	foreign key (StudentID) references student (StudentID)
);