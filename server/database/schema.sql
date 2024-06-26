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
);
create table program (
  id int unsigned primary key auto_increment not null,
  title varchar(255) not null,
  synopsis TEXT not NULL,
  poster VARCHAR(255) not null,
  country VARCHAR(255) not null,
  year int NOT NULL,
  category_id int UNSIGNED not NULL,
  Foreign Key (category_id) REFERENCES category(id)
);

INSERT INTO category (name) VALUES ('Science-Fiction');
INSERT INTO category (name) VALUES ('Comédie');

INSERT INTO program (id, title, synopsis, poster, country, year,category_id) VALUES
(1, 'The Good Place', 'À sa mort, Eleanor Shellstrop est envoyée au Bon Endroit, un paradis fantaisiste réservé aux individus exceptionnellement bienveillants. Or Eleanor n\'est pas exactement une « bonne personne » et comprend vite qu\'il y a eu erreur sur la personne. Avec l\'aide de Chidi, sa prétendue âme sœur dans l\'au-delà, la jeune femme est bien décidée à se redécouvrir.', 'https://img.betaseries.com/JwRqyGD3f9KvO_OlfIXHZUA3Ypw=/600x900/smart/https%3A%2F%2Fpictures.betaseries.com%2Ffonds%2Fposter%2F94857341d71c795c69b9e5b23c4bf3e7.jpg', 'USA', 2016,1),
(2, 'Dark', 'Quatre familles affolées par la disparition d\'un enfant cherchent des réponses et tombent sur un mystère impliquant trois générations qui finit de les déstabiliser.', 'https://img.betaseries.com/zDxfeFudy3HWjxa6J8QIED9iaVw=/600x900/smart/https%3A%2F%2Fpictures.betaseries.com%2Ffonds%2Fposter%2Fc47135385da176a87d0dd9177c5f6a41.jpg', 'Allemagne', 2017,2);
