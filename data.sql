# 創建資料庫，取名為 website
CREATE SCHEMA `website` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci ;

# 在資料庫中建立資料表，取名為 user，資料表中含以下欄位設定
CREATE TABLE `website`.`user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `username` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

# 使用 INSERT 指令新增一筆資料到 user 資料表中，這筆資料的 username 和password 欄位必須是 ply。接著繼續新增至少 4 筆隨意的資料。
INSERT INTO `website`.`user` (`id`, `name`, `username`, `password`) VALUES ('1', 'ply', 'ply', 'ply');
INSERT INTO `website`.`user` (`name`, `username`, `password`) VALUES ('bob', 'bob', 'bob');
INSERT INTO `website`.`user` (`name`, `username`, `password`) VALUES ('jack', 'jack', 'jack');
INSERT INTO `website`.`user` (`name`, `username`, `password`) VALUES ('tim', 'tim', 'tim');
INSERT INTO `website`.`user` (`name`, `username`, `password`) VALUES ('paul', 'paul', 'paul');

# 在資料庫中建立資料表，取名為 message，資料表中含以下欄位設定
CREATE TABLE `website`.`message`(
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT NOT NULL ,
  `content` VARCHAR(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

# 使用 INSERT 指令新增資料到 message 資料表中
INSERT INTO `website`.`message` (`id`, `user_id`, `content`) VALUES ('1', '1', 'ply111111111111111111111111111');
INSERT INTO `website`.`message` (`user_id`, `content`) VALUES ('2', 'bob222222222222222222222222222');
INSERT INTO `website`.`message` (`user_id`, `content`) VALUES ('3', 'jack333333333333333333333333333');
INSERT INTO `website`.`message` (`user_id`, `content`) VALUES ('4', 'tim4444444444444444444444444444');
INSERT INTO `website`.`message` (`user_id`, `content`) VALUES ('5', '5555555');