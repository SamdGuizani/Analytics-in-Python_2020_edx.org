DROP DATABASE IF EXISTS EdX_Analytics_in_Python_Project_04_SQL;
CREATE DATABASE IF NOT EXISTS EdX_Analytics_in_Python_Project_04_SQL;
USE EdX_Analytics_in_Python_Project_04_SQL;

CREATE TABLE IF NOT EXISTS exhibits (
    id INT(4) NOT NULL PRIMARY KEY,
    name VARCHAR(50),
    start_date DATE,
    end_date DATE,
    curator_id INT(4)
);
    
CREATE TABLE IF NOT EXISTS curators (
    id INT(4) NOT NULL PRIMARY KEY,
    name VARCHAR(20),
    bio TEXT
);
    
describe curators;
describe exhibits;

insert ignore into exhibits values ("3", "Free The Fishes", "2018-01-01", "2018-06-30", "5");
insert ignore into exhibits values ("17", "Space, What Lies Above", "2018-02-01", "2018-05-30", "11");
insert ignore into exhibits values ("23", "Bears Bears Bears", "2018-02-14", "2018-02-24", "5");
insert ignore into exhibits values ("46", "Humans? Aliens?", "2019-03-14", "2019-10-21", "11");

select * from exhibits;

insert ignore into curators values ("5", "Rebecca Votea", "Esteemed naturalist");
insert ignore into curators values ("11", "Simon Strauss", "Space man");
insert ignore into curators values ("71", "Rick Sanchez", "Grandfather");

select * from curators;

select c.name, e.name from curators c left join exhibits e on e.curator_id = c.id;