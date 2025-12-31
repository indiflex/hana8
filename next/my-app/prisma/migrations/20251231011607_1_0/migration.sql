-- CreateTable
CREATE TABLE `Folder` (
    `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(31) NOT NULL,

    UNIQUE INDEX `uniq_Folder_title`(`title`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Post` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `folder` TINYINT UNSIGNED NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `writer` INTEGER UNSIGNED NOT NULL,
    `content` TEXT NULL,

    INDEX `fk_Post_folder`(`folder`),
    INDEX `fk_Post_writer`(`writer`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(31) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NULL,
    `passwd` VARCHAR(256) NULL,
    `isadmin` BOOLEAN NOT NULL DEFAULT false,

    UNIQUE INDEX `uniq_User_email`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `StopWord` (
    `value` VARCHAR(31) NULL
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Post` ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`folder`) REFERENCES `Folder`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Post` ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`writer`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
