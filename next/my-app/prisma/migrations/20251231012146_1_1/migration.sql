/*
  Warnings:

  - You are about to alter the column `title` on the `Post` table. The data in that column could be lost. The data in that column will be cast from `VarChar(255)` to `VarChar(250)`.

*/
-- AlterTable
ALTER TABLE `Post` MODIFY `title` VARCHAR(250) NOT NULL;
