create database mydb

create table mydb.`user`(
	id int not null primary key,
	name varchar(10),
	password varchar(16)
);