
CREATE TABLE instruments (
id serial primary key,
type varchar
);
CREATE TABLE genre (
id serial primary key,
name varchar
);
CREATE TABLE artist (
id serial primary key,
name varchar
);
CREATE TABLE album (
id serial primary key,
name varchar,
artist integer references artist(id),
released integer
);
CREATE TABLE features (
artist integer references artist(id),
album integer references album(id)
);
CREATE TABLE song (
id serial primary key,
name varchar,
writer integer references artist(id)
);

CREATE TABLE track (
id serial primary key,
album integer references album(id),
length integer,
song integer references song(id),
genre integer references genre(id)
);
