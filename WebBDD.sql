drop table if exists Users, Accounts, Favorites;

create table Users (
    uid int auto_increment primary key,
    fname varchar (40) not null,
    lname varchar (40) not null,
    login varchar (40) not null,
    password varchar (100) not null,
    mail varchar(40) not null,
    birthDay date not null);


create table Accounts (
	aid int auto_increment primary key,
	uid int not null,
	aname varchar (40),
	address varchar (100) not null,
	foreign key (uid) references Users (uid) on delete cascade on update cascade);

create table Favorites(
	fid int auto_increment primary key,
	aid int not null,
	faddress varchar (100) not null,
	fname varchar (40),
	foreign key (aid) references Accounts (aid) on delete cascade on update cascade);