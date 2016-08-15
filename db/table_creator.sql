DROP TABLE competitors;
DROP TABLE nations;
DROP TABLE events;



CREATE TABLE nations (
  id serial4 primary key,
  name VARCHAR(255)
);

CREATE TABLE events (
  id serial4 primary key,
  name VARCHAR(255)

);

CREATE TABLE competitors (
  id serial4 primary key,
  name VARCHAR(255),
  nation int4 references nations(id),
  sex VARCHAR(255)
);

INSERT INTO nations (id,name)  VALUES (1, 'Greece');
INSERT INTO nations (id,name)  VALUES (2, 'Afghanistan');
INSERT INTO nations (id,name)  VALUES (3, 'South Africa');
INSERT INTO nations (id,name)  VALUES (4, 'Albania');
INSERT INTO nations (id,name)  VALUES (5, 'Germany');
INSERT INTO nations (id,name)  VALUES (6, 'Andorra');
INSERT INTO nations (id,name)  VALUES (7, 'Antigua and Barbuda');
INSERT INTO nations (id,name)  VALUES (8, 'Saudi Arabia');
INSERT INTO nations (id,name)  VALUES (9, 'Algeria');
INSERT INTO nations (id,name)  VALUES (10, 'Argentina');
INSERT INTO nations (id,name)  VALUES (11, 'Armenia');
INSERT INTO nations (id,name)  VALUES (12, 'Aruba');
INSERT INTO nations (id,name)  VALUES (13, 'Independant Olympic Athletes');
INSERT INTO nations (id,name)  VALUES (14, 'Australia');
INSERT INTO nations (id,name)  VALUES (15, 'Austria');
INSERT INTO nations (id,name)  VALUES (16, 'Azerbaijan');
INSERT INTO nations (id,name)  VALUES (17, 'Bahamas');
INSERT INTO nations (id,name)  VALUES (18, 'Bangladesh');
INSERT INTO nations (id,name)  VALUES (19, 'Barbados');
INSERT INTO nations (id,name)  VALUES (20, 'Bahrain');
INSERT INTO nations (id,name)  VALUES (21, 'Belarus');
INSERT INTO nations (id,name)  VALUES (22, 'Belgium');
INSERT INTO nations (id,name)  VALUES (23, 'Belize');
INSERT INTO nations (id,name)  VALUES (24, 'Benin');
INSERT INTO nations (id,name)  VALUES (25, 'Bermuda');
INSERT INTO nations (id,name)  VALUES (26, 'Bolivia');
INSERT INTO nations (id,name)  VALUES (27, 'Bosnia and Herzegovina');
INSERT INTO nations (id,name)  VALUES (28, 'Botswana');
INSERT INTO nations (id,name)  VALUES (29, 'Brunei Darussalam');
INSERT INTO nations (id,name)  VALUES (30, 'Bulgaria');
INSERT INTO nations (id,name)  VALUES (31, 'Burkina Faso');
INSERT INTO nations (id,name)  VALUES (32, 'Burundi');
INSERT INTO nations (id,name)  VALUES (33, 'Bhutan');
INSERT INTO nations (id,name)  VALUES (34, 'Cape Verde');
INSERT INTO nations (id,name)  VALUES (35, 'Cameroon');
INSERT INTO nations (id,name)  VALUES (36, 'Cambodia');
INSERT INTO nations (id,name)  VALUES (37, 'Canada');
INSERT INTO nations (id,name)  VALUES (38, 'Qatar');
INSERT INTO nations (id,name)  VALUES (39, 'Kazakhstan');
INSERT INTO nations (id,name)  VALUES (40, 'Cayman Islands');
INSERT INTO nations (id,name)  VALUES (41, 'Central African Republic');
INSERT INTO nations (id,name)  VALUES (42, 'Chad');
INSERT INTO nations (id,name)  VALUES (43, 'Chile');
INSERT INTO nations (id,name)  VALUES (44, 'Great Britain');
INSERT INTO nations (id,name)  VALUES (45, 'USA');

INSERT INTO competitors (id,name,nation,sex)  VALUES (1, 'Bradley Wiggins', 44,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (2, 'Andy Murray',44,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (3, 'Mark Cavendish',44,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (4, 'Max Whitlock',44,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (5, 'Joanna Rowsell',44,'F');
INSERT INTO competitors (id,name,nation,sex)  VALUES (6, 'Justin Rose',44,'M');
INSERT INTO competitors (id,name,nation,sex)  VALUES (7, 'Laura Muir', 44,'F');


-- SELECT * from nations;

SELECT name FROM competitors;