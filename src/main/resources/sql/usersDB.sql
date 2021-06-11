

-- Table: users
CREATE TABLE IF NOT EXISTS users
(
    id       serial NOT NULL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);


-- Table: roles
CREATE TABLE IF NOT EXISTS roles
(
    id   serial NOT NULL  PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


-- Table for mapping user and roles: user_roles
CREATE TABLE IF NOT EXISTS user_roles
(
    user_id INT NOT NULL,
    role_id INT NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (role_id) REFERENCES roles (id),

    UNIQUE (user_id, role_id)
);


-- Insert data

INSERT INTO users
-- Для примера: admin - Vasya, pass - 12345678
-- Для примера: storekeeper - Petya, pass - 12345678
VALUES (1, 'Vasya', '$2a$11$uSXS6rLJ91WjgOHhEGDx..VGs7MkKZV68Lv5r1uwFu7HgtRn3dcXG');
VALUES (2, 'Petya', '$2a$11$uSXS6rLJ91WjgOHhEGDx..VGs7MkKZV68Lv5r1uwFu7HgtRn3dcXG');

INSERT INTO roles
VALUES (1, 'ROLE_ADMIN');
INSERT INTO roles
VALUES (2, 'ROLE_USER');
INSERT INTO roles
VALUES (3, 'ROLE_CONSUMER');
INSERT INTO roles
VALUES (4, 'ROLE_STOREKEEPER');

INSERT INTO user_roles
VALUES (1, 1);
VALUES (2, 4);