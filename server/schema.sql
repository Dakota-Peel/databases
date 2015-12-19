CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  id int(4),
  message text(255),
  user int(4),
  room int(4),
  primary key (id)
  /* Describe your table here.*/
);

/* Create other tables and define schemas for them here! */

CREATE TABLE rooms (
  id int(4),
  name text(20),
  primary key (id)
);

CREATE TABLE users (
  id int(4),
  name text(20),
  primary key (id)
);

alter table messages add foreign key (room) references rooms (id);
alter table messages add foreign key (user) references users (id);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

