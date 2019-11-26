CREATE TABLE `tbf_db`.`users`
(
    `uid`            INT          NOT NULL AUTO_INCREMENT,
    `username`       VARCHAR(255) NULL,
    `email`          VARCHAR(255) NULL,
    `email_verified` TINYINT      NULL,
    `date_created`   DATETIME     NULL,
    `last_login`     DATETIME     NULL,
    PRIMARY KEY (`uid`),
    UNIQUE INDEX `username_UNIQUE` (`username` ASC)
);

CREATE TABLE `tbf_db`.`posts`
(
    `pid`           INT          NOT NULL AUTO_INCREMENT,
    `title`         VARCHAR(255) NULL,
    `body`          BLOB         NULL,
    `search_vector` JSON         NULL,
    `user_id`       INT          NULL,
    `author`        VARCHAR(255) NULL,
    `date_created`  TIMESTAMP    NULL,
    `like_user_id`  INT          NULL,
    `likes`         INT          NULL DEFAULT 0,
    PRIMARY KEY (`pid`)
);

CREATE TABLE `tbf_db`.`comments`
(
    `cid`          INT          NOT NULL AUTO_INCREMENT,
    `comment`      VARCHAR(255) NULL,
    `author`       VARCHAR(255) NULL,
    `user_id`      INT          NULL,
    `post_id`      INT          NULL,
    `date_created` TIMESTAMP    NULL,
    PRIMARY KEY (`cid`)
);

CREATE TABLE `tbf_db`.`messages`
(
    `mid`            INT          NOT NULL AUTO_INCREMENT,
    `message_sender` VARCHAR(255) NULL,
    `message_to`     VARCHAR(255) NULL,
    `message_title`  VARCHAR(255) NULL,
    `message_body`   BLOB         NULL,
    `date_created`   TIMESTAMP    NULL,
    PRIMARY KEY (`mid`)
);

-- CREATE TABLE users (
--   uid SERIAL PRIMARY KEY,
--   username VARCHAR(255) UNIQUE,
--   email VARCHAR(255),
--   email_verified BOOLEAN,
--   date_created DATE,
--   last_login DATE
-- );
--
-- CREATE TABLE posts (
--   pid SERIAL PRIMARY KEY,
--   title VARCHAR(255),
--   body VARCHAR,
--   search_vector TSVECTOR,
--   user_id INT REFERENCES users(uid),
--   author VARCHAR REFERENCES users(username),
--   date_created TIMESTAMP,
--   like_user_id INT[] DEFAULT ARRAY[]::INT[],
--   likes INT DEFAULT 0
-- );
--
-- CREATE TABLE comments (
--   cid SERIAL PRIMARY KEY,
--   comment VARCHAR(255),
--   author VARCHAR REFERENCES users(username),
--   user_id INT REFERENCES users(uid),
--   post_id INT REFERENCES posts(pid),
--   date_created TIMESTAMP
-- );
--
--
-- CREATE TABLE messages (
--   mid SERIAL PRIMARY KEY,
--   message_sender VARCHAR(255) REFERENCES users(username),
--   message_to VARCHAR(255) REFERENCES users(username),
--   message_title VARCHAR(255),
--   message_body VARCHAR,
--   date_created TIMESTAMP
-- );