create table member(
	id varchar(20),
	name varchar(20),
	password varchar(20),
	phoneNum varchar(20),
	email varchar(50),
	text varchar(10),
	commend varchar(50),
	add_date datetime default current_timestamp,
	primary key (id)
);

select * from member;
