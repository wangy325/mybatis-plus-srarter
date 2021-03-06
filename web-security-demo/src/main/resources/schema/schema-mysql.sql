-- this sql is used for mysql, some of the keywords are not common used.

CREATE DATABASE IF NOT EXISTS `spitter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `spitter`;

DROP TABLE  IF EXISTS `spitter`;
CREATE TABLE `spitter`(
                          `id` INT NOT NULL AUTO_INCREMENT,
                          `firstname` VARCHAR(30) NOT NULL,
                          `lastname` VARCHAR(30) NOT NULL,
                          `username` VARCHAR(30) NOT NULL,
                          `password` VARCHAR(30) NOT NULL,
                          `deleted` TINYINT(2) NOT NULL DEFAULT 0,
                          PRIMARY KEY(`id`)
) COMMENT 'user info table';

DROP TABLE IF EXISTS `spittle`;
CREATE TABLE `spittle`(
                          `id` BIGINT NOT NULL AUTO_INCREMENT,
                          `spitter_id` INT NOT NULL comment '关联spitter.id',
                          `message` VARCHAR(255) NOT NULL,
                          `time` TIMESTAMP NOT NULL,
                          `latitude` DOUBLE(3,3) DEFAULT 0,
                          `longitude` DOUBLE(3,3) DEFAULT 0,
                          `deleted` TINYINT(2) NOT NULL DEFAULT 0,
                          PRIMARY KEY(`id`)
) COMMENT 'user spittle table';

INSERT INTO spitter (firstname, lastname, username, password) VALUES ('stephen', 'curry', 'sc30', 'pass');
INSERT INTO spitter (firstname, lastname, username, password) VALUES ('klay', 'thompson', 'kt11', 'pass');
INSERT INTO spitter (firstname, lastname, username, password) VALUES ('kevin', 'durant', 'kd35', 'pass');
INSERT INTO spitter (firstname, lastname, username, password) VALUES ('andre', 'iguodala', 'ai9', 'pass');

INSERT INTO spittle (spitter_id, message, time, latitude, longitude) VALUES (1, 'we aint going home' , '2012-06-09 22:00:00', 0, 0);
INSERT INTO spittle (spitter_id, message, time, latitude, longitude) VALUES (3, 'shoot the fucking ball', '2012-06-09 22:10:00', 0, 0);
INSERT INTO spittle (spitter_id, message, time, latitude, longitude) VALUES (4, 'sixth man', '2012-06-09 22:20:00', 0, 0);
INSERT INTO spittle (spitter_id, message, time, latitude, longitude) VALUES (2, '60 points in 29 minutes', '2012-06-09 22:30:00', 0, 0);
INSERT INTO spittle (spitter_id, message, time, latitude, longitude) VALUES (3, 'i will drink her bath water', '2012-06-09 22:40:00', 0, 0);
INSERT INTO spittle (spitter_id, message, time, latitude, longitude) VALUES (3, 'Mr. unreliable', '2012-07-09 22:50:00', 0, 0);
INSERT INTO spittle (spitter_id, message, time, latitude, longitude) VALUES (4, 'protect his carrier and honor', '2013-06-10 21:41:00', 0, 0);
INSERT INTO spittle (spitter_id, message, time, latitude, longitude) VALUES (4, 'amateur golf man', '2014-06-19 20:43:00', 0, 0);
INSERT INTO spittle (spitter_id, message, time, latitude, longitude) VALUES (3, 'mamas real mvp','2017-06-09 08:40:00', 0, 0);
INSERT INTO spittle (spitter_id, message, time, latitude, longitude) VALUES (4, 'real dunk competition champ', '2008-05-14 08:00:00', 0, 0);

COMMIT ;