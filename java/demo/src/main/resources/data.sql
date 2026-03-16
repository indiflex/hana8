SET FOREIGN_KEY_CHECKS = 0;
truncate table User;
truncate table Member;
truncate table Post;
truncate table PostBody;
SET FOREIGN_KEY_CHECKS = 1;

SET time_zone = 'Asia/Seoul';

insert into User(username, email, telno, bloodType)
values ('Hong', 'hong@gmail.com', '01012345678', 'A'),
       ('kim', 'kim@gmail.com', '01012345679', 'B');

insert into Member (nickname, email, passwd, isActive, bloodType)
values ('hong', 'hong@gmail.com', 'xxxx', 1, 'A'),
       ('kim', 'kim@gmail.com', null, 0, 'B'),
       ('lee', 'lee@gmail.com', null, 1, 'AB');

insert into Post(title, writer)
values ('Title1', 1);
insert into PostBody(body, post)
values ('body of Title1', last_insert_id());

insert into Post(title, writer)
values ('Title2', 2);
insert into PostBody(body, post)
values ('body of Title2', last_insert_id());
insert into Post(title, writer)
values ('Title3', 3);
insert into PostBody(body, post)
values ('body of Title3', last_insert_id());

insert into Reply(reply, replier, post)
values ('rrrr1-1', 1, 1);
insert into Reply(reply, replier, post)
values ('rrrr1-2', 1, 1);

insert into Subscriber(email, nickname, pwd, social)
values ('sample@gmail.com', 'sub0', '$2a$10$Y3GCnA7qjqOLOX8QkZR7zO/r5izR434eoAu69Alcsy92bOcd0u7Xi', 0);

insert into SubscriberRole(role, email)
values (0, 'sample@gmail.com'),
       (2, 'sample@gmail.com');
