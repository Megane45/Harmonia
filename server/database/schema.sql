create table user (
  id int unsigned primary key auto_increment not null,
  email varchar(255) not null unique,
  password varchar(255) not null
);

create table item (
  id int unsigned primary key auto_increment not null,
  title varchar(255) not null,
  user_id int unsigned not null,
  foreign key(user_id) references user(id)
);
create table category (
  id int unsigned primary key auto_increment not null,
  name VARCHAR(255) not null
)
crate table program (
  id int unsigned primary key auto_increment not null,
  title varchar(255) not null,
  synopsis TEXT not NULL,
  poster VARCHAR(255) not null,
  country VARCHAR(255) not null,
  year int NOT NULL,
  catergory_id int UNSIGNED not NULL
  Foreign Key (category_id) REFERENCES catergory(id)
)