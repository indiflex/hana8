alter table User
    add column bloodType enum ('A','AB','B','O');

create table Member
(
    id        int unsigned auto_increment                                     not null,
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
    id        int unsigned auto_increment                                     not null,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP                             not null,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP not null,
    title     varchar(255)                                                    not null,
    writer    varchar(31)                                                     not null,
    primary key (id)
);

create table PostBody
(
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP                             not null,
    id        int unsigned auto_increment                                     not null,
    post      int unsigned                                                    not null,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP not null,
    body      text                                                            not null,
    primary key (id)
);

alter table PostBody
    add constraint UKbstcjljn3wcpf2xlv2xeplw9k unique (post);

alter table PostBody
    add constraint fk_PostBody_post
        foreign key (post) references Post (id) on delete cascade;

create table Reply
(
    id        int unsigned auto_increment                                     not null,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP                             not null,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP not null,
    reply     varchar(255)                                                    not null,
    replyer   varchar(31)                                                     not null,
    post      int unsigned                                                    not null,
    primary key (id)
);

alter table Reply
    add constraint fk_Reply_post
        foreign key (post)
            references Post (id)
            on delete cascade;
