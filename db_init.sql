DROP DATABASE IF EXISTS api_platform;
CREATE DATABASE api_platform DEFAULT CHARSET = utf8mb4;
USE api_platform;

CREATE TABLE tb_users
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    username     VARCHAR(20) NOT NULL,
    password     CHAR(44)    NOT NULL,
    display_name VARCHAR(20) NOT NULL,
    disabled     BIT         NOT NULL DEFAULT 0,
    created_time DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_time  DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted      BIT         NOT NULL DEFAULT 0
);

CREATE TABLE tb_workspaces
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    user_id     INT         NOT NULL,
    name        VARCHAR(20) NOT NULL,
    create_time DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_time DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted     BIT         NOT NULL DEFAULT 0
);

CREATE TABLE tb_projects
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    workspace_id INT          NOT NULL,
    name         VARCHAR(100) NOT NULL,
    create_time  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_time  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted      BIT          NOT NULL DEFAULT 0
);

CREATE TABLE tb_project_imports
(
    id                  INT PRIMARY KEY AUTO_INCREMENT,
    project_id          INT          NOT NULL,
    name                VARCHAR(100) NOT NULL,
    last_import_content TEXT,
    last_import_time    DATETIME,
    create_time         DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_time         DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted             BIT          NOT NULL DEFAULT 0
);

CREATE TABLE tb_schemas
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    project_id  INT          NOT NULL,
    name        VARCHAR(100) NOT NULL,
    create_time DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_time DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted     BIT          NOT NULL DEFAULT 0
);

CREATE TABLE tb_apis
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    project_id  INT          NOT NULL,
    name        VARCHAR(100) NOT NULL,
    create_time DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_time DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted     BIT          NOT NULL DEFAULT 0
);
