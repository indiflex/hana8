use schooldb;

create table Student (
  id int unsigned auto_increment not null,
  createdate timestamp default current_timestamp,
  updatedate timestamp default current_timestamp on update current_timestamp,
  name varchar(15) not null,
  birthdt date not null,
  major tinyint unsigned not null,
  email varchar(255) not null,
  mobile varchar(11) not null,
  gender bit not null default 0 comment '성별(0: 남, 1:여)',
  graduatedat varchar(10) null,
  
  primary key (id),
  unique key unique_Student_email (email)
);

show create table Student;

create table Major(
  id tinyint unsigned 
);