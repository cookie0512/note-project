create database note;
use note;

create table menu
(
    id  int auto_increment
    primary key,
    parent_id int          null,
    user_id   int          null,
    name      varchar(255) null,
    constraint menu_menu_id_fk
    foreign key (parent_id) references menu (id)
    on update cascade on delete cascade
);

create table note
(
    id          int auto_increment
    primary key,
    menu_id     int          null,
    name        varchar(255) null,
    content     text         null,
    create_date date         null,
    constraint note_menu_id_fk
    foreign key (menu_id) references menu (id)
    on update cascade on delete cascade
);

create table user
(
    id  int auto_increment
    primary key,
    username varchar(255) null,
    password varchar(255) null
);


insert into user(id, username, password) values(1, 'cookie', '$2a$10$KHqeA82x2nQM5Nnz4rQeJe5Yf36BQ2nxH92gvQfCl.gyw0B8uCGne')

insert into menu(id, parent_id, uesr_id, name) values(1, NULL, NULL, NULL)

