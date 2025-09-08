create database quanlybanhang;
use quanlybanhang;

create table customer (
	cID int auto_increment primary key,
    cName varchar(20) not null,
    cAge int
);

create table `order` (
	oID int auto_increment primary key,
    cID int not null,
    oDate datetime not null,
    oTotalPrice float not null default 0,
    foreign key (cID) references customer (cID)
);


create table product (
	pID int auto_increment primary key,
    pName varchar(50) not null,
    pPrice float default 0
);

create table OderDetail (
	oID int not null,
    pID int not null,
    odQTY int not null default 1,
    unique (oID, pID),
    primary key (oID, pID),
    foreign key (oID) references `order` (oID),
    foreign key (pID) references product (pID)
);