CREATE TABLE Users (
    user_id VARCHAR(50) NOT NULL PRIMARY KEY,
    password VARCHAR(100) NOT NULL,
    enabled  BOOLEAN NOT NULL
);

CREATE TABLE Authorities (
    user_id  VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    CONSTRAINT FK_AUTHORITIES_USERS FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    CONSTRAINT UK_AUTHORITIES UNIQUE (user_id, role)
);