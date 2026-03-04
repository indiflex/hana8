alter table User
    add column bloodType enum ('A','AB','B','O');

create table Member
(
    id        int unsigned                                                    not null auto_increment,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP                             not null,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP not null,
    nickname  varchar(30)                                                     not null,
    email     varchar(255)                                                    not null,
    passwd    varchar(255),
    bloodType enum ('A','AB','B','O'),
    isActive  bit       default false                                         not null,
    primary key (id)
);

alter table Member
    add constraint uniq_User_email unique (email);


create table Post
(
    id        varchar(20)                         not null primary key,
    createdAt timestamp default CURRENT_TIMESTAMP not null,
    updatedAt timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    title     varchar(255)                        null
);
