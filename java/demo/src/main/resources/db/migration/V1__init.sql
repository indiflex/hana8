CREATE TABLE `User`
(
    `id`        int unsigned NOT NULL AUTO_INCREMENT,
    `createdAt` datetime(6) DEFAULT NULL,
    `updatedAt` datetime(6) DEFAULT NULL,
    `telno`     varchar(12)  NOT NULL,
    `username`  varchar(31)  NOT NULL,
    `email`     varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uniq_User_email` (`email`),
    UNIQUE KEY `uniq_User_username_telno` (`username`, `telno`)
);
