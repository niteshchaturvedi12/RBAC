create table users (
   id BIGINT AUTO_INCREMENT PRIMARY KEY,
   username varchar(255) NOT NULL UNIQUE,
   password varchar(255) NOT NULL,
   enabled BOOLEAN DEFAULT TRUE
);


create table roles (
   id BIGINT AUTO_INCREMENT PRIMARY KEY,
   name varchar(255) not null UNIQUE
);

create table permissions (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) not null UNIQUE
);

CREATE TABLE users_roles (
    user_id BIGINT,
    role_id BIGINT,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)
);

CREATE TABLE roles_permissions (
    role_id BIGINT,
    permission_id BIGINT,
    PRIMARY KEY (role_id, permission_id),
    FOREIGN KEY (role_id) REFERENCES roles(id),
    FOREIGN KEY (permission_id) REFERENCES permissions(id)
);