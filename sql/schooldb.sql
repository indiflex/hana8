create database schooldb;

create user school@'%' identified by 'Schooldb1!';

grant all privileges on schooldb.* to school@'%';

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
CREATE TABLE `Student` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdt` date NOT NULL,
  `major` tinyint unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` bit(1) NOT NULL DEFAULT b'0' COMMENT '성별(0: 남, 1:여)',
  `graduatedat` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_Student_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table Major(
  id tinyint unsigned auto_increment primary key,
  name varchar(15) not null,
  unique key uniq_Major_name (name)
);

insert into Major (name) values('철학과'), ('컴퓨터공학과'), ('건축과');

insert into Student(name, birthdt, major, email, mobile)
             values('Hong', '2001-01-03', 5, 'hong@gmail.com', '01012341234');

alter table Student add constraint foreign key fk_Student_Major (major)
    references Major(id);
    
select * from Student where major not in (select id from Major);
select * from Major;
update Student set major = 1 where id = 1; -- Hong

show index from Student;