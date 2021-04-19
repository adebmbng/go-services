create table users
(
    id int auto_increment,
    username varchar(100) null,
    phone_number varchar(20) null,
    email varchar(255) null,
    password text not null,
    full_name varchar(255) null,
    first_name varchar(100) null,
    last_name varchar(100) null,
    register_source varchar(100) default 'default' not null,
    created_at timestamp default now() null,
    created_by varchar(100) null,
    updated_at timestamp default null null,
    updated_by varchar(100) null
);

create unique index users_email_uindex
    on users (email);

create unique index users_phone_number_uindex
    on users (phone_number);

create unique index users_username_uindex
    on users (username);

alter table users
    add constraint users_pk
        primary key (id);

