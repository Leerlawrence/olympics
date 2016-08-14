DROP TABLE competitors;
DROP TABLE nations;
DROP TABLE events;


CREATE TABLE competitors (
  id serial4 primary key,
  name VARCHAR(255),
  nation int4
);

CREATE TABLE nations (
  id serial4 primary key,
  name VARCHAR(255),
);

CREATE TABLE events (
  id serial4 primary key,
  name VARCHAR(255),
  
);
