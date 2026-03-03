SET FOREIGN_KEY_CHECKS = 0;
truncate table User;
SET FOREIGN_KEY_CHECKS = 1;

SET time_zone = 'Asia/Seoul';

insert into User(username, email, telno, bloodType)
values ('Hong', 'hong@gmail.com', '01012345678', 'A');

insert into User(username, email, telno, bloodType)
values ('kim', 'kim@gmail.com', '01012345679', 'B');
