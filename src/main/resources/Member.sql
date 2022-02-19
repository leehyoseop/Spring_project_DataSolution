create table Member(
	m_id varchar2(10 char) primary key,
	m_pw varchar2(15 char) not null,
	m_name varchar2(10 char) not null,
	m_phone varchar2(15 char) not null,
	m_birthday varchar2(15 char) not null
);

create table Place(
	id varchar2(10 char) not null,
	day varchar2(15 char),
	category varchar2(15 char),
	place_name varchar2(30 char),
	lat varchar2(30 char),
	lng varchar2(30 char)
);

drop table Member cascade constraints;
drop table Place cascade constraints;

insert into Member values('jina','0000','진아','01011113333','19980801');

select * from MEMBER;
select * from Place;