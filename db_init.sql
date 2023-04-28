DROP DATABASE IF EXISTS api_platform;
CREATE DATABASE api_platform DEFAULT CHARSET = utf8mb4;
USE api_platform;

CREATE TABLE tb_users
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    username     VARCHAR(20) NOT NULL,
    password     CHAR(44)    NOT NULL,
    display_name VARCHAR(20) NOT NULL,
    created_time DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    disabled     BIT         NOT NULL DEFAULT 0,
    deleted      BIT         NOT NULL DEFAULT 0
);
