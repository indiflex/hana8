create table User
(
    createdAt datetime(6)  null,
    id        int unsigned auto_increment primary key,
    updatedAt datetime(6)  null,
    username  varchar(31)  not null,
    email     varchar(255) not null,
    constraint UKe6gkqunxajvyxl5uctpl2vl2p unique (email)
);
