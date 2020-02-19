CREATE TABLE IF NOT EXISTS AUTHOR (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(64) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS MICROBLOG (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    AUTHOR_ID INT NOT NULL,
    NAME VARCHAR(64) NOT NULL,
    FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHOR(ID),
    CONSTRAINT UNIQUE_NAME_AND_AUTHOR UNIQUE(NAME, AUTHOR_ID)
);

CREATE TABLE IF NOT EXISTS CHIRP (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    MICROBLOG_ID INT NOT NULL,
    CONTENT VARCHAR(140) NOT NULL,
    FOREIGN KEY (MICROBLOG_ID) REFERENCES MICROBLOG(ID)
);
